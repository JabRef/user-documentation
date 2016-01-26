---
title: Über *BibTeX*
---

# Über *BibTeX*

JabRef hilft Ihnen bei der Arbeit mit Ihren *BibTeX*-Dateien, aber es müssen dennoch Regeln beachtet werden, wenn Sie Ihre Einträge bearbeiten. Nur so kann sichergestellt werden, dass *BibTeX* Ihre Datei richtig verarbeiten kann.

## *BibTeX* Felder

Es gibt viele unterschiedliche Felder in *BibTeX* und einige zusätzliche Felder, die Sie in JabRef einsetzen können.

Grundsätzlich können Sie LaTeX-Befehle in Feldern, die Text beinhalten, einsetzen. *BibTeX* wird Ihr Literaturverzeichnis automatisch formatieren und je nach *BibTeX* style (Stildatei .bst) Großbuchstaben verkleinern. Um sicherzustellen, dass einzelne Buchstaben groß bleiben, müssen Sie sie in Klammern einschließen, wie im Wort {B}elgien. *(Anm. d. Übers.: Die meisten deutschen BibTeX-Stile behalten die Großbuchstaben ohnehin bei.)*

Hinweise zu einigen Feldtypen:

-   **Bibtexkey
    **Eine eindeutige Bezeichnung, um sich in LaTeX-Dokumenten auf den Eintrag beziehen zu können. Beachten Sie, dass der Bibtexkey genau mit dem Verweis im LaTeX-Dokument übereinstimmen muss (auch die Groß-/Kleinschreibung).
-   **address
    ** Der Ort des *Verlags* oder einer anderen Institution.
-   **annote
    ** Eine Anmerkung. Dieses Feld wird von den Standard-Bibliographiestilen nicht verwendet, kann aber bei einigen Stilen benutzt werden, um eine kommentierte Literaturliste zu erstellen.
-   **author
    ** Dieses Feld sollte alle Autoren Ihres Eintrags enthalten. Die Namen werden durch das Wort `and` getrennt, auch wenn es mehr als zwei Autoren gibt. Jeder Name kann in zwei gleichwertigen Formen notiert werden:
    -   Donald E. Knuth *oder* Knuth, Donald E.
    -   Eddie van Halen *oder* van Halen, Eddie

    Die zweite Form sollte für Autoren mit zwei oder mehr Nachnamen benutzt werden, um zwischen dem mittleren und dem Nachnamen zu unterscheiden.
-   **booktitle
    ** Der Titel eines Buches, aus dem ein Teil zitiert wird. Falls Sie ein Buch zitieren wollen, nehmen Sie für den Titel stattdessen das `title`-Feld.
-   **chapter
    ** Eine Kapitelnummer (oder Abschnittsnummer oder was-auch-immer-Nummer).
-   **crossref
    ** Der `key` eines Eintrags, auf den ein Querverweis gesetzt wird. Damit lassen sich beispielsweise die Daten eines Sammelbandes in einem Eintrag für einen Aufsatztitel wiederverwenden, ohne sie bei jedem Aufsatztitel explizit einzutragen. Die Funktionalität von `crossref` ist jedoch nicht in jedem Fall praktikabel.
