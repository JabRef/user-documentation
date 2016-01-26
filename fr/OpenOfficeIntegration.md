---
title: Intégration dans OpenOffice/LibreOffice
---

# Intégration dans OpenOffice/LibreOffice

## Introduction

Cette fonction offre une interface pour insérer des citations et formater une bibliographie dans un document OpenOffice ou LibreOffice Writer à partir de JabRef.

Tout au long de ce document d'aide, lorsque le nom *OpenOffice* est utilisé, il peut être remplacé par *LibreOffice*.

## Utiliser l'interface OpenOffice/LibreOffice

Pour communiquer avec OpenOffice, JabRef doit tout d'abord se connecter à une instance active d'OpenOffice. Vous devez démarrez OpenOffice et ouvrir votre document avant de vous y connecter à partir de JabRef. JabRef a besoin de connaître la localisation de vos exécutables OpenOffice (**soffice.exe** sous Windows et **soffice** sous les autres systémes d'exploitation) et le répertoire où se trouvent plusieurs fichiers OpenOffice jar. Si vous lancez la connexion en cliquant sur le bouton **Connexion automatique**, JabRef tentera automatiquement de déterminer ses emplacements. Si cela ne fonctionne pas, vous devez établir la connexion en utilisant le bouton **Connexion manuelle** qui ouvrira une fenêtre vous demandant les emplacements nécessaires.

Après que la connexion ait été établie, vous pouvez insérer des citations en sélectionnant une ou plusieurs entrées dans JabRef et en utilisant le bouton **Envoyer vers OpenOffice** dans le menu déroulant de la barre d'outils de JabRef ou en utilisant le bouton approprié dans la sous-fenêtre OpenOffice du panneau latéral. Cela insérera les citations pour les entrées sélectionnées à l'emplacement actuel du curseur dans le document OpenOffice et mettra à jour la bibliographie afin qu'elle contienne la référence complète.

**Note :** JabRef n'utilise pas le système de bibliographie intégré à OpenOffice à cause des limitations de ce système. Un document contenant des citations insérées par JabRef ne sera en général pas compatible avec d'autres gestionnaires de références tels que Bibus et Zotero.

Deux types de citations différents peuvent être insérés - soit une citation entre parenthèses, "(Auteur 2007)", soit une citation dans le texte "Author (2007)". Cette distinction est uniquement pertinente si les citations auteur-année sont utilisées au lieu des citations numérotées, mais cette distinction sera conservée si vous basculer entre les deux styles.

Si vous modifiez les entrées dans JabRef après l'insertion de leurs citations dans OpenOffice, vous devrez synchroniser la bibliographie. Le bouton **Synchroniser la bibliographie OO** mettra à jour toutes les entrées de la bibliographie tant que leurs clefs BibTeX n'ont pas été modifiées (JabRef encode la clef BibTeX dans le nom de la référence pour chaque citation afin de suivre quelle clef BibTeX a l'entrée JabRef originale).

## Le fichier de style

Pour configurer le style de citation, vous devez sélectionner un style de fichier ou utiliser un des styles par défaut. Le style définit le format des citations et le format de la bibliographie. Vous pouvez utiliser des formateurs d'exportations standards de JabRef pour traiter les champs des entrées avant qu'ils soient envoyés à OpenOffice. Grâce à l'existence de ce fichier de style, vous disposez d'une flexibilité aussi grande que possible dans les styles de citation. Vous pouvez changer de fichier de style à tout moment et utiliser le bouton **Mettre à jour** pour que votre bibliographie suive ce nouveau style.

En cliquant sur le bouton **Sélectionner le style** vous pouvez ouvrir une fenêtre qui permet de sélectionner soit le style par défaut soit un fichier de style externe. Si vous voulez créer un nouveau style basé sur celui par défaut, vous pouvez cliquer sur le bouton **Aperçu** afin d'afficher le contenu du style par défaut que vous pouvez copier dans un éditeur de texte et modifier.

Pour choisir un fichier de style externe, vous avez deux possibilités. Soit vous choisissez directement un fichier de style, soit vous paramétrez un répertoire de fichiers de style. Si vous choisissez cette dernière possibilité, vous pourrez voir la liste des styles de ce répertoire (et de ces sous-répertoires) et en choisir un à partir de cette liste.

Voici un exemple de fichier de style :

    NAME
    Example style file for JabRef-OpenOffice integration.

    JOURNALS
    Journal name 1
    Journal name 2

    PROPERTIES
    Title="References"
    IsSortByPosition="false"
    IsNumberEntries="false"
    ReferenceParagraphFormat="Default"
    ReferenceHeaderParagraphFormat="Heading 1"

    CITATION
    AuthorField="author/editor"
    YearField="year"
    MaxAuthors="3"
    MaxAuthorsFirst="3"
    AuthorSeparator=", "
    AuthorLastSeparator=" & "
    EtAlString=" et al."
    ItalicEtAl="true"
    YearSeparator=" "
    InTextYearSeparator=" "
    BracketBefore="["
    BracketAfter="]"
    BracketBeforeInList="["
    BracketAfterInList="]"
    CitationSeparator="; "
    UniquefierSeparator=","
    GroupedNumbersSeparator="-"
    MinimumGroupingCount="3"
    FormatCitations="false"
    CitationCharacterFormat="Default"
    MultiCiteChronological="false"
    PageInfoSeparator="; "

    LAYOUT
    article=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}
    (<b>\year\uniq</b>). <i>\title</i>, \journal \volume\begin{pages} :
    \format[FormatPagesForHTML]{\pages}\end{pages}.

    book=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}\begin{editor}
    \format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\editor} (Ed.)\end{editor},
    <b>\year\uniq</b>. <i>\title</i>. \publisher, \address.

    incollection=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}
    (<b>\year\uniq</b>). <i>\title</i>. In: \format[AuthorLastFirst,
    AuthorAbbreviator,AuthorAndsReplacer]{\editor} (Ed.), <i>\booktitle</i>, \publisher.

    inbook=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}
    (<b>\year\uniq</b>). <i>\chapter</i>. In: \format[AuthorLastFirst,
    AuthorAbbreviator,AuthorAndsReplacer]{\editor} (Ed.), <i>\title</i>, \publisher.

    phdthesis=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}
    (<b>\year\uniq</b>). <i>\title</i>, \school.

    default=\format[AuthorLastFirst,AuthorAbbreviator,AuthorAndsReplacer]{\author}
    (<b>\year\uniq</b>). <i>\title</i>, \journal \volume\begin{pages} :
    \format[FormatPagesForHTML]{\pages}\end{pages}.

