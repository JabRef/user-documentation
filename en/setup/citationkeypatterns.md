# Customize the citation key generator

The pattern used in the auto generation of citation labels can be set for each of the standard entry types in **Options → Preferences**, tab **Citation key generator**.

## Key patterns

The key pattern can contain any text you wish, in addition to field markers that indicate that a specific field of the entry should be inserted at that position of the key. A field marker generally consists of the field name enclosed in square braces, e.g. **`[volume]`**. If the field is undefined in an entry at the time of key generation, no text will be inserted by the field marker. **Note:** In order for your changes to be retained, you must hit "enter" on your keyboard before clicking on the "Save" button.

### Default key pattern

If you have not defined a key pattern for a certain entry type, the **Default pattern** will be used. You can change the default pattern - its setting is above the list of entry types in the **Citation key generator** section of the **Preferences** dialog.

The default key pattern is **`[auth][year]`**, and this could produce keys like e.g. `Yared1998` If the key is not unique in the current database, it is made unique by adding one of the letters a-z until a unique key is found. Thus, the labels might look like:

`Yared1998` `Yared1998a` `Yared1998b`

### Special field markers

Several special field markers are offered, which extract only a specific part of a field. Feel free to suggest new special field markers.

#### Author-related field markers

* **`[auth]`**: The last name of the first author
* **`[authors]`**: The last name of all authors
* **`[authorLast]`**: The last name of the last author
* **`[authorsN]`**: The last name of up to `N` authors. If there are more authors, `EtAl` is appended
* **`[authorsAlpha]`**: Corresponds to the BibTeX style “alpha”. One author: First three letters of the last name. Two to four authors: First letters of last names concatenated. More than four authors: First letters of last names of first three authors concatenated. `+` at the end
* **`[authIniN]`**: The beginning of each author's last name, using at most `N` characters
* **`[authorIni]`**: The first 5 characters of the first author's last name, and the last name initials of the remaining authors
* **`[authN]`**: The first `N` characters of the first author's last name
* **`[authN_M]`**: The first `N` characters of the Mth author's last name
* **`[auth.auth.ea]`**: The last name of the first two authors, and `.ea` if there are more than two
* **`[auth.etal]`**: The last name of the first author, and the last name of the second author if there are two authors or `.etal` if there are more than two
* **`[authEtAl]`**: The last name of the first author, and the last name of the second author if there are two authors or `EtAl` if there are more than two. This is similar to `auth.etal`. The difference is that the authors are not separated by `.` and in case of more than 2 authors `EtAl` instead of `.etal` is appended
* **`[authshort]`**: The last name if one author is given; the first character of up to three authors' last names if more than one author is given. A plus character is added, if there are more than three authors
* **`[authForeIni]`**: The forename initial of the first author
* **`[authorLastForeIni]`**: The forename initial of the last author

**Note:** If there is no author \(as in the case of an edited book\), then all of the above **`[auth...]`** markers will use the editor\(s\) \(if any\) as a fallback. Thus, the editor\(s\) of a book with no author will be treated as the author\(s\) for label-generation purposes. If you do not want this behavior, i.e. you require a marker which expands to nothing if there is no author, use **`pureauth`** instead of **`auth`** in the above codes. For example, **`[pureauth]`**, or **`[pureauthors3]`**.

#### Editor-related field markers

* **`[edtr]`**: The last name of the first editor
* **`[edtrIniN]`**: The beginning of each editor's last name, using at most N characters
* **`[editors]`**: The last name of all editors
* **`[editorLast]`**: The last name of the last editor
* **`[editorIni]`**: The first 5 characters of the first editor's last name, and the last name initials of the remaining editors
* **`[edtrN]`**: The first `N` characters of the first editor's last name
* **`[edtrN_M]`**: The first `N` characters of the `M`th editor's last name
* **`[edtr.edtr.ea]`**: The last name of the first two editors, and `.ea` if there are more than two
* **`[edtrshort]`**: The last name if one editor is given; the first character of up to three editors' last names if more than one editor is given. A plus character is added, if there are more than three editors
* **`[edtrForeIni]`**: The forename initial of the first editor
* **`[editorLastForeIni]`**: The forename initial of the last editor

