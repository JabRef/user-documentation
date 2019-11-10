---
title: Save actions
helpCategories:
  - 'Finding, sorting and cleaning entries'
stub: true
---

# Save actions

Field formatting can be tidied up when saving the database. That ensures your entries to have consistent formatting. If you check **Enable save actions** in the [Database Properties](https://github.com/JabRef/help.jabref.org/tree/1f58696d9081b60bf60823090c7594d67d7f5295/en/DatabaseProperties/README.md), the list of actions can be configured.

Each action is defined by:

* an entry field \(upon which the action will be applied\).
* the type of action to be carried out \(such as _HTML to LaTeX_, which converts HTML code to LaTeX code, as described in the window\).

Dependent on the database mode, "Recommended for BibTeX" or "Recommended for BibLaTeX". When pressing this button, the recommended cleanups for the respective mode is called.

## Add enclosing braces

Add braces encapsulating the complete field content. For instance

```text
title = {Test with UPPERCASE word},
```

gets

```text
title = {{Test with UPPERCASE word}},
```

However, this procedure is not recommended. It is better to use the "Protect Terms" functionality. See also [https://tex.stackexchange.com/q/10772/9075](https://tex.stackexchange.com/q/10772/9075).

## Clear

Clears the field completely.

## Escape underscores

Escape underscores

## HTML to LaTeX

Converts HTML code to LaTeX code.

## HTML to Unicode

Converts HTML code to Unicode.

## LaTeX cleanup

Cleans up LaTeX code.

## Normalize date

Normalizes the date to ISO date format.

## Normalize en dashes

Normalizes the en dashes.

## Normalize month

Normalize month to BibTeX standard abbreviation.

## Normalize names of persons

Normalizes lists of persons to the BibTeX standard.

## Normalize page numbers

Normalize pages to BibTeX standard.

## Ordinals to LaTeX superscript

Converts ordinals to LaTeX superscripts.

## Remove enclosing braces

Removes braces encapsulating the complete field content.

## Remove hyphenated line breaks

Removes all hyphenated line breaks in the field content.

## Remove line breaks

Removes all line breaks in the field content.

## Shorten DOI

Shortens DOI to more human readable form.

## Unicode to LaTeX

Converts Unicode characters to LaTeX encoding.

## Units to LaTeX

Converts units to LaTeX formatting.

## Capitalize

Changes the first letter of all words to capital case and the remaining letters to lower case.

## Lower case

Changes all letters to lower case.

## Protect terms

Adds `{}` brackets around acronyms, month names and countries to preserve their case.

## Sentence case

Capitalize the first word, changes other words to lower case.

## Title case

Capitalize all words, but converts articles, prepositions, and conjunctions to lower case.

## Upper case

Changes all letters to upper case.

## Minify list of person names

Shortens lists of persons if there are more than 2 persons to \"et al.\".

