# General FAQs

## Q: I use JabRef in my work. Should I mention JabRef in my publications?

A: You are not obliged to cite JabRef, but we would greatly appreciate it if you do.

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

A: In **Options → Preferences → Advanced → “Remote operation”** put a checkmark to “Listen for remote operation on port”. This option allows new instances of JabRef to detect the instance already running, and pass files to that instead of opening a new window. \(Default option since [JabRef 3.0](https://github.com/JabRef/jabref/blob/master/CHANGELOG.md#30---2015-11-29)\).

## Q: I have an DOI/ISBN/ePrint/etc. Is it possible to create an entry directly out of this identifier?

A: In **Library → New entry** you can select the type of the identifier in the field "ID type" and enter the identifier in "ID". A click on "Generate" should create the correct entry. If this does not work, try a web search.

## Q: Why can't JabRef find any DOI/ISBN/ePrint/etc.?

A: There are several reasons why JabRef cannot find your identifier online. \(E.g. one reason could be that your DOI is not listed in the [CrossRef database](https://search.crossref.org/) if you are using the CrossRef fetcher. Another reason could be that the search result for your DOI on [DOI.org](https://dx.doi.org) returns invalid BibTeX which is unable to be read by JabRef.\) Try a web search instead.

## Q: I miss a field _translator_, _lastfollowedon_, etc. How can I add such fields?

A: To add this _translator_ field to all entry types, you can use **Options → Set up general fields** and add a _translator_ field under one of JabRef's general field tabs. To add this _translator_ field to a specific entry type, edit the specific entry type\(s\) \(**Options → Customize entry types**\) and add a _translator_ field under required fields or optional fields, as you like.

## Q: How do I prevent JabRef from introducing line breaks in certain fields \(such as “title”\) when saving the .bib file?

A: Open **Options → Preferences**. In the “File” panel, you will find an option called “Do not wrap the following fields when saving”. This option contains a semicolon-separated list of field names. Any field you add to this list will always be stored without introduction of line breaks.

## Q: Is it possible to append entries from a BibTeX file, e.g. from my web browser, to the currently opened library?

A: Yes, you can use the parameter `--importToOpen bibfile` of the [command line](../advanced/commandline.md).

## Q: How do I link external files with paths relative to my .bib file, so I can move my library along with its files to another directory?

A: You need to override the default file directory for this specific library. In **File → Library properties** you can override the **Default file directory** setting. There, you can either enter the path in **General file directory** \(for it to be valid for all users of the file\) or in **User-specific file directory** \(for it to be valid for you only\). If you simply enter “.” \(a dot, without the quotes\), the file directory will be the same as the .bib file directory. To place your files in a subdirectory called **subdir**, you can enter **“./subdir”** \(without the quotes\). Files will automatically be linked with relative paths if the files are placed in the default file directory or in a directory below it.

## Q: Can I use a bib-file specific PDF directory?

A: In **File → Library properties** you can choose a library specific directory in the field “General file directory”. If you want to set a directory only for you \(so that other users should use the default directory\), use the field “User-specific file directory”.

## Q: How do I export my bibliography entries into a simple text file, so I can import them into a spreadsheet \(in LibreOffice, OpenOffice, MS Office, etc.\)?

A: Use **File → Export**. As “Filter” choose “OpenOffice/LibreOffice CSV \(\*.csv\)”.

## Q: How do I add and remove keywords of multiple entries?

A: Select the entries. Right click. Choose “Manage keywords”. There you can manage keywords appearing in all selected entries or in any selected entry. New keywords are added to all selected entries.

## Q: When linking a file, I cannot set the correct type. How do I add new types?

A: In **Options → Manage external file types** you can add arbitrary types.

## Q: Is there a portable version of JabRef?

A: JabRef offers a portable version of the application as a compressed file \(.zip or .tar.gz\) without an installer. Be sure to activate "Load and Save preferences from/to jabref.xml on start-up \(memory stick mode\)" in **Options → Preferences → General**.

## Q: When an organization is provided as author, my BibTeX style doesn't recognize it. For instance, “European Commission” is converted to “Commission, E.”.

A: Use curly braces to tell BibTeX to keep your author field as is: `{European Commission}`. In BibLaTeX, you can use `label = {EC}` to have `EC05` as label for a publication of the European Commission in the year 2005.

## Q: Is there a FAQ on BibTeX?

A: Take a look at “Bibliographies and citations” at the [UK List of TeX Frequently Asked Questions on the Web](http://www.tex.ac.uk/). For German readers, there is the [dante e.V. FAQ](http://projekte.dante.de/DanteFAQ/LiteraturVerzeichnis).

## Q: How do I export a subset to of my library to BibTeX \(or BibLaTeX\) format?

A: Your JabRef library is already a file in Bib\(La\)TeX format. To export a specific subset of your library select the entries to be exported and then choose **File → Export → Save Selected as plain BibTeX...**.

## Q: How do I export a subset corresponding to my LaTeX file?

A: Upon compilation, LaTeX generates a file with the extension ".aux". This files contains the keys of the cited references \(among other things\). Using this AUX file, JabRef can extract the relevant entries. Choose the menu **Tools → New sublibrary based on AUX file**. Select the reference library \(among the opened ones\) and specify the AUX file.

## Q: When I modify my library, I would like that JabRef performs entry cleaning automatically. How to do this?

A: In **File → Library properties**, you will find a section named "Save actions". After enabling this feature, you can choose which actions should be performed for each field upon saving. That should help you keep your library tidy.

## Q: Search on Google scholar does not work anymore. Why?

A: Google scholar is blocking "automated" crawls which generate too much traffic in a short time. JabRef already uses a two-step approach \(with the prefetched list before crawling the actual BibTeX data\) to circumvent this. However, after too much crawls JabRef is being blocked. To solve this issue, see the section _Traffic limitations_ in the [Google Scholar help](../collect/import-using-online-bibliographic-database/googlescholar.md).

## Q: JabRef does not push to vim, although I have configured the right path and server name. What is going on?

A: You have to start vim with the option `--servername` \(such as `vim --servername MyVimServer`\). If you get the `Unknown option argument` message, it means your version of vim does not include the _clientserver_ feature \(you can check with `vim --version`\). In such a case, you have to install another version of `vim`.

## Q: My plugins stopped working. Why?

A: In JabRef 3.0 plugin support was removed, because the development team cannot keep up plugin support any more. Nevertheless, plugins can be integrated in JabRef. See [issue \#152](https://github.com/JabRef/jabref/issues/152) for the current status and discussion. Please contact the author of the respective plugin and ask him to port his plugin into JabRef's code.

## Q: Where did the RenameFile plugin go? How do I rename files automatically after importing entries?

A: JabRef does no longer support plugins \(since version 3.0\). Automatic file renaming is now part of the **Quality → Cleanup entries** feature. There you can rename attached files based on the BibTeX key. You can change the format \(pattern\) under **Options → Preferences → Import**, by altering the pattern under "Default PDF file link action".

## Q: How to test a development version without uninstalling the released version?

A: Download the portable version \(file `JabRef-X.Y.portable_windows.zip`, `JabRef-X.Y.portable_macos.tar.gz`, or `JabRef-X.Y.portable_linux.tar.gz`\) from [https://builds.jabref.org/master/](https://builds.jabref.org/master/), uncompress it, and run the executable. We recomment a folder such as `~/home/JabRef` or `c:\portable-apps\JabRef` to ensure that the portable version does not conflict with the latest release version installed from [https://downloads.jabref.org](https://downloads.jabref.org).

In case you want to development version open when double clicking a `.bib` file, install the development version and uncompress the portable version of the latest release to a folder.

## Q: In the preferences, I want to change the option XYZ. How to find it?

A: Enter XYZ in the search field located at the upper left-hand corner of the preference window.

