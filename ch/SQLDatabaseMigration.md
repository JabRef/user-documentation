---
title: 将3.6版本之前的SQL数据库迁移到共享SQL数据库中
---

# 将3.6版本之前的SQL数据库迁移到共享SQL数据库中


## 上下文

当您尝试打开使用早于3.6版本的JabRef创建的SQL数据库时，会出现这种情况。

随着 [JabRef 3.6](https://github.com/JabRef/jabref/releases/tag/v3.6) 的发布，SQL数据库结构发生了变化。
因此，所有早于3.6版本的数据库格式的SQL数据库已经不再被新版本的JabRef支持。

![Screenshot of migration popup](./images/migrate-pre-3.6-db.png)

## 迁移

要将3.6之前的SQL数据库迁移到新的共享SQL数据库，您必须执行以下步骤：


-	下载并安装 [JabRef 3.5](https://github.com/JabRef/jabref/releases/tag/v3.5)
-	打开JabRef并转到 **文件** -> **从外部SQL数据库导入**
-	输入所需数据并单击 **连接**
-	选择应导入的数据库，然后点击 **导入**
-	在本地保存数据库 (**文件** -> **保存数据库**)
-	回到 [JabRef 3.6](https://github.com/JabRef/jabref/releases/tag/v3.6) 或是更高的版本
-	转到: **文件** -> **打开共享数据库**
-	输入所需数据并单击 **连接**
-	转到 **文件** -> **导入到当前数据库**
-	选择您在本地保存的文件并导入

之后，内容可作为共享SQL数据库使用，您可以在其上进行实时工作。
[有关实时编辑的更多信息](SQLDatabase).
