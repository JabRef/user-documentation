---
title: 自动保存
---

# 自动保存

## 目的

自动保存功能有助于保存已打开的数据库，无需人工干预。
此外，它还会同步与适当的[共享SQL数据库](SQLDatabase)相关联的本地文件。

## 激活

![Screenshot of the autosave preferences](./images/AutoSave.png)

你可以通过依次进入 **Options → Preferences** 来激活自动保存功能，然后选择左侧面板上的 **File** 。在窗口的下半部分，专门有一部分用于配置 **自动保存(AutoSave)**。


## 自动保存本地数据库(Autosave for local databases)

如果你正在处理位于你的文件系统上的 `.bib` 文件，该功能将自动检测你的更改并保存它们而无需进一步干预。

## 自动保存共享数据库(Autosave for shared databases)

通常，你可以在连接后保存共享数据库。此功能可以使本地 bib 文件与可同时由协同者使用的[共享 SQL 数据库](SQLDatabase)完全同步。

## 备注

默认情况下，对本地数据库禁用此功能。
它必须与 [主备份功能(main backup functionality)](Backup) 分开，因为备份在没有用户影响的情况下持续运行。

通过使用 [gitignore.io](https://www.gitignore.io/) 服务，你可以通过打开 https://www.gitignore.io/api/jabref 生成相应的 `.gitignore` 文件。
