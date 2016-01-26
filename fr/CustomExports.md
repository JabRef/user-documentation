---
title: Filtres d'exportation personnalisés
---

# Filtres d'exportation personnalisés

JabRef vous permet de définir et d'utiliser vos propres filtres d'exportation de la même manière que les filtres d'exportation standards. Un filtre d'exportation est défini par un ou plusieurs *fichiers gabarit* qui, avec l'aide d'un certain nombre de routines internes de formatage, définissent le format des fichiers exportés. Vos fichiers gabarit doivent être préparés avec un éditeur de texte à l'extérieur de JabRef.

## Ajout d'un filtre d'exportation personnalisé

La seule obligation pour avoir un filtre d'exportation valide est l'existence d'un fichier avec l'extension **.layout**. Pour ajouter un nouveau filtre d'exportation, on utilise le menu **Options -&gt; Gérer les exportations personnalisées**, et on clique sur **Ajouter nouvelle**. Une nouvelle boite de dialogue apparaît et vous permet de spécifier le nom du nouveau filtre d'exportation (ce nom apparaîtra ensuite comme l'un des choix du menu déroulant "Type de fichier" de la fenêtre de dialogue affectée au menu **Fichier -&gt; Exporter** de la fenêtre principale de JabRef), le chemin du fichier **.layout**, et l'extension de fichier préférée par le filtre d'exportation (c'est cette extension qui sera suggérée dans la boite de dialogue lorsque le filtre sera utilisé).

## Création d'un filtre d'exportation

Pour voir des exemples de constitution de filtres d'exportation, recherchez le répertoire contenant les fichiers gabarit des filtres d'exportation standards sur notre page de téléchargement.

### Les fichiers gabarit

On suppose que l'on veut créer un filtre d'exportation pour une sortie HTML.

Bien que le filtre d'exportation ne nécessite qu'un seul fichier **.layout**, qui dans ce cas pourrait s'appeler *html.layout*, vous pouvez désirer ajouter deux autres fichiers appelés *html.begin.layout* et *html.end.layout*. Le premier contient le début de la sortie et le dernier la fin. JabRef recherche ces deux fichiers quelque soit le fichier d'exportation utilisé et, s'il les trouve, les recopie tel quel dans la sortie avant et après l'écriture des entrées individuelles.

Il faut noter que ces fichiers doivent être dans le même répertoire que le fichier *html.layout*, et que leur nom doit comporter **.begin** pour l'un et **.end** pour l'autre.

Dans notre exemple de fichier d'exportation, cela pourrait ressembler à

*html.begin.layout* :
`<!DOCTYPE html><html> <body     style="color:#275856; font-family: Arial, sans-serif;">`

*html.end.layout* :
`</BODY></HTML>`

Le fichier *html.layout* fournit le gabarit par défaut pour l'exportation d'une seule entrée. Si vous devez utiliser différents gabarits pour les différentes entrées, vous pouvez le faire en ajoutant des fichiers **.layout** spécifiques. Les fichiers doivent aussi être dans le même répertoire que le gabarit principal et ils sont nommés en insérant **.entrytype** dans le nom du fichier gabarit principal. Le nom de l'entrée doit être en minuscules. Dans notre exemple, on peut vouloir ajouter un gabarit différent pour les livres et cela se fera via le fichier *html.book.layout*. Pour une thèse, on ajoutera le fichier *html.phdthesis.layout*. Ces fichiers sont similaires au gabarit principal, si ce n'est qu'ils sont utilisés pour des entrées spécifiques. A noter que le gabarit général peut aisément être créé suffisamment général pour être utilisable avec la plupart des entrées dans la majorité des filtres d'exportation.

### Le format des fichiers gabarit

Les fichiers gabarit utilisent un simple langage de balisage dans lequel les commandes sont identifiées par l'antislash (\\) les précédant. Tout texte non identifié comme faisant partie d'une entrée est recopié tel quel dans le fichier de sortie.

### Les commandes relatives aux champs

Les mots précédés d'un antislash, par exemple `\author`, `\editor`, `\title` ou `\year`, sont interprétés comme des références aux champs correspondants et le contenu du champ est copié directement dans la sortie.

