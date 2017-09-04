---
title: Recherche INSPIRE
---

# Recherche INSPIRE

Pour utiliser cette fonction, choisissez **Recherche → Recherche Web**. L'interface de recherche apparaitra dans le panneau latéral. Sélectionnez **INSPIRE** dans le menu déroulant.

La fonction de recherche INSPIRE ne fait en fait que lancer des requêtes de recherche sur le serveur web INSPIRE ; aussi, vous devez construire vos requêtes comme si vous alliez sur le serveur web, sauf que vous ne devez pas inclure les commandes *find* et *fin*. Cette page d'aide vous donne uniquement une brève introduction aux requêtes de recherche. Une aide plus longue sur les recherches dans INSPIRE est disponible sur la page http://inspirehep.net/info/hep/search-tips (en anglais).

Votre requête peut se composer de plusieurs parties combinées en utilisant *and* et *or* comme opérateurs logiques. Chaque partie est composée d'une lettre ou d'un mot spécifiant le champ de recherche, suivi par un espace et le texte à rechercher.

La liste suivante montre quelques-uns des champs de recherche qui peuvent être spécifiés :

-   *a* ou *author* : recherche sur les noms d'auteurs
-   *t* or *title* : recherche dans le titre
-   *j* : journal. Ici, soit l'abréviation usuelle, soit l'abréviation CODEN de 5 lettres du nom du journal peut être utilisé. Numéro de volume et page peuvent être aussi inclus, séparés par des virgules. Par exemple, *j Phys. Rev.,D54,1* recherche dans le journal Phys. Rev., volume D54, page 1.
-   *k*: recherche dans les mots-clefs

Exemples de requête :

-   *a smith and a jones*: recherche les références ayant pour auteurs "smith" et "jones"
-   *a smith or a jones*: recherche les références ayant pour auteurs "smith" ou "jones"
-   *a smith and not t processor*: recherche les référence ayant pour auteur "smith" et n'ayant pas le mot "processor" dans le titre

