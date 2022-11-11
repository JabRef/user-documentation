# How to translate the JabRef User Interface

## Introduction

JabRef comes with a set of translations into 20 different languages: Chinese (simplified), Danish, Dutch, English, Farsi, French, German, Greek, Indonesian, Italian, Japanese, Norwegian, Persian, Portuguese, Portuguese (Brazil), Russian, Spanish, Swedish, Tagalog, Turkish and Vietnamese.

If the JabRef interface already exists in your language, you can help improve it. Otherwise, you can start translating JabRef into your own language.

## Improving an existing translation

We use the service of [Crowdin](https://translate.jabref.org) to keep our translations updated. It is a service directly running in the browser and one can quickly join and start translating.

* visit [https://translate.jabref.org/](https://translate.jabref.org) to get started
*   select your preferred language, login, and click on _JabRef\_en.properties_

    <img src="../.gitbook/assets/crowdin-select-file (1) (2) (2) (2) (2) (1) (1) (1).png" alt="Screenshot of Crowdin select file page" data-size="original">
*   choose the string you want to translate in the left panel (strings to be translated are listed first)

    and enter the translation in the central panel (suggestions are given at the bottom)

    <img src="../.gitbook/assets/crowdin-translate (1) (1) (2) (1) (1).png" alt="Screenshot of Crowdin translation page" data-size="original">

## Translating JabRef into a new language

Crowdin offers to quickly add a new language. Please contact us so that we add a new language for you.

## Testing the translation

You may decide to wait for [a new test version of JabRef to be published](https://builds.jabref.org/main/).

To test directly your translation, you must be able to compile the source tree after making your additions. This requires you to install the [Java Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/index.html). Ensure that you use the most recent version.

Crowdin allows for downloading the current translation file:

![Screenshot of Crowdin download dialog](<../.gitbook/assets/crowdin-download-translation (1) (3) (3) (3) (2) (1) (1).png>)

Place the downloaded file in the path `src/main/resources/l10n`. Then, execute `gradlew run` in the root directory and JabRef should start.

For a new language to be available within JabRef, a corresponding line must be added in the Java class GUIGlobals (found in the directory `/src/main/java/org/jabref/logic/l10n/Languages.java` in the JabRef source code tree). The line is inserted in the `static {}` section where the map `LANGUAGES` is populated. The code must of course be recompiled after this modification.

## Localization in JabRef code

### File location

For each language, there is the file `JabRef_xx.properties` (`xx` denotes the country code for the language). It contains all translations in a key/value format. In the JabRef source code tree, the property files reside in the [/src/main/resources/l10n](https://github.com/JabRef/jabref/blob/main/src/main/resources/l10n/) directory.

### File format

Each entry is first given in English, then in the other language, with the two parts separated by an '=' character. For instance, a line can look like this in a German translation file:

```
Background\ color\ for\ optional\ fields=Hintergrundfarbe für optionale Felder
```

Note that each space character is escaped (`\`) to make it a valid property key. The translation value does not need any escapes.

Some entries contain "variables" that are inserted at runtime by JabRef - this can for instance be a file name or a file type name:

```
Synchronizing\ %0\ links...=Synchronisiere %0-Links...
```

A variable is denoted by `%0`, `%1`, `%2` etc. In such entries, simply repeat the same notation in the translated version.

As we can see, there are several "special" characters: the percent sign and the equals sign, along with the colon character. If these characters are to be part of the actual text in an entry, they must be escaped in the English version, as with the colon in the following example:

```
Error\ writing\ XMP\ to\ file\:_%0=Fehler beim Schreiben von XMP in die Datei: %0
```

The character encoding should be **UTF-8**. Please avoid Unicode escaping such as `\u2302`.