### Les formateurs de champs

Souvent, on a besoin de faire subir au contenu d'un champ un pré-traitement avant de le copier dans le fichier de sortie. Cela est réalisé en utilisant un *formateur de champ* - une classe java contenant une seule méthode qui manipule le contenu du champ.

Le formateur est utilisé en insérant la commande `\format` suivie du nom du formateur entre crochets et du nom du champ entre accolades, par exemple

`\format[ToLowerCase]{\author}`

Vous pouvez aussi indiquer plusieurs formateurs séparés par des virgules. Ils seront alors appelés séquentiellement de la gauche vers la droite, par exemple :

`\format[ToLowerCase,HTMLChars]{\author}`

va d'abord appliquer le formateur **ToLowerCase** puis **HTMLChars** sur le résultat. Vous pouvez lister un nombre arbitraire de formateurs de cette manière.

L'argument des formateurs, à l'intérieur des accolades, n'est pas obligatoirement une commande de champ. Ce peut aussi être du texte normal qui sera ensuite passé aux formateurs au lieu des contenus d'un champ. Cela peut être utilisé pour certains formateurs, par ex. le formateur CurrentDate (décrit ci-dessous).

Certains formateurs prennent un argument supplémentaire, spécifié entre parenthèses immédiatement après le nom du formateur. L'argument peut être mis entre crochets, ce qui est nécessaire s'il inclut les caractères de parenthèses. Par exemple, `\format[Replace("\s,_")]{\journal}` appelle le formateur **Replace** avec l'argument **\\s,\_** (ce qui remplace tous les espaces par des soulignés dans le champ "field").

Voir ci-dessous pour une liste des formateurs d'exportation disponibles.

### Les sorties conditionnelles

Certaines informations dans les sorties ne prennent de sens que si un certain champ est utilisé. Par exemple, disons que l'on veuille faire suivre le nom de l'éditeur par le texte `(Ed.)`. Cela peut être réalisé avec le code suivant :

`\format[HTMLChars,AuthorFirstFirst]{\editor}     (Ed.)`

Cependant, si le champs `editor` n'a pas été renseigné - il n'a pas de sens pour l'entrée exportée - le texte `(Ed.)` doit être ignoré. Cela peut être effectué en utilisant les commandes `\begin` et `\end` :

`\begin{editor}     \format[HTMLChars,AuthorFirstFirst]{\editor} (Ed.)      \end{editor}`

Les commandes `\begin` et `\end` assure que le texte contenu entre les deux commandes ne sera imprimé que si et seulement si le champ spécifié entre accolades est renseigné dans l'entrée que l'on veut exporter.

Un bloc conditionnel peut aussi dépendre de plus d'un champ, et le contenu du bloc est affiché uniquement quand toutes les conditions sont remplies. Deux opérateurs conditionnels sont disponibles :

-   opérateur ET : `&`, `&&`
-   opérateur OU : `|`, `||`

Pour imprimer du texte uniquement si à la fois les champs `year` et `month` sont renseignés, utilisez un bloc tel que celui-ci :
`\begin{year&&month}Month: \format[HTMLChars]         {\month}\end{year&&month}`
qui imprimera "Month: " plus le contenu du champ `month`, mais seulement si le champ `year` est lui-aussi défini.

**Note :** L'utilisation des commandes `\begin` et `\end` est une manière astucieuse de créer des gabarits qui sont communs à une grande variété d'entrées.

### Les sorties groupées

Si vous désirez séparer vos entrées en groupes basés sur un certain champ, vous pouvez utiliser les commandes de sorties groupées. La sortie groupée est assez similaire aux sorties conditionnelles, excepté que le texte spécifié n'est imprimé que si le champ indiqué dans les accolades change de valeur.

Par exemple, on suppose que l'on désire faire des groupes à partir de mots-clefs. Avant l'exportation, on s'assure que les entrées sont triées selon les mots-clefs. Ensuite, on utilise les commandes suivantes pour les grouper par mot-clefs :

`\begingroup{keywords}New Category:     \format[HTMLChars]{\keywords}      \endgroup{keywords}`

## Partage de votre travail

