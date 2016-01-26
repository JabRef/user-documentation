Searching
=========

Keyboard shortcuts
------------------

*CTRL-F* focuses the search interface.

Search modes
------------

There are two search modes in JabRef.

### Normal search

In a normal search, the program searches your database for all occurrences of the words in your search string, once you entered it. Only entries containing all words will be considered matches. To search for sequences of words, enclose the sequences in double quotes. For instance, the query **progress "marine aquaculture"** will match entries containing both the word "progress" and the phrase "marine aquaculture". All entries that don't match are hidden, leaving for display the matching entries only (filter mode), or are grayed-out (float mode). To stop displaying the search results, just clear the search field again, press ESCAPE or click on the "Clear" button.

### <a href="" id="advanced"></a>Advanced search

In order to search specific fields only and/or include logical operators in the search expression, a special syntax is available in which these can be specified. E.g. to search for entries whose author is "Miller", enter:

author = miller

Both the field specification and the search term support regular expressions. If the search term contains spaces, enclose it in quotes. Do *not* use spaces in the field specification! E.g. to search for entries about image processing, type:

title|keywords = "image processing"

You can use "and", "or", "not", and braces as intuitively expected:

(author = miller or title|keywords = "image processing") and not author = brown

The "=" sign is actually a shorthand for "contains". Searching for an exact match is possible using "matches" or "==". Using "!=" tests if the search term is *not* contained in the field (equivalent to "not ... contains ..."). The selection of field types to search (required, optional, all) is always overruled by the field specification in the search expression. To search for entries of a certain type, a pseudo field called "entrytype" is available:

entrytype = thesis

This finds entries whose type (as displayed in the "Entrytype" column) contains the word "thesis" (which would be "phdthesis" and "mastersthesis"). Another pseudo field "bibtexkey" allows to search for citation keys, e.g.

bibtexkey = miller2005

Search settings
---------------

Next to the search text field, there are check boxes to toggle case sensitivity and use of regular expressions in the search.
