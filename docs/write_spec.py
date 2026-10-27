import requests
import json
import os
import argparse
import re
from datetime import datetime

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
        response.raise_for_status()
        print("[DEBUG] Response successful.")
        # Try to parse JSON and pretty-print; fall back to raw text if not JSON
        try:
            data = response.json()
            print("[DEBUG] Pretty-printed JSON response:")
            print(json.dumps(data, indent=2, ensure_ascii=False))
            return data
        except ValueError:
            print("[DEBUG] Response not JSON, returning raw text:")
            return response.text
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

def read_run_md(md_path="run.md"):
    """
    Reads run.md and returns a sorted list of all non-blank, unique IDs (uppercase, stripped)
    """
    ids = set()
    try:
        with open(md_path, "r", encoding="utf-8") as f:
            for line in f:
                line = line.strip().upper()
                if line and not line.startswith('#'):
                    ids.add(line)
    except FileNotFoundError:
        print(f"[ERROR] {md_path} not found.")
    return sorted(ids)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Send messages to AI with context and produce a spec")
    parser.add_argument("-q", "--question", type=str, help="Question to send to AI")
    parser.add_argument("-m", "--model", type=str, default="gpt-4.1", help="Model to use (default: gpt-4.1)")
    parser.add_argument("--outfile", type=str, default=None, help="Write spec to this file (markdown)")
    parser.add_argument("--no-write", action="store_true", help="Don't write file; just print spec to stdout")
    parser.add_argument("--from-run-md", action="store_true", help="Generate a spec for each ID listed in run.md")
    args = parser.parse_args()
    
    print("[DEBUG] Starting AI chat script...")
    models = list_ai_models()
    
    if models:
        # Load SAP Fields context
        context = None
        try:
            with open("/home/theo/Documents/docs/brd.md", "r") as f:
                context = f.read()
                print(f"[DEBUG] SAP Fields context loaded: {len(context)} characters")
        except FileNotFoundError as e:
            print(f"[WARNING] SAP_Fields.md not found: {e}")
        
        # Shared spec template used for all modes
        spec_template = (
            "# Functional Specification: {ID} — Title \n\n"
            "---\n\n"
            "## 1. Business Background\n\n"
                        "---\n\n"
            "## 2. Scope\n\n"
            "---\n\n"
            "## 3. Detailed Functional Requirements\n\n"
            "---\n\n"
            "## 4. Exception Handling\n\n"
            "---\n\n"
            "## 5. Compliance/Controls\n\n"
            "(Payroll controls, OLIMS access, reporting, reconciliation)\n\n"
            "---\n\n"
            "## 6. References and Linked Requirements\n\n"
            "(Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic) example\n\n"
            "---\n\n"
            "## 7. Acceptance Criteria\n\n"
            "(Checklist of acceptance criteria)\n"
        )
        # Helper: always-returns-string extractor
        def extract_assistant_text(ai_result):
            if ai_result is None:
                return ''
            if isinstance(ai_result, dict):
                try:
                    choices = ai_result.get('choices') or []
                    if choices:
                        msg = choices[0].get('message') or choices[0].get('text')
                        if isinstance(msg, dict):
                            return msg.get('content', '') or ''
                        return str(msg or '')
                except Exception:
                    pass
                return json.dumps(ai_result, indent=2, ensure_ascii=False)
            else:
                return str(ai_result or '')
        # Batch mode: process each ID in run.md
        if args.from_run_md:
            print('[DEBUG] Entered --from-run-md batch processing mode')
            ids = read_run_md("run.md")
            print(f'[DEBUG] IDs from run.md: {len(ids)} found')
            for req_id in ids:
                print(f'[DEBUG] Looping to process ID: {req_id}')
                prompt = (
                    "Please generate a complete Functional Specification in markdown following the exact structure and headings of the example template below. "
                    "Replace placeholder {ID} with the requirement identifier you detect (or use SPEC if none provided).\n\n"
                    + spec_template.replace("{ID}", req_id)
                    + "\n\nUser request or requirement description:\n"
                    + req_id
                )
                if context:
                    prompt += "\n\nContext:\n" + context
                
                print(f"[DEBUG] Generating spec for {req_id}...")
                ai_result = send_to_ai(prompt, model=args.model, context=None)
                assistant_text = extract_assistant_text(ai_result)
                outpath = args.outfile if args.outfile else f"{req_id}_spec.md"
                if args.no_write:
                    print(f"[DRYRUN] Would write spec for {req_id} to: {outpath}")
                else:
                    with open(outpath, 'w', encoding='utf-8') as f:
                        f.write(assistant_text)
                    print(f"[INFO] Spec for {req_id} written to {outpath}")
            import sys
            print('[DEBUG] Batch processing for --from-run-md completed. Exiting.')
            sys.exit(0)
        # If question provided via CLI, send the example template inside the prompt
