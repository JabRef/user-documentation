# Add entry using reference text

> Entries can be created from a reference text.

In case you have a reference string, JabRef offers the functionality to convert the text to BibTeX (or biblatex).

{% hint style="warning" %}
Different parsers will lead to different results. It is strongly recommended to fact-check all conversions, regardless of parser choice. All of them can confabulate. For comparison, [adding entries using an ID](add-entry-using-an-id.md) is much more reliable and accurate.
{% endhint %}

Example:

```
O. Kopp, A. Armbruster, und O. Zimmermann, "Markdown Architectural Decision Records: Format and Tool Support", in 10th ZEUS Workshop, 2018.
```



1.  Click Library and select "New entry from plain text..." Alternatively, you can press Ctrl+Shift+N.



    <div align="left"><figure><picture><source srcset="../.gitbook/assets/Bild 1 - dark mode.jpg" media="(prefers-color-scheme: dark)"><img src="../.gitbook/assets/Bild 1.png" alt=""></picture><figcaption></figcaption></figure></div>
2.  The "Plain Reference Parser" window opens



    <div align="left"><figure><picture><source srcset="../.gitbook/assets/Bild 2 - Plain citations parser dialog opens - dark mode.png" media="(prefers-color-scheme: dark)"><img src="../.gitbook/assets/Bild 2 - Plain citations parser dialog opens - light mode.png" alt=""></picture><figcaption></figcaption></figure></div>
3.  Paste the reference text:



    <div align="left"><figure><picture><source srcset="../.gitbook/assets/Bild 3 - paste text - dark mode (2).png" media="(prefers-color-scheme: dark)"><img src="../.gitbook/assets/new-entry-from-plain-text-step-3 (1).png" alt=""></picture><figcaption></figcaption></figure></div>
4.  Choose a parser from the drop-down menu.

    <div align="left"><figure><picture><source srcset="../.gitbook/assets/Bild 4 - Parser Choise (Rule-based, Grobid and LLM) - dark mode.png" media="(prefers-color-scheme: dark)"><img src="../.gitbook/assets/Bild 4 - Parser Choise (Rule-based, Grobid and LLM) - light mode.png" alt=""></picture><figcaption></figcaption></figure></div>
5. Click "Add to current library"
6.  The result is selected in the entry table:



    <figure><picture><source srcset="../.gitbook/assets/Bild 5 - rule based result is selected in entry table - dark mode.png" media="(prefers-color-scheme: dark)"><img src="../.gitbook/assets/new-entry-from-plain-text-step-4 (1).png" alt=""></picture><figcaption></figcaption></figure>

### Parser Explanation

#### Rule-based

This is the default parser. It does not require any extensive setups, nor does it send data to remote services. Any conversions are executed locally on your device. The rule-based parser also is deterministic, as the rules are hard-coded.  Unfortunately, at time of writing, the rule-based parser is far from perfect. As one can see in the example above, the number "10" was wrongly interpreted as a page number, which is clearly not the intended result. The underlying rules are insufficient to account for all possibilities that bibliographic metadata may contain and ideally would require a way more fine-grained, but an ever more complex rule-set. It is recommended to use the rule-based parser as a last-resort, when the Grobid or LLM based parsers are not available or not desireable.

#### Grobid

JabRef uses the technology offered by [Grobid](https://github.com/kermitt2/grobid), a machine learning software project with decades of experience and development dedicated to bibliographic metadata extraction. The Grobid parser usually tends to achieve better results than the rule-based parser. Since JabRef runs Grobid on a remote instance, users will have to confirm sending data to JabRef's online service in the preferences (_File > Preferences > Web search > Remote Services_). Sending data is disabled by default. It cannot be guaranteed that JabRef's Grobid instance will always be up and running, but it is possible for you to set up your [own Grobid Instance](https://grobid.readthedocs.io/en/latest/Grobid-docker/).

<figure><picture><source srcset="../.gitbook/assets/Bild 6 - Grobid Preferences - dark mode.png" media="(prefers-color-scheme: dark)"><img src="../.gitbook/assets/Bild 6 - Grobid Preferences - dark mode.png" alt=""></picture><figcaption><p>Grobid related preference section in JabRef</p></figcaption></figure>

#### LLM

Large Language Models too can be used to convert the reference text. The quality of the results is surprisingly good, tends to be better than the rule-based parser and competes with Grobid. Nevertheless, it depends on the model or service that is used and if they are trained/designed for this use-case. Extensive documentation about how to set up a local LLM or connect to a remote AI service can be found in the [AI functionality](../ai/) section. Data privacy depends on the external application that you are using to run the local model and/or on the remote AI provider, if you are connecting to one of those.
