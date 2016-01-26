---
title: Les groupes
---

# Les groupes

Les groupes permettent de structurer une base de données BibTeX selon une arborescence rappelant l'organisation des fichiers sur un disque dur dans des répertoires et sous-répertoires. Les deux principales différences sont :

-   Alors qu'un fichier est toujours localisé dans un seul répertoire, une entrée peut être incluse dans plus d'un groupe.
-   Les groupes peuvent utiliser certains critères pour définir dynamiquement leur contenu. Les nouvelles entrées qui correspondent à ces critères sont automatiquement incluses à ces groupes. Cette caractéristique n'est pas disponible dans les systèmes de fichiers habituels, mais est présente dans certains logiciels de messagerie électronique (tel que Thunderbird et Opera).

Sélectionner un groupe montre les entrées contenues dans ce groupe. Sélectionner plusieurs groupes montre les entrées contenues dans au moins un des groupes (union) ou dans tous les groupes (intersection), selon le paramétrage en cours. Tout ceci est expliqué en détail ci-dessous.

Les définitions de groupes sont spécifiques à chaque base de données ; Elles sont sauvées comme un bloc `@COMMENT` dans le fichier `.bib` et sont communes à tous les utilisateurs (des futures versions de JabRef pourrait supporter des groupes dépendants des utilisateurs).

## Interface

