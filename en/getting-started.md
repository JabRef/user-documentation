# Getting started

{% hint style="info" %}
Coming soon!
{% endhint %}

Desktop interface \(basic description of the user interface elements and what they do\)

Quick start \(basic userflow: create new library -&gt; add entry, link file, do web search -&gt; save\)

## First start of JabRef
Upon the first start of JabRef the main user interface is showing up the main elements are:
- Menu bar
- Icon bar
- Group and web search side bar

{% hint style="info" %}
Telemetry dialog?
{% endhint %}

## Quick start

### Creation of a new library

A "library" is the main file that saves all the information about your collection of references. The storage format of the file is text-based in the Bibtex standard.

{% hint style="info" %}
Advantages of the text-based format: Dedicated for the usage with LaTeX; "human readable" - quick edit can be made with every text editor; allows for easy tracking of changes using standard version control protocols like Git
{% endhint %}

### Adding of a new entry manually
To add a new entry select the menu bar entry "Library" -> "New entry", click on the icon **TODO**, or just hit CTRL-N.

This opens a dialog where you can select the type of reference you want to store. By default all entry types defined by the Bibtex format are available:

For our running example we will select "Article". 

After clicking on the "Article" button, the dialog closes and the so called "Entry Editor" is opened for the newly created entry:

**SCREENSHOT**

The most important information about the references to be added can now be entered in the "Required Fields" tab. 
"Author", "Title", "Journal", and "Year" should be self-explanatory - however, a "bibtexkey", might not be familiar to you if you have not worked with Bibtex so far. 
Basically, the idea of the "bibtexkey" is to have an unique identifier for each entry, which allows for referencing within a document you might be creating using the stored information in your library. Moreover, also within JabRef this "key" is used for example for cross-references to other related entries or to determine file names for full-text references.

The bibtexkey usually follows a global pattern and can be easily created automatically by clicking on the "generate" button next to the field.

{% hint style="info" %}
The default key pattern is **TODO**, which means that **TODO**. However, key pattern is customizable to your needs. See **TODO** for more details.
{% endhint %}


### Enhancing the information
After creating the basic information the addition of all other bibliographical details is often cumbersome and error-prone. To ease this task, JabRef allows for an automatic completion of the bibliographic information by looking up the data in public databases.
To use this feature just click on the **TODO**  button in the editor:

{% hint style="info" %}
The found information is most accurate if an identifier like a "DOI" or "ISBN" is maintained. If you already know such an unique identifier, this can also be already the starting point to create a new entry without manual entering any information by using the "create from ID" feature in the Create entry dialog. For more information see: **TODO** 
{% endhint %}

### Adding a full text document

### Finding more references in the web
If you want to search for other references, it is also possible to directly trigger a search in many of the most common bibliographic databases. To start a search just us the "Web Search" feature of JabRef:

The search results will be shown in an window where you can select all the search hits to be added to your library:

### Organize your library