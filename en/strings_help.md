Help on Strings
===============

*Bibtex* supports storing constant strings using `@String {key = value}`. JabRef supports managing them using **BibTeX -&gt; Edit strings**, which opens the [String Editor](StringEditorHelp.md). These values can be used in fields. For example, you can have:

    @String { kopp = "Kopp, Oliver" }
    @String { kubovy = "Kubovy, Jan" }
    @String { et = " and " }

and then in some entry for example: `@Misc{ author = kopp # et # kubovy }` or `@Misc{ author = kopp # " and " # kubovy }`. In the JabRef field editor, the author has to be inserted as `#kopp# #et# #kubovy#` or `#kopp# and #kubovy#`.

JabRef enhances the concept of Strings to add a type to those `@String`s. The issue is how to preserve such type of a string in a bibtex file. JabRefadds the type though prefixes:

-   `@String { aKopp = "Kopp, Oliver" }` is a `@String` with the type author.
-   `@String { iMIT = "{Massachusetts Institute of Technology ({MIT})}" }` is a `@String` with the type of institution.
-   `@String { anct = "Anecdote" }` is a `@String` of type other.
-   `@String { lTOSCA = "Topology and Orchestration Specification for Cloud Applications" }` is a `@String` of type other.

Then `@String`s of type author should be used for author and editors fields only. `@String`s of type institution should be used for institution and organization fields only. `@String`s of type publisher should be used only for publisher fields. And finally `@String`s of type other can be used anywhere.

It can also happen that you will have the same institution for more types:

-   `@String { aMIT = "{Massachusetts Institute of Technology ({MIT})}" }` if the institution will appear as author or editor
-   `@String { iMIT = "{Massachusetts Institute of Technology ({MIT})}" }` if the institution will appear as institution or organization
-   `@String { pMIT = "{Massachusetts Institute of Technology ({MIT}) press}" }` if the institution will appear as publisher.

Even if the last example may appear contradicting the intention was to remove duplicity and unify the names of persons and institutions.
