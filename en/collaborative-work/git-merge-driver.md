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

## Resolving the remaining conflicts

`git pull` and `git merge` now apply all changes that JabRef can merge safely and keep your own version of everything else. Git marks the file as conflicted and JabKit lists the citation keys it could not merge, for example:

```text
1 entries could not be merged automatically:
  Smith2020: changed on both sides with different content
```

Open the library in JabRef and give those entries their final content, then `git add` the file and commit the merge.

Some changes are outside what the driver merges. It leaves your file untouched and reports a conflict when a library contains an entry twice under the same citation key, and when the other side changed `@String` definitions, the preamble, an entry without a citation key, or the library properties. Merge those libraries by hand.
