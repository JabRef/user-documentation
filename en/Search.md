---
title: Searching
helpCategories: ["Finding, sorting and cleaning entries"]
---

# Searching

## Keyboard shortcuts

- <kbd>CTRL</kbd> + <kbd>F</kbd> focuses the search interface.
- <kbd>CTRL</kbd> + <kbd>SHIFT</kbd> + <kbd>F</kbd> runs a global search with the current search string.

## Search modes

There are two search modes in JabRef.

### Normal search

In a normal search, the program searches your database for all occurrences of the words in your search string, once you entered it.
Only entries containing all words will be considered matches.
To search for sequences of words, enclose the sequences in double quotes.
For instance, the query **progress "marine aquaculture"** will match entries containing both the word "progress" and the phrase "marine aquaculture".
All entries that don't match are hidden, leaving for display the matching entries only (filter mode), or are grayed-out (float mode).
To stop displaying the search results, just clear the search field again, press <kbd>ESC</kbd> or click on the "Clear" (`X`) button.

### <a href="" id="advanced"></a>Advanced search

#### Syntax

In order to search specific fields only and/or include logical operators in the search expression, a special syntax is available in which these can be specified. E.g. to search for entries whose author is **Miller**, enter:

`author = miller`

Both the field specification and the search term support regular expressions.
If the search term contains spaces, enclose it in quotes.
Do *not* use spaces in the field specification!
E.g. to search for entries about image processing, type:

`title|keywords = "image processing"`

You can use `and`, `or`, `not`, and parentheses as intuitively expected:

`(author = miller or title|keywords = "image processing") and not author = brown`

The `=` sign is actually a shorthand for `contains`.
Searching for an exact match is possible using `matches` or `==`.
Using `!=` tests if the search term is *not* contained in the field (equivalent to `not ... contains ...`).
The selection of field types to search (required, optional, all) is always overruled by the field specification in the search expression.

#### Pseudo fields

JabRef defines the following pseudo fields:

|            |                |               |
|------------|----------------|---------------|
| **Pseudo field** | **Purpose** | **Example** |
|`anyfield`| Search in any field | `anyfield contains fruit`: search for entries having one of its fields containing the word **fruit** |
|`anykeyword`| Search among the keywords | `anykeyword matches apple`: search for entries which has the word **apple** among its keywords |
|`bibtexkey` | Search for citation keys | `bibtexkey = miller2005`: searche for an entry whose BibTeX key is **miller2005**|
|`entrytype`| Search for entries of a certain type |  `entrytype = thesis`: search entries whose type (as displayed in the `entrytype` column) contains the word **thesis** (which would be **phdthesis** and **mastersthesis**)|

## Search settings

Next to the search text field, there are several check boxes to toggle following options:

- Case sensitivity
  - Whether or not the search query is case sensitive

- Regular expressions
  - Whether or not the search query can be described by Regex

- Display setting
  - Filter - Displays only entries which match the search query
  - Float - Entries which do not match the search query are grayed-out

- Global search
  - activated:
    - the search query will be taken over when switching tabs
    - the external search result window will show matches in all database
  - deactivated:
    - each tab will remember its search query
    - the external search result window will only show matches in the current database
