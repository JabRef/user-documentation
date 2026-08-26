# Custom themes

## General

The look of JabRef is defined by [CSS](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/CSS_basics) files. In `Preferences > General > Appearance` you choose three things:

* **Theme**: the base look, currently _JabRef theme_ ([`jabref-theme.css`](https://github.com/JabRef/jabref/blob/main/jabgui/src/main/resources/org/jabref/gui/theme/jabref-theme.css)) or _Primer theme_ ([`primer-theme.css`](https://github.com/JabRef/jabref/blob/main/jabgui/src/main/resources/org/jabref/gui/theme/primer-theme.css), based on [AtlantaFX](https://mkpaz.github.io/atlantafx/)). Every theme comes with a light and a dark variant.
* **Color scheme**: _Follow system_, _Light_, or _Dark_.
* **Custom theme**: an additional CSS file of your own. It is applied _on top_ of the selected theme and color scheme, so it only needs to contain what you want to change.

Changes to the custom CSS file are picked up while JabRef is running, so you can edit the file and see the result immediately.

You can find a collection of user contributed themes at [https://themes.jabref.org](https://themes.jabref.org/).

## Writing a custom theme

All colors of a theme are defined as `-color-*` variables (for example `-color-accent`, `-color-bg-primary`, `-color-fg-default`, `-color-selection`). The full list is in [`jabref-theme.css`](https://github.com/JabRef/jabref/blob/main/jabgui/src/main/resources/org/jabref/gui/theme/jabref-theme.css); the rest of JabRef's styling only uses these variables, so overriding them is enough to re-color the whole UI.

Override a variable for both color schemes:

```css
.root {
    -color-accent: #8F0D11;
}
```

Override it for one color scheme only. The media query follows the color scheme selected in JabRef (or the operating system, with _Follow system_):

```css
@media (prefers-color-scheme: dark) {
    .root {
        -color-accent: #ff79c6;
    }
}
```

{% hint style="info" %}
Custom themes written for JabRef 6.x and earlier used `-jr-*` variables (such as `-jr-theme` or `-jr-accent`). These no longer exist and are ignored; replace them by the corresponding `-color-*` variables.
{% endhint %}

## Selection of Useful CSS selectors

| UI element                       | CSS selector       |
| -------------------------------- | ------------------ |
| preview box                      | `#previewBody`     |
| `{} biblatex source` tab         | `.code-area`       |
| text in `{} biblatex source` tab | `.code-area .text` |

## Known bugs

* [#8523](https://github.com/JabRef/jabref/issues/8523): On Windows 10, it is not possible to use fonts that were installed user-wide in the CSS, only system-wide fonts are working. A workaround to use fonts that are not installed system-wide is to include the font file via [`@font-face`](https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face).