-   **edition
    ** Die Auflage eines Buch, z.B. ,,Zweite\`\`. Die Ordnungszahl sollte mit einem Großbuchstaben beginnen; sie wird von den Standardstilen gegebenenfalls in Kleinbuchstaben umgewandelt. Manche Stile verlangen hier eine Ziffer.
-   **editor
    ** Dieses Feld ist analog zu dem *author*-Feld. Falls zusätzlich ein `author`-Feld angegeben wird, bezeichnet das `editor`-Feld den Herausgeber des Buches oder des Sammelbandes, in dem die referenzierte Literatur erschienen ist.
-   **howpublished
    ** Die Art, wie ein Werk veröffentlicht wurde (meist außerhalb eines Verlags). Das erste Wort sollte mit einem Großbuchstaben beginnen.
-   **institution
    ** Die fördernde Institutions eines technischen Reports.
-   **journal
    ** Ein Zeitschriftenname. Mit Hilfe von "Strings" können Zeitschriftennamen abgekürzt werden. Zum Erstellen eines solchen Strings können Sie den [String-Editor](StringEditorHelp.md) benutzen oder die Funktionalität zur [Abkürzung von Zeitschriftentiteln](JournalAbbreviations.md) verwenden.
-   **key
    ** Dieses Feld wird zur Sortierung, zur Erstellung von Labels (falls kein `author` vorhanden ist) und für Querverweise (`crossref`) verwendet. Verwechseln Sie dieses Feld nicht mit dem `Bibtexkey`, der für die `\cite`-Kommandos gebraucht wird und am Anfang jedes Eintrags erscheint (im BibTeX-Quelltext).
-   **month
    ** Der Monat, in dem ein Werk veröffentlicht oder geschrieben wurde. Benutzen Sie am besten die englischen Abkürzungen (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec).
-   **note
    ** Zusätzliche Infromationen. Das erste Wort sollte mit einem Großbuchstaben beginnen.
-   **number**
    Die Nummer einer Zeitschrift, eines technischen Reports oder eines Bandes innerhalb einer Reihe (`series`). Zeitschriften haben oft eine Band- und Heftzählung, der Band entspricht dem `volume`-, das Heft dem `number`-Eintrag.
-   **organization
    ** Die Organisation, die einen Konferenzband fördert.
-   **pages
    ** Die Seitenzahl(en) oder der Seitenzahlbereich, z.B. `42-111` oder `7,41,73-97` or `43+` (das \``+`' deutet auf folgende Seiten, die nicht einen einfachen Bereich umfassen). Ein einfacher Bindestrich (wie in `7-33`) wird in einen doppelten Bindestrich (`--`) verwandelt, der in TeX den bis-Strich anzeigt (also 7–33).
-   **publisher
    ** Der Name des Verlags.
-   **school
    ** Der Name einer Universität, an der eine Abschlussarbeit - z.B. eine Dissertation (`phdthesis`) oder Magisterarbeit (`mastersthesis`) - geschrieben wurde.
-   **series
    ** Der Name einer Reihe, in der ein Buch erschienen ist. Falls die Bücher einer Reihe nummeriert sind, wird die entsprechende Nummer im Feld `number` angegeben.
-   **title
    ** Der Titel des Werkes. Die Groß- und Kleinschreibung kann von den Bibliographiestilen und der benutzten Sprache abhängig sein (wobei sie mit deutschen Bibliographiestilen beibehalten wird). Worte, die auch bei Verwendung englischer Bibliographiestile groß geschrieben werden sollen, müssen in geschweifte Klammern eingefasst werden (z.B. `A {German} title`).
-   **type
    ** Der Typ eines technischen Reports, z.B. \`\`Research Note''. Bei *jurabib* wird dieses Feld auch für den Typ einer Abschlussarbeit verwendet.
-   **volume
    ** Der Band (Jahrgang) einer Zeitschrift oder der Band eines Buches in einem mehrbändigen Werk.
-   **year
    ** Das Jahr der Veröffentlichung (oder bei einem unveröffentlichten Werk das Jahr, in dem es geschrieben wurde). Normalerweise sollte im `year`-Feld nur eine vierstellige Zahl stehen, z.B. `1984`. Die Standardstile können aber auch mit `year`-Einträgen umgehen, deren letzte vier Zeichen (ausgenommen Satzzeichen) Ziffern sind, beispielsweise `(um 1984)`. Dieses Feld wird für die meisten Eintragstypen benötigt.

## Andere Felder

Bibliographie-Stile für BibTeX wurden von vielen Leuten entwickelt, und einige haben weitere Felder erstellt. Es folgt eine kleine Auswahl.

Feldnamen, die mit einem Stern\* versehen sind, werden nicht direkt von JabRef unterstützt, können aber eingebunden werden (siehe [Eintragstypen anpassen](CustomEntriesHelp.md)).

-   **<span style="font-weight: normal; font-style: italic;"> affiliation\*</span>
    ** Die Zugehörigkeit eines Autors.
-   **abstract
    ** Die Zusammenfassung eines Werks.
-   **<span style="font-weight: normal; font-style: italic;"> contents\*</span>
    ** Ein Inhaltsverzeichnis.
-   **<span style="font-weight: normal; font-style: italic;"> copyright\*</span>
    ** Copyright-Informationen.
-   **doi
    ** Der *Digital Object Identifier* ist eine permanente Kennung von Dokumenten.
-   **eid
    ** Der EID (*Electronic identifier*) wird für elektronische Zeitschriften benutzt, die auch im Druck erscheinen. Mit dieser Nummer, die die Seitenzahlen ersetzt, lässt sich der Artikel in der gedruckten Ausgabe finden. Der EID wird manchmal auch *citation number* genannt.
-   **<span style="font-weight: normal; font-style: italic;"> ISBN\*</span>
    ** Die Internationale Standardbuchnummer.
-   **<span style="font-weight: normal; font-style: italic;"> ISSN\*</span>
    ** Die Internationale Standardseriennummer (für Zeitschriften).
-   **keywords
    ** Stichworte, können in JabRef gut zum Gruppieren verwendet werden.
-   **<span style="font-weight: normal; font-style: italic;"> language\*</span>
    ** Die Sprache des Werks.
-   **<span style="font-weight: normal; font-style: italic;"> location\*</span>
    ** Der Ort, der mit einem Werk in Verbindung steht, z.B. die Stadt, in der eine Konferenz stattgefunden hat.
-   **<span style="font-weight: normal; font-style: italic;"> LCCN\*</span>
    ** Die *Library of Congress Call Number*. Manchmal heißt das Feld auch `lib-congress`.
-   **<span style="font-weight: normal; font-style: italic;"> mrnumber\*</span>
    ** Die *Mathematical Reviews*-Nummer.
-   **<span style="font-weight: normal; font-style: italic;"> price\*</span>
    ** Der Preis.
-   **<span style="font-weight: normal; font-style: italic;"> size\*</span>
    ** Die physische Größe eines Dokuments.
-   **url
    ** Der *Uniform Resource Locator* (URL, "einheitlicher Quellenanzeiger"), der auf eine Webseite im Internet verweist.
-   **urldate
    ** Das Datum, an dem eine Webseite zuletzt besucht wurde.


