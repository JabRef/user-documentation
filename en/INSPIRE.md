---
title: Fetching entries from INSPIRE-HEP
helpCategories: ["Fetching entries from the web", "... using online bibliographic database"]
---

# Fetching entries from INSPIRE-HEP

[INSPIRE-HEP](https://inspirehep.net/?ln=en) is an open access digital library for the field of high energy physics ([Wikipedia](https://en.wikipedia.org/wiki/INSPIRE-HEP)).

To fetch entries from INSPIRE-HEP, choose **Search -&gt; Web search**, and the search interface will appear in the side pane. Select **INSPIRE** in the dropdown menu. To start a search, enter the words of your query, and press <kbd>Enter</kbd> or the **Fetch** button.

The results are displayed in the [import inspection window](ImportInspectionDialog).
In case an error occurs, it is shown in a popup.

## Query syntax

The INSPIRE-HEP search function merely passes your search queries onto the INSPIRE-HEP web search, so you should build your queries in the same way, except omitting the *find* or *fin* command. This help page will only give a brief introduction to the search queries. More extensive help on searching INSPIRE-HEP can be found on the page http://inspirehep.net/info/hep/search-tips .

Your query can be composed of several parts, combined using *and* and *or* as logical operators. Each part is composed of a letter or word indicating the type of field to search, followed by a space and the text to search for.

The following list shows some of the field indicators that can be used:

-   *a* or *author*: search author names
-   *t* or *title*: search in title
-   *j*: journal. Here either the common abbreviation or the 5 letter CODEN abbreviation for a journal can be used. Volume and page can also be included, separated by commas. For instance, *j Phys. Rev.,D54,1* looks in the journal Phys. Rev., volume D54, page 1.
-   *k*: search in keywords

Example queries:

-   *a smith and a jones*: search for references with authors "smith" and "jones"
-   *a smith or a jones*: search for references with either author "smith" or author "jones"
-   *a smith and not t processor*: search for author "smith" and omit references with "processor" in the title
