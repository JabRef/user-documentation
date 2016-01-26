Fetching Medline entries
========================

To use this feature, choose **Search -&gt; Web search**, and the search interface will appear in the side pane. Select **Medline** in the dropdown menu.

MEDLINE is the U.S. National Library of Medicine's premier bibliographic database. It contains references to journal articles in life sciences with a concentration on biomedicine.

There are two ways of specifying which entries to download:

1.  Enter one or more Medline IDs (separated by comma/semicolon) in the text field.
2.  Enter a set of names and/or words to search for. You can use the operators *and* and *or* and parentheses to refine your search expression. See [Medline/OVID operators](http://www.ovid.com/site/products/ovidguide/medline.htm) for full description.
3.  Examples:
    1.  May \[au\] AND Anderson \[au\]
    2.  Anderson RM \[au\] HIV \[ti\]
    3.  Valleron \[au\] 1988:2000\[dp\] HIV \[ti\]
    4.  Valleron \[au\] AND 1987:2000\[dp\] AND (AIDS \[ti\] OR HIV\[ti\])
    5.  Anderson \[au\] AND Nature \[ta\]
    6.  Population \[ta\]

In both cases, press **Enter** or the **Fetch** button. If you use a text search, you will be prompted with the number of entries found, and given a choice of how many to download.

The entries fetched will be added to your currently active database.

Using a Proxy Server
--------------------

If you need to use an http proxy server, pass the server name and port number to java at runtime.

`java -Dhttp.proxyHost="hostname"     -Dhttp.proxyPort="portnumber"`

These environment settings are documented in the [Oracle J2SE documentation](http://docs.oracle.com/javase/1.4.2/docs/guide/net/properties.html).
