# Complete information using online databases

JabRef can fetch automatically additional information about your entries. It can even get the publication file!​

* _To find identifiers (arxiv, DOI)_, select the entries and go to the menu **Lookup → search document identifier online**.​
* _To find the document_ related to an entry, select the entry and to the menu **Lookup → search full text documents online**.​
* _To complete bibliographic information_ based on DOI or ISBN, continue reading the section below.

## Completing information based on DOI or ISBN

JabRef can help you complement your entries from their DOI or ISBN.

In the entry table, right-click on the entry to complement, and select the menu **Get bibliographic data from DOI/ISBN/...** (_obviously, this feature is disabled if your entry does not have a DOI/ISBN._). Alternatively, you can open the [entry editor](../advanced/entryeditor/), and in the General tab, click on the button **Get bibliographic data from DOI:**

![](<../.gitbook/assets/getdoi-entryeditor-jabref5.2 (1) (2) (2) (2) (2) (1) (1) (1).png>)

This opens the window _Merge entry with DOI information_:

![](<../.gitbook/assets/getdoi-mergeentrieswithdoiinformation-jabref5.2 (1) (1) (1).png>)

The fields of the original entry and of the information gathered from the DOI are displayed side-by-side.

The differences between the two sides can be emphasized through the drop-down menu located at the upper left-hand corner of the window. Five ways of displaying the differences are offered:

* **plain text**: as-is, no emphasis
*   **show diff** - word: differences are shown on the right side.

    Full words are struck out in red if they are removed from the original entry or underlined in blue if they are added to the information collected from the DOI.
*   **show diff** - character: differences are shown on the right side.

    Individual characters are struck out in red or underlined in blue as above.
*   **show symmetric diff** - word: differences are shown on both sides.

    Words are underlined and displayed in color.
*   **show symmetric diff** - character: differences are shown on both sides.

    Characters are underlined and displayed in color.

In the central column, a radio button allows you to select which side to keep for each field: the **left side**, the **right side**, or **none**. By default, the original entry (left) is kept, and any fields not present in the original entry are obtained from the information collected from the DOI.

Finally, after selecting which fields to keep, you can decide to **Merge entries**. Alternatively, you can press **Cancel**.

**See also:** [Find duplicates](findduplicates.md), [Merge entries](mergeentries.md)
