-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Nov 2023 pada 06.26
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisatasmg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisatasemaranglo`
--

CREATE TABLE `wisatasemaranglo` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `harga` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wisatasemaranglo`
--

INSERT INTO `wisatasemaranglo` (`id`, `nama`, `alamat`, `harga`) VALUES
(1, 'Wisata Lawang Sweu', 'Jl. Pemuda No 160 Sekayu kota Semarang', '10.000-30.000'),
(2, 'Wisata Masjid Agung Jawa Tengah', 'Jl. Gajah Raya, ambiroto', 'Gratis'),
(3, 'Alun Alun Kota Semarang', 'Jl. Kauman ', 'Gratis'),
(4, 'Pantai Tirang', 'Tugurejo kota semarang', '10.000'),
(5, 'Sam Poo Kong', 'Jl. Simongan no 129', '10.000'),
(6, 'Goa Kreo', 'jl. Raya Goa Kreo', '10.000'),
(7, 'Kota Lama', 'Jl. Tanjung mas Kota Semaran', '3000'),
(8, 'Masjid Kapal', 'Jl. Kyai Padak ', '10.000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `wisatasemaranglo`
--
ALTER TABLE `wisatasemaranglo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `wisatasemaranglo`
--
ALTER TABLE `wisatasemaranglo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
