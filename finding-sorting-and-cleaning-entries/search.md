---
title: Searching
helpCategories:
  - 'Finding, sorting and cleaning entries'
since: 3.7
---

# Searching

The search bar is located between the icon bar and the database tabs.

![Screenshot of the search bar](../.gitbook/assets/search-bar.png)

To make the cursor jump to the search field, you can:

* click in the search field.
* select the menu **Search → Search**.
* press Ctrl + F.

Additionally, Ctrl + Shift + F also activates the global search setting.

Searching includes two modes \(normal and advanced\), along with several settings.

## Search settings

At the right of the search text field, several buttons allow for selecting some settings:

* New window
  * When pressed, the results are displayed in a dedicated window.
* Global search
  * activated:
    * the search query will be taken over when switching tabs
    * the external search result window will show matches in all databases
  * deactivated:
    * each tab will remember its search query
    * the external search result window will only show matches in the current database
* Regular expressions
  * Whether or not the search query uses [regular expressions](search.md#regular-expressions).
* Case sensitivity
  * Whether or not the search query is case sensitive.
* Display setting
  * _Filter_ - Displays only entries which match the search query, non-matches are hidden
  * _Float_ -  Matching entries are moved to the top, entries which do not match the search query are grayed-out

## Search modes

There are two search modes in JabRef.

![search](https://user-images.githubusercontent.com/1366654/35925980-5eabdefe-0c27-11e8-9a2a-c2abc2b3509b.gif)

### Normal search

In a normal search, the program searches your database for all occurrences of the words in your search string, once you entered it. Only entries containing all words will be considered matches. To search for sequences of words, enclose the sequences in double quotes. For instance, the query **progress "marine aquaculture"** will match entries containing both the word "progress" and the phrase "marine aquaculture". All entries that don't match are hidden, leaving for display the matching entries only \(filter mode\), or are grayed-out \(float mode\). To stop displaying the search results, just clear the search field again, press Esc or click on the "Clear" \(`X`\) button.

### Advanced search <a id="advanced"></a>

#### Syntax

In order to search specific fields only and/or include logical operators in the search expression, a special syntax is available in which these can be specified. E.g. to search for entries whose an author contains **miller**, enter:

`author = miller`

Both the field specification and the search term support [regular expressions](search.md#regular-expressions). If the search term contains spaces, enclose it in quotes. Do _not_ use spaces in the field specification! E.g. to search for entries about image processing, type:

`title|keywords = "image processing"`

You can use `and`, `or`, `not`, and parentheses as intuitively expected:

`(author = miller or title|keywords = "image processing") and not author = brown`

The `=` sign is actually a shorthand for `contains`. Searching for an exact match is possible using `matches` or `==`. Using `!=` tests if the search term is _not_ contained in the field \(equivalent to `not ... contains ...`\). The selection of field types to search \(required, optional, all\) is always overruled by the field specification in the search expression. If a field is not given, all fields are searched. For example, `video and year == 1932` will search for entries with any field containing `video` and the field `year` being exactly `1932`.

#### Pseudo fields

JabRef defines the following pseudo fields:

|  |  |  |
| :--- | :--- | :--- |
| **Pseudo field** | **Purpose** | **Example** |
| `anyfield` | Search in any field | `anyfield contains fruit`: search for entries having one of its fields containing the word **fruit**. This is identical to just writing `apple`. It may be more useful as `anyfield matches apple`, where one field must be exactly `apple` for a match. |
| `anykeyword` | Search among the keywords | `anykeyword matches apple`: search for entries which has the word **apple** among its keywords. However, as this also matches `pineapple`, it may be more useful in searches of the type `anykeyword matches apple`, which will not match `apples` or `pineapple` |
| `bibtexkey` | Search for citation keys | `bibtexkey == miller2005`: search for an entry whose BibTeX key is **miller2005** |
| `entrytype` | Search for entries of a certain type | `entrytype = thesis`: search entries whose type \(as displayed in the `entrytype` column\) contains the word **thesis** \(which would be **phdthesis** and **mastersthesis**\) |

## Regular expressions

Regular expressions \(regex for short\) define a language for specifying the text to be matched, for example when searching. JabRef uses regular expressions as defined in Java. For extensive information, please, look at the [documentation](https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html) and at the [tutorial](https://docs.oracle.com/javase/tutorial/essential/regex/).

They can be used in the normal search mode and the advanced search mode

### Regular expressions and casing

By default, regular expressions do not account for upper/lower casing. Hence, while the examples below are all in lower case, they match also upper- and mixed case strings.

If casing is important to your search, activate the case-sensitive button.

### Searching for entries with an empty or missing field

* `.` means any character
* `+` means one or more times

`author != .+`

### Searching for a given word

* `\b` means word boundary
* `\B` means not a word boundary

`keywords = \buv\b` matches _uv_ but not _lluvia_ \(it does match _uv-b_ however\)

`author = \bblack\b` matches _black_ but neither _blackwell_ nor _blacker_

`author == black` does not match _john black_, but `author = \bblack\b` does.

`author = \bblack\B` matches _blackwell_ and _blacker_, but not _black_.

### Searching with optional spelling

* `?` means none or one copy of the preceeding character.
* `{n,m}` means at least _n_, but not more than _m_ copies of the preceding character.
* `[ ]` defines a character class

`title =neighbou?r` matches _neighbour_ and _neighbor_, and also _neighbours_ and _neighbors_, and _neighbouring_ and _neighboring_, etc.

`title = neighbou?rs?\b` matches _neighbour_ and _neighbor_, and also _neighbours_ and _neighbors_, but neither _neighbouring_ nor _neighboring_.

`author = s[aá]nchez` matches _sanchez_ and _sánchez_.

`abstract = model{1,2}ing` matches _modeling_ and _modelling_.

`abstract = modell?ing` also matches _modeling_ and _modelling_.

### Searching for strings with a special character \(`()[]{}\^-=$!|?*+.`\)

If a special character \(i.e. `(` `)` `[` `]` `{` `}` `\` `^` `-` `=` `$` `!` `|` `?` `*` `+` `.` \) is included in your search string, it has to be escaped with a backslash, such as `\}` for `}`.

It means that to search for a string including a backslash, two consecutive backslashes \(`\\`\) have to be used: `abstract = xori{\\c{c}}o` matches _xoriço_.

### Searching for strings with double quotation marks \(`"`\)

The character `"` has a special meaning: it is used to group words into phrases for exact matches. So, if you search for a string that includes a double quotation, the double quotation character has to be replaced with the hexadecimal character 22 in ASCII table `\x22`.

Hence, to search for _{\"o}quist_ as an author, you must input `author = \{\\\x22o\}quist`, with regular expressions enabled \(Note: the _{_, _\_ and the _}_ are escaped with a backslash; see above\).

Indeed, `\"` does not work as an escape for `"`. Hence, neither `author = {\"o}quist` with regular expression disabled, nor `author = \{\\\"O\}quist` with regular expression enabled, will find anything even if the name _{\"o}quist_ exists in the database.

