---
title: Gruppen
---

# Gruppen

Mit Gruppen können Sie Ihre BibTeX-Datei in einer Baumstruktur anordnen, vergleichbar mit einer Dateistruktur in Ordnern und Unterordnern. Die beiden Hauptunterschiede sind:

-   Während eine Datei auf einer Festplatte immer in genau einem Ordner abgelegt ist, kann ein Literatureintrag in JabRef mehreren Gruppen angehören.
-   Gruppen benutzen bestimmte Kriterien, um ihren Inhalt dynamisch zu bestimmen. Neue Einträge, die den Kriterien einer Gruppe entsprechen, gehören automatisch zu dieser Gruppe. Diese Funktionalität gibt es nicht in üblichen Dateisystemen, wohl aber in einigen E-Mail-Programmen (z.B. Thunderbird und Opera).

Wenn Sie eine Gruppe auswählen, werden die Einträge dieser Gruppe angezeigt. Wenn Sie mehrere Gruppen auswählen, werden entweder die Einträge angezeigt, die in einer der Gruppen sind (Vereinigung), oder solche, die in allen Gruppen vorhanden sind (Schnittmenge) -- das hängt von Ihren Einstellungen ab. All dies wird im Folgenden detailliert erläutert.

Gruppendefinitionen sind dateispezifisch; sie werden als `@COMMENT`-Block in der `bib`-Datei gespeichert und werden von allen Benutzern gemeinsam benutzt. (Künftige Versionen von JabRef werden möglicherweise benutzerabhängige Gruppen unterstützen.)

## Die Gruppenansicht

Die Gruppenansicht wird im linken Bereich des Bildschirms angezeigt. Sie kann mit der Tastenkombination `STRG-SHIFT-G` oder dem Gruppen-Button in der Toolbar ein- und ausgeblendet werden. Die Gruppenansicht verfügt über mehrere Schaltflächen, aber die meisten Funktionen werden über das Kontextmenü angesteuert (also mit der rechten Maustaste). Drag & Drop wird ebenfalls unterstützt.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><h2 id="einige-kurze-beispiele">Einige kurze Beispiele</h2>
<p>Sie möchten vielleicht...</p>
<h3 id="einfach-nur-eine-gruppe-anlegen-und-ihr-einige-einträge-zuordnen">...einfach nur eine Gruppe anlegen und ihr einige Einträge zuordnen</h3>
<p>Vergewissern Sie sich, dass die Gruppenansicht eingeschaltet ist. Drücken Sie auf den Button <strong>Neue Gruppe</strong>, geben einen Namen für die Gruppe ein und drücken OK. Sie können alle Einstellungen auf ihren Standardwerten belassen. Jetzt wählen Sie die Einträge aus, die der Gruppe zugeordnet werden sollen, und ziehen diese mit der Maus auf die Gruppe oder wählen <strong>Zu Gruppe hinzufügen</strong> aus dem Kontextmenü. Jetzt können Sie die Gruppe anklicken, um sich ihren Inhalt anzeigen zu lassen (das sollten die Einträge sein, die Sie gerade hinzugefügt haben).</p>
<h3 id="das-feld-keywords-benutzen-um-die-einträge-zu-gruppieren">...das Feld <code>keywords</code> benutzen, um die Einträge zu gruppieren</h3>
<p>Stellen Sie sicher, dass die Gruppenansicht aktiviert ist. Drücken Sie auf den Button <strong>Neue Gruppe</strong>, geben einen Namen für die Gruppe ein und wählen die Option <strong>Dynamisches Gruppieren der Einträge anhand eines Stichworts in einem Feld</strong>. Geben Sie das Stichwort, nach dem gesucht werden soll, ein und drücken OK. Jetzt können Sie die Gruppe anklicken, um sich ihren Inhalt anzeigen zu lassen (das sollten alle Einträge sein, deren <code>keywords</code>-Feld das Stichwort enthält, das Sie angegeben haben).</p>
<h3 id="einen-frei-wählbaren-suchausdruck-verwenden-um-eine-gruppe-zu-definieren">...einen frei wählbaren Suchausdruck verwenden, um eine Gruppe zu definieren</h3>
<p>Stellen Sie sicher, dass die Gruppenansicht aktiviert ist. Drücken Sie auf den Button <strong>Neue Gruppe</strong>, geben einen Namen für die Gruppe ein und wählen die Option <strong>Dynamisches Gruppieren der Einträge anhand eines beliebigen Suchausdrucks</strong>. Geben Sie <code>author=smith</code> als Suchausdruck ein (ersetzen Sie <code>smith</code> mit einem Namen, der wirklich in Ihrer Datei vorkommt) und klicken <strong>OK</strong>. Jetzt können Sie die Gruppe anklicken, um sich ihren Inhalt anzeigen zu lassen (das sollten alle Einträge sein, deren <code>author</code>-Feld den Namen beinhaltet, den Sie angegeben haben).</p>
<h3 id="mehrere-gruppen-kombinieren">...mehrere Gruppen kombinieren</h3>
<p>Erstellen sie zwei unterschiedliche Gruppen (z.B. so wie oben beschrieben). Klicken Sie auf den Button <strong>Einstellungen</strong> in der Gruppenansicht und wählen <strong>Vereinigung</strong>. Jetzt wählen Sie beide Gruppen aus (dazu klicken Sie auf eine Gruppe und anschließend bei gedrückter STRG-Taste auf die andere Gruppe). Sie sollten jetzt alle Einträge sehen, die in einer der beiden Gruppen aufgeführt sind. Klicken Sie noch einmal auf <strong>Einstellungen</strong> und wählen <strong>Schnittmenge</strong> aus. Nun sollten Sie nur die Einträge sehen, die in beiden Gruppen enthalten sind (das können auch keine sein, oder aber genau dieselben Einträge wie zuvor, sofern beide Gruppen dieselben Einträge enthalten).</p>
<h3 id="sehen-welche-gruppen-sich-überschneiden">...sehen, welche Gruppen sich überschneiden</h3>
<p>Mit JabRef können Sie ganz einfach herausfinden, welche Gruppen sich mit den aktuell ausgewählten Gruppen überschneiden (d.h. welche Gruppen zumindest einen Eintrag enthalten, der auch in der aktuell ausgewählten Gruppe ist). Klicken Sie auf <strong>Einstellungen</strong> und aktivieren die Option <strong>Sich überschneidende Gruppen markieren</strong>. Wählen Sie dann eine Gruppe, die sich mit anderen überschneidet. Diese anderen Gruppen sollten nun markiert sein.</p></td>
</tr>
</tbody>
</table>

