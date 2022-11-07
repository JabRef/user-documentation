# Journal abbreviations

{% hint style="info" %}
Since: 5.0
{% endhint %}

JabRef can automatically toggle journal names between abbreviated and unabbreviated form, as long as the names are contained in one of your journal lists.

This feature can be configured under **Options → Preferences → Manage journal abbreviations**.

JabRef includes a fairly extensive build-in list of journal abbreviations. This list is a merge of all lists available at [abbrv.jabref.org](https://abbrv.jabref.org). However, this might still be be incomplete (or outdated) for the purposes of some users. Thus, JabRef allows to add abbreviations in the form of a personal list or external lists.

![General view](<../.gitbook/assets/JournalAbbreviations (2) (2) (2) (2) (2) (2) (2) (2) (3) (3) (4) (2) (1) (1).png>)

## Using the feature

Journal name conversion can be accessed either from within the entry editor, or from the **Quality** menu. In the entry editor you will find a button labeled _Toggle abbreviation_ by the _journal_ field. Clicking this button will cause the current journal name to be switched to the next of four modes:

* Full name, e.g. "Aquacultural Engineering"
* Default abbreviation, e.g. "Aquacult. Eng."
* Medline abbreviation, e.g. "Aquacult Eng"
* Shortest unique abbreviation, e.g. "AQEND6"

If the current journal name is not found in your journal lists, the field will not be modified.

To convert the journal names of many entries in bulk, you can select any number of entries, and choose **Quality → Abbreviate journal names → DEFAULT**, **Quality → Abbreviate journal names → MEDLINE**, **Quality → Abbreviate journal names → SHORTEST UNIQUE**, or **Quality → Unabbreviate journal names**. These three actions will abbreviate and unabbreviate the journal names of all selected entries for which the journal name could be found in your journal lists.

## Setting up additional journal lists

In addition to the build-in journal list, you can have a personal list and external lists.

Any entry in your personal journal list will override an entry with the same full journal name in one of the external lists. Similarly, the external lists are given precedence in the order they are listed.

### Your personal journal abbreviations list

Your personal journal list is managed on top of the **Manage journal abbreviations** window. To start building your personal journal abbreviations list, choose _Add new list_, and enter a filename. If you already have a file that you want to use as a starting point, use the _Open existing list_ button. The table will update to show the contents of the list you have selected.

The table and the tool buttons in the upper right allow you to add, remove and edit journal entries. For each entry you must provide the full journal name, and the default abbreviation (e.g. "Aquacultural Engineering" and "Aquacult. Eng."). The last field, which contains the shortest unique abbreviation, is optional. Therefore, you can actually safely omit it. To edit an entry, double-click its row in the table.

Once you click _Save changes_, if you have selected a file, and the table contains at least one entry, the table contents will be stored to the selected file, and JabRef's list of journals will be updated.

### External journal lists

You can link to a number of external lists. These links can be set up on top of the **Manage journal abbreviations** window. External lists are similar to the personal list. The _Open existing list_ button allows you to select an existing file on your computer.

![External list](<../.gitbook/assets/JournalAbbreviations-ExternalList (2) (2) (2) (2) (2) (2) (2) (2) (3) (3) (4) (2) (1) (1).png>)

External lists can be found at [JabRef's repository abbreviation lists](http://abbrv.jabref.org). These data files are in CSV format (using semicolons as separators):

```
<full name>;<abbreviation>[;<shortest unique abbreviation>[;<frequency>]]
```

The two last fields are optional, and you can omit them. JabRef supports the third field, which contains the shortest unique abbreviation. The last field is not currently used; its intention is gives frequency (e.g., `M` for monthly). For instance:

```
Accounts of Chemical Research;Acc. Chem. Res.;ACHRE4;M
```

#### Contributing an external journal list

We want to expand both the build-in list and the selection of smaller lists, so if you have set up a representative list for your own subject area, we would appreciate it if you share your list via [GitHub](https://github.com/JabRef/abbrv.jabref.org) or by dropping a note on [our forum](https://discourse.jabref.org/).
