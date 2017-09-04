---
title: L'éditeur de chaîne
---

# L'éditeur de chaîne

*On l'ouvre à partir de la fenêtre principale par le menu **BibTeX → Editer les chaînes** ou en appuyant sur un des icônes de la barre d'outils. Le raccourci clavier est CTRL-T.*

Les *chaînes* sont l'équivalent *BibTeX* des constantes dans un langage de programmation. Chaque chaîne est définie par un *nom* unique et un *contenu*. Dans votre base de données, ce nom peut être utilisé pour représenter ce contenu.

Par exemple, si beaucoup d'entrées appartiennent à un journal dont l'abréviation est difficile à mémoriser, tel que 'J. Theor. Biol.' (Journal of Theroretical Biology), une chaîne nommée JTB peut être définie pour représenter le nom de ce journal. Au lieu de taper le nom exact du journal dans chaque entrée, les caractères '\#JTB\#' sont entrés (sans les guillemets) dans le champ *journal* de chaque entrée, assurant ainsi que le nom du journal est écrit de la même façon à chaque fois.

Une telle chaîne peut apparaître n'importe où dans un champ en incluant le nom de la chaîne entre une paire de caractères '\#'. Cette syntaxe est spécifique à JabRef et diffère légèrement de la notation *BibTeX* qui est produite quand vous sauvez votre base de données. Les chaînes peuvent par défaut être utilisées pour tous les champs BibTeX standard, et dans **Options → Préférences → Général→ Fichier**, vous pouvez choisir d'autoriser les chaînes pour des champs non-standards. Dans ce dernier cas, vous pouvez spécifier une série de champs où les chaînes ne doivent pas être recherchées ; il est recommandé d'y inclure le champ 'url' ainsi que les autres champs qui pourraient contenir des caractères '\#' que BibTeX/LaTeX est susceptible de traiter.

Une chaîne peut être incluse dans le contenu d'une autre chaîne (chaîne incluante), à la condition que la chaîne incluse soit définie *avant* la chaîne incluante.

Alors que l'ordre des chaînes dans votre fichier BibTeX est important dans certains cas, vous n'avez pas à vous en préoccuper quand vous utilisez JabRef. Dans l'éditeur de chaînes, les chaînes seront affichées selon l'ordre alphabétique et stockée dans le même ordre, excepté quand BibTeX aura besoin d'un ordre différent.
