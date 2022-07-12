-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2022 at 11:22 PM
-- Server version: 10.8.3-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_2022_aldi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berkas_pelanggan`
--

CREATE TABLE `tbl_berkas_pelanggan` (
  `id` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `file_subsidi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gambar_rumah`
--

CREATE TABLE `tbl_gambar_rumah` (
  `id` int(11) NOT NULL,
  `id_rumah` int(11) NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_gambar_rumah`
--

INSERT INTO `tbl_gambar_rumah` (`id`, `id_rumah`, `file`, `keterangan`) VALUES
(5, 9, 'foto-rumah_06_07_2022_03-59-pm-62c532ef07bb5.jpg', 'Gambar dari samping'),
(7, 9, 'foto-rumah_06_07_2022_04-02-pm-62c5337b6cee2.jpg', 'Denah Rumah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_kelamin`
--

CREATE TABLE `tbl_jenis_kelamin` (
  `id` int(11) NOT NULL,
  `jenis_kelamin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_jenis_kelamin`
--

INSERT INTO `tbl_jenis_kelamin` (`id`, `jenis_kelamin`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ket_subsidi`
--

CREATE TABLE `tbl_ket_subsidi` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `persen_subsidi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_ket_subsidi`
--

INSERT INTO `tbl_ket_subsidi` (`id`, `keterangan`, `persen_subsidi`) VALUES
(1, 'Data Yang Harus Kami terima yaitu\r\n1. KTP\r\n2. FOTO\r\n3. Data Gaji\r\n4. KK', '20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `id` int(11) NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`id`, `level`) VALUES
(1, 'Admin'),
(2, 'Pimpinan'),
(3, 'Pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `id_level`, `username`, `password`, `token`) VALUES
(1, 1, 'admin', '$2y$10$jBIgUkAzaeWJ1d/05MXLG.Dy6sBwvnYrUujKCMii1yvPaP6TiTFnq', '$2y$10$bHJ/54aEDZDhZobkA6ZZaujU.M/2cckYHlwMTCk0p04q744VjI4Ei'),
(2, 2, 'pemimpin', '$2y$10$jBIgUkAzaeWJ1d/05MXLG.Dy6sBwvnYrUujKCMii1yvPaP6TiTFnq', '$2y$10$3RcPT8FZwRjQsmfLsT62cufnsDfx3ViXzgnQaTCCsYV6kYcmrJTHm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `alamat` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsidi` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rumah`
--

CREATE TABLE `tbl_rumah` (
  `id` int(11) NOT NULL,
  `rumah` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terjual` int(1) DEFAULT 0,
  `thumbnail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_rumah`
--

INSERT INTO `tbl_rumah` (`id`, `rumah`, `harga`, `terjual`, `thumbnail`) VALUES
(9, 'Blog D', '120000000', 0, 'Blog_D_06_07_2022_03-57-pm-62c5324d12286.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id` int(11) NOT NULL,
  `id_rumah` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `booking` int(1) DEFAULT 0,
  `bayar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `potongan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persentage_potongan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `id_login` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `id_login`, `nama`) VALUES
(1, 1, 'Administrator'),
(2, 2, 'Joni Robert');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pelanggan`
-- (See below for the actual view)
--
CREATE TABLE `view_pelanggan` (
`id` int(11)
,`id_login` int(11)
,`id_user` int(11)
,`id_level` int(11)
,`level` varchar(50)
,`username` varchar(255)
,`token` text
,`nama` varchar(255)
,`alamat` varchar(300)
,`subsidi` int(11)
,`no_hp` varchar(20)
,`file_subsidi` text
);

-- --------------------------------------------------------

--
-- Structure for view `view_pelanggan`
--
DROP TABLE IF EXISTS `view_pelanggan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pelanggan`  AS SELECT `pelanggan`.`id` AS `id`, `user`.`id_login` AS `id_login`, `pelanggan`.`id_user` AS `id_user`, `lg`.`id_level` AS `id_level`, `lvl`.`level` AS `level`, `lg`.`username` AS `username`, `lg`.`token` AS `token`, `user`.`nama` AS `nama`, `pelanggan`.`alamat` AS `alamat`, `pelanggan`.`subsidi` AS `subsidi`, `pelanggan`.`no_hp` AS `no_hp`, `berkas_pelanggan`.`file_subsidi` AS `file_subsidi` FROM ((((`tbl_pelanggan` `pelanggan` left join `tbl_user` `user` on(`user`.`id` = `pelanggan`.`id_user`)) left join `tbl_login` `lg` on(`lg`.`id` = `user`.`id_login`)) left join `tbl_level` `lvl` on(`lvl`.`id` = `lg`.`id_level`)) left join `tbl_berkas_pelanggan` `berkas_pelanggan` on(`berkas_pelanggan`.`id_pelanggan` = `pelanggan`.`id`)) WHERE `lg`.`id_level` = 33  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_berkas_pelanggan`
--
ALTER TABLE `tbl_berkas_pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `tbl_gambar_rumah`
--
ALTER TABLE `tbl_gambar_rumah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Gambar Rumah` (`id_rumah`);

--
-- Indexes for table `tbl_jenis_kelamin`
--
ALTER TABLE `tbl_jenis_kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ket_subsidi`
--
ALTER TABLE `tbl_ket_subsidi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `Level` (`id_level`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User Pelanggan` (`id_user`);

--
-- Indexes for table `tbl_rumah`
--
ALTER TABLE `tbl_rumah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Transaksi To Rumah` (`id_rumah`),
  ADD KEY `Transaksi To Pelanggan` (`id_pelanggan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User Login` (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_berkas_pelanggan`
--
ALTER TABLE `tbl_berkas_pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_gambar_rumah`
--
ALTER TABLE `tbl_gambar_rumah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_jenis_kelamin`
--
ALTER TABLE `tbl_jenis_kelamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_ket_subsidi`
--
ALTER TABLE `tbl_ket_subsidi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_rumah`
--
ALTER TABLE `tbl_rumah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_berkas_pelanggan`
--
ALTER TABLE `tbl_berkas_pelanggan`
  ADD CONSTRAINT `Berkas Pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `tbl_pelanggan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_gambar_rumah`
--
ALTER TABLE `tbl_gambar_rumah`
  ADD CONSTRAINT `Gambar Rumah` FOREIGN KEY (`id_rumah`) REFERENCES `tbl_rumah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD CONSTRAINT `Level` FOREIGN KEY (`id_level`) REFERENCES `tbl_level` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD CONSTRAINT `User Pelanggan` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD CONSTRAINT `Transaksi To Pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `tbl_pelanggan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Transaksi To Rumah` FOREIGN KEY (`id_rumah`) REFERENCES `tbl_rumah` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `User Login` FOREIGN KEY (`id_login`) REFERENCES `tbl_login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
