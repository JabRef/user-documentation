---
title: URL and DOI links in JabRef
helpCategories: ["Fields"]
---

# URL and DOI links in JabRef

For linking attached files, see [File links in JabRef](FileLinks).

JabRef lets you link documents on the web in the form of an URL or a DOI identifier.

## Setting up external viewers

JabRef has to know which external viewers to use for web pages.
These are by default set to values that probably make sense for your operating system, so there's a fair chance you don't have to change these values.

To change the external viewer settings, go to **Options → Preferences → External programs**.

## Pushing to external viewer application

JabRef allows you to push any entries in your main window to an external viewer through the push-to-external application feature. You would need to first select the entries in your entry table that you would like to export before using the feature. Once you have done so, go to the tools submenu and click on the push-to-external application button to the right of the **Toggle groups interface** button. By default the external viewer used to push exports is TeXstudio.

JabRef also allows you to change the external viewer application you would like to push your exports to. To do so, click on the down arrow next to the push-to-external application button. This will cause a dropdown menu to appear, from which you are able to select from a list of the external viewers you have configured. Once you have made
your selection, the push-to-external application button icon will change to match that of the selected external viewer application.

## Opening external links

There are several ways to open an external web page.
In the entry editor, click on the icon "open" right of the text field to open the respective DOI or URL.

![Open DOI](images/EntryEditor-DOI-open.png)

In the entry table you can select an entry and use the menu choice, keyboard shortcut or the right-click menu to open the file or web page.
Finally, you can click on a URL or DOI icon.

![Open DOI via popup](images/EntryTable-DOI-popup.png)

By default the entry table will contain a singly column containing an indicator whether there is a DOI or a URL linked.
You can disable any of these in **Options → Preferences → Entry table columns**.

![Preferences for URL column](images/Preferences-EntryTablColumns-ShowUrlDoiColumn.png)
