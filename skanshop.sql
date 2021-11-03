-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2021 pada 10.01
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skanshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `search` text NOT NULL,
  `kategori` text NOT NULL,
  `produk_lainnya` text NOT NULL,
  `posting` text NOT NULL,
  `foto` text NOT NULL,
  `nama_produk` text NOT NULL,
  `harga_produk` varchar(15) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `search`, `kategori`, `produk_lainnya`, `posting`, `foto`, `nama_produk`, `harga_produk`, `deskripsi`) VALUES
(10, '', 'makanan', '', '', 'vitha kristhi maharani-6139 international day for the elimination of violence against women.png', 'bakso bakar', '1234', 'pedes'),
(11, '', 'makanan', '', '', 'vitha kristhi maharani-6137 international day for the elimination of violence against women.png', 'kebab', 'Rp.10.000', 'pedes'),
(23, '', 'makanan', '', '', 'fathiyatul fitri-7044 doctor dental care.jpg', 'burger', 'Rp. 6000', 'sedeng'),
(25, '', 'makanan', '', '', 'fathiyatul fitri-7045 doctor dental care.jpg', 'hallo', '20000', 'pedes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `regestrasi`
--

CREATE TABLE `regestrasi` (
  `id_mhs` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `regestrasi`
--

INSERT INTO `regestrasi` (`id_mhs`, `nama`, `nohp`, `email`, `password`) VALUES
(1, 'eva', '081225525086', 'evafitriyani@gma', '1234'),
(8, 'eva fitriyani', '085456571855', 'evasurodadi@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `thms`
--

CREATE TABLE `thms` (
  `id_mhs` int(11) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `thms`
--

INSERT INTO `thms` (`id_mhs`, `nim`, `nama`, `alamat`, `prodi`) VALUES
(2, '26.07.04', 'Eva', 'Demak', 'S1-SI'),
(3, '07.26.04', 'fitri', 'Semarang', 'D3-M1'),
(4, '29.05.04', 'Yani', 'Kendal', 'S1-TI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `foto` text DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `cpassword` text NOT NULL,
  `wa` varchar(15) NOT NULL,
  `fb` text DEFAULT NULL,
  `ig` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `foto`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `email`, `password`, `cpassword`, `wa`, `fb`, `ig`) VALUES
(1, 'download.png', 'Linda', 'perempuan', '2021-10-19', 'Demak', 'linda@gmail.com', '123', '123', '087633567', 'http://localhost/crud/eva_php/profil.php', 'http://localhost/crud/eva_php/profil.php'),
(2, 'fathiyatul fitri-6913 kids game zone.png', 'eva fitriyani', 'perempuan', '2021-11-30', 'Semarang', 'evasurodadi@gmail.com', '2121', '2121', '081225525086', 'http://localhost/crud/eva_php/profil.php', 'http://localhost/crud/eva_php/profil.php'),
(10, NULL, '', 'laki-laki', '0000-00-00', '', 'umiatul@gmail.com', '', '', '', NULL, NULL),
(11, NULL, '', 'laki-laki', '0000-00-00', '', 'linda@gmail.com', '', '', '', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `regestrasi`
--
ALTER TABLE `regestrasi`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `thms`
--
ALTER TABLE `thms`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `regestrasi`
--
ALTER TABLE `regestrasi`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `thms`
--
ALTER TABLE `thms`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
