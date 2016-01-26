---
title: Exportation vers une base de données SQL externe
---

# Exportation vers une base de données SQL externe

JabRef est capable d'exporter le contenu de la base BibTeX, ainsi que les informations sur les groupes, dans une base de données externe MySQL ou PostgreSQL.

Vous avez juste besoin d'avoir un utilisateur/mot de passe avec tous les privilèges sur un serveur MySQL ou PostgreSQL

## Exportation

1.  Choisissez **Fichier -&gt; Exporter vers une base SQL externe**, ou cliquez sur le bouton correspondant dans la barre d'outils.
2.  Sélectionnez le type de base de données à partir du menu déroulant pour le*Type de Serveur*.
3.  Entrez les informations de connexion de la base de données, et cliquez sur **Connecter**.

JabRef se connectera alors à la base de données spécifiée, créera de nouvelles tables et remplira ces tables avec les informations sur les entrées et sur les groupes. Vous serez en mesure d'exporter autant de base de données bib que vous désirez sans perdre les données précédemment explorée. Le système reconnaît une base de données uniquement par son chemin complet (structure des répertoires + nom de fichier). Dans le cas où vous exportez la même base de données plus d'une fois, les données de cette base seront mises à jour dans la base de données SQL. Notez que les informations de connexion ne vous seront pas demandées lors des prochaines exportations. Si vous souhaitez exporter vers une base de données différente, vous pouvez changez les informations de connexion en choisissant **Fichier -&gt; Connecter vers une base SQL externe** (ou en cliquant sur le bouton correspondant dans le barre d'outils), puis en effectuant une exportation.

A partir de la version 2.8 de JabRef, les tables ne sont plus effacées et l'utilisateur peut stocker plus d'une base de données JabRef dans une unique base de données SQL.

Lors de l'importation d'une base de données à partir d'une base de données SQL, (**Fichier -&gt; Importer depuis une base SQL externe**), JabRef mettra chaque base trouvée dans un onglet différent.
