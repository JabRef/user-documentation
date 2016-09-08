---
title: File links in JabRef
outdated: true
---

# File links in JabRef

JabRef lets you link up your entries with files of any type stored on your system, as well as links to the document on the web in the form of an URL or a DOI identifier. Each entry can have an arbitrary number of file links, and each linked file can be opened quickly from JabRef.

In BibTeX terms, the file links of an entry are encoded in a single field. However, from within JabRef they appear as an editable list of links accessed from the entry editor along with other BibTeX fields.

## Setting up external file types

For each file link, a file type must be chosen, to determine what icon should be used and what application should be called to open the file. The list of file types can be viewed and edited by choosing **Options -&gt; Manage external file types**, or by clicking the **Manage external file types** button in the **External programs** tab of the Preferences dialog.

A file type is specified by its name, a graphical icon, a file extension and an application to view the files. On Windows, the name of the application can be omitted in order to use Window's default viewer instead.

## Adding external links to an entry

If the "file" field is included in [General fields](GeneralFields), you can edit the list of external links for an entry in the [Entry editor](EntryEditorHelp). The editor includes buttons for inserting, editing and removing links, as well as buttons for reordering the list of links.

If you have a file within or below your file directory (set up in **Preferences -&gt; External programs -&gt; External file links -&gt; Main file directory**) with an extension matching one of the defined external file types, and a name containing a BibTeX entry's BibTeX key, the file can be autolinked by clicking on the **Auto** button in the entry editor. The rules for which file names can be autolinked to a BibTeX key can be set up in **Preferences -&gt; External programs -&gt; External file links -&gt; Use regular expression search**.

If you want to download a file and link to it from a BibTeX entry, you can do this by clicking the **Download** button in the entry editor. A dialog box will appear, prompting you to enter the URL. The file will be downloaded to your main file directory, named based on the entry's BibTeX key, and finally linked from the entry.

There are a couple of alternatives to the global file directory. You have the option (under **Preferences -&gt; External programs**) to allow links relative to the location of the bib file. Files linked in this way can be moved along with the bib file without breaking the links. There is an additional setting determining whether the bib file location should be the *primary* file directory. This decides which directory JabRef will use when downloading or moving linked files into your file directory.

You can also set a file directory (absolute, or relative to the bib file location) specifically for one database under **File -&gt; Database properties**. Finally, in the **Database properties** dialog you can set a user-specific file directory, which will be valid only when you are the one working on the bib file.

## Opening external files

There are several ways to open an external file or web page. In the entry table you can select an entry and use the menu choice, keyboard shortcut or the right-click menu to open an entry's first external link. Alternatively, if the entry table is set up to show the **file** column (set up in **Preferences -&gt; Entry table -&gt; Special table columns -&gt; Show file column**), you can click on the file icon to open an entry's first link. To access any of an entry's links, click on the icon with the right mouse button (or **Ctrl-click** on Mac OS X) to bring up a menu showing all links.