Avec les fichiers gabarit externes, il est relativement simple de partager des formats d'exportation entre utilisateurs. Si vous écrivez un filtre d'exportation pour un format non supporté par JabRef, ou si vous améliorez un filtre déjà existant, nous vous encourageons à déposer votre travail sur notre page SourceForge.net. La même chose est possible pour les nouvelles classes de formateur que vous avez écrites. Nous serons heureux de distribuer une collection des fichiers gabarit soumis ou de les ajouter à la série des filtres d'exportation standard ou des formateurs.

À partir de JabRef 2.4 vous pouvez aussi empaqueter votre format d'exportation ("ExportFormat") ou formateur de gabarit ("LayoutFormatter") comme un greffon ("plug-in"). Si vous le faites, vous pouvez fournir un unique fichier zip à d'autres utilisateurs afin qu'ils utilisent votre format d'exportation. Pour un exemple, télécharger le source de JabRef et jeter un oeil au répertoire `src/resources/plugins/`. N'hésitez pas à participer aux forums sur Sourceforge, puisque nous ne disposons pas encore d'une documentation volumineuse.

## Formateurs d'exportation inclus

JabRef fournit la série suivante de formateurs :

-   `Authors` : Ce formateur fournit des options de formatage pour les champs author et editor  pour des informations détaillées, voir ci-dessous. Il rend obsolète une série de formateurs dédiés qui étaient disponibles dans les versions de JabRef antérieures à 2.7.
-   `CreateBibORDFAuthors` : formate les auteurs selon les spécification de Bibliographic Ontology (bibo).
-   `CreateDocBookAuthors` : formate le contenu du champ author selon le style DocBook.
-   `CreateDocBookEditors` : formate le contenu du champ editor selon le style DocBook.
-   `CurrentDate` : renvoie la date actuelle. Sans argument, ce formateur renvoie la date et l'heure actuelle au format "yyyy.MM.dd hh:mm:ss z" (date, heure et fuseau horaire). En donnant une chaîne de format différent comme argument, le format de la date peut-être adapté. Par exemple, `\format[CurrentDate]{yyyy.MM.dd}` renverra uniquement la date, comme par exemple 2005.11.30.
-   `Default` : prend un seul argument, qui sert comme valeur par défaut. Si la chaîne à formater n'est pas vide, elle est renvoyée sans changement. Si elle est vide, la valeur par défaut est renvoyée. Par exemple, `\format[Default(unknown)]{\year}` renverra l'année de l'entrée si elle existe, et "unknown" si l'année n'est pas précisée.
-   `DOIStrip` : supprime tous les préfixes d'une chaîne de DOI.
-   `DOICheck` : fournit l'URL complète pour un lien DOI.
-   `FileLink(TypeDeFichier)` : sans argument, ce formateur renvoie le premier lien apparaissant dans le champ. Pour fonctionner, ce formateur doit être alimenté par le contenu du champ "file" (fichier).
    Ce formateur prend comme argument optionnel l'extension du type de fichier externe spécifié entre parenthèses après le nom du formateur. Par exemple, `\format[FileLink(pdf)]{\file}` spécifie `pdf` comme un argument. Quand un argument est fourni, le formateur sélectionne le premier lien vers un fichier du type spécifié. Dans l'exemple, le chemin vers le premier lien PDF sera renvoyé.
