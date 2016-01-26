# Importfilter anpassen

JabRef bietet Ihnen die Möglichkeit, ganz ähnlich den Standard-Importern, eigene Importer zu definieren und zu benutzen. Man definiert einen Importer durch eine oder mehrere Java *Klassen*, die Dateinhalte aus einem sogenannten *Input stream* lesen und daraus BibTex-Einträge erzeugen. Sie können vorkompilierte Importer einbinden, die Sie vielleicht von SourceForge erhalten haben (siehe "Ihre Arbeit anderen zur Verfügung stellen"). Sie können auch mit Grundkenntnissen der Java-Programmierung eigene Importer für für Sie wichtige Referenzquellen erstellen oder neue, verbesserte Versionen existierender Importer einbinden, ohne JabRef neu zu kompilieren.

Externe Importfilter haben Vorrang vor Standard-Importern. So können Sie mit Ihren Importern die existierenden in der automatischen Formaterkennung und an der Kommandozeile in JabRef überschreiben. Externe Importfilter selbst sind dann nach Namen sortiert.

## Einen externen Importfilter hinzufügen

Stellen Sie sicher, dass Sie den Importer in kompilierter Form haben (eine oder mehrere `.class` Dateien) und dass die Klassendateien in einer Verzeichnisstruktur entsprechend ihrer Package-Struktur liegen. Um einen neuen externen Importfilter hinzuzufügen, öffnen Sie den Dialog **Optionen -&gt; Verwalte externe Importfilter**, und klicken Sie auf **Aus Klassenpfad hinzufügen**. Ein Dateiauswahl-Fenster erscheint, mit dem Sie den Klassenpfad des Importers wählen, dass heißt den obersten Ordner, in dem die Package-Struktur Ihres Importers beginnt. In einem zweiten Dateiauswahl-Fenster wählen Sie die *.class*-Datei Ihres Importers, die von `ImportFormat` abgeleitet ist. Wenn Sie **Klasse auswählen** klicken, erscheint Ihr neuer Importer in der Liste der externen Importfilter. Alle externen Importfilter erscheinen in den JabRef-Submenüs **Datei -&gt; Importieren -&gt; Externe Importfilter** und **Datei -&gt; Importieren und Anhängen -&gt; Externe Importfilter**.

Bitte beachten Sie: wenn Sie die Klassen in ein anderes Verzeichnis verschieben, müssen Sie den Importer entfernen und neu hinzufügen. Wenn Sie einen Importfilter mit einem bereits vorhandenen Namen registrieren, ersetzt JabRef den vorhandenen externen Importfilter. Auch wenn es in manchen Fällen möglich ist, einen schon registrierten Importer zu aktualisieren ohne JabRef neu zu starten (nämlich dann, wenn der Importer nicht im Klassenpfad von JabRef ist), empfehlen wir, grundsätzlich JabRef neu zu starten, wenn Sie ein Update eines externen Importers durchgeführt haben. Sie können auch Importer aus ZIP- oder JAR-Archiven registrieren, wählen Sie einfach **Aus Archiv-Datei hinzufügen**, dann das ZIP- oder JAR-Archiv und dann den Eintrag (Klassendatei), der den neuen Importer darstellt.

## Einen Importfilter entwickeln

Bitte schauen Sie auf unseren Download-Seiten nach Beispielen und nützliche Dateien zur Entwicklung Ihres Importfilters.

### Ein einfaches Beispiel

Angenommen, wir wollen Dateien der folgenden Form importieren:

    1936;John Maynard Keynes;The General Theory of Employment, Interest and Money
    2003;Boldrin & Levine;Case Against Intellectual Monopoly
    2004;ROBERT HUNT AND JAMES BESSEN;The Software Patent Experiment

Erzeugen Sie in einem Text-Editor eine von `ImportFormat` abgeleitete Klasse, die die Methoden `getFormatName()`, `isRecognizedFormat()` und `importEntries()` implementiert. Hier ein Beispiel:

    import java.io.*;
    import java.util.*;
    import net.sf.jabref.*;
    import net.sf.jabref.imports.ImportFormat;
    import net.sf.jabref.imports.ImportFormatReader;

    public class SimpleCsvImporter extends ImportFormat {

      public String getFormatName() {
        return "Simple CSV Importer";
      }

      public boolean isRecognizedFormat(InputStream stream) throws IOException {
        return true; // this is discouraged except for demonstration purposes
      }

      public List importEntries(InputStream stream) throws IOException {
            ArrayList bibitems = new ArrayList();
        BufferedReader in = new BufferedReader(ImportFormatReader.getReaderDefaultEncoding(stream));

        String line = in.readLine();
        while (line != null) {
          if (!"".equals(line.trim())) {
            String[] fields = line.split(";");
            BibEntry be = new BibEntry(Util.createNeutralId());
            be.setType(BibtexEntryType.getType("techreport"));
            be.setField("year", fields[0]);
            be.setField("author", fields[1]);
            be.setField("title", fields[2]);
            bibitems.add(be);
            line = in.readLine();
          }
        }
        return bibitems;
      }
    }

Beachten Sie, dass die Beispielklasse im Default-Package liegt. Angenommen, Sie haben sie unter `/meinpfad/SimpleCsvImporter.java` gespeichert. Nehmen wir weiter an, die Datei *JabRef-2.0.jar* ist im gleichen Verzeichnis wie `SimpleCsvImporter.java` und Java ist in Ihrem Kommandopfad. Kompilieren Sie die Klasse mit JSDK 1.4 zum Beispiel mit folgendem Kommandozeilen-Aufruf:

    javac -classpath JabRef-2.0.jar SimpleCsvImporter.java

Nun sollte dort auch eine Datei `/mypath/SimpleCsvImporter.class` liegen.

Öffnen Sie in JabRef **Optionen -&gt; Verwaltung externer Importfilter** und klicken Sie auf **Aus Klassenpfad hinzufügen**. Navigieren Sie nach `/meinpfad` und klicken Sie **Klassenpfad auswählen**. Wählen Sie dann `SimpleCsvImporter.class` und klicken Sie **Klasse auswählen**. Ihr Importfilter sollte nun in der Liste der externen Importfilter unter dem Namen "Simple CSV Importer" erscheinen, und, sobald Sie **Schließen** gewählt haben, auch in den Untermenüs **Datei -&gt; Importieren -&gt; Externe Importfilter** und **Datei -&gt; Importieren und Anhängen -&gt; Externe Importfilter** des JabRef-Hauptfensters.

## Teilen Sie Ihre Arbeit

Mit externen Importfiltern ist es recht einfach, Importfilter zwischen Nutzern auszutauschen und gemeinsam zu nutzen. Wenn Sie einen Importer für ein Format schreiben, das JabRef noch nicht unterstützt, oder einen Importer verbessern, bitten wir Sie, Ihre Ergebnisse auf unserer SourceForge.net Seite zu veröffentlichen. Wir bieten gerne eine Sammlung eingereichter Importfilter an oder fügen sie unserer Auswahl an Standard-Importfiltern hinzu.
