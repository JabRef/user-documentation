---
title: Mengambil entri dari Medline
---

# Mengambil entri dari Medline

MEDLINE adalah basisdata utama kedokteran di U.S. National Library. Basisdata ini berisi referensi dari artikel jurnal yang berkaitan dengan sains kehidupan dengan konsentrasi pada biomedicine.

JabRef dapat melaukan muaturun dari basisdata Medline. Untuk menggunakan fitur ini, pilih **Pencarian Web -&gt; Pencarian Medline**, kemudaian dialog pencarian Medline akan muncul di jendela sebelah kiri.

Ada dua cara untuk memilih entri yang akan dimuaturun:

1.  Tulis satu atau lebih dari Medline ID (dipisah dengan koma/titik koma) di kotak pencarian.
2.  Tulis nama atau kata yang dicari. Anda bisa menggunakan kata *and* dan *or* serta tanda kurung untuk memperhalus ekspresi pencarian.

Setelah ini, tekan **Enter** atau tekan tombol **Mengambil**. Apabila anda menggunakan pencarian teks, anda akan diberikan informasi jumlah entri yang ditemukan, dan anda bisa menentukan berapa jumlah yang akan dimuaturun.

Entri yang diambil kemudian akan ditambahkan dalam basisdata anda yang aktif.

## Menggunakan Proxy Server

Apabila anda ingin menggunakan http proxy server, anda harus memasukkan nama server name serta nomor port ke java saat menjalankan.

`java -Dhttp.proxyHost="namakomputer"     -Dhttp.proxyPort="nomorport"`

Pengaturan lingkungan ini didokumentasikan di [Sun J2SE documentation](http://docs.oracle.com/javase/1.4.2/docs/guide/net/properties.html).
