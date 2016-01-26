---
title: EndNote Exportfilter
---

# EndNote Exportfilter

## Exportieren aus JabRef

JabRef kann Dateien so exportieren, dass EndNote sie lesen kann. Um diese Funktion zu nutzen, wählen Sie **Datei -&gt; Exportieren**, wählen als Dateityp **Endnote (txt)** und dann den Namen der Export-Datei.

## Importieren in EndNote

Der Standard-EndNote-Importfilter kann nicht richtig mit mehreren Autoren oder Editoren umgehen. Es gibt zwei Möglichkeiten, um diese Schwierigkeit zu umgehen:

1.  Benutzen Sie den eingebauten Filter und bessern Sie die Datei später aus. Um die Datei in EndNote zu öffnen, erstellen Sie eine neue Datei oder öffnen eine bestehende Datei in EndNote. Dann wählen Sie **Datei -&gt; Importieren**, klicken mit der Maus auf **Datei wählen**, wählen die exportierte Datei aus und drücken auf **Auswählen**. Anschließend drücken Sie auf **Import Optionen** und wählen **EndNote Import**. Mit einem Klick auf **Importieren** starten Sie den Importvorgang. Anschließend gehen Sie zum Menüpunkt **Bearbeiten -&gt; Text ändern** und ändern **Any Field** in **Author**. Geben Sie " and " in das Suchfeld ein (ohne Anführungszeichen) sowie ein RETURN-Zeichen in das Feld Ändern (Option-Return unter Mac OS X, Strg-Return unter Windows XP). Dann klicken Sie auf **Ändern**. Wiederholen Sie das Ganze für das Feld **Secondary Author** (Zweiter Autor).
2.  Installieren Sie den *EndNote Import from JabRef Filter* in *EndNote Extras*. Folgen Sie den Anweisungen in *Erweitert* (unten). Um die Datei in EndNote zu öffnen, erstellen Sie eine neue Datei oder öffnen eine bestehende Datei in EndNote. Dann wählen Sie **Datei -&gt; Importieren**, klicken auf **Datei wählen**, wählen die exportierte Datei aus und drücken auf **Auswählen**. Anschließend drücken Sie auf **Import Optionen** und wählen **EndNote Import from JabRef**. (Falls dieser Eintrag nicht erscheint, wählen Sie Weitere Filter. Wenn er dann immer noch nicht erscheint, wurde der Filter nicht korrekt installiert.) Klicken Sie schließlich auf **Importieren**, um den Importvorgang zu starten.

## Anmerkungen

Der EndNote Exportfilter ordnet BibTeX-Eintragstypen folgenden EndNote-Referenztypen zu:

    BibTeX-Eintragstyp -> Endnote Referenztyp
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

## Mehrere Autoren

In der Standardeinstellung geht der Exportfilter davon aus, dass Einträge in den Feldern author oder editor, die geklammert sind, mehrere Autoren enthalten und ersetzt die Klammern durch ein angehängtes Komma. Dadurch werden Einträge, die LaTeX-Befehle mit Klammern enthalten, als Eintrag mit mehreren Autoren gewertet und demzufolge unpassend formatiert.

## Erweiterte Benutzung: Endnote Extras

### Installieren des EndNote Import from JabRef Filters

Der vorgegebene EndNote-Importfilter kann das Feld author nicht richtig analysieren. Der EndNote Import from JabRef Filter kann dies. Außerdem erkennt dieser Filter ein Feld `endnotereftype`, das die vorgegebene Zuordnung überschreibt. Um den Filter zu installieren, extrahieren Sie die EndNote Extras (**Extras -&gt; EndNote Filter-Set entpacken**) und entpacken die Zip-Datei, die dabei erstellt wird. Dann folgen Sie den Angaben in der Datei `readme.txt`.

### Ändern der EndNote Referenztypen

Einige Felder, die von BibTeX genutzt werden, gehören nicht zu EndNotes vorgegebenen Referenztypen. Während der Import in JabRef und der Export nach JabRef ohne ein Ändern der Referenztypen funktioniert, werden die Feldnamen in EndNote nicht korrekt dargestellt (z.B. wird das pdf-Feld *Custom 1* heißen statt *pdf*). Darüber hinaus können diese Felder bei neuen Einträgen in EndNote nicht genutzt werden, weil sie nicht im Eintragsdialog erscheinen. Um die EndNote-Referenztypen anzupassen, müssen Sie die EndNote Extras extrahieren und den Anweisungen in der Datei `readme.txt` folgen.

### Exportieren nach JabRef

EndNote hat einen Export-Stil BibTeX, der allerdings nicht alle Eintragstypen und Felder von BibTeX und auch nicht die zusätzlich von JabRef genutzten Allgemeinen Felder (*pdf, owner, key* usw.) unterstützt. Falls Sie diese Felder nutzen wollen, extrahieren Sie die EndNote Extras (**Extras -&gt; EndNote Filter-Set entpacken**) und folgen den Anweisungen in der Datei `readme.txt`.
