---
title: Fetching entries from MEDLINE
---

# Fetching entries from MEDLINE

[MEDLINE](https://www.nlm.nih.gov/pubs/factsheets/medline.html) is a bibliographic database of life sciences and biomedical information. It includes bibliographic information for articles from academic journals covering medicine, nursing, pharmacy, dentistry, veterinary medicine, and health care. MEDLINE also covers much of the literature in biology and biochemistry, as well as fields such as molecular evolution ([Wikipedia](https://en.wikipedia.org/wiki/MEDLINE)).


To fetch entries from MEDLINE, choose **Search -&gt; Web search**, and the search interface will appear in the side pane. Select **MEDLINE** in the dropdown menu. To start a search, enter the words of your query, and press **Enter** or the **Fetch** button.

There are two ways of specifying which entries to download:

1.  Enter one or more MEDLINE IDs (separated by comma/semicolon) in the text field.
2.  Enter a set of names and/or words to search for. You can use the operators *and* and *or* and parentheses to refine your search expression. See [MEDLINE/OVID operators](http://www.ovid.com/site/products/ovidguide/medline.htm) for full description.
  Examples:
    -  May \[au\] AND Anderson \[au\]
    -  Anderson RM \[au\] HIV \[ti\]
    -  Valleron \[au\] 1988:2000\[dp\] HIV \[ti\]
    -  Valleron \[au\] AND 1987:2000\[dp\] AND (AIDS \[ti\] OR HIV\[ti\])
    -  Anderson \[au\] AND Nature \[ta\]
    -  Population \[ta\]

In both cases, press **Enter** or the **Fetch** button. If you use a text search, you will be prompted with the number of entries found, and given a choice of how many to download.

## Using a Proxy Server

If you need to use an http proxy server, pass the server name and port number to java at runtime.

`java -Dhttp.proxyHost="hostname"     -Dhttp.proxyPort="portnumber"`

These environment settings are documented in the [Oracle J2SE documentation](https://docs.oracle.com/javase/8/docs/technotes/guides/net/proxies.html).
