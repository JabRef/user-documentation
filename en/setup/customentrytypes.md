# Customize entry types

To customize entry types, select the menu **Options → Customize entry types**.

When customizing an entry type, you both define how its entry editor should look, and what it takes for JabRef to consider an entry complete. You can both make changes to the existing entry types, and define new ones.

Note that no modifications you make in this dialog will be stored until you click **Apply**. If you click **Cancel** or simply close the dialog, unapplied changes will be lost.

## Using the entry customization dialog

![Screenshot of the entry customization dialog](<../.gitbook/assets/jabrefcustomentrytypes (2) (1) (3) (3) (3) (3) (3) (3) (3) (4) (4) (4) (2) (1) (1).png>)

The entry customization dialog is divided into two areas. On the left side all entry types (including any custom types) are listed. If you select a type from the left side, the right area shows all fields for the selected entry.

### Adding and removing entry types

The currently available entry types are listed in the left panel.

To add a new entry type, you must enter a name for it in the text field below the type list, and click **Add**. The new entry type will be added to the list, and selected for modification.

To remove a custom entry type, select it and click the trash icon. This operation is only available for custom entry types that are not merely modifications of standard types. It is not possible to remove a standard entry type.

## Editing entry types

When an entry type is selected, the current required and optional fields are listed on the right. A radio button indicates and allows to change the field's type from required to optional and vice versa.

To add a new field, edit the text field below the list, or select a field name from the dropdown menu, then click **Add**. The chosen field name will be added at the end of the list.

To remove a field select it in the list and click the trash icon to remove it.

To change the order of the fields you can use drag and drop.

### Either/or fields

Certain entry types have an either-or condition in their required fields. For instance, a _book_ entry is complete with either the _author_ or the _editor_ field, or both. To indicate such a condition in a custom entry type, you should add a field named as the set of alternative fields separated by slashes, for instance _author/editor_ indicates the condition mentioned above for the _book_ entry type.
