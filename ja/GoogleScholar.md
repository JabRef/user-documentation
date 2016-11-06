---
title: Google Scholarから項目を取得するには
---

# Google Scholarから項目を取得するには

## Google Scholarの概要
[Google Scholar](https://scholar.google.com/)は，多くの出版形態と各分野にわたる学術文献から，その全文またはメタデータを収録した，自由にアクセス可能なデータベースです．Google Scholarのインデックスには，大半の査読付オンライン学術論文や書籍，学会論文，学位論文，草稿，概要，テクニカル・レポートのほか，法廷意見書や特許などの学術的文献が収められています([Wikipedia](https://en.wikipedia.org/wiki/Google_Scholar))．

# 使用法

Google Scholarから項目を取得するには，**検索 → ウェブ検索** を選択してください．すると，サイドペインに検索インタフェースが現れますので，ドロップダウンメニューから，**Google Scholar** を選択します．そこで，質問を入力し，**Enter** 鍵を押すか，**取得** ボタンを押して，検索を開始してください．

# トラフィックの制限

Google Scholarには，短時間に大量のトラフィックを発生する「自動化」クロールをブロックする機能があります．JabRefは，これを回避するため，二段階のアプローチを取っています．JabRefは、各検索毎にまず，サーバーが返す項目1ページ目のプレビューを表示します．そこからどの項目をダウンロードするか選択してください．
結果は，[読込検査ウィンドウ](ImportInspectionDialog)に表示されます．エラーが発生した場合には，ポップアップに表示されます．

しかしながら，クロールが何回も行われた後には，JabRef（正確には使用中のアドレス）がブロックされてしまうことがありえます．使用IPのブロックを解除するためには，ブラウザからGoogle Scholar検索を行う必要があります．すると，あなたがロボットでないことを示すように要求されます（CAPTCHA要求）．

つまり，同時に大量の項目を取得するためには，Google Scholar取得子は最良の手段ではありません．Mozilla Firefoxを利用している場合には，ブラウザから直接BibTeXデータをダウンロードするJabRefプラグインの「JabFox」が選択肢となり得るでしょう．プラグインは，ここにあります：[https://addons.mozilla.org/ja/firefox/addon/jabfox/?src=external-jabrefSite](https://addons.mozilla.org/ja/firefox/addon/jabfox/?src=external-jabrefSite)
