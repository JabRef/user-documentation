---
title: Customizing entry types
helpCategories:
  - Setup
---
# Customizing entry types

To customize entry types, select the menu **BibTeX -→ Customize entry types**.

When customizing an entry type, you both define how its entry editor should look, and what it takes for JabRef to consider an entry complete. You can both make changes to the existing entry types, and define new ones.

Note that no modifications you make in this dialog will be stored until you click **Apply** or **OK**. If you click **Cancel** or simply close the dialog, unapplied changes will be lost.

## Using the entry customization dialog

The entry customization dialog is divided in three main panels. The leftmost panel is where you can select an entry type for modification, and add new ones. The middle panel is used for setting up the required fields of the selected entry type, and the right panel for setting up the optional fields.

### Adding and removing entry types

The currently available entry types are listed in the left panel. Whenever you select an entry type, the other panels will update to show what fields are required and optional for this entry type.

To add a new entry type, you must enter a name for it in the text field below the type list, and click **Add**. The new entry type will be added to the list, and selected for modification.

To remove a custom entry type, select it and click **Remove**. This operation will only be available for custom entry types that are not merely modifications of standard types. It is not possible to remove a standard entry type.

To return a modified standard type to its default setup, select it and click **Default**. This operation will only be available for customized entry types that modify a standard type.

## Editing entry types

When an entry type is selected, the current required and optional fields will be listed in the center and right panels of the dialog. The process of editing the lists are identical for the required and optional fields.

To add a new field, edit the text field below the list, or select a field name from the dropdown menu, then click **Add**. The chosen field name will be added at the end of the list.

To remove one or more fields, select them in the list, and click **Remove**.

To change the order of the fields, choose one field name, and click the arrow buttons to move it up or down in the list.

### Either/or fields

Certain entry types have an either-or condition in their required fields. For instance, a *book* entry is complete with either the *author* or the *editor* field, or both. To indicate such a condition in a custom entry type, you should add a field named as the set of alternative fields separated by slashes, for instance *author/editor* indicates the condition mentioned above for the *book* entry type.