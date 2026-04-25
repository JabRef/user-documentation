# Answer Engines

The AI chat uses Large Language Models to generate the response, but they need to know the contents of the papers. But at the same time a paper might be too long to be included in the AI message. For this reason, JabRef has a notion of "Answer Engines" -- those are the algorithms that choose how AI will repond to a question and how it will search for the answer.

There are 2 answer engines available:

- "Embeddings" answer engine,
- "Full document" answer engine.

## "Embeddings" Answer Engine

This answer engine implements the classical RAG approach: the paper is split into chunks, then an embedding vector is generated for each of the chunks, and, in the end, everything is stored in a database.

When a question is asked, the question is also embedded, and by using embedding search the relevant chunks are found and attached to the AI context. As a result, the AI sees only the information from the papers that is relevant to the question.

Pros of the approach:

- Handles information of any size. Chatting with thousands of papers is possible.
- Puts only relevant information to the AI context, reducing the token usage.

Cons of the approach:

- Requires ingestion and embedding of the papers, which takes time.
- Might miss relevant information, because embeddings models are not ideal.

## "Full document" Answer Engine

This answer engine puts all paper content into the AI prompt without any preprocessing. It might be useful if a question requires deeper understanding of the paper or if it is short.

Pros of the approach:

- AI has the full knowledge of the paper content.
- Does not require any additional preprocessing like embedding.

Cons of the approach:

- Unable to handle many papers or long papers, because that will overflow the context window of an LLM.

