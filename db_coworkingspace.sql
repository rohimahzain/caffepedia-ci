-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2019 pada 04.20
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_coworkingspace`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `qcoworkingspace`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `qcoworkingspace` (
`id_coworking_space` int(3)
,`nama_coworking` varchar(50)
,`deskripsi` text
,`fasilitas` text
,`kontak` varchar(100)
,`website` text
,`aktifitas` varchar(56)
,`id_detail_coworking` int(3)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(3) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` char(32) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `level` int(1) NOT NULL DEFAULT '2' COMMENT '1 => super admin, 2 => admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`, `nama_lengkap`, `email`, `contact`, `level`) VALUES
(1, 'super admin', 'admin', 'Rohimah', 'rohimahzain7@gmail.com', '85601437195', 1),
(6, 'admin1', 'admin', 'admin', 'rohimahzain7@gmail.com', '293898', 2),
(8, 'anggi', 'anggi', 'anggi', 'anggi@gmail.com', '08560437195', 2),
(9, 'sinta', 'admin', 'Sinta hadikusumo', 'sinta@gmail.com', '085601437195', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_client`
--

CREATE TABLE `tb_client` (
  `id_client` int(3) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo_client` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_coworking_space`
--

CREATE TABLE `tb_coworking_space` (
  `id_coworking_space` int(3) NOT NULL,
  `nama_coworking` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `kontak` varchar(100) NOT NULL,
  `website` text NOT NULL,
  `tgl_buat` date NOT NULL,
  `tgl_update` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_appv` int(1) NOT NULL DEFAULT '0' COMMENT '1 => approv, 0 => deny'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_coworking_space`
--

INSERT INTO `tb_coworking_space` (`id_coworking_space`, `nama_coworking`, `alamat`, `longitude`, `latitude`, `kontak`, `website`, `tgl_buat`, `tgl_update`, `id_user`, `status_appv`) VALUES
(11, 'Jogja Digital Valley Jogja', 'Jl. Kartini No.7, Terban, Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55223', 110.378, -7.77997, '(0274) 556565', 'jogjadigitalvalley.com', '0000-00-00', '2019-06-19', 0, 1),
(13, 'Ruang Tengah Work Space', 'Jl. Sekar Dwijan No.33 A, Klitren, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55222', 110.384, -7.78539, '0811-2291-737', 'workingspacex.com', '0000-00-00', '0000-00-00', 0, 1),
(19, 'Genius Idea  Coworking Space Yogyakarta', 'Jl. Magelang No.32-34, Cokrodiningratan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55233', 110.359, -7.78045, '(0274) 517585', 'geniusidea.id', '0000-00-00', '0000-00-00', 0, 1),
(20, 'Sleman Creative Space', 'Jl. Anggajaya III No.57-61, Gejayan, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55283', 110.392, -7.75649, '0821-3396-0885', '', '2019-06-25', '0000-00-00', 0, 1),
(21, 'Sinergi Coworking Space', 'Jl. Cenderawasih No.32b, Mrican, Demangan, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', 110.38, -7.7796, '(0274) 564426', '', '2019-06-25', '0000-00-00', 0, 1),
(22, 'PI Office', 'Jl. Ngadinegaran, MJ III No.144, Mantrijeron, Kec. Mantrijeron, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55143', 110.355, -7.81719, '(0274) 371867', '', '2019-06-25', '0000-00-00', 0, 1),
(23, 'Antologi Collaboractive Space', 'Gg. Gayamsari II No.9C, Karang Wuni, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', 110.385, -7.75638, '0812-3936-3634', '', '2019-06-25', '0000-00-00', 0, 1),
(24, 'Universitas Teknologi Yogyakarta', 'Grogolan umbulmartani ngemplak Sleman', 110.213, -7.77997, '0821-3792-0942', '', '2019-06-25', '0000-00-00', 0, 1),
(29, 'Luxury Internet & Cafe', 'Jalan Kaliurang', 110.378, -7.74741, '0821-3396-0885', 'luxury.net', '2019-07-02', '0000-00-00', 0, 0),
(30, '', '', 0, 0, '', '', '2019-07-02', '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_coworking`
--

CREATE TABLE `tb_detail_coworking` (
  `id_detail_coworking` int(3) NOT NULL,
  `id_coworking_space` int(3) NOT NULL,
  `deskripsi` text NOT NULL,
  `fasilitas` text NOT NULL,
  `hari` varchar(30) NOT NULL,
  `jam_buka` time NOT NULL,
  `jam_tutup` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_detail_coworking`
--

INSERT INTO `tb_detail_coworking` (`id_detail_coworking`, `id_coworking_space`, `deskripsi`, `fasilitas`, `hari`, `jam_buka`, `jam_tutup`) VALUES
(2, 13, 'Ruang Tengah (eng: Living Room) is a co-working space in Yogyakarta Indonesia. The idea about Ruang Tengah comes from our response to unused living-room in a house at 33 A Sekar Dwijan Street, Yogyakarta. A common living-room in an Indonesian house is a place where all family members gather to do everything. The concept of living-room becomes our vision to serve an alternative space for everyone \'to get their things done\'. We support productivity with different atmosphere (not an old-school building office and boring cubicle). We create a modern and comfortable co-working space for freelancers, start-up business, business travelers, digital and nomad travelers based on every possible business sector.', 'WiFi, Food Service, Printer, FreeFlow, Area Smooking, WhiteBoard, Charging, Meeting Room, AC', 'Senin - Sabtu', '09:00:00', '21:00:00'),
(3, 19, 'Genius Idea adalah Coworking Space, Office Space plus Event Space. Coworking Space kami dirancang sedemikian rupa dengan tingkat kenyamanan yang tinggi sehingga dapat memberikan suasana lingkungan kerja yang nyaman, produktif dan kolaboratif bagi tim untuk berkembang.', 'Meeting Room , Proyektor, Informasi Seminar dan Event, Print, Scan and Copy, Lokasi strategis, Free Coffee and Tea, Community, Fyber Optic Internet', 'Senin - Jumat', '09:00:00', '22:00:00'),
(4, 11, 'JOGJA DIGITAL VALLEY merupakan inkubator bisnis ICT kedua yang dikembangkan oleh TELKOM setelah BANDUNG DIGITAL VALLEY untuk melengkapi ekosistem kreatif digital, yang bertujuan untuk meningkatkan akselerasi jumlah pengembang untuk games, edutainment, music, animation dan software services khususnya di kota Yogyakarta dan sekitarnya. JOGJA DIGITAL VALLEY akan menjadi wadah yang sangat strategis bagi potential individual developer dan startup companies yang men-supply creative content untuk IT product dan service yang akan ditawarkan secara aktif ke IT market yang sedang booming saat ini salah satunya melalui jaringan distribusi online dan offline yang dimiliki TELKOM di seluruh Indonesia dan negara lain. Saat ini TELKOM telah menjangkau lebih dari 150 Juta Pelanggan, 220 Ribu Perusahaan skala Kecil, Menengah dan Besar, serta memiliki bisnis di 10 negara lainnya.', 'Meeting Room, Incubittee Room', 'Senin - Jumat', '09:00:00', '22:00:00'),
(8, 20, 'giuuihu', 'gkgugui', 'Senin - Jumat', '10:00:00', '00:00:00'),
(9, 20, 'giuuihu', 'gkgugui', 'Senin - Jumat', '10:00:00', '00:00:00'),
(10, 20, 'giuuihu', 'gkgugui', 'Senin - Jumat', '10:00:00', '00:00:00'),
(11, 20, 'giuuihu', 'gkgugui', 'Senin - Jumat', '10:00:00', '00:00:00'),
(12, 22, 'hjfhgfh', 'hggfcfg', 'Senin - Jumat', '10:00:00', '00:00:00'),
(13, 22, 'hjfhgfh', 'hggfcfg', 'Senin - Jumat', '10:00:00', '00:00:00'),
(14, 22, 'hjfhgfh', 'hggfcfg', 'Senin - Jumat', '10:00:00', '00:00:00'),
(15, 29, 'svdgcsvhg', 'hdvhj', 'Senin - Jumat', '10:00:00', '00:00:00'),
(16, 29, 'jgjhg', 'ghvhhgh', 'Senin - Jumat', '10:00:00', '00:00:00'),
(17, 29, 'jgjhg', 'ghvhhgh', 'Senin - Jumat', '10:00:00', '00:00:00'),
(18, 29, 'jgjhg', 'ghvhhgh', 'Senin - Jumat', '10:00:00', '00:00:00'),
(19, 29, 'jgjhg', 'ghvhhgh', 'Senin - Jumat', '10:00:00', '00:00:00'),
(20, 21, 'hdghf', 'ggjgu', 'Senin - Jumat', '10:00:00', '00:00:00'),
(21, 23, 'qqq', 'qqq', 'Senin - Jumat', '10:00:00', '00:00:00'),
(22, 23, 'QQQ', 'QQQ', 'Senin - Jumat', '10:00:00', '00:00:00'),
(23, 23, 'QQQ', 'QQQ', 'Senin - Jumat', '10:00:00', '00:00:00'),
(24, 23, 'QQQ', 'QQQ', 'Senin - Jumat', '10:00:00', '00:00:00'),
(25, 23, 'QQQ', 'QQQ', 'Senin - Jumat', '10:00:00', '00:00:00'),
(26, 23, 'QQQ', 'QQQ', 'Senin - Jumat', '10:00:00', '00:00:00'),
(27, 23, 'QQQ', 'QQQ', 'Senin - Jumat', '10:00:00', '00:00:00'),
(28, 23, 'QQQ', 'QQQ', 'Senin - Jumat', '10:00:00', '00:00:00'),
(37, 24, 'aaa', 'aaa', 'Senin - Jumat', '10:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_image`
--

CREATE TABLE `tb_image` (
  `id_image` int(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_date` date NOT NULL,
  `id_coworking_space` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_image`
--

INSERT INTO `tb_image` (`id_image`, `image_name`, `image_date`, `id_coworking_space`) VALUES
(5, '24453029704.jpg', '2019-07-02', 24),
(6, '24469491633.jpg', '2019-07-02', 24);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `id_komentar` int(10) NOT NULL,
  `id_coworking_space` int(3) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `komentar` text NOT NULL,
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `time_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approv` int(1) NOT NULL DEFAULT '0' COMMENT '1 => approv, 0 => deny'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_komentar`
--

INSERT INTO `tb_komentar` (`id_komentar`, `id_coworking_space`, `id_user`, `komentar`, `parent_id`, `time_added`, `approv`) VALUES
(23, 19, 1, 'Nice', 0, '2019-06-19 05:14:44', 1),
(30, 11, 1, 'jam beda', 0, '2019-06-25 06:16:38', 1),
(31, 24, 1, 'Universitas Teknologi Yogyakarta Hebat', 0, '2019-06-25 09:44:41', 1),
(32, 11, 1, 'Contoh Jam', 0, '2019-06-27 08:40:39', 1),
(35, 11, 0, 'jawaban jam beda', 30, '2019-06-29 07:56:29', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rating`
--

CREATE TABLE `tb_rating` (
  `id_ratting` int(3) NOT NULL,
  `id_coworking_space` int(3) NOT NULL,
  `id_user` int(11) NOT NULL,
  `rate` float NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_review`
--

CREATE TABLE `tb_review` (
  `id_review` int(3) NOT NULL,
  `id_coworking_space` int(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rating` float NOT NULL,
  `keterangan` text NOT NULL,
  `status_aktif` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat_bann`
--

CREATE TABLE `tb_riwayat_bann` (
  `id_riwayat_bann` int(3) NOT NULL,
  `id_admin` int(3) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_buat` date NOT NULL,
  `keterangan` text NOT NULL,
  `status_bann` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_riwayat_review`
--

CREATE TABLE `tb_riwayat_review` (
  `id_riwayat_review` int(3) NOT NULL,
  `id_client` int(3) NOT NULL,
  `id_review` int(3) NOT NULL,
  `tgl_buat` date NOT NULL,
  `keterangan` text NOT NULL,
  `status_review` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `id_user` int(11) NOT NULL,
  `oauth_provider` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`id_user`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `picture`, `link`, `created`, `modified`) VALUES
(1, '12', '13', 'Rohimah', 'Rohimah', 'rohimahzain37@gmaiil.com', 'Perempuan', NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur untuk view `qcoworkingspace`
--
DROP TABLE IF EXISTS `qcoworkingspace`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qcoworkingspace`  AS  select `tb_coworking_space`.`id_coworking_space` AS `id_coworking_space`,`tb_coworking_space`.`nama_coworking` AS `nama_coworking`,`tb_detail_coworking`.`deskripsi` AS `deskripsi`,`tb_detail_coworking`.`fasilitas` AS `fasilitas`,`tb_coworking_space`.`kontak` AS `kontak`,`tb_coworking_space`.`website` AS `website`,concat(`tb_detail_coworking`.`hari`,space(3),`tb_detail_coworking`.`jam_buka`,space(3),`tb_detail_coworking`.`jam_tutup`) AS `aktifitas`,`tb_detail_coworking`.`id_detail_coworking` AS `id_detail_coworking` from (`tb_coworking_space` join `tb_detail_coworking` on((`tb_coworking_space`.`id_coworking_space` = `tb_detail_coworking`.`id_coworking_space`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_client`
--
ALTER TABLE `tb_client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indeks untuk tabel `tb_coworking_space`
--
ALTER TABLE `tb_coworking_space`
  ADD PRIMARY KEY (`id_coworking_space`),
  ADD KEY `id_client` (`id_user`);

--
-- Indeks untuk tabel `tb_detail_coworking`
--
ALTER TABLE `tb_detail_coworking`
  ADD PRIMARY KEY (`id_detail_coworking`),
  ADD KEY `id_coworking_space` (`id_coworking_space`);

--
-- Indeks untuk tabel `tb_image`
--
ALTER TABLE `tb_image`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `id_coworking_space` (`id_coworking_space`);

--
-- Indeks untuk tabel `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `id_coworking_space` (`id_coworking_space`),
  ADD KEY `id_client` (`id_user`);

--
-- Indeks untuk tabel `tb_rating`
--
ALTER TABLE `tb_rating`
  ADD PRIMARY KEY (`id_ratting`),
  ADD KEY `id_client` (`id_user`),
  ADD KEY `id_coworking_space` (`id_coworking_space`) USING BTREE;

--
-- Indeks untuk tabel `tb_review`
--
ALTER TABLE `tb_review`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_coworking_space` (`id_coworking_space`);

--
-- Indeks untuk tabel `tb_riwayat_bann`
--
ALTER TABLE `tb_riwayat_bann`
  ADD PRIMARY KEY (`id_riwayat_bann`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `ad_client` (`id_user`);

--
-- Indeks untuk tabel `tb_riwayat_review`
--
ALTER TABLE `tb_riwayat_review`
  ADD PRIMARY KEY (`id_riwayat_review`),
  ADD KEY `id_admin` (`id_client`),
  ADD KEY `id_review` (`id_review`);

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_client`
--
ALTER TABLE `tb_client`
  MODIFY `id_client` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_coworking_space`
--
ALTER TABLE `tb_coworking_space`
  MODIFY `id_coworking_space` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tb_detail_coworking`
--
ALTER TABLE `tb_detail_coworking`
  MODIFY `id_detail_coworking` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `tb_image`
--
ALTER TABLE `tb_image`
  MODIFY `id_image` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `id_komentar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tb_review`
--
ALTER TABLE `tb_review`
  MODIFY `id_review` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_bann`
--
ALTER TABLE `tb_riwayat_bann`
  MODIFY `id_riwayat_bann` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_riwayat_review`
--
ALTER TABLE `tb_riwayat_review`
  MODIFY `id_riwayat_review` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_detail_coworking`
--
ALTER TABLE `tb_detail_coworking`
  ADD CONSTRAINT `tb_detail_coworking_ibfk_1` FOREIGN KEY (`id_coworking_space`) REFERENCES `tb_coworking_space` (`id_coworking_space`);

--
-- Ketidakleluasaan untuk tabel `tb_rating`
--
ALTER TABLE `tb_rating`
  ADD CONSTRAINT `tb_rating_ibfk_1` FOREIGN KEY (`id_coworking_space`) REFERENCES `tb_coworking_space` (`id_coworking_space`);

--
-- Ketidakleluasaan untuk tabel `tb_review`
--
ALTER TABLE `tb_review`
  ADD CONSTRAINT `tb_review_ibfk_1` FOREIGN KEY (`id_coworking_space`) REFERENCES `tb_coworking_space` (`id_coworking_space`);

--
-- Ketidakleluasaan untuk tabel `tb_riwayat_bann`
--
ALTER TABLE `tb_riwayat_bann`
  ADD CONSTRAINT `tb_riwayat_bann_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tb_admin` (`id_admin`);

--
-- Ketidakleluasaan untuk tabel `tb_riwayat_review`
--
ALTER TABLE `tb_riwayat_review`
  ADD CONSTRAINT `tb_riwayat_review_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `tb_admin` (`id_admin`),
  ADD CONSTRAINT `tb_riwayat_review_ibfk_2` FOREIGN KEY (`id_review`) REFERENCES `tb_review` (`id_review`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
