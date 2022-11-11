---
description: Qualify your entries with tags that make sense to your work.
---

# Mark and grade

A set of 6 special fields allows you to tag your entries in order to rate read papers, indicate their relevance to your work, indicate that their quality has been assured, etc. Internally, each special field is stored in a separate BibTeX field.

This feature has to be activated in **Options → Preferences → Entry Table** by checking the item `Enable special fields`.

The status of each special field can be displayed in the table of entries as dedicated columns.

![Six special fields can be displayed in the table of entries](<../.gitbook/assets/specialfields-6columns-5.2 (3) (6) (6) (6) (6) (4) (6) (6) (11) (2) (1) (1) (1) (1) (4).png>)

Like any other field, the special field columns can be turned on and off individually in **Options → Preferences → Entry Table.**

You can see the value of a special field by:

* clicking in the column.
* a right-click on an entry.
* the menu **Edit.**

## Types of Fields

### Relevance

An entry can be marked as relevant: a black-and-white star is displayed (in the first column of the image below).

![](<../.gitbook/assets/specialfields-6columns-5.2 (3) (6) (6) (6) (6) (4) (6) (6) (11) (2) (1) (1) (1) (1) (4).png>)

### Read status

The read status can be set to "No" (no symbol in the column), to "Skimmed" (an orange eye), or to "read" (a green eye).

### Ranking

JabRef offers a rank from one to five yellow stars to rate your papers. By default, no rank is given.

### Quality assured

An entry may be marked as quality assured (fourth column in the image below). For example, you can mark the entries for which a thorough check of the field contents has been done.

![](<../.gitbook/assets/specialfields-6columns-5.2 (3) (6) (6) (6) (6) (4) (6) (6) (11) (2) (1) (1) (1) (1) (4).png>)

### Priority

You can set the priority of an entry from low (red flag) to high (green flag). For example, you can use it to prioritize unread papers.

### Printed

This field allows to state is the paper has been printed or not (sixth column in the image above).

## Configuration of the storage mode in the library

{% hint style="info" %}
Pre JabRef 5.2

The way the special fields are stored in the libraries can be set in **Options → Preferences → Entry Table**.​

2 modes of storage are available:

* With _Write values of special fields as separated fields_ (default configuration since version 5.2)_,_ each special field is stored in a separate field of the entry.
* With _Synchronize with keywords_ enabled, the values of the special fields are stored twice: in a separated field and as a keyword. Each change in a special field is reflected in the keyword field, and, vice versa, each change in a keyword leads to a change in the special field. Additionally, when loading a database or pasting a new entry, the keywords are used to set the special field values.
{% endhint %}
