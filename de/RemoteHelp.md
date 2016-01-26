---
title: Externer Zugriff
---

# Externer Zugriff

Diese Funktion kann unter **Einstellungen -&gt; Erweitert** eingestellt werden.

*Beachten Sie, dass das Aktivieren dieser Funktion mit Windows XP SP2 (und möglicherweise auch mit anderen Konfigurationen) zu einer Meldung führen kann, die besagt, dass bestimmte Funktionen des Programms von der Windows-Firewall geblockt wurden. Sie können die Firewall anweisen, weiterhin zu blocken, denn die Firewall beeinträchtigt den Externen Zugriff von JabRef nicht.*

Falls das Abhören von externen Zugriffen aktiviert ist, versucht JabRef beim Programmstart, den entsprechenden Port abzuhören. Das bedeutet, dass andere Anwendungen Informationen durch diesen Port an JabRef senden können. JabRef akzeptiert dabei nur lokale Verbindungen, um das Risiko eines Eingriffs von außerhalb auszuschließen.

Mit dem externen Zugriff kann eine zweite Instanz von JabRef erkennen, dass eine erste Instanz bereits läuft. In diesem Fall leitet die zweite Instanz ihre Kommandozeilen-Optionen an die erste Instanz weiter und beendet sich selbst direkt im Anschluss - sofern die zweite Instanz nicht ausdrücklich instruiert wurde, im Stand-Alone-Modus (als selbständige Instanz) zu starten.

Die erste JabRef-Instanz liest die Kommandozeilenoptionen und führt die erforderlichen Aktionen aus, z.B. das Lesen oder Importieren einer Datei oder das Anhängen einer Datei an die aktive Datenbank. Falls eine Datei mit der Option `--importToOpen` importiert wird, werden die Einträge an die aktive Datei angehängt. Falls keine Datei geöffnet ist, wird eine neue Datei angelegt.
