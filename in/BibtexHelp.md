---
title: Tentang *bibtex*
---

# Tentang *bibtex*

JabRef membantu anda bekerja menggunakan basisdata *bibtex*, namun ada beberapa aturan yang harus anda ikuti ketika melakukan penyuntingan entri, untuk memastikan bahwa basidata anda dapat dibaca dengan benar oleh program *bibtex*.

## Bidang dalam *bibtex*

Ada banyak perbedaan di bidang-bidang dalam *bibtex*, dengan beberapa bidang tambahan yang dapat anda atur di JabRef.

Secara umum, anda dapat menggunakan perintah LaTeX dalam bidang yang berisi teks. *Bibtex* akan secara otomatis memformat daftar referensi anda, serta bidang-bidang yang ada dalam daftar akan diatur huruf besar kecilnya sesuai dengan gaya bibliografi yang anda gunakan. Untuk mempertahankan karakter tetap dalam huruf besar, anda harus menggunakan tanda kurung kurawal, seperti pada kata {B}elgia.

Catatan tentang beberapa tipe bidang:

-   **Bibtexkey
    ** String tertentu digunakan untuk mengacu entri di dokumen LaTeX. membuat acuan di LaTeX, kunci yang digunakan harus sesuai dengan string kunci bibtex. Huruf besar dan kecil akan dibedakan.
-   **address
    ** Biasanya merupakan alamat dari `penerbit` atau dari tipe institusi. Untuk berbagai tempat peenrbitan, van Leunen menyarankan menghilangkan atau tidak menggunakan informasi ini. Sebagian penerbit yang masih belum berkembang, anda dapat memberikan informasi pada pembaca dengan menulis alamat lengkap.
-   **annote
    ** Untuk membuat catatan. Tidak digunakan dalam gaya bibliografi standar, tetapi bisa digunakan bagi yang ingin menambahkan catatan bibliografi.
-   **author
    ** Bidang ini harus berisi semua penulis yang ada. Nama tiap penulis dipisahkan dengan kata *and*, meskipun jumlah penulis lebih dari dua. Cara menulis nama penulis ada dua format dengan maksud yang sama:
    Donald E. Knuth *atau* Knuth, Donald E.
    Eddie van Halen *atau* van Halen, Eddie
    Format yang kedua digunakan apabila penulis lebih dari dua, untuk membedakan antara nama tengah dan nama belakang.
-   **booktitle
    ** Judul dari buku, bagian dari buku akan diacu. Untuk entri buku, gunakan bidang `title (judul)`.
-   **chapter
    ** Untuk nomor bab (atau subbab atau atau yang setara).
-   **crossref
    ** Kunci basisdata dari entri yang digunakan sebagai referensi silang.
