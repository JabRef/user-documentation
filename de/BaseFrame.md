---
title: Das Hauptfenster von JabRef
---

# Das Hauptfenster von JabRef

*Anmerkung:* Die meisten Menüfunktionen, auf die im Folgenden hingewiesen wird, haben Tastenkürzel, und viele Funktionen können über die Werkzeugleiste aufgerufen werden.

Dies ist das Hauptfenster, in dem Sie mit Ihrer Datei arbeiten. Unter der Menüleiste und der Werkzeugleiste befindet sich die Tableiste mit Tabs (Reitern) für jede Ihrer geöffneten Dateien. Wenn Sie einen dieser Tabs anklicken, erscheint eine Tabelle, die alle Datensätze und einige der Datenfelder auflistet.

-   Die Auswahl der entsprechenden Felder können Sie im **Einstellungs**-Dialog vornehmen.
-   Mit einem Doppelklick auf eine Tabellenzeile können Sie den Inhalt bearbeiten (der [Eintragseditor](EntryEditorHelp) wird geöffnet). Sie können mit den Pfeiltasten innerhalb der Tabelle navigieren. Wenn Sie einen Buchstaben drücken, springen Sie zu dem ersten Eintrag, der mit diesem Buchstaben beginnt (abhängig von der Spalte, nach der Sie die Tabelle sortiert haben).
-   Die Tabelle wird nach einem Feld Ihrer Wahl sortiert. Sie können das Standardverhalten unter **Optionen → Einstellungen → Tabellenansicht** angeben. Um die Sortierreihenfolge schnell zu ändern, klicken Sie einfach auf die Kopfzeile einer Spalte; damit haben Sie das primäre Sortierkriterium definiert. Klicken Sie erneut auf den Spaltenkopf, um die Sortierrichtung umzukehren. Ein weiterer Klick sorgt dafür, dass die Spalte nicht mehr zur Sortierung herangezogen wird. Halten Sie die CONTROL-Taste beim Klicken auf einen Spaltenknopf gedrückt, um eine zweite Spalte als sekundäres Sortierkriterium festzulegen. Sie können beliebig viele Spalten zur Sortierung heranziehen.
-   Sie können die Breite der Tabellenspalten einstellen, indem Sie die Trennlinie zwischen den Spaltenköpfen anklicken und verschieben. Die Reihenfolge der Spalten können Sie festlegen, indem Sie mit der Maus auf den Spaltenkopf klicken und die Spalte an die gewünschte Stelle ziehen.
-   Im **Einstellungs**-Dialog können Sie festlegen, ob die Tabelle an die Bildschirmgröße angepasst werden soll oder nicht. Aktivieren Sie diese Funktion, um sicherzustellen, dass Sie die gesamte Tabelle sehen können. Deaktivieren Sie diese Funktion, wenn mehr Informationen dargestellt werden sollen.
-   Die Farbanzeige kann ebenfalls im **Einstellungs**-Dialog ein- und ausgeschaltet werden. Die Farbanzeige illustriert, ob Ihre Daten vollständig sind, indem sie die Zellen wie folgt darstellt:
    -   Eine <span style="color: red">rote</span> Zelle in der linken Spalte kennzeichnet einen unvollständigen Eintrag.
    -   Eine <span style="color: #909000">gelbe</span> Zelle in der linken Spalte kennzeichnet einen Eintrag, der nicht alle benötigten Felder selbst enthält, der aber einen Querverweis enthält.
    -   Eine <span style="color: blue">blaue</span> Zelle kennzeichnet ein benötigtes Feld.
    -   Eine <span style="color: green">grüne</span> Zelle kennzeichnet ein optionales Feld.
    -   Eine farblose (weiße) Zelle kennzeichnet ein Feld, das von BibTeX für diesen Eintragstyp nicht benutzt wird. Das Feld can selbstverständlich in JabRef bearbeitet werden.

## Einen neuen Eintrag hinzufügen

Es gibt verschiedene Möglichkeiten, einen neuen Eintrag hinzuzufügen. Im Menü **BibTeX** führt ein Klick auf **Neuer Eintrag** zu einem Dialog, in dem Sie den Eintragstyp aus einer Liste wählen können. Um diesen Dialog zu umgehen, gibt es auch eigene Menüpunkte für jeden Eintragstyp und außerdem Tastenkürzel für die gängigsten Typen.

Wenn ein Eintrag hinzugefügt wird, wird standardmäßig ein [Editor](EntryEditorHelp) für den Eintrag geöffnet. Sie können dieses Verhalten im **Einstellungs**-Dialog abstellen.

*Anmerkung:* Wir empfehlen dringend, sich die Tastenkürzel für die Eintragstypen einzuprägen, die Sie am häufigsten benutzen, z.B. STRG-SHIFT-A für einen Zeitschriftenaufsatz (*article*).

## Einen Eintrag bearbeiten

Um den [Eintrags-Editor](EntryEditorHelp) zur Bearbeitung eines existierenden Eintrags zu öffnen, klicken Sie einfach doppelt auf die Zeile des Eintrags oder markieren den Eintrag und drücken auf ENTER.

## Einen *BibTeX* String in einem Feld verwenden

In JabRef schreiben Sie den Inhalt aller Felder so, wie Sie es in einem Texteditor machen würden, mit einer Ausnahme: um einen String (Anm. d. Übers.: eine Art Abkürzung) zu verwenden, umschließen Sie den Namen des Strings mit je einem \#, z.B.

  '\#jan\# 1997',

was interpretiert wird als String mit dem Namen 'jan' gefolgt von '1997'.

Vergleichen Sie auch die Hilfeseite zum [String-Editor](StringEditorHelp).
