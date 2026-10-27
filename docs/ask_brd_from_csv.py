import requests
import json
import csv
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


def send_to_ai_sync(message="hello", model="gpt-4o-copilot", context=None):
    """Send a single request and return parsed text result (non-streaming)."""
    bridge_token = os.getenv("BRIDGE_TOKEN", "kaballas")
    port = os.getenv("PORT", "80")
    url = f"http://127.0.0.1:{port}/v1/chat/completions"
    headers = {
        "Authorization": f"Bearer {bridge_token}",
        "Content-Type": "application/json"
    }
    if context:
        full_message = f"Context:\n{context}\n\nMessage:\n{message}"
    else:
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
    try:
        resp = requests.post(url, headers=headers, json=payload, stream=False)
        resp.raise_for_status()
        try:
            data = resp.json()
            print(data)
            print("===========================================---------------------------============")
            # Try common OpenAI-like response structure
            if isinstance(data, dict):
                choices = data.get("choices") or []
                if choices and isinstance(choices, list):
                    first = choices[0]
                    # support different shapes
                    if "message" in first and isinstance(first["message"], dict):
                        return first["message"].get("content", "")
                    if "text" in first:
                        return first.get("text", "")
            # Fallback to raw text
            return resp.text
        except ValueError:
            return resp.text
    except requests.exceptions.RequestException as e:
        print(f"[ERROR] send_to_ai_sync error: {e}")
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
    parser.add_argument("--process-csv", action="store_true", help="Process EPSS CSV and produce updates CSV")
    parser.add_argument("--input-csv", type=str, default="/home/theo/Documents/docs/EPSS.csv", help="Input CSV path")
    parser.add_argument("--output-csv", type=str, default="/home/theo/Documents/docs/EPSS_updates.csv", help="Output CSV path")
    parser.add_argument("--context-file", type=str, default="/home/theo/Documents/docs/brd.md", help="Context file path")
    parser.add_argument("--skip", type=int, default=0, help="Skip N rows from start of input CSV (useful to resume)")
    parser.add_argument('--no-append', dest='append', action='store_false', help='Do not append to output CSV; overwrite instead')
    parser.set_defaults(append=True)
    args = parser.parse_args()
    
    print("[DEBUG] Starting AI chat script...")
    models = list_ai_models()
    
    if models:
        # Load SAP Fields context
        context = None
        try:
            with open(args.context_file, "r") as f:
                context = f.read()
                print(f"[DEBUG] Context loaded: {len(context)} characters from {args.context_file}")
        except FileNotFoundError as e:
            print(f"[WARNING] Context file not found: {e}")

        def process_epss_csv(input_csv, output_csv, model, context, skip=0, append=True):
            print(f"[DEBUG] Processing CSV: {input_csv} -> {output_csv} using model {model}")
            try:
                with open(input_csv, newline='', encoding='utf-8') as inf:
                    reader = csv.DictReader(inf)
                    fieldnames = reader.fieldnames or []
                    # Determine the REQ field name (attempt common variants)
                    possible_names = ["REQ #", "REQ#", "REQ", "Req #", "Req", "req #", "req#", "req"]
                    req_field = None
                    for name in possible_names:
                        if name in fieldnames:
                            req_field = name
                            break
                    if req_field is None:
                        # fallback: try a case-insensitive match containing 'req'
                        for fn in fieldnames:
                            if 'req' in fn.lower():
                                req_field = fn
                                break
                    if req_field is None:
                        # final fallback to first field
                        req_field = fieldnames[0] if fieldnames else 'req'

                    out_fieldnames = [req_field, "update_suggestion"]
                    rows = list(reader)
                    total_rows = len(rows)
                    if skip and skip >= total_rows:
                        print(f"[WARNING] Skip value {skip} >= total rows {total_rows}; nothing to process.")
                        return
                    if skip:
                        print(f"[DEBUG] Skipping first {skip} rows (resuming).")
                        rows = rows[skip:]
            except FileNotFoundError as e:
                print(f"[ERROR] Input CSV not found: {e}")
                return

            # Open output in append or write mode. If appending and file exists, do not write header.
            mode = 'a' if append else 'w'
            file_exists = os.path.exists(output_csv) and os.path.getsize(output_csv) > 0
            with open(output_csv, mode, newline='', encoding='utf-8') as outf:
                writer = csv.DictWriter(outf, fieldnames=out_fieldnames)
                if not (append and file_exists):
                    writer.writeheader()
                for i, row in enumerate(rows, 1):
                    # Build a concise prompt for the model
                    row_text = json.dumps(row, ensure_ascii=False)
                    prompt = (
                        "You are given workshop notes context and a CSV row representing an EPSS record.\n"
                        "Based on the context and the row, list what needs to be updated on the document."
                        " Provide a short, actionable update suggestion (one or two sentences).\n\n"
                        f"Context:\n{context}\n\nRow:\n{row_text}\n\nAnswer:")
                    # report progress relative to original file
                    print(f"[DEBUG] Asking model for row {skip + i}/{skip + len(rows)}")
                    suggestion = send_to_ai_sync(prompt, model=model, context=None)
                    if suggestion is None:
                        suggestion = "(error or no response)"
                    # Only include the REQ field and the suggestion in output
                    req_value = row.get(req_field, "")
                    out_row = {req_field: req_value, "update_suggestion": suggestion.replace('\n', ' ').strip()}
                    writer.writerow(out_row)
                    
            print(f"[DEBUG] Finished writing {output_csv}")

        # If user asked to process CSV, run that and exit
        if args.process_csv:
            process_epss_csv(args.input_csv, args.output_csv, args.model, context)
            exit(0)
        
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