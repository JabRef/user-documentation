# Add entry using reference text

> Entries can be created from a reference text.

In case you have a reference string, JabRef offers the functionality to convert the text to BibTeX. For this, JabRef uses the technology offered by [Grobid](https://github.com/kermitt2/grobid).

Example:

```text
O. Kopp, A. Armbruster, und O. Zimmermann, "Markdown Architectural Decision Records: Format and Tool Support", in 10th ZEUS Workshop, 2018.
```

1. Click Library and select "New entry from plain text..." Alternatively, you can press Ctrl+Shift+N.

   ![New entry from plain text](../.gitbook/assets/new-entry-from-plain-text-step-1.png)

2. The "Plain Reference Parser" window opens

   ![Plain Reference Parser](../.gitbook/assets/new-entry-from-plain-text-step-2.png)

3. Paste the reference text:

   ![Paste](../.gitbook/assets/new-entry-from-plain-text-step-3.png)

4. Click "Add to current library"
5. The result is selected in the entry table:

   ![Result of Grobid Parsing](../.gitbook/assets/new-entry-from-plain-text-step-4.png)

