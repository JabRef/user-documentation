---
title: Propriétés de la base de données.
outdated: true
---

# Propriétés de la base de données.

*Se configurent à partir de la fenêtre principale en sélectionnant **Fichier -&gt; Propriétés de la base de données***

La fenêtre des propriétés de la base de données vous permet de configurer certains paramètres spécifiques à la base de données.

## Encodage de la base de données

Ce paramètre détermine quel encodage de caractères JabRef va utiliser quand il écrira cette base sur le disque. Changer ce paramètre supplantera, pour cette base, la configuration indiquée dans les préférences. JabRef spécifie l'encodage dans les premières lignes du fichier bib afin de pouvoir utiliser le bon encodage lors de la prochaine ouverture du fichier.

## Remplacer les répertoires par défaut

Ces paramètres sont utilisés pour spécifier dans quel répertoire chercher les fichiers liés (spécifiés dans le champ *File*) et pour les anciens liens PDF/PS (les champs *pdf* et *ps* étaient utilisés dans les versions de JabRef inférieures à la version 2.3, mais devraient être remplacés par les fichiers liés du champ "File").

Des chemins de répertoires relatifs peuvent être spécifiés. Cela signifie que la localisation des fichiers sera interprétée par rapport à la localisation du fichier bib. Paramétrer le répertoire "." (sans les guillemets) signifie que les fichiers doivent se trouver dans le même répertoire que le fichier bib.

Ces paramètres supplantent les répertoires spécifiés dans la fenêtre de préférence (onglet "Programmes externes"). Si aucune valeur n'est spécifiée, les répertoires par défaut seront utilisés.

## Protection de la base de données

Ce paramètre vous permet d'obliger la relecture des changements externes avant que la base de données ne soit sauvée. Si cette protection n'est pas activée, les utilisateurs pourront sauver la base même si les autres utilisateurs ont effectués des changements dans le fichier, sans passer en revue les changements - un message leur indiquera cependant que des changements ont été effectués. Quand la protection est activée, les utilisateurs pourront sauver la base uniquement après avoir parcouru et fusionné les changements externes (cependant, l'utilisateur pourra annuler des changements individuels au cours de sa relecture).

**Note :** Ceci n'est pas une fonction de sécurité, mais juste une façon d'éviter que des utilisateurs écrasent par inadvertance les changements effectués par d'autres utilisateurs. Cette fonction ne protège pas votre base de données contre des utilisateurs indélicats.
