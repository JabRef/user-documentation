---
title: INSPIRE-HEPから項目を取得するには
---

# INSPIRE-HEPから項目を取得するには

[INSPIRE-HEP](https://inspirehep.net/?ln=en)は，高エネルギー物理学分野のオープンアクセス・デジタル・ライブラリです ([Wikipedia](https://en.wikipedia.org/wiki/INSPIRE-HEP))．

INSPIRE-HEPから項目を取得するには，**検索 → ウェブ検索** を選択してください．すると，サイドペインに検索インタフェースが現れますので，ドロップダウンメニューから，**INSPIRE** を選択します．そこで，質問を入力し，**Enter** 鍵を押すか，**取得** ボタンを押して，検索を開始してください．

結果は，[読込検査ウィンドウ](ImportInspectionDialog)に表示されます．エラーが発生した場合には，ポップアップに表示されます．

##問い合わせ文法

INSPIRE-HEP検索は，検索クエリをINSPIREウェブサーチにそのまま渡しますので，*find* あるいは *fin* コマンドを省く外は，そのままクエリを構成してください．このヘルプページは，検索クエリへの簡単な導入を行うだけですので，INSPIRE検索の詳細なヘルプについては，http://inspirehep.net/info/hep/search-tipsを参照してください．

論理演算子として *and* および *or* を使用して結合することで，複数の部分を持つクエリを構成することができます．各部分は，検索するフィールド型を示す文字または単語の後に空白を置き，その後に検索する文字列を置くことで構成されます．

以下の一覧は，使用することができるフィールド指示子の一部を示したものです．

-   *a* または *author*: 著者名を検索
-   *t* または *title*: タイトルを検索
-   *j*: 学術誌名．ここでは，当該学術誌のよく使われる短縮形か5文字CODEN短縮形を使用することができます．巻号とページもコンマ区切りで含めることができます．例えば，*j Phys. Rev.,D54,1* とすると，Phys. Rev., volume D54, page 1を検索します．
-   *k*: キーワードを検索

クエリの例:

-   *a smith and a jones*: 著者に"smith"と"jones"が含まれる文献を検索
-   *a smith or a jones*: 著者が"smith"か"jones"であるような文献を検索
-   *a smith and not t processor*: 著者"smith"を検索するが，タイトルに"processor"があるものを省略
