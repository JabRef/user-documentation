---
title: Liens de fichier dans JabRef
---

# Liens de fichier dans JabRef

JabRef vous permet de lier vos entrées avec des fichiers de n'importe quel type stockés sur votre système, ainsi qu'avec des documents sur internet sous forme d'une URL ou d'un identifiant DOI. Chaque entrée peut contenir un nombre arbitraire de liens de fichier et chaque fichier lié peut être ouvert rapidement depuis JabRef.

En termes BibTeX, dans une entrée, les liens de fichier sont encodés dans un unique champ. Cependant, à l'intérieur de JabRef, ils apparaissent comme une liste modifiable de liens à laquelle on accède depuis l'éditeur d'entrées, comme pour les autres champs BibTeX.

## Configurer les types de fichiers externes

Pour chaque lien de fichier, un type de fichier doit être choisi afin de déterminer quel icône devra être utilisé et quelle application devra être appelée pour ouvrir le fichier. La liste des types de fichier peut être affichée et éditée en choisissant **Options -&gt; Gérer les types de fichiers externes** ou en cliquant sur le bouton **Gérer les types de fichiers externes** dans l'onglet **Programmes externes** des préférences.

Un type de fichier est défini par un nom, un icône, une extension de fichier et une application pour afficher les fichiers. Sous Windows, le nom de l'application peut être omis afin d'utiliser l'afficheur par défaut de Windows.

## Ajouter des liens externes à une entrée

Si le champ "File" (fichier) est inclus dans les [champs généraux](GeneralFields.md), vous pouvez éditer la liste des liens externes d'une entrée dans l'[éditeur d'entrées](EntryEditorHelp.md). L'éditeur d'entrée inclut des boutons pour insérer, éditer et supprimer des liens, ainsi que des boutons pour ré-ordonner la liste de liens.

Si vous avez un fichier à l'intérieur ou en aval de votre répertoire de fichiers (configuré dans **Préférences -&gt; Programmes externes -&gt; Liens vers les fichiers externes -&gt; Répertoire de fichiers principal**), si son extension correspondant à l'un des types de fichiers externes définis, et si son nom contient la clef d'une entrée BibTeX, le fichier pourra être lié automatiquement en cliquant sur le bouton **Auto** dans l'éditeur d'entrées. Les règles décrivant les noms de fichiers pouvant être liés automatiquement à une clef BibTeX peuvent être configurées dans **Préférences -&gt; Programmes externes -&gt; Liens vers les fichiers externes -&gt; Utiliser une recherche par expression régulière**.

Si vous voulez télécharger un fichier et le lier à partir d'une entrée BibTeX, vous pouvez le faire en cliquant sur le bouton **Télécharger** de l'éditeur d'entrées. Une boîte de dialogue va s'afficher, vous demandant d'entrer l'URL. Le fichier sera téléchargé dans votre répertoire de fichiers principal, renommé selon la clef BibTeX de l'entrée et finalement lié depuis cette entrée.

Il y a plusieurs alternatives au répertoire de fichiers principal. Vous avez la possibilité (dans **Préférences -&gt; Programmes externes**) d'autoriser des liens relatifs à la localisation du fichier bib. Les fichiers liés de cette manière peuvent être déplacés avec le fichier bib sans casser ces liens. Il y a un autre paramètre spécifiant si la localisation du fichier bib doit être le répertoire de fichier *principal*. Cela détermine quel répertoire sera utilisé par JabRef lors du téléchargement ou du déplacement de liens liés dans votre répertoire de fichiers.

Vous pouvez aussi configurer un répertoire de fichiers (absolu ou relatif à la localisation du fichier bib) spécifiquement pour une base de données dans **Fichier -&gt; Propriétés de la base de données**. Finalement, dans la boîte de dialogue **Propriétés de la base de données**, vous pouvez configurer un répertoire de fichiers spécifique à l'utilisateur qui n'est valable uniquement quand vous êtes celui travaillant sur le fichier bib.

## Ouvrir les fichiers externes

Il y a plusieurs façons d'ouvrir un fichier externe ou une page web. Dans la table d'entrées, vous pouvez sélectionner une entrée et utiliser le menu, le raccourci-clavier ou le menu déroulant pour ouvrir le premier lien externe d'une entrée. Alternativement, si la table d'entrées est configurée pour afficher la colonne **Fichier** (configuré dans **Préférences -&gt; Table des entrées -&gt; Colonnes de tableau particulières -&gt; Afficher la colonne Fichier**), vous pouvez cliquer sur l'icône fichier pour ouvrir le premier lien externe d'une entrée. Pour accéder à un lien particulier d'une entrée, cliquez sur l'icône avec le bouton droit de la souris (ou **Ctrl-clic** sur Max OS X) pour afficher un menu montrant tous les liens.
