---
title: 導入方法
helpCategories: ["一般"]
---

# 導入方法

このページでは，JabRefに必要なJavaの導入の仕方を説明します．
JabRef自体は，導入プログラムを使用して導入することも，jarファイルを直接実行することもできます．
これらのファイルは，<https://www.jabref.org/#downloads>で入手できます．

Windowsでは，導入プログラムが，自動的にOracleJDK（すなわちJava）をダウンロードします．
しかし，ここで述べられているように手動で導入することもできます．

導入手順は，[JavaFX開発ブランチ](https://builds.jabref.org/javafx/)を念頭に書かれています．
したがって，特にJavaFXの導入について述べます．

## サポートされているJDKとJRE

JavaFXは，全てのJavaランタイム環境やJava開発環境に含まれているわけではありません．
ですので，JavaFXがJava 1.8.0_60以来含まれている，[Oracle Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)を利用することを強く推奨します．
他に，JavaFXを正式にサポートしているものには，外部ライブラリ付きの
[OpenJDK](http://openjdk.java.net/install/index.html)と [OpenJFX](http://packages.ubuntu.com/wily/openjfx-source)
がありますが，残念ながら，この導入作業はいつもわかりやすいものではありません．
したがって，この方法は，事情のよくわかっている方にのみ推奨いたします．
もしどうしても，OpenJDKとOpenJFXを使用したい場合には，一般的に，この[説明](https://wiki.openjdk.java.net/display/OpenJFX/Building+OpenJFX)にしたがった方が良いでしょう．
Ubuntu 16.04 LTSの場合には，[インストール・コマンド](#ubuntu-openjdk-16-04)の節をご覧ください．


## Java環境を確認する

すでにJavaが導入済みの場合や，下記のステップに正しく従った場合には，コマンドライン・インタフェースに

`java -version`

というコマンドを入力すれば，どのJavaバージョンが導入されているかをチェックすることができます．
同時に複数のJavaバージョンが導入済みのこともありえます．
Linuxディストリビューションの場合には，

`sudo update-alternatives --config java`

というコマンドを使用して，望むJavaバージョンの番号を入力すれば，優先するJavaバージョンを設定することができます．

使用中のJavaバージョンは，使用しているオペレーティング・システムとJDK/JREに依存して，下記のように表示されるはずです．


**Oracle Java 32ビット:**

```
Java version "1.8.0_x"
Java(TM) SE Runtime Environment (build 1.8.x)
Java HotSpot(TM) Client  VM (build 25.x, mixed mode)
```


**Oracle Java 64ビット:**

```
Java version "1.8.0_x"
Java(TM) SE Runtime Environment (build 1.8.x)
Java HotSpot(TM) 64-Bit Server VM (build 25.x, mixed mode)
```


**OpenJDK 32ビット:**

```
OpenJDK version "1.8.0\_x"
OpenJDK Runtime Environment (build 1.8.0\_x)
OpenJDK Client VM (build 25.x, mixed mode)
```


**OpenJDK 64ビット:**

```
OpenJDK version "1.8.0_x"
OpenJDK Runtime Environment (build 1.8.0_x)
OpenJDK 64-Bit Server VM (build 25.x, mixed mode)
```


## インストール・コマンド


### UbuntuとOracle Java

下記は，32ビットと64ビットの両方，およびUbuntu 14.04 LTSと16.04 LTSの両方に該当します．

以下に示すように，OracleJDKを，自動更新関数を含んだ「personal packages archiv (ppa)」とともにインストールします．

1. リポジトリを追加：`sudo add-apt-repository ppa:webupd8team/java`
2. パッケージ一覧を更新：`sudo apt-get update`
3. インストール：`sudo apt-get install oracle-java8-installer`

JREを導入したい場合や，ppaなしでjavaを導入したい場合には，この[説明](https://help.ubuntu.com/community/Java)にしたがってください．

### Ubuntu 16.04とOpenJDK

`sudo apt-get install openjfx`を実行して，JavaFXをインストールしてください．


### Debian Jessie 8とOracle Java

#### ppaを使用する

1. リポジトリを追加：`sudo sh -c 'echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list'`
2. GPG鍵を追加：`sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886`
3. パッケージ一覧を更新：`sudo apt-get update`
4. インストール：`sudo apt-get install oracle-java8-installer`

出典：<http://tecadmin.net/install-java-8-on-debian/>

#### Oracleから直接

1. [Java SE Development Kit 8 Downloads]サイトからtar.gzファイルをダウンロードする
2. tar.gzファイルをダウンロードしたフォルダに移動する
3. `make-jpkg jdk-[バージョン]-linux-x64.tar.gz`（`[バージョン]`を最新のJavaバージョンに置き換える）を実行して，パッケージを作成する
4. `su`を実行してrootアクセスを獲得する
5. `dpkg -i oracle-java8-jdk_[Version].deb`でインストールする


### Fedora 23とOracle Java

1. [Java SE Development Kit 8 Downloads]サイトからrpmファイルをダウンロードする
2. rpmファイルをダウンロードしたフォルダに移動する
3. インストール：`rpm -ivh jdk-8u101-linux-x64.rpm`
4. 更新：`rpm -Uvh jdk-8u101-linux-x64.rpm`
5. 優先版を選択：`alternatives --config java`（Oracle版を選択）


### CentOS 6または7とOracle Java

1. [Java SE Development Kit 8 Downloads]サイトからrpmファイルをダウンロードする
2. `sudo yum localinstall jre-[バージョン]-linux-[ビット].rpm`（`[バージョン]`を最新のJavaバージョンに置き換え，`[ビット]`をOSの版によって`i586`か`x64`に置き換える）を実行して，インストールする


### WindowsとOracle Java

1. [Java SE Development Kit 8 Downloads]サイトからexeファイルをダウンロードする
2. インストール・ウィザードを実行する


### Mac OSとOracle Java

1. [Java SE Development Kit 8 Downloads]サイトからdmgファイルをダウンロードする
2. インストール・ウィザードを実行する

 [Java SE Development Kit 8 Downloads]： http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
