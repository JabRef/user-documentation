---
title: Unterstützung von XMP-Metadaten in JabRef
---

# Unterstützung von XMP-Metadaten in JabRef

XMP ist ein Standard, der von Adobe Systems entwickelt wurde, um Metadaten (Daten, die Informationen über andere Daten enthalten) in Dateien zu speichern. Ein bekanntes Beispiel für Metadaten sind ID3-Tags, die zur Beschreibung von Künstlern, Albumtiteln und Liednamen einer MP3-Datei verwendet werden. Mit Hilfe von Metadaten können MP3-Dateien unabhängig von ihrem Dateinamen identifiziert und z.B. von MP3-Playern ausgelesen und angezeigt werden.

Mit der XMP-Unterstützung versucht das JabRef-Team, die Vorteile von Metadaten in die Welt der Literaturmanager einzuführen. Sie können **XMP schreiben** im **Allgemein**-Tab des Eintragseditors wählen und damit alle BibTeX-Informationen in die verlinkte PDF-Datei schreiben. Wenn Sie diese PDF-Datei mit anderen austauschen, können diese die Datei in das JabRef-Fenster ziehen und haben damit alle Informationen zur Verfügung, die Sie eingegeben haben.

## Benutzung

Um die XMP-Funktionen in JabRef zu nutzen, gehen Sie folgendermaßen vor:

-   Zum *Importieren einer einzelnen PDF-Datei mit Metadaten* wählen Sie **Datei -&gt; Importieren in \[neue|aktuelle\] Datenbank** und im anschließenden Dialog als Dateiformat **PDF mit XMP-Anmerkungen** aus. Sie können die PDF-Datei stattdessen auch mit der Maus auf das Hauptfenster von JabRef ziehen.
-   Um *bibliographische Informationen in eine verlinkte PDF-Datei zu schreiben*, klicken Sie auf **XMP schreiben** im **Allgemein**-Tab des Eintragseditors.
-   Wenn Sie *alle PDFs einer Datei mit Metadaten versehen* wollen, wählen Sie **Extras -&gt; XMP-Metadaten in PDFs schreiben**.
-   Um zu überprüfen, ob das Schreiben der Metadaten funktioniert hat, öffnen Sie die Datei in Adobe Acrobat und wählen **Datei -&gt; Dokumenteigenschaften** und dann unter dem Reiter **Beschreibung** die Schaltfläche **Zusätzliche Metadaten**. Wenn Sie links "Erweitert" auswählen, sollten Sie im rechten Teil des Dialogs einen Eintrag "http://jabref.sourceforge.net/bibteXMP" sehen, der die entsprechenden Metadaten enthält. Dies geht nur mit dem Vollprogramm Adobe Acrobat, nicht mit dem Adobe Reader.
-   Wer kein Adobe Acrobat zur Verfügung hat, kann stattdessen das Programm *pdfinfo* verwenden, um die XMP-Metadaten zu überprüfen. *pdfinfo* ist Teil von Xpdf (`www.foolabs.com/xpdf`) und Poppler (`http://poppler.freedesktop.org`).

## BibteXmp Dateiformat

XMP nutzt zum Speichern der Daten eine Teilmenge des *Resource Description Framework* (RDF). Für JabRef wird ein neues Metadatenformat benutzt, das BibTeX sehr gut abbildet. Alle Felder und Werte werden in Knoten eines XML-Dokuments verwandelt. Nur Autoren und Herausgeber werden als rdf:Seq-Strukturen gespeichert, so dass die trennenden 'and's weggelassen werden können. Alle Strings und crossrefs werden in den Metadaten aufgelöst.

Das folgende einfache Minimal-Schema wird benutzt:

-   Der BibTeX-Key wird als `bibtexkey` gespeichert.
-   Der Eintragstyp wird als `entrytype` gespeichert.
-   `author` und `editor` sind kodiert als `rdf:Seq`s, wobei die einzelnen Autoren und Herausgeber als `rdf:li`s dargestellt werden.
-   Alle anderen Felder werden unter ihrem Feld-Namen gespeichert.

Es folgt ein Beispiel:

    @INPROCEEDINGS{CroAnnHow05,
      author = {Crowston, K. and Annabi, H. and Howison, J. and Masango, C.},
      title = {Effective work practices for floss development: A model and propositions},
      booktitle = {Hawaii International Conference On System Sciences (HICSS)},
      year = {2005},
      owner = {oezbek},
      timestamp = {2006.05.29},
      url = {http://james.howison.name/publications.md}
    }

wird umgewandelt in

    <rdf:Description xmlns:bibtex="http://jabref.sourceforge.net/bibteXMP/"
        bibtex:bibtexkey="CroAnnHow05"
        bibtex:year="2005"
        bibtex:title="Effective work practices for floss development: A model and propositions"
        bibtex:owner="oezbek"
        bibtex:url="http://james.howison.name/publications.md"
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

Beachten Sie die folgenden Warnungen, wenn Sie bibteXMP parsen möchten:

-   In RDF können Attribut-Wert-Paare auch als Knoten wiedergegeben werden und vice versa.

## Weiterführende Links

Einige Links zu XMP und PDFs mit Anmerkungen (englisch):

-   [James Howison's Blog "Themp---Managing Academic Papers like MP3s"](http://freelancepropaganda.com/themp/)
-   [XML.com-Artikel zu XMP](http://www.xml.com/pub/a/2004/09/22/xmp.md)
-   [PDFBox](http://pdfbox.apache.org/) von der Apache Software Foundation ist die von JabRef verwendete Java libraries zum Zugriff auf die PDFs und deren Metadaten
-   [Gute Diskussion bei ArsTechnica zum Management von PDFs.](http://arstechnica.com/civis/viewtopic.php?f=19&t=408429)
-   [Adobe XMP Spezifikation](http://www.adobe.com/content/dam/Adobe/en/devnet/xmp/pdfs/XMPSpecificationPart1.pdf)


