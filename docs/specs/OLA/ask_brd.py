import requests
import json
import os
import argparse
from datetime import datetime
from pathlib import Path

DEBUG_DIR = "debug"

def init_debug_dir():
    """Create debug directory if it doesn't exist"""
    Path(DEBUG_DIR).mkdir(exist_ok=True)

def log_request_response(request_payload, response_data, request_type="chat"):
    """Log request and response to separate files with timestamp"""
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S_%f")[:-3]
    
    request_file = Path(DEBUG_DIR) / f"{timestamp}_request_{request_type}.json"
    response_file = Path(DEBUG_DIR) / f"{timestamp}_response_{request_type}.json"
    
    # Log request
    try:
        with open(request_file, "w") as f:
            json.dump(request_payload, f, indent=2, ensure_ascii=False)
        print(f"[DEBUG] Request logged to: {request_file}")
    except Exception as e:
        print(f"[ERROR] Failed to log request: {e}")
    
    # Log response
    try:
        with open(response_file, "w") as f:
            json.dump(response_data, f, indent=2, ensure_ascii=False)
        print(f"[DEBUG] Response logged to: {response_file}")
    except Exception as e:
        print(f"[ERROR] Failed to log response: {e}")

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
        response = requests.post(url, headers=headers, json=payload)
        print(f"[DEBUG] Response status: {response.status_code}")
        
        # Log the request and response
        try:
            response_data = response.json()
        except ValueError:
            response_data = {"raw_text": response.text, "status_code": response.status_code}
        
        log_request_response(payload, response_data, request_type="chat")
        
        response.raise_for_status()
        print("[DEBUG] Response successful.")
        # Try to parse JSON and pretty-print; fall back to raw text if not JSON
        try:
            data = response.json()
            print("[DEBUG] Pretty-printed JSON response:")
            print(json.dumps(data, indent=2, ensure_ascii=False))
        except ValueError:
            print("[DEBUG] Response not JSON, printing raw text:")
            print(response.text)
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
        
        # Log the request and response
        try:
            models_data = response.json()
        except ValueError:
            models_data = {"raw_text": response.text, "status_code": response.status_code}
        
        request_payload = {"method": "GET", "url": url, "headers": headers}
        log_request_response(request_payload, models_data, request_type="models")
        
        response.raise_for_status()
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
    parser.add_argument("--question-file", type=str, help="Path to a file containing the question to send to AI")
    parser.add_argument("-m", "--model", type=str, default="gpt-4.1", help="Model to use (default: gpt-4.1)")
    parser.add_argument("--skip-model-list", action="store_true", help="Skip fetching and printing available models")
    args = parser.parse_args()
    
    print("[DEBUG] Starting AI chat script...")
    init_debug_dir()
    print(f"[DEBUG] Debug directory initialized: {DEBUG_DIR}")
    models = [] if args.skip_model_list else list_ai_models()
    
    if models or args.skip_model_list:
        # Load SAP Fields context
        context = None
        try:
            with open("combined.md", "r") as f:
                context = f.read()
                print(f"[DEBUG] SAP Fields context loaded: {len(context)} characters")
        except FileNotFoundError as e:
            print(f"[WARNING] SAP_Fields.md not found: {e}")

        # Prefer question from file to avoid shell argument limits
        if args.question_file and not args.question:
            try:
                with open(args.question_file, "r") as f:
                    args.question = f.read()
            except FileNotFoundError as e:
                print(f"[ERROR] Question file not found: {e}")
                args.question = None
        
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