def extract_assistant_text(ai_result):
    """Extracts the textual response from AI result. Always returns a string."""
    if ai_result is None:
        return ''
    if isinstance(ai_result, dict):
        # Look for common fields in OpenAI-like responses
        try:
            choices = ai_result.get('choices') or []
            if choices:
                msg = choices[0].get('message') or choices[0].get('text')
                if isinstance(msg, dict):
                    return msg.get('content', '') or ''
                return str(msg or '')
        except Exception:
            pass
        # fallback to stringifying whole dict
        return json.dumps(ai_result, indent=2, ensure_ascii=False)
    else:
        return str(ai_result or '')


        # Shared spec template used for both CLI and interactive prompts
        spec_template = (
            "# Functional Specification: {ID} — Title\n\n"
            "---\n\n"
            "## 1. Business Background\n\n"
            "---\n\n"
            "## 2. Scope\n\n"
            "---\n\n"
            "## 3. Detailed Functional Requirements\n\n"
            "---\n\n"
            "## 4. Exception Handling\n\n"
            "---\n\n"
            "## 5. Compliance/Controls\n\n"
            "---\n\n"
            "## 6. References and Linked Requirements\n\n"
            "---\n\n"
            "## 7. Acceptance Criteria\n\n"
            "(Checklist of acceptance criteria)\n"
        )

        if args.question:
            # Spec template to include in the user prompt so the model formats the output
            spec_template = (
                "# Functional Specification: {ID} — Title\n\n"
                "---\n\n"
                "## 1. Business Background\n\n"
                "---\n\n"
                "## 2. Scope\n\n"
                "---\n\n"
                "## 3. Detailed Functional Requirements\n\n"
                "---\n\n"
                "## 4. Exception Handling\n\n"
                "(List exceptions such as retroactive entitlements and insurer payments post-termination)\n\n"
                "---\n\n"
                "## 5. Compliance/Controls\n\n"
                "(Payroll controls, OLIMS access, reporting, reconciliation)\n\n"
                "---\n\n"
                "## 6. References and Linked Requirements\n\n"
                "(Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic) example\n\n"
                "---\n\n"
                "## 7. Acceptance Criteria\n\n"
                "(Checklist of acceptance criteria)\n"
            )

            message = args.question
            selected_model = args.model
            print(f"[DEBUG] CLI mode: Using model {selected_model}")
            print(f"[DEBUG] Message length: {len(message)} characters")
            print(f"[DEBUG] Sending message with model: {selected_model}")

            # Compose prompt: include the template and the user's request; let the model generate the spec
            prompt = (
                "Please generate a complete Functional Specification in markdown following the exact structure and headings of the example template below. "
                "Replace placeholder {ID} with the requirement identifier you detect (or use SPEC if none provided).\n\n"
                + spec_template
                + "\n\nUser request or requirement description:\n"
                + message
            )

            # Include context if available
            if context:
                prompt += "\n\nContext:\n" + context

            print(context)
            ai_result = send_to_ai(prompt, model=selected_model, context=None)

            assistant_text = extract_assistant_text(ai_result)

            # Try to find a requirement id like DOA013 in the question or assistant text
            m = re.search(r"\b([A-Z]{3}\d{3,})\b", str(message) or "")
            if not m:
                m = re.search(r"\b([A-Z]{3}\d{3,})\b", str(assistant_text) or "")
            req_id = m.group(1) if m else "SPEC"

            # Write the assistant's response (expected to be full markdown spec)
            if args.outfile:
                outpath = args.outfile
            else:
                outpath = f"{req_id}_spec.md"

            if args.no_write:
                print(assistant_text)
            else:
                with open(outpath, 'w', encoding='utf-8') as f:
                    f.write(assistant_text)
                print(f"[INFO] Spec written to {outpath}")
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

                        # Compose prompt: include the template and the user's request; let the model generate the spec
                        prompt = (
                            "Please generate a complete Functional Specification in markdown following the exact structure and headings of the example template below. "
                            "Replace placeholder {ID} with the requirement identifier you detect (or use SPEC if none provided).\n\n"
                            + spec_template
                            + "\n\nUser request or requirement description:\n"
                            + message
                        )

                        if context:
                            prompt += "\n\nContext:\n" + context[:2000]

                        ai_result = send_to_ai(prompt, model=selected_model, context=None)
                        assistant_text = extract_assistant_text(ai_result)

                        # Try to find a requirement id like DOA013 in the message or assistant text
                        m = re.search(r"\b([A-Z]{3}\d{3,})\b", str(message) or "")
                        if not m:
                            m = re.search(r"\b([A-Z]{3}\d{3,})\b", str(assistant_text) or "")
                        req_id = m.group(1) if m else "SPEC"

                        outpath = args.outfile if args.outfile else f"{req_id}_spec.md"

                        if args.no_write:
                            print(assistant_text)
                        else:
                            with open(outpath, 'w', encoding='utf-8') as f:
                                f.write(assistant_text)
                            print(f"[INFO] Spec written to {outpath}")
                    else:
                        print("[WARNING] No message provided.")
                else:
                    print(f"[ERROR] Invalid model number. Range is 1-{len(models)}")
            except ValueError:
                print("[ERROR] Invalid input. Please enter a number.")
    # No models available fallback (should only happen if backend is down or misconfigured)
    print("[ERROR] No models available.")
