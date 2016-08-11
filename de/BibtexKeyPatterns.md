---
title: Anpassen der automatischen Erstellung von BibTeX-Keys
---

# Anpassen der automatischen Erstellung von BibTeX-Keys

Im Tab "Key-Muster" im Dialog "Einstellungen" kann man die Felder bestimmen, die zur automatischen Generierung der BibTeX-Labels (bibtexkey) herangezogen werden. Das Muster kann für jeden der vorgegebenen Eintragstypen bestimmt werden.

## Key-Muster

Das Muster kann beliebigen Text enthalten, unabhängig von und zusätzlich zu den Feldmarken, die angeben, dass ein bestimmtes Feld des Eintrags an dieser Stelle des Keys eingefügt werden soll. Eine Feldmarke besteht gewöhnlich aus dem Feldnamen in eckigen Klammern, z.B. **\[volume\]**. Wenn dieses Feld zum Zeitpunkt der Erstellung des Keys leer ist, wird kein Text eingefügt.

Es gibt außerdem mehrere spezielle Feldmarken, die nur einen bestimmten Teil aus einem Feld extrahieren. Sie werden unten aufgelistet. Natürlich können Sie auch neue spezielle Feldmarken vorschlagen.

Spezielle Feldmarken:

-   **\[`auth`\]**: Der Nachname des ersten Autors.
-   **\[`authors`\]**: Die Nachnamen aller Autoren.
-   **\[`authorLast`\]**: Der Nachname des letzten Autors
-   **\[`authorsN`\]**: Die Nachnamen von bis zu N Autoren. Falls es mehr Autoren gibt, wird EtAl angehängt.
-   **\[`authorsAlpha`\]**: Wie bei dem BibTeX-Stil "alpha". Ein Autor: Erste drei Buchstaben des Nachnamens. Zwei bis vier Autoren: Der erste Buchstabe jedes Nachnamens wird hintereinandergehägt. Mehr als vier Autoren: Jeweils der erste Buchstabe der ersten drei Nachnamens wird hintereinandergehängt. Zusätzlich ein "+" am Ende.
-   **\[`authIniN`\]**: Der Anfang des Nachnamens von jedem Autoren, wobei nicht mehr als N Buchstaben verwendet werden.
-   **\[`authorIni`\]**: Die ersten 5 Buchstaben des Nachnamens des ersten Autors und die Initialen der Nachnamen der restlichen Autoren.
-   **\[`authN`\]**: Die ersten N Buchstaben des Nachnamens des ersten Autors.
-   **\[`authN_M`\]**: Die ersten N Buchstaben des Nachnamens des M. Autors.
-   **\[`auth.auth.ea`\]**: Die Nachnamen der beiden ersten Autoren und ".ea", falls es mehr als zwei Autoren sind.
-   **\[`auth.etal`\]**: Der Nachname des ersten Autors und der Nachname des zweiten Autors bei zwei Autoren bzw. ".etal" bei mehr als zwei Autoren.
-   **\[`authshort`\]**: Der Nachname bei einem Autor; der erste Buchstabe der Nachnamen von bis zu drei Autoren, falls mehr als ein Autor vorhanden ist. Ein Plus (+) wird angehängt, falls es mehr als drei Autoren gibt.

**Anmerkung:**Falls es keinen Autor gibt (z.B. bei einem Buch mit Herausgeber), benutzen die genannten \[auth...\]-Feldmarken den oder die Herausgeber, die im editor-Feld angegeben wurden. Also werden die Herausgeber eines Buches ohne Autor für die Label-Erstellung wie Autoren behandelt. Falls Sie dieses Verhalten nicht wünschen und die Feldmarke stattdessen bei einem leeren author-Feld zu nichts expandieren soll, müssen Sie **pureauth** statt **auth** verwenden, z.B.: **\[pureauth\]** oder **\[pureauthors3\]**.

