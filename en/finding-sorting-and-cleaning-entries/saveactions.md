---
description: Tidy up automatically your database each time you save it.
---

# Save actions

Field formats can be tidied up when saving the database. That ensures your entries to have consistent formatting. In **Library → Library properties**, check **Enable save actions**. You can now select the actions to be carried out using the 2 drop-down menus located under the table. Each action is defined by:

* an entry field \(upon which the action will be applied\).
* the type of action to be carried out \(such as _HTML to LaTeX_, which converts HTML code to LaTeX code, as described in the window\).

A click on the "circular arrow" icon enables a set of recommended formatting actions \(the set of actions will depend on your database type: BibTeX or biblatex\).​

## List of actions

### Add enclosing braces

Add braces encapsulating the complete field content. For instance

```text
title = {Test with UPPERCASE word},
```

gets

```text
title = {{Test with UPPERCASE word}},
```

However, this procedure is not recommended. It is better to use the "Protect Terms" functionality. See also [https://tex.stackexchange.com/q/10772/9075](https://tex.stackexchange.com/q/10772/9075).

### Clear

Clears the field completely.

### Escape underscores

Escape underscores

### HTML to LaTeX

Converts HTML code to LaTeX code.

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

### Normalize en dashes

Normalizes the en dashes.

* Replace “`-`” with “`--`”.

### Normalize month

Normalize month to Bib\(la\)TeX standard abbreviation.

### Normalize names of persons

Normalizes lists of persons to the Bib\(la\)TeX standard. This separates authors by "and"s with first names after last name separated by a comma; first names are not abbreviated.

* "John Smith" ⇒ "Smith, John"
* "John Smith and Black Brown, Peter" ⇒ "Smith, John and Black Brown, Peter"
* "John von Neumann and John Smith and Black Brown, Peter" ⇒ "von Neumann, John and Smith, John and Black Brown, Peter".

### Normalize page numbers

Normalize pages to Bib\(la\)TeX standard. Format page numbers, separated either by commas or double-hyphens. Converts the range number format to page\_number--page\_number. Removes unwanted literals except letters, numbers and -+ signs. Keeps the existing String if the resulting field does not match the expected Regex.

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

### Remove hyphenated line breaks

Removes all hyphenated line breaks in the field content.

### Remove line breaks

Removes all line breaks in the field content.

### Shorten DOI

Shortens DOI to more human readable form using [http://shortdoi.org](http://shortdoi.org) .

### Unicode to LaTeX

Converts Unicode characters to LaTeX encoding.

### Units to LaTeX

Converts units to LaTeX formatting. This includes:

* Add braces around the unit to keep case.
* Replace hyphen with non-break hyphen
* Replace space with a hard space

### Capitalize

Changes the first letter of all words to capital case and the remaining letters to lower case.

### Lower case

Changes all letters to lower case.

### Protect terms

Adds `{}` brackets around acronyms, month names and countries to preserve their case.

### Sentence case

Capitalize the first word, changes other words to lower case.

### Title case

Capitalize all words, but converts articles, prepositions, and conjunctions to lower case.

### Upper case

Changes all letters to upper case.

### Minify list of person names

Shortens lists of persons if there are more than 2 persons to \"et al.\".

### Remove digits

Removes all digits from the field content. For example, `Stefan Kolb 0001` becomes `Stefan Kolb`.

### Remove redundant spaces

Replaces consecutive spaces with a single space in the field content. For example, `Stefan␣␣Kolb` becomes `Stefan␣Kolb`.

### Replace tabs by space

Replace tabs by space in the field content. For example, `Stefan\tKolb` becomes `Stefan Kolb`.

## Save actions as modifiers

Most of the [field formatters listed above](#list-of-actions) can also be used as modifiers in [citation key patterns](../setup/citationkeypatterns.md) using their key.
The table below shows their key and if they can be used as modifiers.

Save action | Key | Modifier
--- | --- | ---
[Add enclosing braces](#add-enclosing-braces) | `add_braces` | Yes
[Clear](#clear) | `clear` | Yes
[Escape underscores](#escape-underscores) | `escapeUnderscores` | Yes
[HTML to LaTeX](#html-to-latex) | `html_to_latex` | Yes
[HTML to Unicode](#html-to-unicode) | `html_to_unicode` | Yes
[LaTeX cleanup](#latex-cleanup) | `latex_cleanup` | Yes
[Normalize date](#normalize-date) | `normalize_date` | Yes
[Normalize en dashes](#normalize-en-dashes) | `normalize_en_dashes` | No
[Normalize month](#normalize-month) | `normalize_month` | Yes
[Normalize names of persons](#normalize-names-of-persons) | `normalize_names` | Yes
[Normalize page numbers](#normalize-page-numbers) | `normalize_page_numbers` | Yes
[Ordinals to LaTeX superscript](#ordinals-to-latex-superscript) | `ordinals_to_superscript` | Yes
[Remove enclosing braces](#remove-enclosing-braces) | `remove_braces` | Yes
[Remove hyphenated line breaks](#remove-hyphenated-line-breaks) | `remove_hyphenated_newlines` | No
[Remove line breaks](#remove-line-breaks) | `remove_newlines` | No
[Shorten DOI](#shorten-doi) | `short_doi` | Yes
[Unicode to LaTeX](#unicode-to-latex) | `unicode_to_latex` | Yes
[Units to LaTeX](#units-to-latex) | `units_to_latex` | Yes
[Capitalize](#capitalize) | `capitalize` | Yes
[Lower case](#lower-case) | `lower_case` | Yes
[Protect terms](#protect-terms) | `protect_terms` | No
[Sentence case](#sentence-case) | `sentence_case` | Yes
[Title case](#title-case) | `title_case` | Yes
[Upper case](#upper-case) | `upper_case` | Yes
[Minify list of person names](#minify-list-of-person-names) | `minify_name_list` | Yes
[Remove digits](#remove-digits) | `remove_digits` | No
[Remove redundant spaces](#remove-redundant-spaces) | `remove_redundant_spaces` | No
[Replace tabs by space](#replace-tabs-by-space) | `remove_tabs` | No
