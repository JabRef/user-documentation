# Complete information using online databases

JabRef can fetch automatically additional information about your entries. It can even get the publication file!​

* To _find identifiers_ (arxiv, DOI)\_: select the entries and go to the menu **Lookup → search document identifier online**.​
* To _find the DOI_: open the [entry editor](../advanced/entryeditor/), and in the General tab, click on the button **Lookup DOI**.
* To _find the document_ related to an entry: select the entry and to the menu **Lookup → search full text documents online**.​

Be aware: The options above require your entry or entries to be filled with enough and correct bibliographic information. If the entry holds incomplete or inaccurate data, fetching the identifier or text document my fail.

## Completing information based on DOI or ISBN

JabRef can help you complement your entries with bibliographic data, which is associated with their registered DOI or ISBN. This is a very reliable way of obtaining correct bibliographic information and is very much recommended.

_The following features require your entry to have a DOI or ISBN and are disabled / greyed out otherwise._

* Option A) In the entry table, right-click on the entry to complement, and select the menu **Get bibliographic data from DOI/ISBN/...**
* Option B) Open the [entry editor](../advanced/entryeditor/), and in the General tab, click on the button **Get bibliographic data from DOI**

![](<../.gitbook/assets/getdoi-entryeditor-jabref5.2 (1) (2) (2) (2) (1) (1).png>)

Using any of the options opens the window _Merge entries_:

There it is possible to choose what is kept for each field: the **left side**, the **right side**, or the **merged entry**. By default, the original entry (left) is kept, and any fields not present in the original entry are obtained from the information collected from the DOI.

Finally, after selecting which fields to keep, you can decide to **Merge entries**. Alternatively, you can press **Cancel**.

**See also:** [Find duplicates](findduplicates.md), [Merge entries](mergeentries.md)
