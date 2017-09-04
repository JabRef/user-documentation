---
title: Support des metadonnées XMP dans JabRef
---

# Support des metadonnées XMP dans JabRef

NdT : Menus à vérifier !!!

XMP est un standard créé par Adobe Systems pour stocker des métadonnées (des données sur les données) dans des fichiers. A exemple bien connu de métadonnées sont les balises MP3 qui peuvent être utilisées pour décrire l'artiste, l'album et le nom de la chanson dans un fichier MP3. Ajouter des métadonnées à des fichiers MP3 aide les autres utilisateurs à identifier correctement les chansons indépendamment du nom du fichier et permet aux logiciels (lecteurs MP3 par exemple) de trier et de grouper les chansons.

Avec le support de XMP, l'équipe de développement de JabRef introduit les avantages des métadonnées au monde des gestionnaires de références. Vous avez maintenant la possibilité d'"écrire des métadonnées XMP" dans l'onglet General de Jabref, ce qui mettra toutes les informations BibTex dans un fichier PDF. En transférant ce fichier à un collègue, il aura simplement à faire glisser le fichier dans JabRef pour que toutes les informations que vous y avez entrées lui soient disponibles.

## Utilisation

Pour utiliser la fonction XMP dans JabRef, vous pouvez faire les choses suivantes :

-   **Importer un unique fichier PDF annoté** contenant les métadonnées XMP. Vous pouvez sélectionner "Fichier → Importer dans... → PDF avec annotations XMP" ou faire glisser le fichier dans la fenêtre principale.
-   **Ecrire les informations bibliographiques dans le fichier PDF associé.** Pour cela, double-cliquez sur l'entrée dans la fenêtre principale, allez dans l'onglet "General" et cliquer sur "Ecrire XMP".
-   Si vous voulez **annoter tous les PDFs dans une base de données déterminée** vous pouvez sélectionner "Outils → Ecrire XMP pour la base de données"
-   Pour vérifier si cela a fonctionné, vous pouvez ouvrir le PDF dans Adobe Acrobat et sélectionner "Fichier → Propriétés du Document → Métadonnées additionnelles → Avancé". Dans l'arborescence sur la droite vous devriez voir une entrée nommée "http://purl.org/net/bibteXMP". Cela fonctionne uniquement avec Adobe Acrobat, et pas avec Adobe Reader.
-   Si vous n'avez pas Adobe Acrobat, vous pouvez utiliser *pdfinfo* à la place afin de voir les métadonnées XMP. *pdfinfo* fait partie de Xpdf (`www.foolabs.com/xpdf`) et Poppler (`http://poppler.freedesktop.org`).

## Format de fichier BibteXmp

XMP utilise un sous-ensemble du Schéma de Description des Ressources (Resource Description Framework - RDF) pour stocker les données. Pour JabRef, un nouveau format de métadonnées est utilisé ; il ressemble beaucoup au format BibTeX. Fondamentalement, tous les champs et valeurs sont transformés en noeuds dans un document XML. Seuls les auteurs et les éditeurs sont stockés comme des rdf:Seq-structures, aussi les utilisateurs des données peuvent éviter la séparation basées sur des 'and'. Toutes les chaînes et les références croisées seront présentes dans les données.

Le schéma suivant, facile et minimal, est utilisé :

-   La clef BibTeX est stockée comme une `bibtexkey`.
-   Le type d'entrée BibTeX est stocké comme une `entrytype`.
-   les champs `author` et `editor` sont encodés comme des `rdf:Seq`s où les auteurs individuels sont représentés par des `rdf:li`s.
-   Tous les autres champs sont sauvés en utilisant directement le nom de leur champ.

Ci-dessous, un exemple de mise en correspondance

    @INPROCEEDINGS{CroAnnHow05,
      author = {Crowston, K. and Annabi, H. and Howison, J. and Masango, C.},
      title = {Effective work practices for floss development: A model and propositions},
      booktitle = {Hawaii International Conference On System Sciences (HICSS)},
      year = {2005},
      owner = {oezbek},
      timestamp = {2006.05.29},
      url = {http://james.howison.name/publications}
    }

sera transformé en

    <rdf:Description xmlns:bibtex="http://jabref.sourceforge.net/bibteXMP/"
        bibtex:bibtexkey="CroAnnHow05"
        bibtex:year="2005"
        bibtex:title="Effective work practices for floss development: A model and propositions"
        bibtex:owner="oezbek"
        bibtex:url="http://james.howison.name/publications"
        bibtex:booktitle="Hawaii International Conference On System Sciences (HICSS)"
        bibtex:timestamp="2006.05.29">
            <bibtex:author>
                <rdf:Seq>
                    <rdf:li>K. Crowston</rdf:li>
                    <rdf:li>H. Annabi</rdf:li>
                    <rdf:li>J. Howison</rdf:li>
                    <rdf:li>C. Masango</rdf:li>
                </rdf:Seq>
            </bibtex:author>
        <bibtex:entrytype>Inproceedings</bibtex:entrytype>
    </rdf:Description>

Faites attention aux pièges suivants si vous essayez de traiter les métadonnées bibtexXMP :

-   Selon RDF, les couples attribut-valeur peuvent aussi être exprimés comme des noeuds, et vice-versa.

## Liens :

Quelques liens (en anglais) à propos de XMP et de l'annotation des PDFs :

-   [James Howison's blog "Themp---Managing Academic Papers like MP3s"](http://freelancepropaganda.com/themp/)
-   [XML.com article about XMP](http://www.xml.com/pub/a/2004/09/22/xmp)
-   [PDFBox](http://pdfbox.apache.org/) by the Apache Software Foundation is the Jaba library used to access the PDFs and the metadata stream.
-   [Good thread on ArsTechnica discussing the management of PDFs.](http://arstechnica.com/civis/viewtopic.php?f=19&t=408429)
-   [Adobe XMP Specification](http://www.adobe.com/content/dam/Adobe/en/devnet/xmp/pdfs/XMPSpecificationPart1.pdf)


