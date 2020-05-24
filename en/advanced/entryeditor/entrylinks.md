# Links to other entries

{% hint style="info" %}
Since: 3.5
{% endhint %}

JabRef supports following fields to jump to other entries.

Following fields are supported:

* `cites`  - comma separated list of BibTeX keys which are cited by this entry
* `crossref` - single entry which is cross referenced.
* `related` - comma separated list of BibTeX keys which are in some kind related to this entry. The type of **all** relations can be specified by a single `relatedtype` \(see [https://github.com/plk/biblatex/issues/475\#issuecomment-246931180](https://github.com/plk/biblatex/issues/475#issuecomment-246931180)\). Note: Biblatex prints this information if `related` is active at the biblatex package.

To use the `crossref` field, navigate to the general tab and insert the Crossref at the top.

To use `cites` and `related`, follow these steps:

1. Navigate to BibTeX source
2. Insert `related = {bibtexkey},`
3. Close the entry editor
4. Open the entry editor
5. Navigate to "Other fields"
6. There, you now see "related" with the possibilities to \(i\) navigate to the entry, \(ii\) add new related entries, \(iii\) remove related entries.

## Notes

If you use `crossref`, JabRef will move these entries first in the bibliography as otherwise bibtex cannot use the information of the cross-referenced fields. See also [http://tex.stackexchange.com/a/148978/9075](http://tex.stackexchange.com/a/148978/9075).

Please note that BibLaTeX treats crossref differently than BibTeX.

## Unsupported fields

* `citedBy` - this is the opposite of `cites`. Use `cites` instead.
* `relations` - this would introduce a complicated field similar to our save actions. A simple key/value is enough
* `references` - stores all references in plain text \(PRVV plugin\). Thus, we do not use it.

## Further information

See [https://github.com/koppor/jabref/issues/14](https://github.com/koppor/jabref/issues/14) for the developer's discussion on the fields.

