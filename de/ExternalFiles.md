---
title: Links zu PDF- und PS-Dateien, URLs und DOIs in JabRef
---

# Links zu PDF- und PS-Dateien, URLs und DOIs in JabRef

**Anmerkung:** Ab JabRef 2.3 gibt es ein [verbessertes System für Links zu externen Dateien](FileLinks).

Mit JabRef können Sie Ihre Einträge mit den entsprechenden PDF- oder PS-Dateien, die sich auf Ihrem Computer befinden, verlinken. Ebenso ist es möglich, Dateien im Internet über ein URL oder DOI zu verlinken.

## Externe Betrachter einrichten

JabRef benötigt Informationen darüber, welche Programme es für PDF- und PS-Dateien und Internetseiten benutzen soll. In der Standardeinstellung werden sie auf Werte gesetzt, die wahrscheinlich zu Ihrem Betriebssystem passen, so dass eine gute Chance besteht, dass Sie diese Werte nicht zu verändern brauchen.

Um die Einstellungen der externen Programme zu ändern, öffnen Sie den Unterpunkt *Externe Programme* im Dialog *Optionen → Einstellungen*.

## Externe Dateien oder Links öffnen

Es gibt verschiedene Möglichkeiten, wie man externe Dateien oder Internetseiten aus JabRef öffnen kann. Im Eintrags-Editor können Sie einfach auf das Textfeld, das ein DOI oder URL enthält, doppelklicken. In der Tabellenansicht können Sie einen Eintrag auswählen und die Menüeinträge (unter *Extras*), die Tastenkombinationen (in der Standardeinstellung F4 für PDF/PS und F3 für DOI/URL) oder das Kontextmenü (mit der rechten Maustaste) benutzen, um die Datei oder Internetseite zu öffnen. Schließlich können Sie auch auf ein PDF-, PS-, URL- oder DOI-Icon in der Tabelle klicken.

In der Standardeinstellung zeigt die Tabellenansicht zwei Spalten mit Icons für die Einträge, die mit externen Dateien oder URLs verlinkt sind. Beide Spalten können im Unterpunkt *Tabellenansicht* des Dialogs *Optionen → Einstellungen* ausgeblendet werden. Die zweite Spalte zeigt Icons für PDF- oder PS-Dateien (nur PDF, wenn beide vorhanden sind), die dritte Spalte zeigt Icons für URL oder DOI (nur URL, wenn beide vorhanden sind).

## Der Standard-Ordner für PDF-Dateien

PDF-Dateien erhalten von JabRef eine "Spezialbehandlung", um das Verlinken mit den entsprechenden Einträgen so einfach wie möglich zu gestalten. Um diese "Spezialbehandlung" nutzen zu können, müssen Sie im Unterpunkt *Externe Programme* des Dialogs *Optionen → Einstellungen* einen Ordner als Standard-Ordner für Ihre PDF-Dateien angeben. Alle PDF-Dateien, die in diesem Ordner oder einem Unterordner gespeichert sind, werden mit einer relativen Pfadangabe referenziert, so dass Sie problemlos PDF-Verzeichnisse verschieben oder mit mehreren Benutzern von verschiedenen Netzwerkarbeitsplätzen aus an derselben Datei arbeiten können.

Wenn Sie Ihren PDF-Dateien dann noch Namen geben, die mit dem BibTeX Key des entsprechenden Eintrags übereinstimmen (plus '.pdf' im Dateinamen), sucht JabRef in Ihrem Standard-PDF-Ordner und dessen Unterordnern nach der richtigen PDF-Datei. Sobald die korrekt benannte PDF-Datei sich dort befindet, klicken Sie auf die Schaltfläche *Auto* neben dem PDF-Feld im Eintrags-Editor. Wenn die PDF-Datei gefunden wird, wird das Feld entsprechend gesetzt.

Wenn Sie eine PDF-Datei wie beschrieben benennen, können Sie sie auch öffnen, ohne das PDF-Feld überhaupt zu benutzen. Der Nachteil ist in diesem Fall allerdings, dass das PDF-Icon in der Tabellenansicht nicht angezeigt wird, solange das PDF-Feld leer bleibt.

## Dateispezifische PDF- und PS-Verzeichnisse

Sie können für jede Datei eigene PDF- und PS-Verzeichnisse angeben (**Datei → Eigenschaften der Datei**). Diese Verzeichnisse ersetzen dann die Standardverzeichnisse.

## <a href="" id="RegularExpressionSearch">Die Suche mit regulären Ausdrücken für automatische Verknüpfungen nutzen</a>

Wenn Sie Dateinamen verwenden, die dem bibtexkey ergänzt um die Dateiendung entsprechen, findet JabRef diese Dateien automatisch.

Ab Version 2.2 ist mit Hilfe von regulären Ausdrücken eine größere Flexibilität beim Benennen der Dateien gewährleistet. In den meisten Fällen dürfte das Standardverhalten bereits ausreichend sein.

In den Einstellungen zu externen Programmen (**Optionen → Einstellungen → Externe Programme**) findet sich eine Option "Suche mit regulärem Ausdruck benutzen". Wenn Sie diese Option aktivieren, können Sie für die Suche in PDF-Verzeichnissen einen eigenen regulären Ausdruck angeben.

Die folgende Syntax wird verwendet:

-   `*` - Suche in allen direkten Unterverzeichnissen, NICHT im aktuellen Verzeichnis und in Unterverzeichnissen zweiter oder tieferer Ebene.
-   `**` - Rekursive Suche in allen Unterverzeichnissen UND im aktuellen Verzeichnis.
-   `.` und `..` - Das aktuelle Verzeichnis und das Elternverzeichnis (eine Ebene höher).
-   `[title]` - Alle Ausdrücke in eckigen Klammern werden durch den Inhalt des entsprechenden Felds ersetzt.
-   `[extension]` - Wird durch die Dateiendung des Feldes, das Sie benutzen, ersetzt.
-   Anderer Text wird als regulärer Ausdruck interpretiert. Aber Vorsicht: *backslashes* müssen mit einem weiteren *backslash* *escaped* werden (`\\`), damit sie nicht mit Separatoren in Pfad-Angaben verwechselt werden.

Der Standard ist `**/.*[bibtexkey].*\\.[extension]`. Damit wird in allen Unterverzeichnissen des Ordners der entsprechenden Dateiendung (z.B. das PDF-Verzeichnis) nach allen Dateien mit der richtigen Dateiendung gesucht, die den bibtexkey in ihrem Namen haben.
