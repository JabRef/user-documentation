---
title: Exportfilter anpassen
---

# Exportfilter anpassen

Mit JabRef können Sie Ihre eigenen Exportfilter definieren und genau so wie die Standard-Exportfilter benutzen. Ein Exportfilter wird durch eine oder mehr *Layout-Dateien* definiert, die mittels eingebauter Formatierprogramme das Format der exportierten Dateien festlegen. Ihre Layout-Datei müssen Sie in einem separaten Texteditor erstellen.

## Hinzufügen eines Exportfilters

Die einzige Voraussetzung für einen Exportfilter ist, daß eine Datei mit der Endung **.layout** vorhanden ist. Um einen neuen, eigenen Exportfilter hinzuzufügen, öffnen Sie das Dialogfenster **Optionen -&gt; Verwalte externe Exportfilter** und klicken auf die Schaltfläche **Neu**. Es öffnet sich ein neues Fenster, in dem Sie einen Namen (der als Auswahl im Dateityp-Dropdownmenü erscheint, wenn man **Datei -&gt; Exportieren** im JabRef-Hauptfenster wählt), eine Pfadangabe zur **.layout**-Datei und die gewünschte Dateiendung für den Exportfilter angeben können. Wenn Sie den Exportfilter benutzen, wird diese Endung im Datei-Dialog automatisch vorgeschlagen.

## Das Erstellen des Exportfilters

Um einen Eindruck zu bekommen, wie Exportfilter auszusehen haben, suchen Sie am besten auf unserer Homepage nach dem Paket, das die Layout-Dateien der Standard-Exportfilter enthält.

### Layout-Dateien

Nehmen wir einmal an, dass wir einen HTML-Exportfilter erstellen wollen.

Der Exportfilter muss lediglich aus einer einzigen **.layout**-Datei bestehen, die in diesem Fall *html.layout* genannt werden könnte. Sie können darüber hinaus auch zwei Dateien mit den Namen *html.begin.layout* und *html.end.layout* anlegen. Die erste dieser beiden Dateien enthält den Kopfteil der Ausgabe, die zweite den Fußteil. JabRef sucht jedes Mal, wenn der Exportfilter benutzt wird, nach diesen Dateien und fügt sie – falls sie gefunden werden – wörtlich vor bzw. nach den einzelnen Einträgen in die Ausgabe ein.

Beachten Sie, dass sich diese Dateien in demselben Verzeichnis wie *html.layout* befinden müssen und die Namensbestandteile **.begin** bzw. **.end** enthalten müssen.

In unserem Beispiel-Exportfilter könnten diese Dateien folgendermaßen aussehen:

*html.begin.layout*:
`<HTML>      <BODY> text="#275856">     <basefont size="4" color="#2F4958"     face="arial">`

*html.end.layout*:
`</BODY>      </HTML>`

Die Datei *html.layout* stellt die *Standard*-Formatvorlage für den Export eines einzelnen Eintrags bereit. Falls Sie unterschiedliche Formatvorlagen für verschiedene Eintragstypen anwenden wollen, müssen Sie Eintrags-spezifische **.layout**-Dateien erstellen. Diese müssen sich ebenfalls in demselben Verzeichnis wie die Haupt-Layout-Datei befinden und den Namensbestandteil **.entrytype** enthalten. Der Name des Eintragstyps muss komplett in Kleinbuchstaben geschrieben werden. In unserem Beispiel wollen wir eine Formatvorlage für Einträge des Typs "book" haben, die in der Datei *html.book.layout* abgelegt wird. Für eine Dissertation würden wir die Datei *html.phdthesis.layout* anlegen – und so weiter. Diese Dateien sind der Standard-Layout-Datei sehr ähnlich, nur dass sie lediglich für Einträge des entsprechenden Typs genutzt werden. Beachten Sie, dass die Standard-Layout-Datei so allgemein gehalten werden kann, dass sie die meisten Eintragstypen abdeckt.

### Das Format der Layout-Datei

