---
title: Personnaliser les types d'entrées
---

# Personnaliser les types d'entrées

Pour accéder à cette fonction, cliquez sur le menu **BibTeX --&gt; Personnaliser les types d'entrées**.

Lors de la personnalisation d'un type d'entrée, vous définissez à la fois son apparence dans l'éditeur d'entrées et ce qui est nécessaire pour que JabRef considère une entrée comme complète. Vous pouvez aussi bien changer les types d'entrée existants qu'en définir de nouveaux.

Notez qu'aucune des modifications que vous effectuez dans cette fenêtre ne sera stockée tant que vous n'aurez pas cliqué sur **Apply** ou **OK**. Si vous cliquez sur **Cancel** ou si vous fermez simplement la fenêtre, les changements non-appliqués seront perdus.

## Utiliser la fenêtre de personnalisation des entrées

La fenêtre de personnalisation des entrées est divisée en 3 panneaux principaux. Le panneau de gauche vous permet de sélectionner l'entrée à modifier, et d'en ajouter de nouvelles. Le panneau central est utilisé pour paramétrer les champs requis du type d'entrée sélectionné. Le panneau de droite est utilisé pour paramétrer les champs optionnels du type d'entrée sélectionné.

### Ajouter et supprimer des types d'entrées

Les types d'entrées actuellement disponibles sont listés dans le panneau de gauche. Lorsque vous sélectionnez un type d'entrée, les autres panneaux sont mis à jour afin d'afficher les champs requis et optionnels pour ce type d'entrée.

Pour ajouter un nouveau type d'entrées, vous devez entrer son nom dans le champ de texte situé sous la liste des types et cliquer sur **Ajouter** Le nouveau type d'entrées sera ajouté à la liste et sélectionné pour pouvoir être modifié.

Pour supprimer un type d'entrées personnalisé, sélectionnez-le et cliquez sur **Supprimer**. Cette opération n'est possible que pour les types d'entrées personnalisés qui ne sont pas de simples modifications des types standards. Il n'est pas possible de supprimer les types standards.

Pour qu'un type standard modifié reprenne ses valeurs par défaut, sélectionnez-le et cliquez sur **Défaut**. Cette opération n'est possible que pour les types d'entrées personnalisés qui modifient un type standard.

## Editer les types d'entrées

Quand un type d'entrées est sélectionné, ses champs requis et optionnels sont listés dans les panneaux du centre et de droite. La méthode d'édition des listes de champs est la même pour les champs requis et optionnels.

Pour ajouter un nouveau champ, éditez le champ de texte situé sous la liste, ou sélectionnez un nom de champ à partir du menu déroulant, puis cliquez sur **Ajouter**. Le nom du champ sélectionné sera ajouté à la fin de la liste.

Pour supprimer un ou plusieurs champs, sélectionnez-les dans la liste et cliquez sur **Supprimer**.

Pour changer l'ordre des champs, sélectionner le nom d'un champ et cliquer sur les boutons en forme de flèches pour le déplacer vers le haut ou vers le bas de la liste.

### Les champs et/ou

Certains types d'entrées ont une condition et/ou dans leurs champs requis. Par exemple, une entrée *book* est complète quand au moins un des champs *author* ou *editor* est rempli. Pour indiquer une telle condition dans un type d'entrée personnalisé, vous devez ajouter un champ nommé par une série de champs alternatifs séparés par des slashs (/), comme par exemple *author/editor* pour indiquer la condition mentionnée ci-dessus pour l'entrée de type *book*.
