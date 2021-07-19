-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jul 2021 pada 20.42
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_hadifaturohman_1101181053`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_04_24_080036_create_sysusers_table', 1),
(2, '2021_07_18_121424_create_sysmenus_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sysmenus`
--

CREATE TABLE `sysmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namamenu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sysmenus_id` int(11) NOT NULL,
  `linkmenu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sysmenus`
--

INSERT INTO `sysmenus` (`id`, `namamenu`, `sysmenus_id`, `linkmenu`, `created_at`, `updated_at`) VALUES
(1, 'home', 0, '#', '2021-07-18 12:25:44', '2021-07-18 12:25:44'),
(2, 'Administrasi', 0, '#', '2021-07-18 12:25:57', '2021-07-18 12:25:57'),
(3, 'User Administration', 2, 'user', '2021-07-18 12:26:46', '2021-07-18 12:26:46'),
(4, 'Master', 0, '#', '2021-07-18 12:28:05', '2021-07-18 12:28:05'),
(5, 'Mahasiswa', 4, 'mahasiswa', '2021-07-18 12:29:07', '2021-07-18 12:29:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sysusers`
--

CREATE TABLE `sysusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namalengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sysusers`
--

INSERT INTO `sysusers` (`id`, `uname`, `namalengkap`, `email`, `upass`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'administrator', 'admin@pbo4.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', NULL, NULL),
(4, 'hadi', 'hadi faturohman', 'hadi.faturohman145@gmail.com', 'hadi', '2021-07-19 18:40:44', '2021-07-19 18:40:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sysmenus`
--
ALTER TABLE `sysmenus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sysusers`
--
ALTER TABLE `sysusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sysusers_uname_unique` (`uname`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sysmenus`
--
ALTER TABLE `sysmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sysusers`
--
ALTER TABLE `sysusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
