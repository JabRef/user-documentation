---
title: コマンドラインの使用法とオプション
helpCategories: ["一般"]
---

# コマンドラインの使用法とオプション

## 目的と機能

JabRefは，第一にGUIベースのアプリケーションですが，便利なコマンドライン オプションもいくつか提供しており，グラフィカル インタフェースを開くこと無く，ファイル変換操作を行うこともできます．コマンドライン オプションは，JAR版のJabRefを使用しているときにのみ，使用することができます．JARファイルは，私たちの[ダウンロードサイト](https://www.fosshub.com/JabRef.html)から直接ダウンロードすることができますし，すでにJabRefを導入済みであれば，導入先のフォルダに，そのファイルがあります．

## 基本

java -jar JabRef.jar [オプション] [BIBTEXファイル]

*《註》* 上記`JabRef.jar`は，実際の`.jar`ファイル名に置き換えてください．

ファイル名を列挙するだけで，一つ以上のBibTeXファイルを読み込むように指定することができます．オプションを指定する場合には，すべてこのファイル名の列挙よりも前で行ってください．最初のファイル名は，オプションの引数と誤解されないようにしなくてはいけませんので，`-n`や`-l`のような二値オプションがファイル名の直前に来る場合には，引数として`true`を指定してください．例えば，

`java -jar JabRef.jar -o filetoexport.xml,docbook -n true original.bib`

というコマンドラインは，`original.bib`ファイルを正しく読み込み，docbook形式で`filetoexport.xml`に書き出し，GUIは抑制します．ここでは，*true* という単語があることで，ファイル名が`-n`オプションの引数と解釈されるのを防いでいます．

## オプション

`[-a <ファイル>] [-asfl] [-b] [-d <ファイル>] [--debug] [-f <ファイル>] [-g]
       [-h] [-i <ファイル>] [--importToOpen <ファイル>] [-m <ファイル>] [-n] [-o
       <ファイル>] [-p <ファイル>] [-v] [-x <ファイル>]`

### ヘルプ: `-h`
（または`--help`）

このオプションを与えると，JabRefはコマンドライン オプションの概略を表示して，直ちに終了します．

```
usage: jabref [OPTIONS] [BIBTEX_FILE]

Options: [-a <FILE>] [-asfl] [-b] [-d <FILE>] [--debug] [-f <FILE>] [-g]
       [-h] [-i <FILE>] [--importToOpen <FILE>] [-l] [-m <FILE>] [-n] [-o
       <FILE>] [-p <FILE>] [-v] [-x <FILE>]
 -a,--aux <FILE>                     Subdatabase from aux:
                                     file[.aux],new[.bib]
 -asfl,--automaticallySetFileLinks   Automatically set file links
 -b,--blank                          Do not open any files at startup
 -d,--prdef <FILE>                   Reset preferences (key1,key2,... or
                                     'all')
    --debug                          Show debug level messages
 -f,--fetch <FILE>                   Run Fetcher, e.g.
                                     "--fetch=Medline:cancer"
 -g,--generateBibtexKeys             Regenerate all keys for the entries
                                     in a bibtex file
 -h,--help                           Display help on command line options
 -i,--import <FILE>                  Import file: filename[,import format]
    --importToOpen <FILE>            Import to open tab
 -l,--loads                          Load session
 -m,--exportMatches <FILE>           [field]searchTerm,outputFile:
                                     file[,exportFormat]
 -n,--nogui                          No GUI. Only process command line
                                     options.
 -o,--output <FILE>                  Output or export file:
                                     filename[,export format]
 -p,--primp <FILE>                   Import preferences from file
 -v,--version                        Display version
 -x,--prexp <FILE>                   Export preferences to file

Available import formats:
  BibTeX         : bibtex
  BibTeXML       : bibtexml
  Biblioscape    : biblioscape
  Copac          : cpc
  INSPEC         : inspec
  ISI            : isi
  MSBib          : msbib
  Medline        : medline
  MedlinePlain   : medlineplain
  Ovid           : ovid
  PDFcontent     : pdfcontent
  REPEC New Economic Papers (NEP) : repecnep
  RIS            : ris
  Refer/Endnote  : refer
  SilverPlatter  : silverplatter
  Sixpack        : sixpack
  XMP-annotated PDF : xmpannotatedpdf
  text citations : textcitations

Available export formats: MSBib, bibordf, bibtexml, din1505, docbook,
endnote, harvard, html, iso690rtf, iso690txt, listrefs, misq, mods,
mysql, ods, oocalc, oocsv, postgresql, ris, simplehtml, tablerefs,
tablerefsabsbib

Please report issues at https://github.com/JabRef/jabref/issues
```


### GUI無しモード: `-n`
（または`--nogui`）

JabRefウィンドウを抑制します（すなわち，GUI − グラフィック ユーザー インタフェース − が表示されません）．

このオプションを与えると，コマンドラインオプションを実行したのち，直ちにプログラムを終了します．このオプションは，コマンドラインやスクリプトからファイル変換操作を行う際に便利です．

### ファイルの読込: `-i ファイル名\[,読込形式\]`
（または`--import ファイル名\[,読込形式\]`あるいは`--importToOpen ファイル名\[,読込形式\]`）

`ファイル名`を読込ないし開きます．

ファイル名だけが指定された場合（あるいは，ファイル名の後にコンマと`*`文字を付けた場合）には，JabRefはファイル形式の自動検出を試みます．これは，BibTeXファイルとJabRefがサポートしているすべての読込形式に対して機能します．ファイル名の後にコンマと読込形式名を続けると，その読込フィルタが使用されます．

使用できる読込形式については，`-h`オプションを使うと一覧を得ることができます．

出力オプションも指定されると，読込はつねに最初に処理されるので，読み込んだり開いたりしたファイルは，書出フィルタに渡されます．（`-n`オプションを使って）GUIを抑制しなかった場合には，読み込んだり開いたりしたファイルは，基本ウィンドウに表示されます．

`--importToOpen`が使用されると，ファイルの中身は，開かれているタブに読み込まれます．

*《註》* `-i`オプションは，一度だけかつ一つのファイルについてのみ指定することができます．


### ファイルの書出: `-o ファイル名\[,書出形式\]`
（または`--output ファイル名\[,書出形式\]`）

同一コマンドライン中で読み込んだり開いたりしたファイルを，保存したり書き出したりします．

ファイルが`-i`を使って読み込まれた場合には，そのデータベースが書き出されます．`-i`オプションを使わない場合には，指定した(かつ成功裏に開かれた) *最後の* ファイルが書き出されます．

ファイル名だけを指定すると，BibTeX形式で保存されます．ファイル名の後にコンマと書出形式を続けると，その書出フィルタが使用されます．

この方法で自作書出フィルタも使用することができ，自作書出フィルタと標準書出フィルタの書出名が同一の時には，前者が優先されます．

（`-n`オプションを使用して）GUIを抑制しなかった場合には，書き出し操作はすべてJabRefウィンドウが開く前に実行され，読み込まれたデータベースがウィンドウに表示されます．

*《註》* `-o`オプションは，一度だけかつ一つのファイルについてのみ指定することができます．

### 一致項目の書出: `-m [フィールド]検索語,outputFile:書出ファイル\[,書出形式\]`
（または`--exportMatches [フィールド]検索語,outputFile:書出ファイル\[,書出形式\]`）

与えられた検索語に一致するデータベース項目をすべて新しいファイルに保存します．

ファイル名の後に，コンマと書出形式を続けると，その書出フィルターが用いられます．書出形式を与えなければ，既定の書出形式 *HTML表* が用いられます(*tablerefsabsbib* が提供する *Abstract* および *BibTeX* 付き)．

検索関数に関する詳しい情報は，[検索](SearchHelp.md)をご覧ください．

*《註》* さらに，`Year=2005`のように特定の年の項目を検索できるだけでなく，`Year=1989-2005`のように，一定の期間内の項目を検索することも可能です．

*《註》* 空白を含む検索用語は，引用符で括る必要があります．例：
`(author=bock or title|keywords="computer methods")and not(author=sager)`

## ウェブからの取得: `-f=取得法:問い合わせ文字列`
（あるいは`--fetch=取得法:問い合わせ文字列`）

ウェブ取得子に問い合わせて，項目を読み込みます．

取得子名と，探したい検索または論文IDの両方を渡すと（例：`--fetch=Medline:cancer`），その取得子が実行されます．取得子によっては，あなたからのフィードバックが必要な場合，GUIウィンドウを表示します．

ウェブ検索パネルに列挙されている取得子は，コマンドラインから実行することができます．利用できる取得法を列挙させるには，パラメーターを与えずに`--fetch`を実行してください．

### .auxファイルからの部分データベース: `-a 読込ファイル[.aux],出力ファイル[.bib] 元になるBibTeXファイル`
（あるいは`--aux 読込ファイル[.aux],出力ファイル[.bib] 元になるBibTeXファイル`）

.auxファイルから部分データベースを抽出します．

LaTeX文書（例：`読込ファイル.tex`）をコンパイルすると，.auxファイルが生成されます（例：`読込ファイル.aux`）．これには，作業文書で用いられている文献項目の全覧が含まれています．JabRefは，ここで使用されている参照文献を，`元のBibTeXファイル`から取り出して，新しい.bibファイル（`出力ファイル`）に抽出することができます．このようにして，.texファイルで使用されている文献項目だけを含む部分データベースを得ることができます．

### ファイルリンクを張る: `-asfl`
（あるいは`--automaticallySetFileLinks`）

自動的にファイルリンクを張ります．

### 鍵を再生成: `-g`
（あるいは`--generateBibtexKeys`）

BibTeXファイル中の全項目の鍵を再生成します．

### 設定の書出: `-x ファイル名`
（あるいは`--prexp ファイル名`）

ユーザー設定全部をXMLファイルに書き出します．書き出した後，JabRefは通常通り起動します．

## 設定の読込: `-p ファイル名`
（あるいは`--primp ファイル名`）

`-x`オプションあるいはGUIを使って書き出したXMLファイルから，ユーザー設定を読み込みます．読み込んだ後，JabRefは通常通り起動します．

### 設定のリセット: `-d 鍵`
（あるいは`--prdef 鍵`）

設定をリセットします（鍵1, 鍵2,..., あるいは`all`）．


### 起動時にファイルを開かない: `-b`
（あるいは`--blank`）

起動時にファイルを開きません．


### バージョン: `-v`
（あるいは`--version`）

JabRefのバージョン番号を表示します．


### デバッグモード: `--debug`

デバッグレベル メッセージを表示します．
