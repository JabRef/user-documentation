---
title: Impor entri dari CiteSeer
---

# Impor entri dari CiteSeer

CiteSeer adalah sumber pustaka dijital saintifik serta mesin pencarian yang berfokus pada bidang sains komputer dan teknolofi informasi.

## Mengimpor entri dari CiteSeer

JabRef dapat memuaturun informasi acuan langsung dari basisdata CiteSeer. Untuk memulai proses muaturun, anda perlu menambahkan entri dalam basisdata anda dan menulis bidang citeseerurl dengan tautan halaman web CiteSeer. Bidang citeseerurl harus dalam bentuk salah satu format berikut:

http://citeseer.ist.psu.edu/DDDDDD\[.md\], atau
oai:CiteSeerPSU:DDDDDD, atau
DDDDDD

dimana DDDDD adalah angka urutan. Untuk memperoleh angka urutan (DDDDD) untuk entri CiteSeer, anda perlu ke halaman dokumen dengan format http://citeseer.ist.psu.edu/*namaTahunJudul*.md kemudian klik tombol tautan (Perbarui) utuk acuan. Nama URL untuk tautan Perbarui berisi angka ID untuk acuan ini.

Setelah anda menambahkan bidang citeseerurl, anda bisa memuaturun bidang CiteSeer dengan memilih **BibTex -&gt; Impor Bidang dari CiteSeer**. Pastikan anda sudah memilih baris entri yang ingin diperbarui.

## Membuat Basisdata Acuan

Dengan memberikan referensi, anda aka dapat membuat daftar dalam dokumen anda yang mengacu pada referensi. Agar dapat menggunakan fitur ini, setiap acuan dalam basisdata harus mempunyai bidang citeseerurl dengan format seperti ditulis di subbab **Mengimpor entri dari CiteSeer** diatas. Untuk menggunakan fitur ini, pilih **Pencarian Web -&gt; Ambil data acuan dari CiteSeer**.

## Menggunakan Proxy Server

Apabila anda ingin menggunakan proxy server http, tuliskan nama server dan nomor port ke java saat menjalankan program.

`java -Dhttp.proxyHost="hostname"     -Dhttp.proxyPort="portnumber"`

Pengaturan tersebut didokumentasikan di [Sun J2SE documentation](http://java.sun.com/j2se/1.4.2/docs/guide/net/properties.md).
