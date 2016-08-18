---
title: Fetching entries from GVK
---

# Fetching entries from GVK

[GVK](https://gso.gbv.de), the GBV Union Catalogue, is a multimaterial bibliographic database of seven German federal states. It covers  41.5 million records of books, conference proceedings, periodicals, dissertations, microfilms and electronic resources. 

To fetch entries from GVK, choose **Search -&gt; Web search**, and the search interface will appear in the side pane. Select **GVK (Gemeinsamer Verbundkatalog)** in the dropdown menu. To start a search, enter the words of your query, and press **Enter** or the **Fetch** button.

The results are displayed in the [import inspection window](ImportInspectionDialog).
In case an error occurs, it is shown in a popup.

# Advanced search

You can simply enter words / names / years you want to search for, or you can specify search keys. Supported keys are:

-   all - all words. Not specifYing a search key results in an "all" search
-   tit - title words
-   per - authors, editors, etc.
-   thm - topics
-   slw - key words
-   txt - tables of content
-   num - numbers, e.g. ISBN
-   kon - names of conferences
-   ppn - Pica Production Numbers of the GVK
-   bkl - Basisklassifikation-numbers
-   erj - year of publication

### Notes

-   queries can be combined with "and". The use of "and" is optional, though.
-   in many cases you can use the truncation sign "?"
-   spaces in person names are not supported yet. Please use the truncation sign ? after the first name for several given names. E.g. "per Maas,jan?"

### Sample queries

-   "marx kapital"
-   "per grodke and tit db2"
-   "per Maas,jan?"

