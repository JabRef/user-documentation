# Customizing general fields

You can add an arbitrary number of tabs to the entry editor. These will be present for all entry types. To customize these tabs, go to **Options → Set up general fields**.

You specify one tab on each line. The line should start with the name of the tab, followed by a colon \(:\), and the fields it should contain, separated by semicolons \(;\).

For example:

```text
General:url;keywords;doi;pdf
Abstract:abstract;annote
```

will give one tab named "General" containing the fields _url_, _keywords_, _doi_ and _pdf_, and another tab named "Abstract" containing the fields _abstract_ and _annote_.
