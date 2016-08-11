---
title: Personnalisation du générateur de clefs BibTeX
---

# Personnalisation du générateur de clefs BibTeX

Dans le menu ‘Paramétrage des clefs’ de la fenêtre Préférences, on peut indiquer les champs à utiliser pour la génération automatique des clefs BibTeX. La définition peut être faite pour chacune des entrées standards.

## Les définitions de clefs

La définition peut contenir n'importe quel texte au choix ainsi que des marqueurs de champs qui indiquent les champs particuliers de l'entrée utilisés et leur position dans la clef. Un marqueur de champ est constitué généralement du nom du champ entre crochets, par ex. **\[volume\]**. Si le champ n'est pas défini dans l'entrée lorsque la clef est générée, aucun texte n'est inséré dans la clef.

Plusieurs marqueurs de champs spéciaux sont fournis et permettent l'extraction d'une partie du contenu d'un champ. Ils sont donnés ci-dessous. Vous pouvez librement suggérer de nouveaux marqueurs de champs spéciaux.

Les marqueurs de champs spéciaux :

-   **\[`auth`\]** : Le nom du premier auteur
-   **\[`authors`\]** : Le nom de tous les auteurs
-   **\[`authorLast`\]**: Le nom propre du dernier auteur
-   **\[`authorsN`\]**: Les noms des N premiers auteurs. S'il y a plus d'auteurs, “EtAl” est ajouté.
-   **\[`authorsAlpha`\]** : correspond au style BibTeX “alpha”. Un auteur : les trois premières lettres du nom. Deux à quatre auteurs : Les premières lettres des noms, concaténées. Plus de quatre auteurs : Les premières lettres des noms des trois premiers auteurs, concaténées, avec un “+” à la fin.
-   **\[`authIniN`\]** : Les N premières lettres (ou moins) du nom de chacun des auteurs.
-   **\[`authorIni`\]** : Les 5 premières lettres du nom du premier auteur et les initiales du nom des auteurs restants
-   **\[`authN`\]** : Les N premières lettres du premier auteur.
-   **\[`authN_M`\]** : Les N premières lettres du nom des M premiers auteurs.
-   **\[`auth.auth.ea`\]** : Le nom des deux premiers auteurs suivi de “.ea” lorsqu'ils sont plus de deux.
-   **\[`auth.etal`\]**: Le nom du premier auteur et le nom du second auteur, ou “.etal” s'il y en a plus de deux.
-   **\[`authEtAl`\]**: Le nom du premier auteur et le nom du second auteur s'il y a deux auteurs ou “EtAl” s'il y en a plus de deux. C'est similaire à `auth.etal`. La différence est que les auteurs ne sont pas séparés par “.” et dans le cas de plus de deux auteurs “EtAl” est ajouté au lieu de “.etal”.
-   **\[`authshort`\]** : Le nom s'il n'y a qu'un seul auteur. Jusqu'à trois auteurs, le premier caractère du nom de chacun d'eux. Au-delà de trois auteurs, le caractère plus (+) est ajouté.
-   **\[`authForeIni`\]** : L'initiale du prénom du premier auteur.
-   **\[`authorLastForeIni`\]**:  : L'initiale du prénom du dernier auteur.

**Note :** S'il n'y a pas d'auteur (dans le cas d'un livre édité), alors tous les marqueurs **`[auth...]`** ci-dessus utiliseront l'éditeur(s) (s'il y en a) comme alternative. Ainsi l'éditeur(s) d'un livre sans auteur sera traité comme l'auteur(s) pour la génération des clefs. Si vous ne désirez pas ce comportement, c'est à dire si vous voulez un marqueur qui soit vide s'il n'y a pas d'auteur, utilisez le code **`pureauth`** au lieu du code **`auth`** dans les marqueurs ci-dessus. Par exemple, **`[pureauth]`** ou **`[pureauthors3]`**.

