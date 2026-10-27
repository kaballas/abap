import requests
import json
import os
import argparse

def send_to_ai(message="hello", model="gpt-4o-copilot", context=None):
    """Send a message to AI using chat completions endpoint"""
    print(f"\n[DEBUG] send_to_ai called with model: {model}")
    bridge_token = os.getenv("BRIDGE_TOKEN", "kaballas")
    port = os.getenv("PORT", "80")
    print(f"[DEBUG] Using port: {port}, token: {bridge_token[:10]}...")
    
    url = f"http://127.0.0.1:{port}/v1/chat/completions"
    print(f"[DEBUG] URL: {url}")
    headers = {
        "Authorization": f"Bearer {bridge_token}",
        "Content-Type": "application/json"
    }
    
    # Combine context and message
    if context:
        print(f"[DEBUG] Context loaded: {len(context)} characters")
        full_message = f"Context:\n{context}\n\nMessage:\n{message}"
    else:
        print("[DEBUG] No context provided")
        full_message = message
    
    payload = {
        "model": model,
        "messages": [
            {
                "role": "user",
                "content": full_message
            }
        ]
    }
    print(f"[DEBUG] Payload model: {payload['model']}")
    print(f"[DEBUG] Message length: {len(full_message)} characters")
    try:
        print("[DEBUG] Sending request to AI...")
        response = requests.post(url, headers=headers, json=payload, stream=True)
        print(f"[DEBUG] Response status: {response.status_code}")
        response.raise_for_status()
        print("[DEBUG] Response successful, streaming output:")
        # Handle streaming response with -N flag equivalent
        for line in response.iter_lines():
            if line:
                print(line.decode('utf-8'))
        return response
    except requests.exceptions.RequestException as e:
        print(f"[ERROR] Error sending message to AI: {e}")
        return None

def list_ai_models():
    print("\n[DEBUG] Fetching available AI models...")
    url = "http://127.0.0.1/v1/models"
    headers = {
        "Authorization": "Bearer kaballas"
    }
    try:
        response = requests.get(url, headers=headers)
        print(f"[DEBUG] Models endpoint response status: {response.status_code}")
        response.raise_for_status()
        models_data = response.json()
        models = [model['id'] for model in models_data.get("data", [])]
        print(f"[DEBUG] Retrieved {len(models)} models")
        print("Available AI Models:")
        for i, model in enumerate(models, 1):
            print(f"{i}. {model}")
        return models
    except requests.exceptions.RequestException as e:
        print(f"[ERROR] Error fetching models: {e}")
        return []

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Send messages to AI with context")
    parser.add_argument("-q", "--question", type=str, help="Question to send to AI")
    parser.add_argument("-m", "--model", type=str, default="gpt-4.1", help="Model to use (default: gpt-4.1)")
    args = parser.parse_args()
    
    print("[DEBUG] Starting AI chat script...")
    models = list_ai_models()
    
    if models:
        # Load SAP Fields context
        context = None
        try:
            with open("/home/theo/Documents/docs/reports/SAP_Fields.md", "r") as f:
                context = f.read()
                print(f"[DEBUG] SAP Fields context loaded: {len(context)} characters")
        except FileNotFoundError as e:
            print(f"[WARNING] SAP_Fields.md not found: {e}")
        
        # If question provided via CLI, use it directly
        if args.question:
            message = args.question
            selected_model = args.model
            print(f"[DEBUG] CLI mode: Using model {selected_model}")
            print(f"[DEBUG] Message length: {len(message)} characters")
            print(f"[DEBUG] Sending message with model: {selected_model}")
            send_to_ai(message, model=selected_model, context=context)
        else:
            # Interactive mode
            # Select model by number
            print("\n--- Select Model ---")
            try:
                model_input = input("Enter model number: ").strip()
                print(f"[DEBUG] User selected model number: {model_input}")
                model_index = int(model_input) - 1
                if 0 <= model_index < len(models):
                    selected_model = models[model_index]
                    print(f"[DEBUG] Selected model: {selected_model}")
                    
                    # Get message
                    print("\n--- Send Message ---")
                    message = input("Enter message: ").strip()
                    print(f"[DEBUG] Message length: {len(message)} characters")
                    
                    if message:
                        print(f"[DEBUG] Sending message with model: {selected_model}")
                        send_to_ai(message, model=selected_model, context=context)
                    else:
                        print("[WARNING] No message provided.")
                else:
                    print(f"[ERROR] Invalid model number. Range is 1-{len(models)}")
            except ValueError:
                print("[ERROR] Invalid input. Please enter a number.")
    else:
        print("[ERROR] No models available.")