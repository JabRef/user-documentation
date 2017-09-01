---
title: EndNote書出フィルタ
outdated: true
---

# EndNote書出フィルタ

## JabRefからの書き出し

JabRefは、EndoNoteが読込可能形式ファイルへ書き出すことができます。この機能を使うには、**ファイル→書き出す**を選択して、ファイル形式 **Endnote (\*.txt)** を選択し、書出ファイル名を指定してください。

## EndNoteへの読み込み

EndNoteの既定の読込フィルタは、複数の著者や編者を適切に取り扱うことができません。これを回避するには、以下の2つの方法があります。

1.  組み込みフィルタを使用して、ファイルを後から修正します。ファイルをEndNoteで開くには、EndNoteで新規データベースを作成するか、既存のデータベースを開いてください。その後、**File → Import**を選んで **Choose File** をクリックし、書き出したファイルを選択してから **Choose** をクリックしてください。**Import Options** をクリックして、**EndNote Import** を選択します。**Import** をクリックすれば、読み込みが始まります。読み込み後、**Edit → Change Text** を選択し、**Any Field** を **Author** に変更します。" and "を検索フィールドに入力し(引用符なし)、変更フィールドにリターン文字を入力して(Mac OS Xではoption-return、Windows XPではctrl-return)、**Change** をクリックしてください。同じことを **Secondary Author** フィールドについても繰り返します。
2.  *EndNote Extras* に *EndNote Import from JabRef filter* を導入します。下記の **進んだ使い方** の指示に従ってください。ファイルをEndNoteで開くには、EndNoteで新規データベースを作成するか、既存のデータベースを開いてください。その後、**File → Import**を選んで **Choose File** をクリックし、書き出したファイルを選択してから **Choose** をクリックしてください。**Import Options** をクリックして、**EndNote Import from JabRef** を選択します(もしこれが表示されていなければ Other filters を選択してください。それでも表示されていなければ、フィルタが正しく導入されていません)。**Import** をクリックすれば、読み込みが始まります。

## 註記

EndNote書出フィルタは、BibTeX項目型を以下のように EndNote reference type に対応させます。

    BibTeX項目型 → EndNote Reference Type
    ------------------------------------------
    misc, other → Generic
    unpublished → Manuscript
    manual → Computer Program
    article → Journal Article
    book → Book
    booklet → Personal Communication
    inbook,incollection → Book Section
    inproceedings → Conference Proceedings
    techreport → Report
    mastersthesis, phdthesis → Thesis

## 共著者

既定の書出フィルタは、authorフィールドやeditorフィールド中の角括弧に囲まれた項目は、共著者であるものと見なし、角括弧は後ろに付けたコンマに変換されます。しかし、これは角括弧に囲まれたLaTeXコードを含む項目も共著者と見なされることを意味し、このような場合には適切に整形されません。

## 進んだ使い方: EndNote Extras

EndNoteとJabRefの間の相互互換性を向上させるためには、JabRefウェブページにあるResourcesのページからEndNoteフィルタセットをダウンロードしてください。
