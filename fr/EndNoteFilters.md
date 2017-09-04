---
title: Filtre d'exportation EndNote
outdated: true
---

# Filtre d'exportation EndNote

## Exportation à partir de JabRef

JabRef peut exporter des bases de données dans des fichiers lisibles par EndNote. Pour utiliser cette fonction, choisissez **Fichier → Export**, choisissez le type de fichier **Endnote (\*.txt)** et spécifiez le nom du fichier d'exportation.

## Importer dans EndNote

Le fichier par défaut d'importation d'EndNote ne traite pas proprement les auteurs ou les éditeurs multiples. Il y a deux façons de contourner cela :

1.  Utiliser le filtre interne et corriger ensuite le fichier. Pour ouvrir le fichier dans EndNote, créez une nouvelle base de données ou ouvrez une ancienne base de données dans EndNote. Ensuite, sélectionnez **Fichier → Importer**, cliquer sur **Choisir le filtre**, puis sélectionnez le fichier exporté et cliquez sur **Choisir**. Cliquez sur **Options d'importation** et sélectionnez **Importation EndNote**. Cliquez sur **Importer** pour démarrer l'importation. Après l'importation, sélectionnez **Edition→ Changer le texte**. Changez **N'importe quel champ** en **Author**. Entrez " and " à l'intérieur du champ de recherche (sans les guillemets). Entrez un retour chariot dans le champ Remplacer (option-return pour Mac OS X, ctrl-return pour Windows XP). Cliquez sur **Remplacer**. Répétez avec le champ **Secondary Author**. \[NdT: difficile à traduire sans avoir EndNote... oui\]
2.  Installer le *filtre d'importation d'EndNote depuis JabRef* dans le *EndNote Extras*. Suivez les instructions dans la section *Utilisation avancée* ci-dessous. Pour ouvrir le fichier dans EndNote, créez une nouvelle base de données ou ouvrez une ancienne base de données dans EndNote. Ensuite, sélectionnez **Fichier → Importer**, cliquez sur **Choisir le filtre**, puis sélectionnez le fichier exporté et cliquez sur **Choisir**. Cliquez sur **Options d'importation** et sélectionnez **Filtre d'importation d'EndNote depuis JabRef** (s'il n'est pas présent, sélectionnez Autres filtres. S'il n'apparaît toujours pas, il n'a pas été installé correctement). Cliquer sur **Importer** pour démarrer l'importation.

## Notes

Le filtre d'exportation EndNote fait correspondre les types d'entrées BibTeX avec les types de référence d'EndNote de la façon suivante :

    Type d'entrée BibTeX -> Type de référence d'EndNote
    ---------------------------------------------------
    misc, other -> Generic
    unpublished -> Manuscript
    manual -> Computer Program
    article -> Journal Article
    book -> Book
    booklet -> Personal Communication
    inbook,incollection -> Book Section
    inproceedings -> Conference Proceedings
    techreport -> Report
    mastersthesis, phdthesis -> Thesis

## Auteurs collectifs

Par défaut, le filtre d'exportation suppose que le contenu des champs author ou editor qui sont dans des accolades sont des auteurs collectifs et remplace les accolades par une virgule. Cependant, cela signifie que les champs qui contiennent du code LaTeX entre accolades seront supposés être des auteurs collectifs et seront donc improprement formatés.

## Utilisation avancée : Suppléments EndNote

Pour une meilleure interopérabilité entre Endnote et JabRef, télécharger l'ensemble de filtres Endnote depuis la page de ressources du site de JabRef.
