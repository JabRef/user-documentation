---
title: Fetching entries from MEDLINE
helpCategories: ["Fetching entries from the web", "... using online bibliographic database"]
---

# Fetching entries from MEDLINE

[MEDLINE](https://www.nlm.nih.gov/pubs/factsheets/medline.html) is a bibliographic database of life sciences and biomedical information. It includes bibliographic information for articles from academic journals covering medicine, nursing, pharmacy, dentistry, veterinary medicine, and health care. MEDLINE also covers much of the literature in biology and biochemistry, as well as fields such as molecular evolution ([Wikipedia](https://en.wikipedia.org/wiki/MEDLINE)).


To fetch entries from MEDLINE, choose **Search -&gt; Web search**, and the search interface will appear in the side pane. Select **MEDLINE** in the dropdown menu. To start a search, enter the words of your query, and press <kdb>RETURN</kdb> or the **Fetch** button.

There are two ways of specifying which entries to download:

1.  Enter one or more MEDLINE IDs (separated by comma/semicolon) in the text field.
2.  Enter a set of names and/or words to search for. You can use the operators *and* and *or* and parentheses to refine your search expression. See [MEDLINE/OVID operators](http://www.ovid.com/site/products/ovidguide/medline.htm) for full description.
  Examples:
    -  `May \[au\] AND Anderson \[au\]`
    -  `Anderson RM \[au\] HIV \[ti\]`
    -  `Valleron \[au\] 1988:2000\[dp\] HIV \[ti\]`
    -  `Valleron \[au\] AND 1987:2000\[dp\] AND (AIDS \[ti\] OR HIV\[ti\])`
    -  `Anderson \[au\] AND Nature \[ta\]`
    -  `Population \[ta\]`

In both cases, press <kdb>Return</kdb> or the **Fetch** button.
If you use a text search, you will be prompted with the number of entries found, and given a choice of how many to download.

Then, the results are displayed in the [import inspection window](ImportInspectionDialog).
In case an error occurs, it is shown in a popup.

## Using a Proxy Server

If you need to use an HTTP proxy server, you can configure JabRef to use a proxy using the "Network" preferences (**Options -&gt; Preferences -&gt; Network**).

## Mass downloading of articles

JabRef is not intended to be a tool for mass download of citations.
The purpose of the WebFetchers (such as the Medline Fetcher) is to simplify download of single, or at least few entries without using the browser. 
That means, one tries to import the bibliographic information of already known publications in a simple way.

However, it is still possible to import hundreds or even thousands of entries from medline using the export functionality of the database itself.
Perfom the search query you like, and then choose the "Send to" -&gt; "File" export (choose Medline or XML as format):

![medline-export](https://cloud.githubusercontent.com/assets/676652/21082470/83635c92-bfdc-11e6-9345-3dd2f356e18f.png)

 The downloaded file can then be imported using JabRefs "File" -&gt; "Import into current/new database" feature.
 Note: depending on the number the import might require some - or quite a lot of time.
 It was tried in 2016 with an exported XML file of 130MB an over 11000 found entries, which required more than 10 minutes of import.
 
 *Apart from fetching entries by using a full search it is also possible to directly create a BibTeX entry using the* ***BibTeX -&gt; New Entry*** *dialog. More details can be found [here](MedlinetoBibTeX).*
