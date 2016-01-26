Command line options
====================

Although JabRef is primarily a GUI based application, it offers several command line options that may be useful, and can even perform file conversion operations without opening the graphical interface.

You can always specify one or more BibTeX files to load by simply listing their filenames. Take care to specify all options before your list of file names. You must make sure the first file name is not misunderstood as being an argument for an option - this simply means that if a boolean option like `-n` or `-l` immediately precedes a file name, add the word "true" as an argument. For instance, the command line:

`jabref -o filetoexport.xml,docbook -n true     original.bib`

will correctly load the file `original.bib`, export it in docbook format to `filetoexport.xml`, and suppress the GUI. The word *true* prevents the file name from being interpreted as an argument to the -n option.

Help: -h
--------

This option causes JabRef to display a summary of the command line options, and quit immediately.

No-GUI mode: -n
---------------

This option suppresses both the JabRef window and the splash window normally shown at startup. It causes the program to quit immediately once the command line options have been processed.

This option is useful for performing file conversion operations from the command line or a script.

Import file: -i filename\[,format\]
-----------------------------------

This option causes JabRef to import or load the specified file. If only a filename is specified, or the filename is followed by a comma and a \* character, JabRef will attempt to detect the file format automatically. This should work for all BibTeX files and files in any import format supported by JabRef. If the filename is followed by a comma and the name of an import format, the given import filter will be used. Use the `-h` option to get a list of availiable import formats.

If an output option is also specified, an import will always be processed before it, and the imported or loaded file will be given to the export filter. If the GUI is not suppressed using the `-n` option, any imported or loaded file will show up in the main window.

The -i option can be specified only once, and for one file only.

Export file: -o filename\[,format\]
-----------------------------------

This option causes JabRef to save or export a file imported or loaded by the same command line. If a file is imported using the `-i` option, that database will be exported. Otherwise, the *last* file specified (and successfully loaded) without the `-i` option will be exported.

If only a filename is specified, it will be saved in BibTeX format. If the filename is followed by a comma and an export format, the given export filter will be used. A custom export filter can be used in this way, and will be preferred if the export name matches both a custom and a standard export filter.

Use the `-h` option to get a list of availiable export formats.

If the `-n` option has not been invoked, any export operation will be performed before the JabRef window is opened, and the imported database will show up in the window.

The -o option can be specified only once, and for one file only.

Export preferences: -x filename
-------------------------------

Using this option, you can have JabRef export all user preferences to an XML file. After exporting, JabRef will start normally.

Import preferences: -p filename
-------------------------------

This option causes JabRef to import user preferences exported using the `-x` option. After importing, JabRef will start normally.

Export matching entries: -m \[field=\]searchTerm,outputFile\[,exportFormat\]
----------------------------------------------------------------------------

JabRef saves all the database entries matching to a given search term in a new file. The export file's format can be chosen, the default format is html-table (with abstract and bibtex, provided by tablerefsabsbib).

Call: `JabRef.jar -m [field=]searchTerm,outputFile[,exportFormat] -n true inputFile`

For information referring to the search function see the documentation for 'advanced search'. In addition it is also possible to search for entries within a timeframe instead of only searching for entries of a certain year.

Please note that search terms containing blanks need to be bracketed by quotation marks.

Examples

-   `Year=2005`
-   `title|keywords=Optimization`
-   `(author=bock or title|keywords="computer methods")and not(author=sager)`
-   `Year=1989-2005`

Export only used items: -a filename\[.aux\],newBibFile\[.bib\]
--------------------------------------------------------------

Sometimes it is helpful, to have a bibtex file that contains only the used bibtex entries. A list of these used entries is located in an aux file. Jabref can parse this file to generate a new bibtex file, which contains only the known and used entries. That will mean, if an entry is not defined in the standard bibtex file, it cannot be located in the new file.

Fetch from Web: --fetch==name of fetcher:query string
-----------------------------------------------------

The fetchers in the Web menu can also be run from the command line. Use the --fetch option and then pass both the name of a fetcher (for instance ieee, medline or jstor) and your search term or paper id and the given fetcher will be run. Note that some fetcher will still display GUI if they need feedback from you. To get a list of available fetchers run --fetch without parameters.
