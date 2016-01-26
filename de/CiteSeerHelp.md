# CiteSeer-Import

CiteSeer ist eine digitale Bibliothek und Suchmaschine für wissenschaftliche Literatur, vornehmlich zu den Bereichen Computer und Informatik.

## Importieren eines Eintrags von CiteSeer

JabRef kann Informationen über eine bestimmte Literaturangabe aus der CiteSeer-Datenbank herunterladen. Um diesen Vorgang zu starten, fügen Sie Ihrer Datei einen neuen Eintrag hinzu und belegen das Feld *citeseerurl* mit einem Link zur entsprechenden Inhaltsseite auf CiteSeer. Das Feld *citeseerurl* muss in einem der folgenden Formate eingegeben werden:

http://citeseer.ist.psu.edu/DDDDDD\[.html\], oder
oai:CiteSeerPSU:DDDDDD, oder
DDDDDD

wobei DDDDDD eine Ziffernfolge darstellt. Um diese Ziffernfolge (DDDDDD) für einen CiteSeer-Eintrag zu finden, gehen Sie auf die Dokumentseite der Literaturangabe des Formats http://citeseer.ist.psu.edu/*nameYearTitle*.html und klicken den (Update)-Link für diese Literaturangabe. Die URL für den Update-Link beinhaltet die numerische ID für diese Literaturangabe.

Sobald Sie das Feld *citeseerurl* belegt haben, können Sie die CiteSeer-Felder herunterladen, indem Sie **BibTeX -&gt; Felder von CiteSeer importieren** auswählen. Achten Sie darauf, dass Sie die Zeile(n) ausgewählt haben, die Sie aktualisieren wollen.

## Eine Datei mit zitierenden Literaturangaben erzeugen

Mit einem Satz von Literaturangaben können Sie eine Liste der Dokumente erzeugen, die die einzelnen Literaturangaben ihrerseits zitieren. Dazu muss jede Literaturangabe der entsprechenden Datenbank-Datei ein ausgefülltes citeseerurl-Feld besitzen, dessen Inhalt dem in **Importieren eines Eintrags von CiteSeer** beschriebenen Format entspricht. Sie können diese Funktion nutzen, indem Sie **Zitierende Literatur von CiteSeer abrufen** auswählen.

## Benutzung eines Proxy-Servers

Wenn Sie einen HTTP-Proxy-Server benutzen müssen, übergeben Sie den Servernamen und die Portnummer an Java.

`java -Dhttp.proxyHost="hostname"     -Dhttp.proxyPort="portnumber"`

Diese Umgebungseinstellungen sind in der [Sun J2SE Dokumentation](http://java.sun.com/j2se/1.4.2/docs/guide/net/properties.html) beschrieben.
