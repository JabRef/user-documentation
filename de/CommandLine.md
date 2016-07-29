---
title: Kommandozeilen-Optionen
outdated: true
---

# Kommandozeilen-Optionen

Obwohl JabRef in erster Linie ein Programm mit grafischer Benutzeroberfläche ist, bietet es einige nützliche Optionen für die Kommandozeile und kann sogar Dateikonvertierungen durchführen, ohne die grafische Benutzeroberfläche zu öffnen. Um die Kommandozeilenoptionen zu nutzen benötigen Sie die JAR-Version von JabRef. Diese können Sie entweder direkt von der JabRef-Downloadseite herunterladen. Falls Sie JabRef bereits installiert haben, finden Sie die JAR-Datei bereits im Installationsorder von JabRef.

Sie können eine oder mehrere BibTeX-Dateien laden, indem Sie auf der Kommandozeile die entsprechenden Dateinamen auflisten. Achten Sie darauf, alle gewünschten Optionen anzugeben, bevor Sie die Dateinamen anfügen. Außerdem müssen Sie sich vergewissern, dass der erste Dateiname nicht als Argument einer Option missverstanden werden kann - falls eine Bool'sche Option wie `-n` oder `-l` direkt vor einem Dateinamen steht, müssen Sie also "true" als Argument angeben. Das Beispielkommando:

`java -jar JabRef.jar -o filetoexport.xml,docbook -n true     original.bib`

lädt die Datei `original.bib`, exportiert sie in das Docbook-Format, speichert sie unter dem Namen `filetoexport.xml` und unterdrückt das Laden der grafischen Oberfläche. Das Word *true* verhindert, dass der Dateiname als Argument der Option `-n` interpretiert wird.

## Hilfe: -h

Diese Option veranlasst JabRef, eine Zusammenfassung der Kommandozeilen-Optionen anzuzeigen und das Programm unmittelbar darauf zu schließen.

## Kein GUI-Modus: -n

Diese Option unterdrückt sowohl das JabRef-Fenster als auch den Eröffnungsbildschirm, der normalerweise beim Programmstart angezeigt wird. Das Programm wird beendet, sobald die Kommandozeilen-Optionen abgearbeitet wurden.

Diese Option ist nützlich, um Dateikonvertierungen von der Kommandozeile oder mit Hilfe eines Scripts durchzuführen.

## Datei importieren: -i Dateiname\[,Importformat\]

Bei dieser Option importiert oder lädt JabRef eine bestimmte Datei. Wenn nur ein Dateiname angegeben wird oder ein Komma und ein \*-Zeichen hinter dem Dateinamen stehen, versucht JabRef, das Dateiformat automatisch zu erkennen. Das sollte bei allen BibTeX-Dateien ebenso funktionieren wie bei Dateien, die in einem der von JabRef unterstützten Importformate vorliegen. Wenn dem Dateinamen ein Komma und ein Importformat folgen, wird der angegebene Importfilter benutzt. Mit der Option `-h` können Sie sich eine Liste der verfügbaren Importformate anzeigen lassen.

Wenn Sie zusätzlich eine Export-Option angeben, wird der Import immer zuerst ausgeführt, bevor die importierte oder geladene Datei an den Exportfilter übergeben wird. Falls die grafische Oberfläche nicht mit der Option `-n` unterdrückt wird, werden alle geladenen oder importierten Dateien im Hauptfenster von JabRef angezeigt.

Die Option `-i` kann nur einmal angegeben werden und nimmt als Argument maximal eine Datei.

## Datei exportieren: -o Dateiname\[,Exportformat\]

Diese Option veranlasst JabRef, eine Datei zu speichern oder zu exportieren, die von derselben Kommandozeile geladen oder importiert wurde. Wenn eine Datei mit der Option `-i` importiert wurde, wird diese Datei exportiert. Ansonsten wird die Datei exportiert, die *zuletzt* - ohne die Option `-i` - angegeben (und erfolgreich geladen) wurde.

Wird nur ein Dateiname angegeben, so wird diese Datei im BibTeX-Format gespeichert. Wenn dem Dateinamen ein Komma und ein Exportformat folgen, wird der angegebene Exportfilter benutzt. Auf diese Weise wird auch ein benutzerdefinierter Exportfilter angewendet; wenn der Name sowohl auf einen Standard-Exportfilter, als auch auf einen benutzerdefinierten Exportfilter zutrifft, wird der benutzerdefinierte verwendet.

Mit der Option `-h` können Sie sich eine Liste der verfügbaren Exportformate anzeigen lassen.

Falls die Option `-n` nicht aufgerufen wurde, wird jeder Exportvorgang durchgeführt, bevor das JabRef-Fenster geöffnet wird. Dort werden dann die importierten Dateien angezeigt.

Die Option `-o` kann nur einmal angegeben werden und nimmt als Argument maximal eine Datei.

## Einstellungen exportieren: -x Dateiname

Mit dieser Option können Sie JabRef veranlassen, alle Benutzer-Einstellungen in eine XML-Datei zu speichern. Nach dem Export startet JabRef normal.

## Einstellungen importieren: -p Dateiname

Mit dieser Option importiert JabRef Benutzer-Einstellungen, die mit der Option `-x` exportiert wurden. Nach dem Import startet JabRef normal.

## Nur benutzte Einträge exportieren: -a Dateiname\[.aux\],neueBibDatei\[.bib\]

Manchmal ist es nützlich, eine BibTeX-Datei zu haben, die nur die benutzten Einträge enthält. Eine Liste dieser benutzten Einträge findet sich in einer .aux-Datei (sobald Sie LaTeX aufgerufen haben). JabRef kann diese Datei analysieren, um eine neue BibTeX-Datei zu erstellen, die nur die bekannten und benutzten Einträge enthält. Das bedeutet, dass ein Eintrag, der in der Standard-BibTeX-Datei nicht definiert ist, auch nicht in die neue Datei geschrieben werden kann.

## Aus dem Internet abrufen: --fetch==Name des Fetchers:Suchausdruck

Die *Fetcher*, also die direkte Suche in Online-Datenbanken, die Sie im Menü **Internet** finden, können auch von der Kommandozeile aus gestartet werden. Nutzen Sie dazu die Option `--fetch` und geben sowohl den Namen des Fetchers (z.B. 'ieee', 'medline' oder 'jstor') als auch den Suchausdruck oder die ID des gesuchten Mediums an. Beachten Sie, dass einige Fetcher eine graphische Oberfläche (GUI) anzeigen, falls Sie eine Rückmeldung von Ihnen brauchen. Um eine Übersicht der verfügbaren Fetcher zu erhalten, geben Sie `--fetch` ohne Parameter ein.
