import requests
import json
import os
import argparse
import sys
from datetime import datetime
from pathlib import Path

DEBUG_DIR = "debug"
DEFAULT_FILES = [
    "/home/theo/Documents/docs/brd.md",
    "/home/theo/Documents/docs/specs/OLC/combined.md",
    "/home/theo/Documents/docs/specs/OLA/ZCL_OLIMS_CLASS.apab",
    "/home/theo/Documents/docs/specs/OLA/ZHUOLIMS_CORRESPONDENCE.abap",
]


def safe_print(*args, **kwargs):
    """Print without crashing on broken pipes."""
    try:
        print(*args, **kwargs)
    except BrokenPipeError:
        try:
            sys.stdout.close()
        except Exception:
            pass
        sys.exit(0)


def init_debug_dir():
    """Create debug directory if it doesn't exist."""
    Path(DEBUG_DIR).mkdir(exist_ok=True)


def log_request_response(request_payload, response_data, request_type="chat"):
    """Log request and response to separate files with timestamp."""
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S_%f")[:-3]

    request_file = Path(DEBUG_DIR) / f"{timestamp}_request_{request_type}.json"
    response_file = Path(DEBUG_DIR) / f"{timestamp}_response_{request_type}.json"

    try:
        with open(request_file, "w") as f:
            json.dump(request_payload, f, indent=2, ensure_ascii=False)
    except Exception:
        pass

    try:
        with open(response_file, "w") as f:
            json.dump(response_data, f, indent=2, ensure_ascii=False)
    except Exception:
        pass


def send_to_ai(message="hello", model="gpt-4o-copilot", context=None, timeout_seconds=120):
    """Send a message to AI using chat completions endpoint."""
    bridge_token = os.getenv("BRIDGE_TOKEN", "kaballas")
    port = os.getenv("PORT", "80")

    url = f"http://127.0.0.1:{port}/v1/chat/completions"
    headers = {
        "Authorization": f"Bearer {bridge_token}",
        "Content-Type": "application/json",
    }

    full_message = f"Context:\n{context}\n\nMessage:\n{message}" if context else message

    payload = {
        "model": model,
        "messages": [{"role": "user", "content": full_message}],
    }

    try:
        response = requests.post(url, headers=headers, json=payload, timeout=timeout_seconds)

        try:
            response_data = response.json()
        except ValueError:
            response_data = {"raw_text": response.text, "status_code": response.status_code}

        log_request_response(payload, response_data, request_type="chat")

        response.raise_for_status()
        return response_data

    except requests.exceptions.RequestException as e:
        safe_print(f"[ERROR] Error sending message to AI: {e}")
        return None


def load_files(file_paths):
    """Load content from multiple files."""
    file_contents = {}
    for file_path in file_paths:
        try:
            with open(file_path, "r") as f:
                content = f.read()
                file_contents[file_path] = content
        except FileNotFoundError:
            safe_print(f"[ERROR] File not found: {file_path}")
        except Exception as e:
            safe_print(f"[ERROR] Failed to load {file_path}: {e}")
    return file_contents


def extract_ai_message(response):
    if not response:
        return "[ERROR] No response received"
    if isinstance(response, dict) and "choices" in response:
        try:
            return response["choices"][0]["message"]["content"]
        except (KeyError, IndexError, TypeError):
            return json.dumps(response, ensure_ascii=False)
    return json.dumps(response, ensure_ascii=False)


def process_files_with_question(file_paths, question, model, timeout_seconds=120, quiet=False, json_mode=False, max_chars=0):
    """Process multiple files with a single question and aggregate responses."""
    file_contents = load_files(file_paths)

    if not file_contents:
        safe_print("[ERROR] No files loaded successfully.")
        return None

    all_responses = {}

    for file_path, context in file_contents.items():
        response = send_to_ai(
            message=question,
            model=model,
            context=context,
            timeout_seconds=timeout_seconds,
        )
        all_responses[file_path] = response

    if json_mode:
        output = {}
        for file_path, response in all_responses.items():
            text = extract_ai_message(response)
            if max_chars > 0:
                text = text[:max_chars]
            output[file_path] = text
        safe_print(json.dumps(output, indent=2, ensure_ascii=False))
        return all_responses

    if not quiet:
        safe_print("\n" + "=" * 80)
        safe_print("CONSOLIDATED RESPONSES")
        safe_print("=" * 80)

    for file_path, response in all_responses.items():
        if not quiet:
            safe_print(f"\n--- File: {file_path} ---")
        text = extract_ai_message(response)
        if max_chars > 0:
            text = text[:max_chars]
        safe_print(text)

    return all_responses


def list_ai_models(timeout_seconds=20):
    """Fetch available AI models silently."""
    url = "http://127.0.0.1/v1/models"
    headers = {"Authorization": "Bearer kaballas"}
    try:
        response = requests.get(url, headers=headers, timeout=timeout_seconds)

        try:
            models_data = response.json()
        except ValueError:
            models_data = {"raw_text": response.text, "status_code": response.status_code}

        request_payload = {"method": "GET", "url": url, "headers": headers}
        log_request_response(request_payload, models_data, request_type="models")

        response.raise_for_status()
        return [model["id"] for model in models_data.get("data", [])]

    except requests.exceptions.RequestException as e:
        safe_print(f"[ERROR] Error fetching models: {e}")
        return []


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Send messages to AI with context from multiple files")
    parser.add_argument("-q", "--question", type=str, help="Question to send to AI")
    parser.add_argument("-m", "--model", type=str, default="gpt-5-mini", help="Model to use (default: gpt-5-mini)")
    parser.add_argument("--files", nargs="+", help="Override default files with explicit file list")
    parser.add_argument("--quiet", action="store_true", help="Print only model outputs")
    parser.add_argument("--json", action="store_true", help="Emit JSON map of file to response text")
    parser.add_argument("--timeout", type=int, default=120, help="HTTP timeout per request in seconds")
    parser.add_argument("--max-chars", type=int, default=0, help="Truncate each output to max chars (0 = no truncate)")
    args = parser.parse_args()

    init_debug_dir()
    models = list_ai_models(timeout_seconds=min(args.timeout, 30))

    if not models:
        safe_print("[ERROR] No models available.")
        sys.exit(1)

    if not args.question:
        safe_print("[ERROR] Question is required")
        sys.exit(1)

    selected_model = args.model
    file_list = args.files if args.files else DEFAULT_FILES

    process_files_with_question(
        file_list,
        args.question,
        selected_model,
        timeout_seconds=args.timeout,
        quiet=args.quiet,
        json_mode=args.json,
        max_chars=args.max_chars,
    )
