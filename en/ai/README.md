# AI functionality

Since version 6, JabRef has AI functionality built in.

* AI can generate a summary of a research paper
* You can also chat with papers using a "smart" AI assistant

## AI summary tab

When you activate this tab, AI will generate a quick overview of the paper for you.

![AI summary tab screenshot](../.gitbook/assets/AiSummary.png)

The AI will mention the main objectives of the research, methods used, key findings, and conclusions.

## AI chat tab

Here, you can ask questions, which are answered by the LLM.

![AI chat tab screenshot](../.gitbook/assets/AiChat.png)

In this window, you can see the following elements:

* Chat history with your messages
* Prompt for sending messages
* A button for clearing the chat history (just in case)

## How does the AI functionality work?

JabRef uses external AI providers to do the actual work. You can choose between various providers. They all run "Large Language Models" (LLMs) to process the requests and need chunks of text to work. For this, JabRef parses and indexes linked PDF files of entries: The file is split into parts of fixed-length (so-called _chunks_) and for each of them, an _embedding_ is generated. An embedding itself is a representation of a part of text and in turn a vector that represents the meaning of the text. Each vector has a crucial property: texts with similar meaning have vectors that are close to (so-called _vector similarity_). As a result, whenever you ask AI a question, JabRef tries to find relevant pieces of text from the indexed files using vector similarity and provides those to the LLM system to be processed.

## More information
{% content-ref url="how-to-enable-ai-features.md" %}
[how-to-enable-ai-features.md](how-to-enable-ai-features.md)
{% endcontent-ref %}

{% content-ref url="ai-providers-and-api-keys.md" %}
[ai-providers-and-api-keys.md](ai-providers-and-api-keys.md)
{% endcontent-ref %}

{% content-ref url="troubleshooting.md" %}
[troubleshooting.md](troubleshooting.md)
{% endcontent-ref %}

{% content-ref url="preferences.md" %}
[preferences.md](preferences.md)
{% endcontent-ref %}

{% content-ref url="local-llm.md" %}
[local-llm.md](local-llm.md)
{% endcontent-ref %}
