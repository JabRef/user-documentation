---
title: Les liens PDF/PS/URL/DOI dans JabRef
---

# Les liens PDF/PS/URL/DOI dans JabRef

**Note:** JabRef 2.3 et suivants offrent un [système amélioré pour les liens vers les fichiers externes](FileLinks).

JabRef vous permet de lier vos entrées avec des fichiers PDF ou PS stockés sur votre ordinateur, ainsi que de créer des liens vers des documents sur internet par l'intermédiaire d'une URL ou d'un identifiant DOI.

## Configurer les visionneurs externes

Le programme doit savoir quels visionneurs externes utiliser pour les fichiers PDF et PS ainsi que pour les pages internet. Ils sont par défaut configurés avec des valeurs qui fonctionnent probablement avec votre système d'exploitation ; aussi, il est très possible que vous n'ayez pas besoin de changer ces valeurs

Pour changer la configuration des visionneurs externes, allez dans le menu **Options -&gt; Préférences -&gt; Programmes externes**.

## Ouvrir des fichiers externes ou des liens

Il y a plusieurs façons d'ouvrir un fichier externe ou une page internet. Dans l'éditeur d'entrées, vous pouvez double-cliquer sur le texte du champ contenant le nom du fichier, le DOI ou l'URL. Dans le tableau des entrées, vous pouvez sélectionner une entrée et utiliser le menu (**Outils/ Ouvrir PS ou PDF** et **Outils/ Ouvrir URL ou DOI**), le raccourci clavier ou le menu contextuel (avec un clic droit). Enfin, vous pouvez cliquer sur les icônes PDF, PS, URL ou DOI de la barre d'outils.

Par défaut, le tableau des entrées contient deux colonnes dans lesquelles des icônes s'affichent pour les entrées possédant un lien vers un fichier externe ou une URL. La seconde colonne du tableau montre les icônes qui ouvrent les fichiers PDF et PS (uniquement le fichier PDF si les deux fichiers sont présents), et la troisième colonne montre les icônes ouvrant les URL et les DOI (uniquement l'URL si les deux liens sont présents). Vous ouvrez le fichier ou la page internet en cliquant sur une de ces icônes. Vous pouvez désactiver n'importe laquelle de ces fonctions en utilisant le menu **Options/ Préférences -&gt; Table des entrées**.

**Remarque:** Si le champ n'apparaît pas dans l'éditeur d'entrée (dans l'onglet 'General'), Vous pourriez avoir à [personnaliser les champs généraux](GeneralFields).

## Les répertoires PDF et PS principaux

JabRef permet de lier facilement les fichiers PDF et PS à vos entrées. Pour bénéficier de cette fonction, vous devez définir dans le menu **Options -&gt; Préférences -&gt; Programmes externes** vos répertoires principaux pour les fichiers PDF et PS. Tous les fichiers PDF et PS qui sont stockés dans (ou en-dessous de) chacun de ces répertoires seront référencés par un chemin relatif. Il vous sera ainsi facile de déplacer les répertoires PDF et PS principaux ou de partager votre base de données avec d'autres utilisateurs situés en des points différents du réseau.

De plus, si vous donnez à vos fichiers PDF et PS des noms qui correspondent à la clef BibTeX des entrées (plus '.pdf' ou '.ps'), JabRef sera capable de rechercher dans vos répertoires principaux et leurs sous-répertoires le bon fichier PDF ou PS. Lorsqu'un fichier PDF ou PS (nommé correctement) est déjà dans le répertoire principal, vous accédez à cette fonction en cliquant sur le bouton 'Auto' situé à coté des champs PDF et PS de l'éditeur d'entrées. Si le fichier PDF ou PS est trouvé, le champ sera immédiatement rempli.

Si vous nommez un fichier PDF ou PS comme mentionné ci-dessus, vous pourrez aussi ouvrir le fichier sans configurer préalablement le champ PDF ou PS de l'entrée. Cependant, dans ce cas, l'icône PDF ou PS n'apparaîtra pas dans le tableau des entrées.

## Les répertoires PDF et PS spécifiques à la base de données

Vous pouvez définir des répertoires PDF et PS spécifiques à une base de données (**Fichier -&gt; Propriétés de la base de données**). Ces répertoires remplacent alors les répertoires principaux.

## <a href="" id="RegularExpressionSearch">Utiliser la recherche d'expressions régulières pour les liaisons automatiques</a>

Dans les sections précédentes, la fonction de liaison automatique de JabRef était décrite : si vous choisissiez des noms de fichiers qui correspondaient à la clef BibTex suivi de l'extension, JabRef était capable de trouver les fichiers automatiquement.

A partir de JabRef 2.2, il est possible d'avoir une plus grande flexibilité dans la forme du nom grâce à l'utilisation d'une expression régulière pour la recherche. Dans la plupart des cas, adapter l'expression régulière donnée par défaut devrait suffire.

Si vous ouvrez les préférences pour les programmes externes (Options -&gt; Préférences -&gt; Programmes externes), vous y trouverez une option nommée "Rechercher l'expression régulière". Cocher cette option vous permettra d'entrer votre propre expression régulière pour la recherche dans les répertoires PDF.

Voici la syntaxe à utiliser :

-   `*` - Rechercher dans tous les sous-répertoires directs en excluant le répertoire courant et tout autre sous-répertoire.
-   `**` - Rechercher récursivement dans tous les sous-répertoires ET dans le répertoire courant.
-   `.` et `..` - Le répertoire courant et le répertoire parent.
-   `[title]` - Toutes les expressions entre crochets sont remplacées par le champ correspondant dans l'entrée courante.
-   `[extension]` - Remplacement par l'extension de fichier du champ que vous utilisez.
-   Tout autre texte est interprété comme une expression régulière. Mais attention : vous devez remplacer chaque caractère anti-slash (\\) par deux anti-slashs (\\\\) afin d'éviter la confusion avec un séparateur de répertoire .

Par défaut, l'expression régulière de recherche est `**/.*[bibtexkey].*\\.[extension]`. Comme vous pouvez le voir cela effectuera la recherche dans tous les sous-répertoires du répertoire défini pour l'extension (par exemple dans le répertoire PDF) de tout nom de fichier qui possède la bonne extension et qui contient quelque part la clef BibTeX.
