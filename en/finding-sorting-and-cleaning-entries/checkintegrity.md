# Check integrity

JabRef can check the integrity of a library.

This feature is available through **Quality → Check integrity**.

![Check integrity dialog](<../.gitbook/assets/checkintegrity.png>)

## List of Fixes

### Mask Title

Ensures that uppercase letters in titles are properly enclosed in curly braces to preserve capitalization in BibTeX.

* `Title Example` ⇒ `{T}itle {E}xample`
* `Oliver Kopp and Carl Christian Snethlage and Christoph Schwentker` ⇒ `{O}liver {K}opp and {C}arl {C}hristian {S}nethlage and {C}hristoph {S}chwentker`

### Correct Date Format

Normalizes the date field to ISO format (yyyy-MM-dd) if it follows the dd-MM-yyyy pattern.

* `15-08-2023` ⇒ `2023-08-15`

### Format Page Number Range

Ensures the page range follows a standard format. If the value does not match the expected pattern, it defaults to `1-10`.

* `5-` ⇒ `1-10`
* `abc` ⇒ `1-10`

### Replace Non-ASCII Characters

Removes non-ASCII characters from the abstract field to ensure compatibility with various systems.

* `Résumé of naïve approach` ⇒ `Resume of naive approach`

### Handle Missing Citation Key

Sets a default citation key if it is missing.

* `CROSSREF` field set to `UnknownKey`
* `` field set to `DefaultKey`

### Capitalize First Letter

Ensures the first letter of a specified field is capitalized, while the rest of the text is in lowercase.

* `example text` ⇒ `Example text`

### Ensure Valid Edition

Validates the edition field to allow only numeric values or predefined words (First, Second, Third). Defaults to `First` if invalid.

* `Fourth` ⇒ `First`
* `3` ⇒ `3`

### Remove Non-Integer Edition

Ensures that the edition field contains only numeric values. Removes any invalid values.

* `First` ⇒ ``
* `2nd` ⇒ ``
