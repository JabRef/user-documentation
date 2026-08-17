# Entry editor tabs

You can configure the entry editor's tabs under **File → Preferences → Entry Editor → Editor tabs**. The configuration has two columns: **Tabs** and **Fields**.

## Tabs

The **Tabs** column lists all tabs of the entry editor. There, you can

* untick a built-in tab (Main, Bib(la)TeX source, Related articles, AI summary, AI chat, File annotations, LaTeX citations, Citations, Fulltext search results) to hide it,
* reorder tabs by dragging them,
* add a custom tab by typing its name into the box below the list, and
* remove a custom tab via its delete icon.

Custom tabs are shown for all entry types. Note that all fields of an entry are always available in the entry editor's [Main tab](../advanced/entryeditor/#the-main-tab); custom tabs are an additional view on the fields you select.

## Fields

Selecting a custom tab in the **Tabs** column shows its fields in the **Fields** column. Fields can be added by name, removed, and reordered by dragging.

A field name can also be a [regular expression](https://en.wikipedia.org/wiki/Regular_expression). For example, `comment-.*` shows all user-specific comment fields of an entry. A plain field name is always shown on the tab (even while the field is empty); a regular expression shows the matching fields that are set on the entry.

If the same field is listed on more than one tab, a warning sign is shown next to it.

It does not matter how a field's name is capitalised. In the entry editor, normally a field's first letter is capitalised, i.e. _abstract_ is represented as _Abstract_, _KEYwords_ would be represented as _Keywords_ (_DOI_, _ISBN_, _URL_ are exceptions in that all letters are capitalised). In the bibtex code, all field names use lower case: _KEYwords_ is _keywords_ in the entry's bibtex code.
