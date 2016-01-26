---
title: Aide sur les chaînes
---

# Aide sur les chaînes

*BibTeX* permet d'avoir des chaînes constantes en utilisant `@String {key = value}`. JabRef est capable de les gérer en utilisant **BibTeX -&gt; Editer les chaînes**, ce qui ouvre l'[Editeur de chaînes](StringEditorHelp.html). Ces valeurs peuvent être utilisées dans des champs. Par exemple, vous pouvez avoir 

    @String { kopp = "Kopp, Oliver" }
    @String { kubovy = "Kubovy, Jan" }
    @String { et = " and " }

et ainsi, dans certaines entrées, par exemple : `@Misc{ author = kopp # et # kubovy }` ou `@Misc{ author = kopp # " and " # kubovy }`. Dans l'éditeur de champs de JabRef, l'auteur doit être inséré comme `#kopp# #et# #kubovy#` ou `#kopp# and #kubovy#`. JabRef améliore le concept de chaînes en associant un type à ces `@String`s. Le problème est de préserver le type d'une chaîne dans un fichier BibTeX. JabRef spécifie le type grâce à un préfixe :

-   `@String { aKopp = "Kopp, Oliver" }` est un `@String` avec le type author.
-   `@String { iMIT = "{Massachusetts Institute of Technology ({MIT})}" }` est un `@String` avec le type institution.
-   `@String { anct = "Anecdote" }` est un `@String` de type other.
-   `@String { lTOSCA = "Topology and Orchestration Specification for Cloud Applications" }` est un `@String` de type other.

Ensuite, les `@String`s de type author ne pourront être utilisées que dans les champs author ou editors. Des `@String`s de type institution ne pourront être utilisées que dans les champs institution et organization. Des `@String`s de type publisher ne pourront être utilisées que dans les champs publisher. Et enfin, des `@String`s de type other seront utilisables partout.

Il est parfois nécessaire d'avoir la même institution pour plusieurs types :

-   `@String { aMIT = "{Massachusetts Institute of Technology ({MIT})}" }` si l'institution doit apparaître comme author ou editor
-   `@String { iMIT = "{Massachusetts Institute of Technology ({MIT})}" }` si l'institution doit apparaître comme institution ou organization
-   `@String { pMIT = "{Massachusetts Institute of Technology ({MIT}) press}" }` si l'institution doit apparaître comme publisher.

Même si le dernier exemple peut apparaître contradictoire, l'intention était de supprimer les doublons et d'unifier les noms de personnes et d'institutions.
