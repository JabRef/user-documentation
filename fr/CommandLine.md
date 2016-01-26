---
title: Les options de la ligne de commande
---

# Les options de la ligne de commande

Bien que JabRef soit d'abord une application graphique, il offre plusieurs options pour la ligne de commande qui peuvent être utiles et qui peuvent réaliser des opérations de conversion de fichiers sans avoir à ouvrir l'interface graphique.

Vous pouvez spécifier le chargement d'un ou de plusieurs fichiers BibTeX en indiquant simplement leurs noms. Prenez la précaution de spécifier l'ensemble des options avant la liste des fichiers. Vous devez toujours vérifier que le premier nom de fichier ne sera pas compris comme l'argument d'une option - cela veut simplement dire que si une option de type logique comme `-n` ou `-l` précède immédiatement un nom de fichier, il faut ajouter le mot "true" comme argument. Par exemple, la commande

`jabref -o filetoexport.xml,docbook -n true     original.bib`

va charger correctement le fichier `original.bib` et l'exporter au format docbook dans le fichier `filetoexport.xml` sans afficher l'interface graphique. Le mot *true* évite que le nom de fichier ne soit interpréter comme un argument de l'option `-n`

## Aide : -h

Cette option demande à JabRef d'afficher un résumé des options possibles avec la ligne de commande et de quitter immédiatement.

## No-GUI mode : -n

Cette option supprime le lancement de l'interface graphique et du logo JabRef qui apparaît normalement au démarrage de l'application. Elle permet la sortie du programme immédiatement après l'exécution des autres options.

Cette option est quelque fois utile pour réaliser des opérations de conversion à partir de la ligne de commande ou dans un script.

## Importation de fichier : -i nomdefichier\[,format\]

Cette option demande à JabRef d'importer ou de charger le fichier indiqué. Si on n'indique que le nom du fichier, il est chargé comme un fichier BibTeX. Si le fichier est suivi d'une virgule et d'un format d'importation, le filtre d'importation correspondant est utilisé. Utilisez l'option `-h` pour obtenir la liste des formats d'importations disponibles.

Si une option de sortie est ajoutée, l'importation aura toujours lieu avant et le fichier importé ou chargé sera ensuite converti selon le format d'exportation. Si l'interface graphique (GUI) n'est pas supprimée avec l'option `-n`, les fichiers importés ou chargés seront affichés dans la fenêtre principale.

L'option `-i`  ne peut être spécifiée qu'une seule fois et pour un seul fichier.

## Exportation de fichier : -o nomdefichier\[,format\]

Cette option demande à JabRef de sauvegarder ou d'exporter un fichier chargé ou importé par la même commande ligne. Si le fichier importé l'est via une option `-i`, alors la base de données sera exportée. Autrement, le fichier spécifié (et chargé avec succès) sans l'option `-i` sera exporté.

Si seul le nom du fichier est indiqué, il est sauvegardé au format BibTeX. Si le fichier est suivi par une virgule et un format d'exportation, le filtre d'exportation demandé sera utilisé. Un filtre d'exportation personnel peut ainsi être utilisé et sera systématiquement préféré au style d'exportation standard de même nom.

Utilisez l'option `-h` pour avoir la liste des formats disponibles.

Si l'option `-n` n'a pas été utilisée, les opérations d'exportation sont faites avant l'ouverture de la fenêtre JabRef et la base importée ou chargée sera présente dans la fenêtre principale.

L'option `-o` ne peut être utilisée qu'une seule fois et pour un seul fichier.

## Exportation des préférences : -x nomdefichier

Cette option indique à JabRef d'exporter sous forme d'un fichier .xml, l'ensemble des préférences de l'utilisateur. Après l'exportation, JabRef est lancé normalement.

## Importation des préférences : -p nomdefichier

Cette option indique à JabRef d'importer les préférences de l'utilisateur préalablement exportées avec l'option `-x`. Après l'importation, JabRef démarre normalement.

## Exportation des entrées correspondantes : -m \[field=\]TermeDeRecherche,FichierDeSortie\[,FormatExportation\]

JabRef enregistre toutes les entrées de la base correspondant à un terme de recherche donné dans un nouveau fichier. Le format du fichier d'exportation peut être choisi, le format par défaut étant un tableau html (avec résumé et BibTeX, fourni par tablerefsabsbib).

Appel : `JabRef.jar -m [field=]TermeDeRecherche,FichierDeSortie[,FormatExportation] -n true FichierEntrée`

Pour des informations sur la fonction de recherche, voyez l'aide sur la 'recherche avancée'. De plus, il est aussi possible de recherche des entrées sur une période temporelle au lieu de les rechercher uniquement pour une année donnée.

Notez que les termes de recherche contenant des espaces doivent être encadrés par des guillemets.

Exemples

-   `Year=2005`
-   `title|keywords=Optimization`
-   `(author=bock or title|keywords="computer methods")and not(author=sager)`
-   `Year=1989-2005`

## Exportation des entrées utilisées : -a nomdefichier\[.aux\],nouvelleBaseBib\[.bib\]

Il est quelques fois utile d'avoir un fichier BibTeX qui ne contienne que les références BibTeX utilisées. Une liste de ces entrées utilisées est stockée dans un fichier .aux. JabRef peut analyser ce fichier pour générer un nouveau fichier BibTeX qui ne contiendra que les entrées connues et utilisées. Cela veut dire que si une entrée n'est pas définie dans le fichier BibTeX courant, elle ne sera pas intégrée dans le nouveau fichier.

## Récupération par internet : --fetch==nom du récupérateur:chaîne d'interrogation

Les récupérateurs dans le menu Recherche Internet peuvent aussi fonctionner en ligne de commande. Utilisez l'option --fetch en précisant à la fois le nom du récupérateur (par exemple ieee, medline ou jstor) et votre recherche (ou l'identité du papier) ; le récupérateur sera lancé. Notez que certains récupérateurs continueront d'afficher l'interface graphique s'ils nécessitent un retour de votre part. Pour obtenir la liste des récupérateurs disponibles, lancez l'option --fetch sans paramètres.
