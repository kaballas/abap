import requests
import json
import os

def send_to_ai(message="hello", model="gpt-4o-copilot"):
    """Send a message to AI using chat completions endpoint"""
    bridge_token = os.getenv("BRIDGE_TOKEN", "kaballas")
    port = os.getenv("PORT", "80")
    
    url = f"http://127.0.0.1:{port}/v1/chat/completions"
    headers = {
        "Authorization": f"Bearer {bridge_token}",
        "Content-Type": "application/json"
    }
    payload = {
        "model": model,
        "messages": [
            {
                "role": "user",
                "content": message
            }
        ]
    }
    
    try:
        response = requests.post(url, headers=headers, json=payload, stream=True)
        response.raise_for_status()
        # Handle streaming response with -N flag equivalent
        for line in response.iter_lines():
            if line:
                print(line.decode('utf-8'))
        return response
    except requests.exceptions.RequestException as e:
        print(f"Error sending message to AI: {e}")
        return None

def list_ai_models():
    url = "http://127.0.0.1/v1/models"
    headers = {
        "Authorization": "Bearer kaballas"
    }
    try:
        response = requests.get(url, headers=headers)
        response.raise_for_status()
        models_data = response.json()
        models = [model['id'] for model in models_data.get("data", [])]
        print("Available AI Models:")
        for i, model in enumerate(models, 1):
            print(f"{i}. {model}")
        return models
    except requests.exceptions.RequestException as e:
        print(f"Error fetching models: {e}")
        return []

if __name__ == "__main__":
    models = list_ai_models()
    
    if models:
        # Select model by number
        print("\n--- Select Model ---")
        try:
            model_index = int(input("Enter model number: ").strip()) - 1
            if 0 <= model_index < len(models):
                selected_model = models[model_index]
                
                # Get message
                print("\n--- Send Message ---")
                message = input("Enter message: ").strip()
                
                if message:
                    send_to_ai(message, model=selected_model)
                else:
                    print("No message provided.")
            else:
                print("Invalid model number.")
        except ValueError:
            print("Invalid input. Please enter a number.")
    else:
        print("No models available.")