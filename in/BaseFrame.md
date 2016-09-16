---
title: Jendela utama JabRef
---

# Jendela utama JabRef

*Catatan:* sebagian besar perintah yang dituliskan dibawah ini mempunyai pintasan menggunakan papan ketik, beberapa perintah lain dari kotak bantuan. Pintasan dapat dilihat dari ketika menggunakan menu utama.

Ini adalah jendela utama untuk bekerja pada basisdata anda. Dibawah kotak menu dana kotak bantuan ada ruang yang mempuyai tab untuk menampilkan basis data yang anda buka. Ketika anda memilih salah satu tab, tabel yang berisi semua entri basisdata anda akan muncul, demikian pula isi masing-masing bidang yang bisa anda ubah datanya.

-   Untuk merubah bidang apa saja yang dimunculkan pada kolom tabel, anda dapat mengaturnya dari dialog **Preferensi**.
-   Untuk menyunting entri basisdata di salah satu baris, anda perlu klik-ganda di baris tersebut. Anda bisa melihat isi basisdata di tiap baris atau navigasi dengan menggunakan tombol panah naik/turun.
-   Kolom tabel diurutkan menurut urutan pada bidang yang anda pilih. Cara pengurutan bawaan dapat dirubah dari **Preferensi -&gt; Tabel entri**, tetapi cara yang lebih cepat untuk merubah urutan, klik pada judul kolom yang anda pilih sebagai kriteria utama, atau membalik urutan jika sudah ditentukan urutan. Jika di klik lagi, akan melepaskan sebagai pilihan kriteria utama urutan. Tekan dan tahan tombol **Ctrl** serta klik salah satu kolom untuk tambah kriteria, membalik urutan atau menghapus sub-kriteria. Anda bisa menambah beberapa sub-kriteria, tetapi hanya dibatasi sampai tiga sub-kriteria yang disimpan ketika menjalankan ulang JabRef.
-   Untuk mengatur lebar kolom, anda dapat menyeret pada batas judul kolom yang anda inginkan.
-   Tanda warna dapat diubah sesuai keinginan melalui dialog **Preferensi**, sehingga membantu mengenali tampilan dan makna basisdata anda dengan melihat warna sel sebagai berikut:
    -   Warna <span style="color: red">merah</span> di sel kolom paling kiri menunjukkan entri tidak lengkap.
    -   Warna <span style="color: #909000">kuning</span> di sel kolom palingkiri menunjukkan entri yang tidak didefinisikan semua bidangnya, tetapi mengandung referensi-silang.
    -   Warna sel <span style="color: blue">biru</span> menunjukkan bidang utama yang diperlukan.
    -   Warna sel <span style="color: green">hijau</span> menunjukkan bidang sel tambahan.
    -   Sel tanpa warna menunjukkan bidang yang tidak digunakan program *bibtex* untuk tipe entri ini. Bidang ini dapat masih disunting dalam JabRef.

## Menambah entri baru

Ada beberapa cara untuk menambah entri baru. Perintah menu **BibTeX -&gt; Entri baru** menampilkan dialog pilihan untuk memilih satu tipe entri dari yang ada. Jika anda tidak menginginkan menampilkan dialog ini, tersedia beberapa menu tersendiri untuk menggunakan tipe entri tertentu. Demikian juga ada pintasan langsung ke tipe yang umum digunakan.

Ketika entri baru ditambahkan, [penyunting entri](EntryEditorHelp) akan muncul. Bagaimana munculnya penyunting entri ini dapat diatur dari menu **Preferensi-&gt; Penyunting Entri**.

*Catatan:* Kami menyarankan anda mempelajari pintasan untuk menambah entri untuk berbagai tipe yang paling sering digunakan, misalnya CTRL-SHIFT-A untuk menambah entri *artikel*.

## Menyunting entri

Untuk membuka [penyunting entri](EntryEditorHelp) dari entri yang sudah ada, klik-ganda di baris entri yang akan disunting, maka [Penyunting entri](EntryEditorHelp) akan dibuka (atau pada baris entri tekan ENTER).

## Mengacu string *bibtex* dalam bidang

Dalam JabRef cara menuliskan isi dalam bidang sama seperti yang anda lakukan pada penyunting teks lainnya, hanya ada satu perbedaan: untuk mengacu string, anda perlu menulis dalam karakter \#, misalnya:
  '\#jan\# 1997',
yang akan diartikan sebagai string 'jan' diikuti oleh ' 1997'.

Baca juga: [penyunting string](StringEditorHelp).
