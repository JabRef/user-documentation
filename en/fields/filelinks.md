# File links in JabRef

JabRef lets you link up your entries with files of any type stored on your system. Thereby, it uses the field `file`, which contains a list of linked files. Each entry can have an arbitrary number of file links, and each linked file can be opened quickly from JabRef. The fields `url` and `doi` are used as links to documents on the web in the form of an URL or a DOI identifier respectively. See [External Files](externalfiles.md) for an explanation.

In BibTeX terms, the file links are stored as text in the field `file`. From within JabRef, however, they appear as an editable list of links accessed from the entry editor along with other BibTeX fields.

## Table of contents

* [Adding external links to an entry](filelinks.md#adding-external-links-to-an-entry)
* [Directories for files](filelinks.md#directories-for-files)
* [Auto linking files](filelinks.md#auto-linking-files)
  * [Using Regular Expression Search for Auto-Linking](filelinks.md#using-regular-expression-search-for-auto-linking)
* [Opening external files](filelinks.md#opening-external-files)
* [Setting up external file types](filelinks.md#setting-up-external-file-types)

## Adding external links to an entry

If the "file" field is included in [General fields](../setup/generalfields.md), you can edit the list of external links for an entry in the [Entry editor](../general/entryeditor.md). The editor includes buttons for inserting, editing and removing links, as well as buttons for reordering the list of links.

![list of linked files](../.gitbook/assets/entryeditor-linkedfiles%20%282%29%20%281%29.png)

## Directories for files

JabRef offers following directory settings:

1. Options → Preferences → File → External file links → Main file directory

   ![Main file directory](../.gitbook/assets/preferences-file-mainfiledirectory%20%282%29%20%282%29.png)

2. File → Library properties → General file directory.
3. File → Library properties → User-specific file directory

   ![Override default file directories](../.gitbook/assets/libraryproperties-overridedefaultfiledirectories%20%282%29%20%282%29.png)

One of these settings is required. Mostly the "Main file directory" is enough.

JabRef enables setting a directory per database. When sharing a library across multiple persons, each user might have a different directory. Either each user can set his directory in the "Main file directory". In case the group also shares papers and thus there are two directories \(the private one and a group-shared one\), one can set a directory within the library \(the "General file directory"\). In case a user has a different location of the shared folder \(e.g., different paths on Linux and Windows\), he can use the "User-specific file directory". This settings is persisted in the `bib` file in a way that it does not overwrite the setting of another user. For this, JabRef uses the username of the currently logged in user \(`-<loginname>` is used as suffix in the `jabref-meta` field\). So, both `mary` and `aileen` can set a different user-specific file directory.

If JabRef saves an attached file and my loginname matches the name stored in the `bib` file, it chooses that directory. If no match is found, it uses the "General file directory" of the bib file. If that is not found, it uses the one configured at Options → Preferences → File → External file links \("Main file directory"\).

In some settings, the bib file is stored in **the same directory** as the PDF files. Then, one ignore all the above directories and enable "use the BIB file location as primary file directory". In this case, JabRef starts searching for PDF files in the directory of the `bib` file. It is also possible to achieve this result by setting `.` as "General file directory" in the library properties.

![Use the BIB file location as primary file directory](../.gitbook/assets/preferences-file-usethebibfilelocationasprimaryfiledirectory%20%281%29.png).

Relative file directories obviously only work in the library properties fo a bib file, e.g. `a.bib` → Library properties → General file directory → `papers`. Assume to have two bib files: `a.bib` and `b.bib` located in different directories: `a.bib` located at `C:\a.bib` and `b.bib` located at `X:\b.bib`. When I click on the `+` icon in the general Tab of file `a.bib`, the popup is opened in the directory `C:\papers` \(assuming `C:\papers` exists\).

## Auto linking files

If you have a file within or below one of your file directories with an extension matching one of the defined external file types, and a name containing a BibTeX entry's BibTeX key, the file can be autolinked by clicking on the **Auto** button in the entry editor.

![auto link file](../.gitbook/assets/entryeditor-autolinkfile%20%282%29%20%282%29.png)

The rules for which file names can be autolinked to a BibTeX key can be set up in **Preferences → File → External file links → Use regular expression search**.

![Preferences for external file links](../.gitbook/assets/preferences-file-externalfilelinks%20%282%29%20%283%29.png)

If you want to download a file and link to it from a BibTeX entry, you can do this by clicking the **Download** button in the entry editor.

![Download from URL](../.gitbook/assets/entryeditor-general-downloadfilefromurl%20%282%29%20%281%29.png)

A dialog box will appear, prompting you to enter the URL. The file will be downloaded to your main file directory, named based on the entry's BibTeX key, and finally linked from the entry.

JabRef uses all directories set at [Directories for files](filelinks.md#directories-for-files) to search for the files. JabRef starts in the user-specific file directory, then the general file directory and finally the main file directory to handle files.

### [Using Regular Expression Search for Auto-Linking](filelinks.md) <a id="RegularExpressionSearch"></a>

It is possible to have greater flexibility in the naming scheme by using regular expression for the search. In most cases it should not be necessary though to adapt the given default.

If you open the external preferences \(Options → Preferences → File\) you will find an option called "Use regular expression search". Checking this option will allow you to enter your own regular expression for search in the PDF directories.

![Use regular expression search](../.gitbook/assets/preferences-file-useregularexpressionsearch%20%282%29%20%282%29.png)

The following syntax is understood:

* `*` - Search in all immediate all subdirectories excluding the current and any deeper subdirectories.
* `**` - Search in all subdirectories recursively AND the current directory.
* `.` and `..` - The current directory and the parent directory.
* `[title]` - All expressions in square brackets are replace by the corresponding field in the current entry
* `[extension]` - Is replaced by the file-extension of the field you are using.
* All other text is interpreted as a regular expression. But caution: You need to escape backslashes by putting two backslashes after each other to not confuse them with the path-separator.

The default for searches is `**/.*[bibtexkey].*\\.[extension]`. As you can see this will search in all subdirectories of the extension-based directory \(for instance in the PDF directory\) for any file that has the correct extension and contains the BibTeX-key somewhere.

## Opening external files

There are several ways to open an external file or web page. In the entry table, you can click on the PDF icon to open the PDF. In case there are multiple PDFs linked, always the first one is opened. You can also right click on the line of the entry in the entry table and select "Open file". There is also a keyboard shorcut for this: In the default setting, this is F4, but [it can also be customized](../setup/customkeybindings.md).

To access any of an entry's links, click on the icon with the right mouse button \(or Ctrl + Click on Mac OS X\) to bring up a menu showing all links.

## Setting up external file types

In general, there is no need to change the settings of external file types. So, this setting is for advanced users.

For each file link, a file type must be chosen, to determine what icon should be used and what application should be called to open the file. The list of file types can be viewed and edited by choosing **Options → Manage external file types**, or by clicking the **Manage external file types** button in the **External programs** tab of the Preferences dialog.

A file type is specified by its name, a graphical icon, a file extension and an application to view the files. On Windows, the name of the application can be omitted in order to use Window's default viewer instead.

![Manage external file types](../.gitbook/assets/manageexternalfiletypes%20%282%29%20%281%29%20%281%29.png)

