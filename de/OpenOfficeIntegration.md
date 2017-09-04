---
title: JabRef-Bibliographien in OpenOffice.org benutzen
---

# JabRef-Bibliographien in OpenOffice.org benutzen

JabRef kann Ihre Datei sowohl in das OpenOffice.org 1.1 **.sxc**-Tabellenkalkulationsformat als auch in das OpenDocument **.ods**-Tabellenkalkulationsformat, das von OpenOffice.org 2.0 benutzt wird, exportieren.

In beiden fällen besteht die exportierte Tabelle aus einem Arbeitsblatt, das die Einträge in Reihen und die unterschiedlichen Felder in Spalten enthält. Die Reihenfolge und Bennung der Spalten ist kompatibel zu den Literaturverzeichnis-Funktionen von OpenOffice.org (OOo 1.1: **.sxc**, OOo 2.0: **.ods**).

Je nach Ihrer Version von OpenOffice.org gibt es verschiedene Vorgehensweisen, um JabRef zum Verwalten Ihrer bibliographischen Datenbank zu benutzen:

## Die exportierte Datei als bibliographische Datenbank in OpenOffice.org 2.3 und 2.4 benutzen

Mit folgenden Schritten können Sie eine aus JabRef exportierte Tabelle als bibliographische Datenbank benutzen:

-   Exportieren Sie in JabRef Ihre Datei in das **.ods**-Format
-   Öffnen Sie OpenOffice.org Writer
-   Wählen Sie **Bearbeiten → Datenbank austauschen**. Klicken Sie auf **Durchsuchen** und wählen die Datei, die Sie in das .ods-Format exportiert haben.
-   Klicken Sie auf das **+** vor dem Namen der Datenbank, anschließend auf den angezeigten Dateinamen und schließlich auf den Knopf **Festlegen**.
-   Wählen Sie **Extras → Optionen → OpenOffice.org Base → Datenbanken**. In diesem Fenster sollte die Datenbank, die Sie gerade importiert haben, angezeigt werden. Die Standard-Datenbank für Bibliographien von OOo sollte ebenfalls angezeigt werden (*Bibliography*).
-   Klicken Sie auf **Bearbeiten** und ändern Sie den Namen der Datenbank *Bibliography*, z.B. zu *Bibliography-old* (denn OpenOffice.org kann nicht mit mehreren bibliographischen Datenbanken arbeiten).
-   Wählen Sie anschließend Ihre bibliographische Datenbank und benennen Sie sie um in *Bibliography* (achten Sie auf einen Großbuchstaben am Anfang des Namens).

Nach diesen Schritten sollte Ihre bibliographische Datenbank zur Benutzung mit OpenOffice.org bereit sein. Um das zu prüfen, wählen Sie **Einfügen → Verzeichnisse → Literaturverzeichniseintrag...**. Im folgenden Dialog sollten in der Dropdownliste (unter **Kurzbezeichnung**) die BibTeX-Keys Ihrer Datenbank erscheinen.

## Die exportierte Datei als Bibliographiedatenbank in OpenOffice 2.0, 2.1 oder 2.2 benutzen

Gehen Sie folgendermaßen vor, um eine Tabelle, die von JabRef exportiert wurde, als Bibliographiedatenbank in OpenOffice.org zu benutzen:

-   Exportieren Sie Ihre Datenbank in das **.ods** -Format
-   Starten Sie OpenOffice.org
-   Wählen Sie **Extras → Optionen → OpenOffice.org Base → Datenbanken**
-   Bearbeiten Sie die *Bibliography*-Datenbank und ändern ihren Namen z.B. in *Bibliographie-alt*
-   Schließen Sie das Fenster **Optionen** und gehen Sie zu **Datei → Neu → Datenbank**
-   Wählen Sie **Verbindung zu einer bestehenden Datenbank herstellen**, wählen **Tabellendokument** als Datenbanktyp und wählen die **.ods**-Datei, die Sie exportiert haben
-   Klicken Sie auf **Fertig stellen** und wählen den Namen *Bibliography* im Speicherdialog

Anschließend wählen Sie **Extras → Literaturdatenbank**. Ihre Datenbank sollte nun angezeigt werden.

## Eine exportierte Datei als Datenbank in OpenOffice 1.1.x benutzen

-   Exportieren Sie Ihre Datei in das **.sxc**-Format
-   Starten Sie OpenOffice.org
-   Wählen Sie **Extras → Datenquellen**
-   Wählen Sie die *Bibliography*-Datei und ändern ihren Namen z.B. in *Bibliographie-alt*.
-   Drücken Sie **Anwenden**.
-   Klicken Sie **Neue Datenquelle**. Ein neuer Eintrag erscheint. Ändern Sie den Namen zu *Bibliography*.
-   Ändern Sie den **Dateityp** zu **Tabelle**. Klicken Sie den **...**-Button in der Zeile **Datenquellen URL**. Wählen Sie die **.sxc**-Datei, die Sie exportiert haben.
-   Klicken Sie auf **OK**, um das Fenster **Datenquellen** zu schließen.

Anschließend wählen Sie **Extras → Literaturdatenbank**. Ihre Datenbank sollte nun angezeigt werden.
