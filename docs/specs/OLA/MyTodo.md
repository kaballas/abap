Goal
Generate retrieval test questions from a specified document. Use a subagent to read and analyse the document. Keep the main agent context small. Validate that answers require document retrieval, not general knowledge.

Inputs
You receive a document path or filename. Always use that file as the only source of truth. If it is missing, stop and report the file not found.

Architecture
Use two agents.

* Main agent. Orchestrates. Passes the document path. Calls the subagent. Prints only the final result location and counts.
* Research subagent. Reads the document. Extracts anchors. Generates questions. Writes the output file.

Delegation rule
For any task that requires reading, chunking, analysing, or generating questions from a document, the main agent must call #runSubagent. The main agent must not read the document itself.

When to delegate
Always delegate when the task involves document content. Never process document text in the main agent.

Subagent responsibilities
The subagent must do all of the following.

* Read the entire document, not just a segment. If limits exist, read in multiple passes until complete.
* Extract anchors such as identifiers, classes, functions, modules, tables, fields, workflows, behaviours, constraints, fallbacks, side effects, and rules.
* Generate retrieval focused questions that require these anchors.
* Save results to a file in the current working directory.
* Return only a short success summary, not the full questions.

Output file rules

* Save exactly one file.
* Location must be the current working directory. Use a relative path only.
* Filename format questions.<document_base_name>.json
* Overwrite if it exists.
* Validate the file is valid JSON before finishing.

Question design rules
Questions must only be answerable by retrieving the document. Avoid generic or conceptual questions.

Use these patterns.

* Exact identifier lookup.
* Behaviour and fallback logic.
* Side effects such as storage, logging, or integration.
* Responsibility mapping between components.
* Compare similar items and their data sources or effects.
* Multi step workflows or chains.
* Constraints and design rules.

Difficulty tiers
Distribute difficulty so retrieval quality is measurable.

For 15 questions use.

* Tier 1. Five single fact questions.
* Tier 2. Seven two anchor relationship questions.
* Tier 3. Three multi step or cross section questions.

Adjust proportionally if fewer questions are requested.

Coverage rule
Cover multiple parts of the document. Do not cluster all questions in one section. Spread across different topics or modules.

Answer key rules
Answer keys must be exact tokens or short exact phrases that appear verbatim in the document. Do not paraphrase.

Retrieval hint rules
Each hint must include.

* Two to five exact identifiers from the document.
* One to three behaviour words such as fallback, rollback, insert only, store, validate.

Evidence rule
Each question must include one or two short quoted snippets from the document, up to 20 words each, that justify the answer. This enables automated validation.

Negative controls
Include two negative control questions that reference identifiers not present in the document. Mark them negative_control true. Expected result is no match.

Output format written to file
Write a single JSON object with this structure.

* questions, array of objects. Each object contains.

  * id
  * tier
  * bucket
  * question
  * answer_keys
  * retrieval_hint
  * evidence
  * negative_control

Number ids sequentially.

Main agent behaviour
After the subagent completes.

* Print only the saved file path.
* Print the number of questions generated.
* Do not print the full JSON unless requested.

Example subagent invocation

#tool:agent/runSubagent

* agentName: RAGQuestionResearcher
* description: Generate retrieval test questions for the supplied document
* prompt:
  Read the provided document in full. Extract anchors. Generate tiered retrieval questions using the specified rules. Save to questions.<document_base_name>.json in the current working directory. Return only the file path and count.

Example custom subagent definition

---

name: RAGQuestionResearcher
description: Reads a document and produces retrieval test questions only
tools: ['read', 'search']
user-invokable: false
---------------------

Target file path = "TechnicalOLA.md"
