# Export

The order of the exported entries can be set in **File → Preferences,** tab **File**, under the menu "Export sort order".

{% hint style="warning" %}
This help page should describe the menu File -&gt; Export \(and the various file formats available\).

Please, populate this page. Visit our page about [how to edit a help page](../../contributing/how-to-improve-the-help-page.md#editing-help-pages-directly-in-the-browser).
{% endhint %}

{% page-ref page="customexports.md" %}

## Markdown publications

The Markdown publications format exports a publication list for use on Markdown websites.

### Export a publication list

1. Open your library in JabRef.
2. Choose **File → Export** and select whether to export all entries or selected entries.
3. Select **Markdown publications** as the export format.
4. Choose a destination and save the `.md` file.

The output contains:

- **Recent publications:** up to five entries, newest first.
- **All publications:** all exported entries, newest first.

This format uses publication dates rather than the general export sort-order preference.
Dates include the year, month, and day where available.
Entries without a usable publication date appear last.

Each entry includes available authors, title, publication venue, and year.
The title links to the DOI when available, otherwise to the URL.

### Group publication sections

Create a group named **Export** and add subgroups for the publication sections you want.

Each subgroup description becomes its section heading.
If the description is blank, the subgroup name is used.
Nested subgroups produce nested headings.
Empty sections are omitted unless they contain a nonempty descendant section.

Only entries included in the export appear in these sections.

### PDF links

The exporter adds a link to the first usable PDF attachment.
Online PDFs retain their online links.
Local PDFs use paths relative to the exported Markdown file.

When moving the export, preserve the relative arrangement of the Markdown file and local PDFs.
Local attachments that cannot be resolved or represented by a relative path are omitted.

See also:

{% page-ref page="../../collect/import/" %}

{% page-ref page="../../collect/import/customimports.md" %}
