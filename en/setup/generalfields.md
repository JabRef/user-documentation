# Entry editor tabs

You can configure the entry editor's tabs under **File → Preferences → Entry Editor → Editor tabs**. The configuration has two columns: **Tabs** and **Fields**.

## Tabs

The **Tabs** column lists all tabs of the entry editor. There, you can

* untick a built-in tab (Main, Bib(la)TeX source, Related articles, AI summary, AI chat, File annotations, LaTeX citations, Citations, Fulltext search results) to hide it,
* reorder tabs by dragging them,
* add a custom tab by typing its name into the box below the list, and
* remove a custom tab via its delete icon.

Custom tabs appear for all entry types. A field on a custom tab disappears from the [Main tab](../advanced/entryeditor/#the-main-tab)'s remaining-fields list; fields belonging to the entry type (such as author, title, or doi) always stay in the Main tab as well.

Below the two columns, **Add classic 5.x tabs** adds the tabs "General", "Abstract", and "Comments" known from JabRef 5 (as custom tabs, directly after the Main tab), and **Reset to default tabs** restores the built-in tabs and removes all custom tabs.

## Fields

Selecting a custom tab in the **Tabs** column shows its fields in the **Fields** column. There, you can add fields by name, remove them, and reorder them by dragging.

A field name can also be a [regular expression](https://en.wikipedia.org/wiki/Regular_expression). For example, `comment-.*` shows all user-specific comment fields of an entry. A plain field name always appears on the tab (even while the field is empty); a regular expression shows the matching fields that have a value in the entry.

JabRef shows a warning sign next to a field that appears on more than one tab.

The capitalisation of a field's name does not matter. In the entry editor, JabRef normally capitalises a field's first letter, i.e. _abstract_ appears as _Abstract_ and _KEYwords_ as _Keywords_ (_DOI_, _ISBN_, _URL_ appear in all upper case). In the bibtex code, all field names use lower case: _KEYwords_ is _keywords_ in the entry's bibtex code.
