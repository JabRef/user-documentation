# Customize the citation key generator

The pattern used in the auto generation of citation labels can be set for each of the standard entry types in **Options → Preferences**, tab **Citation key generator**. A detailed description can be found in the [default citation key pattern section](citationkeypatterns.md#default-citation-key-pattern).

## Citation key patterns

The key pattern can contain any text you wish, in addition to field markers that indicate that a specific field of the entry should be inserted at that position of the key. A field marker generally consists of the field name (in upper case letters) enclosed in square braces, e.g., **`[TITLE]`**. If the field is undefined in an entry at the time of key generation, no text will be inserted by the field marker. A field enclosed in square braces can be further changed by appending one or more of the [available modifiers](citationkeypatterns.md#modifiers) separated by `:`, e.g., **`[TITLE:abbr]`**.

For an entry with the title `An awesome paper on JabRef`, the citation key pattern `demo[TITLE:abbr]` will provide the key `demoAapoJ`.

### Special field markers

Several special field markers are offered, which extract only a specific part of a field. Feel free to suggest new special field markers.

#### Author-related field markers

* **`[auth]`**: The last name of the first author
* **`[authEtAl]`**: The last name of the first author, and the last name of the second author if there are two authors or `EtAl` if there are more than two. This is similar to `auth.etal`. The difference is that the authors are not separated by `.` and in case of more than 2 authors `EtAl` instead of `.etal` is appended
* **`[authFirstFull]`**: Get the `von` part and last name of the first author
* **`[authForeIni]`**: The forename initial of the first author
* **`[authIniN]`**: The beginning of each author's last name, using at most `N` characters
* **`[authN]`**: The first `N` characters of the first author's last name
* **`[authN_M]`**: The first `N` characters of the \`Mth author's last name
* **`[authorIni]`**: The first 5 characters of the first author's last name, and the last name initial of the remaining authors
* **`[authorLast]`**: The last name of the last author
* **`[authorLastForeIni]`**: The forename initial of the last author
* **`[authors]`**: The last name of all authors
* **`[authorsAlpha]`**: Corresponds to the BibTeX style “alpha”,
  * One author: The first three letters of the last name
  * Two to four authors: The first letter of the last name of each author
  * More than four authors: The first letter of the first three authors' last name. A `+` is added at the end if it is not in the [list of unwanted characters](citationkeypatterns.md#removing-unwanted-characters).
* **`[authorsN]`**: The last name of up to `N` authors. If there are more authors, `EtAl` is appended
* **`[authshort]`**: The last name if one author is given; the first character of up to three authors' last names if more than one author is given. A plus character is added, if there are more than three authors
* **`[auth.auth.ea]`**: The last name of the first two authors, separated by `.`. If there are more than two authors, adds `.ea`
* **`[auth.etal]`**: The last name of the first author, and the last name of the second author if there are two authors or `.etal` if there are more than two

**Note:** If there is no author (as in the case of an edited book), then all of the above **`[auth...]`** markers will use the editor(s) (if any) as a fallback. Thus, the editor(s) of a book with no author will be treated as the author(s) for label-generation purposes. If you do not want this behavior, i.e. you require a marker which expands to nothing if there is no author, use **`pureauth`** instead of **`auth`** in the above codes. For example, **`[pureauth]`**, or **`[pureauthors3]`**.

The name of institutions and companies often contain spaces and words that have a specific meaning in the author field, e.g., `and`. The full name should be enclosed in braces to prevent the name from being miss-parsed for these cases. Names enclosed in braces are often abbreviated while generating citation keys to avoid creating excessively long keys. For example, `{European Union Aviation Safety Agency}` is abbreviated to `EUASA`.

#### Editor-related field markers

* **`[edtr]`**: The last name of the first editor
* **`[edtrIniN]`**: The beginning of each editor's last name, using at most `N` characters
* **`[editors]`**: The last name of all editors
* **`[editorLast]`**: The last name of the last editor
* **`[editorIni]`**: The first 5 characters of the first editor's last name, and the last name initials of the remaining editors
* **`[edtrN]`**: The first `N` characters of the first editor's last name
* **`[edtrN_M]`**: The first `N` characters of the `M`th editor's last name
* **`[edtr.edtr.ea]`**: The last name of the first two editors, separated by `.`. If there are more than two editors, adds `.ea`
* **`[edtrshort]`**: The last name if one editor is given; the first character of up to three editors' last names if more than one editor is given. A plus character is added, if there are more than three editors
* **`[edtrForeIni]`**: The forename initial of the first editor
* **`[editorLastForeIni]`**: The forename initial of the last editor

#### Title-related field markers

* **`[shorttitle]`**: The first 3 words of the title, ignoring any function words (see below). For example, `An awesome paper on JabRef` becomes `AwesomePaperJabref`
* **`[shorttitleINI]`**: The first 3 words of the title, abbreviated.
* **`[veryshorttitle]`**: The first word of the title, ignoring any function words (see below). For example, `An awesome paper on JabRef` becomes `Awesome`
* **`[camel]`**: Capitalize and concatenate all the words of the title. For example, `An awesome paper on JabRef` becomes `AnAwesomePaperOnJabref`
* **`[title]`**: Capitalize all the significant words of the title, and concatenate them. For example, `An awesome paper on JabRef` becomes `AnAwesomePaperonJabref`
* **`[fulltitle]`**: The title with unchanged capitalization.

JabRef considers the following words to be [function words](https://en.wikipedia.org/wiki/Function\_word): "a", "an", "the", "above", "about", "across", "against", "along", "among", "around", "at", "before", "behind", "below", "beneath", "beside", "between", "beyond", "by", "down", "during", "except", "for", "from", "in", "inside", "into", "like", "near", "of", "off", "on", "onto", "since", "to", "toward", "through", "under", "until", "up", "upon", "with", "within", "without", "and", "but", "for", "nor", "or", "so", "yet".

#### Other field markers

* **`[entrytype]`**: The type of the entry, e.g., `Article`, `InProceedings`, etc
* **`[firstpage]`**: The number of the first page of the publication (Caution: this will return the lowest number found in the pages field, i.e. for `7,41,73--97` it will return `7`.)
* **`[pageprefix]`**: The non-digit prefix of pages (like `L` for `L7`) or "" if no non-digit prefix exists (like "" for `7,41,73--97`)
* **`[keywordN]`**: Keyword number `N` from the “keywords” field, assuming keywords are separated by commas or semicolons
* **`[keywordsN]`**: Up to `N` keywords from the "keywords" field
* **`[lastpage]`**: The number of the last page of the publication (See the remark on `firstpage`)
* **`[shortyear]`**: The last 2 digits of the publication year

#### Bibentry fields

In addition to the special field markers, most BibTeX, biblatex, and JabRef field names can be accessed by their **capitalized name** directly. If you regularly use a field name not on this list, you are encouraged to add it.

* **`[AUTHOR]`**: `Ada Lovelace and Charles Babbage` becomes `AdaLovelaceandCharlesBabbage`
* **`[DATE]`**: `2020-09-25`
* **`[DAY]`**: `02` becomes `2`
* **`[GROUPS]`**: The groups or subgroups in JabRef. Subgroup `AppleTrees` and group `Trees` becomes `AppleTreesTrees`
* **`[MONTH]`**: `03` becomes `March`
* **`[YEAR]`**: `2020`

**Note:** You can use any field present in the entry. However, multi-line fields like comment or abstract can produce unexpected results, and their use is discouraged. The [customize entry types section](customentrytypes.md) contains more information about fields and their customization.

### Modifiers

A field name (or one of the above pseudo-field names) may optionally be followed by one or more modifiers.

Generally, modifiers are applied in the order they are specified. In the following, we present a list of the most common modifiers alongside a short explanation:

* **`:abbr`**: Abbreviates the text produced by the field name or special field marker. Only the first character and subsequent characters following white space will be included. For example:
  * **`[journal:abbr]`** would from the journal name `Journal of Fish Biology` produce `JoFB`
  * **`[title:abbr]`** would from the title `An awesome paper on JabRef` produce `AAPoJ`
  * **`[camel:abbr]`** would from the title `An awesome paper on JabRef` produce `AAPOJ`
* **`:lower`**: Forces the text inserted by the field marker to be in lowercase.
  * **`[auth:lower]`** expands the last name of the first author in lowercase
* **`:upper`**: Forces the text inserted by the field marker to be in uppercase.
  * **`[auth:upper]`** expands the last name of the first author in uppercase
* **`:capitalize`**: Changes the first character of each word to uppercase, all other characters are converted to lowercase. For example, `an example title` will be converted to `An Example Title`
* **`:titlecase`**: Changes the first character of all normal words to uppercase, all function words (see above) are converted to lowercase. Example: `example title with An function Word` will be converted to `Example Title with an Function Word`
* **`:truncateN`**: Truncates the string after the N:th character and trims any trailing whitespaces. For example, **`[fulltitle:truncate3]`** will convert `A Title` to `A T`.
* **`:sentencecase`**: Changes the first character of the first word to uppercase, all remaining words are converted to lowercase. Example: `an Example Title` will be converted to `An example title`
* **`:regex("pattern", "replacement")`**: Applies regular expression pattern matching and replacement. For example,
  * **`[auth.etal:regex("\\.etal","EtAl"):regex("\\.","And")]`**, the first `regex()` replaces `.etal` with `EtAl`. The second `regex()` replaces the `.` between entries with two authors with \`And
* **`:(x)`**: The string between the parentheses will be inserted if the field marker preceding this modifier resolves to an empty value. The placeholder `x` may be any string. For instance, the marker **`[VOLUME:(unknown)]`** will return the entry's volume if set, and the string **unknown** if the entry's `VOLUME` field is not set

### Formatters

Formatters are primarily used as [save actions](../finding-sorting-and-cleaning-entries/saveactions.md), but their key value can be used as a modifier. All available actions can be found in the [list of save actions](../finding-sorting-and-cleaning-entries/saveactions.md#save-actions-as-modifiers).

## Regular Expressions (RegEx)

Regular expressions (or RegEx for short) match patterns within a string. In other words, they are a way to search for (or replace) text within a closed off sequence of characters. They can enhance citation key patterns by altering [modifiers](citationkeypatterns.md#modifiers) even further (e.g. via **`:regex("pattern", "replacement")`**). Another use case for them is to [replace existing key patterns](citationkeypatterns.md#replace-regular-expression).

Documentation and examples for RegEx syntax can be found [in the Java documentation](https://docs.oracle.com/javase/9/docs/api/java/util/regex/Pattern.html) and [in the Jabref documentation](../finding-sorting-and-cleaning-entries/search.md#advanced).

Keep in mind, Jabref uses a Java flavored regular expressions engine (there are multiple engines) and therefore treats `\` and some other special meta-characters as escape characters. If you want to include any backslash into your RegEx, you have to use `\\` instead of `\`.

## Replace (regular expression)

In addition to using regular expression replacement as [modifiers](citationkeypatterns.md#modifiers) of the field markers within [citation key patterns](citationkeypatterns.md#citation-key-patterns), regular expression matching and replacement can be done after the key patterns have been applied. In this case, the regular expression and replacement string are entered in the separate text fields above the [citation key patterns](citationkeypatterns.md#citation-key-patterns) section. If the replacement string is empty, then matches of the regular expression will be removed from the generated key.

![Citation key generator preferences - regex replacement](<../.gitbook/assets/preferences-citation-key-generator-regex-replacement (2) (2) (2) (2) (2) (2) (2) (3) (3) (4) (2) (1) (1).png>)

The regex `(?<=.{12}+).+` with an empty replacement string will cut the length of all citation keys to 12.

## Removing unwanted characters

The citation key generator preferences contain an option for removing unwanted characters. Add or remove characters to the right of "Remove the following characters:" to control which characters are included in the citation keys.

![Citation key generator preferences - unwanted characters](<../.gitbook/assets/preferences-citation-key-generator-remove-characters (1) (1) (1) (1) (2) (2) (3) (2) (1) (1) (1).png>)

Removing `-` from this list will allow it to be used while generating citation keys.

## Default citation key pattern

If you have not defined a key pattern for a certain entry type, the **Default pattern** will be used. You can change the default pattern - its setting is above the list of entry types in the **Citation key generator** section of the **Preferences** dialog.

The default key pattern is **`[auth][year]`**, and this could produce keys like e.g. `Yared1998` If the key is not unique in the current database, it is made unique by adding one of the letters a-z until a unique key is found. Thus, the labels might look like:

`Yared1998` `Yared1998a` `Yared1998b`

**Note:** In order for your changes to be retained, you must hit "enter" on your keyboard before clicking on the "Save" button.

### Changing the default citation key pattern

To change the citation key pattern to `[authors][camel]` for all libraries without individual settings, execute the following steps:

1.  Open the preferences

    <img src="../.gitbook/assets/optionspreferences (3) (2) (2) (2) (1) (3) (3) (4) (4) (5) (2) (1) (1).png" alt="Options Preferences" data-size="original">
2.  Navigate to "Citation key generator"

    <img src="../.gitbook/assets/preferences-citation-key-generator (1) (2) (1) (1).png" alt="Citation key generator preferences" data-size="original">
3.  Change the default pattern to `[authors][camel]`

    <img src="../.gitbook/assets/preferences-citation-key-generator-authors-camel (2) (2) (2) (3) (3) (4) (4) (5) (2) (1) (1).png" alt="Citation key generator preferences - authors camel" data-size="original">
4. Press "Enter" (forgetting to do this is a leading cause of puzzlement)
5. Click "Save"

### Changing the citation key pattern for one library

To change the citation key patterns for a single library to `[auth][shortyear]`,

1.  Make sure the library is open and selected in the JabRef main window

    <img src="../.gitbook/assets/main-screen-selected-library (2) (2) (2) (3) (3) (4) (2) (1) (1).png" alt="Main screen selected library" data-size="original">
2.  From the "Library" menu, open the "Citation key pattern" setting

    <img src="../.gitbook/assets/library-citation-key-patterns (1) (1) (1) (2) (1) (1).png" alt="Library Citation key patterns" data-size="original">
3.  Set the pattern for the desired entry types, and press the apply button.

    <img src="../.gitbook/assets/citation-key-patterns (2) (2) (2) (2) (3) (3) (4) (2) (1) (1).png" alt="Citation key patterns" data-size="original">
