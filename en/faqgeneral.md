# Frequently Asked Questions

## Q: I use JabRef in my work. Should I mention JabRef in my publications?

A: You are not obliged to cite JabRef, but we would greatly appreciate it if you do.

```text
JabRef Development Team (2020). JabRef - An open-source, cross-platform citation and reference management software. Version 5.1. [https://www.jabref.org]
```

If you are using biblatex, you can use the entry type software, for bibtex use `@misc`

```text
@Software{JabRef2020,
  author    = {{JabRef Development Team}},
  title     = {JabRef --- An open-source, cross-platform citation and reference management software},
  year      = {2020},
  version   = {5.1},
  url       = {https://www.jabref.org/},
}
```

## Q: Is JabRef free for private and corporate use?

A: Yes it is. JabRef is distributed under the MIT License, which [allows the following usage](https://tldrlegal.com/license/mit-license).

## Q: JabRef does not start. What should I do?

A: You can try resetting the settings. Depending on your operating system, you may need to pass the command line arguments `-d all -n` to JabRef.

\(E.g. in Windows this means `jabref-X.Y.exe -d all -n`, where `X.Y` means the version number of JabRef. If this does not help, run `regedit` and delete the folder `HKEY_CURRENT_USER\SOFTWARE\JavaSoft\Prefs\net\sf\jabref`. Be careful with `regedit`, as you can easily corrupt the basic Windows configuration.\)

## Q: I have tried the latest version of JabRef. Since then, the library entries are no longer displayed in any old version. What should I do?

A: Don't panic. No data should be damaged in your bib library. Since version 5.0 the columns in the main entry table are stored differently internally. You can reset the preferences by command line. See above.

## Q: Are there any publications dealing with JabRef?

A: We are collecting all publications we hear about at [https://github.com/JabRef/jabref/wiki/JabRef-in-the-media](https://github.com/JabRef/jabref/wiki/JabRef-in-the-media).

## Q: Does JabRef support non-English languages or UTF8 in general?

A: Yes. In **Options → Preferences → General** set "Default Encoding" to _UTF8_ and select an alternative user interface language in "Language" if required.

## Q: If I double click a BibTeX file in the file browser, JabRef always opens a new window. Can JabRef open the libraries in the same window just in a different tab?

A: In **Options → Preferences → Network**, in the “Remote operation” section, put a checkmark to “Listen for remote operation on port”. This option allows new instances of JabRef to detect the instance already running, and pass files to that instead of opening a new window. \(Default option since [JabRef 3.0](https://github.com/JabRef/jabref/blob/master/CHANGELOG.md#30---2015-11-29)\).

## Q: I have an DOI/ISBN/ePrint/etc. Is it possible to create an entry directly out of this identifier?

A: Paste the DOI in the table of entries, and JabRef will create the corresponding entry. Additionally, in **Library → New entry** you can select the type of the identifier in the field "ID type" and enter the identifier in "ID". A click on "Generate" should create the correct entry. If this does not work, try a web search. For more details, see [Add entry using an ID](collect/add-entry-using-an-id.md).

## Q: Why can't JabRef find any DOI/ISBN/ePrint/etc.?

A: There are several reasons why JabRef cannot find your identifier online. For example, your DOI is not listed in the [CrossRef database](https://search.crossref.org/) if you are using the CrossRef fetcher. Another reason could be that the search result for your DOI on [DOI.org](https://dx.doi.org) returns invalid BibTeX which is unable to be read by JabRef. Try a [web search](collect/import-using-online-bibliographic-database.md) instead.

## Q: I miss a field _translator_, _lastfollowedon_, etc. How can I add such fields?

A: To add this _translator_ field to all entry types, you can use **Options → Set up general fields** and add a _translator_ field under one of JabRef's general field tabs \(see [Customize general field](setup/generalfields.md)s\). To add this _translator_ field to a specific entry type, edit the specific entry type\(s\) \(**Options → Customize entry types**\) and add a _translator_ field under required fields or optional fields, as you like \(see [Customize entry types](setup/customentrytypes.md)\).

## Q: How do I prevent JabRef from introducing line breaks in certain fields \(such as “title”\) when saving the .bib file?

A: Open **Options → Preferences**. In the “File” panel, you will find an option called “Do not wrap the following fields when saving”. This option contains a semicolon-separated list of field names. Any field you add to this list will always be stored without introduction of line breaks.

## Q: Is it possible to append entries from a BibTeX file, e.g. from my web browser, to the currently opened library?

A: Yes, you can use the parameter `--importToOpen bibfile` of the [command line](advanced/commandline.md).

## Q: How do I link external files with paths relative to my .bib file, so I can move my library along with its files to another directory?

A: You need to override the default file directory for this specific library. In  **Library → Library properties** you can override the **Default file directory** setting. There, you can either enter the path in **General file directory** \(for it to be valid for all users of the file\) or in **User-specific file directory** \(for it to be valid for you only\). If you simply enter “.” \(a dot, without the quotes\), the file directory will be the same as the .bib file directory. To place your files in a subdirectory called **subdir**, you can enter **“./subdir”** \(without the quotes\). Files will automatically be linked with relative paths if the files are placed in the default file directory or in a directory below it. More details in the [help page about the library properties](setup/databaseproperties.md).

## Q: Can I use a bib-file specific PDF directory?

A: In **Library → Library properties** you can choose a library specific directory in the field “General file directory”. If you want to set a directory only for you \(so that other users should use the default directory\), use the field “User-specific file directory”. 

## Q: How do I export my bibliography entries into a simple text file, so I can import them into a spreadsheet \(in LibreOffice, OpenOffice, MS Office, etc.\)?

A: Use **File → Export**. As “Filter” choose “OpenOffice/LibreOffice CSV”.

## Q: How do I add and remove keywords of multiple entries?

A: Select the entries and go to **Library → Manage keywords**. There you can manage keywords appearing in all selected entries or in any selected entry. New keywords are added to all selected entries. More details about [keywords in JabRef](finding-sorting-and-cleaning-entries/keywords.md).

## Q: When linking a file, I cannot set the correct type. How do I add new types?

In **Options →  Preferences**, tab **External programs**, button "Manage external file types",  you can add arbitrary types. See the [dedicated page about external file types](setup/externalfiletypes.md).

## Q: When an organization is provided as author, my BibTeX style doesn't recognize it. For instance, why is “European Commission” converted to “Commission, E.”.?

A: Use curly braces to tell BibTeX to keep your author field as is: `{European Commission}`. In biblatex, you can use `label = {EC}` to have `EC05` as label for a publication of the European Commission in the year 2005.

## Q: Is there a FAQ on BibTeX?

A: Take a look at “Bibliographies and citations” at the [UK List of TeX Frequently Asked Questions on the Web](http://www.tex.ac.uk/). For German readers, there is the [dante e.V. FAQ](http://projekte.dante.de/DanteFAQ/LiteraturVerzeichnis).

## Q: How do I export a subset of my library to BibTeX \(or biblatex\) format?

A: Your JabRef library is already a file in Bib\(la\)TeX format. To export a specific subset of your library, select the entries to be exported and then choose **File → Export → Save selected as plain BibTeX...**.

## Q: I have the Bib\(la\)TeX code of a reference. How to add it to my library as a new entry?

A: Paste the Bib\(la\)Tex code of a reference into the table of entries, and JabRef will create the new corresponding entry.

## Q: I have the PDF of a publication. How to make it a new entry of my library?

A: Drag & drop a PDF onto the table of entries \(between two existing entries\). JabRef will analyze the PDF and create a new entry. More details about [Adding entries from PDFs.](collect/findunlinkedfiles.md)

## Q: I am looking at a publication in my web browser. How to make it a new entry of my library?

A: Use [JabRef Browser extension](collect/jabref-browser-extension.md): with one click, JabRef browser extension identifies and extracts bibliographic information on websites and sends them to JabRef.

## Q: I am missing the DOI of some of my publications. Can JabRef help?

A: JabRef can fetch the DOI for you: select the entries and go to **Lookup → Search document identifier online → DOI**.

## Q: I am missing the PDF of some of my publications. Can JabRef help?​

A: JabRef can fetch the PDFs for you: select the entries and to to **Lookup → Search full text documents online**.​

## Q: How do I export a subset corresponding to my LaTeX file?

A: Upon compilation, LaTeX generates a file with the extension ".aux". This files contains the keys of the cited references \(among other things\). Using this AUX file, JabRef can extract the relevant entries. Choose the menu **Tools → New sublibrary based on AUX file...** , then select the AUX file.

## Q: When I modify my library, I would like that JabRef performs entry cleaning automatically. How to do this?

A: In **Library → Library properties**, you will find a section named "Save actions". After enabling this feature, you can choose which actions should be performed for each field upon saving. That should help you keep your library tidy. More details about [cleaning up of entries](finding-sorting-and-cleaning-entries/cleanupentries.md), [save actions](finding-sorting-and-cleaning-entries/saveactions.md) and [check integrity](finding-sorting-and-cleaning-entries/checkintegrity.md).

## Q: Search on Google scholar does not work anymore. Why?

A: Google scholar is blocking "automated" crawls which generate too much traffic in a short time. JabRef already uses a two-step approach \(with the prefetched list before crawling the actual BibTeX data\) to circumvent this. However, after too much crawls JabRef is being blocked. To solve this issue, see the section [_Traffic limitations_](collect/import-using-online-bibliographic-database.md#traffic-limitations) in the Google Scholar database.

## Q: JabRef does not push to vim, although I have configured the right path and server name. What is going on?

A: You have to start vim with the option `--servername` \(such as `vim --servername MyVimServer`\). If you get the `Unknown option argument` message, it means your version of vim does not include the _clientserver_ feature \(you can check with `vim --version`\). In such a case, you have to install another version of `vim`.

## Q: My plugins stopped working. Why?

A: In JabRef 3.0 plugin support was removed, because the development team cannot keep up plugin support any more. Nevertheless, plugins can be integrated in JabRef. See [issue \#152](https://github.com/JabRef/jabref/issues/152) for the current status and discussion. Please contact the author of the respective plugin and ask him to port his plugin into JabRef's code.

## Q: In the preferences, I want to change the option XYZ. How to find it?

A: Enter XYZ in the search field located at the upper left-hand corner of the preference window.

## Q: My question is not answered here. What can I do?

A: After consulting [JabRef's help](https://docs.jabref.org) and checking whether your question has been [regarded as issue](https://github.com/JabRef/jabref/issues?utf8=%E2%9C%93&q=is%3Aissue+), please head over to the [Forum](https://discourse.jabref.org/).

## Q: There is a mistake in this FAQ, a dead link or I have written a better/new explanation for a question! What can I do?

A: See [How to improve the help page](faqcontributing/how-to-improve-the-help-page.md).

## Q: "Unable to monitor file changes. Please close files and processes and restart. You may encounter errors if you continue with this session."

A: This error message has been observed on systems that use [inotify](https://www.man7.org/linux/man-pages//man7/inotify.7.html). System calls to `inotify_init` and `inotify_add_watch` set `errno` to `EMFILE` when `inotify` has reached its limit. The most common reason is that `inotify` is running too many instances. To solve this problem, contact you system administrator and request that they increase the limits defined in `/proc/sys/fs/inotify/max_user_*` files.

