# Merging a Bib(la)TeX Library with Git

When two people edit different entries of a `bib` file in a Git repository, Git often reports a merge conflict, because Git compares the file line by line and JabRef writes entries in a fixed field order.

[JabKit](../jabkit.md) offers a merge driver that compares the two versions entry by entry instead. Git then merges changes to different entries — and to different fields of the same entry — on its own, and reports a conflict only where both sides changed the same field.

## Setup

Register the driver once for your user account:

```bash
git config --global merge.jabref.name "JabRef semantic .bib merge"
git config --global merge.jabref.driver "jabkit git merge-driver --porcelain %O %A %B"
```

If you run JabKit through `jbang`, replace `jabkit` by `jbang jabkit@jabref`.

Enable the driver in each repository holding a library, by adding this line to the repository's `.gitattributes` file:

```text
*.bib merge=jabref
```

## What the driver merges

The driver receives the common ancestor of both sides, your version, and the other version.
It writes your version plus the changes of the other side back into your file: for every entry, identified by its citation key, a field that only the other side changed takes the other side's value, and an entry that only the other side added or deleted is added or deleted.
The entry type and the comment written above an entry are merged the same way.

An entry is a conflict when both sides changed the same field to different values, changed the entry type or the comment differently, or when one side deleted the entry while the other side changed it.
Conflicting entries keep your version.
Everything outside entries with a citation key - `@String` definitions, the preamble, entries without a citation key, custom entry types, and the library properties - is taken from your version as it is.

The driver exits with `0` when it merged everything, which makes Git continue with the merge.
Any other exit code makes Git mark the file as conflicted.

## Resolving the remaining conflicts

`git pull` and `git merge` now apply all changes that JabRef can merge safely and keep your own version of everything else. Git marks the file as conflicted and JabKit lists the citation keys it could not merge, for example:

```text
1 entries could not be merged automatically:
  Smith2020: changed on both sides with different content
```

Open the library in JabRef and give those entries their final content, then `git add` the file and commit the merge.

## When the driver refuses to merge

The driver writes the result the way JabRef saves a library.
Whenever that would lose content of one of the three versions, it leaves your file untouched, reports the reason, and exits with `1`, so that Git marks the file as conflicted.
Merge those libraries by hand.

| Message | Reason |
| --- | --- |
| `citation keys must be unique` | The library contains an entry twice under the same citation key. |
| `the file was not parsed without warnings` | JabRef could not read all of the file, for example because of a duplicate `@String` name or a malformed entry. |
| `an entry without fields is not preserved` | The library contains an entry without fields, which JabRef drops when saving. |
| `a custom entry type without entries is not preserved` | The library defines a custom entry type that no entry uses; JabRef saves only the types in use. |
| `a comment in front of @Comment or @Preamble is not preserved` | A comment line precedes an `@Comment` block (library properties, custom entry types) or the `@Preamble`; JabRef keeps comments in front of entries and `@String` definitions only. |
| `content outside of entries with a citation key changed in OTHER` | The other side changed `@String` definitions, the preamble, an entry without a citation key, custom entry types, or the library properties, which the driver does not merge. |
