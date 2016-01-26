# Suchfunktionen

*STRG-F* fokussiert das Suchfeld.

## Normale Suche

Hierbei sucht das Programm nach allen Vorkommen der Wörter ihres Suchausdrucks, sobald Sie ENTER drücken. Nur Einträge, die alle Wörter enthalten, gelten als Treffer. Um nach festen Ausdrücken zu suchen, müssen Sie die Wörter in doppelte Anführungszeichen einfassen. Zum Beispiel findet die Suchanfrage **progress "marine acquaculture"** Einträge, die sowohl das wort "progress" als auch den Ausdruck "marine acquaculture" aufweisen. Alle Einträge, die keine Treffer sind, werden entweder ausgeblendet, so dass nur die Treffer sichtbar sind (Option **Filter**), oder sie werden grau dargestellt, während die Treffer oben angezeigt werden (Option **Oben einsortieren**). Um die Trefferanzeige zu beenden, einfach den Suchbegriff Zurücksetzen, ESCAPE drücken oder auf die "Zurücksetzen" Schaltfläche klicken.

## <a href="" id="advanced">Feldbezeichner und logische Operatoren</a>

Um nur einige bestimmte Felder zu durchsuchen und/oder logische Operatoren im Suchbegriff zu benutzen, wird eine spezielle Syntax zur Verfügung gestellt. Um beispielsweise nach Einträgen mit dem Autor "Miller" zu suchen, geben Sie

author = miller

in das Suchfeld ein. Falls der Suchbegriff Leerzeichen enthält, schließen Sie ihn in Anführungszeichen ein. Benutzen Sie *nie* Leerzeichen in dem Feldbezeichner. Um beispielsweise nach Einträgen über Karl den Großen zu suchen, geben Sie folgendes ein:

title|keywords = "Karl der Große"

Sie können "and", "or", "not" und Klammern verwenden:

(author = miller or title|keywords = "Karl der Große") and not author = brown

... sucht nach Einträgen, in denen entweder der Autor "Miller" heißt oder im title- oder keywords-Feld der Begriff "Karl der Große" steht; gleichzeitig werden die Einträge mit dem Autor "Brown" nicht angezeigt.

Das "="-Zeichen ist eigentlich eine Abkürzung für "enthält" ("contains"). Wenn man nach genauen Treffern suchen möchte, muss man "==" oder "matches" ("übereinstimmen") eingeben. "!=" sucht nach Einträgen, bei denen der Suchbegriff *nicht* enthalten ist. Die Auswahl von Feldern, die durchsucht werden sollen (benötigte, optionale, allgemeine Felder), wird ignoriert, wenn man im Suchausdruck Feldbezeichner verwendet. Um nach Einträgen eines bestimmten Typs zu suchen, gibt es ein Pseudofeld namens "entrytype":

entrytype = thesis

… findet z.B. Einträge, deren Typ (wie in der Spalte "Entrytype" dargestellt) das Wort "thesis" enthält (z.B. "phdthesis" und "mastersthesis"). Ebenso erlaubt das Pseudofeld "bibtexkey" die Suche nach BibTeX-Keys, z.B.:

bibtexkey = miller2005

## Suchoptionen

Neben dem Suchfeld befinden sich Optionen für das Beachten von Groß- und Kleinschreibung und dem Nutzen regulärer Ausdrücke.
