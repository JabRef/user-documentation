---
description: Tidy up automatically your database each time you save it.
---

# Save actions

Field formats can be tidied up when saving the database. That ensures your entries to have consistent formatting. In **Library → Library properties**, check **Enable save actions**. You can now select the actions to be carried out using the 2 drop-down menus located under the table. Each action is defined by:

* an entry field \(upon which the action will be applied\).
* the type of action to be carried out \(such as _HTML to LaTeX_, which converts HTML code to LaTeX code, as described in the window\).

A click on the "circular arrow" icon enables a set of recommended formatting actions \(the set of actions will depend on your database type: BibTeX or BibLaTeX\).​

## List of actions

### Clear

Clears the field completely.

### Escape underscores

Escape underscores

### Escape ampersands

Escapes ampersands.

* `Text & with &ampersands` ⇒ `Text \& with \&ampersands`

### HTML to LaTeX

Converts HTML code to LaTeX code.

### Cleanup URL link

Cleanup URL links.

* `http%3A%2F%2Fwikipedia.org` ⇒ `http://wikipedia.org`

### HTML to Unicode

Converts HTML code to Unicode.

### LaTeX cleanup

Cleans up LaTeX code.

### Normalize date

Normalizes the date to ISO date format. Format date string to yyyy-mm-dd or yyyy-mm. Keeps the existing String if it does not match one of the following formats:

* "M/y" \(covers 9/15, 9/2015, and 09/2015\)
* "MMMM \(dd\), yyyy" \(covers September 1, 2015 and September, 2015\)
* "yyyy-MM-dd" \(covers 2009-1-15\)
* "d.M.uuuu" \(covers 15.1.2015\)

### Normalize month

Normalize month to Bib\(la\)TeX standard abbreviation.

### Normalize names of persons

Normalizes lists of persons to the Bib\(la\)TeX standard. This separates authors by "and"s with first names after last name separated by a comma; first names are not abbreviated.

* "John Smith" ⇒ "Smith, John"
* "John Smith and Black Brown, Peter" ⇒ "Smith, John and Black Brown, Peter"
* "John von Neumann and John Smith and Black Brown, Peter" ⇒ "von Neumann, John and Smith, John and Black Brown, Peter".

### Normalize page numbers

Normalize pages to Bib\(la\)TeX standard. Format page numbers, separated either by commas or double-hyphens. Converts the range number format to page\_number--page\_number. Removes unwanted literals except for letters, numbers, and -+ signs. Keeps the existing String if the resulting field does not match the expected Regex.

```text
1-2 ⇒ 1--2
1,2,3 ⇒ 1,2,3
{1}-{2} ⇒ 1--2
43+ ⇒ 43+
Invalid ⇒ Invalid
```

### Ordinals to LaTeX superscript

Converts ordinals to LaTeX superscripts, e.g. 1st, 2nd or 3rd. Will replace ordinal numbers even if they are semantically wrong, e.g. 21rd

* 1st Conf. Cloud Computing -&gt; 1\textsuperscript{st} Conf. Cloud Computing

### Remove enclosing braces

Removes braces encapsulating the complete field content.

### Shorten DOI

Shortens DOI to more human-readable form using [http://shortdoi.org](http://shortdoi.org).

### Unicode to LaTeX

Converts Unicode characters to LaTeX encoding.

### LaTeX to Unicode

Converts LaTeX to Unicode characters if possible.

* `$\acute{\omega}$` ⇒ `ώ`

### Units to LaTeX

Converts units to LaTeX formatting. This includes:

* Add braces around the unit to keep case.
* Replace hyphen with non-break hyphen
* Replace space with a hard space

### Capitalize

Changes the first letter of all words to capital case and the remaining letters to lower case.

### Lower case

Changes all letters to lower case.

### Sentence case

Capitalize the first word, changes other words to lower case.

### Title case

Capitalize all words, but converts articles, prepositions, and conjunctions to lower case.

### Upper case

Changes all letters to upper case.

### Minify list of person names

Shortens lists of persons if there are more than 2 persons to \"et al.\".

## Save actions as modifiers

The [field formatters listed above](saveactions.md#list-of-actions) can also be used as modifiers in [citation key patterns](../setup/citationkeypatterns.md) using their keys listed below.

| Save action | Key |
| :--- | :--- |
| [Clear](saveactions.md#clear) | `clear` |
| [Escape underscores](saveactions.md#escape-underscores) | `escapeUnderscores` |
| [Escape ampersands](saveactions.md#escape-ampersands) | `escapeAmpersands` |
| [HTML to LaTeX](saveactions.md#html-to-latex) | `html_to_latex` |
| [Cleanup URL link](saveactions.md#cleanup-url-link) | `cleanup_url` |
| [HTML to Unicode](saveactions.md#html-to-unicode) | `html_to_unicode` |
| [LaTeX cleanup](saveactions.md#latex-cleanup) | `latex_cleanup` |
| [Normalize date](saveactions.md#normalize-date) | `normalize_date` |
| [Normalize month](saveactions.md#normalize-month) | `normalize_month` |
| [Normalize names of persons](saveactions.md#normalize-names-of-persons) | `normalize_names` |
| [Normalize page numbers](saveactions.md#normalize-page-numbers) | `normalize_page_numbers` |
| [Ordinals to LaTeX superscript](saveactions.md#ordinals-to-latex-superscript) | `ordinals_to_superscript` |
| [Remove enclosing braces](saveactions.md#remove-enclosing-braces) | `remove_braces` |
| [Shorten DOI](saveactions.md#shorten-doi) | `short_doi` |
| [Unicode to LaTeX](saveactions.md#unicode-to-latex) | `unicode_to_latex` |
| [Latex to Unicode](saveactions.md#latex-to-unicode) | `latex_to_unicode` |
| [Units to LaTeX](saveactions.md#units-to-latex) | `units_to_latex` |
| [Capitalize](saveactions.md#capitalize) | `capitalize` |
| [Lower case](saveactions.md#lower-case) | `lower_case` |
| [Sentence case](saveactions.md#sentence-case) | `sentence_case` |
| [Title case](saveactions.md#title-case) | `title_case` |
| [Upper case](saveactions.md#upper-case) | `upper_case` |
| [Minify list of person names](saveactions.md#minify-list-of-person-names) | `minify_name_list` |

