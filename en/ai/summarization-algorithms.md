# Summarization algorithms

In JabRef you can change the algorithm that is used to summarize papers. You can also customize the templates for all algorithms.

## "Chunked" Summarization Algorithm

This algorithm is made for working with long papers or even books, because it splits a paper into smaller chunks that do not overflow the model's context window. The algorithm works as follows:

1. Split the file into small chunks.
2. Summarize each of the chunks separately.
3. Combine all of the summarized chunks into one message.
4. If this message is too big for the LLM, then summarize all of the chunks again.
5. If not, then summarize the collection of chunks. The result is the final summary.

Pros of the algorithm:

- It is able to handle long texts.
- All parts of the paper are considered and processed.

Cons of the algorithm:

- Takes a long time.
- Spends a lot of tokens.

Templates that algorithm uses:

- "System message for summarization of a chunk": prompt that is used to summarize parts of a paper.
- "System message for summarization of several chunks": prompt that is used to make a final summary out of the summarized parts of a paper.


## "Full document" Summarization Algorithm

This algorithm pushes the whole paper text into AI context window without any preprocessing. It can be useful if the paper is not that long (so it does not need to be chunked) or if you have an LLM that is fine-tuned for summarization.

Pros of the algorithm:

- Fast (because only one message is sent).
- Uses less tokens than the "chunked" version.

Cons of the algorithm:

- Cannot handle papers that are longer than the LLM's context window.
- For long papers it might overlook the information in the middle of the paper (because AI captures better information at the beginning and the end).
