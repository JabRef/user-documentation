---
title: Pushing to external editor application
helpCategories: ["Import/Export"]
---

# Pushing to external editor application

JabRef allows you to push any entries in your main window to an external editor through the push-to-external application feature. You would need to first select the entries in your entry table that you would like to export before using the feature. Once you have done so, go to the tools submenu and click on the push-to-external application button to the left of the **Generate BibTeX keys** button. By default the external editor used to push exports is TeXStudio.

On MacOS:  
![Push to External MacOS](images/Push-External-Button-MacOS.png)

On Windows:  
![Push to External Windows](images/Push-External-Button-Windows.png)

JabRef also allows you to change the external editor application you would like to push your exports to. To do so, first go to **Options → Preferences → External programs**. Under the **Push applications** section click on the **Application to push entries to** field. This will cause a dropdown menu to appear, from which you are then able to select from a list of all the external editors you have configured.

![Select External Application](images/During-Application-Selection.png)

Once you have made your selection and click **Save**, the push-to-external application button icon will change to match that of the selected external editor application.

![New Application After Select](images/After-Application-Selection.png)

When you click on the push-to-external application button, JabRef will export your selected entries to an open LaTeX file in the selected external editor application. As an example, here is what happens when you export one entry to TexStudio.

![Initial Push to External Export](images/Initial-Push-Export.png)

As long as you continue using the same external editor application, clicking on the push-to-external application button for subsequent exports will just add new citations or extend an existing citation with additional entries. Following from the example above, here is what happens when you export a second entry to TeXStudio on an existing citation, which is extended to include the new entry in your LaTeX document.

![Subsequent Push to External Export](images/Subsequent-Push-Export.png)
