-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 03:07 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jw_puskesmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `nip` varchar(5) NOT NULL DEFAULT '',
  `nm_dokter` varchar(25) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `spesialis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`nip`, `nm_dokter`, `alamat`, `spesialis`) VALUES
('D0002', 'Hermawan Nugroho', 'Salatiga', 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `no_pasien` varchar(6) NOT NULL DEFAULT '',
  `username` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `nm_pasien` varchar(25) DEFAULT NULL,
  `jenkel` varchar(255) DEFAULT NULL,
  `tmp_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `umur` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`no_pasien`, `username`, `pass`, `nm_pasien`, `jenkel`, `tmp_lahir`, `tgl_lahir`, `umur`, `alamat`, `no_hp`, `email`, `pekerjaan`) VALUES
('P0001', 'EbenH', '12345', 'Eben Haezer', 'Pria', 'Salatiga', '1999-09-09', '98', 'Salatiga', '0987', '0987', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `kd_petugas` varchar(5) NOT NULL DEFAULT '',
  `nm_petugas` varchar(25) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`kd_petugas`, `nm_petugas`, `alamat`) VALUES
('R0002', 'Nugi', 'Jl. Abdul Amin Salatiga');

-- --------------------------------------------------------

--
-- Table structure for table `registrasi_pasien`
--

CREATE TABLE `registrasi_pasien` (
  `no_pasien` varchar(6) NOT NULL DEFAULT '',
  `nm_pasien` varchar(25) DEFAULT NULL,
  `jenkel` varchar(6) DEFAULT NULL,
  `tmp_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `umur` varchar(3) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `pekerjaan` varchar(25) DEFAULT NULL,
  `kd_dokter` varchar(5) DEFAULT NULL,
  `kd_ruang` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `kd_ruang` varchar(5) NOT NULL DEFAULT '',
  `nm_ruang` varchar(25) DEFAULT NULL,
  `gedung` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`kd_ruang`, `nm_ruang`, `gedung`) VALUES
('R0003', 'UGD', '1B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`no_pasien`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`kd_petugas`);

--
-- Indexes for table `registrasi_pasien`
--
ALTER TABLE `registrasi_pasien`
  ADD PRIMARY KEY (`no_pasien`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`kd_ruang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
