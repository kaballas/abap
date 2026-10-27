import argparse
import mistune
import sys
from typing import List


def extract_section_by_heading(md_text: str, heading_id: str) -> List[dict]:
    markdown = mistune.create_markdown(renderer='ast')
    tokens = markdown(md_text)
    section = []
    recording = False
    target_level = None

    for token in tokens:
        if token['type'] == 'heading':
            # Flatten children for heading text (may be split)
            heading_text = ''.join(child.get('raw', '') for child in token.get('children', []))
            if heading_id.lower() in heading_text.lower():
                recording = True
                target_level = token['attrs']['level']
                section.append(token)
                continue
            elif recording and token['attrs']['level'] <= target_level:
                break  # Stop at same or higher-level heading
        elif recording:
            section.append(token)
    return section


def render_ast_to_markdown(ast_nodes: List[dict]) -> str:
    # Use Mistune's HTMLRenderer then convert HTML back to Markdown (suboptimal, but safe for sections).
    # Alternatively, reconstruct Markdown text manually.
    # For now, use mistune to render to HTML, as rendering to Markdown not built-in.
    # Simple approach: re-render extracted section to HTML as a sanity check.
    # For a Markdown version, just use the lines from the original source. So, let's extract from the original string.
    # This function is a stub for possible expansion.
    return '[AST extraction complete; integrate with LLM or Markdown rendering as needed.]'


def extract_section_as_text(md_text: str, heading_id: str) -> str:
    # Fallback: extract from text by replaying the boundaries found in the AST
    markdown = mistune.create_markdown(renderer='ast')
    tokens = markdown(md_text)
    lines = md_text.splitlines(keepends=True)
    start_idx = None
    stop_idx = None
    target_level = None

    for i, token in enumerate(tokens):
        if token['type'] == 'heading':
            heading_text = ''.join(child.get('raw', '') for child in token.get('children', []))
            if heading_id.lower() in heading_text.lower():
                # Find start of this heading in lines:
                raw_heading_line = heading_text.strip()
                # Find line number in original text:
                for lineno, line in enumerate(lines):
                    if raw_heading_line and raw_heading_line in line:
                        start_idx = lineno
                        target_level = token['attrs']['level']
                        break
                # Look for next heading of same/higher level to find stop
                for next_token in tokens[i+1:]:
                    if next_token['type'] == 'heading' and next_token['attrs']['level'] <= target_level:
                        # Find next heading line
                        next_heading_text = ''.join(child.get('raw', '') for child in next_token.get('children', []))
                        for stop_line, line in enumerate(lines):
                            if next_heading_text.strip() and next_heading_text.strip() in line and stop_line > start_idx:
                                stop_idx = stop_line
                                break
                        break
                break
    if start_idx is not None:
        # If stop_idx not found, extract to end
        if stop_idx is None:
            stop_idx = len(lines)
        return ''.join(lines[start_idx:stop_idx]).rstrip()
    return ''  # Not found


def main():
    parser = argparse.ArgumentParser(description="Extract a section from a Markdown file by heading identifier.")
    parser.add_argument('markdown_path', help='Path to the input Markdown file (e.g., brd.md)')
    parser.add_argument('heading_id', help='Heading or requirement identifier to search for (e.g., 1PA001)')
    parser.add_argument('--output', '-o', help='Output file for extracted section (if omitted, print to stdout)')
    args = parser.parse_args()

    # Read file
    try:
        with open(args.markdown_path, 'r', encoding='utf-8') as f:
            md_text = f.read()
    except Exception as e:
        print(f"Error: Cannot read file {args.markdown_path}: {e}", file=sys.stderr)
        sys.exit(1)

    # Extract section
    extracted = extract_section_as_text(md_text, args.heading_id)

    if not extracted:
        print(f"No section found for heading id '{args.heading_id}'")
        sys.exit(2)

    if args.output:
        try:
            with open(args.output, 'w', encoding='utf-8') as f:
                f.write(extracted + '\n')
        except Exception as e:
            print(f"Error writing to output file {args.output}: {e}", file=sys.stderr)
            sys.exit(3)
    else:
        print(extracted)

if __name__ == '__main__':
    main()
