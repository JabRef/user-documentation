---
title: Medlineから項目を取得する
---

# Medlineから項目を取得する

この機能を使うには、**検索→ウェブ検索**を選択すると、検索操作盤が側面に表示されます。ドロップダウンメニューから**Medline**を選択してください。

MEDLINEは、米国国立医学図書館の第一級の書誌情報データベースです。生態臨床医学を重点に生命科学分野の学術論文の書誌情報を収録しています。

ダウンロードする項目を指定するには、以下の二つの方法があります。

1.  テキストフィールドに一つもしくはそれ以上のMedline IDを(コンマもしくはセミコロンで区切って)入力します。
2.  検索する名前や単語の組を入力します。検索表現を絞り込むのに、*and*演算子や*or*演算子および括弧を使用することもできます。詳しい説明は、[Medline/OVID operators](http://www.ovid.com/site/products/ovidguide/medline.htm)をご覧ください。
3.  例:
    1.  May \[au\] AND Anderson \[au\]
    2.  Anderson RM \[au\] HIV \[ti\]
    3.  Valleron \[au\] 1988:2000\[dp\] HIV \[ti\]
    4.  Valleron \[au\] AND 1987:2000\[dp\] AND (AIDS \[ti\] OR HIV\[ti\])
    5.  Anderson \[au\] AND Nature \[ta\]
    6.  Population \[ta\]

どちらの場合も、**Enter**鍵か**取得**ボタンを押してください。テキスト検索を行うと、検出された項目数が表示され、いくつダウンロードするかを尋ねられます。

取得された項目は、現在アクティブなデータベースに追加されます。

## プロキシサーバーを利用する

httpプロキシサーバーを使用する必要がある場合は、以下のようにサーバー名とポート番号をjava実行時に渡します。

`java -Dhttp.proxyHost="ホスト名"     -Dhttp.proxyPort="ポート番号"`

これらの環境設定は、[Oracle J2SE documentation](http://docs.oracle.com/javase/1.4.2/docs/guide/net/properties.md)に文書化されています。
