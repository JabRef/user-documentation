# XMP metadata support in JabRef

XMP is a standard created by Adobe Systems for storing metadata \(data about data\) in files. An well known example for metadata are MP3 tags, which can be used to describe artist, album and song name of a MP3 file. Adding metadata to MP3 helps other people to identify the songs correctly independent of file-name and can provide means for software \(MP3 players for instance\) to sort and group songs.

With XMP-support the JabRef team tries to bring the advantages of metadata to the world of reference managers. You can now choose to "Write XMP" metadata in the General Tab of JabRef, which will put all the Bib\(la\)TeX information into the PDF. If you then email this PDF to a colleague she can just drag the file into JabRef and all information that you entered will be available to her.

## Usage

To use the XMP-feature in JabRef you can do the following:

* To **import a single annotated PDF-file** that contains XMP you can select "File → Import into... → XMP-annotated PDF" or drag the file into the main view.
* To **write the bibliographic information to the associated PDF** do the following: Double click the entry in the main view, go to the "General" tab and click on "Write XMP".
* If you want **to annotate all the PDFs in a given database** you can select "Tools → Write XMP for database"
* To verify if it worked you can open the PDF in Adobe Acrobat and select "File → Document Properties → Additional Metadata → Advanced". In the tree to the right you should see an entry called "[http://purl.org/net/bibteXMP](http://purl.org/net/bibteXMP)". This works only with Adobe Acrobat, not with Adobe Reader.
* If you don't have Adobe Acrobat, you can use `pdfinfo` instead in order to see the XMP metadata. `pdfinfo` is part of [Xpdf](http://www.foolabs.com/xpdf/) and [Popple](http://poppler.freedesktop.org).

## BibTeXmp Fileformat

XMP uses a subset of the Resource Description Framework \(RDF\) to store data. For JabRef a new metadata format is used which maps very closely to BibTeX. Basically all fields and values are turned into nodes of an XML document. Only authors and editors are stored as rdf:Seq-structures, so users of the data can skip the splitting on 'and's. All strings and crossrefs will be resolved in the data.

The following easy minimal schema is used:

* The citation key is stored as `citationkey`.
* The type of the BibTeX entry is stored as `entrytype`.
* `author` and `editor` are encoding as `rdf:Seq`s where the individual authors are represented as `rdf:li`s.
* All other fields are saved using their field-name as is.

The following is an example of the mapping

```text
@INPROCEEDINGS{CroAnnHow05,
  author = {Crowston, K. and Annabi, H. and Howison, J. and Masango, C.},
  title = {Effective work practices for floss development: A model and propositions},
  booktitle = {Hawaii International Conference On System Sciences (HICSS)},
  year = {2005},
  owner = {oezbek},
  timestamp = {2006.05.29},
  url = {http://james.howison.name/publications}
}
```

will be transformed into

```markup
<rdf:Description xmlns:bibtex="http://jabref.sourceforge.net/bibteXMP/"
    bibtex:bibtexkey="CroAnnHow05"
    bibtex:year="2005"
    bibtex:title="Effective work practices for floss development: A model and propositions"
    bibtex:owner="oezbek"
    bibtex:url="http://james.howison.name/publications"
    bibtex:booktitle="Hawaii International Conference On System Sciences (HICSS)"
    bibtex:timestamp="2006.05.29">
        <bibtex:author>
            <rdf:Seq>
                <rdf:li>K. Crowston</rdf:li>
                <rdf:li>H. Annabi</rdf:li>
                <rdf:li>J. Howison</rdf:li>
                <rdf:li>C. Masango</rdf:li>
            </rdf:Seq>
        </bibtex:author>
    <bibtex:entrytype>Inproceedings</bibtex:entrytype>
</rdf:Description>
```

Beware of the following caveats if you trying to parse BibTeXMP:

* In RDF attribute-value pairs can also be expressed as nodes and vice versa.

## Related Links

Some links about XMP and annotating PDFs

* [Wikipedia Article](https://en.wikipedia.org/wiki/Extensible_Metadata_Platform)
* [James Howison's blog "Themp---Managing Academic Papers like MP3s"](https://web.archive.org/web/20110424121251/http://freelancepropaganda.com/themp/)
* [Good thread on ArsTechnica discussing the management of PDFs.](http://arstechnica.com/civis/viewtopic.php?f=19&t=408429)

