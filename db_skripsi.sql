-- phpMyAdmin SQL Dump
-- version 5.0.0-alpha1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2022 at 12:21 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` int(11) NOT NULL,
  `tgl_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang_keluar`, `tgl_keluar`) VALUES
(4, '2022-07-09'),
(5, '2022-07-14'),
(6, '2022-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` int(11) NOT NULL,
  `suplier_id` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tgl_masuk` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `suplier_id`, `total_harga`, `tgl_masuk`) VALUES
(12, 2, 175000, '2022-06-17'),
(13, 1, 39100000, '2022-06-02'),
(14, 2, 2240000, '2022-06-22'),
(15, 2, 954000, '2022-06-01'),
(16, 2, 9000, '2020-02-03'),
(17, 2, 9000, '2022-07-09'),
(21, 2, 106656, '2022-06-30'),
(22, 2, 1772, '2022-07-15'),
(23, 2, 2220, '2022-07-18');

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang_keluar`
--

CREATE TABLE `detail_barang_keluar` (
  `id_detail_barang_keluar` int(11) NOT NULL,
  `barang_keluar_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `jumlah_keluar` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_barang_keluar`
--

INSERT INTO `detail_barang_keluar` (`id_detail_barang_keluar`, `barang_keluar_id`, `barang_id`, `jumlah_keluar`) VALUES
(1, 4, 8, 2),
(2, 5, 8, 1),
(3, 6, 8, 2),
(4, 6, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang_masuk`
--

CREATE TABLE `detail_barang_masuk` (
  `id_detail_barang_masuk` int(11) NOT NULL,
  `barang_masuk_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `jumlah_masuk` int(255) NOT NULL,
  `harga_satuan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_barang_masuk`
--

INSERT INTO `detail_barang_masuk` (`id_detail_barang_masuk`, `barang_masuk_id`, `barang_id`, `jumlah_masuk`, `harga_satuan`) VALUES
(24, 12, 8, 5, 15000),
(25, 12, 6, 5, 20000),
(27, 13, 1, 23, 1700000),
(28, 14, 7, 32, 70000),
(30, 15, 8, 2, 17000),
(31, 15, 7, 2, 340000),
(32, 16, 7, 1, 9000),
(33, 17, 8, 1, 9000),
(37, 21, 8, 32, 3333),
(38, 22, 8, 4, 443),
(39, 23, 8, 5, 444);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `harga_menu` double NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `menu_id`, `transaksi_id`, `harga_menu`, `jumlah_pesanan`) VALUES
(1, 3, 7, 90000, 2),
(2, 3, 7, 90000, 4),
(3, 1, 8, 15000, 3),
(4, 3, 8, 90000, 5),
(5, 4, 9, 15000, 23),
(6, 3, 9, 90000, 2),
(7, 1, 10, 15000, 2),
(8, 3, 10, 90000, 3),
(9, 8, 11, 17000, 23),
(10, 1, 11, 15000, 2),
(11, 4, 12, 15000, 40),
(12, 3, 12, 90000, 20),
(13, 4, 13, 15000, 23),
(14, 1, 13, 15000, 33),
(15, 8, 14, 17000, 23),
(16, 4, 15, 15000, 10),
(17, 8, 16, 17000, 13),
(18, 3, 16, 90000, 10),
(19, 8, 17, 17000, 12),
(20, 3, 17, 90000, 12),
(21, 4, 18, 15000, 33);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `namak` varchar(255) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `tahun_masuk` varchar(255) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `namak`, `jk`, `tgl_lahir`, `nohp`, `tahun_masuk`, `jabatan`, `user_id`) VALUES
(6, 'Muhammad Fikri Abyan', 'L', '2000-01-30', '08123577831', '2003', 'Kasir', 3),
(7, 'Muhammad Hapiz', 'L', '2022-05-30', '08123577831', '2012', 'Kasir', 4),
(8, 'Bayadh', 'L', '2022-06-05', '08123577831', '2012', 'Kasir', 5),
(9, 'Henny', 'P', '1996-06-29', '08123577831', '2021', 'Kasir', 6),
(10, 'Ridha', 'P', '2002-02-13', '098473484', '2021', 'Admin', 7),
(11, 'Gamas', 'L', '2000-05-23', '23214456784', '2021', 'Kasir', 8);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Kopi'),
(2, 'Bukan Kopi'),
(3, 'Makanan Berat'),
(4, 'Makanan Ringan');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `harga`, `kategori_id`) VALUES
(1, 'Kopi Susu', 15000, 1),
(3, 'Pizza', 90000, 3),
(4, 'Coklat Latte', 15000, 2),
(11, 'Kopi Susu Vanilla', 18000, 4),
(12, 'Kopi Susu Vanilla', 18000, 1),
(13, 'Kopi Susu Caramel', 18000, 1),
(14, 'Kacang Begula', 12000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nohp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `email`, `nohp`) VALUES
(2, 'Muhammad Fikri Abyan', 'fikri.abyanm@gmail.com', '08123577832'),
(3, 'Amat Bejamur', 'okijwlqjhweiuo@gmail.com', '089889888888'),
(4, 'Arif', '', '09837588764');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suplier`
--

CREATE TABLE `suplier` (
  `id_suplier` int(11) NOT NULL,
  `nama_suplier` varchar(150) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `note` varchar(255) NOT NULL,
  `tgl_terakhir_masuk` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suplier`