L'interface des groupes se trouve dans le panneau latéral sur la gauche de l'écran. Il peut être affiché ou masqué en appuyant sur `CTRL-MAJ-G` ou sur le bouton des groupes dans la barre d'outils. L'interface a plusieurs boutons, mais la plupart des fonctions sont accessibles par un menu contextuel ("clic droit"). La fonction Glisser-Déplacer est aussi disponible.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><h2 id="quelques-exemples-rapides">Quelques exemples rapides</h2>
<p>Vous pourriez vouloir...</p>
<h3 id="uniquement-créer-un-groupe-et-lui-assigner-quelques-entrées.">...uniquement créer un groupe et lui assigner quelques entrées.</h3>
<p>Assurez-vous que l'interface des groupes est visible. Appuyez sur le bouton <strong>Nouveau Groupe</strong>, entrez un nom pour ce groupe puis appuyez sur OK en conservant les valeurs par défaut. Maintenant, sélectionnez les entrées qui doivent être assignées à ce groupe et utilisez un Glisser-Déplacer vers le groupe, ou l'option <strong>Ajouter au groupe</strong> du menu contextuel. Enfin, sélectionnez le groupe pour voir son contenu (qui doit correspondre aux entrées que vous venez de lui assigner).</p>
<h3 id="utiliser-le-champ-keywords-pour-grouper-les-entrées">...utiliser le champ <code>keywords</code> pour grouper les entrées</h3>
<p>Assurez-vous que l'interface des groupes est visible. Appuyez sur le bouton <strong>Nouveau Groupe</strong>, entrez un nom pour ce groupe et sélectionnez l'option qui groupe dynamiquement les entrées en cherchant un mot-clef dans un champ. Entrez le mot-clef à rechercher, puis cliquer sur OK. Enfin, sélectionnez le groupe pour voir son contenu (qui doit correspondre aux entrées dont le champ <code>keywords</code> contient le mot-clef que vous avez spécifié).</p>
<h3 id="utiliser-une-expression-de-recherche-de-forme-libre-pour-définir-un-groupe">...utiliser une expression de recherche de forme libre pour définir un groupe</h3>
<p>Assurez-vous que l'interface des groupes est visible. Appuyez sur le bouton <strong>Nouveau Groupe</strong>, entrez un nom pour ce groupe et sélectionnez l'option qui groupe dynamiquement les entrées en utilisant une expression de recherche de forme libre. Entrez <code>author=smith</code> comme expression de recherche (remplacez <code>smith</code> avec un nom d'auteur présent dans votre base et cliquez sur OK. Enfin, sélectionnez le groupe pour voir son contenu (qui doit correspondre aux entrées dont le champ <code>author</code> contient le nom que vous avez spécifié).</p>
<h3 id="combiner-plusieurs-groupes">...combiner plusieurs groupes</h3>
<p>Créez deux groupes différents (par exemple, tel que décrit ci-dessus). Cliquez sur le bouton <strong>Paramètres</strong> et assurez-vous que <strong>Union</strong> est sélectionné. Maintenant, sélectionnez les deux groupes. Vous devriez voir uniquement les entrées appartenant aux deux groupes (ce qui peut en faire aucune ou exactement les mêmes entrées que précédemment si les deux groupes contiennent les mêmes entrées).</p>
<h3 id="identifier-les-groupes-se-chevauchant">...identifier les groupes se chevauchant</h3>
<p>JabRef vous permet d'identifier facilement les groupes qui se chevauchent parmi les groupes actuellement sélectionnés (c-à-d ceux qui contiennent au moins une entrée qui est aussi contenu dans les groupes actuellement sélectionnés). Cliquez sur le bouton <strong>Paramètres</strong> et activé l'option pour montrer les groupes qui se chevauchent. Ensuite sélectionnez un groupe qui chevauche d'autres groupes. Les noms de ces groupes s'afficheront en rouge.</p></td>
</tr>
</tbody>
</table>

## Les types de groupes

Dans JabRef, il y a quatre types de groupes différents :

1.  Le groupe **Toutes les entrées**, qui -- comme son nom le suggère -- contient toutes les entrées, est toujours présent et ne peut pas être édité ou supprimé.
2.  **Les groupes manuels** se comportent comme les répertoires d'un disque et contiennent uniquement les entrées que vous leur avez explicitement assignées.
3.  **Les groupes dynamiques basés sur la recherche d'un mot-clef** contiennent des entrées pour lesquelles un champ BibTeX donné (par ex. `keywords`) contient un certain mot-clef (par ex. `électrique`). Cette méthode ne nécessite pas d'assignation manuelle des entrées, mais utilise les informations qui sont déjà présentes dans la base de données. Si toutes les entrées de votre base de données ont des mots-clefs pertinents dans leur champ `keywords`, utiliser ce type de groupe pourrait être votre meilleur choix.
4.  **Les groupes dynamiques basés sur des expressions de recherche de forme libre** contiennent les entrées qui correspondent à l'expression de recherche spécifiée et suivant la même syntaxe que [l'interface de recherche](SearchHelp.md) dans le panneau latéral. Cette [syntaxe](SearchHelp.md#advanced) supportent les opérateurs logiques (`AND`, `OR`, `NOT`) et permet de spécifier un ou plusieurs champs BibTeX pour la recherche, autorisant des définitions de groupes plus flexibles que la recherche d'un mot-clef (par ex. `author=smith and         title=électrique`).

Chaque groupe que vous créez fait partie de ces trois derniers types. La fenêtre d'édition des groupes, qui s'ouvre en double-cliquant sur un groupe, montre une description succincte (en français de tous les jours) de la définition du groupe sélectionné/édité.

## La structure des groupes, créer et supprimer des groupes

Comme pour les répertoires, les groupes sont structurés selon une arborescence, avec le groupe **Toutes les entrées** à la racine. En faisant un clic droit sur un groupe, vous pouvez ajoutez un nouveau groupe à l'arbre, soit au même niveau que le groupe sélectionné, soit comme un sous-groupe. Le bouton **Nouveau groupe** vous permet de créer un nouveau sous-groupe au groupe **Toutes les entrées**, quelque soit le(s) groupe(s) actuellement sélectionné(s). Le menu contextuel vous permet de supprimer des groupes et/ou des sous-groupes, de trier les sous-groupes par ordre alphabétique ou de déplacer des groupes au sein de l'arbre. Cette dernière fonction peut aussi être réalisées par Glisser-Déplacer, avec la limitation que le Glisser-Déplacer ne permet pas de changer l'ordre des sous-groupes d'un groupe.

Annuler et Répéter fonctionnent pour toutes les éditions.

### Les groupes manuels

Les groupes manuels sont alimentés uniquement par l'assignation explicite des entrées. Après avoir créé un groupe manuel, vous sélectionnez les entrées à lui assigner et utilisez soit un Glisser-Déplacer soit le menu contextuel de la table des entrées. Il n'y a pas d'options à configurer.

Cette méthode de groupement nécessite que toutes les entrées aient une clef BibTeX unique. Dans le cas de clefs BibTeX manquantes ou dupliquées, l'assignation de ces entrées ne pourra pas être correctement rétablie lors de futures sessions.

### Les groupes dynamiques

Le contenu d'un groupe dynamique est défini par une condition logique. Uniquement les entrées qui remplissent cette condition sont contenues dans le groupe. Cette méthode utilise des informations stockées dans la base de données elle-même et s'actualise dynamiquement dés que la base de données est modifiée.

Deux types de conditions logiques peuvent être utilisées :

**Recherche d'un mot-clef dans un champ**  
Cette méthode groupe les entrées dans lesquelles un champ BibTeX spécifié (par ex. `keywords`) contient le terme de recherche spécifié (par ex. `électrique`). Evidemment, pour que cela fonctionne, le champ doit être présent dans toutes les entrées et son contenu doit être pertinent. L'exemple ci-dessus regroupera toutes les entrées qui font références à électrique. Utiliser le champ `author` permet de grouper les entrées d'un auteur donné, etc. Le mot-clef à rechercher peut être du texte brut ou une expression régulière. Dans le premier cas, JabRef permet l'assignation(/la suppression) manuelle des entrées d'un groupe en modifiant(/supprimant) simplement le terme de recherche du contenu du champ de groupement. C'est pertinent uniquement pour le champ `keywords` ou pour les champs auto-définis mais, évidemment, pas pour les champs tels que `author` ou `year`.

**Utiliser une expression de recherche de forme libre**  
Ceci est similaire à ce qui est décrit ci-dessus mais, au lieu de rechercher dans un seul champ pour un unique terme de recherche, la [syntaxe des expressions de recherche](SearchHelp.md#advanced) peut être utilisées, autorisant l'emploi d'opérateurs logiques (`AND`, `OR`, `NOT`) et permettant les recherches sur plusieurs champs BibTeX. Par exemple, l'expression de recherche `keywords=régression         and not keywords=linéaire` groupe les entrées concernant la régression non-linéaire.

Dans le panneau des groupes, les groupes dynamiques sont par défaut affichés en *italique*. Cela peut être modifié dans les préférences (Options -&gt; Préférences -&gt; Groupes, case "Afficher les groupes dynamiques en italique").

### Contexte hiérarchique

Par défaut, un groupe est **indépendant** de sa position dans l'arbre des groupes : lorsqu'il est sélectionné, uniquement son contenu est affiché. Cependant, particulièrement lors de l'utilisation de groupes dynamiques, il est souvent utile de définir un sous-groupe qui **raffine son sur-groupe**, c-à-d qu'en le sélectionnant les entrées contenues dans les deux groupes sont affichées. Par exemple, créez un sur-groupe contenant les entrées possédant le mot-clef `distribution` et un sous-groupe contenant les entrées possédant le mot-clef `gauss` raffinant ce sur-groupe. Sélectionner le sous-groupe affichera les entrées correspondant aux deux conditions, c-à-d celles qui concerneront les distributions gaussiennes. En ajoutant au sur-groupe original un autre sous-groupe recherchant le terme `laplace`, le groupement peut facilement être étendu. Dans un arbre de groupes, les groupes raffinants ont une icône spécial (cela peut être annulé dans les préférences).

Le complément logique au groupe raffinant est un groupe qui **inclut ses sous-groupes**, c-à-d qu'en le sélectionnant, ce ne sont pas uniquement les propres entrées du groupe mais aussi les entrées de ses sous-groupes qui sont affichées. Dans l'arbre des groupes, ce type de groupe possède une icône spécial (cela peut-être annulé dans les préférences).

## Afficher les entrées d'un groupe, combiner plusieurs groupes

Sélectionner un groupe montre les entrées contenues dans ce groupe en les surlignant et, selon le paramétrage (accessible en cliquant sur le bouton **Paramètres**), les déplacent au sommet de la liste et/ou les sélectionnent. Ces options sont identiques à celles disponibles habituellement pour la recherche.

Quand plusieurs groupes sont sélectionnés, soit l'union soit l'intersection de leurs contenus est affiché en fonction de paramétrage choisi. Cela permet de combiner rapidement plusieurs conditions. Par exemple, si vous avez un groupe manuel `Extrêmement     Important` auquel vous assignez toutes les entrées extrêmement importantes, vous pouvez voir les entrées extrêmement importantes dans tout autre groupe en sélectionnant les deux groupes (cela nécessite d'avoir **Intersection** sélectionné dans les paramètres).

## Groupes et recherche

Lors de l'affichage de contenu d'un ou plusieurs groupes, une recherche peut être effectuée à l'intérieur de ce contenu en utilisant la technique de recherche habituelle.

## Surligner les groupes se chevauchant

Le bouton **Paramètres** offre une option de surlignement des groupes se chevauchant. Si elle est activée, lors de la sélection d'un ou plusieurs groupes, tous les groupes contenant au moins une des entrées appartenant au(x) groupe(s) sélectionné(s) sont surlignés. Cela identifie rapidement les chevauchements entre les contenus des groupes. Vous pourriez, par exemple, créer un groupe `A lire` qui contient toutes les entrées que vous comptez lire. À présent, dès que vous sélectionnez n'importe quel groupe, le groupe `A     lire` sera surligné si le groupe sélectionné contient des entrées que vous comptez lire.

## Nouvelles entrées assignées aux groupes sélectionnés

Le bouton **Paramètres** offre aussi une option pour assigner automatiquement de nouvelles entrées aux groupes sélectionnés. Si elle est activée, lors de la sélection d'un ou plusieurs groupes, toutes les nouvelles entrées créées seront assignés aux groupes sélectionnés. Cela fonctionne à la fois pour des entrées créées à partir du bouton du menu et pour des entrées créées par collage à partir du presse-papier. Cette option peut aussi être activée/désactivée à partir du menu "Options &gt; Préférences &gt; Groupes".

## Caractéristiques avancées

Une fois que vous maîtriserez les concepts de groupe décrits ci-dessus, les caractéristiques avancées suivantes pourraient vous être utile.

### Création automatique de groupes dynamiques

En cliquant sur le bouton **Créer automatiquement des groupes pour la base**, vous pouvez facilement créer une série de groupes pertinents pour votre base de données. Ce dispositif collectera tous les mots trouvés dans le champ que vous aurez spécifié et créera un groupe pour chaque mot. C'est utile si, par exemple, votre base contient des mots-clefs pertinents pour toutes les entrées. En gênerant automatiquement les groupes en se basant sur le champ `keywords`, vous devriez avoir une série de groupes sans effort.

Vous pouvez aussi spécifier des caractères à ignorer, par exemple les virgules utilisées entre les mots-clefs. Ils seront traités comme des séparateurs de mots et non comme en faisant partie. Cette étape est importante pour que les mots-clefs composés tels que `distribution de Laplace` soient reconnus comme une unique entité sémantique (vous ne pouvez pas utiliser cette option pour supprimer des mots complets. Pour cela, supprimer manuellement les groupes non voulus à la suite de leur création automatique.

### Rafraîchir l'affichage des groupes

Le bouton **Rafraîchir** met à jour la table des entrées pour refléter la sélection actuelle des groupes. Habituellement, cela s'effectue automatiquement, mais, dans quelques occasions (par exemple après un Annuler/Répéter en rapport avec les groupes), un rafraîchissement manuel est nécessaire.

### Combiner des groupes raffinants avec des groupes incluants

Si un groupe raffinant est le sous-groupe d'un groupe qui inclue ses sous-groupes -- les frères du groupe raffinant --, les frères sont ignorés quand le groupe raffinant est sélectionné.
