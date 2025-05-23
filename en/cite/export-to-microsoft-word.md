# Export to Microsoft Word

You can import your citations into a Microsoft Word document through JabRef's export feature. Please follow the steps below for instructions on how to export your JabRef sources into a Microsoft Word document.

1. Select the "File" tab in the upper lefthand corner of JabRef, hover over "Export", and select "Export selected entries". Be sure to save your file as a "MS Office 2007" file.
2. Open Microsoft Word and click on the "References" tab.
3. Select "Manage Sources", click "Browse", and locate the desired file. The file type should be an XML document.

    _**Mac OS users will not see a "Manage Sources" button. Mac users should follow these steps:**_

    a.) Copy the selected file to /Library/Containers/com.microsoft.word/Data/Library/Application Support/Microsoft/Office or alternatively to /Users/{username}/Library/Containers/com.microsoft.Word/Data/Library/Application Support/Microsoft/Office/ and name it Sources.xml

    b.) Restart Word

    c.) Select "References", and then select "Citations"

    d.) A sidebar will open on the right side of the window. Click the icon with three dots.

    e.) Click “Citation Sources Manager” from the drop down bar.

    f.) Copy over your citations from the masters list.
4. Click on "Bibliography" under the "References" tab to add your cited sources.

More discussion at [https://tex.stackexchange.com/a/351452/9075](https://tex.stackexchange.com/a/351452/9075). See [https://www.youtube.com/watch?v=2PpLZTol9\_o](https://www.youtube.com/watch?v=2PpLZTol9_o).

For a detailed list of the fields which are exported in the Office 2007 XML format see the following page.

{% content-ref url="../advanced/knowledge/msofficebibfieldmapping.md" %}
[msofficebibfieldmapping.md](../advanced/knowledge/msofficebibfieldmapping.md)
{% endcontent-ref %}

{% hint style="warning" %}
The only problem in the export could be when you have a "company" as author. That is simply exported as author and not in the company field.
{% endhint %}

{% hint style="info" %}
Another option is to use [Bibtex4Word](http://www.ee.ic.ac.uk/hp/staff/dmb/perl/index.html). See [https://www.youtube.com/watch?v=9j3g4wfdM00](https://www.youtube.com/watch?v=9j3g4wfdM00) for a video explaining the usage.
{% endhint %}