(Notez que la mise en page de chaque type d'entrée doit être limité à une seule ligne dans le fichier de style - ci-dessus, les lignes sont coupées pour faciliter la lecture)

### Propriétés générales

La section **PROPERTIES** décrit les propriétés générales de la bibliographie. Le tableau ci-dessous décrit les propriétés disponibles :

|                                |          |                       |                                                                                                                                                                                                        |
|--------------------------------|----------|-----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Propriété**                  | **Type** | **Valeur par défaut** | **Description**                                                                                                                                                                                        |
| IsNumberEntries                | booléen  | `false`               | Détermine le type de citations à utiliser. Si `true`, des citations numérotées seront utilisées. Si `false`, des citations auteur-année seront utilisées.                                              |
| IsSortByPosition               | booléen  | `false`               | Détermine comment la bibliographie est triée. Si vrai, les entrées seront triées selon l'ordre dans lequel elles sont citées. Si faux, les entrées seront classées par ordre alphabétique des auteurs. |
| ReferenceParagraphFormat       | chaîne   | `Default`             | Donne le nom du format de paragraphe à utiliser pour la liste de références. Ce format doit être défini dans votre document OpenOffice.                                                                |
| ReferenceHeaderParagraphFormat | chaîne   | `Heading 1`           | Donne le nom du format de paragraphe à utiliser pour le titre de la liste de références. Ce format doit être défini dans votre document OpenOffice.                                                    |
| Title                          | chaîne   | `Bibliography`        | Le texte à entrer comme titre de la liste de références.                                                                                                                                               |

### Propriétés des citations

La section **CITATION** décrit le format des marqueurs de citation insérés dans le texte.

Le tableau ci-dessous donne une brève description de toutes les propriétés de citation disponibles. Les propriétés qui n'apparaissent pas dans le fichier de style garderont leur valeur par défaut.

|                           |          |                       |                                                                                                                                                                                                                                                                                                                                                                            |
|---------------------------|----------|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Propriété**             | **Type** | **Valeur par défaut** | **Description**                                                                                                                                                                                                                                                                                                                                                            |
| AuthorField               | chaîne   | `author/editor`       | Champ BibTeX contenant les noms des auteurs. Peut contenir des champs alternatifs, par exemple `author/editor`                                                                                                                                                                                                                                                             |
| AuthorLastSeparator       | chaîne   | ` & `                 | Texte inséré entre les deux derniers noms d'auteur.                                                                                                                                                                                                                                                                                                                        |
| AuthorLastSeparatorInText | chaîne   |                       | Si spécifiés, cette propriété écrase `AuthorLastSeparator` pour les citations dans le texte telles que `Smith & Jones (2001)`.                                                                                                                                                                                                                                             |
| AuthorSeparator           | chaîne   | `, `                  | Texte inséré entre les noms d'auteurs excepté pour les deux derniers.                                                                                                                                                                                                                                                                                                      |
| BracketAfter              | chaîne   | `]`                   | La parenthèse fermante des citations.                                                                                                                                                                                                                                                                                                                                      |
| BracketAfterInList        | chaîne   | \]                    | La parenthèse fermante pour la numérotation des citations dans la liste des références.                                                                                                                                                                                                                                                                                    |
| BracketBefore             | chaîne   | `[`                   | La parenthèse ouvrante des citations.                                                                                                                                                                                                                                                                                                                                      |
| BracketBeforeInList       | chaîne   | \[                    | La parenthèse ouvrante pour la numérotation des citations dans la liste des références.                                                                                                                                                                                                                                                                                    |
| CitationCharacterFormat   | chaîne   | `Default`             | Si `FormatCitations` est mis à `true`, le format de caractère ayant le nom donné par cette propriété sera appliqué aux citations. Le format de caractère doit être défini dans votre document OpenOffice.                                                                                                                                                                  |
| CitationSeparator         | chaîne   | `; `                  | Texte inséré entre les éléments quand une citation contient plusieurs entrées, par exemple `[Smith 2001; Jones             2002]`                                                                                                                                                                                                                                          |
| EtAlString                | chaîne   | ` et al. `            | Texte inséré après les noms d'auteur quand tous les auteurs ne sont pas listés, par exemple `[Smith et al. 2001]`                                                                                                                                                                                                                                                          |
| FormatCitations           | booléen  | `false`               | Détermine si le formatage doit être appliqué aux citations. Si vrai, un format de caractère sera appliqué aux citations. La propriété `CitationCharacterFormat` contrôle quel format doit être appliqué. Le format doit être défini dans votre document OpenOffice. Tout paramètre et effet de caractère peut être choisit dans OpenOffice pour votre format de caractère. |
| GroupedNumbersSeparator   | chaîne   | `-`                   | Texte inséré entre les nombres quand les citations numériques sont groupées, par exemple `[4-6]`                                                                                                                                                                                                                                                                           |
| InTextYearSeparator       | chaîne   | Single Space          | Texte inséré entre les noms d'auteur et la parenthèse ouvrante avant l'année dans les citations dans le texte.                                                                                                                                                                                                                                                             |
| ItalicEtAl                | boolean  | `true`                | Si `true`, la chaîne "et al." dans les marqueurs de citation est mis en italique.                                                                                                                                                                                                                                                                                          |
| MaxAuthors                | integer  | `3`                   | Le nombre maximum d'auteurs à lister dans une citation qui apparaît précédemment dans le document.                                                                                                                                                                                                                                                                         |
| MaxAuthorsFirst           | integer  | `3`                   | Le nombre maximum d'auteurs à lister dans une citation qui apparaît pour la première fois.                                                                                                                                                                                                                                                                                 |
| MinimumGroupingCount      | integer  | `3`                   | Le nombre minimum d'entrées consécutives qu'une citation doit contenir avant que les nombres soient groupés, par exemple `[4-6]` ou `[4; 5; 6]`.                                                                                                                                                                                                                           |
| MultiCiteChronological    | booléen  | `true`                | Si `true`, les entrées multiples d'une même citation sont triées chronologiquement. Sinon, elles sont sorties alphabétiquement.                                                                                                                                                                                                                                            |
| PageInfoSeparator         | chaîne   | `; `                  | Pour des citations avec des informations complémentaires, par exemple des numéros de page, cette chaîne est insérée entre l'année (pour les citations auteur-année) ou le numéro de citation (pour les citations numérotées) et les informations complémentaires. Par exemple, le texte entre `2001` et `p. 301` dans `[Smith 2001; p. 301]`.                              |
| UniquefierSeparator       | chaîne   | `, `                  | Texte inséré entre les lettres utilisées pour différencier les citations ayant des auteurs et année similaires. Par exemple le texte entre `a` et `b` dans `[Smith 2001a, b]`.                                                                                                                                                                                             |
| YearField                 | chaîne   | `year`                | Le champ BibTeX pour l'année de publication.                                                                                                                                                                                                                                                                                                                               |
| YearSeparator             | chaîne   | Single Space          | Texte inséré entre les noms d'auteurs et l'année dans les citations entre parenthèses telle que `[Smith 2001]`.                                                                                                                                                                                                                                                            |

Si des entrées numérotées sont utilisées, les propriétés `BracketBefore` et `BracketAfter` sont les plus importantes - elles définissent quels caractères sont utilisés dans le numéro de citation. La citation est composée ainsi :
`[BracketBefore][Number][BracketAfter]`
où \[Number\] est le nombre dans la citation, déterminé selon l'ordre de la bibliographie et/ou la position de cette citation dans le texte. Si une citation correspond à plusieurs entrées, elles seront séparées par la chaîne donnée dans la propriété `CitationSeparator` (par exemple, si `CitationSeparator`=;, la citation ressemblera à `[2;4;6]`). Si au moins deux entrées correspondent à des numéros consécutifs, ces numéros seront groupés (par exemple `[2-4]` pour 2, 3 and 4 ou `[2;5-7]` pour 2, 5, 6 et 7). La propriété `GroupedNumbersSeparator` (par défaut `-`) détermine quelle chaîne sépare le premier et le dernier élément des numéros groupés. La propriété entière `MinimumGroupingCount` (par défaut 3) détermine quel nombre de numéros consécutifs est autorisé avant que les entrées ne soient groupées. Si `MinimumGroupingCount`=3, les numéros 2 et 3 ne seront pas groupés, tandis que 2, 3, 4 le seront. Si `MinimumGroupingCount`=0, aucun groupement ne sera effectué quel que soit le nombre de numéros consécutifs.

Si des entrées numérotées ne sont pas utilisées, des citations auteur-année seront créées sur la base des propriétés de citation. Une citation entre parenthèses est composée ainsi :
`[BracketBefore][Author][YearSeparator][Year][BracketAfter]`
où \[Author\] est le résultat du ou des champs donnés dans la propriété `AuthorField` et le formatage d'une liste d'auteurs. Cette liste peu contenir jusqu'à `MaxAuthors` noms - s'il y en à plus, la liste sera composée du premier auteur et du texte spécifié dans la propriété `EtAlString`. Si la propriété `MaxAuthorsFirst` est donnée, elle est prioritaire sur `MaxAuthors` la première fois que chaque citation apparaît dans le texte.

Si plusieurs champs séparés par des slashs sont donnés dans la propriété `AuthorField`, ils seront considérés successivement si le premier champ est vide pour l'entrée BibTeX considérée. Dans l'exemple ci-dessus, le champ "author" sera utilisé ; mais, s'il est vide le champ "editor" sera utilisé en remplacement.

Les noms de la liste d'auteurs seront séparés par le texte donné par la propriété `AuthorSeparator`, exceptés pour les deux derniers noms qui seront séparés par le texte spécifié dans `AuthorLastSeparator`. Si la propriété `AuthorLastSeparatorInText` est spécifiée, elle remplace le précédent pour les citations du type "dans le texte". Cela permet d'avoir des citations comme `(Olsen & Jensen, 2008)` et `Olsen and Jensen (2008)` avec un même style.

\[Year\] est la résultante du ou des champs spécifiés dans la propriété \[YearField\].

Une citation "dans le texte" est composée comme suit :
`[Author][InTextYearSeparator][BracketBefore][Year][BracketAfter]`
où \[Author\] et \[Year\] sont traités exactement de la même façon que pour les citations entre parenthèses.

Si deux sources différentes sont citées et si elles ont les mêmes auteurs et années de publication, et si des citations auteur-année sont utilisées, leurs appels nécessiteront une modification afin d'être rendue discernables. Ceci est fait automatiquement en rajoutant une lettre après l'année pour chacune de ces publications ; 'a' pour la première référence citée, 'b' pour la suivante, et ainsi de suite. Par exemple, si l'auteur "Olsen" a deux papiers cités pour 2005, les appels de citation seront modifiés en `(Olsen, 2005a)` et `(Olsen, 2005b)`. Dans la mise en page de la bibliographie, l'utisation d'une lettre "singularisante" sera indiquée explicitement par l'insertion du champ virtuel `uniq`.

Si plusieurs entrées ayant été "singularisées" sont citées ensemble, elles seront groupées dans l'appel à référence. Par exemple, des deux entrées données ci-dessus en exemple sont citées ensemble, l'appel à référence sera `(Olsen, 2005a, b)` au lieu de `Olsen, 2005a; Olsen, 2005b)`. Les lettres discrimantes regroupées (a et b dans notre exemple) seront séparés par une chaîne spécifiée par la propriété `UniquefierSeparator`.

Les citations auteur-année faisant référence à plus d'une entrée seront par défaut triée chronologiquement. Si vous souhaitez qu'elles soient triées alphabétiquement, la propriété de citation `MultiCiteChronological` doit être paramétrée à `false.`.

### Mise en page de la liste de références

La section **LAYOUT** décrit comment doit apparaître l'entrée bibliographique correspondant à chaque type d'entrée de JabRef. Chaque ligne doit débuter soit avec le nom d'un type d'entrée BibTeX, soit avec le mot `default`, suivi par un '='. La mise en page `default` sera utilisée pour toutes les entrées où une mise en page n'a pas été spécifiée.

Le reste de chaque ligne définit la mise en page, avec le texte et les espaces habituels apparaissant directement dans l'entrée bibliographique. Les informations provenant de l'entrée BibTeX sont insérées en ajoutant des marqueurs `\field` avec le nom de fichier approprié (par exemple `\author` pour insérer les noms des auteurs). Les informations de formatage pour le champ peuvent être inclues ici, en suivant la syntaxe de JabRef pour la mise en page d'exportation. Voir [la documentation de JabRef sur les filtres d'exportation personnalisés](http://jabref.sourceforge.net/help/fr/CustomExports.php) pour plus d'informations sur les formateurs disponibles.

Si des citations auteur-année sont utilisées, vous devez spécifier explicitement la position de la lettre "singularisante" qui est ajoutée pour distinguer des citations similaires. Ceci est effectué en incluant le champ virtuel `uniq`, typiquement juste après l'année (comme montré dans l'exemple du fichier de style). Le champ `uniq` est automatiquement paramétré correctement pour chaque entrée avant que son texte de référence soit mis en page.

