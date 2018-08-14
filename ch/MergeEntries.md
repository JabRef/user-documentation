---
title: 合并条目
---

# 合并条目

JabRef 能帮助你合并数据库中的条目。

先选择要合并的两个条目，选择菜单 **Quality → Merge entries...**。
**Merge entries** 窗口就会弹出。

## 并行显示条目的字段

![Screenshot of the parallel display](./images/MergeEntries-ParallelDisplay.png)

两个条目的字段并排显示在窗口的上部。
两个条目之间的差异可以通过位于窗口右上角的下拉菜单强调。
总共提供了五种差异显示的方法：

- **plain text**: 没有强调
- **show diff** - word: 差异显示在右侧条目中。 如果单词从左侧条目删除，会用红色删除线标记，如果被添加进右侧条目，会用蓝色下划线。
- **show diff** - character: 差异显示在右侧条目中。和上边一样，单个的字符会被红色删除线或蓝色下划线标记。
- **show symmetric diff** - word: 两侧都显示出差异。 单词带下划线并以彩色显示。
- **show symmetric diff** - character: 两侧都显示出差异。 字符带下划线并以彩色显示。

在中央列中，单选按钮允许您选择为每个字段保留哪一侧：
**left side**、**right side** 或者 **none**。

默认情况下，保留左侧条目，左侧条目中不存在的任何字段都从右侧条目中获取。

## 条目合并：预览和源码

![Screenshot of the preview and source code for the merged entry](./images/MergeEntries-PreviewAndCode.png)

根据您的选择，显示合并的条目，预览在左侧，源码右侧。

在预览中右击，你可以 **Print entry preview** 或 **Copy preview**.

## 最终合并
![Screenshot of choosing to merge or not](./images/MergeEntries-Selecting.png)

最终，选择要保留的字段后，您可以决定 **Merge entries**。或者，你可以按 **Cancel**。


**可见：** [Find duplicates](FindDuplicates)
