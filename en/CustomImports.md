---
title: Custom import filters
---

# Custom import filters

JabRef allows you to define and use your own importers, in very much the same way as the standard import filters are defined. An import filter is defined by one or more Java *classes*, which parse the contents of a file from an input stream and create BibTex-Entries. So with some basic Java programming you can add an importer for your favorite source of references or register a new, improved version of an existing importer. Also, this allows you to add compiled custom importers that you might have obtained e.g. from SourceForge without rebuilding JabRef (see "Sharing your work").

Custom importers take precedence over standard importers. This way, you can override existing importers for the Autodetect and Command Line features of JabRef. Custom importers are ordered by name.

## Adding a custom import filter

Make sure, you have a compiled custom import filter (one or more `.class` files as described below) and the class files are in a directory structure according to their package structure. To add a new custom import filter, open the dialog box **Options -&gt; Manage custom imports**, and click **Add from folder**. A file chooser will appear, allowing you to select the classpath of your importer, i.e. the directory where the top folder of the package structure of your importer resides. In a second file chooser you select your importer class file, which must be derived from `ImportFormat`. By clicking **Select new ImportFormat Subclass**, your new importer will appear in the list of custom import filters. All custom importers will appear in the **File -&gt; Import -&gt; Custom Importers** and **File -&gt; Import and Append -&gt; Custom Importers** submenus of the JabRef window.

Please note that if you move the class to another directory you will have to remove and re-add the importer. If you add a custom importer under a name that already exists, the existing importer will be replaced. Although in some cases it is possible to update an existing custom importer without restarting JabRef (when the importer is not on the classpath), we recommend restarting JabRef after updating an custom-importer. You can also register importers contained in a ZIP- or JAR-file, simply select the Zip- or Jar-archive, then the entry (class-file) that represents the new importer.

## Creating an import filter

For examples and some helpful files on how to build your own importer, please check our download page.

### A simple example

Let us assume that we want to import files of the following form:

    1936;John Maynard Keynes;The General Theory of Employment, Interest and Money
    2003;Boldrin & Levine;Case Against Intellectual Monopoly
    2004;ROBERT HUNT AND JAMES BESSEN;The Software Patent Experiment

In your favorite IDE or text editor create a class derived from `ImportFormat` that implements methods `getFormatName()`, `isRecognizedFormat` and `importEntries()`. Here is an example:

import java.io.*;
import java.util.*;

import net.sf.jabref.importer.ImportFormatReader;
import net.sf.jabref.importer.OutputPrinter;
import net.sf.jabref.importer.fileformat.ImportFormat;
import net.sf.jabref.model.entry.BibEntry;
import net.sf.jabref.model.entry.BibtexEntryTypes;

public class SimpleCSVImporter extends ImportFormat {

    @Override
    public String getFormatName() {
        return "Simple CSV Importer";
    }

    @Override
    public boolean isRecognizedFormat(InputStream stream) throws IOException {
        return true; // this is discouraged except for demonstration purposes
    }

    @Override
    public List<BibEntry> importEntries(InputStream stream, OutputPrinter printer) throws IOException {
        List<BibEntry> bibitems = new ArrayList<>();
        BufferedReader in = new BufferedReader(ImportFormatReader.getReaderDefaultEncoding(stream));

        String line = in.readLine();
        while (line != null) {
            if (!line.trim().isEmpty()) {
                String[] fields = line.split(";");
                BibEntry be = new BibEntry();
                be.setType(BibtexEntryTypes.TECHREPORT);
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


Note that the example is in the default package. Suppose you have saved it under `/mypath/SimpleCSVImporter.java`. Also suppose the JabRef-2.0.jar is in the same folder as `SimpleCSVImporter.java` and Java is on your command path. Compile it using a JSDK 1.4 e.g. with

    javac -classpath JabRef-2.0.jar SimpleCSVImporter.java

Now there should be a file `/mypath/SimpleCSVImporter.class`.

In JabRef, open **Options -&gt; Manage custom imports**, and click **Add from folder**. Navigate to `/mypath` and click the **Select ...** button. Select the `SimpleCSVImporter.class` and click the **Select ...** button. Your importer should now appear in the list of custom importers under the name "Simple CSV Importer" and, after you click **Close** also in the **File -&gt; Import -&gt; Custom Importers** and **File -&gt; Import and Append -&gt; Custom Importers** submenus of the JabRef window.

## Sharing your work

With custom importer files, it's fairly simple to share custom import formats between users. If you write an import filter for a format not supported by JabRef, or an improvement over an existing one, we encourage you to post your work on our GitHub page. We'd be happy to distribute a collection of submitted import files, or to add to the selection of standard importers.
