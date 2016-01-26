---
title: A propos de *BibTeX*
---

# A propos de *BibTeX*

JabRef vous aide à travailler avec vos bases de données *BibTeX*, mais certaines règles doivent être gardées à l'esprit lorsque vous éditez vos entrées afin d'obtenir un traitement correct de vos bases de données par le programme *BibTeX*.

## Les champs *BibTeX*

Il y a un grand nombre de champs possibles dans *BibTeX*, et quelques champs en plus que vous pouvez paramétrer dans JabRef.

Généralement, vous pouvez utiliser des commandes LaTeX à l'intérieur de champs contenant du texte. *BibTeX* formatera automatiquement vos listes de références et les champs qui sont inclus dans ces listes seront mis en majuscules/minuscules selon votre style bibliographique. Pour être certain que certains caractères restent en majuscules, encadrez-les par des accolades, comme dans le mot {B}elgique.

Notes à propos de certains types de champs :

-   **Bibtexkey** C'est une chaîne unique utilisée pour référencer l'entrée dans les documents LaTeX. Notez que lorsque vous référencez une entrée dans LaTeX, la clef doit respecter la casse (majuscules/minuscules) de la chaîne de référence.
-   **address
    ** Habituellement l'adresse de l'`éditeur commercial` ("publisher" en anglais) ou d'un autre type d'institution. Pour les principales maisons d'édition, van Leunen recommande d'omettre complètement cette information. Pour les petites maisons d'édition, d'un autre coté, vous pouvez aider le lecteur en donnant l'adresse complète.
-   **annote
    ** Une annotation. Ce champ n'est pas utilisé par les styles bibliographiques standards, mais peut être utilisé par d'autres styles qui produisent une bibliographie annotée.
-   **author
    ** Ce champ doit contenir la liste complète des auteurs de votre entrée. Les noms sont séparés par le mot *and*, même si il y a plus de deux auteurs. Chaque nom peut être écrit dans deux formes équivalentes :
    Donald E. Knuth *ou* Knuth, Donald E.
    Eddie van Halen *ou* van Halen, Eddie
    La seconde forme devrait être utilisée pour les auteurs ayants plus de deux noms afin de différencier les seconds prénoms et les noms de famille \[NDT: pas sur de la traduction...\].
-   **booktitle
    ** Titre d'un livre, dont une partie est citée. Pour les entrées du type "book", utilisez le champ `title`.
-   **chapter
    ** Un numéro de chapitre (ou de partie, ou d'autre chose).
-   **crossref
    ** La clef de l'entrée vers laquelle on effectue le renvoi.
-   **edition
    ** Le numéro d'édition d'un livre -- par exemple "Troisième". Cela doit être un nombre, et la première lettre doit être capitalisée, comme montré ici ; les styles standards la convertisse en minuscule si nécessaire.
-   **editor
    ** Ce champ est analogue au champ *author*. Il permet d'indiquer le nom des éditeurs scientifiques, coordonateurs, etc.
-   **howpublished
    ** Comment quelque chose de non-standard a été publiée. Le premier mot prend une majuscule.
-   **institution
    ** L'institution ayant promue un rapport technique.
-   **journal
    ** Un nom de journal. Le nom d'un journal peut être abrégé en utilisant une "chaîne". Pour définir une chaîne, utilisez [l'éditeur de chaînes](StringEditorHelp).
-   **key
    ** utilisé pour alphabétiser, renvoyer et créer une étiquette quand l'information sur "author" est manquante. Ce champ ne doit pas être confondu avec la clef qui est fournie dans la commande `\cite` et au début de l'entrée.
-   **month
    ** Le mois au cours duquel le travail a été publié ou, pour un travail non publié, au cours duquel il a été écrit. Vous devriez utiliser l'abréviation standard à trois lettres (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec).
-   **note
    ** Toute information additionnelle qui peut aider le lecteur. Le premier mot doit prendre une majuscule.
-   **number**
    Le numéro d'un journal, d'un magazine, d'un rapport technique ou d'un travail dans une série. Les journaux et les magazines sont habituellement identifiés par leur volume et leur numéro ; l'organisation qui publie un rapport technique lui donne en général un numéro ; et parfois les livres portent des numéros lorsqu'ils appartiennent à une série nommée.
-   **organization
    ** L'organisation ayant promue une conférence ou qui publie un manuel.
