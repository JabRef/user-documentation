---
title: Translating the JabRef Interface
helpCategories: ["Contributing"]
---

# Translating the JabRef Interface

## Introduction

JabRef comes with a set of translations into different languages, currently:
Chinese (simplified), Danish, Dutch, English, French, German, Indonesian, Italian, Japanese, Norwegian, Persian, Portuguese (Brazil), Russian, Spanish, Swedish, Turkish and Vietnamese.

If the JabRef Interface already exists in your language, you can help improve it.
Otherwise, you can start translating JabRef into your own language.


## Improving an existing translation

### Directly in your web browser

Github offers to edit the files directly without requiring to download them or to use git.
Go to [https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n).

For each language, there are two files (`xx` denotes the country code for the language):

- `Menu_xx.properties`: translation of menu items
- `JabRef_xx.properties`: translation of the other items

To edit a file, click on the filename, and then click on the pencil icon (to the top right-hand).
When you are done, add a message at the bottom and click on "Propose file change".
Then, click on "Create pull request".
You are done.
Easy!

#### Example for menus in Italian:

1. Click on [https://github.com/JabRef/jabref/blob/master/src/main/resources/l10n/Menu_it.properties](https://github.com/JabRef/jabref/blob/master/src/main/resources/l10n/Menu_it.properties)
2. Click on the pencil
3. Edit directly in the browser
4. Click on "propose file change" (as shown at [https://github.com/JabRef/help.jabref.org/blob/gh-pages/CONTRIBUTING.md#saving-the-changes](https://github.com/JabRef/help.jabref.org/blob/gh-pages/CONTRIBUTING.md#saving-the-changes))
5. Then, click on "create pull request"

### Using Popeye

See the *step-by-step guide* below. Instead of downloading the English files  (JabRef_en.properties and Menu_en.properties), use directly the ones for your language.

### Localization files status (2017-09-01 19:01 - Branch `master` `846afc3`)

Note: To get the current status from your local repository, run `python ./scripts/syncLang.py markdown`

| Property file | Keys | Keys translated | Keys not translated | % translated |
| ------------- | ---- | --------------- | ------------------- | ------------ |
| [JabRef_en.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_en.properties) | 1625 | 1625 | 0 | 100 |
| [JabRef_ja.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_ja.properties) | 1625 | 1623 | 2 | 99 |
| [JabRef_vi.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_vi.properties) | 1625 | 898 | 727 | 55 |
| [JabRef_de.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_de.properties) | 1625 | 1625 | 0 | 100 |
| [JabRef_no.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_no.properties) | 1625 | 879 | 746 | 54 |
| [JabRef_fr.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_fr.properties) | 1625 | 1625 | 0 | 100 |
| [JabRef_es.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_es.properties) | 1625 | 1609 | 16 | 99 |
| [JabRef_ru.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_ru.properties) | 1625 | 1435 | 190 | 88 |
| [JabRef_tr.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_tr.properties) | 1625 | 1613 | 12 | 99 |
| [JabRef_it.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_it.properties) | 1625 | 1625 | 0 | 100 |
| [JabRef_el.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_el.properties) | 1625 | 1296 | 329 | 79 |
| [JabRef_fa.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_fa.properties) | 1625 | 1 | 1624 | 0 |
| [JabRef_pt_BR.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_pt_BR.properties) | 1625 | 1112 | 513 | 68 |
| [JabRef_da.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_da.properties) | 1625 | 884 | 741 | 54 |
| [JabRef_nl.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_nl.properties) | 1625 | 582 | 1043 | 35 |
| [JabRef_in.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_in.properties) | 1625 | 1131 | 494 | 69 |
| [JabRef_sv.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_sv.properties) | 1625 | 1322 | 303 | 81 |
| [JabRef_zh.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/JabRef_zh.properties) | 1625 | 1236 | 389 | 76 |

| Property file | Keys | Keys translated | Keys not translated | % translated |
| ------------- | ---- | --------------- | ------------------- | ------------ |
| [Menu_en.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_en.properties) | 110 | 110 | 0 | 100 |
| [Menu_el.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_el.properties) | 110 | 80 | 30 | 72 |
| [Menu_in.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_in.properties) | 110 | 89 | 21 | 80 |
| [Menu_tr.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_tr.properties) | 110 | 110 | 0 | 100 |
| [Menu_zh.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_zh.properties) | 110 | 110 | 0 | 100 |
| [Menu_vi.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_vi.properties) | 110 | 103 | 7 | 93 |
| [Menu_ja.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_ja.properties) | 110 | 110 | 0 | 100 |
| [Menu_fr.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_fr.properties) | 110 | 110 | 0 | 100 |
| [Menu_sv.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_sv.properties) | 110 | 99 | 11 | 90 |
| [Menu_fa.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_fa.properties) | 110 | 89 | 21 | 80 |
| [Menu_nl.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_nl.properties) | 110 | 89 | 21 | 80 |
| [Menu_ru.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_ru.properties) | 110 | 102 | 8 | 92 |
| [Menu_de.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_de.properties) | 110 | 110 | 0 | 100 |
| [Menu_es.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_es.properties) | 110 | 110 | 0 | 100 |
| [Menu_da.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_da.properties) | 110 | 89 | 21 | 80 |
| [Menu_pt_BR.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_pt_BR.properties) | 110 | 89 | 21 | 80 |
| [Menu_no.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_no.properties) | 110 | 98 | 12 | 89 |
| [Menu_it.properties](https://github.com/JabRef/jabref/tree/master/src/main/resources/l10n/Menu_it.properties) | 110 | 110 | 0 | 100 |


## Translating JabRef into a new language

We are constantly looking for translators and translations into other languages. For example a Polish translation would be valuable, and, of course, translations into any other languages would be very much appreciated.

Contributing a new language to JabRef is easy since JabRef is prepared for multi-language support.
It only requires the creation of a new set of 2 translation files (the so-called *property files*).
These are text files containing one text entry per line that can easily be generated using the java program Popeye from a graphical user interface.

### The property files

In the JabRef source code tree, the property files reside in the [/src/main/resources/l10n](https://github.com/JabRef/jabref/blob/master/src/main/resources/l10n/) directory.
For each language there are twofiles (`xx` denotes the country code for the language):

- `Menu_xx.properties`: translation of menu items, marked up for mnemonic keys
- `JabRef_xx.properties`: translation of the other items


### The format of the property files

Each entry is first given in English, then in the other language, with the two parts separated by an '=' character. For instance, a line can look like this in a German translation file:

`Background_color_for_optional_fields=Hintergrundfarbe_für_optionale_Felder`

Note that each space character is replaced by an underscore, both in the English and the translated version.

Some entries contain "variables" that are inserted at runtime by JabRef - this can for instance be a file name or a file type name:

`Synchronizing_%0_links...=Synchronisiere_%0-Links...`

A variable is denoted by %0, %1, %2 etc. In such entries, simply repeat the same notation in the translated version.

As we can see, there are several "special" characters: the percent sign and the equals sign, along with the colon character. If these characters are to be part of the actual text in an entry, they must be escaped in the English version, as with the colon in the following example:

`Error_writing_XMP_to_file\:_%0=Fehler_beim_Schreiben_von_XMP_in_die_Datei:_%0`

The character encoding should be **UTF-8**. Please try to avoid Unicode escaping such as `\u2302`.

### Step-by-step guide

This guide presents a quick way to begin with translation without the need to install git. It presents a guide for Polish (hence the country code `pl`), other languages are similar.

#### Download the necessary files

  1. Install Java (you've already done this if you are able to run JabRef)
  2. Create a new folder "JabRef translations"
  3. Store the [langproper-0.55.jar](https://github.com/JabRef/popeye/releases/) file in it (this is the Popeye software)
  4. Store [JabRef_en.properties](https://raw.githubusercontent.com/JabRef/jabref/master/src/main/resources/l10n/JabRef_en.properties) in it
  5. Store [Menu_en.properties](https://raw.githubusercontent.com/JabRef/jabref/master/src/main/resources/l10n/Menu_en.properties) in it
  6. Run langproper-0.55.jar (double click should be enough). This starts Popeye.

#### Create a Popeye project

In Popeye, create a project for JabRef_en.properties, where no translation exists:

  1. Go to **File → New Project**
  2. Click **next**
  3. On the line **reference file**, click on "**...**"
  4. Select "All files" as **File type**
  5. Select "JabRef_en.properties" and click on **Open**
  6. Select **Add**
  7. Use "JabRef_pl.properties" as filename (since this example is for Polish)
  8. Just below **language iso code**, click on the "**&gt;**"
  9. Select **pl** and click on **select**
  11. Click on **apply**
  12. Click on **finish**
  13. Go to **File → Save project**
  14. Choose "JabRef.ppf" as file name and click on **Save**

Proceed similarly using the file Menu_en.properties  for the translation of the menu (project Menu.ppf).

#### Translate

From now on, after starting langproper-0.55.jar, you can open the projects Menu.ppf and JabRef.ppf. The lines requiring a translation are underlined in red. Then you can translate and save the files each time you want.

#### Contribute your translation

**By contacting the developers**
Please contact a developer that he should include your translation at [developers@jabref.org](mailto:developers@jabref.org)

**Through GitHub.com**

Alternatively, you can create a pull request. Follow the instructions given at: [CONTRIBUTING.md](https://github.com/JabRef/jabref/blob/master/CONTRIBUTING.md).

**Using the version control system**

If you are interested on a autonomic submission of your updated translations without the need to contact a developer for each update, you will need to get write access to the git repository.
Contact the developer you hit before or contact the project manager - preferably through the [Discourse forum](http://discourse.jabref.org/).
Then you can send over your initial versions of the translation files, and your language can be added to the current development version of JabRef.
You will be made a member of the project group, and given the necessary access to our source control tree.
This requires you to have a user account at GitHub.
This means that you will need to learn the basics of using the [git system](http://git-scm.com/).

Using git, you will be able to keep your local files updated, and to translate new text entries as they are added to your language's files.

#### Testing the translation

For a translation to be available within JabRef, a corresponding line must be added in the Java class GUIGlobals (found in the directory `/src/main/java/net/sf/jabref/logic/l10n/Languages.java` in the JabRef source code tree). The line is inserted in the static {} section where the map LANGUAGES is populated. The code must of course be recompiled after this modification.

To test your translation you must be able to compile the source tree after making your additions.
This requires you to install the [Java Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/index.html).
Execute `gradlew run` in the root directory and JabRef should start.
