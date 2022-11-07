---
helpCategories:
  - Import/Export
description: Inserting a citation directly in your editor.
---

# Pushing to external editor application

JabRef allows you to push any entries in your main window to an external editor through the push-to-external application feature. It works with Emacs, LyX/Kile, Texmaker, TeXstudio, Vim, and WInEdt.

To push as citation, first select the entries in your entry table that you would like to push. Then, either:

* go to **Tools → Push entry to external application​**
* Press `CTRL + L`
* Click on the dedicated button in the taskbar (left of the _Generate citation key_ button)

![](<../.gitbook/assets/push-external-button-windows (2) (2) (2) (2) (3) (3) (3) (2) (1) (1).png>)

By default the external editor used to push citations is TeXstudio. You can select another application in **Options → Preferences → External programs**. Under the **Push applications** section, click on the **Application to push entries to** field. This will cause a dropdown menu to appear, from which you are then able to select from a list of all the external editors you have configured.

![Select External Application](<../.gitbook/assets/during-application-selection (2) (2) (2) (2) (2) (2) (2) (2) (4) (4) (1) (1) (1) (1) (1) (2).png>)

Once you have made your selection and click **Save**, the push-to-external application button icon will change to match that of the selected external editor application.

![New Application After Select](<../.gitbook/assets/after-application-selection (2) (2) (2) (2) (2) (2) (2) (2) (2) (1) (1) (1) (2).png>)

When you click on the push-to-external application button, JabRef will export your selected entries to an open LaTeX file in the selected external editor application. As an example, here is what happens when you export one entry to TexStudio.

![Initial Push to External Export](<../.gitbook/assets/initial-push-export (2) (2) (2) (2) (2) (2) (2) (2) (2) (1) (1) (4).png>)

As long as you continue using the same external editor application, clicking on the push-to-external application button for subsequent exports will just add new citations or extend an existing citation with additional entries. Following the example above, here is what happens when you export a second entry to TeXStudio on an existing citation, which is extended to include the new entry in your LaTeX document.

![Subsequent Push to External Export](<../.gitbook/assets/subsequent-push-export (2) (2) (2) (2) (2) (2) (2) (2) (4) (4) (4) (1).png>)
