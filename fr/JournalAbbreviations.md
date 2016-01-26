# Abréviations des journaux

Cette fonction peut être configurée dans **Options -&gt; Gérer les abréviations de journaux**.

JabRef peut basculer automatiquement les noms de journaux entre leurs formes abrégées et non abrégées tant que les noms sont contenus dans une de vos listes de journaux. JabRef inclut une très longue liste d'abréviations de journaux, toutefois il est probable qu'elle soit incomplète pour les travaux de beaucoup d'utilisateurs. Vous pouvez ajouter des abréviations à partir d'un nombre quelconque de listes, chacune correspond à un fichier texte présent sur votre disque dur.

## Utiliser cette fonction

La conversion de noms de journaux peut être effectuée depuis l'éditeur d'entrées ou depuis le menu **Outils**. Dans l'éditeur d'entrées, vous trouverez un bouton nommé *Masquer/afficher l'abréviation* à droite du champ *journal*. Cliquer sur ce bouton changera le mode d'affichage du nom du journal. Trois modes sont possibles :

-   Nom complet, par exemple "Aquacultural Engineering"
-   Abréviation ISO, par exemple "Aquacult. Eng."
-   Abréviation MEDLINE, par exemple "Aquacult Eng"

Si le nom du journal actuel n'est pas trouvé dans la liste des journaux, le champ ne sera pas modifié.

Pour convertir en une seule fois les noms de journaux de beaucoup d'entrées, vous pouvez sélectionner ces entrées et choisir **Outils -&gt; Abréger les noms de journaux (ISO)**, **Outils -&gt; Abréger les noms de journaux (MEDLINE)** ou **Outils -&gt; Développer les noms des journaux**. Ces trois actions abrégeront ou développeront les noms de journaux pour toutes les entrées sélectionnées dont le nom de journal a pu être trouvé dans vos listes de journaux.

## Paramétrer vos listes de journaux

En plus de la liste inclue par défaut dans JabRef, vous pouvez avoir plusieurs listes sous la forme de fichiers texte externes liés depuis JabRef. La liste par défaut peut être éditée depuis JabRef.

### Votre liste personnelle des abréviations de journaux

Votre liste personnelle de journaux est gérée dans la partie supérieure de la fenêtre **Gérer les abréviations de journaux**. Pour commencer à construire votre liste d'abréviations de journaux, choisissez *Nouveau fichier*, et entrez manuellement le nom du fichier ou utilisez le bouton *Explorer*. Si vous disposez déjà d'un fichier que vous souhaitez utiliser comme point de départ, choisissez *Fichier existant* et utilisez le bouton *Explorer* pour choisir le fichier. La table sera mise à jour pour tenir compte du contenu de la liste sélectionnée.

La table et les boutons d'outils à sa droite vous permettent d'ajouter, de supprimer et d'éditer les entrées de journaux. Pour chaque entrée, vous devez fournir le nom complet du journal et son abréviation ISO (par exemple "Aquacultural Engineering" et "Aquacult. Eng."). Pour éditer une entrée, double-cliquez sur sa ligne dans la table.

Une fois que vous avez cliqué sur *OK*, si vous avez sélectionné un fichier et que la table contient au moins une entrée, le contenu de la table sera stocké dans le fichier sélectionné, et la liste des journaux de JabRef sera mise à jour.

### Listes externes de journaux

En plus de votre liste personnelle, vous pouvez relier plusieurs listes externes. Ces liens peuvent être paramétré dans la partie inférieure de la fenêtre **Gérer les abréviations de journaux**. Les listes externes sont similaires à la liste personnelle - la seule différence est que JabRef ne fournit pas d'interface pour éditer les listes externes.

Pour ajouter une nouvelle liste externe, cliquez sur le bouton **+**. Cela ajoutera une nouvelle entrée à l'interface. Ensuite, utilisez soit le bouton *Explorer* soit le bouton *Télécharger* situé à coté d'une des entrées de la partie inférieure de la fenêtre.

-   Le bouton *Explorer* vous permet de sélectionner un fichier existant sur votre ordinateur.
-   Le bouton *Télécharger* vous permet de télécharger une liste depuis l'internet en entrant une URL, de la stocker dans un fichier local sur votre ordinateur et de la lier comme une liste de journaux depuis JabRef. L'URL sera par défaut l'adresse de la liste de journaux disponible depuis la page web de JabRef. Cette liste est incomplète mais pourra être améliorée dans le futur.

Toute entrée dans votre liste personnelle de journaux sera prioritaire devant une entrée ayant le même nom complet dans l'une des listes externes. De même, les listes externes sont prioritaires selon l'ordre dans lequel elles sont listées.
