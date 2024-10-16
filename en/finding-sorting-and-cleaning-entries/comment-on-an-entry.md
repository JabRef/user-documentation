---
description: Add comments on an entry
---

# Comment on an entry

One can add free text to an entry. This is possible in the "Comments" tab of JabRef.&#x20;

There is the general "comments" field.

JabRef offers to separate comments from  as well as user-specific comments field.&#x20;

The following screenshots show the comments for the user `koppor`. As default, general comments are managed through the field `comment`. In addition, the field `comment-koppor` stores the comments of the user koppor.

<figure><img src="../.gitbook/assets/comment-entry-editor-two-fields.png" alt=""><figcaption><p>JabRef's entry editor showing two comment fields</p></figcaption></figure>

Now, lets assume, the library (.bib File) is shared among different users. `koppor` closed the library and opened it later again. He sees that a user `otheruser` has written a comment:

<figure><img src="../.gitbook/assets/comment-enty-editor-other-user.png" alt=""><figcaption><p>JabRef showing the comment of the user "otheruser".</p></figcaption></figure>

Now, koppor desides, that he does not want to add any comments in JabRef, so he pushes the "Hide user comments" button. Then, JabRef does not display the comment field for koppor's user any more:

<figure><img src="../.gitbook/assets/comment-enty-editor-own-comment-other-user.png" alt=""><figcaption><p>JabRef's entry editor showing the general comment field and a comment of another user.</p></figcaption></figure>

A bit later, koppor thinks, he wants to put comments again. To achieve that, he needs to navigate to File -> Preferences -> Entry editor. Then, he needs to add a checkmark to "Show user comment fields". then, he needs to press "Save" to save the preferences.

<figure><img src="../.gitbook/assets/comment-enty-editor-preference.png" alt=""><figcaption><p>Preference to enable user-specific comments</p></figcaption></figure>

Then, JabRef's entry editor shows the field "Comment-koppor" again.
