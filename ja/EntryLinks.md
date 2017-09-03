---
title: 他の項目へのリンク
helpCategories: ["フィールド"]
since: 3.5
---

# 他の項目へのリンク

JabRefは，他の項目にジャンプするために，以下のフィールドをサポートしています．

サポートされているフィールド：

- `cites`  - この項目が引用しているBibTeX鍵のコンマ区切りリスト
- `crossref` - 相互参照している単一の項目
- `related` - この項目に何らかの形で関係しているBibTeX鍵のコンマ区切りリスト．**全ての** 関係に共通する型を単一の`relatedtype`で指定することができます（https://github.com/plk/biblatex/issues/475#issuecomment-246931180 を参照)．註：biblatexパッケージ中で`related`が有効になっていると，Biblatexはこの情報を出力に出します．

`crossref`フィールドを使用するには，一般タブに移動して，上部のCrossrefを記入してください．

`cites`および`related`を使用するには，次のステップにしたがってください．

1. BibTeXソースに移動する
2. `related = {bibtexkey},`を挿入する
3. 項目エディタを閉じる
4. 項目エディタを開く
5. 「その他のフィールド」に移動する
6. すると「related」が表示され，(i)項目に移動するか，(ii)新規の関係項目を追加するか，(iii)関係項目を削除するかの選択肢が与えられます．

## 註

`crossref`を使うと，bibtexが相互参照フィールドの情報を使用することができるように，JabRefはこれらの項目を書誌情報の先頭に移動します．
<http://tex.stackexchange.com/a/148978/9075>も参照してください．

BibLaTeXのcrossrefの取り扱いは，BibTeXとは異なることに注意してください．

## サポートされていないフィールド

- `citedBy` - これは`cites`の反対側です．これではなく，`cites`を使用してください．
- `relations` - これは，JabRefの保存動作に類似の複雑なフィールドを導入してしまいます．単純な鍵/値で十分です．
- `references` - これは全ての参照を平文で保管します（PRVVプラグイン）．したがって，JabRefでは使用しません．

## 詳しい情報

フィールドに関する開発者間の議論については，<https://github.com/koppor/jabref/issues/14>をご覧ください．
