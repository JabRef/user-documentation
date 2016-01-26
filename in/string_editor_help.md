Penyunting string
=================

*Dibuka dari menu utama **BibTeX -&gt; Sunting entri** atau bisa juga dengan cara menekan tombol di kotak bantuan.*

Data *String* adalah kode *bibtex* yang setara dengan konstanta di bahasa pemrograman. Tiap-tiap string didefinisikan dengan *nama* dan *isi*. Dalam basisdata, nama dapat digunakan untuk mewakili isi.

Sebagai contoh, jika ada beberapa entri dari salah satu jurnal yang mempunyai singkatan yang tidak mudah untuk diingat, misalnya 'J. Theor. Biol.' (Journal of Theroretical Biology), maka nama string JTB dapat digunakan untuk menyatakan nama jurnal tadi. Anda tidak perlu menuliskan nama jurnal yang sama di setiap entri, tetapi cukup dengan menulis karakter '\#JTB\#' (tanpa tanda petik) pada bidang *journal*, sehingga nama jurnal akan tertulis dengan benar di setiap entri.

Acuan string dapat digunakan dalam bidang. Acuan string harus ditulis diantara karakter '\#'. Sintak ini adalah cara yang digunakan JabRef yang sedikit berbeda dengan notasi *bibtex* yang digunakan ketika anda menyimpan berkas basisdata. String merupakan cara bawaan yang digunakan untuk menulis di semua bidang BibTeX standar. Anda bisa juga menyatakan untuk bidang lain yang bukan standar, dari **Pengaturan -&gt; Preferensi -&gt; Berkas**. Dari dialog ini ada ada pilihan perkecualian untuk mengatasi masalah string yang perlu perkecualian pada bidang yang mungkin mengandung karakter '\#' seperti pada bidang 'url' dan bidang lain yang diinginkan agar tetap diproses oleh BibTeX/LaTeX.

String bisa juga diacu dari string lain dengan cara yang sama dengan syarat string yang diacu terlebih dahulu didefinisikan *sebelum* string yang mengacu.

Walaupun urutan string dalam berkas BibTeX adalah penting, anda tidak perlu kawatir ketika anda menggunakan JabRef. String dapat ditampilkan menurut urutan alfabet pada penyunting string, kemudian disimpan dengan dengan urutan yang sama, kecuali BibTeX memerlukan urutan tertentu yang berbeda.