Pour spécifier le formatage dans la bibliographie, vous pouvez utiliser les paires de balises de style HTML &lt;b&gt; &lt;/b&gt;, &lt;i&gt; &lt;/i&gt;, &lt;sup&gt; &lt;/sup&gt; and &lt;sub&gt; &lt;/sub&gt; pour définir respectivement du texte en gras, en italique, en exposant et en indice.

Si vous utilisez des citations numérotées, le numéro de chaque entrée sera automatiquement inséré au début de chaque entrée dans le liste de références. Par défaut, les numéros seront mis entre les même parenthèses que définies pour les citations. Les propriétés de citations optionelles `BracketBeforeInList` et `BracketAfterInList` remplacent `BracketBefore` et `BracketAfter` si elles sont paramétrées. Elles peuvent être utilisées si vous voulez des types différents de parenthèses (ou pas de parenthèses) dans votre liste de références. Notez que ce ne sont pas nécessairement des parenthèses ; cela peut être toute combinaison de caractères.

## Problèmes connus

-   Assurez-vous d'enregistrer votre document Write dans le format OpenDocument (odt). Enregistrer au format Word perdra vos marques de références.
-   Il n'y a actuellement pas de citations basés sur des notes de bas de page.
-   Le curseur peut être mal positionné après l'insertion d'une citation.
-   Copier-coller le fichier de style en exemple directement à partir de cette page donnera un fichier non utilisable. Pour éviter cela, téléchargez le fichier d'exemple à partir du lien dans la section de téléchargement.

