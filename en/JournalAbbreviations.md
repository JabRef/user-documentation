Journal abbreviations
=====================

This feature can be configured under **Options -&gt; Manage journal abbreviations**.

JabRef can automatically toggle journal names between abbreviated and unabbreviated form, as long as the names are contained in one of your journal lists. JabRef includes a fairly extensive list of journal abbreviations, but it it still likely to be incomplete for the purposes of many users. You can add abbreviations from any number of lists, all realized as external text files on your hard disk.

Using the feature
-----------------

Journal name conversion can be accessed either from within the entry editor, or from the **Tools** menu. In the entry editor you will find a button labelled *Toggle abbreviation* by the *journal* field. Clicking this button will cause the current journal name to be switched to the next of three modes:

-   Full name, e.g. "Aquacultural Engineering"
-   ISO abbreviation, e.g. "Aquacult. Eng."
-   MEDLINE abbreviation, e.g. "Aquacult Eng"

If the current journal name is not found in your journal lists, the field will not be modified.

To convert the journal names of many entries in bulk, you can select any number of entries, and choose **Tools -&gt; Abbreviate journal names (ISO)**, **Tools -&gt; Abbreviate journal names (MEDLINE)** or **Tools -&gt; Unabbreviate journal names**. These three actions will abbreviate and unabbreviate the journal names of all selected entries for which the journal name could be found in your journal lists.

Setting up your journal lists
-----------------------------

In addition to the list included in JabRef by default, you can have several lists in the form of external text files linked from JabRef. The primary list can be edited from within JabRef.

### Your personal journal abbreviations list

Your personal journal list is managed in the upper part of the **Manage journal abbreviations** window. To start building your personal journal abbreviations list, choose *New file*, and enter a filename manually or using the *Browse* button. If you already have a file that you want to use as a starting point, choose *Existing file*, and use the *Browse* button to choose the file. The table will update to show the contents of the list you have selected.

The table and the tool buttons to the right allow you to add, remove and edit journal entries. For each entry you must provide the full journal name, and the ISO abbreviation (e.g. "Aquacultural Engineering" and "Aquacult. Eng."). To edit an entry, double-click its row in the table.

Once you click *OK*, if you have selected a file, and the table contains at least one entry, the table contents will be stored to the selected file, and JabRef's list of journals will be updated.

### External journal lists

In addition to your personal list, you can link to a number of external lists. These links can be set up in the lower part of the **Manage journal abbreviations** window. External lists are similar to the personal list - the only difference is that JabRef doesn't provide an interface for editing the external lists.

To add a new external list, if necessary, click the **+** button to add another slot to the interface. Then use either the *Browse* or *Download* button next to one of the slots in the lower part of the window.

-   The *Browse* button allows you to select an existing file on your computer.
-   The *Download* button allows you to download a list over the internet by entering and URL, store it to a local file on your computer, and link to it as a journal list from JabRef. The URL will default to the address of a journal list provided from the JabRef web page. This list is incomplete, but may be improved in the future.

Any entry in your personal journal list will override an entry with the same full journal name in one of the external lists. Similarly, the external lists are given precedence in the order they are listed.
