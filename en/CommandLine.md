---
title: Command line use and options
helpCategories: ["General"]
---

# Command line use and options

## Purpose and functioning

Although JabRef is primarily a GUI based application, it offers several command line options that may be useful, and can even perform file conversion operations without opening the graphical interface.


## Basics

```sh
java -jar JabRef.jar [OPTIONS] [BIBTEX_FILE]
```

*Note:* you may have to replace `JabRef.jar` by the actual name of the `.jar` file (you can find the file in your installation folder)

On Windows, you can also directly use the executable, that is,
`JabRef.exe [OPTIONS] [BIBTEX_FILE]`. In this case, no output is written to the console unless you specify the `-console` option.

You can always specify one or more BibTeX files to load by simply listing their filenames.
Take care to specify all options before your list of file names.
Ensure that the first file name is not misunderstood as being an argument for an option; this simply means that if a boolean option like `-n` or `-l` immediately precedes a file name, add the word `true` as an argument.
For instance, the command line:

`java -jar JabRef.jar -o filetoexport.xml,docbook -n true original.bib`

will correctly load the file `original.bib`, export it in docbook format to `filetoexport.xml`, and suppress the GUI.
The word *true* prevents the file name from being interpreted as an argument to the `-n` option.


## Options

- [Help: `-h`](#help--h)
- [No-GUI mode: `-n`](#no-gui-mode--n)
- [Import file: `-i filename[,import format]`](import-file--i-filenameimport-format)
- [Export file: `-o filename[,export format]`](#export-file--o-filenameexport-format)
- [Export matching entries: `-m [field]searchTerm,outputFile:file[,exportFormat]`](#export-matching-entries--m-fieldsearchtermoutputfilefileexportformat)
- [Fetch entries from Web: `-f=FetcherName:QueryString`](#fetch-entries-from-web--ffetchernamequerystring)
- [Subdatabase from .aux file: `-a infile[.aux],outfile[.bib] base-BibTeX-file`](#subdatabase-from-aux-file--a-infileauxoutfilebib-base-bibtex-file)
- [Set file links: `-asfl`](#set-file-links--asfl)
- [Regenerate keys: `-g`](#regenerate-keys--g)
- [Export preferences: `-x filename`](#export-preferences--x-filename)
- [Import preferences: `-p filename`](#import-preferences--p-filename)
- [Reset preferences: `-d key`](#reset-preferences--d-key)
- [No files at startup: `-b`](#no-files-at-startup--b)
- [Version: `-v`](#version--v)
- [Debug mode: `--debug`](#debug-mode---debug)
- [Display output in the console: `--console`](#display-output-in-the-console---console)
- [Xmp Pdf Metadata: `-xmp`](#xmp-pdf-metadata--xmp)


### Help: `-h`
(or `--help`)

Displays a summary of the command line options, including the list of available import and export formats.


### No-GUI mode: `-n`
(or `--nogui`)

Suppresses the JabRef window (i.e. no GUI - Graphic User Interface - is displayed).

It causes the program to exit immediately once the command line options have been processed.
This option is useful for performing file conversion operations from the command line or a script.


### Import file: `-i filename[,import format]`
(or `--import filename[,import format]` or `--importToOpen filename[,import format]`)

Import or load the file `filename`.

If only the filename is specified (or if the filename is followed by a comma and a `*` character), JabRef will attempt to detect the file format automatically.
This works for BibTeX files, and also for all files in a supported import format.
If the filename is followed by a comma and the name of an import format, the given import filter will be used.

Use the `-h` option to get the list of available import formats.

If an export option is also specified, the import will always be processed first, and the imported or loaded file will be used by the export filter.
If the GUI is not suppressed (using the `-n` option), any imported or loaded file will show up in the main window.

If `--importToOpen` is used, the content of the file will be imported into the opened tab.

*Note:* The `-i` option can be specified only once, and for one file only.


### Export file: `-o filename[,export format]`
(or `--output filename[,export format]`

Export or save a file imported or loaded by the same command line.

If a file is imported using the `-i` option, that file will be exported.
If no `-i` option is used, the *last* file specified (and successfully loaded) will be exported.

If only filename is specified, it will be exported in BibTeX format.
If the filename is followed by a comma and an export format, the given export filter will be used.

A custom export filter can be used, and will be preferred if the export name matches both a custom and a standard export filter.

If the GUI is not suppressed (using the `-n` option), any export operation will be performed before the JabRef window is opened, and the imported database will show up in the window.

*Note:* The `-o` option can be specified only once, and for one file only.


### Export matching entries: `-m [field]searchTerm,outputFile:file[,exportFormat]`
(or `--exportMatches [field]searchTerm,outputFile:file[,exportFormat]`)

Save to a new file all the database entries matching the given search term.

If the filename is followed by a comma and an export format, the given export filter will be used.
Otherwise, the default format *html-table* (with *Abstract* and *BibTeX*, provided by *tablerefsabsbib*) is used.

Information about to the search function is given in ['advanced search' documentation](Search).

*Note:* In addition it is also possible to search for entries within a time frame such as `Year=1989-2005`
(instead of only searching for entries of a certain year as in `Year=2005`).

*Note:* Search terms containing blanks need to be bracketed by quotation marks, as in
`(author=bock or title|keywords="computer methods")and not(author=sager)`


### Fetch entries from Web: `-f=FetcherName:QueryString`
(or `--fetch=FetcherName:QueryString`)

Query a Web fetcher and import the entries.

Pass both the name of a fetcher and your search term or paper id (e.g. `--fetch=Medline:cancer`), and the given fetcher will be run.
Some fetchers will still display a GUI window if they need feedback from you.

The fetchers listed in the Web search panel can be run from the command line.
To get the list of available fetchers, run `--fetch` without parameters.


### Subdatabase from .aux file: `-a infile[.aux],outfile[.bib] base-BibTeX-file`
(or `--aux infile[.aux],outfile[.bib] base-BibTeX-file`)

Extract a subdatabase from a .aux file:

When you compile a LaTeX document (e.g. `infile.tex`), an .aux file is created (`infile.aux`).
Among other things, it contains the list of entries used in your document.
JabRef can extract the references used from the `base-BibTeX-file` to a new .bib file (`outfile.bib`).
This way, you will have a subdatabase containing only the entries used in the .tex file.


### Set file links: `-asfl`
(or `--automaticallySetFileLinks`)

Automatically set file links.


### Regenerate keys: `-g`
(or `--generateBibtexKeys`)

Regenerate all keys for the entries of a BibTeX file.


### Export preferences: `-x filename`
(or `--prexp filename`)

Export user preferences to an XML file.
After exporting, JabRef will start normally.


### Import preferences: `-p filename`
(or `--primp filename`)

Import user preferences from an XML file (exported using the `-x` option, or through the GUI).
After importing, JabRef will start normally.


### Reset preferences: `-d key`
(or `--prdef key`)

Reset preferences (key1, key2,..., or `all`).


### No files at startup: `-b`
(or `--blank`)
Do not open any files at startup


### Version: `-v`
(or `--version`)

Display the version number of JabRef.


### Debug mode: `--debug`

Show debug level messages.

### Display output in the console: `--console`

Show info and error messages in the console. Only necessary if you use `JabRef.exe` instead of the `.jar` file.

### Xmp Pdf Metadata: `-xmp`

Console application with two options. The selection of the option is done within cmd. 
There are no parameters needed to use this tool.

Options:

 (1) Reads xmp metadata from a pdf file (input filepath in cmd) and prints the metadata entries in bib format
 
 (2) Writes bib entries in a bib file to the metadata section of a pdf file (input both filepaths in cmd)