## Arten von Gruppen

In JabRef 1.8 gibt es vier verschiedene Arten von Gruppen

1.  Die Gruppe **Alle Einträge**, die -- wie der Name vermuten lässt -- alle Einträge beinhaltet, ist immer vorhanden und kann weder verändert noch gelöscht werden.
2.  **Statische Gruppen** verhalten sich wie Ordner auf einer Festplatte und beinhalten nur die Einträge, die Sie ihnen explizit zuweisen.
3.  **Dynamische Gruppen basierend auf einem Stichwort** beinhalten Einträge, die in einem bestimmten BibTeX-Feld (z.B. `keywords`) ein bestimmtes Stichwort (z.B. `elektrisch`) aufweisen. Diese Methode benötigt kein manuelles Zuweisen der Einträge, sondern nutzt die bereits in der Datei vorhandenen Informationen. Wenn alle Einträge in Ihrer Datenbank passende Stichwörter haben, könnte diese Art von Gruppe die beste Wahl für Sie sein.
4.  **Dynamische Gruppen basierend auf einer freien Suche** beinhalten Einträge, die mit einem bestimmten Suchausdruck übereinstimmen. Dabei wird dieselbe Syntax verwendet wie beim [Suchen](SearchHelp.md). Diese [Syntax](SearchHelp.md#advanced) unterstützt logische Operatoren (`AND`, `OR`, `NOT`) und erlaubt es, in einem oder mehreren BibTeX-Feldern zu suchen. Dadurch ist eine flexiblere Definition von Gruppen möglich als mit einer Stichwortsuche (z.B. `author=smith AND         title=elektrisch`).

Jede Gruppe, die Sie erstellen, ist von einer der drei letztgenannten Arten. Der Dialog "Gruppe bearbeiten", der mit einem Doppelklick auf eine Gruppe aufgerufen wird, zeigt eine kurze Beschreibung der ausgewählten Gruppe.

## Gruppenstrukturen, Erstellen und Löschen von Gruppen

Vergleichbar mit Ordnern sind die Gruppen in einer Baumansicht strukturiert, wo die Gruppe **Alle Einträge** das Stammelement ist. Mit einem Rechtsklick auf eine Gruppe können Sie dem Baum eine neue Gruppe hinzufügen, entweder auf derselben Ebene wie die ausgewählte Gruppe oder als ihre Untergruppe. Der Button **Neue Gruppe** erzeugt eine neue Untergruppe der Gruppe **Alle Einträge**, egal ob Sie gerade Gruppen ausgewählt haben oder nicht. Im Kontextmenü können Sie auch Gruppen und/oder Untergruppen löschen, Untergruppen alphabetisch sortieren oder Gruppen an eine andere Stelle des Baums verschieben. Letzteres können Sie auch mit Drag & Drop machen, allerdings mit der Einschränkung, dass bei Drag & Drop die Reihenfolge der Untergruppen einer Gruppe nicht verändert werden kann.

Rückgängig und Wiederholen wird für alle Bearbeitungsschritte unterstützt.

### Statische Gruppen

Statische Gruppen werden nur durch manuelles Zuweisen von Einträgen "gefüttert". Nachdem Sie eine statische Gruppe erstellt haben, wählen Sie die Einträge aus, die Sie ihr zuweisen wollen, und nutzen entweder Drag & Drop oder das Kontextmenü in der Tabelle, um die Zuweisung durchzuführen. Um Einträge aus einer Gruppe zu entfernen, wählen Sie sie aus und benutzen das Kontextmenü in der Tabelle. Es können keine weiteren Optionen angegeben werden.

Diese Methode des Gruppierens setzt voraus, dass alle Einträge einen eindeutigen BibTeX-Key haben. Im Falle von fehlenden oder doppelten BibTeX-Keys kann das Zuweisen der betreffenden Einträge in künftigen Sitzungen nicht korrekt wiederhergestellt werden.

### Dynamische Gruppen

Der Inhalt einer dynamischen Gruppe wird von einer logischen Bedingung bestimmt. Nur Einträge, die dieser Bedingung entsprechen, gehören zu dieser Gruppe. Diese Methode nutzt die bereits in der Datei vorhandenen Informationen und wird aktualisiert, sobald Sie Veränderungen in der Datei vornehmen.

Es gibt zwei mögliche Arten von Bedingungen:

**Ein Feld nach einem Stichwort durchsuchen**  
Diese Methode gruppiert Einträge, bei denen ein bestimmtes BibTeX Feld (z.B. `keywords`) einen bestimmten Suchausdruck (z.B. `elektrisch`) enthält. Damit dies funktioniert, muss das Feld, nach dem sortiert wird, natürlich in jedem Eintrag vorhanden und sein Inhalt fehlerfrei sein. Das obige Beispiel würde alle Einträge zu einer Gruppe zusammenfassen, die sich auf etwas elektrisches beziehen. Benutzt man das Feld `author`, kann man sich Einträge eines bestimmten Autors gruppieren lassen, usw. Die Suche ist als reine Textsuche oder mit einem regulären Ausdruck möglich. Im ersten Fall erlaubt JabRef das manuelle Zuweisen zu und Entfernen aus einer Gruppe; dazu fügt JabRef den Suchausdruck dem entsprechenden Feld zu bzw. entfernt ihn daraus. Das macht nur für das Feld `keywords` oder für selbstdefinierte Felder Sinn, aber offensichtlich nicht für Felder wie `author` oder `year`.

**Einen freien Suchausdruck verwenden**  
Diese Vorgehensweise ist ganz ähnlich wie die eben beschriebene, aber statt nur ein Feld nach einem Suchausdruck zu durchsuchen, kann hierbei die [Syntax der Suche](SearchHelp.md#advanced) angewendet werden, die logische Operatoren (`AND`, `OR`, `NOT`) und die Suche in mehreren Feldern gleichzeitig unterstützt. So fasst z.B. die Suchanfrage `keywords=Regression AND NOT         keywords=linear` Einträge, die sich mit nicht-linearer Regression beschäftigen, zu einer Gruppe zusammen.

In der Gruppenansicht werden dynamische Gruppen standardmäßig *kursiv* dargestellt. Dies kann unter **Optionen -&gt; Einstellungen -&gt; Gruppen** abgestellt werden.

### Hierarchischer Kontext

Standardmäßig ist eine Gruppe **unabhängig** von ihrer Position im Gruppenbaum. Ist eine Gruppe ausgewählt, wird nur der Inhalt dieser Gruppe angezeigt. Es ist jedoch -- besonders beim Verwenden dynamischer Gruppen -- oft nützlich, eine Untergruppe zu erstellen, die **ihre Obergruppe verfeinert**. Wenn diese Untergruppe ausgewählt wird, werden alle Einträge dieser Gruppe und ihrer Obergruppe angezeigt. Erstellen Sie z.B. eine Obergrupe, die Einträge mit dem Stichwort `Verteilung` enthält, sowie eine verfeinernde Untergruppe mit Einträgen, die das Stichwort `Gauß` enthalten. Wenn Sie nun die Untergruppe auswählen, werden alle Einträge angezeigt, die beiden Bedingungen entsprechen, also alle, die mit Gauß'scher Verteilung zu tun haben. Indem Sie nun eine weitere Untergruppe für `Laplace` anlegen, die dieselbe Obergruppe verfeinert, können Sie die Gruppierung einfach erweitern. Im Gruppenbaum haben solche Gruppen, die ihre Obergruppen verfeinern, ein spezielles Icon. (Dieses Verhalten kann in den Einstellungen abgestellt werden.)

Das logische Gegenstück zu einer solchen verfeinernden Untergruppe ist eine Gruppe, die **ihre Untergruppen berücksichtigt**. Wird sie ausgewählt, werden nicht nur die Einträge dieser Gruppe, sondern auch diejenigen aller Untergruppen angezeigt. Im Gruppenbaum hat auch diese Art von Gruppen ein spezielles Icon. (Dieses Verhalten kann in den Einstellungen abgestellt werden.)

## Einträge einer Gruppe anzeigen, mehrere Gruppen kombinieren

Wenn Sie eine Gruppe auswählen, werden die Einträge, die dieser Gruppe zugeordnet sind, hervorgehoben und -- je nach Einstellung (die mit einem Klick auf den **Einstellungen**-Button vorgenommen werden kann) -- an den Anfang der Tabelle verschoben und/oder ausgewählt. Diese Optionen entsprechen denen für die normale Suche.

Wenn Sie meherere Gruppen auswählen (indem Sie die STRG-Taste gedrückt halten und mehrere Gruppen anklicken), wird -- je nach Einstellung -- entweder die Vereinigung oder die Schnittmenge ihrer Inhalte angezeigt. Damit können mehrere Bedingungen schnell miteinander kombiniert werden. Ein Beispiel: Wenn Sie eine statische Gruppe `Sehr wichtig` haben, in der alle sehr wichtigen Einträge sind, können Sie sich die sehr wichtigen Einträge jeder anderen Gruppe anzeigen lassen, indem Sie beide Gruppen auswählen (dazu muss **Schnittmenge** in den Einstellungen aktiviert sein).

## Gruppen und Suche

Wenn der Inhalt einer oder mehrerer Gruppen angezeigt wird, können Sie eine Suche innerhalb dieser Einträge durchführen. Benutzen Sie dazu die normalen Suchfunktionen.

## Sich überschneidende Gruppen markieren

Der **Einstellungs**-Button bietet eine Option zum Markieren von sich überschneidenden Gruppen. Wenn diese Option aktiviert ist und Sie eine (oder mehrere) Gruppe(n) auswählen, werden alle Gruppen markiert, die mindestens einen Eintrag enthalten, der auch der ausgewählten Gruppe zugeordnet ist. Damit können Sie schnell Überschneidungen zwischen den Einträgen verschiedener Gruppen erkennen. Sie könnten beispielsweise eine Gruppe `lesen` erstellen, die alle Einträge enthält, die sie lesen wollen. Sobald Sie nun eine Gruppe auswählen, wird die Gruppe `lesen` markiert, sofern die ausgewählte Gruppe Einträge enthält, die Sie noch lesen wollten.

## Erweiterte Funktionen

Wenn Sie sich mit dem oben beschriebenen Gruppenkonzept vertraut gemacht haben, könnten die folgenden erweiterten Funktionen nützlich sein.

### Dynamische Gruppen automatisch erstellen

Mit einem Klick auf den Button **Automatisch Gruppen für die Datei anlegen** können Sie ganz schnell passende Gruppen für Ihre Datei erzeugen. Diese Funktion sammelt alle Wörter eines bestimmten Felds Ihrer Wahl und erstellt eine Gruppe für jedes Wort. Das ist zum Beispiel nützlich, wenn Ihre Datei geeignete Stichworte für alle Einträge enthält. Mit dem automatischen Erstellen von Gruppen basierend auf dem Feld `keywords` können Sie also ohne großen Aufwand ein Grundgerüst von Gruppen anlegen.

Sie können auch Buchstaben angeben, die ignoriert werden sollen, z.B. Kommas, die zwischen einzelnen Stichworten stehen. Diese werden als Worttrenner behandelt und nicht als Teile des Wortes selbst. Dieser Schritt ist wichtig, damit kombinierte Stichworte wie etwa `Gauß'sche     Verteilung` als semantische Einheit interpretiert werden können. (Sie können diese Option allerdings nicht verwenden, um ganze Wörter zu ignorieren. Sie müssen stattdessen die Gruppen, die Sie nicht wollen, nach dem automatischen Erstellen von Hand löschen.)

### Ansicht aktualisieren

Der **Aktualisieren**-Button aktualisiert die Tabelle in Bezug auf die aktuell ausgewählten Gruppen. Normalerweise erfolgt dies automatisch, aber in seltenen Fällen (z.B. nach einem Rückgängig- oder Wiederholen-Vorgang, der mit Gruppen zusammenhängt) ist ein händisches Aktualisieren nötig.

### Verfeinernde Untergruppen und einbeziehende Obergruppen mischen

Wenn eine verfeinernde Gruppe die Untergruppe von einer Gruppe ist, die ihre Untergruppen berücksichtigt -- also sozusagen die Geschwister der verfeinernden Gruppe --, dann werden diese Geschwister ignoriert, sobald die verfeinernde Gruppe ausgewählt wird.
