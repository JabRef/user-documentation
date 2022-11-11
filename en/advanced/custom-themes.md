# Custom themes

## General

Since `JabRef 5.2` it is possible to use custom themes. In `Preferences > Appearance > Visual theme` the themes in general can be changed. Themes are just [CSS](https://developer.mozilla.org/en-US/docs/Learn/Getting\_started\_with\_the\_web/CSS\_basics) files defining the look of the UI.

* **Light Theme**: The default theme is the light theme ([`Base.css`](https://github.com/JabRef/jabref/blob/main/src/main/java/org/jabref/gui/Base.css)).
* **Dark Theme**: There is an alternative dark theme ([`Dark.css`](https://github.com/JabRef/jabref/blob/main/src/main/java/org/jabref/gui/Dark.css)) which is based on `Base.css` and just overwrites the colors.
* **Custom Theme**: In `Preferences > Appearance > Visual theme > Custom theme` there can be set a custom theme by simply selecting a custom CSS (based on `Base.css` or `Dark.css`), for instance:

{% file src="../.gitbook/assets/dark-custom (1) (1) (1) (2) (1).css" %}

## Selection of Useful CSS selectors

| UI element                       | CSS selector       |
| -------------------------------- | ------------------ |
| preview box                      | `#previewBody`     |
| `{} biblatex source` tab         | `.code-area`       |
| text in `{} biblatex source` tab | `.code-area .text` |

## Examples

**Light Theme** ![Light Theme](<../.gitbook/assets/theme-light (1).png>)

**Dark Theme** ![Dark Theme](<../.gitbook/assets/theme-dark (1).png>)

**Custom Theme** ![Custom Theme](<../.gitbook/assets/theme-custom (1).png>) (based on the Dark Theme)

## Known bugs

* [#8523](https://github.com/JabRef/jabref/issues/8523): On Windows 10, it is not possible to use fonts that were installed user-wide in the CSS, only system-wide fonts are working. A workaround to use fonts that are not installed system-wide is to include the font file via [`@font-face`](https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face).
