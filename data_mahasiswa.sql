-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2020 pada 09.57
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL DEFAULT 'NOT NULL',
  `jenis_kelamin` enum('Laki - Laki','Perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `angkatan` int(4) NOT NULL,
  `status` enum('aktif','cuti') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jenis_kelamin`, `alamat`, `prodi`, `fakultas`, `angkatan`, `status`) VALUES
(181402051, 'Albert', 'Laki - Laki', 'Griya Permata Sari', 'Teknologi Informasi', 'Fasilkom-TI', 2018, 'aktif'),
(181402063, 'Darius Simamora', 'Laki - Laki', 'Tebing Tinggi', 'Teknologi Informasi', 'Fasilkom-TI', 2018, 'aktif'),
(181402072, 'Janrian N Simbolon', 'Laki - Laki', 'Medan', 'Teknologi Informasi', 'Fasilkom-TI', 2018, 'aktif'),
(181402084, 'Andrian Sebayang', 'Laki - Laki', 'Pancur Batu', 'Teknik Nuklir S-1', 'Fakultas Teknik', 2018, 'aktif'),
(181402093, 'Ian Ariessa Sitorus', 'Laki - Laki', 'Medan', 'Teknologi Informasi', 'Fasilkom-TI', 2018, 'aktif'),
(181402108, 'Sasdindah Manurung', 'Perempuan', 'Medam', 'Teknologi Informasi', 'Fasilkom-TI', 2018, 'aktif'),
(181402114, 'Jessica Gultom', 'Perempuan', 'Pematang Siantar', 'Teknologi Informasi', 'Fasilkom-TI', 2018, 'aktif'),
(181402300, 'Daenerys Targaryen', 'Perempuan', 'Kingslanding', 'Seni Pemerintahan', 'Fakultas Seni', 2018, 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