-   **pages
    ** Un ou plusieurs numéros de page, ou une gamme de numéros, tel que `42-111` ou `7,41,73-97` ou `43+` (le \``+`' dans le dernier exemple indique des pages suivantes qui ne sont pas dans un ordre simple). Pour garder facilement la compatibilité avec les bases de données compatibles *Scribe*, les styles standards convertissent le tiret simple (comme dans `7-33`) en un tiret double utilisé par TeX pour définir une gamme de nombres (comme dans `7-33`).
-   **publisher
    ** Le nom de l'éditeur commercial.
-   **school
    ** Le nom de l'école où a été écrite une thèse.
-   **series
    ** Le nom d'une série ou d'un ensemble de livres. Quand on cite un livre entier, le champ `title` donne son titre et le champ optionnel `series` donne le nom de la série ou de l'ensemble de volumes dans lequel le livre est publié.
-   **title
    ** Le titre du travail. La capitalisation dépend du style bibliographique et de la langue utilisés. Pour les mots qui doivent être capitalisés (tel un nom propre), mettre le mot (ou sa première lettre) entre accolades.
-   **type
    ** Le type de rapport technique -- par exemple, "Note de recherche".
-   **volume
    ** Le volume d'un journal ou d'un livre en plusieurs tomes.
-   **year
    ** L'année de publication ou, pour un travail non publié, l'année où il a été écrit. Généralement, elle doit prendre quatre chiffres, tel que `1984`, cependant les styles standards peuvent gérer toute valeur de `year` dont les quatre derniers caractères sont des chiffres (hors caractères de ponctuation), tel que \`(autour de 1984)'. Ce champ est requis par la plupart des types d'entrées.

## Autres champs

BibTeX est très populaire, et beaucoup de gens l'ont utilisé pour stocker des informations. Voici une liste de quelque uns des champs les plus communs :

-   **<span style="font-weight: normal; font-style: italic;"> affiliation\*</span>
    ** L'affiliation des auteurs.
-   **abstract
    ** Le résumé d'un travail.
-   **doi
    ** Le Digital Object Identifier ("identifiant d'objet numérique") est l'identifiant permanent donné à un document numérique.
-   **eid
    ** L'Electronic IDentifier ("identifiant électronique") est utilisé par les journaux électroniques qui ont aussi une version papier. Ce numéro remplace le nombre de pages et est utilisé pour trouver un article dans un volume imprimé. Il est parfois aussi appelé *citation number*.
-   **<span style="font-weight: normal; font-style: italic;"> contents\*</span>
    ** La table des matières
-   **<span style="font-weight: normal; font-style: italic;"> copyright\*</span>
    ** Informations sur les droits d'auteur (copyright).
-   **<span style="font-weight: normal; font-style: italic;"> ISBN\*</span>
    ** L'"International Standard Book Number".
-   **<span style="font-weight: normal; font-style: italic;"> ISSN\*</span>
    ** L'"International Standard Serial Number". Utilisé pour identifier un journal.
-   **keywords
    ** Mots-clefs utilisés pour la recherche, ou pour annotation.
-   **<span style="font-weight: normal; font-style: italic;"> language\*</span>
    ** La langue du document.
-   **<span style="font-weight: normal; font-style: italic;"> location\*</span>
    ** Une localisation associée avec l'entrée, telle que la ville où la conférence a eu lieu.
-   **<span style="font-weight: normal; font-style: italic;"> LCCN\*</span>
    ** Le "Library of Congress Control Number". Champ parfois nommé `lib-congress`.
-   **<span style="font-weight: normal; font-style: italic;"> mrnumber\*</span>
    ** Le numéro de *Mathematical Reviews*.
-   **<span style="font-weight: normal; font-style: italic;"> price\*</span>
    ** Le prix du document.
-   **<span style="font-weight: normal; font-style: italic;"> size\*</span>
    ** La taille physique d'un travail.
-   **URL
    ** Le "WWW Uniform Resource Locator" (adresse URL) qui pointe vers l'élément référencé. C'est souvent utilisé pour les rapports techniques afin d'indiquer le site ftp où la source postscript du rapport est localisée.

### JuraBib

-   **urldate
    ** La date de la dernière visite de la page.

\*) non supporté directement par JabRef

## Conseils sur les champs

Le nom d'une institution doit être placé entre accolades `{}`. Si le nom de l'institution inclut aussi son abréviation, cette abréviation doit aussi être placée entre accolades `{}`. Par exemple : `{The Attributed Graph Grammar System ({AGG})}`.

## Autres sources d'information

-   Conseils sur BibTeX : [Format BibTeX recommandé](http://sandilands.info/sgordon/node/488)

