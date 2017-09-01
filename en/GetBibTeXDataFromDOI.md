---
title: Get BibTeX data from DOI
helpCategories: ["Finding, sorting and cleaning entries"]
---

# Get BibTeX data from DOI

JabRef can help you complement your entries from their DOI.

Open the [entry editor](EntryEditor), and in the General tab, click on the button **Get BibTeX data from DOI**.
*Obviously, this feature is available only if your entry already has a DOI.*

![Screenshot of general tab](./images/GetBibTeXDataFromDOI-Main.png)


The **Merge entry with DOI information** window will pop-up.

## Parallel display of the entry field and of the information gathered from the DOI

![Screenshot of the parallel display](./images/GetBibTeXDataFromDOI-ParallelDisplay.png)

The fields of the original entry and of the information gathered from the DOI are displayed side-by-side on the upper part of the window.

The differences between the two sides can be emphasized through the drop-down menu located at the upper right-hand corner of the window.
Five ways of displaying the differences are offered:

- **plain text**: as is, no emphasis
- **show diff** - word: differences are shown on the right side.
Full words are struck out in red if they are removed from the original entry or underlined in blue if they are added to the information collected from the DOI.
- **show diff** - character: differences are shown on the right side.
Individual characters are struck out in red or underlined in blue as above.
- **show symmetric diff** - word: differences are shown on both sides.
Words are underlined and displayed in color.
- **show symmetric diff** - character: differences are shown on both sides.
Characters are underlined and displayed in color.

In the central column, a radio button allows you to select which side to keep for each field:
the **left side**, the **right side**, or **none**.
By default, the original entry (left) is kept, and any fields not present in the original entry are obtained from the information collected from the DOI.


## Merged entry: preview and source code

![Screenshot of the preview and source code for the merged entry](./images/GetBibTeXDataFromDOI-PreviewAndCode.png)

Based upon your selection, the merged entry is shown, both as a preview (on the left) and as source code (on the right).

If you right-click on the preview, you can **Print entry preview** or **Copy preview**.

## Final merging

![Screenshot of choosing to replace the original entry or not](./images/GetBibTeXDataFromDOI-Selecting.png)

Finally, after selecting which fields to keep, you can decide to **Replace the original entry**. Alternatively, you can press **Cancel**.


**See also:** [Find duplicates](FindDuplicates), [Merge entries](MergeEntries)