-   **\[`edtr`\]**: Der Nachname des ersten Herausgebers.
-   **\[`editors`\]**: Die Nachnamen aller Herausgeber.
-   **\[`editorLast`\]**: Der Nachname des letzten Herausgebers.
-   **\[`edtrIniN`\]**: Der Anfang des Nachnamens von jedem Herausgeber, wobei nicht mehr als N Buchstaben verwendet werden.
-   **\[`editorIni`\]**: Die ersten 5 Buchstaben des Nachnamens des Herausgebers und die Initialen der Nachnamen der restlichen Herausgeber.
-   **\[`edtrN`\]**: Die ersten N Buchstaben des Nachnamens des ersten Herausgebers.
-   **\[`edtrN_M`\]**: Die ersten N Buchstaben des Nachnamens des M. Herausgebers.
-   **\[`edtr.edtr.ea`\]**: Der Nachname der ersten beiden Herausgeber und ".ea", falls es mehr als zwei Herausgeber sind.
-   **\[`edtrshort`\]**: Der Nachname bei einem Herausgeber; der erste Buchstabe der Nachnamen von bis zu drei Herausgebern, falls mehr als ein Herausgeber vorhanden ist. Ein Plus (+) wird angehängt, falls es mehr als drei Herausgeber gibt.
-   **\[`firstpage`\]**: Die erste Seitenzahl einer Veröffentlichung (pages).
-   **\[`keywordN`\]**: Stichwort Nummer N aus dem Feld "keywords", gesetzt den Fall, dass die Stichworte durch Komma oder Semikolon voneinander getrennt sind.
-   **\[`lastpage`\]**: Die letzte Seitenzahl einer Veröffentlichung (pages).
-   **\[`shorttitle`\]**: Die ersten 3 Worte eines Titels (title).
-   **\[`shortyear`\]**: Die letzten 2 Ziffern des Jahrgangs (year).
-   **\[`veryshorttitle`\]**: Die ersten beiden Worte des Titels (title), wobei 'the', 'a' und 'an' ausgelassen werden.

Hinter einem Feldnamen (oder einem der oben aufgeführten Pseudo-Feldnamen) kann ein Modifikator stehen. Modifikatoren werden in der Reihenfolge angewendet, in der sie angegeben wurden.

-   **:abbr**: Kürzt den Text, der von einem Feldnamen oder speziellen Feldmarken gebildet wird. Nur der erste Buchstabe und weitere Buchstaben, die auf ein Leerzeichen folgen, werden berücksichtigt. Zum Beispiel würde **\[journal:abbr\]** die Zeitschrift "Jorunal of Fish Biology" zu "JoFB" wandeln.
-   **:lower**: Wandelt den von der Feldmarke eingefügten Text in Kleinbuchstaben. So wird beispielsweise bei **\[auth:lower\]** der Nachname des ersten Autors in Kleinbuchstaben ausgegeben.

Wenn Sie keine Key-Muster für einen bestimmten Eintragstyp angeben, wird das vorgegebene Muster (default pattern) verwendet. Sie können das vorgegebene Muster natürlich ebenfalls anpassen - seine Einstellung befindet sich über der Liste der Eintragstypen im Tab **Key-Muster** des Dialogs **Einstellungen**.

Das vorgegebene Key-Muster ist \[auth\]\[year\], das Keys wie z.B. `Yared1998` generiert. Falls der Key in der geöffneten Datei nicht eindeutig sein sollte, wird einer der Buchstaben a-z angefügt, bis ein eindeutiger Key gefunden ist. Dementsprechend könnten die Labels wie folgt aussehen:

`Yared1998`
`Yared1998a`
`Yared1998b`

## Ersetzen eines regulären Ausdrucks

Nachdem das Key-Muster angewendet wurde, um einen BibTeX-Key zu erstellen, können Sie den Key-Generator nach einem bestimmten regulären Ausdruck suchen und ihn durch eine Zeichenfolge ersetzen lassen. Der reguläre Ausdruck und die Zeichenfolge, die ihn ersetzen soll, werden in den Textfeldern unter der Liste der Key-Muster eingegeben. Falls das Feld zur Ersetzung des regulären Ausdrucks leer ist, werden die mit der Suche übereinstimmenden regulären Ausdrücke einfach gelöscht.
