-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220707.a5d60f5698
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 06:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtubesbasdat`
--

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id_pesan` int(50) NOT NULL,
  `tanggal_pesan` date NOT NULL,
  `total_pesan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id_pesan`, `tanggal_pesan`, `total_pesan`) VALUES
(4, '2022-06-28', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_user` int(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(1, 'admin', 'admin', 'savireza salsabil faradha', 'perempuan', '2002-05-31', 'Jalan Panglima Sudirman N', '085608382203', 'admin'),
(2, 'user', 'user', 'manggala dhiestra faradha', 'pria', '1996-05-22', 'jalan panglima sudirman n', '0812345678033', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(50) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `jenis_menu` varchar(100) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pesan_produk`
--

CREATE TABLE `pesan_produk` (
  `id_pemesanan_menu` int(50) NOT NULL,
  `id_pemesanan` int(50) NOT NULL,
  `id_menu` varchar(100) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan_produk`
--

INSERT INTO `pesan_produk` (`id_pemesanan_menu`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
(20, 4, '10', 150000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pesan_produk`
--
ALTER TABLE `pesan_produk`
  ADD PRIMARY KEY (`id_pemesanan_menu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id_pesan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



