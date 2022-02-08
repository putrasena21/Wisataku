-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 05:49 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisataku`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(3) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `email_admin` varchar(25) NOT NULL,
  `pass_admin` varchar(16) NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `email_admin`, `pass_admin`, `last_login`) VALUES
(1, 'faisal khoirudin', 'super@gmail.com', 'admin', '2021-06-06 22:25:57'),
(4, 'doni', 'doni@mail.com', 'doni123', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(3) NOT NULL,
  `id_wisata` int(3) NOT NULL,
  `id_trans` int(3) NOT NULL,
  `tgl_kunjung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `id_wisata`, `id_trans`, `tgl_kunjung`) VALUES
(18, 37, 36, '2021-06-06'),
(19, 37, 38, '2021-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trans` int(3) NOT NULL,
  `id_user` int(3) NOT NULL,
  `total_harga` double NOT NULL,
  `jumlah_pengunjung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_trans`, `id_user`, `total_harga`, `jumlah_pengunjung`) VALUES
(36, 1, 200000, 1),
(37, 1, 1000000, 5),
(38, 1, 400000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `email_user` varchar(25) NOT NULL,
  `pass_user` varchar(16) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email_user`, `pass_user`, `no_telp`) VALUES
(1, 'faisal', 'putrasena21@gmail.com', 'admin', '082141094350'),
(2, 'faisal', 'fais@mail.com', '123', '00000077678');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(3) NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `harga_weekend` double NOT NULL,
  `harga_weekday` double NOT NULL,
  `deskripsi` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `harga_weekend`, `harga_weekday`, `deskripsi`, `thumbnail`) VALUES
(37, 'Jatim Park 1', 200000, 150000, '<p style=\"margin-bottom: 0px; padding-top: 7px; padding-bottom: 7px; line-height: 1.9; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif; text-align: justify;\"><span style=\"font-weight: 700;\">Jawa Timur Park 1</span>&nbsp;atau yang biasa disebut Jatim Park 1 merupakan salah satu tempat rekreasi dan taman belajar yang terdapat di Kota Batu, Jawa Timur Indonesia. Obyek wisata ini berada sekitar 20 km dari arah barat Kota Malang, dan kini menjadi salah satu&nbsp;<em>icon</em>&nbsp;wisata terkenal di daerah Kota Malang bahkan Se-Jawa Timur.&nbsp;<em>Jawa Timur Park 1</em>&nbsp;memiliki lebih dari 50 wahana yang seru dan tentunya menarik, diantaranya kolam renang raksasa (dengan latar belakang patung Mpu Gandring, Ken Arok, dan Ken Dedes), spinning coaster, drop zone, jet cooster, dan masih banyak wahana lainnya yang patut Anda coba.</p><p style=\"margin-bottom: 0px; padding-top: 7px; padding-bottom: 7px; line-height: 1.9; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif; text-align: justify;\">Ada banyak wahana pendidikan&nbsp;<span style=\"text-decoration-line: underline;\">Jawa Timur Park</span>&nbsp;yang menjadi pusat perhatian diantaranya adalah Volcano, Galeri Nusantara Science Center Kimia &amp; Biologi, Outdoor Science Center, Amazing Human Body, Anjungan Jatim &amp; Irian Jaya, diorama binatang langka, sains dan miniatur candi-candi dll. Dengan memadukan secara serasi konsep pendidikan (Education) dan konsep pariwisata (Tourism) membuat objek wisata yang satu ini menjadi primadona wisata di Kota Batu. Telah terbukti&nbsp; bahwa&nbsp;<span style=\"font-weight: 700;\">Jawa Timur Park 1 Malang</span>&nbsp;merupakan objek wisata yang tidak hanya untuk objek liburan keluarga tetapi juga dapat belajar bersama di wahana pendidikan yang telah disediakan. Untuk info lengkap mengenai wahana permainan dan fasilitas yang terdapat di Jawa Timur Park 1, Anda bisa melihat secara detail di halaman â€œ<a title=\"Permain dan fasilitas jawa timur park 1\" href=\"https://www.malang-guidance.com/wahana-permainan-dan-fasilitas-jawa-timur-park-1/\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(39, 170, 197); transition: color 0.2s ease 0s; outline: 0px;\">Wahana Permainan dan</a><a title=\"Permain dan fasilitas jawa timur park 1\" href=\"https://www.malang-guidance.com/wahana-permainan-dan-fasilitas-jawa-timur-park-1/\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(39, 170, 197); transition: color 0.2s ease 0s; outline: 0px;\">&nbsp;Fasil</a><a title=\"Permain dan fasilitas jawa timur park 1\" href=\"https://www.malang-guidance.com/wahana-permainan-dan-fasilitas-jawa-timur-park-1/\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(39, 170, 197); transition: color 0.2s ease 0s; outline: 0px;\">itas</a><a title=\"Permain dan fasilitas jawa timur park 1\" href=\"https://www.malang-guidance.com/wahana-permainan-dan-fasilitas-jawa-timur-park-1/\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(39, 170, 197); transition: color 0.2s ease 0s; outline: 0px;\">&nbsp;JP 1</a>â€œ</p>', 'ca6fe88203e61d086379676c45fd9c7d.jpg'),
(38, 'Jatim Park 2', 150000, 100000, '<p><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 13.3333px;\">Jatim Park 2 yang letaknya dekat dengan Jatim Park 1 dan BNS, tepatnya di Jl Oro-Oro Ombo No 9 Kota Batu, dirancang sebagai wahana wisata untuk keluarga. Objek Wisata yang berada sekitar 20 km barat Kota Malang itu kini menjadi salah satu ikon wisata Jawa Timur. Jatim Park 2 memiliki 36 wahana, di antaranya kolam renang raksasa dengan latar belakang patung Ken Dedes, Ken Arok, dan Mpu Gandring, spinning coaster, dan drop zone.</span><br style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 13.3333px;\"><br style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 13.3333px;\"><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 13.3333px;\">Lokasinya yang begitu luas di atas tanah 14 hektare, Jatim Park2 termasuk tempat wisata yang cukup lengkap. Terbagi dalam tiga area, yaitu Batu Secret Zoo, Museum Satwa, dan Tree Hotel, Jatim Park 2 tak sekadar sebagai tempat berlibur tapi juga wahana belajar sesuai moto yang diusungnya Pembelajaran Satwa dan Rekreasi.</span><br></p>', 'ab8a2bd1ad57fb787486e17582ce8853.jpg'),
(39, 'Jatim Park 3', 250000, 200000, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif;\">Dari wahana sebelumnya yaitu Jatim Park 1 yang menawarkan permainan, pengetahuan hingga hiburan dan Jatim Park 2 dengan kemegahan dari Museum Satwa serta Secret Zoonya, Jatim Park kini menghadirkan wahana menarik buatan berupa replika Dinosaurus.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif;\">Jatim Park 3 berada di desa&nbsp;<a href=\"https://id.wikipedia.org/wiki/Beji,_Junrejo,_Batu\" title=\"\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Beji, Kecamatan Junrejo, Kota Batu</a>. Jatim Park 3 mengusung konsep taman bermain sekaligus edukasi mengenai hewan-hewan purbakala termasuk Dinosaurus. Taman Wisata Dinosaurus Jatim Park 3 juga dilengkapi dengan&nbsp;<i>food court</i>&nbsp;di sekitar area yang menyajikan aneka masakan tradisional, eropa, jajanan ringan dan minuman segar.</p>', '12f910c10ae026fd2f43802136377dbf.jpg'),
(40, 'Museum Angkut', 300000, 250000, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#000000\">Museum AngkutÂ merupakan museum transportasi dan tempat wisata modern yang terletak diÂ <a href=\"https://id.wikipedia.org/wiki/Kota_Batu\" title=\"Kota Batu\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Kota Batu</a>,Â <a href=\"https://id.wikipedia.org/wiki/Jawa_Timur\" title=\"Jawa Timur\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Jawa Timur</a>,Â sekitar 20Â km dariÂ <span style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Kota Malang</span>. Museum ini terletak di kawasan seluas 3,8 hektar di lerengÂ <a href=\"https://id.wikipedia.org/wiki/Gunung_Panderman\" title=\"Gunung Panderman\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Gunung Panderman</a>Â dan memiliki lebih dari 300 koleksi jenis angkutan tradisional hingga modern. Museum ini terbagi dalam beberapa zona yang didekorasi denganÂ setting landscapeÂ model bangunan dari benuaÂ <a href=\"https://id.wikipedia.org/wiki/Asia\" title=\"Asia\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Asia</a>,Â <a href=\"https://id.wikipedia.org/wiki/Eropa\" title=\"Eropa\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Eropa</a>Â hinggaÂ <a href=\"https://id.wikipedia.org/wiki/Amerika\" class=\"mw-redirect mw-disambig\" title=\"Amerika\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Amerika</a>. Di Zona Sunda Kelapa dan Batavia yang merupakan Replika Pelabuhan Sunda Kelapa, dihiasi oleh beberapa alat transportasi kuno seperti becak dan miniatur kapal. ZonaÂ <a href=\"https://id.wikipedia.org/wiki/Eropa\" title=\"Eropa\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Eropa</a>Â juga diÂ settingÂ seakan-akan berada di jalanan kota-kota diÂ <a href=\"https://id.wikipedia.org/wiki/Prancis\" title=\"Prancis\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Prancis</a>Â dengan mobil-mobil kuno eropa.</font></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#000000\">Selain mobil-mobil kuno, salah satu koleksi terbarunya adalah Mobil listrik Tucuxi milik mantan menteriÂ <a href=\"https://id.wikipedia.org/wiki/Dahlan_Iskan\" title=\"Dahlan Iskan\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Dahlan Iskan</a>Â yang sebelumnya pernah mengalami kecelakaan di sebuah lereng gunung diÂ <a href=\"https://id.wikipedia.org/wiki/Magetan\" class=\"mw-redirect\" title=\"Magetan\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Magetan</a>Â saat baru diujicobakan. Di museum ini juga terdapat wahanaÂ Flight SimulatorÂ yang terletak di lantai 3 gedung museum.</font></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><font color=\"#000000\">Museum Angkut dikelola oleh Jawa Timur Park Group yang sebelumnya juga membangunÂ <a href=\"https://id.wikipedia.org/wiki/Batu_Secret_Zoo\" title=\"Batu Secret Zoo\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Batu Secret Zoo</a>, Batu Night Spectacular (BNS), Eco Green Park danÂ <a href=\"https://id.wikipedia.org/wiki/Museum_Satwa\" title=\"Museum Satwa\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Museum Satwa</a>. Museum ini didirikan padaÂ <a href=\"https://id.wikipedia.org/wiki/9_Maret\" title=\"9 Maret\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">9 Maret</a>Â <a href=\"https://id.wikipedia.org/wiki/2014\" title=\"2014\" style=\"background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2014</a>.</font></p>', '679b5dd9d55fa15130e97547a7d512ce.jpg'),
(41, 'Gunung Bromo', 35000, 30000, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Gunung Bromo&nbsp;(dari&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">bahasa Sanskerta</span>:&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Brahma</span>, salah seorang Dewa Utama dalam agama&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hindu</span>) atau dalam&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">bahasa Tengger</span>&nbsp;dieja \"Brama\", adalah sebuah&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">gunung berapi</span>&nbsp;aktif di&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Jawa Timur</span>,&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Indonesia</span>. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">kabupaten</span>, yakni&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Kabupaten Probolinggo</span>,&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Kabupaten Pasuruan</span>,&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Kabupaten Lumajang</span>, dan&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Kabupaten Malang</span>. Gunung Bromo terkenal sebagai objek wisata utama di&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Jawa Timur</span>. Sebagai sebuah&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">objek wisata</span>, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Taman Nasional Bromo Tengger Semeru</span>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Bentuk tubuh Gunung Bromo bertautan antara lembah dan ngarai dengan kaldera atau lautan pasir seluas sekitar 10 kilometer persegi. Ia mempunyai sebuah kawah dengan garis tengah Â± 800 meter (utara-selatan) dan Â± 600 meter (timur-barat). Sedangkan daerah bahayanya berupa lingkaran dengan jari-jari 4&nbsp;km dari pusat kawah Bromo.</p>', '465563b8a14331aabfce0e48be43fa80.jpg'),
(42, 'Waterpark', 100000, 80000, '<p style=\"color: rgb(103, 103, 103); font-family: \"Open Sans\", Arial, Helvetica, sans-serif;\">Ciputra Waterpark adalah wana wisata air terbesar di Indonesia dan bahkan di Asia Tenggara. Terletak di Surabaya Barat, dan itu dibangun oleh Perusahaan Ciputra Grup di area Citraland.</p><p><span style=\"color: rgb(103, 103, 103); font-family: \"Open Sans\", Arial, Helvetica, sans-serif;\">Berdiri di lahan seluas 5 hektar, Ciputra Waterpak adalah wahana permainan air yang terinspirasi dari dongeng petualangan Sinbad. Terdapat beberapa wahana di Waterpark ini, seperti Sirens River, Chimera Pool, Marina Lagoon, Sinbad Playground, Roc Tower dan Syracuse Beach.</span></p><p></p><p style=\"color: rgb(103, 103, 103); font-family: \"Open Sans\", Arial, Helvetica, sans-serif;\">Ciputra Waterpark di buka setiap hari selasa sampai Jumat mulai pukul 14.00-19.00, sedangkan pada akhir pekan dan hari libur dibuka lebih awal dari jam 8.00-20.00. Terdapat beberapa paket yang bisa dipilih oleh pengunjung, dimana setiap wahana menampilkan atraksi wahana yang menarik dan menggunakan tehnologi tinggi. Ditambah lagi, keamanan dari Waterpark ini sudah jelas terbukti, sehingga pengunjung tidak perlu khawatir.</p>', '72d1ddaa88cafdc19f15582c3ef8d280.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `fk_wisata` (`id_wisata`),
  ADD KEY `fk_trans` (`id_trans`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `fk_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_trans` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `fk_wisata` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