Layout-Dateien werden mit einem einfachen markup-Format erstellt, bei dem die Kommandos mit einem "backslash" (`\`) eingeleitet werden. Alle Textbestandteile, die nicht als Kommando identifiziert werden, gelangen direkt in die Ausgabedatei.

### Feldkommandos

Ein beliebiges Wort, vor dem ein backslash steht, z.B. `\author`, `\editor`, `\title` or `\year`, wird als Verweis auf das entsprechende Feld ausgewertet, das dann direkt in die Ausgabe kopiert wird.

### Feldformatierer

Oft muss der Feldinhalt vor der Ausgabe verarbeitet werden. Dies wird mit Hilfe eines *Feldformatierers* gemacht - einer java class, die eine Methode zur Verarbeitung des Feldinhaltes enthält.

Ein Formatierer wird angewendet, indem man das Kommando `\format` gefolgt vom Namen des Formatierers in eckigen Klammern und dem Feldnamen in geschweiften Klammern einfügt, z.B.:

`\format[ToLowerCase]{\author}`

Sie können auch mehrere Formatierer angeben, getrennt durch Kommas. Sie werden nacheinander aufgerufen, und zwar von links nach rechts. Das Kommando

`\format[ToLowerCase,HTMLChars]{\author}`

ruft z.B. zunächst den Formatierer **ToLowerCase** auf, **HTMLChars** formatiert anschließend das Ergebnis. Auf diese Weise können Sie eine beliebige Anzahl an Formatierern auflisten.

JabRef bietet die folgenden Formatierer, wobei einige von anderen abhängen:

-   `HTMLChars` : ersetzt TeX-spezifische Sonderzeichen (z.B. {\\^a} oder {\\"{o}}) durch ihre HTML-Entsprechungen und übersetzt die LaTeX-Befehle \\emph, \\textit, \\textbf in ihre HTML-Entsprechungen.
-   `HTMLParagraphs` : interpretiert zwei aufeinanderfolgende Zeilenumbrüche (z.B. \\n \\n) als Beginn eines neuen Absatzes und erstellt dementsprechend Absatz-HTML-Tags.
-   `XMLChars` : ersetzt TeX-spezifische Sonderzeichen (z.B. {\\^a} oder {\\"{o}}) durch ihre XML-Entsprechungen.
-   `CreateDocBookAuthors` : formatiert das author-Feld im DocBook-Stil.
-   `CreateDocBookEditors` : Dokumentation folgt.
-   `CurrentDate` : gibt das aktuelle Datum aus. Ohne Argument gibt dieser Formatierer das aktuelle Datum im Format "JJJJ.MM.TT HH:MM:SS Z" (Datum, Zeit und Zeitzone) aus. Mit einem anderen Format-String als Argument kann das Datum angepasst werden. So ergibt `\format[CurrentDate]{yyyy.MM.dd}` nur das Datum, z.B. 2005.11.30.
-   `AuthorFirstFirst` : formatiert die Felder author/editor mit den Vornamen zuerst.
-   `AuthorFirstFirstCommas` oder `AuthorFirstLastCommas` : formatiert die Felder author/editor mit den Vornamen zuerst und abgetrennt durch Kommas.
-   `AuthorFirstLastOxfordCommas` : ähnlich wie `AuthorFirstLastCommas`, außer dass das "and" zwischen den letzten beiden Namen durch ein Komma eingeleitet wird.
-   `AuthorFirstAbbrLastCommas` : formatiert die Felder author/editor mit abgekürzten Vornamen, abgetrennt durch Kommas, mit einem "and" zwischen den letzten beiden Namen.
-   `AuthorFirstAbbrLastOxfordCommas` : ähnlich wie `AuthorFirstAbbrLastCommas`, außer dass das "and" zwischen den letzten beiden Namen durch ein Komma eingeleitet wird.
-   `AuthorLastFirst` : formatiert die Felder author/editor mit den Nachnamen zuerst.
-   `AuthorAbbreviator` oder `AuthorLastFirstAbbreviator` : kürzt die Vornamen und mittleren Namen aller Autoren. Dieser Formatierer gibt Nachnamen zuerst aus. Wenn Sie abgekürzte Namen mit vorangestellten Initialen wollen, wenden Sie anschließend den Formatierer `AuthorFirstFirst` an.
-   `AuthorLastFirstCommas` : formatiert die Felder author/editor mit den Nachnamen zuerst, abgetrennt durch Kommas, mit einem "and" zwischen den letzten beiden Namen.
-   `AuthorLastFirstOxfordCommas` : ähnlich wie `AuthorLastFirstCommas`, außer dass das "and" zwischen den letzten beiden Namen durch ein Komma eingeleitet wird.
-   `AuthorLastFirstAbbrCommas` : formatiert die Felder author/editor mit Nachnamen zuerst und abgekürzten Vornamen, abgetrennt durch Kommas, mit einem "and" zwischen den letzten beiden Namen.
-   `AuthorLastFirstAbbrOxfordCommas` : ähnlich wie `AuthorLastFirstAbbrCommas`, außer dass das "and" zwischen den letzten beiden Namen durch ein Komma eingeleitet wird.
-   `AuthorAndsReplacer` : ersetzt "and" zwischen den Namen durch ";", zwischen den letzten beiden Autoren steht "&".
-   `AuthorAndsCommaReplacer` : ersetzt "and" zwischen den Namen durch "," sowie "&" zwischen den beiden letzten.
-   `AuthorOrgSci` : Der erste Autor erscheint als "Nachname, Vorname", alle anderen als "Vorname Nachname". Vornamen werden abgekürzt.
-   `AuthorAbbreviator` : Dokumentation folgt.
-   `AuthorNatBib` : formatiert Autorennamen im Natbib-Stil, also nur mit Nachnamen; zwei Autoren werden durch ein "and" voneinander getrennt, bei mehr als zwei Autoren wird der erste angegeben, gefolgt von "et al."
-   `NoSpaceBetweenAbbreviations` : Leerzeichen zwischen mehreren abgekürzten Vornamen werden gelöscht.
-   `FileLink(Dateityp)` : wenn kein Argument angegeben wird, gibt dieser Formatierer den ersten externen Dateityp aus, der in dem Feld "file" angegeben ist.

    Dieser Formatierer nimmt den Namen eines Dateityps als optionales Argument, das in Klammern nach dem Namen des Formatierers angegeben wird. Zum Beispiel wird mit `\format[FileLink(pdf)]{\file}` der Dateityp `pdf` als Argument angegeben. Wenn ein Argument mitgegeben wird, wählt der Formatierer den ersten Dateilink des entsprechenden Typs. Im Beispiel wird der Pfad zum ersten PDF-Link ausgegeben.

-   `FormatPagesForHTML` : ersetzt "--" durch "-".
-   `FormatPagesForXML` : ersetzt "--" durch einen XML en-dash (Gedanken- bzw. Bis-Strich).
-   `Replace(regexp,ersetzedurch)` : führt eine Ersetzung mit einem Regulären Ausdruck durch. Um diesen Formatierer zu benutzen, muss ein zweiteiliges Argument mitgegeben werden. Die Teile werden durch ein Komma getrennt. Will man ein Komma ausgeben lassen, muss man es maskieren: \\,

    Der erste Teil ist der Reguläre Ausdruck, nach dem gesucht wird. Er wird normal geschrieben, ohne Backslashes (\\) zu maskieren. Eine Beschreibung von Regulären Ausdrücken ist hier zu finden:
    http://java.sun.com/j2se/1.4.2/docs/api/java/util/regex/Pattern.html

    Der zweite Teil ist der Text, der für alle Treffer eingesetzt werden soll.

-   `RemoveBrackets` : entfernt alle geschweiften Klammern "{" oder "}".
-   `RemoveBracketsAddComma` : Dokumentation folgt.
-   `RemoveWhitespace` : löscht alle Leerzeichen.
-   `RemoveLatexCommands` : entfernt LaTeX Kommandos wie `\emph`, `\textbf` etc. Zusammen mit `HTMLChars` oder `XMLChars` sollte dieser Formatierer zuletzt aufgerufen werden.
-   `RemoveTilde` : ersetzt das Tilde-Zeichen (~), das in LaTeX als festes Leerzeichen dient, durch ein normales Leerzeichen. Nützlich in Kombination mit dem [Namens-Formatierer](#NameFormatter), der im nächsten Abschnitt beschrieben wird.
-   `ToLowerCase` : macht aus allen Buchstaben Kleinbuchstaben.
-   `ToUpperCase` : macht aus allen Buchstaben Großbuchstaben.
-   `GetOpenOfficeType` : gibt die Nummer wieder, die vom bibliographischen System von OpenOffice.org (Versionen 1.x und 2.x) benutzt wird, um den Typ dieses Eintrags zu bezeichnen.
-   `RTFChars` : ersetzt alle TeX-spezifischen Sonderzeichen (z.B. {\\^a} oder {\\"{o}}) durch ihre RTF-Entsprechung und übersetzt LaTeX-Befehle wie \\emph, \\textit, \\textbf in ihre RTF-Entsprechungen.

Falls keiner der verfügbaren Formatierer das Ergebnis erzielt, das Sie erreichen möchten, können Sie Ihren eigenen Formatierer hinzufügen, indem Sie das `net.sf.jabref.export.layout.LayoutFormatter`-Interface implementieren. Wenn Sie Ihre Klasse (class) in das Paket `net.sf.jabref.export.layout.format` einfügen, können Sie den Formatierer mit seinem Klassennamen aufrufen, so wie auch die Standard-Formatierer. Ansonsten müssen Sie den Formatierer mit seinem vollen Namen aufrufen (inklusive Paketname). In jedem Fall muss der Formatierer in ihrem classpath sein, wenn Sie JabRef starten.

## <a href="" id="NameFormatter">Eigene Namens-Formatierer verwenden</a>

Mit JabRef 2.2 ist es jetzt möglich, eigene Namens-Formatierer zu definieren. Dazu wird die Syntax der Bibliographie-Stile (bst) verwendet. Das erlaubt äußerste Flexibilität, ist allerdings aufwändig in der Schreibweise.

Sie können unter **Optionen -&gt; Einstellungen -&gt; Namens-Formatierer** Ihren eigenen Formatierer schreiben. Benutzen Sie das folgende Format: `<Fall1>@<Bereich11>@<Format>@<Bereich12>@<Format>@<Bereich13>...@@       <Fall2>@<Bereich21>@... und so weiter.`

Dieses Format teilt die Aufgabe, eine Liste von Autoren zu formatieren, in unterschiedliche Fälle abhängig von der Zahl der Autoren (das ist nötig, weil manche Formate sich je nach der Zahl der Autoren unterscheiden). Die einzelnen Fälle werden durch `@@` voneinander getrennt und enthalten Anweisungen, wie jeder einzelne Autor in diesem Fall zu formatieren ist. Diese Anweisungen werden durch `@` getrennt.

Fälle werden durch Ganzzahlen (1, 2, 3, etc.) oder das Zeichen `*` (alle Autoren) definiert. Sie geben die nachfolgenden Anweisungen an den Formatierer weiter, falls weniger oder gleich viele Autoren vorhanden sind.

Bereiche sind entweder `<Ganzzahl>..<Ganzzahl>`, `<Ganzzahl>` oder das Zeichen `*`. Die Liste der Autoren fängt bei 1 an. Die Ganzzahlen können einen negativen Wert haben, um vom letzten Autor der Liste zu starten, wobei -1 der Wert für den letzten Autor ist.

Als Beispiel dient die Autorenliste "Joe Doe and Mary Jane and Bruce Bar and Arthur Kay":

-   1..3 betrifft Joe, Mary und Bruce
-   4..4 betrifft Arthur
-   \* betrifft alle
-   2..-1 betrifft Mary, Bruce und Arthur

Die `<Format>`-Strings nutzen das BibTeX-Namensschema:

Die vier Buchstaben v, f, l, j stehen für die Namensteile von, Vorname (first), Nachname (last) und Junior und werden in geschweiften Klammern gesetzt. Ein einzelner Buchstabe v, f, l, j bedeutet, dass der Name abgekürzt werden soll. Wenn einer dieser Buchstaben oder Buchstabenpaare vorkommen, gibt JabRef alle entsprechenden Namen (eventuell abgekürzt) aus, aber der Ausdruck in geschweiften Klammern wird nur ausgegeben, wenn der Namensteil existiert.

Beispielsweise wird beim Format "{ll} {vv {von Part}} {ff}" die Autorenliste "Mary Kay and John von Neumann" von JabRef als "Kay Mary" (mit zwei Leerzeichen) und "Neumann von von Part John" ausgegeben.

Zwei weitere Beispiele sollen das Ganze verdeutlichen; die BibTeX-Dokumentation gibt weitere Hinweise.

Kurzes Beispiel: `"{ll}, {f.}"` formatiert `"Joe Doe"` als `"Doe, J."`

Ausführliches Beispiel:

> Um
>
> `"Joe Doe and Mary Jane and Bruce Bar and Arthur         Kay"`
>
> als
>
> `"Doe, J., Jane, M., Bar, B. and Kay,         A."`
>
> zu formatieren, nutzt man
>
> `1@*@{ll}, {f}.@@2@1@{ll}, {f}.@2@ and {ll},         {f}.@@*@1..-3@{ll}, {f}., @-2@{ll}, {f}.@-1@ and {ll},         {f}.`

Falls jemand eine bessere Dokumentation hierzu verfassen möchte: Wenden Sie sich einfach an die JabRef-Maililnglisten!

### Bedingte Ausgabe

Manche statische Ausgabe macht nur Sinn, wenn ein bestimmtes Feld nicht leer ist. Wenn wir z.B. hinter den Namen der Editoren den Text `(Hrsg.)` haben wollen, brauchen wir folgendes:

`\format[HTMLChars,AuthorFirstFirst]{\editor}     (Hrsg.)`

Wenn nun aber das `editor`-Feld leer ist - möglicherweise ist es für den Eintrag, der exportiert werden soll, nicht erforderlich -, dann würde das `(Hrsg.)` dennoch erscheinen. Das kann man mit den Kommandos `\begin` und `\end` verhindern:

`\begin{editor}     \format[HTMLChars,AuthorFirstFirst]{\editor} (Hrsg.)      \end{editor}`

Die Kommandos `\begin` und `\end` sorgen dafür, dass der Text, den sie einschließen, nur dann ausgegeben wird, falls das Feld, auf das in den geschweiften Klammern verwiesen wird, für den zu exportierenden Eintrag definiert und damit nicht leer ist.

**Anmerkung:** Das Benutzen der Kommandos `\begin` und `\end` ist ein Schlüssel zum Erstellen von Layout-Dateien, die mit einer Vielzahl von Eintragstypen umgehen können.

### Gruppierte Ausgabe

Wenn Sie Ihre Einträge auf der Basis eines bestimmten Feldes gruppieren wollen, benutzen Sie die Kommandos für die gruppierte Ausgabe. Die gruppierte Ausgabe ist der bedingten Ausgabe sehr ähnlich, auß dass der Text zwischen den Kommandos nur ausgegeben wird, wenn das Feld, auf das in den geschweiften Klammern verwiesen wird, unterschiedliche Werte enthält.

Nehmen wir zum Beispiel an, dass wir die Ausgabe nach dem keyword (Stichwort) gruppieren wollen. Bevor die Datei exportiert wird, müssen die Einträge nach dem keyword sortiert worden sein. Dann benutzen Sie die folgenden Kommandos, um nach keyword zu gruppieren:

`\begingroup{keywords}New Category:     \format[HTMLChars]{\keywords}      \endgroup{keywords}`

## Teilen Sie Ihre Arbeit mit anderen

Mit externen Layout-Dateien ist es einfach, Ihre eigenen Export-Formate mit anderen Anwendern gemeinsam zu benutzen. Falls Sie einen Exportfilter für ein Format erstellen, das nicht von JabRef unterstützt wird, oder falls Sie einen bestehenden Exportfilter verbessern, möchten wir Sie ermutigen, Ihre Arbeit auf der SourceForge.net-Seite bereitzustellen. Dasselbe gilt für Formatierklassen, die Sie schreiben. Wir würden uns freuen, eine Sammlung von bereitgestellten Layout-Dateien verteilen zu können oder die Standard-Export-Filter und Standard-Formatierer zu erweitern.
