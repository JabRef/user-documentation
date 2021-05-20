# Strings

_BibTeX_ supports storing constant strings using `@String {key = value}`. JabRef supports managing them using **Library → Edit string constants**, which opens the [String Editor](../setup/stringeditor.md). These values can be used in fields. For example, you can have:

```text
@String { kopp = "Kopp, Oliver" }
@String { kubovy = "Kubovy, Jan" }
@String { et = " and " }
```

and then in some entry for example

```text
@Misc{m1,
  author = kopp # et # kubovy,
}
```

or

```text
@Misc{m2,
  author = kopp # " and " # kubovy,
}
```

In the JabRef field editor, the author has to be inserted as `#kopp# #et# #kubovy#` or `#kopp# and #kubovy#`.

## Rendering of constants in JabRef's entry editor

Strings are rendered specially in the entry editor. This is especially important in the case of months. For instance, take the following BibTeX entry:

```text
@Misc{m3,
  month = may,
}
```

In JabRef, the entry editor then displays `#may#`. In case the entry editor just displays `may`, this is written as follows:

```text
@Misc{m4,
  month = {may},
}
```

In other words: The character `#` indicates something special in the entry editor.

## JabRef's typed Strings

JabRef enhances the concept of Strings to add a type to those `@String`s. The issue is how to preserve such type of a string in a BibTeX file. JabRef adds the type though prefixes:

* `@String { aKopp = "Kopp, Oliver" }` is a `@String` with the type author.
* `@String { iMIT = "{Massachusetts Institute of Technology ({MIT})}" }` is a `@String` with the type of institution.
* `@String { anct = "Anecdote" }` is a `@String` of type other.
* `@String { lTOSCA = "Topology and Orchestration Specification for Cloud Applications" }` is a `@String` of type other.

Then `@String`s of type author should be used for author and editors fields only. `@String`s of type institution should be used for institution and organization fields only. `@String`s of type publisher should be used only for publisher fields. And finally `@String`s of type other can be used anywhere.

It can also happen that you will have the same institution for more types:

* `@String { aMIT = "{Massachusetts Institute of Technology ({MIT})}" }` if the institution will appear as author or editor
* `@String { iMIT = "{Massachusetts Institute of Technology ({MIT})}" }` if the institution will appear as institution or organization
* `@String { pMIT = "{Massachusetts Institute of Technology ({MIT}) press}" }` if the institution will appear as publisher.

Even if the last example may appear contradicting the intention was to remove duplicity and unify the names of persons and institutions.

## More examples

* `\@String{aKahle    = "Kahle, Brewster "}` -&gt; author
* `\@String{aStallman = "Stallman, Richard"}` -&gt; author
* `\@String{iMIT      = "{Massachusetts Institute of Technology ({MIT})}" }` -&gt; institution
* `\@String{pMIT      = "{Massachusetts Institute of Technology ({MIT}) press}" }` -&gt; publisher
* `\@String{anct      = "Anecdote" }` -&gt; other
* `\@String{eg        = "for example" }` -&gt; other
* `\@String{et        = " and " }` -&gt; other
* `\@String{lBigMac   = "Big Mac" }` -&gt; other

Usage:

```text
\@Misc {
  title       = "The GNU Project"
  author      = aStallman # et # aKahle
  institution = iMIT
  publisher   = pMIT
  note        = "Just " # eg
}
```

## Further reading

See [https://tex.stackexchange.com/questions/303467/bibliography-contents-journal-names-not-abbreviated-even-with-ieeeabrv/303489\#303489](https://tex.stackexchange.com/questions/303467/bibliography-contents-journal-names-not-abbreviated-even-with-ieeeabrv/303489#303489) for a MWE for string constants.

