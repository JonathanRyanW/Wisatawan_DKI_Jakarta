""" Data tahun 2001-2014 cuman jumlah doang, nggak dibagi per tujuan wisatanya.
Jadi yasudah untuk data 2001-2014 kita bandingkan saja jumlahnya dengan data
tahun2 setelahnya.

Pada saat analisis ini dilakukan, yaitu 2021-02-15 01:48:30 +07, belum ada data
untuk nov dan des 2020 di websitenya. Semua data diambil dari website open data
jakarta.

pada data nov 2018 nama kolom untuk nama tempat wisata adalah "destinasi_wisata"
nama ini langsung diedit jadi "tempat_wisata" dengan fungsi rename dari package
dplyr supaya bisa pake fungsi bind_rows dplyr dengan gampang

Data sep 2018 entah mengapa ada 5 kolom kosong dan 3 baris kosong yang nggak
jelas kegunaannya apa, dibuang supaya bisa pake bind_rows

Data tahun 2019 semua nama kolom tempat wisatanya adalah "destinasi_wisata"
Nama kolomnya diubah semua jadi "tempat_wisata" supaya bisa digabung ke data
tahun 2018 pake fs rename lagi

Pada data Juni 2019 entah mengapa nama "Kawasan Kota Tua" yang selama ini dipake
tiba2 berubah jadi "Kawasan Kotatua" Namanya langsung diganti sesuai sama yang
lain untuk memudahkan analisa berikutnya.

Kelihatannya ada ketidak konsistenan dalam hal apakah kawasan kota tua dianggap
sebagai tempat wisata atau tidak. Kita melihat pada data 2019 untuk bbrp bulan
awal kota tua tidak dimasukkan ke data tempat wisata, namun sejak jun 2019 kota
tua msk ke dftr tempat wisata. Hal ini mengakibatkan jumlah observasi bertambah
dari 19 jadi 20 untuk 7 bulan terakhir 2019. dengan demikian ada 19*5 + 20*7 =
235 data, bukannya 19*12 = 228 data seperti tahun 2018.

Selain itu, mulai dari bulan jul 2019 nama "Monumen Nasional" tiba2 diubah jadi
"Monumen Nasional (kawasan)" Hal ini aneh jadi gw ubah saja semuanya jadi
"Monumen Nasional" supaya tidak bingung. Dengan demikian perbedaan antara data
tahun 2018 dan data 2019 cuman apakah kota tua dianggap tempat wisata atau tidak
Selain itu, di data tahun 2020 tidak ada juga yang pake kawasan jadi supaya
semuanya konsisten nggak ada pilihan lain selain mengubah ke monumen nasional.

Data tahun 2020 juga namanya destinasi wisata, diubah jdi tempat wisata.

Data gabungan 2020 untuk jan 2020 entah mengapa monas penulisannya kayaknya
jadi 24,325. Cuman 24 orang, bukan 24 ribu orang. ini udah diubah di data
gabungan. untuk data gabungan 2020 belum diubah.

Kita melihat bahwa memang di tahun 2020 langsung terjadi penurunan drastis
jumlah pengunjung di berbagai tempat wisata. Sedih liatnya tapi ini memang
hal yang harus dilakukan karena kondisi pandemi.


Tes ini scriptnya diedit mau tau apakah bisa di push atau tidak. Oh ternyata bisa!