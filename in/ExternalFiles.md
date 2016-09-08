---
title: PDF/PS/URL/DOI links in JabRef
outdated: true
---

# PDF/PS/URL/DOI links in JabRef

**Note:** JabRef 2.3 and later versions offer an [improved system for external file links](FileLinks).

JabRef lets you link up your entries with PDF or PS files stored on your system, as well as links to the document on the web in the form of an URL or a DOI identifier.

## Setting up external viewers

The program has to know which external viewers to use for PDF, PS and web pages. These are by default set to values that probably make sense for your operating system, so there's a fair chance you don't have to change these values.

To change the external viewer settings, go to **Options -&gt; Preferences -&gt; External programs**.

## Opening external files or links

There are several ways to open an external file or web page. In the entry editor, you can double click on the text field containing the file name, DOI or URL. In the entry table you can select an entry and use the menu choice, keyboard shortcut or the right-click menu to open the file or web page. Finally, you can click on a PDF, PS, URL or DOI icon.

By default the entry table will contain two columns with icons for those entries that link to external files and URLs. You can disable any of these in **Preferences -&gt; Table**. The second column of the entry table shows icons for PDF or PS files (only PDF if both are present), and the third column shows icons for URL or DOI (only URL if both are present). You open the file or web page by clicking on an icon.

**Note:** If the PS field does not appear in the entry editor (in the 'General' panel), you may have to [customize the entry types of the general fields](GeneralFields).

## The main PDF and PS directories

JabRef makes it easy to link PDF and PS files to your entries. To take advantage of this, you have to indicate in **Options -&gt; Preferences -&gt; External programs** your main PDF and PS directories. All PDF and PS files that are stored in or below each of these directories will be referred to with a relative path by JabRef, making it easy for you if you need to move the PDF and PS directories, or if several users use the same database from different network places.

Additionally, if you give your PDF and PS files names that correspond to the relevant entry's bibtex key (plus '.pdf' or '.ps'), JabRef will be able to search your main directories and its subfolders for the correct PDF and PS. Once the correctly-named PDF or PS is in place you access this function by clicking the 'Auto' button next to the PDF and PS fields in the entry editor. If the PDF or PS is found, the field will immediately be set.

If you name a PDF or PS file as mentioned, you can also open the file without setting the PDF or PS field of the entry at all. The downside is that the PDF or PS icon will not appear in the table unless you do (manually or with the 'Auto' button).

## The database-specific PDF and PS directories

You can set PDF and PS directories specific to a database (**File -&gt; Database properties**). These directories will supersede the main directories.

## <a href="" id="RegularExpressionSearch">Using Regular Expression Search for Auto-Linking</a>

In the previous sections JabRef's auto-linking feature was described: If you choose names for your files corresponding to the bibtex-key + plus the extension, JabRef will automatically be able to find it.

Since JabRef 2.2 it is now possible to have greater flexibility in the naming scheme by using regular expression for the search. In most cases it should not be necessary though to adapt the given default.

If you open the external preferences (Options -&gt; Preferences -&gt; External Programs) you will find an option called "Use Regular Expression Search". Checking this option will allow you to enter your own regular expression for search in the PDF directories.

The following syntax is understood:

-   `*` - Search in all immediate all subdirectories excluding the current and any deeper subdirectories.
-   `**` - Search in all subdirectories recursively AND the current directory.
-   `.` and `..` - The current directory and the parent directory.
-   `[title]` - All expressions in square brackets are replace by the corresponding field in the current entry
-   `[extension]` - Is replaced by the file-extension of the field you are using.
-   All other text is interpreted as a regular expression. But caution: You need to escape backslashes by putting two backslashes after each other to not confuse them with the path-separator.

The default for searches is `**/.*[bibtexkey].*\\.[extension]`. As you can see this will search in all subdirectories of the extension-based directory (for instance in the PDF directory) for any file that has the correct extension and contains the Bibtex-key somewhere.
