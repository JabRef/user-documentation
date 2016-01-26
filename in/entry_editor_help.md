Penyunting entri
================

*Dibuka dari jendela utama dengan klik-ganda salah satu baris daftar entri yang ada, atau dengan cara memilih salah satu baris kemudian tekan ENTER. Untuk menutup panel penyunting dengan cara menekan tombol ESC.*

Dalam panel ini anda dapat mengisikan semua informasi yang relevan untuk entri yang anda pilih. Penyunting entri memeriksa semua tipe entri yang ada, dan memberikan anda keleluasaan untuk menyunting bidang-bidang utama yang diperlukan serta bidang tambahan lainnya yang akan digunakan dalam referensi menggunakan *bibtex*. Selain itu ada beberapa bidang yang akan dimasukkan dalam *Bidang umum*, yang umum ada untuk semua tipe entri.

Anda sepenuhnya dapat mengatur bidang mana yang anda inginkan masuk dalam katagori diperlukan serta mana saja yang bersifat tambahan untuk tiap tipe entri. Selain itu anda juga bisa mengatur bidang apa saja yang akan masuk dalam tab Bidang umum. Silahkan baca [Pengaturan tipe entri](CustomEntriesHelp.html) untuk informasi yang lebih terperinci.

Informasi lain tentang bagaimana mengisi bidang yang ada, silahkan baca [Bantuan bibtex](BibtexHelp.html).

Panel penyunting entri
----------------------

Penyunting entri mempunyai enam panel: *Bidang diperlukan*, *Bidang tambahan*, *Umum*, *Abstrak*, *Ulasan* dan *sumber BibTeX*, dimana *Umum*, *Abstrak* dan *Ulasan* dapat diatur (baca [Pengaturan bidang umum](GeneralFields.html) untuk penjelasan terperinci). Dalam tiga panel yang pertama, TAB dan SHIFT-TAB bisa digunakan untuk menggerakkan lokasi bidang teks.

Berpindah penyuntingan dari panel ke panel dapat menggunakan tombol TAB dengan kombinasi tombol ketik lainnya:CTRL-TAB atau CTRL-PLUS untuk berpindah ke tab sebelah kanan, sedangkan CTRL-SHIFT-TAB atau CTRL-MINUS untuk berpindah ke tab sebelah kiri. Anda dapat berpindah ke entri sebelumnya atau setelahnya dengan menekan CTRL-SHIFT-DOWN atau CTRL-SHIFT-UP. Anda bisa juga menggunakan tombol panah yang ada di kotak bantuan.

Panel *Sumber BibTeX* menampilkan bagaimana entri hasilnya jika basisdata anda simpan ke format *bibtex*. Jika anda menginginkan, anda bisa menyunting sumber *bibtex* langsung dari penel ini. Ketika anda berpindah ke panel lainnya, tekan CTRL-S atau tutup penyunting entri, JabRef akan menyesuaikan perubahan yang anda lakukan di penel Sumber BibTeX. Apabila ada kesalahan, pesan pemberitahuan akan muncul, dan memberikan pilihan apakah anda akan memperbaikinya atau mengembalikan ke isi sebelumnya. Jika anda memilih **Tampilkan sumber BibTeX sebagai bawaan** di panel **Penyunting Entri** dari menu **Pengaturan-&gt;Preferensi**, panel sumber BibTeX akan muncul satu-satunya panel ketika anda membuka penyunting entri. Jika anda lebih suka menyunting sumber daripada menggunakan panel penyunting, inilah pilihan yang tepat untuk anda.

**Saran:** Apabila basisdata anda mempunyai bidang yang tidak dikenal oleh JabRef, bidang tersebut akan muncul di panel sumber.

Memeriksa konsistensi bidang
----------------------------

Apabila isi dari bidang berubah, JabRef akan memeriksa apakah isi yang baru dapat diterima. Untuk tipe bidang yang digunakan *bibtex*, isinya diperiksa berdasar penggunaan karakter '\#'. Simbol pagar ini *hanya* boleh digunakan secara berpasangan (kecuali untuk penulisan, '\\\#'), yang bermakna melipat string *bibtex* yang diacu. JabRef tidak akan memeriksa jika string yang diacu benar-benar ada (ini bukan buka suatu tipuan, karena gaya *bibtex* yang anda gunakan dapat mendefinisikan kumpulan string bebas yang tidak dikenali JabRef).

Apabila isi tidak dapat diterima, bidang akan berubah warna menjadi merah, yang menandakan adanya kesalahan. Jika hal ini terjadi, perubahan tidak akan disimpan.

Kunci *bibtex* otomatis
-----------------------

Tekan CTRL-G atau gunakan tombol 'membuat kunci BibTeX' (tongkat ajaib) untuk membuat kunci *bibtex* secara otomatis berdasarkan isi dari entri yang berada di Bidang diperlukan.

Informasi lebih lanjut bagaimana JabRef membuat kunci *bibtex*, silahkan baca [Pengaturan pembuat kunci BibTex](LabelPatterns.html).

Pengisian otomatis kata/nama
----------------------------

JabRef mempunyai fitur pengisian otomatis kata/nama. Pengaturan fitur ini dapat diubah dari **Pengaturan -&gt; Preferensi -&gt; Penyunting entri**. Pengaturan bawaan adalah aktif untuk semua bidang yang umum digunakan.

Ketika menyunting satu bidang yang pengisian otomatisnya aktif, JabRef akan mencoba menyarankan kata lengkap ketika anda menulis, berdasarkan kata-kata yang digunakan di mana-mana bidang dalam basisdata anda. Saran kata akan muncul dalam bentuk teks warna terang. Jika ada beberapa kata yang mungkin, anda bisa menggunakan tombol PAGE UP dan PAGE DOWN untuk melihat kata-kata yang disarankan. Pilih salah satu kata, kemudian tekan ENTER. Untuk mengabaikan saran, teruskan menulis kata anda sendiri.
