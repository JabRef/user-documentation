---
title: L'éditeur d'entrées
---

# L'éditeur d'entrées

*On l'ouvre à partir de la fenêtre principale en double-cliquant n'importe où sur la ligne de l'entrée, ou en sélectionnant l'entrée et en appuyant sur ENTREE ou CTRL-D. L'éditeur d'entrées se ferme en appuyant sur ESC.*

Dans l'éditeur d'entrées, vous pouvez spécifier toutes les informations pertinentes pour une entrée donnée. L'éditeur d'entrées vérifie le type de votre entrée et affiche tous les champs qui sont requis ou optionnels pour que *BibTeX* traite l'entrée. De plus, il y a plusieurs champs, appelés *Champs généraux*, qui sont communs à tous les types d'entrées.

Vous pouvez personnaliser complètement les champs qui doivent être considérés comme requis ou optionnel pour chaque type d'entrée, ainsi que les champs apparaissant dans l'onglet Général. Voir [Personnaliser les types d'entrées](CustomEntriesHelp) pour plus d'informations à ce sujet.

Pour des informations sur la façon de remplir les champs, voir [Aide sur BibTeX](BibtexHelp).

## Le panneau à onglets de l'éditeur d'entrées

L'éditeur d'entrée contient six onglets : *Champs requis*, *Champs optionnels*, *Général*, *Abstract*, *Review* et *Source BibTeX*. Les onglets *Général*, *Abstract* et *Review* peuvent être personnalisés (voir [Personnalisation des champs généraux](GeneralFields) pour plus de détails). A l'intérieur des trois premiers onglets, TAB et MAJ-TAB sont utilisés pour naviguer entre les champs de texte.

Naviguez entre les onglets en cliquant sur les onglets ou en utilisant les combinaisons de touches suivantes pour vous déplacer vers la gauche ou la droite : CTRL-TAB ou CTRL-PLUS affiche l'onglet à droite, et CTRL-MAJ-TAB ou CTRL-MOINS affiche l'onglet à gauche. Vous pouvez aussi afficher l'entrée précédente ou suivante en appuyant respectivement sur CTRL-MAJ-DOWN ou CTRL-MAJ-UP, ainsi qu'en cliquant sur les boutons de la barre d'outils de l'éditeur d'entrées.

L'onglet *Source BibTeX* montre comment l'entrée apparaîtra lorsque la base de données sera sauvegardée au format *BibTeX*. Si vous le souhaitez, vous pouvez éditer la source *BibTeX* directement dans cet onglet. Lorsque vous changez d'onglet, que vous appuyez sur CTRL-S ou que vous fermez l'éditeur d'entrées, JabRef essayera de traiter le contenu de l'onglet *Source BibTeX*. S'il y a des problèmes, vous en serez informé ; vous pourrez alors éditer à nouveau votre entrée ou rétablir son contenu initial. Si **Par défaut, afficher l'onglet Source BibTeX** est coché dans les options **Général** de la fenêtre de dialogue **Préférences**, l'onglet *Source BibTeX* sera affiché par défaut chaque fois que l'éditeur d'entrées sera ouvert. Si vous préférez éditer la source au lieu d'utiliser les quatre autres onglets, vous devez cocher cette option.

**Astuce :** les champs *pdf* et *url* supportent les opérations de Glisser-Déplacer. Vous pouvez faire glisser une url depuis votre navigateur. Ensuite, vous aurez le choix entre insérer l'URL et télécharger le fichier.

## Vérification de la cohérence des champs

Quand le contenu d'un champ est modifié, JabRef vérifie que le nouveau contenu est acceptable. Pour les champs qui sont utilisés par *BibTeX*, le contenu est vérifié par rapport à l'utilisation du caractère '\#'. Le symbole dièse doit *toujours* être utilisé par paires (excepté pour la forme d'échappement '\\\#'), encadrant le nom d'une chaîne *BibTeX* existante. Notez que JabRef ne vérifie pas si la chaîne *BibTeX* est vraiment définie (ce n'est pas trivial, puisque le style *BibTeX* que vous utilisez peut définir une série arbitraire de chaînes dont JabRef n'a pas connaissance).

Si le contenu n'est pas valide, le champ sera affiché en rouge, indiquant ainsi une erreur. Dans ce cas, le changement ne sera pas sauvé.

## Autocomplétion de mot/nom

L'éditeur d'entrée permet l'autocomplétion des mots. Dans le fenêtre de dialogue Préférences vous pouvez activer ou désactiver l'autocomplétion et choisir pour quels champs elle est active.

Avec l'autocomplétion, JabRef enregistre tous les mots qui apparaissent dans chacun des champs choisis au sein de votre base de données. Dès que vous tapez le début d'un de ces mots, il vous sera suggéré visuellement. Pour ignorer cette suggestion, continuez simplement à taper. Pour accepter la suggestion, pressez *ENTREE* ou utilisez les flèches du clavier ou d'autres touches pour supprimer la boîte de sélection autour des caractères suggérés.

*Note :* Les mots pris en compte pour la complétion sont seulement ceux apparaissant, au sein de la base de données en cours, dans le même champ que celui que vous êtes en train d'éditer. Il existe de nombreuses façons de mettre en place cette fonctionnalité et si vous pensez qu'il devrait être implémenté différemment, nous apprécierons vos suggestions !

## Copier une clef *BibTeX* en incluant la commande de citation.

En appuyant CTRL-K ou le bouton 'clef' copie la clef *BibTeX* de votre entrée et la commande vers le presse-papier.

## Copier une clef *BibTeX*

En appuyant CTRL-SHIFT-K copie la clef *BibTeX* de votre entrée vers le presse-papier.

## Génération automatique des clefs *BibTeX*

Appuyez sur CTRL-G ou sur le bouton 'Créer la clef BibTeX' (la baguette magique) pour générer automatiquement une clef *BibTeX* à partir du contenu des champs requis.

Pour plus d'informations sur la façon dont JabRef génère les clefs *BibTeX*, voir [Personnalisation du générateur de clefs BibTeX](LabelPatterns).
