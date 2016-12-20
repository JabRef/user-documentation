---
title: General
helpCategories: ["FAQ"]
---

# General

## Q: My plugins stopped working. What should I do?

A: JabRef v3.0 removed plugin support, because the development team cannot keep up plugin support any more.
Nevertheless, plugins can be integrated in JabRef.
See [issue #152](https://github.com/JabRef/jabref/issues/152) for the current status and discussion.
Please contact the author of the respective plugin and ask him to port his plugin into JabRef's code.

## Q: I am using JabRef in my work. Should I cite JabRef in my publications?

A: You are not obliged to cite JabRef, but we would greatly appreciate it if you do.

{% raw %}
```
@Manual{JabRef,
  title = {JabRef},
  author = {{JabRef Development Team}},
  year = {2016},
  url = {https://www.jabref.org}
}
```
{% endraw %}

## Q: Are there any publications dealing with JabRef?

A: We are collecting all publications we hear about at <https://github.com/JabRef/jabref/wiki/JabRef-in-the-media>.

## Q: JabRef does not start. What should I do?

A: This may be because the preferences need to be reset.
Execute `java -jar JabRef-X.Y.jar --prdef all -n` (with `X.Y` the version of JabRef).
On Windows, if that does not help, execute `regedit` and delete the folder `HKEY\_CURRENT\_USER\SOFTWARE\JavaSoft\Prefs\net\sf\jabref`.

## Q: Does JabRef support Chinese characters?

A: Yes. Go to **Options -&gt; Preferences -&gt; General -&gt; Default Encoding**.
Set it to *UTF8*.
At "Appearance" set table font as *simsun* (or any other Chinese font).
At "General", you can change the UI language to *Chinese*.
More information are available at <http://yenlung.km.nccu.edu.tw/xms/read_attach.php?id=61> (alternative: <https://web.archive.org/web/20111027034912/http://yenlung.math.nccu.edu.tw/~yenlung/notes/latex_in_Windows.pdf>).

## Q: When I have an instance of Jabref running and double click another BibTeX file it is opened in a new JabRef instance. Is it possible to open it in a new tab in the first instance?

A: Yes. Go to **Options -&gt; Preferences -&gt; Advanced -&gt; Remote operation**.
Put a checkmark to “Listen for remote operation on port:”.
This option allows new instances of JabRef to detect the instance already running, and pass files to that instead of opening a new window.
Note: This is the default [since JabRef 3.0](https://github.com/JabRef/jabref/blob/master/CHANGELOG.md#30---2015-11-29).

## Q: I have a JabRef open. If I open a BibTeX file from my web browser, a new JabRef is started. I want the file to be opened in the currently opened JabRef. Is this possible?

A: Yes. Go to **Options -&gt; Preferences -&gt; Advanced -&gt; “Remote operation”**.
Put a checkmark to “Listen for remote operation on port:”.
This option allows new instances of JabRef to detect the instance already running, and pass files to that instead of opening a new window.
Note: This is the default [since JabRef 3.0](https://github.com/JabRef/jabref/blob/master/CHANGELOG.md#30---2015-11-29).

## Q: I have a DOI. Is it possible to create an entry directly out of the DOI?

A: Yes. Go to **Search -&gt; Web Search** to enable the Web search.
A Web search box appears on the left side of JabRef.
The name of a web search is selected (e.g. “ACM Portal”).
Click on it and change it to “DOI to BibTeX”.
Enter the DOI in the field and press **Fetch**.
A search starts and the result is displayed in a new pop up window.
One entry should appear.
Just push “OK” to insert the entry into the database.
For further informatio, please, consult the dedicated help file about the [DOI-to-BibTeX fetcher](DOItoBibTeX).

## Q: I have an ISBN. Is it possible to create an entry directly out of the ISBN?

A: Yes. Go to  **Search -&gt; Web Search** to enable the Web search.
A Web search box appears on the left side of JabRef.
The name of a web search is selected (e.g. “ACM Portal”).
Click on it and change it to “ISBN to BibTeX”.
If a ISBN is not found, head to the [online service](http://manas.tungare.name/software/isbn-to-BibTeX/) by Manas Tungare.
For further informatio, please, consult the dedicated help file about the [ISBN-to-BibTeX fetcher](ISBNtoBibTeX).

## Q: I miss a field *translator*, *lastfollowedon*, ... How can I add such fields?

A: To add this *translator* field to all entry types, you can use **Options -&gt; Set up general fields** and add a *translator* field under one of JabRef's general field tabs.
To add this *translator* field to a specific entry type, edit the specific entry type(s) (**Options -&gt; Customize entry types**) and add a *translator* field under required fields or optional fields, as you like.

## Q: How do I prevent JabRef from introducing line breaks in certain fields (such as “title”) when saving the .bib file?

A: Open **Options -&gt; Preferences**.
In the “File” panel, you will find an option called “Do not wrap the following fields when saving”.
This option contains a semicolon-separated list of field names.
Any field you add to this list will always be stored without introduction of line breaks.

## Q: Is it possible to append entries from a BibTeX file, e.g. from my web browser, to the currently opened database?

A: Yes, you can use the parameter `--importToOpen bibfile` of the [command line](CommandLine).

## Q: I want to link external files with paths relative to my .bib file, so I can easily move my database along with its files to another directory. Is this possible?

A: Yes. You need to override the default file directory for this specific database.
Go to **File -&gt; Database properties**. You can override the **Default file directory** setting.
There, you can either enter the path in **General file directory** (for it to be valid for all users of the file) or in **User-specific file directory** (for it to be valid for you only).
If you simply enter “.” (a dot, without the quotes), the file directory will be the same as the .bib file directory.
To place your files in a subdirectory called **subdir**, you can enter **“./subdir”** (without the quotes).
Files will automatically be linked with relative paths if the files are placed in the default file directory or in a directory below it.

## Q: I want to export my bibliography entries into a simple text file so that I can import them into a spreadsheet easily. Is this possible?

A: Yes. Use **File -&gt; Export**.
Under “Filter:”, choose “OpenOffice/LibreOffice CSV (\*.csv)”.

## Q: How can I add and remove keywords of multiple entries?

A: Select the entries.
Right click.
Choose “Manage keywords”.
Then you can manage keywords appearing in all selected entries or in any selected entry.
New keywords are added to all selected entries.

## Q: I want to have a bib-file-specific PDF directory.

A: Right click on the tab of the .bib file.
Choose “Database properties”.
Then at the field “General file directory” choose the directory specific for the database.
If you want to set a directory for you only (so that other users should use the default directory), use the field “User-specific file directory”.

## Q: When linking a file, I cannot set the correct type. How can I add new types?

A: Go to **Options -&gt; Manage external file types**.
Here you can add arbitrary types.

## Q: Is there a portable version of JabRef?

A: Store the file jabref.jar on the drive.
It can be opened directly on any computer offering a Java installation by double clicking the `jar` file.
In **Options -&gt; Preferences -&gt; General**, be sure to activate "Load and Save preferences from/to jabref.xml on start-up (memory stick mode)".

## Q: When an organization is provided as author, my BibTeX style doesn't recognize it. For instance, “European Commission” is converted to “Commission, E.”.

A: Use braces to tell BibTeX to keep your author field as is: `{European Commission}`.
In BibLaTeX, you can use `label = {EC}` to have `EC05` as label for a publication of the European Commission in the year 2005.

## Q: Is there a FAQ on BibTeX?

A: Yes, please look at “Bibliographies and citations” at the [UK List of TeX Frequently Asked Questions on the Web](http://www.tex.ac.uk/).
For German readers, there is the [dante e.V. FAQ](http://projekte.dante.de/DanteFAQ/LiteraturVerzeichnis).

## Q: Where is the RenameFile plugin? How to rename file automatically after importing entries?

A: JabRef does not support plugin anymore (version > 2.11). However the plugin features are progressively integrated.
Renaming of files is now part of the "Cleanup Entries" feature (brush button in the toolbar or <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>F7</kbd>).
Then, you can rename attached files based on the BibTeX key.  You can change the format (pattern) under
**Options -&gt; Preferences -&gt; Import**, by altering the pattern under "Default PDF file link action".

## Q: I have a JabRef database and I would like to export a subset to BibTeX (or BibLaTeX) format. How to do this?

A: Your JabRef database is already a file in Bib(La)TeX format. Simply select the entries to be exported, and then
choose **File-&gt;Save Selected as...**. More details on [stackexchange.com](https://tex.stackexchange.com/questions/82554/jabref-can-it-export-a-subset-of-the-bibliography-in-BibTeX-format).

## Q: I have a JabRef database and I would like to export the subset corresponding to my LaTeX file. How to do this?

A: Upon compilation, LaTeX generates a file with the extension ".aux". This files contains the keys of the cited references (among other things). Using this AUX file, JabRef can extract the relevant entries. Choose the menu **Tools -&gt; New subdatabase based on AUX file**. Then select the reference database (among the opened ones), and specify the AUX file.


## Q: When I modify my database, I would like that JabRef performs entry cleaning automatically. How to do this?

A: In **File -&gt; Database properties**, you will find a section named "Save actions". After enabling this feature, you can choose which actions should be performed for each field upon saving. That should help you keep your database tidy.

## Q: Search on Google scholar does not work anymore. What is going on?

A: Google scholar is blocking "automated" crawls which generate too much traffic in a short time. JabRef already uses a two-step approach (with the prefetched list before crawling the actual BibTeX data) to circumvent this.
However, after too much crawls JabRef is being blocked.

To solve this issue, see the section *Traffic limitations* in the [Google Scholar help](GoogleScholar).

## Q: JabRef does not push to vim, although I have configured the right path and server name. What is going on?

A: You have to start vim with the option `--servername` (such as `vim --servername MyVimServer`). If you get the `Unknown option argument` message, it means your version of  vim does not include the *clientserver* feature (you can check with `vim --version`). In such a case, you have to install another version of `vim`.

## Q: Is JabRef free for private and corporate use?

A: Yes it is. JabRef is distributed under the MIT License, which [allows the following usage](https://tldrlegal.com/license/mit-license).
