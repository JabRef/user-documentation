# Fetching entries from INSPIRE-HEP

[INSPIRE-HEP](https://inspirehep.net/?ln=en) is an open access digital library for the field of high energy physics \([Wikipedia](https://en.wikipedia.org/wiki/INSPIRE-HEP)\).

To fetch entries from INSPIRE-HEP, choose **Search → Web search**, and the search interface will appear in the side pane. Select **INSPIRE** in the dropdown menu. To start a search, enter the words of your query, and press Enter or the **Fetch** button.

The results are displayed in the [import inspection window](../import-export/README.md). In case an error occurs, it is shown in a popup.

## Query syntax

The INSPIRE-HEP search function merely passes your search queries onto the INSPIRE-HEP web search, so you should build your queries in the same way, except omitting the _find_ or _fin_ command. This help page will only give a brief introduction to the search queries. More extensive help on searching INSPIRE-HEP can be found on the page [http://inspirehep.net/info/hep/search-tips](http://inspirehep.net/info/hep/search-tips) .

Your query can be composed of several parts, combined using _and_ and _or_ as logical operators. Each part is composed of a letter or word indicating the type of field to search, followed by a space and the text to search for.

The following list shows some of the field indicators that can be used:

* _a_ or _author_: search author names
* _t_ or _title_: search in title
* _j_: journal. Here either the common abbreviation or the 5 letter CODEN abbreviation for a journal can be used. Volume and page can also be included, separated by commas. For instance, _j Phys. Rev.,D54,1_ looks in the journal Phys. Rev., volume D54, page 1.
* _k_: search in keywords

Example queries:

* _a smith and a jones_: search for references with authors "smith" and "jones"
* _a smith or a jones_: search for references with either author "smith" or author "jones"
* _a smith and not t processor_: search for author "smith" and omit references with "processor" in the title

