---
title: La fenêtre principale de JabRef
---

# La fenêtre principale de JabRef

*Note :* La plupart des menus dont il est question dans les paragraphes suivants ont des raccourcis claviers, et beaucoup sont accessibles depuis la barre d'outils. Les raccourcis clavier sont affichés dans les menus déroulants.

Ceci est la fenêtre principale à partir de laquelle vous travaillez avec vos bases de données. En dessous de la barre de menus et de la barre d'outils se trouve un panneau à onglets contenant un onglet pour chacune de vos bases de données actuellement ouvertes. Quand vous sélectionnez un de ces onglets, un tableau apparaît, listant toutes les entrées de la base de données, ainsi qu'une sélection configurable de leurs champs.

-   Vous décidez des champs affichés dans ce tableau en cochant les champs que vous voulez voir dans la fenêtre de dialogue **Préférences**.
-   Pour éditer la valeur d'un champ, double-cliquez sur la ligne que vous voulez modifiez. Vous pouvez naviguer dans le tableau en utilisant les flèches du clavier.
-   Le tableau est trié selon une série de champs de votre choix. L'ordre de tri par défaut peut être configuré dans **Options → Préférences → Table des entrées** mais pour changer plus rapidement cet ordre, cliquez l'entête d'une colonne pour la définir comme critère de tri principal, ou inverser l'ordre du tri s'il est déjà défini. Un clic supplémentaire désélectionnera la colonne comme critère de tri. Maintenez la touche **CONTROL** enfoncée et cliquez sur un autre entête de colonne pour l'ajouter, l'inverser ou l'enlever comme critère de tri auxiliaire. Vous pouvez ajouter un nombre arbitraire de critères auxiliaires, mais uniquement trois niveaux seront mémorisés pour le démarrage suivant de JabRef.
-   Vous pouvez ajuster la largeur des colonnes en faisant glisser les limites entre les entêtes.
-   Dans la fenêtre de dialogue **Préférences**, choisissez si le tableau doit être redimensionné pour s'ajuster à la fenêtre. Sélectionnez cette option pour toujours voir l'ensemble du tableau, et désélectionnez là pour permettre l'affichage de plus d'informations.
-   Les codes de couleurs vous aident à visualiser l'état de votre base de données. Les cellules sont colorées de la façon suivante :
    -   Une cellule <span style="color: red">rouge</span> dans la colonne la plus à gauche signale une entrée incomplète.
    -   Une cellule <span style="color: #909000">jaune</span> dans la colonne la plus à gauche signale une entrée qui ne définit pas par elle-même l'ensemble des champs requis, mais qui contient un renvoi.
    -   Une cellule <span style="color: blue">bleue</span> correspond à un champ requis.
    -   Une cellule <span style="color: green">verte</span> correspond à un champ optionnel.
    -   Une cellule sans couleur correspond à un champ qui n'est pas utilisé par le programme *BibTeX* pour ce type d'entrée. Le champ peut cependant être édité dans JabRef.
-   Les codes de couleurs peuvent être modifiés dans la fenêtre de dialogue **Préférences**.

## Ajouter une nouvelle entrée

Il y a plusieurs façons d'ajouter une nouvelle entrée. L'activation du menu **BibTeX/ Nouvelle entrée** affiche une fenêtre de dialogue où vous pouvez choisir le type d'entrée à partir d'une liste. Pour éviter cette fenêtre de dialogue, vous pouvez utilisez le menu **BibTeX/ Nouvelle entrée...** ainsi que des raccourcis clavier pour les types les plus courants.

Lorsqu'une nouvelle entrée est ajoutée, par défaut, l'[éditeur d'entrées](EntryEditorHelp) s'ouvre. Ce comportement peut être modifié dans la fenêtre de dialogue **Préférences**.

*Note :* Nous vous recommandons fortement d'apprendre les raccourcis clavier des types d'entrées que vous utilisez le plus souvent, tel que CTRL-SHIFT-A pour l'ajout d'une entrée *article*.

## Editer une entrée

Pour ouvrir l'[éditeur d'entrées](EntryEditorHelp) sur une entrée existante, double-cliquez simplement sur la ligne correspondant à l'entrée (ou appuyez sur ENTREE après avoir sélectionné l'entrée).

## Référencer une chaîne *BibTeX* dans un champ

Dans JabRef vous écrivez le contenu de tous les champs de la même façon que dans un éditeur de texte, à une exception près : pour référencer une chaîne, entourer le nom de la chaîne avec le caractère \#, tel que dans :
  '\#jan\# 1997',
ce qui sera interprété comme la chaîne nommée 'jan' suivie de '1997'.

Voir aussi : [Editeur de chaîne](StringEditorHelp).
