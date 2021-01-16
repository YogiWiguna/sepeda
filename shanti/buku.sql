-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2021 pada 06.39
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `role` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `password`, `role`) VALUES
(180030700, 123, 0),
(180030710, 456, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_buku`
--

CREATE TABLE `t_buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_buku`
--

INSERT INTO `t_buku` (`id`, `judul`, `isi`) VALUES
(4, 'LASKAR PELANGI', 'Laskar Pelangi merupakan sebuah judul novel karya ANDREA HIRATA yang terbit pada tahun 2005. Novel yang akhirnya di-film-kan  bahkan yang terakhir dibuat menjadi sebuah drama musikal yang manggung di sejumlah kota besar di indonesia. Laskar Pelangi ini menceritakan tentang kisah 10 orang anak keluarga miskin di Belitung yang mengenyam pendidikan di SD dan SMP Muhammadiyah dengan segala keterbatasan yang ada.\r\n \r\nKisah ini dimulai dengan adanya ancaman dari Dinas Pendidikan (yang saat itu masih berbentuk Depdikbud) setempat untuk menutup sekolah mereka bila jumlah murid tidak mencapai 10 orang. Warga desa Gantung, Belitung Timur memang masih memiliki kesadaran yang rendah untuk urusan pendidikan. Hingga pada akhirnya Harun lah yang menjadi murid ke-10 dan sekolah mereka tersebut batal untuk ditutup.\r\n \r\nHari - hari Ikal, Lintang, Sahara, Mahar, A Kiong, Syahdan, Kucai, Borek, Trapani, dan Harun diisi dengan berbagai kegiatan yang sangat menyenangkan karena ternyata banyak sekali hal-hal luar biasa yang ada dalam diri mereka. Segala keterbatasan fasilitas dan keadaan tidak membuat mereka menjadi patah semangat, bahkan mereka semua menjadi terpacu untuk berprestasi.\r\n \r\nPrestasi mereka tidak pernah luput dari peran serta Bu Muslimah, seorang guru yang pantang menyerah dan berdedikasi penuh terhadap kemajuan anak didiknya. Kesabaran Bu Muslimah tersebut memang terbukti tidak sia - sia. Bu Muslimah jugalah yang memberikan nama Laskar Pelangi. Sebuah nama yang diambil berdasarkan kesukaan anak didiknya terhadap pelangi.\r\n \r\nKisah laskar pelangi ini memang layak menjadi contoh serta suri tauladan bagi semua pelajar di Indonesia, terutama pelajar di kota besar yang berlimpah aneka fasilitas pendidikannya. Laskar pelangi mampu membuktikan bahwa prestasi tidak hanya milik pelajar kota. Setiap anak berhak untuk dapat mengenyam pendidikan, bahkan dalam kondisi terburuk sekalipun. Kisah ini juga bisa menjadi pemacu bagi para tenaga pendidik untuk selalu bisa berdedikasi penuh kepada tugas yang diembannya tanpa melihat kekurangan fasilitas serta pantang menyerah terhadap segala rintang dan hambatan yang mungkin terjadi.'),
(5, 'SANG PEMIMPI', ' Arai adalah sepupu jauh dari Ikal. Ia sudah tidak punya keluarga lagi setelah ayahnya meniggal dunia, sejak itu Arai tinggal bersama dengan keluarga Ikal. Betapa kuat hati Simpa Keramat ini, begitulah julukan dari orang Melayu untuk seseorang yang hanya hidup sebatang kara dan tidak memiliki keluarga lagi.\r\n\r\nSore harinya, Arai dan Ikal menuju pasar untuk membeli beras. Semua uang yang mereka miliki dimasukkan ke dalam karung gandum. Di pasar, terlihat Mak Cik Maryamah pemain biola yang sudah tua. Arai memerintahkan Ikal untuk mengumpulkan semua uang itu. Ikal mengira Arai akan memberikan semua uang itu kepada Mak Cik Maryamah tetapi tanpa disangka oleh Ikal, Arai menuju pasar. Ia membeli terigu, gula dan lain – lain. Akhirnya semua bahan bahan itu diberikkan pada Mak Cik.\r\n\r\nDi masjid pula Ikal dan Arai mengenal Jimbron yang gagapnya bukan main dan sangat gila kuda. Jimbron juga sama seperti Arai, hidup sebatang kara dan tidak punya saudara lagi. Sebetulnya, beliau adalah seorang pastor karena beliau seorang Katolik, tapi kami memanggilnya Pendeta Geovanny. Rupanya setelah sebatang kara seperti Arai, ia menjadi anak asuh sang pendeta.\r\n\r\nPendeta berdarah Italia itu tak sedikit pun bermaksud mengonversi keyakinan Jimbron. Beliau malah tak pernah telat jika mengantarkan Jimbron mengaji ke masjid. Keheranan mereka yang kedua adalah Jimbron sangat menyukai kuda. Kata orang-orang, ini berhubungan dengan sebuah film di televisi balai desa yang ditonton Jimbron seminggu sebelum ayahnya wafat.\r\n\r\nJimbron adalah pemuda yang mudah mengantuk tapi jika sedikit saja ia mendengar tentang kuda, maka telinga layunya sontak berdiri. Jimbron segera menjadi pencinta kuda yang fanatik. Pernah suatu hari Taikong Hamin marah besar karena di dalam buku TPA-nya hanya terdapat kuda, Taikong pun menghukum dia dengan cara berlagak seperti kuda.\r\n\r\nSetelah mereka tamat SMP mereka melanjutkan tingkat SMA. Mereka juga bekerja menjadi kuli bangunan yang hanya di gaji dengan sebungkus mie instan tiap hari sebagai makan siang. Kadang mereka juga bekerja sambilan yaitu sebagai penjaga tempat golf. Mereka juga pernah bekerja sebagai part time office boy di kompleks kantor, hanya saja gaji mereka bisa telat berbulan.\r\n\r\nSuatu ketika ketika Ikal berlari pulang sekolah, tiba – tiba dia berhenti di depan restoran mie rebus di sana ia melihat dirinya sendiri, Arai dan Jimbron sedang bekerja mencuci piring – piring kotor. Ketika berlari kembali, tiba – tiba ia juga melihat 3 orang yang sama menjadi kernet. Ikal begitu kaget dan langsung berlari pulang karena ia melihat orang lain menjelma menjadi dirinya dan 2 orang sahabatnya.\r\n\r\nSemangat Ikal seakan surut untuk melanjutkan sekolah karena pada akhirnya ia akan seperti apa yang dia lihat di resoran maupun tempat lain. Ikal menjadi malas belajar dan sangat pesimis dalam kehidupannya. Karena pikiran yang pesimis dan malas belajar itulah ia mempersembahkan kusir nomer 75 bagi ayahnya. Sungguh sangat megecewakan, tetapi walau demikian ayah Ikal tetaplah bangga pada anaknya.\r\n\r\nMaka pada saat beliau mengambil rapot, beliau tetap seperti biasnya dengan ritual yang telah sudah lama beliau lakukan. Sungguh sangat perih hati Ikal, dengan sikap pesimisnya ia tertpuruk pada urutun 75. Ikal pun tak kaget jika nanti ayahnya tidak datang, dan Arai pun marah padanya. Tapi ayah Ikal datang dan seperti biasanya ia kemudian mengambil rapot dan langsung pulang. Arai dengan emosinya memarahi Ikal karena telah mengecewakan ayahnya.\r\n\r\nSetelah sekian lama berkerja sebagai tukang sortir, Ikal kembali rindu dengan teman sekaligus sepupu jauhnya, Arai. Tahun – tahun berlalu, sampai akhirnya Ikal bisa kuliah di UI. Pada saat kuliah di UI itulah Ikal bertemu dengan Nurmala.setelah perbincangan yang cukup hangat dengan Nurmala, tanpa diduga oleh Ikal Nurmala tiba – tiba menanyakan kabar Arai. Cukup bingung Ikal menjawab pertanyaan itu, tapi pada akhirnya Ikal bisa mengatasinya. Setelah lulus kuliah Ikal mengetahui bahwa ada pengumuman beasiswa stata dua, tanpa pikir panjang Ikalpun mencoba mengikuti tes untuk mendapatkan beasiswa itu.\r\n\r\nHari Wawancara pun tiba begitugugup Ikal karena saingan Ikal adalah tamatan mahasiswa yangcukup pintar – pintar. Tidak disangka pula riset yang dilakukan Ikal mendapat pujian yang sangat bagusdari seorang Profesor. Selepas Ikal keluar dari ruangan pewawancara dia kemudianmendengar suara yang cukup dia kenal. Tanpa diduga pula bahawa itu memang suara Arai, sungguh tak disangka setelah sekian lama tak bertemu akhirnya Ikal bertemu dengan Arai yang juga sedang mengajukan beasiswa untuk kuliah di Eropa.\r\n\r\nSetelah sekian lama tak pulang ke Belitong kali ini Ikal dan Arai pulang kembali ke kampung halamanya. Mereka bertemu Jimbron yangsudah menikah dengan Laksmi dan mempuyai anak. Malamnya Ikal berjalan – jalan untuk menikmatisuasana yang telah lama ia rindukan. Waktu yang dinanti – nanti tiba, surat pengumuman beasiswa akhirnya tiba. Perlahan – lahan Ikal mulai membuka surat itu dan didapatinya ia lulus tes dan akan kuliah di Paris di Univesite de Paris, Sorbonne, Prancis begitu juga dengan Arai.'),
(6, 'PERAHU KERTAS', 'Kisah ini dimulai dengan Keenan, seorang remaja pria yang baru lulus SMA, yang selama enam tahun tinggal di Amsterdam bersama neneknya. Keenan memiliki bakat melukis yang sangat kuat, dan ia tidak punya cita-cita lain selain menjadi pelukis, tapi perjanjiannya dengan ayahnya memaksa ia meninggalkan Amsterdam dan kembali ke Indonesia untuk kuliah. Keenan diterima berkuliah di Bandung, di Fakultas Ekonomi.\r\n \r\nDi sisi lain, ada Kugy, cewek unik cenderung eksentrik, yang juga akan berkuliah di universitas yang sama dengan Keenan. Sejak kecil, Kugy menggila-gilai dongeng. Tak hanya koleksi dan punya taman bacaan, ia juga senang menulis dongeng. Cita-citanya hanya satu: ingin menjadi juru dongeng. Namun Kugy sadar bahwa penulis dongeng bukanlah profesi yang meyakinkan dan mudah diterima lingkungan. Tak ingin lepas dari dunia menulis, Kugy lantas meneruskan studinya di Fakultas Sastra\r\n\r\n Kugy dan Keenan dipertemukan lewat pasangan Eko dan Noni. Eko adalah sepupu Keenan, sementara Noni adalah sahabat Kugy sejak kecil. Terkecuali Noni, mereka semua hijrah dari Jakarta, lalu berkuliah di universitas yang sama di Bandung.Mereka berempat akhirnya bersahabat karib.\r\n \r\nLambat laun, Kugy dan Keenan, yang memang sudah saling mengagumi, mulai mengalami transformasi. Diam-diam, tanpa pernah berkesempatan untuk mengungkapkan, mereka saling jatuh cinta. Namun kondisi saat itu serba tidak memungkinkan. Kugy sudah punya kekasih, cowok mentereng bernama Joshua, alias Ojos (panggilan yang dengan semena-mena diciptakan oleh Kugy). Sementara Keenan saat itu dicomblangkan oleh Noni dan Eko dengan seorang kurator muda bernama Wanda.\r\n \r\n Persahabatan empat sekawan itu mulai merenggang. Kugy lantas menenggelamkan dirinya dalam kesibukan baru, yakni menjadi guru relawan di sekolah darurat bernama Sakola Alit. Di sanalah ia bertemu dengan Pilik, muridnya yang paling nakal. Pilik dan kawan-kawan berhasil ia taklukkan dengan cara menuliskan dongeng tentang kisah petualangan mereka sendiri, yang diberinya judul: Jenderal Pilik dan Pasukan Alit. Kugy menulis kisah tentang murid-muridnya itu hampir setiap hari dalam sebuah buku tulis, yang kelak ia berikan pada Keenan.\r\n\r\nKedekatan Keenan dengan Wanda yang awalnya mulus pun mulai berubah. Keenan disadarkan dengan cara yang mengejutkan bahwa impian yang selama ini ia bangun harus kandas dalam semalam. Dengan hati hancur, Keenan meninggalkan kehidupannya di Bandung, dan juga keluarganya di Jakarta. Ia lalu pergi ke Ubud, tinggal di rumah sahabat ibunya, Pak Wayan.\r\n\r\nMasa-masa bersama keluarga Pak Wayan, yang semuanya merupakan seniman-seniman sohor di Bali, mulai mengobati luka hati Keenan pelan-pelan. Sosok yang paling berpengaruh dalam penyembuhannya adalah Luhde Laksmi, keponakan Pak Wayan. Keenan mulai bisa melukis lagi. Berbekalkan kisah-kisah Jenderal Pilik dan Pasukan Alit yang diberikan Kugy padanya, Keenan menciptakan lukisan serial yang menjadi terkenal dan diburu para kolektor.\r\n\r\nKugy, yang juga sangat kehilangan sahabat-sahabatnya dan mulai kesepian di Bandung, menata ulang hidupnya. Ia lulus kuliah secepat mungkin dan langsung bekerja di sebuah biro iklan di Jakarta sebagai copywriter. Di sana, ia bertemu dengan Remigius, atasannya sekaligus sahabat abangnya. Kugy meniti karier dengan cara tak terduga-duga. Pemikirannya yang ajaib dan serba spontan membuat ia melejit menjadi orang yang diperhitungkan di kantor itu.\r\n\r\nNamun Remi melihat sesuatu yang lain. Ia menyukai Kugy bukan hanya karena ide-idenya, tapi juga semangat dan kualitas unik yang senantiasa terpancar dari Kugy. Dan akhirnya Remi harus mengakui bahwa ia mulai jatuh hati. Sebaliknya, ketulusan Remi juga akhirnya meluluhkan hati Kugy.\r\n\r\nSayangnya, Keenan tidak bisa selamanya tinggal di Bali. Karena kondisi kesehatan ayahnya yang memburuk, Keenan terpaksa kembali ke Jakarta, menjalankan perusahaan keluarganya karena tidak punya pilihan lain.\r\n\r\nPertemuan antara Kugy dan Keenan tidak terelakkan. Bahkan empat sekawan ini bertemu lagi. Semuanya dengan kondisi yang sudah berbeda. Dan kembali, hati mereka diuji. Kisah cinta dan persahabatan selama lima tahun ini pun berakhir dengan kejutan bagi semuanya. Akhirnya setiap hati hanya bisa kembali pasrah dalam aliran cinta yang mengalir entah ke mana. Seperti perahu kertas yang dihanyutkan di parit, di empang, di kali, di sungai, tapi selalu bermuara di tempat yang sama. Meski kadang pahit, sakit, dan meragu, tapi hati sesungguhnya selalu tahu.\r\n\r\nDiwarnai pergelutan idealisme, persahabatan, tawa, tangis, dan cinta, “Perahu Kertas” tak lain adalah kisah perjalanan hati yang kembali pulang menemukan rumahnya.'),
(7, '5 CM', 'Merupakan 5 anak muda, Zafran, Riani, Arial, Genta, dan Ian yang terikat dalam jalinan erat persahabatan. Dan kelimanya jenuh dengan rutinitas pertemanan mereka selama ini.\r\n\r\nSetelah selama sepuluh tahun tak satu malam minggu pun yang tak dilewatkan bersama. Tak satu pun dari mereka pernah melewatkan berbagai momen kebahagiaan yang tengah dirasakan satu dan yang lainnya. Dari sering nongkrong bareng hingga merayakan wisuda.\r\n\r\nSuatu ketika Genta, mengusulkan agar ia dan masing-masing dari mereka berhenti untuk saling berkomunikasi selama tiga bulan. Tujuannya cuma satu, yakni menghidupkan kembali ikatan ia dan keempat sahabatnya dalam jalinan pertemanan yang telah lama mereka bina.\r\n\r\nSelama tiga bulan berpisah penuh kerinduan, banyak yang terjadi dalam kehidupan mereka berlima, sesuatu yang mengubah diri mereka masing-masing untuk lebih baik dalam menjalani kehidupan. Setelah tiga bulan berselang mereka berlima pun bertemu kembali dan merayakan pertemuan mereka dengan sebuah perjalanan penuh impian dan tantangan. Sebuah perjalanan hati demi mengibarkan sang saka merah putih di puncak tertinggi Jawa pada tanggal 17 Agustus. Sebuah perjalanan penuh perjuangan yang membuat mereka semakin mencintai Indonesia. Petualangan dalam kisah ini, bukanlah petualangan yang menantangadrenalin, demi melihat kebesaran sang Ilahi dari atas puncak gunung. Tapi petualangan ini, juga perjalanan hati. Hati untuk mencintai persahabatan yang erat, dan hati yang mencintai negeri ini.\r\n\r\nSegala rintangan dapat mereka hadapi, karena mereka memiliki impian. Impian yang ditaruh 5cm dari depan kening.'),
(8, 'pelangi', 'dssfewf');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `t_buku`
--
ALTER TABLE `t_buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_buku`
--
ALTER TABLE `t_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
