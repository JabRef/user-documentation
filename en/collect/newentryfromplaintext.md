# Add entry using reference text

> Entries can be created from a reference text.

In case you have a reference string, JabRef offers the functionality to convert the text to BibTeX (or biblatex). For this, JabRef uses the technology offered by [Grobid](https://github.com/kermitt2/grobid).

Example:

```text
O. Kopp, A. Armbruster, und O. Zimmermann, "Markdown Architectural Decision Records: Format and Tool Support", in 10th ZEUS Workshop, 2018.
```

1. Click Library and select "New entry from plain text..." Alternatively, you can press Ctrl+Shift+N.

    <img src="../.gitbook/assets/new-entry-from-plain-text-step-1.png" alt="New entry from plain text" data-size="original">
2. The "Plain Reference Parser" window opens

    <img src="../.gitbook/assets/new-entry-from-plain-text-step-2 (1).png" alt="Plain Reference Parser" data-size="original">
3. Paste the reference text:

    <img src="../.gitbook/assets/new-entry-from-plain-text-step-3 (1).png" alt="Paste" data-size="original">
4. Click "Add to current library"
5. The result is selected in the entry table:

    <img src="../.gitbook/assets/new-entry-from-plain-text-step-4 (1).png" alt="Result of Grobid Parsing" data-size="original">