--

INSERT INTO `suplier` (`id_suplier`, `nama_suplier`, `nohp`, `note`, `tgl_terakhir_masuk`) VALUES
(1, 'Hapiz Kompany', '2147483647', 'Suplier Susu', '2022-06-17'),
(2, 'Tower Company', '089889888880', 'Suplier Bubuk', '2022-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(191) NOT NULL,
  `nama_barang` varchar(191) NOT NULL,
  `jumlah_tersedia` int(255) DEFAULT NULL,
  `merk` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `expired` date NOT NULL,
  `tgl_terakhir_masuk` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `kode_barang`, `nama_barang`, `jumlah_tersedia`, `merk`, `harga`, `expired`, `tgl_terakhir_masuk`) VALUES
(1, '9090', 'Barang 90', NULL, '', 999, '0000-00-00', '2022-06-17'),
(6, '0123', 'Susu UHT', NULL, 'Diamond', 17000, '2022-07-14', '2022-06-29'),
(7, 'kkaakk', 'Laptop', NULL, 'Asus', 10000000, '2022-06-10', '2022-07-09'),
(8, 'qwe', 'Bubuk ', 3, 'qwe', 40000, '2022-10-10', '2022-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `jk` varchar(191) NOT NULL,
  `jabatan` varchar(191) NOT NULL,
  `barang_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id_pegawai`, `nama`, `jk`, `jabatan`, `barang_id`) VALUES
(1, 'Clark Waynafgofighofg', 'L', 'Admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'pimpinan', '90973652b88fe07d05a4304f0a945de8', 'pimpinan'),
(3, 'sip', '827ccb0eea8a706c4c34a16891f84e7b', 'Kasir'),
(4, 'hapiz', '80d1b672eb16217546e74d900a6e8cbb', 'Kasir'),
(5, 'kasir1', 'd41d8cd98f00b204e9800998ecf8427e', 'Kasir'),
(6, 'heny', 'd41d8cd98f00b204e9800998ecf8427e', 'Kasir'),
(7, 'yes', 'd41d8cd98f00b204e9800998ecf8427e', 'Admin'),
(8, 'gams', 'a01610228fe998f515a72dd730294d87', 'Kasir');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `jam_transaksi` datetime NOT NULL,
  `metode_pembayaran` varchar(255) NOT NULL,
  `karyawan_id` int(11) NOT NULL,
  `total_belanja` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `pelanggan_id`, `jam_transaksi`, `metode_pembayaran`, `karyawan_id`, `total_belanja`) VALUES
(7, 2, '2022-06-20 22:29:00', 'Transfer', 7, 0),
(8, 2, '2022-06-20 22:39:00', 'cash', 7, 495000),
(9, 2, '2022-06-20 14:55:00', 'Tunai', 7, 525000),
(10, 2, '2022-06-20 15:09:00', 'Tunai', 7, 300000),
(11, 2, '2022-06-20 20:12:38', 'Tunai', 8, 421000),
(12, 2, '2022-06-20 20:13:49', 'Transfer', 8, 2400000),
(13, 2, '2022-06-22 23:24:46', 'Transfer', 8, 840000),
(14, 2, '2022-05-22 23:42:25', 'Transfer', 8, 391000),
(15, 2, '2022-06-25 16:53:03', 'Transfer', 8, 150000),
(16, 3, '2022-06-26 14:20:35', 'Transfer', 6, 1121000),
(17, 4, '2022-06-26 14:23:02', 'Transfer', 8, 1284000),
(18, 4, '2022-03-29 16:55:32', 'Tunai', 8, 495000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`);

--
-- Indexes for table `detail_barang_keluar`
--
ALTER TABLE `detail_barang_keluar`
  ADD PRIMARY KEY (`id_detail_barang_keluar`);

--
-- Indexes for table `detail_barang_masuk`
--
ALTER TABLE `detail_barang_masuk`
  ADD PRIMARY KEY (`id_detail_barang_masuk`),
  ADD UNIQUE KEY `barang_masuk_id` (`barang_masuk_id`,`barang_id`,`jumlah_masuk`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id_suplier`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id_barang_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id_barang_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `detail_barang_keluar`
--
ALTER TABLE `detail_barang_keluar`
  MODIFY `id_detail_barang_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_barang_masuk`
--
ALTER TABLE `detail_barang_masuk`
  MODIFY `id_detail_barang_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suplier`
--
ALTER TABLE `suplier`
  MODIFY `id_suplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