-   **\[`edtr`\]** : Le nom du premier éditeur.
-   **\[`edtrIniN`\]** : Les N premières lettres du nom de chaque éditeur.
-   **\[`editors`\]** : Le nom des chacun des éditeurs.
-   **\[`editorLast`\]**: Le nom propre du dernier éditeur
-   **\[`editorIni`\]** : Les cinq premières lettres du nom du premier éditeur suivi des initiales du nom des éditeurs restants.
-   **\[`edtrN`\]** : Les N premières lettres du nom du premier éditeur.
-   **\[`edtrN_M`\]** : Les N premières lettres du nom des M premiers éditeurs.
-   **\[`edtr.edtr.ea`\]** : Le nom des deux premiers éditeurs suivi de “.ea” lorsqu'ils sont plus de deux.
-   **\[`edtrshort`\]** : Le nom s'il n'y a qu'un seul éditeur. Jusqu'à trois éditeurs, le premier caractère du nom de chacun d'eux. Au-delà de trois éditeurs, le caractère plus (+) est ajouté.
-   **\[`edtrForeIni`\]** : L'initiale du prénom du premier éditeur.
-   **\[`edtrLastForeIni`\]**:  : L'initiale du prénom du dernier éditeur.
-   **\[`firstpage`\]** : Le numéro de la première page de la publication (Attention : cela retournera le plus petit nombre trouvé dans le champ pages, puisque BibTeX permet `7,41,73--97` ou `43+`).
-   **\[`keywordN`\]**: Nombre de mots-clefs dans le champ “keywords” en supposant que les mots-clefs sont séparés par des virgules ou des points-virgules.
-   **\[`lastpage`\]** : Le numéro de la dernière page de la publication (voir la remarque dans `firstpage`).
-   **\[`shorttitle`\]** : Les 3 premiers mots du titre.
-   **\[`shortyear`\]** : Les 2 derniers chiffres de l'année de publication.
-   **\[`veryshorttitle`\]** : Le premier mot du titre qui ne soit pas ‘the’, ‘a’, ‘an’.

Un nom de champs (ou celui de l'un des pseudo-champs vu au-dessus) peut, de façon optionnelle, être suivi par un ou plusieurs modificateurs. Les modificateurs sont appliqués dans l'ordre où ils sont spécifiés.

-   **`:abbr`** : Abrège le texte produit par le nom du champ ou un marqueur de champ spécial. Uniquement le premier caractère et les caractères suivant un espace seront inclus. Par exemple, **\[journal:abbr\]** abrégera “Journal of Fish Biology” en “JoFB”.
-   **`:lower`** : Force le texte inséré par le marqueur de champ à être en minuscules. Par exemple, **\[auth:lower\]** bascule le nom du premier auteur en minuscules.
-   **`:upper`** : Force le texte inséré par le marqueur de champ à être en majuscules. Par exemple, **\[auth:upper\]** bascule le nom du premier auteur en majuscules.
-   **`:(x)`** : Remplace x par une chaîne quelconque. La chaîne entre les parenthèses sera insérée si le marqueur de champ précédent ce modifieur produit une valeur vide. Par exemple le marqueur **\[volume:(unknown)\]** renverra le volume de l'entrée s'il existe, et la chaîne **unknown** si le champ `volume` de l'entrée est vide.

Si vous n'avez pas défini de modèle de clef pour un type d'entrées donné, le **Modèle de clef par défaut** sera utilisé. Vous pouvez changer le modèle par défaut - son paramétrage se trouve au-dessus de la liste des types d'entrées dans la section **Paramétrage des clefs** de la fenêtre **Préférences**.

La clef utilisée par défaut est \[auth\]\[year\]; elle produit des clefs du type `Yared1998`. Si la clef n'est pas unique dans la base de données, elle est modifiée par l'ajout d'une des lettres de a à z et ceci jusqu'à ce quelle soit unique. De cette façon, les étiquettes ressemblent à :

`Yared1998`
`Yared1998a`
`Yared1998b`

## Remplacement d'expressions régulières

Après que la définition de clef ait été appliquée pour produire une clef, vous pouvez demander au générateur de clef de rechercher les occurrences d'une expression régulière donnée et de la remplacer avec une chaîne. L'expression régulière et la chaîne de remplacement sont entrées dans les champs textes situés sous la liste des définitions de clefs.

Si la chaîne de remplacement est vide, les correspondances de l'expression régulière seront simplement supprimées de la clef générée. Par exemple, en remplaçant `\p{Punct}` ou `[:/%]` par une chaîne vide, on supprimera les caractères correspondants (et non désirés) de la clef. Cela peut être utile lors du renommage des PDF sur la base des clefs BibTeX.
