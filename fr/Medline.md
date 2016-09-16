---
title: Récupération d'entrées depuis Medline
---

# Récupération d'entrées depuis Medline

Pour utiliser cette fonction, choisissez **Recherche -&gt; Recherche Web**. L'interface de recherche apparaitra dans le panneau latéral. Sélectionnez **Medline** dans le menu déroulant.

MEDLINE est la principale base de données bibliographique de la bibliothèque nationale de médecine des États-Unis. Elle contient des références à des articles de journaux sur les sciences de la vie avec une spécialisation sur la biomédecine.

Il y a deux manières d'indiquer les entrées à télécharger :

1.  Entrez un ou plusieurs ID Medline (séparés par des virgules/points-virgules) dans le champ texte
2.  Entrez une série de noms et/ou de mots à rechercher. Vous pouvez utiliser les opérateurs *and* et *or* et les parenthèses pour raffiner l'expression de votre recherche. Voir [opérateurs Medline/OVID](http://www.ovid.com/site/products/ovidguide/medline.htm) pour une description complète.
3.  Exemples :
    1.  May \[au\] AND Anderson \[au\]
    2.  Anderson RM \[au\] HIV \[ti\]
    3.  Valleron \[au\] 1988:2000\[dp\] HIV \[ti\]
    4.  Valleron \[au\] AND 1987:2000\[dp\] AND (AIDS \[ti\] OR HIV\[ti\])
    5.  Anderson \[au\] AND Nature \[ta\]
    6.  Population \[ta\]

Dans les deux cas, appuyez sur la touche **Entrée** du clavier ou sur le bouton **Rechercher**. Si vous utilisez une recherche de texte, vous serez informé du nombre d'entrées trouvées et vous pourrez choisir le nombre d'entrées à télécharger.

Les entrées recherchées seront ajoutées à votre base de données active.

## Utilisation d'un serveur proxy

Si vous avez besoin d'utiliser un serveur de proxy, passez le nom du serveur et le numéro de port au lancement de java.

`java -Dhttp.proxyHost="hostname"     -Dhttp.proxyPort="portnumber"`

Ces paramètres d'environnement sont expliqués dans la [documentation Oracle J2SE](http://docs.oracle.com/javase/1.4.2/docs/guide/net/properties).
