# OCR

OCR (Optical Character Recognition) is a technology that is used to convert scanned PDFs into editable and searchable data. OCR can be used via multiple tools and engines. Currently, JabRef provides OCR using [OCRmyPDF](https://ocrmypdf.readthedocs.io/en/latest/) and more engine are coming soon.

## OCRmyPDF

{% hint style="warning" %}
OCRmyPDF must be installed on your system before using this feature. See the installation instructions below.
{% endhint %}

* Once you have OCRmyPDF installed, you can use it to perform OCR on your scanned PDFs. To do this, follow these steps:
  1. Open JabRef and go to the entry for the scanned PDF you want to OCR.
  2. Right-click on the File and select "Perform OCR and embed text into new PDF file".
      ![perform-ocr.png](perform-ocr.png)

* After performing OCR, JabRef creates a new PDF file with the OCR text embedded, and it will be linked in all the entries that have the old file linked to them. The original scanned PDF will remain unchanged.

    ![original-and-ocred-files.png](original-and-ocred-files.png)

* Now you can select and search text in the new PDF file.

    ![comparison-between-original-and-ocred-file.png](comparison-between-original-and-ocred-file.png)
