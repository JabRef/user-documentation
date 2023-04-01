---
description: When error ensues, how to debug your library file with various methods.
---

# Debugging your library file

### To Do: Add section about backups once the backups PR is merged

**Can you add a section before "half splitting" which explains how to navigate to the backup folder and restore a .bib file? I think, this could be more efficient than deleting entries of a working library.**

**I have never tried to open a backup flel directly in JabRef. Could you try it? I think, it should "just work". Thus, the howto should be: Go to the backup folder, find the file, open the last backup. If works: great. If not, go back one file.**

## The method of half splitting

The method of **half splitting** (also referred to as **halving**) can be used to find certain faults in your library file, which are caused by erroneous syntax, file conversions or incompatible encodings/charsets. These faults may make it impossible for JabRef to correctly parse, read or import the library file.\
\
An easy way to look at the method of halving is to repeatedly ask yourself the following question, after having deleted a part of your library file: "Is the error in the first part or the last part of the entries?"&#x20;

#### **How it works:**

1. Create a backup of your library file.
2. Open your library with the text-editor of your choice (For example, [Notepad++](https://alternativeto.net/software/notepad-plus-plus/)).
3. Delete half of your [entries](https://docs.jabref.org/advanced/fields#standard-bibtex-format).
4. Open your library with JabRef.
5. If your library now miraculously does not trigger the error, don't stop and leave. Instead, rinse and repeat and use the technique of halving on the junk of entries that you just deleted (hence the need for backups!). Use the technique of halving on THAT part of the library.
6. Repeat deleting entries until you can isolate the specific entry or entries that trigger errors.
7. Remove these entries with the error.\
   Add all the other entries back.\
   Open JabRef.\
   Be happy :-)\


#### **Example:**

Half splitting a library with two entries:

<figure><img src="../.gitbook/assets/image (3).png" alt=""><figcaption></figcaption></figure>

#### How efficient is this method?

Halving as a process of elimination will quickly lead to results, as the following table illustrates:

| Number of entries | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 17 | 33 | 65 | 129 | 257 | ... |
| ----------------- | - | - | - | - | - | - | - | - | -- | -- | -- | -- | --- | --- | --- |
| Steps             | 1 | 2 | 2 | 3 | 3 | 3 | 3 | 4 | 4  | 5  | 6  | 7  | 8   | 9   | ... |

#### Related Literature:

If you want to find out more about this method, the following articles explain the method of halving in various contexts:

* [https://ljackso.medium.com/half-splitting-applying-a-troubleshooting-technique-to-debugging-code-6a0578d1833c](https://ljackso.medium.com/half-splitting-applying-a-troubleshooting-technique-to-debugging-code-6a0578d1833c)
* [https://www.ecmweb.com/maintenance-repair-operations/article/20889049/the-beauty-of-halfsplitting](https://www.ecmweb.com/maintenance-repair-operations/article/20889049/the-beauty-of-halfsplitting)
* [https://www.techrepublic.com/article/secrets-of-a-super-geek-use-half-splitting-to-solve-difficult-problems/](https://www.techrepublic.com/article/secrets-of-a-super-geek-use-half-splitting-to-solve-difficult-problems/)
