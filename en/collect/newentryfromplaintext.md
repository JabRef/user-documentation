# Add entry using reference text

> Entries can be created from a reference text.

In case you have a reference string, JabRef offers the functionality to convert the text to BibTeX. Thereby, JabRef uses the technology offered by [Grobid](https://github.com/kermitt2/grobid).

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

## JabRef 4.x

JabRef thereby used the service offered by [FreeCite](http://freecite.library.brown.edu/). This servce was shut down in 2019. The following explanations are only for historical interest.

1. Click BibTeX and select "New entry from plain text..." Alternatively, you can press Ctrl+Shift+N.

   ![Select entry type](../.gitbook/assets/step1%20%281%29.png)

2. Select an entry type. Select "InProceedings", this works in the most cases

   ![entry type selection](../.gitbook/assets/step2%20%281%29.png)

3. The "Plain text import" window opens

   ![plain text import](../.gitbook/assets/step3%20%281%29.png)

4. Paste the entry using the middle button "paste"

   ![paste](../.gitbook/assets/step4%20%281%29.png)

5. Click on "Parse with FreeCite"

   ![paste](../.gitbook/assets/step5%20%281%29.png)

6. The entry editor opens with the parsed result:

   ![parsed result](../.gitbook/assets/step6%20%281%29.png)

   Do your corrections there.

## Manual way

After step 4 from above, you can manually assign the types to each text.

* Select the text
* Double click on the type at the right side at "Available BibTeX fields"

![manual](../.gitbook/assets/manual%20%281%29.png)

After you finished, you can press "Accept".

