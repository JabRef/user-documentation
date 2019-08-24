---
title: 备份
---

# 备份

## 目的

在使用 _BibTeX 数据库_ 时，此模块始终在后台运行。
它产生一个_备份副本_ 并在每次用户交互时保持最新。
例如，当你更改字段时，新值将保存到备份副本中。
 
假设你在使用 _BibTeX 数据库_ 时 _JabRef_ 崩溃了。
当你再次尝试打开导致 _JabRef_ 崩溃的文件时，你会得到如下的对话框：

![Screenshot of the backup dialog](./images/backup_found.png)

现在你可以恢复通常会丢失的更改。

## 备注

此功能默认启用，并且在没有用户干扰的情况下持续运行。
通过使用 [gitignore.io](https://www.gitignore.io/) 服务，你可以通过打开 https://www.gitignore.io/api/jabref 生成相应的 `.gitignore` 文件。

## 后台处理

在打开 `.bib` 文件时，_JabRef_ 会在同时创建一个 `.sav` 文件作为缓冲区。
如果 _JabRef_ gets 正常关闭，这个 `.sav` 将会被删除。
否则，该文件将在下次用于数据库的恢复。 
