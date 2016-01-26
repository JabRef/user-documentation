# Pencarian

Ada tiga pola pencarian yang bisa dilakukan dalam JabRef.

*CTRL-F* membuka dialog pencarian. Menekan *CTRL-F* beberapa kali akan membuka dan menutup dialog pencarian ini. Ketika melakukan pencarian secara bertahap, menekan *CTRL-F* akan memerintahkan program pencarian meneruskan pencarian.

*CTRL-SHIFT-F* membuka dialog pencarian, sekaligus memilih pencarian bertahap. Ketika dalam proses pencarian secara bertahap, anda menekan *CTRL-SHIFT-F* maka akan mencari kata berikutnya yang anda cari.

## Pencarian bertahap

Ketika melakukan pencarian bertahap, program pencarian segera memulai pencarian setelah anda menekan satu huruf. Di baris status memberikan informasi kepada anda jika menemukan yang anda cari. Jika anda menggunakan tombol pintasan, maka program pencarian meneruskan mencari kata pada teks berikutnya. Jika sudah tidak menemukan ada kata yang sama lagi, baris status akan memberitahu anda bahwa sudah tidak ada kata yang ditemukan. Jika anda mengulang pencarian, akan dimulai dari paling atas lagi. Urutan pencarian selalu mengikuti urutan basisdata yang sekarang. Untuk menghentikan pencarian, tekan tombol ketik ESC atau tekan tombol dialog "Bersihkan pencarian".

## Normal

Pada pencarian normal, setelah menekan ENTER program pencarian mulai mencari dalam berkas basisdata anda yang mengandung kata carian yang anda inginkan. Hanya entri yang mengandung kata carian dengan tepat yang dipertimbangkan oleh program pencarian. Untuk mencari kata yang berurutan, anda perlu harus menuliskan dalam tanda petik. Misalnya, carian **progress "marine aquaculture"** akan menemukan baik kata pro "progress" maupun frasa "marine aquaculture". Entri lain yang tidak mempunyai kata-kata tersebut kemudian akan disembunyikan, dan hanya menampilkan entri yang mempunyai kata carian (mode penapis), atau entri yang tidak mengandung kata carian akan menjadi kelabu (mode mengambang). Untuk menghentikan pencarian, tekan tombol ketik ESC atau tekan tombol dialog "Bersihkan pencarian".

## <a href="" id="advanced">Spesifikasi bidang, operator logika</a>

Untuk melakukan pencarian hanya pada bidang tertentu dan/atau menggunakan operator logika sebagai ekspresi pencarian, perlu menggunakan sintaks khusus yang sudah disediakan. Misalnya untuk mencari penulis "Miller", tuliskan (pada semua mode kecuali pencarian bertahap):

author = miller

Baik spesifikasi bidang maupun pencarian kata mendukung ekspresi reguler. Jika kata carian mengandung spasi, anda perlu menuliskan dalam tanda petik. *Jangan* menggunakan spasi di spesifikasi bidang! Misalnya untuk mencari entri tentang image processing, tulis:

title|keywords = "image processing"

Anda bisa menggunakan "and", "or", "not", dan ekspresi kurung kurawal untuk mencari:

(author = miller or title|keywords = "image processing") and not author = brown

Tanda "=" digunakan untuk pernyataan "mengandung". Pencarian kata yang tepat dimungkinkan dengan pernyataan perintah "matches" atau "==". Pernyataan "!=" akan menguji apakah kata carian *tidak* ditemukan dalam bidang (setara dengan perintah "not ... contains ..."). Pemilihan tipe bidang yang dicari (diperlukan, tambahan, semua) akan selalu menindih perintah yang dituliskan dalam spesifikasi bidang di ekspresi pencarian. Untuk mencari entri dari tipe tertentu, bidang pseudo yang disebut "entrytype" juga tersedia:

entrytype = thesis

Ekspresi ini mencari entri yang mempunyai tipe (yang ditampilkan pada kolum "Entrytype") dan mengandung kata "thesis" (mungkin sebagai "phdthesis" dan "mastersthesis"). Bidang psedo lainnya "bibtexkey" digunakan untuk mencari kunci acuan, misalnya:

bibtexkey = miller2005

## Pengaturan pencarian

Tombol *Pengaturan* membuka menu lain untuk mengatur sensitivitas huruf (huruf besar atau huruf kecil), mengatur ekspresi pencarian, serta mengatur apakah hasilnya perlu dipilih pada tabel tertentu.
