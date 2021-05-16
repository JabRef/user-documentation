# EndNote Export Filter

{% hint style="warning" %}
This information is outdated. Please help to improve it.
{% endhint %}

## Export from JabRef

JabRef can export databases to EndNote-readable files. To use this feature, choose **File → Export**, choose the file type **Endnote \(txt\)** and then specify the name of the export file.

## Import to EndNote

The default EndNote Import filter does not handle multiple authors or editors properly. There are two options to work around this:

1. Use the built-in filter and fix the file later. To open up the file in EndNote, create a new database or open an old database in EndNote. Then select **File → Import**, click on **Choose File**, then highlight the exported file and click **Choose**. Click on **Import Options** and select **EndNote Import**. Click **Import** to start the import. After import, select **Edit→ Change Text**. Change **Any Field** to **Author**. Enter " and " into the search field \(without quotes\). enter a return character into the change field \(Option + Enter on Mac OS X, Ctrl + Enter on Windows XP\). Click **Change**. Repeat with the **Secondary Author** field.
2. Install the _EndNote Import from JabRef filter_ in the _EndNote Extras_. Follow the instructions in _Advanced Use_ below. To open up the file in EndNote, create a new database or open an old database in EndNote. Then select **File → Import**, click on **Choose File**, then highlight the exported file and click **Choose**. Click on **Import Options** and select **EndNote Import from JabRef** \(if it does not appear, select Other filters. If it still doesn't appear, it was not correctly installed.\) Click **Import** to start the import.

## Notes

The EndNote Export filter maps BibTeX entrytypes to EndNote reference types as follows:

```text
BibTeX entrytype -> EndNote Reference Type
------------------------------------------
misc, other -> Generic
unpublished -> Manuscript
manual -> Computer Program
article -> Journal Article
book -> Book
booklet -> Personal Communication
inbook,incollection -> Book Section
inproceedings -> Conference Proceedings
techreport -> Report
mastersthesis, phdthesis -> Thesis
```

## Corporate Authors

By default, the export filter assumes that entries in the author or editor fields in brackets are corporate authors and replaces the brackets with a trailing comma. However, this means that entries that include LaTeX code in brackets will be assumed to be corporate authors and therefore will be improperly formatted.

## Advanced Use: EndNote Extras

For better interoperability between EndNote and JabRef, download the EndNote filter set from the Resources page of JabRef's web page.

