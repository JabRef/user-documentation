# ユーザー読込フィルタ

JabRefでは、標準読込フィルタが定義されているのとほとんど同じ方法で、あなた自身の読込フィルタを定義して使うことができます。読込フィルタは、1つ以上のJava**クラス**として定義され、入力ストリームからファイルの内容を解析し、BibTeX項目を生成します。つまり、簡単なJavaプログラミングで、あなたの気に入った文献ソースの読込フィルタを追加したり、既存読込フィルタの改善版を新しく登録したりすることができます。また、これによって、例えばSourceForgeなどから入手したコンパイル済みのユーザー読込フィルタを追加することもできます(「作品を共有する」を参照)。

ユーザー読込フィルタは、標準読込フィルタよりも優先されます。こうして、JabRefの自動検出機構やコマンドライン機構によって既存の読込フィルタを上書きすることができます。ユーザー読込フィルタは、名称順に整序されます。

## ユーザー読込フィルタを追加する

コンパイルしたユーザー読込フィルタ(上述のように1つ以上の`.class`ファイル)とクラスファイルが、そのパッケージ構造と同じディレクトリ構造に配置されるようにしてください。新規ユーザー読込フィルタを追加するには、**オプション→ユーザー読込の管理**ダイアログボックスを開き、**フォルダから追加**を押してください。ファイル選択ウィンドウが開き、ユーザー読込のクラスパス——つまりユーザー読込のパッケージ構造の最上位フォルダがあるディレクトリ——を選択することができます。二つめのファイル選択ウィンドウでは、ユーザー読込クラスファイルを選択してください。これは`ImportFormat`から派生していなくてはなりません。**新しいImportFormatサブクラスを選択**を押すと、ユーザー読込フィルタの一覧の中に新しいユーザーフィルタが表示されます。ユーザー読込はすべて、JabRefウィンドウサブメニューの**ファイル→読み込み→ユーザー読込**と**ファイル→読み込んで追加→ユーザー読込**に表示されます。

クラスを別のディレクトリに移動した場合には、読込をいったん削除して追加し直さなくてはならないことに注意してください。既に存在する名称のユーザー読込を追加すると、既存の読込は置換されます。JabRefを再起動しないで既存のユーザー読込を更新することができることもありますが(読込がクラスパスにない場合)、ユーザー読込を更新した時にはJabRefを再起動することを推奨します。zipファイルもしくはjarファイルに含まれる読込を登録することも可能です。単にzipファイルもしくはjarファイルを選択して、新規読込を表す項目(クラスファイル)を選択してください。

## 読込フィルタを作成する

ユーザー読込のビルドのしかたに関する用例と参考になるファイルについては、JabRefのダウンロードページをご覧ください。

### 簡単な例

以下の形のファイルを読み込みたいものと仮定しましょう。

    1936;John Maynard Keynes;The General Theory of Employment, Interest and Money
    2003;Boldrin & Levine;Case Against Intellectual Monopoly
    2004;ROBERT HUNT AND JAMES BESSEN;The Software Patent Experiment

お好きなIDEやテキストエディタで、`getFormatName()`・`isRecognizedFormat`・`importEntries()`の各メソッドを実装している`ImportFormat`からの派生クラスを作成してください。下記はその用例です。

    import java.io.*;
    import java.util.*;
    import net.sf.jabref.*;
    import net.sf.jabref.imports.ImportFormat;
    import net.sf.jabref.imports.ImportFormatReader;

    public class SimpleCsvImporter extends ImportFormat {

      public String getFormatName() {
        return "Simple CSV Importer";
      }

      public boolean isRecognizedFormat(InputStream stream) throws IOException {
        return true; // this is discouraged except for demonstration purposes
      }

      public List importEntries(InputStream stream) throws IOException {
            ArrayList bibitems = new ArrayList();
        BufferedReader in = new BufferedReader(ImportFormatReader.getReaderDefaultEncoding(stream));

        String line = in.readLine();
        while (line != null) {
          if (!"".equals(line.trim())) {
            String[] fields = line.split(";");
            BibEntry be = new BibEntry(Util.createNeutralId());
            be.setType(BibtexEntryType.getType("techreport"));
            be.setField("year", fields[0]);
            be.setField("author", fields[1]);
            be.setField("title", fields[2]);
            bibitems.add(be);
            line = in.readLine();
          }
        }
            return bibitems;
      }
    }

用例は既定パッケージにあることに留意してください。これを`/mypath/SimpleCsvImporter.java`に保存したものとしましょう。また、JabRef-2.0.jarが`SimpleCsvImporter.java`と同じフォルダにあり、Javaがコマンドパス上にあるものとしましょう。これをJSDK 1.4を使ってコンパイルします。例えば、

    javac -classpath JabRef-2.0.jar SimpleCsvImporter.java

とすると、 `/mypath/SimpleCsvImporter.class`というファイルができあがるはずです。

JabRefから**オプション→ユーザー読込の管理**を開き、**フォルダから追加**ボタンを押してください。 `/mypath`に移動し、**選択...**ボタンを押します。`SimpleCsvImporter.class`を選択し、**選択...**を押してください。すると、この読込がユーザー読込一覧に「Simple CSV Importer」という名称で表示されるようになるので、**閉じる**を押すと、JabRefウィンドウサブメニューの**ファイル→読み込み→ユーザー読込**と**ファイル→読み込んで追加→ユーザー読込**に表示されます。

## 作業の共有

ユーザー読込ファイルを使用すれば、ユーザー間でユーザー読込形式を共有することは、たいへん容易です。JabRefでサポートされていない書式の読込フィルタを書いたり、既存のフィルタを改善した場合、その成果をぜひSourceForge.netページに投稿してください。喜んで、投稿された読込ファイルのコレクションを配布したり、標準読込フィルタのセレクションに追加したりしたいと思います。
