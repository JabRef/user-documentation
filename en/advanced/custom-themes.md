# Custom themes

## General

[CSS](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/CSS_basics) files define the look of JabRef. In `Preferences > General > Appearance` you choose three things:

* **Color scheme**: _Follow system_, _Light_, or _Dark_.
* **Theme**: the base look. JabRef brings its own _JabRef theme_ ([`jabref-theme.css`](https://github.com/JabRef/jabref/blob/main/jabgui/src/main/resources/org/jabref/gui/theme/jabref-theme.css)) and bundles the themes from [themes.jabref.org](https://themes.jabref.org/) that cover both color schemes: _Primer_ (based on [AtlantaFX](https://mkpaz.github.io/atlantafx/)), _Everforest_, _Nord_, _Papers_, _Chocolate Honey_, and _Dino Girl's themes_. Every theme comes with a light and a dark variant; Dino Girl's themes pair a dark and a light hue in one entry and show the name of the hue matching your color scheme. A preview image below the list shows the selected theme in the selected color scheme (both, when following the system).
* **Custom theme**: a CSS file of your own. JabRef applies it _on top_ of the selected theme and color scheme, so it only needs to contain what you want to change.

JabRef picks up changes to the custom CSS file while running, so you can edit the file and see the result immediately.

You can find the full collection of user contributed themes at [https://themes.jabref.org](https://themes.jabref.org/). Themes that cover only one color scheme are not bundled; load them as custom theme.

## Writing a custom theme

A theme defines all its colors as `-color-*` variables (for example `-color-accent`, `-color-bg-primary`, `-color-fg-default`, `-color-selection`). The full list is in [`jabref-theme.css`](https://github.com/JabRef/jabref/blob/main/jabgui/src/main/resources/org/jabref/gui/theme/jabref-theme.css); the rest of JabRef's styling only uses these variables, so overriding them is enough to re-color the whole UI.

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
Custom themes written for JabRef 5.x used `-jr-*` variables (such as `-jr-theme` or `-jr-accent`). These no longer exist and JabRef ignores them; replace them by the corresponding `-color-*` variables.
{% endhint %}

## Selection of Useful CSS selectors

| UI element                       | CSS selector       |
| -------------------------------- | ------------------ |
| preview box                      | `#previewBody`     |
| `{} biblatex source` tab         | `.code-area`       |
| text in `{} biblatex source` tab | `.code-area .text` |
