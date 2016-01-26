Datei-Links in JabRef
=====================

JabRef lässt Sie Ihre Einträge mit Dateien jeden Typs verlinken, die Sie auf Ihrem System gespeichert haben. Außerdem sind Links zu Dokumenten im Internet in der Form eines URL oder eines DOI möglich. Jedem Eintrag kann eine beliebige Anzahl von Datei-Links zugeordnet werden und jede verlinkte Datei kann schnell aus JabRef heraus geöffnet werden.

Was BibTeX angeht, werden die Datei-Links eines Eintrags in ein einzelnes Feld geschrieben. In JabRef erscheinen sie aber als editierbare Liste von Links, die im Eintrags-Editor zugänglich sind.

Einrichten der Dateitypen
-------------------------

Für jeden Datei-Link muss ein Dateityp gewählt werden, damit das richtige Programm zum Öffnen der Datei und das entsprechende Icon gefunden werden. Die Liste der Dateitypen können Sie einsehen und bearbeiten, indem Sie **Optionen -&gt; Externe Dateitypen verwalten** wählen oder auf die Schaltfläche **Externe Dateitypen verwalten** im Bereich **Externe Programme** des Einstellungs-Dialogs klicken.

Ein Dateityp besteht aus einem Namen, einem graphischen Icon, einer Dateierweiterung und einer Anwendung zum Öffnen der Dateien. Wenn Sie Windows benutzen, können Sie den Namen der Anwendung weglassen, wenn Sie das Standardprogramm verwenden wollen.

Datei-Links zu einem Eintrag hinzufügen
---------------------------------------

Wenn bei den [Allgemeinen Feldern](GeneralFields.html) das Feld "file" eingetragen ist, können Sie die Liste der externen Links im [Eintrags-Editor](EntryEditorHelp.html) bearbeiten. Der Editor hat dann Schaltflächen zum Einfügen, Bearbeiten, Löschen und Sortieren der Links.

Eine Datei kann mit Hilfe der **Auto**-Schaltfläche automatisch verlinkt werden, falls sie in Ihrem Dateiverzeichnis (**Einstellungen -&gt; Externe Programme -&gt; Links zu externen Dateien -&gt; Hauptverzeichnis**) oder einem Unterordner liegt, eine Dateierweiterung hat, die JabRef bekannt ist, und einen Namen hat, der mit dem BibTeX-Key des Eintrags übereinstimmt. Die Regeln, nach denen Dateinamen mit BibTeX-Keys automatisch verknüpft werden, können eingestellt werden unter **Einstellungen -&gt; Externe Programme -&gt; Links zu externen Dateien -&gt; Suche mit regulärem Ausdruck benutzen**.

Um eine Datei herunterzuladen und mit einem Eintrag zu verlinken, benutzen Sie die Schaltfläche **Download** im Eintrags-Editor. Es erscheint ein Dialog, in dem Sie den URL eingeben müssen. Die Datei wird dann in Ihr Hauptverzeichnis gespeichert, anhand des BibTeX-Keys benannt und mit dem Eintrag verknüpft.

Externe Dateien öffnen
----------------------

Es gibt mehrere Möglichkeiten, externe Dateien oder Internetseiten zu öffnen. In der Tabellenansicht können Sie einen Eintrag auswählen und mit dem Menü, einem Tastenkürzel oder dem Kontextmenü den ersten externen Link öffnen. Falls in der Tabellenansicht die Spalte **file** angezeigt wird (**Einstellungen -&gt; Tabellenansicht -&gt; Spezielle Spalten -&gt; Datei-Spalten anzeigen**), können Sie auch auf das Icon klicken, um den ersten Link eines Eintrags zu öffnen. Um weitere Links zu öffnen, klicken Sie mit der rechten Maustaste auf das Icon (Mac OS X: **Strg-Klick**); es erscheint dann ein Menü mit allen Links.
