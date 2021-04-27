-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 03:36 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(120) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(7, 'Stap Manajer', '5000000', '20000000', '50000'),
(14, 'Derektor ', '600000000', '20000000', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(1, '092021', '1234567890', 'Yoga', 'laki-laki', 'stap marketing', 28, 1, 1),
(2, '082021', '0987654321', 'Angga', 'Laki-Laki', 'Derektor ', 73, 2, 3),
(3, '112022', '123456789098', 'Bagus', 'Laki-Laki', 'Derektor ', 26, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `setatus` varchar(20) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `setatus`, `photo`, `hak_akses`) VALUES
(12, '0987654321', 'Angga', 'angga', '827ccb0eea8a706c4c34a16891f84e7b', 'Perempuan', 'Stap Manajer', '2021-02-03', 'Pegawai Tetap', '0987654321.jpg', 2),
(19, '0987654321', 'Yoga Sambogo Saputra', 'adminn', '807659cd883fc0a63f6ce615893b3558', 'Laki-Laki', 'Derektor ', '2021-04-02', 'Pegawai Tetap', '0987654321.jpg', 1),
(25, '1111111111111111111111111111', 'Bos', 'boss', 'c81e728d9d4c2f636f067f89cc14862c', 'Laki-Laki', 'Stap Manajer', '2021-04-08', 'Pegawai Tetap', '1111111111111111111111111111.jpg', 2),
(26, '44743544576676452', 'Yog', 'yog', 'c4ca4238a0b923820dcc509a6f75849b', 'Perempuan', 'Stap Manajer', '2021-04-08', 'Pegawai Tetap', '44743544576676452.jpg', 1),
(27, '1234567890876', 'Ayah', 'ayah', 'c81e728d9d4c2f636f067f89cc14862c', 'Laki-Laki', 'Stap Manajer', '2021-04-09', 'Pegawai Tidak Tetap', '1234567890876.jpg', 2),
(28, '1234567890987', 'Risty', 'risti', 'c81e728d9d4c2f636f067f89cc14862c', 'Perempuan', 'Derektor ', '2021-04-09', 'Pegawai Tetap', '1234567890987.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(120) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(3, 'alpha', 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
