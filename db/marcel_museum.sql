-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jan 2021 pada 20.31
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marcel_museum`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `head` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `text_color` enum('text-dark','text-light') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `product_id`, `image`, `head`, `content`, `text_color`) VALUES
(6, 1, 'ebefd808f3557f762f45abeadfb282d5.jpg', 'Lcc Museum', 'Jl. Medan Merdeka Barat No.12, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota J', 'text-light'),
(7, 1, '6a2c37a41c7c419ba2e7e44c5a6b8ec7.jpg', 'Lcc Museum', 'Jl. Medan Merdeka Barat No.12, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota J', 'text-light'),
(8, 1, 'ae78a62b1c660f5507382f7e87ccf6ac.jpg', 'Pekan Budaya Museum', 'Jl. Medan Merdeka Barat No.12, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota J', 'text-light'),
(9, 1, '1fbdeabcae4ca4b03f27238197b2a765.jpeg', 'Pameran Asian Games', 'Jl. Medan Merdeka Barat No.12, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota J', 'text-light');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `edition` enum('news','event') NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `date`, `edition`, `image`, `description`, `address`) VALUES
(1, 'Museum Nasional Terima Aset dari DJKN', '2020-11-13', 'news', '91e07478f90c484824614fe792338e6c.jpg', 'Jakarta, 13/11/2020. Dalam rangka memberikan kepastian status hukum Aset Inventaris Eks Bank Dalam Likuidasi (BDL) berupa koin emas, Direktorat Pengelolaan Kekayaan Negara dan Sistem Informasi (PKNSI) Direktorat Jenderal Kekayaan Negara (DJKN) Kementerian Keuangan Republik Indonesia selaku Pengelola Aset eks BDL akan menyerahkan aset tersebut kepada Kementerian Pendidikan dan Kebudayaan dalam hal ini dikuasakan ke Kepala Museum Nasional dengan Surat Kuasa nomor: 94646/A.A2/LK/2020 tanggal 12 Oktober 2020.\r\n<br><br>\r\nAset inventaris eks BDL yang dimohonkan untuk ditetapkan sebagai Barang Milik Negara pada Kementerian Pendidikan dan Kebudayaan tersebut berupa 10 (sepuluh) keping koin emas milik PT Bank Anrico, Dalam Likuidasi (DL).\r\n<br><br>\r\nPT Bank Anrico (DL) telah dicabut izin usahanya berdasarkan Keputusan Menteri Keuangan Nomor 526/KMK.017/1997 tanggal 1 November 1997 yang dilanjutkan dengan proses likuidasi. Pemerintah telah memberikan dana talangan untuk pembayaran kewajiban PT Bank Anrico (DL) kepada nasabah penyimpan dana dan/atau kreditur. Karena Pemerintah merupakan lembaga yang dalam kedudukannya telah membayar terlebih dahulu sebagian atau seluruh hak nasabah penyimpan dana, maka kedudukan Pemerintah menggantikan kedudukan nasabah penyimpan dana.\r\n<br><br>\r\nProses likuidasi seharusnya selesai dalam jangka waktu paling lama 5 (lima) tahun dan 180 (seratus delapan puluh) hari terhitung sejak tanggal dibentuknya Tim Likuidasi, tetapi karena adanya berbagai kendala yang dihadapi Tim Likuidasi PT Bank Anrico (DL), masih terdapat aset PT Bank Anrico (DL) yang belum dapat dicairkan dan kewajiban PT Bank Anrico (DL) kepada Pemerintah belum dapat dilunasi.\r\n<br><br>\r\nOleh karena itu, dalam rangka penyelesaian proses likuidasi PT Bank Anrico (DL), maka pada tanggal 7 Juni 2007 dilakukan serah terima aset dari Tim Likuidasi PT Bank Anrico (DL) kepada Pemerintah c.q. Kementerian Keuangan. Salah satu aset yang diserahterimakan adalah aset inventaris berupa koin emas yang dimohonkan untuk ditetapkan sebagai BMN pada Kementerian Pendidikan dan Kebudayaan.\r\n<br><br>\r\nAset dimaksud berupa uang logam khusus yang terbuat dengan bahan emas 23 karat (95,833%) dan diterbitkan oleh Bank Indonesia dalam rangka Peringatan Emas 50 Tahun Republik Indonesia.\r\n<br><br>\r\nSerah terima aset berupa koin emas dari Direktur Kekayaan Negara dan Sistem Informasi Direktorat Jenderal Kekayaan Negara Ibu Purnama T. Sianturi kepada Kepala Museum Nasional bapak Siswanto.																														', 'Jl. Medan Merdeka Barat No.12, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10110'),
(2, 'Bagaimana Museum Mendapatkan Koleksi?', '2020-09-05', 'news', 'd4ae0f91645873839ed274e454a47b4d.jpg', '																					Museum dan koleksi merupakan dua elemen yang tidak dapat dipisahkan. Suatu lembaga dapat dikatakan sebagai museum apabila memiliki koleksi serta untuk melindungi, mengembangkan, dan memanfaatkan koleksi tersebut untuk dikomunikasikan kepada masyarakat. Jenis-jenis koleksi museum dapat berupa benda utuh, fragmen, benda hasil perbanyakan atau replika, spesimen, hasil rekonstruksi, dan/atau hasil restorasi.\r\n<br><br>\r\nKoleksi  harus memenuhi syarat di antaranya, 1) sesuai dengan visi dan misi museum, 2) jelas asal-usulnya, 3) diperoleh dengan cara yang sah, 4) keterawatan, 5) tidak mempunyai efek negatif bagi kelangsungan hidup manusia dan alam. Menurut PP No. 66 Tahun 2015 tentang Museum, koleksi yang dipamerkan di museum didapatkan melalui:\r\n<br>\r\n- Hasil penemuan;<br>\r\n- hasil pencarian;<br>\r\n- hibah;<br>\r\n- imbalan jasa;<br>\r\n- pertukaran;<br>\r\n- pembelian;<br>\r\n- hadiah;<br>\r\n- warisan; atau<br>\r\n- konversi\r\n<br><br>\r\nPengadaan koleksi pada suatu museum tidak dapat dilakukan sembarangan. Ada tim khusus yang dibentuk dengan keputusan kepala museum. Tim tersebut bertugas melakukan kajian yang meliputi aspek ilmiah, legalitas, dan fisik. Adapun hasil kajian kemudian diserahkan kepada tim pengadaan koleksi kepada kepala museum.\r\n<br><br>\r\nLebih lanjut, kepala museum membuat keputusan pengadaan koleksi dengan mempertimbangkan 1) kemampuan museum melakukan pelestarian, 2) koleksi yang diusulkan akan berguna bagi pengembangan museum, 3) hasil kajian tim pengadaan koleksi, dan 4) tidak bertentangan dengan etika permuseuman. Selain itu, kepala museum dapat memberikan pertimbangan khusus untuk mengadakan koleksi yang tidak sesuai dengan visi dan misi museum karena untuk penyelamatan, pengamanan, dan/atau pemeliharaan.																		', 'Jl. Medan Merdeka Barat No.12, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10110'),
(3, 'Pekan Kebudayaan Saudi Arabia', '2016-03-29', 'event', 'ba57c8a79af84a5ac4f8a4c28b93fded.jpg', '														Di luar dugaan, peminat yang ingin menghadiri Pekan Kebudayaan Saudi Arabia ke Museum Nasional membludak. Jumlah pengunjung yang terdata oleh pihak Museum Nasional sebanyak 14.950 orang pada hari Selasa saja, 29 Maret 2016. Ditambah dengan pengunjung yang tidak memiliki tiket, diperkirakan satu hari itu bisa mencapai 20.000 orang. Banyak pengunjung datang dari informasi broadcast yang disebarkan melalui media sosial Whatsapp dan Blackberry Messenger. Besok Rabu diperkirakan melampaui jumlah hari ini.\r\n<br><br>\r\nPekan Kebudayaan Saudi Arabia di Museum Nasional ini diselenggarakan oleh Kedutaan Besar Kerajaan Arab Saudi di Jakarta dan dibuka pada Sabtu malam lalu. Ini adalah kali pertama Pekan Kebudayaan Arab Saudi diselenggarakan di Indonesia. “Pekan Kebudayaan ini merupakan salah satu upaya peningkatan hubungan kedua negara,” kata Dubes Saudi Arabia Mustafa bin Ibrahim Al Mubarak.\r\n<br><br>\r\nKegiatan dalam acara ini antara lain pameran lukisan, melukis hena, photo booth dengan pakaian tradisional Saudi Arabia, menikmati sajian kurma, termasuk pembagian Al Quran yang kuotanya telah habis dibagikan kepada pengunjung Pekan Kebudayaan pada hari ini. Dengan demikian, tidak akan ada pembagian Al Quran pada hari penutupan, Rabu, 30 Maret 2016, yang akan berakhir pada pukul 15.00.\r\n<br><br>\r\nDi luar itu, pihak Kedutaan Besar Kerajaan Arab Saudi berencana mewakafkan Al Quran lainnya ke yayasan di Jakarta. “Kami akan mendistribusikan Al Quran tersebut melalui lembaga yang telah ditunjuk,” tutur Umar Aqil, pengawas umum penyelenggara Pekan Kebudayaan Saudi Arabia												', 'Jl. Medan Merdeka Barat No.12, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10110'),
(4, 'Pameran Sejarah Asian Games', '2018-08-18', 'event', 'eedd75531d984b231b01b1966274ab01.jpg', '														Sejarah Asian Games dimulai dari digelarnya Asian Games pertama pada tahun 1951 di New Delhi, India dan pertama kali di Indonesia pada tahun 1962. Tahun 1962, tercatat sebagai Asian Games pertama bagi Indonesia sebagai tuan rumah. Perhelatan yang berlangsung 24 Agustus sampai dengan 4 September 1962 dibuka secara resmi oleh Presiden Soekarno di Stadion Gelora Bung Karno. Diikuti 1.460 atlet yang mewakili 17 NOC Asia, multi event ini menampilkan 13 cabang olahraga; atletik, akuatik (renang, loncat indah, dan polo air), bola basket, tinju, balap sepeda (jalan raya dan trek), hoki, sepak bola, menembak, tenis meja, tenis, bola voli, dan gulat. Asian Games 1962 ini memperebutkan 372 medali emas.\r\n<br><br>\r\nPAMERAN SEJARAH ASIAN GAMES : OLAHRAGA DAN PEMBANGUNAN ETOS BANGSA “ENERGI YANG TAK PERNAH PADAM” – MUSEUM NASIONAL INDONESIA [18-28 AGUSTUS 2018]\r\n<br><br>\r\nAsean Games ke 18 secara resmi baru akan dibuka nanti malam pada pukul 19.00 WIB, gegap gempita masyarakat dalam menyambut Asian Games mulai terlihat di seluruh Jakarta. Asian Games merupakan perhelatan akbar olahraga di Asia setelah pada tahun 1962 Indonesia menjadi tuan rumah, tahun 2018 Indonesia kembali dipercaya menjdi tuan rumah Asian Games ke 18 yang akan melibatkan dua kota sebagai penyelenggara yaitu Jakarta dan Palembang.\r\n<br><br>\r\nSebagai bangsa Indonesia patut berbangga pada keikutsertaannya di tahun 1962 Indonesia berhasil duduk diperingkat 2 dengan raihan 52 medali setelah Jepang. Rakyat berharap Indonesia bisa kembali mengukir sejarah terbaiknya di gelanggang Asian Games tahun ini, dukungan mengalir dari setiap warga negara, instansi, komunitas dan elemen masyarakat lainnya.												', '														<p>							<u>MINIMUM CONFIGURATION</u></p><p>OS: Windows 7 SP1, Windows 8.1, Windows 10 (64-bit versions only)</p><p>PROCESSOR: Intel Core i5-2400s @ 2.5 GHz or AMD FX-6350 @ 3.9 GHz or equivalent</p><p>VIDEO CARD: NVIDIA GeForce GTX 660 or AMD R9 270 (2048 MB VRAM with Shader Model 5.0 or better)</p><p>SYSTEM RAM: 6GBResolution: 720pVideo Preset: Lowest</p><p><br></p><p><u>RECOMMENDED CONFIGURATION</u></p><p>OS: Windows 7 SP1, Windows 8.1, Windows 10 (64-bit versions only)</p><p>PROCESSOR: Intel Core i7- 3770 @ 3.5 GHz or AMD FX-8350 @ 4.0 GHz</p><p>VIDEO CARD: NVIDIA GeForce GTX 760 or AMD R9 280X (3GB VRAM with Shader Model 5.0 or better)</p><p>SYSTEM RAM: 8GBResolution: 1080pVideo Preset: High						</p>												'),
(5, 'LCC Museum tingkat nasional', '2018-09-03', 'news', '8342b5be04032d7991ac80556344cc49.jpg', '														Jakarta, 3/09/2018: Cerdas Cermat Museum dilaksanakan. Rangkaian kegiatan dimulai dengan kedatangan para peserta dari berbagai Provinsi di Museum Nasional pukul 08.00 WIB untuk melakukan registrasi terlebih dahulu, setelah itu para peserta melakukan kegiatan observasi museum untuk menambah pengetahuan tentang Permuseuman.\r\n<br><br>\r\nSebelum acara dimulai terlebih dahulu dilaksanakan Seminar Motivasi oleh Ibu Aivy Fauziyah kepada para peserta Lomba Cerdas Cermat 2018, dengan memberikan motivasi agar peserta lebih percaya diri dan juga berani untuk mengungkapkan pendapatnya di depan umum. Kemudian sebelum Pembukaan Lomba Cerdas Cermat dilaksanakan, acara diisi dengan menyanyikan lagu Indonesia Raya, tari-tarian tradisional dari peserta yang berbakat dari kalimantan Selatan.\r\n<br><br>\r\n- Para peserta saling menyemangati peserta lainnya dalam seminar Motivasi<br>\r\n- Para peserta saling menyemangati peserta lainnya dalam seminar Motivasi<br><br>\r\nLomba Cerdas Cermat Museum resmi dibuka oleh Drs. Siswanto, MA selaku Kepala Museum Nasional yang mewakili Direktur Jenderal Kebudayaan, Hilmar Farid yang tidak dapat menghadiri kegiatan Lomba Cerdas Cermat Museum 2018.\r\n<br><br>\r\nSetelah diresmikan kegiatan dilanjutkan dengan Technical Meeting, para Peserta dan guru pembimbing yang dimana Dewan Juri memberikan penjelasan mengenai tata cara dan peraturan lomba, guru pembimbing diperbolehkan bertanya mengenai apa yang sudah disampaikan pada Technical Meeting.\r\n<br><br>\r\nSalah satu kontingen provinsi mengambil undian grup Lomba Cerdas Cermat Museum SMP/MTs Tingkat Nasional\r\nSalah satu kontingen provinsi mengambil undian grup Lomba Cerdas Cermat Museum SMP/MTs Tingkat Nasional\r\nSelanjutnya, rangkaian kegiatan terakhir adalah menentukan skema Lomba Cerdas Cermat Museum dimana peserta masing-masing Provinsi dipersilahkan untuk mengambil undian secara acak untuk menentukan grup dan lawan dengan hasil sebagai berikut:\r\n<br><br>\r\n- Grup A: provinsi Banten, provinsi Lampung, provinsi Aceh dan provinsi Nusa Tenggara Barat\r\n<br>\r\n- Grup B: provinsi Sulawesi Tengah, Sulawesi Utara, provinsi Riau\r\n<br>\r\n- Grup C: provinsi Jawa Timur, provinsi Jawa Tengah, provinsi Jambi\r\n<br>\r\n- Grup D: provinsi Sulawesi Selatan, provinsi Nusa Tenggara Timur, provinsi Sumatera Selatan\r\n<br>\r\n- Grup E: provinsi DKI Jakarta, provinsi Jawa Barat, provinsi Maluku\r\n<br>\r\n- Grup F: provinsi Kalimantan Tengah, provinsi Sulawesi Barat, provinsi Sumatera Barat\r\n<br>\r\n- Grup G: provinsi Sulawesi Tenggara, provinsi Kepulauan Riau, provinsi Kalimantan Selatan\r\n<br>\r\n- Grup H: provinsi Kalimantan Timur, provinsi Bengkulu, provinsi DI Yogyakarta\r\n<br>\r\n- Grup I: provinsi Kalimantan Barat, provinsi Sumatera Utara, provinsi Bali\r\n<br><br>\r\nTanggal 4 September akan dilaksanakan babak penyisihan grup hingga babak Semi Final, kemudian akan dilanjutkan kembali pada tanggal 5 September untuk Babak Final. Siapakah yang akan membawa pulang Piala Menteri Pendidikan dan Kebudayaan, kita saksikan bersama.												', 'Jl. Medan Merdeka Barat No.12, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10110'),
(6, 'Persiapan Qatar Indonesia Year of Culture 2023', '2021-01-25', 'news', '9023e81feccad374c8f41218f49491e3.jpg', '														Jakarta, 25/01/2021. Qatar Year of Culture, acara tahunan Qatar Museums Authority (QMA)yang diselenggarakan sejak tahun 2012, akan hadir kembali dengan fokus pada pertukaran budaya di tahun 2023. Kegiatan ini hadir dengan tujuan untuk mengenalkan budaya Qatar kepada dunia melalui berbagai pameran, festival, kompetisi, dan acara untuk mengapresiasi dan mengeksplorasi persamaan dan perbedaan budaya antar negara. Beberapa negara yang pernah menjadi mitra dalam kegiatan ini antara lain Jepang (2012), Inggris (2013), Brazil (2014), Turki (2015), China (2016), Russia (2017), Jerman (2018), dan India (2019).\r\n<br><br>\r\nTentunya, hal ini menjadi sebuah kehormatan dan kebanggaan bagi Indonesia, karena ditunjuk sebagai negara mitra (partner country) dalam penyelenggaraan Qatar Year of Culture (YC) 2023. Qatar Museums Authority (QMA) merupakan sebuah lembaga pemerintah Qatar yang membawahi 8 museum besar di Qatar, tentunya sangat selektif dalam memilih mitra, terbukti dengan negara-negara yang pernah terlibat didalamnya. Indonesia dipilih karena berbagai pertimbangan, salah satunya adalah keanekaragaman dan potensi yang dimiliki Indonesia, baik secara budaya maupun sosial ekonomi.\r\n<br><br>\r\nKegiatan ini rencananya akan berjalan sepanjang tahun dan akan melibatkan sejumlah lembaga kebudayaan di Indonesia, salah satunya adalah Museum Nasional. Hal ini ungkapkan oleh pihak KBRI Doha kepada pihak Museum Nasional dalam rapat yang diselenggarakan secara online pada tanggal 17 september 2020 lalu. Ada beberapa hal yang dibahas bersama oleh kedua belah pihak, dalam hal ini mencakup rencana penyelenggaraan kegiatan bersama seperti seminar dan pameran, serta penyampaian niat untuk dan ketertarikan untuk bekerja sama dengan Museum Nasional dalam jangka panjang.\r\n<br><br>\r\nRencana kerjasama ini mendapatkan respon baik dari pihak museum, mengingat kegiatan ini sejalan dengan visi Museum Nasional untuk menjadi Museum Kebudayaan Indonesia bertaraf internasional. Tak hanya itu, Museum Nasional juga memiliki misi untuk menjadi museum yang berkualitas, baik dalam hal pengelolaan koleksi, sarana edukasi dan rekreasi, maupun tata kelola dengan keterlibatan publik.\r\n<br><br>\r\nPada 15 Desember 2020 lalu, pertemuan secara daring kembali dilaksanakan, dihadiri Duta Besar RI untuk Qatar, Direktur Jenderal Kebudayaan, Plt. Kepala Museum Nasional, Direktur Pembinaan Tenaga dan Lembaga Kebudayaan (PLTK), sedangkan dari pihak Qatar dihadiri oleh Direktur Qatar National Museum, Project Manager Indonesia-Qatar Year of Culture 2023. Rapat ini juga dihadiri oleh beberapa pejabat serta staf institusi dari kedua negara. Berdasarkan pertemuan tersebut, ada beberapa hal yang telah disimpulkan dan ditindaklanjuti, antara lain penentuan focal point dari Museum Nasional, penentuan tim teknis kedua belah pihak, identifikasi waktu dan agenda rapat selanjutnya, serta penyusunan Perjanjian Kerjasama (MoU).\r\n<br><br>\r\nRapat daring ini kembali dilaksanakan pada tanggal 18 Januari 2021. Ibu Sri Hartini, Plt Kepala Museum Nasional, menginisiasi rapat ini untuk menindaklanjuti pertemuan sebelumnya. Dalam pertemuan kali ini, Direktur Jenderal Kebudayaan RI memberikan arahan untuk menindaklanjuti dan mengkoordinasikan ke Museum Nasional mengenai tema dan konten yang sesuai untuk dibawa ke Qatar. Duta Besar Republik Indonesia di Doha Qatar dan Museum Qatar berharap, Museum Nasional dapat memamerkan budaya Indonesia di Qatar Year of Culture 2023.\r\n<br><br>\r\nDari pertemuan tersebut peserta rapat mencapai kesepakatan untuk membuat tim kecil penelitian. Tim ini dibentuk dengan untuk menemukan irisan budaya antara Qatar dan Indonesia secara historis, sehingga dari salah satu sub tema pameran, produk seni kreatif atau seni rupa ada tali ada benang merah yang menunjukkan hubungan budaya Qatar dan Indonesia. Selain itu, Sekretariat Direktorat Jenderal Kebudayaan akan mengundang narasumber dari Timur Tengah, yang nantinya akan direkomendasikan oleh Kementerian Luar Negeri RI, sehingga akan memiliki referensi  kultur Qatar dan sajian dalam pameran nantinya sesuai kebutuhan di Qatar.\r\n<br><br>\r\nDengan adanya rencana kerjasama ini, kedua pihak berharap agar kegiatan akan berjalan sesuai harapan, tentunya dengan persiapan yang matang dari pihak Indonesia, Museum Nasional dan Direktorat Jenderal Kebudayaan yakin bahwa kegiatan ini memiliki potensi yang besar sebagai sarana promosi budaya, ekonomi, dan investasi Indonesia yang harus dimanfaatkan dengan maksimal.												', 'Jl. Medan Merdeka Barat No.12, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10110');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$WrpzAdTSWBCIB8mBheWkLuGMjsvcGXg03EwNuJ4LxWyHVS22SlmQ6', '1'),
(7, 'test', '2018marcel@student.unas.ac.id', '$2y$10$Gra7O750bJm94IxlUgTvWeOPeBkCFBdFakArVaFG2Yv2sUR.E9x4a', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
