---
title: Champs spéciaux
---

# Champs spéciaux

Les champs spéciaux permettent ces fonctionnalités :

-   évaluer les publications lues
-   marquer les publications selon leur pertinence pour le travail
-   marquer des entrées BibTeX comme de qualité vérifiée
-   donner une priorité aux publications non lues.

La principale différence avec une entrée marquée est que l'entrée évaluée n'est pas flottante par défaut et que seul le numéro de colonne est surligné. Ainsi, une entrée peut être à la fois marquée et évaluée.

Chaque champ spécial peut être activé ou désactivé dans les paramètres.

## Types de champs

### Evaluation

Le but est d'ajouter une fonctionnalité permettant d'attribuer une gamme d'évaluations “positives”. JabRef offre une gamme de valeurs allant de une à cinq étoiles pour l'évaluation des publications.

### Pertinence

Une entrée peut être marquée comme pertinente.

### Qualité vérifiée

Une entrée peut être marquée comme vérifiée. L'intention est de marquer les entrées BibTeX pour lesquelles une vérification poussée du contenu de chaque champ a été effectuée.

### Priorité

On peut affecter une priorité aux entrées allant de prio3 (faible) to prio1 (forte). L'intention principale est de donner des priorités aux publications non lues.

## Enregistrement dans l'entrée BibTeX

En interne, chaque champ spécial est enregistré dans un champ BibTeX séparé. Si “Ecrire les valeurs des champs spéciaux dans des champs BibTeX séparés” est actif, ces champs sont aussi écrits lorsque la base est sauvée. JabRef permet aussi de synchroniser des champs avec mot-clefs. Ceci est activé par l'option “Synchroniser avec les\_mots-clefs”. Si cette option est active, alors chaque changement dans un champ spécial affectera le champ mot-clef. Réciproquement, chaque changement dans un mot-clef entraînera un changement dans le champ spécial. De plus, lors de l'ouverture d'une base ou le collage d'une entrée, les mots-clefs sont utilisés comme valeurs des champs spéciaux.