-   **edition
    ** Edisi terbitan dari buku--misalnya, \`\`Kedua''. Harus berupa angka urutan, dan huruf pertama harus huruf besar, seperti contoh tadi; gaya standar akan mengubah ke huruf kecil apabila perlu.
-   **editor
    ** Bidang ini setara dengan bidang *author*. Apabila digunakan juga bidang `author`, maka bidang `editor` akan menghasilkan penyunting buku atau koleksi dimana referensi akan muncul.
-   **howpublished
    ** Bagaimana suatu karya diterbitkan. Huruf pertama dari kata pertama harus huruf besar.
-   **institution
    ** Institusi yang mendukung atau memberi sponsor karya yang diterbitkan.
-   **journal
    ** Nama jurnal. Nama jurnal seringkali disingkat menggunakan "string". Untuk menuliskan string, gunakan [penyunting string](StringEditorHelp).
-   **key
    ** Digunakan untuk mengurutkan, referensi silang, dan membuat label apabila informasi \`\`author'' tidak ada. Bidang ini jangan diartikan sama dengan kunci bibtex yang dipanggil dengan perintah `\cite` serta yang ada di bagian awal entri basisdata.
-   **month
    ** Bulan karya dipublikasikan atau, untuk karya yang tidak diterbitkan, menggunakan bulan waktu ditulis. Anda harus menggunakan singkatan standar tiga huruf (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec).
-   **note
    ** Informasi tambahan yang dapat membantu pembaca. Kata pertama harus huruf besar.
-   **number**
    Nomor jurnal, majalah, laporan penelitian, atau karya dalam serial. Jurnal atau majalah biasanya dikenali dari nomor volume dan nomor terbitannya; organisasi yang menerbitkan biasanya memberikan nomor terbitan; beberapa buku serial juga mempunyai nomor terbitan.
-   **organization
    ** Organisasi yang memberikan bantuan pada konferensi atau organisasi yang menerbitkan manual.
-   **pages
    ** Halaman atau halaman yang dinyatakan dengan jangkah, misalnya `42-111` atau `7,41,73-97` atau `43+` (tanda \``+`' di contoh terakhir menandakan halaman setelahnya yang tidak ditulis dengan jangkah). Untuk mempermudah mempertahankan kompatibilitas basisdata *Scribe*, standar gaya akan merubah ke satu tanda coret (seperti `7-33`) dari dua tanda coret yang digunakan TeX untuk nomor dalam jangkah (seperti `7--33`).
-   **publisher
    ** Nama penerbit.
-   **school
    ** Nama sekolah atau universitas dimana tesis ditulis.
-   **series
    ** Nama seri dari terbitan buku. Ketika mengacu seluruh buku, bidang `title` memberikan judul, sedangkan tambahan bidang `series` memberikan nama seri atau nama volume buku yang diterbitkan.
-   **title
    ** Judul karya. Huruf besar dan kecil tergantung dari gaya bibliografi serta bahasa yang digunakan. Jika huruf harus huruf besar, pastikan anda menggunakan tanda kurung kurawal agar tidak berubah, misalnya {I)ndonesia atau {Indonesia}.
-   **type
    ** Tipe dari laporan teknis--misalnya, \`\`Laporan Penelitian''.
-   **volume
    ** Nomor volume jurnal atau nomor volume dari buku.
-   **year
    ** Tahun penerbitan, untuk karya yang tidak diterbitkan, tahun ditulis. Secara umum, harus terdiri dari angka bulat, seperti `1984`, meskipun gaya bibliografi standar dapat mengenali `year` dengan kombinasi teks asalkan empat terakhir berupa angka tahun, misalnya \`(sekitar 1984)'. Bidang ini diperlukan hampir disemua tipe entri.

## Bidang tambahan

BibTeX sangat populer sehingga banyak orang menggunakan untuk menyimpan informasi. Dibawah ini adalah daftar bidang tambahan yang sering digunakan:

-   **<span style="font-weight: normal; font-style: italic;"> affiliation\*</span>
    ** Afiliasi penulis.
-   **abstract
    ** Abstrak dari tulisan.
-   **doi
    ** Singkatan Digital Object Identifier, merupakan identitas permanen yang diberikan pada dokumen.
-   **eid
    ** Singkatan dari Electronic identifier yang digunakan oleh jurnal elektronik serta cetakan. Kode angka menggantikan nomor halaman, serta digunakan untuk mencari artikel dalam volume yang dicetak. Seringkali juga disebut *citation number (nomor acuan)*.
-   **<span style="font-weight: normal; font-style: italic;"> contents\*</span>
    ** Daftar Isi
-   **<span style="font-weight: normal; font-style: italic;"> copyright\*</span>
    ** Informasi Hakcipta.
-   **<span style="font-weight: normal; font-style: italic;"> ISBN\*</span>
    ** Singkatan dari International Standard Book Number.
-   **<span style="font-weight: normal; font-style: italic;"> ISSN\*</span>
    ** Singkatan dari International Standard Serial Number. Digunakan sebagai identifikasi jurnal.
-   **keywords (katakunci)
    ** Katakunci digunakan untuk mencari topik tertentu yang sesuai.
-   **<span style="font-weight: normal; font-style: italic;"> language\*</span>
    ** Bahasa yang digunakan dalam dokumen.
-   **<span style="font-weight: normal; font-style: italic;"> location\*</span>
    ** Lokasi yang berhubungan dengan entri, misalnya kota tempat berlangsungnya konferensi.
-   **<span style="font-weight: normal; font-style: italic;"> LCCN\*</span>
    ** Singkatan dari Library of Congress Call Number. Seringkali muncul dengan singkatan nama `lib-congress`.
-   **<span style="font-weight: normal; font-style: italic;"> mrnumber\*</span>
    ** Nomor dari *Mathematical Reviews*.
-   **<span style="font-weight: normal; font-style: italic;"> price\*</span>
    ** Harga dari sebuah documen.
-   **<span style="font-weight: normal; font-style: italic;"> size\*</span>
    ** Ukuran dimensi fisik dari suatu karya.
-   **URL
    ** Singkatan dari Universal Resource Locator yang menunjukkan acuan www berada. Hal ini sering digunakan pada laporan teknis yang mengacu situs ftp dimana dokumen postscript disimpan.

### JuraBib

-   **urldate
    ** Tanggal terakhir dikunjungi.

\*) tidak secara langsung didukung oleh JabRef

