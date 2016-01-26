Der String-Editor
=================

*Zugriff über das Menü **BibTeX -&gt; Strings bearbeiten** oder durch Klick auf die Schaltfläche **Strings bearbeiten***.

*Strings* sind das *BibTeX*-Äquivalent zu Konstanten in einer Programmiersprache. Jeder String wird durch einen eindeutigen *Namen* und einen *Inhalt* festgelegt. Der Name kann an anderer Stelle in der Datei benutzt werden, um den Inhalt wiederzugeben.

Ein Beispiel: Wenn viele Einträge aus einer Zeitschrift stammen, deren Abkürzung schwer zu behalten ist, wie etwa 'J. Theor. Biol.' (Journal of Theroretical Biology), könnte ein String mit dem Namen 'JTB' angelegt werden, um den Namen der Zeitschrift zu repräsentieren. Statt nun in jedem Eintrag den exakten Namen der Zeitschrift einzutragen, genügt die Zeichenfolge `#JTB#` im Feld *journal*, und es ist sichergestellt, dass der Name jedesmal in identischer Schreibweise ausgegeben wird.

Der Verweis auf einen String kann an jeder Stelle eines Feldes erscheinen, wobei der Name des Strings immer von einem Paar '\#'-Zeichen eingeschlossen werden muss. Diese Syntax gilt nur für JabRef und weicht ein wenig von der *BibTeX*-Syntax ab, die erzeugt wird, wenn Sie Ihre Datei speichern. Strings können für alle Standard-BibTeX-Felder verwendet werden. Unter **Optionen -&gt; Einstellungen -&gt; Allgemein** können Sie im Bereich **Datei** festlegen, ob Strings auch in Nicht-Standard-Feldern benutzt werden dürfen. In diesem Fall können Sie Felder bestimmen, die von der Auflösung der Strings ausgenommen werden; hierbei wird empfohlen, das Feld 'url' und andere Felder anzugeben, die das Zeichen '\#' enthalten können und die von BibTeX/LaTeX abgearbeitet werden können.

In derselben Weise kann man auch im Inhalt eines Strings auf einen anderen String verweisen, vorausgesetzt, dass der String, auf den verwiesen wird, bereits *vorher* definiert ist.

Während die Reihenfolge der Strings in Ihrer BibTeX-Datei in einigen Fällen wichtig ist, brauchen Sie sich bei der Benutzung von JabRef darüber keine Gedanken zu machen. Die Strings werden in alphabetischer Reihenfolge im String-Editor aufgelistet und in derselben Reihenfolge gespeichert, außer wenn eine andere Reihenfolge von BibTeX verlangt wird.
