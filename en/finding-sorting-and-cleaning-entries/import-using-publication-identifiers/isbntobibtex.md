# ISBN number

{% hint style="info" %}
Since: 3.8
{% endhint %}

To use this feature, choose **BibTeX → New entry...**. In the lower part, there is the box "ID-based entry generator". In the field "ID type", you can select "ISBN". The field "ID" is focused. Enter the ISBN here and press Enter to generate an entry based on the Id. You can also click on "Generate". Then, [eBook.de's](http://www.ebook.de/) API is used to convert an ISBN to a BibTeX entry. If no entry is found, the fetcher tries [OttoBib](https://www.ottobib.com/) to find an entry. The found entry is opened in an entry editor. In case an error occurs, a popup is shown.

Some fetched entries contain a `url` field. This field points to the URL of the book at the respective online book store. In case you buy the book using the link, the service provider \(ebook.de\) receive a commission to fund the service.

![Screenshot of new entry dialog](../../.gitbook/assets/newentrychoosetype-idgeneratorhighlighted-isbn%20%282%29%20%284%29%20%284%29%20%283%29%20%281%29%20%284%29%20%284%29%20%282%29.png)

