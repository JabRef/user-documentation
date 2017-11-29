---
title: Journal abbreviations
helpCategories:
  - Fields
---
# Journal abbreviations

JabRef can automatically toggle journal names between abbreviated and unabbreviated form, as long as the names are contained in one of your journal lists.

This feature can be configured under **Options → Manage journal abbreviations**.

JabRef includes a fairly extensive build-in list of journal abbreviations, but it it still likely to be incomplete for the purposes of many users. You can add abbreviations in the form of a personal list or external lists.

## Using the feature

Journal name conversion can be accessed either from within the entry editor, or from the **Tools** menu. In the entry editor you will find a button labeled *Toggle abbreviation* by the *journal* field. Clicking this button will cause the current journal name to be switched to the next of three modes:

- Full name, e.g. "Aquacultural Engineering"
- ISO abbreviation, e.g. "Aquacult. Eng."
- MEDLINE abbreviation, e.g. "Aquacult Eng"

If the current journal name is not found in your journal lists, the field will not be modified.

To convert the journal names of many entries in bulk, you can select any number of entries, and choose **Tools → Abbreviate journal names (ISO)**, **Tools → Abbreviate journal names (MEDLINE)** or **Tools → Unabbreviate journal names**. These three actions will abbreviate and unabbreviate the journal names of all selected entries for which the journal name could be found in your journal lists.

## Setting up additional journal lists

In addition to the build-in journal list, you can have a personal list and external lists.

Any entry in your personal journal list will override an entry with the same full journal name in one of the external lists. Similarly, the external lists are given precedence in the order they are listed.

### Your personal journal abbreviations list

Your personal journal list is managed in the central part of the **Manage journal abbreviations** window. To start building your personal journal abbreviations list, choose *New file*, and enter a filename manually or using the *Browse* button. If you already have a file that you want to use as a starting point, use the *Browse* button on the line starting wiht *Existing file*. The table will update to show the contents of the list you have selected.

The table and the tool buttons to the right allow you to add, remove and edit journal entries. For each entry you must provide the full journal name, and the ISO abbreviation (e.g. "Aquacultural Engineering" and "Aquacult. Eng."). To edit an entry, double-click its row in the table.

Once you click *OK*, if you have selected a file, and the table contains at least one entry, the table contents will be stored to the selected file, and JabRef's list of journals will be updated.

### External journal lists

You can link to a number of external lists. These links can be set up in the lower part of the **Manage journal abbreviations** window. External lists are similar to the personal list - the only difference is that JabRef does not provide an interface for editing the external lists.

External lists can be found at [JabRef's repository abbreviation lists](http://abbrv.jabref.org/).

To add a new external list, if necessary, click the **+** button to add another slot to the interface. Then use either the *Browse* or *Download* button next to one of the slots in the lower part of the window:

- The *Browse* button allows you to select an existing file on your computer.
- The *Download* button allows you to download a list over the internet by entering an URL, store it to a local file on your computer, and link to it as a journal list from JabRef.

#### Contributing a external journal list

We want to expand both the build-in list and the selection of smaller lists, so if you have set up a representative list for your own subject area, we would appreciate it if you share your list via [github](https://github.com/JabRef/reference-abbreviations) or by dropping a note on [our forum](http://discourse.jabref.org/).