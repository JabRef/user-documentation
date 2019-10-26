---
title: Installation (IN)
helpCategories:
  - General
---

# Instalasi

Halaman ini mendeskripsikan bagaimana cara untuk menginstal Java, yang dibutuhkan untuk JabRef.
JabRef sendiri dapat diinstal menggunakan installer atau hanya menjalankan file Jar.
Dapatkan filenya dari <https://www.jabref.org/#downloads>.

Untuk Windows, Installer otomatis mendownload OracleJDK (i.e. Java).
Kamu juga dapat menginstalnya secara manual seperti yang akan dijelaskan disini.

Langkah-langkah untuk menginstalnya sudah tertulis disini [JavaFX development branch](https://builds.jabref.org/javafx/) .
Jadi, ini terutama menjelaskan tentang Instalasi [JavaFX].

- [Bantuan JDKs dan JREs](#supported-jdks-and-jres)
    - [JabRef 5.x](#jabref-5x)
    - [JabRef 4.x](#jabref-4x)
- [Verifikasi Instalasi Java](#verify-java-installation)
- [Perintah Instalasi](#installation-commands)
    - [JabRef 5.x](#jabref-5x-1)
      - [Membangun dari sumber](#building-from-source)
      - [Menggunakan Prebuilt Binaries](#using-prebuilt-binaries)
    - [JabRef 4.x](#jabref-4x-1)
        - [Ubuntu dan Oracle Java](#ubuntu-and-oracle-java)
        - [Ubuntu dan OpenJDK](#ubuntu-and-openjdk)
        - [Debian Jessie 8 dan Oracle Java](#debian-jessie-8-and-oracle-java)
            - [Menggunakan ppa](#using-the-ppa)
            - [Pengalihan dari Oracle](#directly-from-oracle)
        - [Fedora 23 dan Oracle Java](#fedora-23-and-oracle-java)
        - [Fedora dan OpenJDK](#fedora-and-openjdk)
        - [CentOS 6 or 7 dan Oracle Java](#centos-6-or-7-and-oracle-java)
        - [openSUSE](#opensuse)
        - [Arch dan Manjaro](#arch-and-manjaro)
        - [Windows dan Oracle Java](#windows-and-oracle-java)
        - [Mac OS dan Oracle Java](#mac-os-and-oracle-java)
- [Freeze ketika menjalankan JabRef](#freezes-when-running-jabref)
- [JabRef dan OpenOffice/LibreOffice integrasi](#jabref-and-openofficelibreoffice-integration)

## Bantuan JDKs dan JREs

### JabRef 5.x

> JabRef 5.x requires JRE 11

### JabRef 4.x

> JabRef 4.x requires JRE 8 (dan tidak berjalan pada JRE 9 onwoards)

JavaFX tidak termasuk dalam setiap lingkungan runtime Java atau development kit.
Karena itu, kami sangat merekomendasikan menggunakan [Oracle Java 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html).
JavaFX termasuk java sejak Java 1.8.0_60.
Dukungan resmi lainnya untuk JavaFX adalah [OpenJDK](http://openjdk.java.net/install/index.html) dengan eksternal library [OpenJFX](http://packages.ubuntu.com/wily/openjfx-source).
Sayangnya, instalasi tidak selalu lurus ke depan.
Karena itu, kami hanya merekomendasikan ini jika Anda tahu apa yang Anda lakukan.
Dalam kasus kamu ingin menggunakan OpenJDK dengan OpenJFX di umum kamu seharusnya mengikuti ini [instructions](https://wiki.openjdk.java.net/display/OpenJFX/Building+OpenJFX).
Untuk Ubuntu 16.04 LTS dan 18.04 LTS menju bagian [Installation Commands](#installation-commands).

## Verifikasi Instalasi Java

Jika Anda sudah menginstal versi Java - atau Anda mengikuti langkah-langkah di bawah ini, Anda dapat memeriksa versi Java dengan mengetikkan perintah berikut ke antarmuka baris perintah Anda:

`java -version`

Mungkin memiliki beberapa versi Java pada saat yang sama.
Pada distribusi Linux berbasis debian atur versi Java pilihan Anda menggunakan perintah berikut:

`sudo update-alternatives --config java`

dan pilih dengan mengetikkan nomor yang cocok dengan versi Java.

Versi Java Anda akan terlihat seperti ini, tergantung pada sistem operasi Anda dan JDK / JRE:

**Oracle Java 32-Bit:**

```
Java version "1.8.0_x"
Java(TM) SE Runtime Environment (build 1.8.x)
Java HotSpot(TM) Client  VM (build 25.x, mixed mode)
```

**Oracle Java 64-Bit:**

```
Java version "1.8.0_x"
Java(TM) SE Runtime Environment (build 1.8.x)
Java HotSpot(TM) 64-Bit Server VM (build 25.x, mixed mode)
```

**OpenJDK 32-Bit:**

```
OpenJDK version "1.8.0_x"
OpenJDK Runtime Environment (build 1.8.0_x)
OpenJDK Client VM (build 25.x, mixed mode)
```

**OpenJDK 64-Bit:**

```
OpenJDK version "1.8.0_x"
OpenJDK Runtime Environment (build 1.8.0_x)
OpenJDK 64-Bit Server VM (build 25.x, mixed mode)
```

Jika ini tidak dilaporkan sebagai produk dari Oracle (misalnya memberitahu Anda bahwa itu adalah GCJ VM) bahkan jika Anda telah menginstal Oracle JVM maka Anda perlu mengubah pengaturan Anda.
Berikut ini, instalasi didokumentasikan untuk Ubuntu, Debian, Fedora, CentOS, Windows, dan MacOSX.

## Perintah Instalasi

### JabRef 5.x

JabRef 5.x dikirimkan dengan lingkungan runtime Java ringan yang mencakup
hanya dependensi Java yang digunakan JabRef. Ada dua cara utama untuk memperoleh
JabRef untuk platform Anda.

#### Membangun dari sumber

Metode ini terutama untuk pengelola paket dan pengguna yang ingin membangun
snapshot terbaru JabRef langsung dari sumbernya.

Untuk membangun JabRef dari sumber, pertama-tama Anda harus memiliki Java Development yang berfungsi
Kit 11 (JDK 11) dan Git diinstal pada sistem Anda. Setelah menginstal keduanya
persyaratan, Anda membuka jendela terminal (mis., prompt perintah) dan ketik
berikut:

```
git clone https://github.com/JabRef/jabref
cd jabref
git submodule update --init
./gradlew assemble
./gradlew jlink
```

di nutshell, Anda mengkloning snapshot terbaru dari JabRef ke direktori `jabref`,
ubah direktori menjadi `jabref`, inisialisasi dan perbarui semua submodul
(dependensi) dari JabRef, rakit mereka untuk dibangun melalui JDK 11, dan akhirnya
bangun dan tautkan bersama.

Outputnya harus berupa subdirektori `build / image` yang berisi JabRef
biner dengan semua dependensi Java-nya. Untuk memulai JabRef, Anda harus menjalankan
`bin / JabRefMain` (di Linux dan MacOS) atau` bin / JabRefMain.bat` (di Windows) di bawah
subdirektori `build / image`.

#### Menggunakan Prebuilt Binaries

Metode ini terutama untuk siapa saja yang ingin mengunduh dan menjalankan yang terbaru
snapshot dari JabRef.

Untuk menggunakan binari prebuilt, cukup kunjungi http://builds.jabref.org/master/ dan
unduh binari terpaket (mis., file `dmg` untuk MacOS dan file` exe` untuk
Windows), jalankan dan ikuti instruksi. Kami juga menyediakan arsip umum
file (mis., file `tar.gz` untuk Linux dan MacOS, dan file` zip` untuk Windows)
yang dapat diunduh dan diekstraksi. Di dalam file arsip Anda akan menemukan
subdirektori `bin` yang berisi biner yang diperlukan untuk menjalankan JabRef (mis.,
`JabRefMain` untuk Linux dan MacOS, dan` JabRefMain.bat` untuk Windows).

### JabRef 4.x

#### Ubuntu dan Oracle Java

Ini berlaku untuk 32bit dan 64bit dan Ubuntu 14.04 LTS, 16.04 LTS dan 18.04 LTS.

Instal Oracle JDK dengan "personal packages archiv (ppa)" yang mencakup fungsi pembaruan otomatis:

1. Tambahkan direktori: `sudo add-apt-repository ppa:webupd8team/java`
2. Perbarui daftar package: `sudo apt-get update`
3. Instal: `sudo apt-get install oracle-java8-installer`

Jika Anda ingin menginstal JRE atau menginstal java tanpa ppa Anda harus mengikuti ini [instructions](https://help.ubuntu.com/community/Java).

#### Ubuntu dan OpenJDK

Cukup instal JavaFX dengan menjalankan `sudo apt-get install openjfx`.

Untuk Ubuntu 18.04 dan terbaru, `openjfx` [uses the Java version 11](https://github.com/JabRef/help.jabref.org/issues/204) yang saat ini tidak didukung oleh JabRef. Karenanya, gunakan versi yang lebih lama:

1. Jika Anda menginstal versi baru secara tidak sengaja, hapus dengan `sudo apt purge openjfx`.
2. Instal versi yang lebih lama dengan `sudo apt install openjfx=8u161-b12-1ubuntu2 libopenjfx-jni=8u161-b12-1ubuntu2 libopenjfx-java=8u161-b12-1ubuntu2`.
3. Untuk mencegah pembaruan perangkat lunak dari menginstal versi yang lebih baru tidak didukung, tandai untuk tidak diperbarui dengan `sudo apt-mark hold openjfx libopenjfx-jni libopenjfx-java`. 

Ini juga berfungsi untuk Linux Mint 19.1 Tessa yang didasarkan pada Ubuntu 18.04.

#### Debian Jessie 8 dan Oracle Java

##### Menggunakan ppa

1. Tambahkan direktori: `sudo sh -c 'echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list'`
2. Tambahkan GPG key: `sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886`
3. Perbarui daftar package: `sudo apt-get update`
4. Instal: `sudo apt-get install oracle-java8-installer`

Based on: <http://tecadmin.net/install-java-8-on-debian/>

##### Pengalihan dari Oracle

1. Download tag.gz-file dari [Java SE Development Kit 8 Downloads] site
2. Arahkan ke folder tempat Anda mengunduh file tar.gz
3. Buat package dengan `make-jpkg jdk-[Version]-linux-x64.tar.gz` termasuk versi Java terbaru bukan `[Version]`
4. Dapatkan akses root dengan `su`
5. Instal dengan `dpkg -i oracle-java8-jdk_[Version].deb`

#### Fedora 23 dan Oracle Java

1. Download rpm-file dari [Java SE Development Kit 8 Downloads] site
2. Aragkan ke folder tempat anda mengunduh rpm-file
3. Instal: `rpm -ivh jdk-8u101-linux-x64.rpm`
4. Upgrade: `rpm -Uvh jdk-8u101-linux-x64.rpm`
5. Atur Alternatif: `alternatives --config java` (choose Oracle version)

JabRef builds baru tersedia di <https://build.opensuse.org/package/show/home:cornell_vrdc/jabref3>.

#### Fedora dan OpenJDK

1. Instal OpenJDK: `sudo dnf install java-1.8.0-openjdk`
2. Instal JavaFX (sebenarnya OpenJFX): `sudo dnf install openjfx java-1.8.0-openjdk-openjfx`
3. Unduh JabRef-[version].jar dari [JabRef Website](http://www.jabref.org/).
4. Di folder jar-file jalankan `java -jar JabRef-[version].jar`

*Perhatian*: Untuk menginstal JavaFX, tidak cukup hanya menginstal `openjfx` package.
*Perhatian*: ada [bug](https://bugzilla.redhat.com/show_bug.cgi?id=1547378) di `openjfx` di Fedora 29.
JabRef versi terbaru than 4.3.1 tidak akan berkerja dengan OpenJDK dan Fedora 29 sampai ini di perbaiki. Lihat juga [issue 4473](https://github.com/JabRef/jabref/issues/4473).

#### CentOS 6 atau 7 dan Oracle Java

1. Unduh rpm-file dari [Java SE Development Kit 8 Downloads] site
2. Instal dengan `sudo yum localinstall jre-[Version]-linux-[BIT].rpm` termasuk versi Java terbaru untuk `[Version]` dan `i586` atau `x64` untuk `[BIT]` tergantung OS versi anda.

#### openSUSE

Package Java yang diperlukan dapat diinstal melalui "1-click installs":

1. [OpenJDK](https://software.opensuse.org/package/java-1_8_0-openjdk)
2. [java-openjfx](https://software.opensuse.org/package/java-1_8_0-openjfx)

#### Arch dan Manjaro

Dua package tersedia di [Arch User Repository (AUR)](https://aur.archlinux.org/):

1. [jabref](https://aur.archlinux.org/packages/jabref): Rilis saat ini
2. [jabref-latest](https://aur.archlinux.org/packages/jabref-latest/): Versi terakhir dari [GitHub](https://github.com/JabRef/jabref) _master_ branch

Kedua package menginstal file jar yang sudah dikompilasi dan menambahkan perintah dan file .desktop ke OS.

#### Windows dan Oracle Java

Langkah "modern" :

1. Instal chocolatey mengikuti langkah yang dijelaskan disini https://chocolatey.org/install
2. Eksekusi `choco install jre8`

Kapan saja, Anda dapat memperbarui ke lingkungan Java runtime terbaru dengan mengeksekusi `choco upgrade all`.

Langkah "jadul" :

1. Unduh exe file dari [Java SE Development Kit 8 Downloads] site
2. Jalankan instalasi wizzard

#### Mac OS dan Oracle Java

1. Unduh dmg-file dari [Java SE Development Kit 8 Downloads] site
2. Jalankan instalasi wizzard

## Freeze ketika menjalankan JabRef

Beberapa pengguna dengan macOS Sierra telah melaporkan pembekuan saat menggunakan JabRef. Tampaknya, [adding a host mapping for 127.0.0.1](https://dzone.com/articles/macos-sierra-problems-with-javanetinetaddress-getl) tampaknya menyelesaikan masalah ini.

Pembekuan acak juga telah dilaporkan di beberapa distribusi Linux. Tampaknya itu `GTKLookAndFeel` menyebabkan masalah ini dan memilih kelas tampilan dan nuansa yang berbeda `Options -> Appearance -> Look and Feel` memecahkan permasalahan.

## JabRef dan OpenOffice/LibreOffice integrasi

Koneksi dari JabRef ke Libre Office membutuhkan beberapa office terkait `jar`-arsip yang akan hadir.
Penginstal Windows untuk OpenOffice/LibreOffice secara otomatis menginstal library yang diperlukan.
Untuk Linux anda harus menginstal package `libreoffice-java-common`.

 [Java SE Development Kit 8 Downloads]: http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
 [JavaFX]: https://en.wikipedia.org/wiki/JavaFX
