---
title: Einträge von Medline abrufen
---

# Einträge von Medline abrufen

MEDLINE ist die wichtigste Datenbank der *U.S. National Library of Medicine*. Sie enthält Literaturangaben von Zeitschriftenartikeln der Lebenswissenschaften, vornehmlich der Biomedizin.

JabRef kann Literaturangaben von der Medline-Datenbank herunterladen. Um diese Funktion zu nutzen, wählen Sie **Extras -&gt; Medline abrufen**, so dass der Medline-Dialog im linken Seitenfeld erscheint.

Es gibt zwei Möglichkeiten, die Auswahl der Einträge vorzunehmen, die heruntergeladen werden sollen:

1.  Geben Sie eine oder mehr Medline IDs (getrennt durch Komma/Semikolon) in das Textfeld ein.
2.  Geben Sie Namen oder Wörter ein, nach denen gesucht werden soll. Sie können dazu die Operatoren *and* und *or* sowie Klammern benutzen, um Ihren Suchbegriff zu verfeinern.

In beiden Fällen drücken Sie dann **Enter** oder die Schaltfläche **Abrufen**. Wenn Sie eine Textsuche durchführen, wird Ihnen die Anzahl der gefundenen Einträge angezeigt, und Sie können wählen, wie viele Sie herunterladen möchten.

Die abgerufenen Einträge werden Ihrer zu diesem Zeitpunkt aktivierten Datei zugeordnet.

## Benutzung eines Proxy-Servers

Wenn Sie einen HTTP-Proxy-Server benutzen müssen, übergeben Sie den Servernamen und die Portnummer an Java.

`java -Dhttp.proxyHost="hostname"     -Dhttp.proxyPort="portnumber"`

Diese Umgebungseinstellungen sind in der [Sun J2SE Dokumentation](http://docs.oracle.com/javase/1.4.2/docs/guide/net/properties) beschrieben.
