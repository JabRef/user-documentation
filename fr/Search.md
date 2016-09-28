---
title: Recherche
outdated: true
---

# Recherche

## Raccourcis clavier

*CTRL-F* ouvre ou active l'interface de recherche. Appuyer sur *CTRL-F* plusieurs fois modifie le mode de recherche. En recherche incrémentale, *CTRL-F* affiche l'occurrence suivante de la chaîne à rechercher.

*CTRL-MAJ-F* ouvre ou active l'interface de recherche, et sélectionne la recherche incrémentale. En recherche incrémentale, appuyer sur *CTRL-MAJ-F* affiche aussi l'occurrence suivante de la chaîne à rechercher.

## Modes de recherche

Il y a trois modes de recherche dans JabRef.

### Recherche incrémentale

En recherche incrémentale, le programme effectue une recherche chaque fois qu'une lettre est tapée. La ligne de statut vous informe du résultat de cette recherche. Entrer le raccourci clavier de la recherche affiche l'occurrence suivante de la chaîne à rechercher. Si aucune autre occurrence ne peut être trouvée, la ligne de statut vous en informe. Répéter alors la recherche fera redémarrer la recherche au début. L'ordre de recherche se fait toujours selon l'ordre de tri actuel de votre base de données. Pour quitter la recherche incrémentale, appuyez sur ESC ou cliquez sur "Vider".

### Recherche normale

Dans une recherche normale, le programme recherche dans votre base les occurrences de votre chaîne de recherche, après que vous ayez appuyé sur Entrée. Toutes les entrées qui ne correspondent pas sont masquées, ne laissant alors apparaître que les entrées correspondant aux critères (mode filtre), ou sont grisées (mode flottante). Pour ne plus afficher les résultats de la recherche, appuyer sur ESC ou cliquer sur "Vider".

### <a href="" id="advanced"></a> Recherche avancée

Afin de rechercher uniquement des champs spécifiques et/ou d'inclure des opérateurs logiques dans l'expression à rechercher, une syntaxe particulière est disponible. Par exemple, pour rechercher les entrées dont l'auteur est "Miller", entrez (excepté en mode de recherche incrémentale) :

author = miller

A la fois la spécification du champ et le terme à rechercher peuvent être des expressions régulières. Si un terme à rechercher contient des espaces, le mettre entre guillemets. Il ne faut *jamais* utiliser d'espace dans la spécification du champ ! Par exemple, pour rechercher les entrées à propos de traitement d'images, entrez :

title|keywords = "traitement d'images"

Vous pouvez utiliser "and", "or", "not", et les parenthèses de la façon habituelle :

(author = miller or title|keywords = "traitement d'images") and not author = brown

En fait, le signe "=" signifie "contient". La recherche d'une correspondance exacte est possible en utilisant "matches" ou "==". Utilisez "!=" pour tester si le terme à rechercher n'est *pas* contenu dans le champ (un équivalent de "not ... contains ..."). Si vous spécifiez un type de champ dans l'expression à rechercher, la sélection des types de champs (requis, optionnels, généraux) apparaissant dans les paramètres de recherche n'est pas prise en compte. Pour chercher des entrées d'un certain type, un pseudo-champ nommé "entrytype" est disponible :

entrytype = thesis

recherchera les entrées dont le type (tel qu'affiché dans la colonne "Entrytype") contient le mot "thesis" (et qui sera donc "phdthesis" ou "mastersthesis"). Le pseudo-champ "bibtexkey" permet de rechercher dans les clefs de citation, tel que :

bibtexkey = miller2005

## Paramètres de recherche

Le bouton *Paramètres* ouvre un menu qui permet de basculer en mode "sensible à la casse", d'utiliser des expressions régulières lors de la recherche, et de définir si les résultats de la recherche doivent être sélectionnés dans la table et si les mots recherchés doivent être surlignés lors de l'édition et de la prévisualisation.
