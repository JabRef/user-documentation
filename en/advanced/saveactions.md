# Save actions

Field formatting can be tidied up when saving the database. That ensures your entries to have consistent formatting. If you check **Enable save actions** in the [Database Properties](../setup/databaseproperties.md), the list of actions can be configured.

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

Normalizes the date to ISO date format. Format date string to yyyy-mm-dd or yyyy-mm. Keeps the existing String if it does not match one of the following formats:

* "M/y" \(covers 9/15, 9/2015, and 09/2015\)
* "MMMM \(dd\), yyyy" \(covers September 1, 2015 and September, 2015\)
* "yyyy-MM-dd" \(covers 2009-1-15\)
* "d.M.uuuu" \(covers 15.1.2015\)

## Normalize en dashes

Normalizes the en dashes.

* Replace “`-`” with “`--`”.

## Normalize month

Normalize month to BibTeX standard abbreviation.

## Normalize names of persons

Normalizes lists of persons to the BibTeX standard. This separates authors by "and"s with first names after last name separated by a commma; first names are not abbreviated.

* "John Smith" ⇒ "Smith, John"
* "John Smith and Black Brown, Peter" ⇒ "Smith, John and Black Brown, Peter"
* "John von Neumann and John Smith and Black Brown, Peter" ⇒ "von Neumann, John and Smith, John and Black Brown, Peter".

## Normalize page numbers

Normalize pages to BibTeX standard. Format page numbers, separated either by commas or double-hyphens. Converts the range number format to page\_number--page\_number. Removes unwanted literals except letters, numbers and -+ signs. Keeps the existing String if the resulting field does not match the expected Regex.

```text
1-2 ⇒ 1--2
1,2,3 ⇒ 1,2,3
{1}-{2} ⇒ 1--2
43+ ⇒ 43+
Invalid ⇒ Invalid
```

## Ordinals to LaTeX superscript

Converts ordinals to LaTeX superscripts, e.g. 1st, 2nd or 3rd. Will replace ordinal numbers even if they are semantically wrong, e.g. 21rd

* 1st Conf. Cloud Computing -&gt; 1\textsuperscript{st} Conf. Cloud Computing

## Remove enclosing braces

Removes braces encapsulating the complete field content.

## Remove hyphenated line breaks

Removes all hyphenated line breaks in the field content.

## Remove line breaks

Removes all line breaks in the field content.

## Shorten DOI

Shortens DOI to more human readable form using [http://shortdoi.org](http://shortdoi.org) .

## Unicode to LaTeX

Converts Unicode characters to LaTeX encoding.

## Units to LaTeX

Converts units to LaTeX formatting. This includes:

* Add braces around the unit to keep case.
* Replace hyphen with non-break hyphen
* Replace space with a hard space

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

## Remove digits

Removes all digits from the field content.
For example, `Stefan Kolb 0001` becomes `Stefan Kolb`.

## Remove redundant spaces

Replaces consecutive spaces with a single space in the field content.
For example, `Stefan␣␣Kolb` becomes `Stefan␣Kolb`.

## Replace tabs by space

Replace tabs by space in the field content.
For example, `Stefan\tKolb` becomes `Stefan Kolb`.
