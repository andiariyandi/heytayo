-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2018 pada 06.36
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
-- Database: `db2_heytayo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(7, 8, 'Pengalaman Baik', '2018-11-23 04:58:55'),
(8, 8, 'Pengalaman Buruk', '2018-11-23 04:59:08'),
(9, 8, 'Fasilitas', '2018-11-23 04:59:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(3, 13, 'Andi Ariyandi', 'andi@gmail.com', 'Wah iya tadi saya lwat jalan itu, Harap hati-hati para pengendaraaa....', '2018-11-23 05:21:19'),
(4, 13, 'Wijaya', 'azizwijaya25@gmail.com', 'astagfirullah... gimana itu para penumang nyaaa??', '2018-11-23 05:22:02'),
(5, 13, 'Maria', 'maria@gmail.com', 'Thx info, smga para penumpang selamat smua.', '2018-11-23 05:22:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `judul`, `slug`, `body`, `post_image`, `created_at`) VALUES
(11, 7, 8, 'Asyiknya Pulang Ke Lampung', 'Asyiknya-Pulang-Ke-Lampung', '<p>Haloo readers... saya mau berbagi pengalam saya pulang kampung ke lampung.&nbsp;</p>\r\n\r\n<p>Saya dari Pekan Baru ke Lampung menggunakan BUS, ternyata sungguh menyenangkan :).</p>\r\n\r\n<p>Ayo yang lain silahkan coba menggunakan transportasi BUS..</p>\r\n', 'adi.jpg', '2018-11-23 05:02:10'),
(12, 7, 9, 'Mencoba Becak ke Pasar Tugu', 'Mencoba-Becak-ke-Pasar-Tugu', 'Hari Minggu pagi yang cerah kakak saya mencoba naik becak untuk ke pasar. katanya agar menikmati perjalanan ke pasar nya. Sungguh lucu ekspresi kakak saya , karena merupakan pengalaman pertamanya menaiki becak. HAhahahha.\r\nTransportasi Becak di daerah kami masih lumayan cukup banyak terdapat di perempatan jalan-jalan.', 'becak.jpg', '2018-11-23 05:08:42'),
(13, 8, 9, 'AWASS!! Ada Kecelakaan', 'AWASS-Ada-Kecelakaan', 'Dijalan diponegoro arah ke kalibata harap para penggendara lebih berhati-hati ketika melintasi jalan tersebut. Saat ini telah terjadi kecelakaan Bus yang cukup menghambat jalanan. Kabarkan berita ini siapa tahu ada keluarga yang sedang bepergian dengan bus yang Dengan BE \r\nKita doakan semoga korban selamat semua amin ', 'kecelakaan.jpg', '2018-11-23 05:11:47'),
(14, 8, 9, 'Angkot Oh Angkot!', 'Angkot-Oh-Angkot', 'Perjalan pulang dari kampus saya mengalami beberapa kali gangguan. And Mostlyy... Angkotlah sang biang masalahnya, beberapa kali ada angkot yang menyrobot jalan dan berhenti tanpa aba-aba, kan saya keget jadi nya...\r\n\r\noh iyaa.. saya ada foto nye ketika ada razia jalanan, Angkot itu pun kena razia, hahahahh', 'razia.JPG', '2018-11-23 05:16:20'),
(17, 9, 8, 'Lorena Terbaikkkk!', 'Lorena-Terbaikkkk', '<p>Tidak lah mengecewakan ketika berpergian dengan transpotasi Bus Lintas Sumatera dengan Lorena BUS. karena apa? fisilitasnya sanagt baik. seeprti full AC, terdapat terminal Listrik, Sopir tidak ugal-ugalan, tepat waktu, kursi nya cukup nyaman dan diberi selimut.</p>\r\n', 'kursibus4.jpg', '2018-11-23 05:20:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `register_date`) VALUES
(8, 'Andi Ariyandi', 'andi@gmail.com', 'andi', 'ce0e5bf55e4f71749eade7a8b95c4e46', '2018-11-23 04:48:55'),
(9, 'Aziz Wijaya', 'azizwijaya25@gmail.com', 'aziz', 'b85dc795ba17cb243ab156f8c52124e1', '2018-11-23 04:49:23'),
(10, 'Adi Ramadhan', 'adi@gmail.com', 'adi', 'c46335eb267e2e1cde5b017acb4cd799', '2018-11-23 04:49:57');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
