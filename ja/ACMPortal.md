---
title: ACM Portalから項目を取得するには
---

# ACM Portalから項目を取得するには

[ACM Portal](https://dl.acm.org)には二つのデータベースがあります([Wikipedia](https://en.wikipedia.org/wiki/Association_for_Computing_Machinery#Portal_and_Digital_Library)).
- **ACMデジタルライブラリ** は、論文・雑誌・学会誌などの60年以上のアーカイブを含む、[Association for Computing Machinery](https://www.acm.org)から出版された論文すべての全文収録コレクションです．
- **Guide to Computing Literature** は、コンピューティングに関わる主要な出版社からの文献コレクションで、100万以上の項目があります。

JabRefは、ACM Portalデータベースから文献情報をダウンロードすることができます。この機能を使うには、**検索 → ウェブ検索** を選択してください。すると検索インタフェースが側面に表示されるようになります。ドロップダウンメニューから **ACM Portal** を選択してください。
どのデータベースを検索するかを選択することができるほか、**概要を取り込む** というチェックボックスを有効にすれば、各項目の文献情報に加えて要約もダウンロードすることを選ぶことができます。
検索を始めるには、問い合わせる単語を入力し、**Enter** 鍵を押すか **取得** ボタンを押してください。

ACM Portalに頻繁に接続すると、お使いのIPアドレスが数時間アクセス不能になることがあります。これを回避するために、JabRefは、サーバーが返す項目の最初のページのプレビューを、検索毎に表示します。そこから、どの項目をダウンロードするかを選択してください。

結果は，[読込検査ウィンドウ](ImportInspectionDialog)に表示されます．エラーが発生した場合には，ポップアップに表示されます．