#### Title-related field markers

* **`[shorttitle]`**: The first 3 words of the title, ignoring any function words \(see below\). For example, `An awesome paper on JabRef` becomes `AwesomePaperJabref`
* **`[veryshorttitle]`**: The first word of the title, ignoring any function words \(see below\). For example, `An awesome paper on JabRef` becomes `Awesome`
* **`[camel]`**: Capitalize and concatenate all the words of the title. For example, `An awesome paper on JabRef` becomes `AnAwesomePaperOnJabref`
* **`[title]`**: Capitalize all the significant words of the title, and concatenate them. For example, `An awesome paper on JabRef` becomes `AnAwesomePaperonJabref`

JabRef considers the following words to be [function words](https://en.wikipedia.org/wiki/Function_word): "a", "an", "the", "above", "about", "across", "against", "along", "among", "around", "at", "before", "behind", "below", "beneath", "beside", "between", "beyond", "by", "down", "during", "except", "for", "from", "in", "inside", "into", "like", "near", "of", "off", "on", "onto", "since", "to", "toward", "through", "under", "until", "up", "upon", "with", "within", "without", "and", "but", "for", "nor", "or", "so", "yet".

#### Other field markers

* **`[firstpage]`**: The number of the first page of the publication \(Caution: this will return the lowest number found in the pages field, i.e. for `7,41,73--97` it will return `7`.\)
* **`[pageprefix]`**: The non-digit prefix of pages \(like `L` for `L7`\) or "" if no non-digit prefix exists \(like "" for `7,41,73--97`\)
* **`[keywordN]`**: Keyword number `N` from the “keywords” field, assuming keywords are separated by commas or semicolons
* **`[lastpage]`**: The number of the last page of the publication \(See the remark on `firstpage`\)
* **`[shortyear]`**: The last 2 digits of the publication year

#### BibTeX fields

In addition to the special field markers, most BibTeX, biblatex, and JabRef field names can be used directly. If you regularly use a field name not on this list, you are encouraged to add it.

* **`[author]`**: `Ada Lovelace and Charles Babbage` becomes `AdaLovelaceandCharlesBabbage`
* **`[date]`**: `2020-09-25`
* **`[day]`**: `02` becomes `2`
* **`[groups]`**: The groups or subgroups in JabRef. Subgroup `AppleTrees` and group `Trees` becomes `AppleTreesTrees`
* **`[month]`**: `03` becomes `March`
* **`[year]`**: `2020`

**Note:** More default fields can be found in the source code of [InternalField](https://github.com/JabRef/jabref/blob/694a8760377b5517958bc3974bc63b5d8a14a35d/src/main/java/org/jabref/model/entry/field/InternalField.java), [StandardField](https://github.com/JabRef/jabref/blob/694a8760377b5517958bc3974bc63b5d8a14a35d/src/main/java/org/jabref/model/entry/field/StandardField.java), [SpecialField](https://github.com/JabRef/jabref/blob/694a8760377b5517958bc3974bc63b5d8a14a35d/src/main/java/org/jabref/model/entry/field/SpecialField.java), and [IEEEField](https://github.com/JabRef/jabref/blob/694a8760377b5517958bc3974bc63b5d8a14a35d/src/main/java/org/jabref/model/entry/field/IEEEField.java), but their use can lead to unexpected results and is, in general, discouraged. E.g., **`[abstract]`** can produce inconveniently long keys.

## Modifiers

A field name \(or one of the above pseudo-field names\) may optionally be followed by one or more modifiers.

The modifiers can be divided into the categories _converters_ \(such as for converting from HTML to LaTeX\), _case changers_ \(such as for conversion to lower case\), and _others_. [Click here](https://github.com/JabRef/jabref/blob/7895ae07443612c63fee950ddee88650fecb4d91/src/main/java/org/jabref/logic/formatter/Formatters.java#L35-L64) for a comprehensive list of available modifiers.

Generally, modifiers are applied in the order they are specified. In the following, we present a list of the most common modifiers alongside a short explanation:

* **`:abbr`**: Abbreviates the text produced by the field name or special field marker. Only the first character and subsequent characters following white space will be included. For example:
  * **`[journal:abbr]`** would from the journal name `Journal of Fish Biology` produce `JoFB`
  * **`[title:abbr]`** would from the title `An awesome paper on JabRef` produce `AAPoJ`
  * **`[camel:abbr]`** would from the title `An awesome paper on JabRef` produce `AAPOJ`
* **`:lower`**: Forces the text inserted by the field marker to be in lowercase. For example, **`[auth:lower]`** expands the last name of the first author in lowercase
* **`:upper`**: Forces the text inserted by the field marker to be in uppercase. For example, **`[auth:upper]`** expands the last name of the first author in uppercase
* **`:capitalize`**: Changes the first character of each word to uppercase, all other characters are converted to lowercase. For example, `an example title` will be converted to `An Example Title`
* **`:titlecase`**: Changes the first character of all normal words to uppercase, all function words \(see above\) are converted to lowercase. Example: `example title with An function Word` will be converted to `Example Title with an Function Word`
* **`:truncateN`**: Truncates the string after the N:th character and trims any trailing whitespaces. For example, **\[fulltitle:truncate3\]** will be convert `A Title` to `A T`.
* **`:sentencecase`**: Changes the first character of the first word to uppercase, all remaining words are converted to lowercase. Example: `an Example Title` will be converted to `An example title`
* **`:regex("pattern", "replacement")`**: Applies regular expression pattern matching and replacement. For example,
  * **`[auth.etal:regex("\\.etal","EtAl"):regex("\\.","And")]`**, the first `regex()` replaces `.etal` with `EtAl`. The second `regex()` replaces the `.` between entries with two authors with `And
* **`:(x)`**: The string between the parentheses will be inserted if the field marker preceding this modifier resolves to an empty value. The placeholder `x` may be any string. For instance, the marker **`[volume:(unknown)]`** will return the entry's volume if set, and the string **unknown** if the entry's `volume` field is not set

## Replace \(regular expression\)

In addition to using regular expression replacement as [modifiers](citationkeypatterns.md#modifiers) of the field markers within [key patterns](citationkeypatterns.md#key-patterns) regular expression matching and replacement can be done after the key patterns have been applied. In this case, the regular expression and replacement string are entered in the separate text fields above the [key patterns](citationkeypatterns.md#key-patterns) section. Contrary to the behavior of `:regexp()`, if the replacement string is empty, then matches of the regular expression will simply be removed from the generated key. For instance, `\p{Punct}` or `[:/%]` can be replaced by nothing to remove unwanted characters from the key. This may be useful when naming PDFs according to the citation keys. Further documentation on regular expressions in Java can be found [here.](https://docs.oracle.com/javase/9/docs/api/java/util/regex/Pattern.html)

## How to configure

To change the pattern to `[authors]:[camel]`, execute the following steps:

1. Open the preferences

   ![Options Preferences](../.gitbook/assets/optionspreferences%20%282%29.png)

2. Navigate to "General"

   ![General preferences](../.gitbook/assets/preferences-general%20%282%29.png)

3. Untick "Enforce legal characters in citation keys". Note that this is only necessary if you wish to have colons be present in the generated key.

   ![General preferences - unticked](../.gitbook/assets/preferences-general-unticked%20%282%29.png)

4. Navigate to "Citation key generator"

   ![BibTeX key generator preferences](../.gitbook/assets/preferences-bibtex-key-generator%20%282%29.png)

5. Change the default pattern to `[authors]:[camel]`.

   ![BibTeX key generator preferences - authors camel](../.gitbook/assets/preferences-bibtex-key-generator-authors-camel%20%282%29.png)

6. Press "Enter" \(forgetting to do this is a leading cause of puzzlement\), then Press "OK".
7. Click "Save"

