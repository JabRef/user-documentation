---
title: MEDLINEから項目を取得するには
---

# MEDLINEから項目を取得するには

[MEDLINE](https://www.nlm.nih.gov/pubs/factsheets/medline.html)は，生命科学と医療情報学分野の文献情報データベースです．医学・介護学・薬学・歯学・獣医学・健康管理の各分野にわたる学術誌論文の書誌情報を収めています．また，MEDLINEは，生物学と生化学の文献の多くを網羅しているほか，分子進化の分野もカバーしています ([Wikipedia](https://en.wikipedia.org/wiki/MEDLINE))．

MEDLINEから項目を取得するには，**検索 → ウェブ検索** を選択してください．すると，サイドペインに検索インタフェースが現れますので，ドロップダウンメニューから，**MEDLINE** を選択します．そこで，質問を入力し，**Enter** 鍵を押すか，**取得** ボタンを押して，検索を開始してください．

ダウンロードする項目を指定するには，以下の二つの方法があります．

1.  テキストフィールドに，一つもしくはそれ以上のMEDLINE IDを(コンマもしくはセミコロンで区切って)入力します．
2.  検索する名前や単語の組を入力します．検索表現を絞り込むのに，*and* 演算子や *or* 演算子および括弧を使用することもできます．詳しい説明は，[MEDLINE/OVID operators](http://www.ovid.com/site/products/ovidguide/medline.htm)をご覧ください．
  例:
    -  May \[au\] AND Anderson \[au\]
    -  Anderson RM \[au\] HIV \[ti\]
    -  Valleron \[au\] 1988:2000\[dp\] HIV \[ti\]
    -  Valleron \[au\] AND 1987:2000\[dp\] AND (AIDS \[ti\] OR HIV\[ti\])
    -  Anderson \[au\] AND Nature \[ta\]
    -  Population \[ta\]

どちらの場合も，**Enter** 鍵か **取得** ボタンを押してください．テキスト検索を行うと，検出された項目数が表示され，いくつダウンロードするかを尋ねられます．

取得された項目は，現在アクティブなデータベースに追加されます．

結果は，[読込検査ウィンドウ](ImportInspectionDialog)に表示されます．エラーが発生した場合には，ポップアップに表示されます．

## プロキシサーバーを利用する

HTTPプロキシサーバーを使用する必要がある場合は，「ネットワーク」設定を使用して，JabRefをそのように設定することができます（**オプション → 設定 → ネットワーク**）．
