# Customize general fields

You can add an arbitrary number of tabs to the entry editor. These will be present for all entry types. To customize these tabs, go to **File → Preferences → Entry Editor → Custom editor tabs**.

You specify one tab on each line. The line should start with the name of the tab, followed by a colon \(:\), and the fields it should contain, separated by semicolons \(;\).

For example:

```csv
General:url;keywords;doi;pdf
Abstract:abstract;annote
```

will give one tab named "General" containing the fields _url_, _keywords_, _doi_ and _pdf_, and another tab named "Abstract" containing the fields _abstract_ and _annote_.

It does not matter how you capitalise your field names. In the entry editor's tabs, normally fields' first letter is capitalised, i.e. _abstract_ is represented as _Abstract_, _KEYwords_ would be represented as _Keywords_  (_DOI_, _ISBN_, _URL_ are exceptions in that all letters are capitalised). In the bibtex code, all field names use lower case: _KEYwords_ is _keywords_ in the entry's bibtex code.

