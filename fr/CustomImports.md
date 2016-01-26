# Filtres d'importation personnalisés

JabRef vous permet de définir et d'utiliser vos propres formats d'importation, d'une façon très similaire aux filtres d'importation standard qui sont définis. Un filtre d'importation est défini par une ou plusieurs *classes* Java qui analyse le contenu d'un fichier à partir d'un flux d'entrée et crée des entrées BibTeX. Ainsi, avec un peu de programmation de base en Java, vous pouvez ajouter un format d'importation correspondant à votre source de références favorite ou enregistrer une version améliorée d'un format d'importation existant. De plus, cela vous permet d'ajouter des formats d'importation personnalisés compilés que vous pourriez obtenir à partir de SourceForge (par exemple) sans avoir à recompiler JabRef (voir plus bas "Partager votre travail").

Les formats d'importation personnalisés sont prioritaires sur les formats d'importation standard. De cette façon, vous pouvez remplacer les formats d'importations existants pour les fonctions d'auto-détection et de ligne de commande de JabRef. Les formats d'importation personnalisés sont classés par nom.

## Ajouter un filtre d'importation personnalisé

Assurez-vous que vous avez un filtre d'importation personnalisé compilé (un ou plusieurs fichiers `.class` sont décrits ci-dessous) et que les fichiers de classe soient dans la structure des répertoires selon la structure de leur paquetage. Pour ajouter un nouveau filtre d'importation personnalisé, ouvrez la boîte de dialogue **Options -&gt; Gérer les importations personnalisées**, et cliquez  **Ajouter à partir du répertoire**. Une fenêtre de sélection de fichier apparaîtra, vous permettant de sélectionner le chemin de classe de votre filtre d'importation, c'est à dire le répertoire où se trouve le répertoire supérieur de votre structure de paquetage. Vous ouvrirez autant de  fenêtres que nécessaire pour sélectionner votre fichier de classe de filtre d'importation, lequel doit dériver de `ImportFormat`. Cela permettra ainsi d'indiquer le chemin complet d'accès au fichier de classe. En cliquant sur **Sélectionner une nouvelle sous-classe de format d'importation**, votre nouveau filtre d'importation apparaîtra dans la liste des filtres d'importation personnalisés. Tous les filtres d'importations personnalisés apparaîtront dans le menu **Fichier -&gt; Importer -&gt; Filtres d'importation personnalisés** et **Fichier -&gt; Importer et joindre -&gt; Filtres d'importation personnalisés** de la fenêtre de JabRef.

S'il vous plaît, notez que si vous déplacez la classe vers un autre répertoire, vous aurez à supprimer et à ré-ajouter le filtre d'importation. Si vous ajoutez un filtre d'importation personnalisé sous un nom qui existe déjà, le filtre d'importation existant sera remplacé. De plus, dans certains cas, il est possible de mettre à jour un filtre d'importation personnali sé existant sans redémarrer JabRef (lorsque le filtre d'importation n'est pas dans le chemin de classe). Cependant, nous recommandons de redémarrer JabRef après la mise à jour d'un filtre d'importation personnalisé. Vous pouvez aussi ajouter des filtres d'importation contenu dans un fichier ZIP ou JAR ; sélectionnez simplement l'archive Zip ou Jar, puis l'entrée (fichier de classe) qui correspond au nouveau filtre d'importation.

## Créer un filtre d'importation

Pour des exemples et quelques fichiers utiles sur la façon de construire vos propres filtres d'importation, consultez s'il vous plaît la page de téléchargement.

### Un exemple simple

Supposons que vous vouliez importer des fichiers de la forme suivante :

    1936;John Maynard Keynes;The General Theory of Employment, Interest and Money
    2003;Boldrin & Levine;Case Against Intellectual Monopoly
    2004;ROBERT HUNT AND JAMES BESSEN;The Software Patent Experiment

Dans votre outil de développement ou éditeur de texte préféré, créez une classe dérivée de `ImportFormat` qui implémente les méthodes `getFormatName()`, `isRecognizedFormat` and `importEntries()`. En voici un exemple :

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
        return true; // ceci est déconseillé sauf pour les besoins de la démonstration
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

Notez que l'exemple est dans le paquetage par défaut. Supposez que vous l'avez sauvé sous `/mypath/SimpleCsvImporter.java`. Supposez aussi que JabRef-2.0.jar est dans le même répertoire que `SimpleCsvImporter.java` et que Java est dans votre chemin d'exécutables. Compilez-le en utilisant par exemple JSDK 1.4 avec

    javac -classpath JabRef-2.0.jar SimpleCsvImporter.java

A présent il doit y avoir un fichier `/mypath/SimpleCsvImporter.class`.

Dans JabRef, ouvrez **Options -&gt; Gérer les importations personnalisées**, et cliquez sur **Ajouter à partir du répertoire**. Allez dans `/mypath` et cliquez le bouton **Sélectionner...**. Sélectionnez `SimpleCsvImporter.class` et cliquez sur le bouton **Sélectionner...**. Votre filtre d'importation devrait maintenant apparaître dans la liste des filtres d'importation personnalisés sous le nom "Simple CSV Importer" et, après avoir cliqué sur **Fermer**, aussi dans les menus **Fichier -&gt; Importer -&gt; Filtres d'importation personnalisés** et **Fichier -&gt; Importer et joindre -&gt; Filtres d'importation personnalisés** de la fenêtre de JabRef.

## Partager votre travail

Avec des fichiers de filtres d'importation personnalisés, il est vraiment simple de partager des formats d'importation personnalisés entre utilisateurs. Si vous écrivez un filtre d'importation pour un format non supporté par JabRef, ou l'amélioration d'un filtre existant, nous vous encourageons à soumettre votre travail sur notre page SourceForge.net. Nous serons heureux de distribuer la collection des fichiers d'importation soumis, ou d'en ajouter à la sélection de filtres d'importation standard.