-   `FirstPage` : renvoie la première page du champ "pages", si initialisé. Par exemple, si le champ "pages" est initialisé avec "345-360" ou "345--360", ce formateur renverra "345".
-   `FormatChars` : Ce formateur convertit les séquences de caractères LaTeX dans les caractères unicode équivalents et supprime les autres commandes LaTeX sans les transférer.
-   `FormatPagesForHTML` : remplace "--" par "-".
-   `FormatPagesForXML` : remplace "--" par un tiret XML.
-   `GetOpenOfficeType` : renvoie le numéro utilisé par le système bibliographique d'OpenOffice.org (versions 1.x et 2.x) pour définir le type de cette ée.
-   `HTMLChars` : remplace les caractères spéciaux spécifiques à TeX (par exemple : {\\^a} ou {\\"{o}}) par leur représentation HTML, et traduit les commandes LaTeX \\emph, \\textit, \\textbf dans leurs équivalents HTML.
-   `HTMLParagraphs` : interprète deux retours-chariot consécutifs (comme \\n \\n) comme le début d'un nouveau paragraphe et crée les balises html de paragraphes appropriées.
-   `IfPlural` : renvoie son premier argument si le champ d'entrée ressemble à une liste d'auteurs avec deux noms ou plus, sinon renvoie son second argument. Par exemple, `\format[IfPlural(Eds.,Ed.)]{\editor}` renverra "Eds." s'il y a plus d'un éditeur et "Ed." s'il n'y en a qu'un seul.
-   `JournalAbbreviator` : Le texte donné en entrée est abrégé selon les listes d'abréviations des journaux. Si aucune abréviation n'est trouvé pour l'entrée (par exemple, si elle n'est pas dans la liste ou si elle est déjà abrégée), l'entrée sera renvoyée sans modification. Par exemple, en utilisant `\format[JournalAbbreviator]{\journal}`, "Physical Review Letters" renvoie "Phys. Rev. Lett."
-   `LastPage` : renvoie la dernière page du champ "pages", si initialisé. Par exemple, si le champ "pages" est initialisé avec "345-360" ou "345--360", ce formateur renverra "360".
-   `NoSpaceBetweenAbbreviations` : Un formateur de mise en page qui supprime l'espace entre les initiales des prénoms. Par exemple : J. R. R. Tolkien devient J.R.R. Tolkien.
-   `NotFoundFormatter` : Ce formateur est utilisé pour indiquer qu'un formateur n'a pas été trouvé. Cela peut-être utilisé pour gérer proprement les cas où une mise en page utilise un format non défini.
-   `Number` : renvoie la séquence de nombres à base de 1 de l'entrée actuelle dans l'exportation actuelle. Ce formateur peut être utilisé pour faire une liste numérotée d'entrées. Le numéro de séquence dépend de la place de l'entrée actuelle dans l'ordre de tri actuel, pas du nombre d'appels de ce formateur.
-   `RemoveBrackets` : supprime toutes les accolades "{" ou "}".
-   `RemoveBracketsAddComma` : supprime toutes les accolades "{" ou "}". L'accolade fermante est remplacée par une virgule.
-   `RemoveLatexCommands` : supprime toutes les commandes LaTeX comme `\em`, `\textbf`, etc. Lorsqu'il est utilisé avec `HTMLChars` ou `XMLChars`, ce formateur doit être appelé en dernier.
-   `RemoveTilde` : remplace le caractère tilde (utilisé dans LaTeX comme un espace insécable) par un espace normal. Utile en combinaison avec [un formateur de nom](#NameFormatter) comme discuté dans la prochaine section.
-   `RemoveWhitespace` : supprime tous les caractères espace.
-   `Replace(ExpReg,RemplaceAvec)` : effectue le remplacement d'une expression régulière. Pour utiliser ce formateur, un argument en deux parties doit être fourni. Les parties sont séparées par une virgule. Pour indiquer le caractère virgule, utilisez la séquence d'échappement : \\,
    La première partie est l'expression régulière à rechercher. Notez bien que toute virgule doit y être précédée par un antislash, et, qu'en conséquence, un antislash dans l'expression régulière recherchée y est représenté par une paire d'anti-slash. Une description des expression régulières de Java peut être trouvée à :
     http://java.sun.com/j2se/1.4.2/docs/api/java/util/regex/Pattern
    La seconde partie est le texte qui remplace tous les correspondances.
-   `RisAuthors` : à documenter.
-   `RisKeywords` : à documenter.
-   `RisMonth` : à documenter.
-   `RTFChars` : remplace les caractères spéciaux spécifiques à TeX (par exemple : {\\^a} ou {\\"{o}}) par leur représentation RTF, et traduit les commandes LaTeX \\emph, \\textit, \\textbf dans leurs équivalents RTF.
-   `ToLowerCase` : bascule tous les caractères en minuscules.
-   `ToUpperCase` : bascule tous les caractères en majuscules.
-   `WrapContent` : Ce formateur renvoie la valeur d'entrée après ajout d'un préfixe et d'un suffixe, tant que la valeur d'entrée n'est pas vide. Si la valeur d'entrée est vide, une chaîne vide est renvoyée (le préfixe et le suffixe ne sont pas renvoyés dans ce cas). Le formateur nécessite un argument contenant le préfixe et le suffixe séparés par une virgule. Pour inclure le caractère virgule dans l'un d'entre eux, utilisez la chaîne d'échappement (\\,).
-   `WrapFileLinks` : Voir ci-dessous.
-   `XMLChars` : remplace les caractères spéciaux spécifiques à TeX (par exemple : {\\^a} ou {\\"{o}}) par leur représentation XML.

### Le formateur `Authors`

Pour satisfaire les nombreux styles de citation, le formateur `Authors` permet un contrôle flexible de la mise en page de la liste des auteurs. Le formateur prend en argument une liste d'options séparées par des virgules, ce qui remplace leurs valeurs par défaut. Les paires option/valeur suivantes sont actuellement disponibles, les valeurs par défaut étant écrites entre accolades.

`AuthorSort = [ {FirstFirst} | LastFirst | LastFirstFirstFirst]`  
définit l'ordre dans lequel les noms d'auteur sont formatés.

-   `FirstFirst` : les prénoms sont suivis du nom de famille.
-   `LastFirst` : les noms de famille des auteurs sont suivis de leurs prénoms, séparés par une virgule.
-   `LastFirstFirstFirst` : Le premier auteur est formaté en LastFirst ; les auteurs suivants en FirstFirst.

`AuthorAbbr = [ FullName | LastName | {Initials} | InitialsNoSpace | FirstInitial | MiddleInitial]`  
définit comment les noms d'auteur sont abrégés.

-   `FullName` : montre les noms complets des auteurs ; les prénoms ne sont pas abrégés.
-   `LastName` : montre uniquement les noms de familles, les prénoms sont enlevés.
-   `Initials` : tous les prénoms sont abrégés.
-   `InitialsNospace` : comme Initials, tous les espaces entre les initiales étant enlevés.
-   `FirstInitial` : seule la première initiale est affichée.
-   `MiddleInitial` : le premier prénom est affiché, mais tous les prénoms suivants sont abrégés.

`AuthorPunc = [ {FullPunc} | NoPunc | NoComma | NoPeriod]`  
définit la ponctuation à utiliser dans la liste des auteurs lorsque `AuthorAbbr` est utilisé

-   `FullPunc` : aucun changement à la ponctuation n'est effectué.
-   `NoPunc` : tous les points et les virgules sont supprimés du nom d'auteur.
-   `NoComma` : toutes les virgules sont supprimées du nom d'auteur.
-   `NoPeriod` : tous les points sont supprimés du nom d'auteur.

`AuthorSep = [ {Comma} | And | Colon | Semicolon | Sep=<string>]`  
définit le séparateur à utiliser entre les auteurs. Tout séparateur peut être spécifié grâce à l'option `Sep=<string>`.

`AuthorLastSep = [ Comma | {And} | Colon | Semicolon | Amp | Oxford | LastSep=<string>]`  
définit le dernier séparateur dans la liste d'auteurs. Tout séparateur peut être spécifié grâce à l'option `LastSep=<string>`.

`AuthorNumber = [ {inf} | <integer>]`  
définit le nombre d'auteurs devant être affichés. Si le nombre d'auteurs excède le maximum défini, la liste d'auteurs est remplacée par le premier auteur suivi de `EtAlString`.

`EtAlString = [ {et al.} | EtAl=<string>]`  
définit la chaîne utilisée pour remplacer des auteurs multiples. Toute chaîne peut être spécifiée en utilisant `EtAl=<string>`

Si une option n'est pas spécifiée, la valeur par défaut (montrée entre accolades ci-dessus) est utilisée. Ainsi, uniquement les options de mise en page qui diffère de celles par défaut ont besoin d'être définies. L'ordre dans lequel les options sont définies est (en général) indifférent. Ainsi, par exemple,

`\format[Authors(Initials,Oxford)]{\author}`

est équivalent à

`\format[Authors(Oxford,Initials)]{\author}`

Comme mentionné, l'ordre dans lequel les options sont définies est indifférent. Il y a une possibilité d'ambiguïté si à la fois `AuthorSep` et `AuthorLastSep` sont définis. Dans ce cas, la première valeur applicable rencontrée devrait être pour `AuthorSep`, et la seconde pour `AuthorLastSep`. Afin d'éviter toute ambiguïté, lorsque la valeur par défaut est modifiée, il est recommandé de spécifier les deux.

#### Exemples

Pour les auteurs suivants, *"Joe James Doe and Mary Jane and Bruce Bar and Arthur Kay"* ,le formateur `Authors` donnera les résultats suivants :

`Authors()` ou, de manière équivalente, `Authors(FirstFirst,Initials,FullPunc,Comma,And,inf,EtAl= et al.)`  
    J. J. Doe, M. Jane, B. Bar and A. Kay

`Authors(LastFirstFirstFirst,MiddleInitial,Semicolon)`  
    Doe, Joe J.; Mary Jane; Bruce Bar and Arthur Kay

`Authors(LastFirst,InitialsNoSpace,NoPunc,Oxford)`  
    Doe JJ, Jane M, Bar B, and Kay A

`Authors(2,EtAl= and others)`  
    J. J. Doe and others

Les formats de citations les plus courants devraient être réalisables avec ce formateur. Pour des options encore plus avancées, envisagez d'utiliser les Formateurs personnalisés détaillés ci-dessous.

### Le formateur `WrapFileLinks`

Ce formateur itère sur tous les liens de fichiers, ou tous les liens de fichiers d'un type particulier, renvoyant une chaîne de formatage donnée comme premier argument. La chaîne de formatage peut contenir un nombre de séquences d'échappement indiquant les informations sur le lien de fichier à être inséré dans la chaîne.

Ce formateur peut prendre un second argument optionnel spécifiant le nom d'un type de fichier. Si spécifié, l'itération inclura uniquement les fichiers correspondant au type de fichier recherché (en étant sensible à la casse des caractères). S'il est spécifié comme un argument vide, tous les liens de fichiers seront inclus.

Après le second argument, des paires d'arguments additionnels peuvent être ajoutées afin de spécifier des expressions régulières de remplacement devant être exécutées sur les informations du lien inséré avant son insertion dans la chaîne de sortie. Un argument non apparié sera ignoré. Afin de spécifier des remplacements sans effectuer de filtrage sur les types de fichiers, utilisez un second argument vide.

Les séquences d'échappement pour les informations incluses sont les suivantes :

-   `\i` : Cela insère l'index d'itération (débutant à 1), et peut être utile si la liste des fichiers en sortie doit être énumérée.
-   `\p` : Cela insère le chemin de fichier d'un lien de fichier.
-   `\f` : Cela insère le nom du type du lien de fichier.
-   `\x` : Cela insère l'extension de fichier, si elle existe.
-   `\d` : Cela insère la description du lien de fichier, si elle existe.

Par exemple, une entrée pourrait contenir un lien de fichier vers le fichier "/home/john/report.pdf" de type "PDF" avec la description "John's final report". En utilisant le formateur WrapFileLinks avec l'argument suivant :

`\format[WrapFileLinks(\i. \d (\p))]{\file}`

donnera la sortie suivante :

        1. John's final report (/home/john/report.pdf)
        

Si l'entrée contient un second lien de fichier vers le fichier "/home/john/draft.txt" du type "Text file" avec la description 'An early "draft"', le sortie sera comme suit :

        1. John's final report (/home/john/report.pdf)
        2. An early "draft" (/home/john/draft.txt)

        

Si le formateur a été appelé avec un second argument, la liste sera filtrée. Par exemple :

`\format[WrapFileLinks(\i. \d (\p),,text file)]{\file}`

affichera uniquement le texte suivant :

        1. An early "draft" (/home/john/draft.txt)

        

Si l'on veut que cette sortie soit incluse dans une sortie en style XML, les guillemets dans la description de fichier pourrait causer problème. En ajoutant deux arguments additionnels pour traduire les guillemets en caractères XML, on résoudra ce problème :

`\format[WrapFileLinks(\i. \d (\p),,text file,",")]{\file}     `

affichera la sortie suivante :

        1. An early "draft" (/home/john/draft.txt)

        

Des paires de remplacement supplémentaires pourraient être ajoutées.

### Formateurs personnalisés

Si aucun des formateurs disponibles ne peut faire ce que vous désirez, vous pouvez ajouter le votre à l'interface `net.sf.jabref.export.layout.LayoutFormatter`. Si vous insérez votre propre classe dans `net.sf.jabref.export.layout.format`, vous pouvez appeler votre formateur en utilisant son nom de classe, comme pour les formateurs standards. Sinon, vous devez appeler le formateur par son nom complet (incluant le nom du paquetage). Dans les deux cas, le formateur doit être dans votre chemin de classe lorsque vous lancez JabRef

## Utiliser des formateurs de nom personnalisé

À partir de JabRef 2.2, il est possible de définir des formateurs de nom personnalisés et utilisant la syntaxe des fichiers de style BibTeX. Cela permet une flexibilité totale, mais c'est fastidieux à écrire

Vous pouvez définir votre propre formateur dans l'onglet "Formateur de nom" des préférences en utilisant le format suivant et en l'utilisant ensuite avec le nom que vous avez défini comme de n'importe quel autre formateur

`<cas1>@<gamme11>@<format>@<gamme12>@<format>@<gamme13>...@@       <cas2>@<gamme21>@... et ainsi de suite.`

Ce format commence par séparer la tache de formatage de la liste d'auteurs dans des cas dépendant du nombre d'auteurs qu'il y a (c'est ainsi car certains formats diffèrent en fonction du nombre d'auteurs). Chaque cas individuel est séparé par @@ et contient les instructions sur la façon de formater chaque auteur dans le cas considéré. Ces instructions sont séparées par un @.

Les cas sont identifiés en utilisant des entiers (1, 2, 3, etc.) ou le caractère \* (correspondant à n'importe quel nombre d'auteurs) et spécifieront le formateur à appliquer s'il y a un nombre inférieur ou égal d'auteurs.

Les gammes sont soit `<entier>..<entier>`, `<entier>` ou le caractère `*` en utilisant un index basé sur 1 pour indexer les auteurs d'une liste donnée d'auteurs. Les index entiers peuvent être négatif afin de signifier qu'ils commencent par la fin de la liste où -1 est le dernier auteur.

Par exemple, avec une liste d'auteurs comme "Joe Doe and Mary Jane and Bruce Bar and Arthur Kay" :

-   1..3 affectera Joe, Mary and Bruce
-   4..4 affectera Arthur
-   \* les affectera tous
-   2..-1 affectera Mary, Bruce and Arthur

Les chaînes de `<format>` utilisent le format du formateur BibTeX :

Les quatre lettres v, f, l et j indiquent les parties du nom von, first, last et jr qui sont utilisées entre accolades. Une unique lettre v, f, l ou j indique que le nom doit être abrégé. Si l'une de ces lettres ou paires de lettres sont rencontrées, JabRef retournera tous les noms respectifs (potentiellement abrégés), mais l'expression totale entre accolades est uniquement imprimée si la partie du nom existe.

Par exemple, si le format est "{ll} {vv {von Part}} {ff}" et si les noms sont "Mary Kay and John von Neumann", alors JabRef retournera "Kay Mary" (avec deux espaces entre le nom propre et le prénom) et "Neuman von von Part John".

Je donne ici deux exemples, mais je préférerai vous diriger vers la documentations BibTeX.

Exemple court : `"{ll}, {f.}"` va convertir `"Joe Doe"` en `"Doe, J."`

Exemple long :

> Pour convertir :
>
> `"Joe Doe and Mary Jane and Bruce Bar and Arthur         Kay"`
>
> en
>
> `"Doe, J., Jane, M., Bar, B. and Kay,         A."`
>
> vous devrez utiliser
>
> `1@*@{ll}, {f}.@@2@1@{ll}, {f}.@2@ and {ll},         {f}.@@*@1..-3@{ll}, {f}., @-2@{ll}, {f}.@-1@ and {ll},         {f}.`

Si quelqu'un souhaite écrire un meilleur didacticiel sur ce sujet, envoyez un courriel sur l'une des listes de diffusion de JabRef !
