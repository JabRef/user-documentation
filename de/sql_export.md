Export in eine externe SQL-Datenbank
====================================

JabRef kann Inhalte einer BibTeX-Datei in eine MySQL- und PostgreSQL-Datenbank exportieren. Auch die Informationen zu Gruppen werden dabei berücksichtigt.

Dazu ist es nur nötig, eine Benutzer-Passwort-Kombination, die volle Rechte auf die Datenbank hat, zur Hand zu haben.

Export
------

1.  Wählen Sie **Datei -&gt; Export in externe SQL-Datenbank** oder klicken Sie auf das entsprechende Symbol in der Symbolleiste.
2.  Geben Sie die Informationen zur Datenbank-Verbindung ein und klicken auf **Verbinden**.

JabRef baut dann die Verbindung zu dieser Datenbank auf, **löscht existierende Tabellen**, erstellt neue Tabellen und fügt in diese den Inhalt der Einträge und Gruppeninformationen ein. Falls Sie ein weiteres Mal eine Verbindung zu dieser Datenbank aufbauen wollen, müssen Sie die Verbindungs-Informationen nicht noch einmal eingeben. Wenn Sie in eine andere Datenbank exportieren wollen, können Sie die Verbindungs-Einstellungen unter **Datei -&gt; Mit externer SQL-Datenbank verbinden** (oder durch Klicken des entsprechenden Symbols) ändern und anschließend den Export durchführen.
