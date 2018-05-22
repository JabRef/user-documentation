---
title: Save actions
helpCategories: ["Finding, sorting and cleaning entries"]
stub: true
---

# Save actions

Field formatting can be tidied up when saving the database.
That ensures your entries to have consistent formatting.
If you check **Enable save actions** in the [Database Properties](DatabaseProperties), the list of actions can be configured.

Each action is defined by:
- an entry field (upon which the action will be applied).
- the type of action to be carried out (such as *HTML to LaTeX*, which converts HTML code to LaTeX code, as described in the window).

Dependend on the database mode, "Recommended for BibTeX" or "Recommended for BibLaTeX".
When pressing this button, the recommended cleanups for the respective mode is called.

<!--

The list of formatters and explanations can be quicly generated with following command

/c/git-repositories/jabref/jabref/src/main/java/org/jabref/logic/formatter (master)
$ find . -name "*.java" | xargs grep "Localization.lang" | sed "s/.*Localization.lang(\"\(.*\)\");/## \1/"

...and a mit manual post-processing
-->

## Add enclosing braces
Add braces encapsulating the complete field content.
For instance

    title = {Test with UPPERCASE word},
    
gets

    title = {{Test with UPPERCASE word}},

However, this procedure is not recommended.
It is better to use the "Protect Terms" functionaly.
See also https://tex.stackexchange.com/q/10772/9075.


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

<!--
## regular expression
Add a regular expression for the key pattern.
-->

## Remove enclosing braces
Removes braces encapsulating the complete field content.

## Remove hyphenated line breaks
Removes all hyphenated line breaks in the field content.

## Remove line breaks
Removes all line breaks in the field content.

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
