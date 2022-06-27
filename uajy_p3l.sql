-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2022 pada 17.00
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uajy_p3l`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aset_kendaraan`
--

CREATE TABLE `aset_kendaraan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_mitra` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_mobil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_mobil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_transmisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_bahan_bakar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume_bahan_bakar` double(8,2) NOT NULL,
  `warna_mobil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas_mobil` int(11) NOT NULL,
  `fasilitas_mobil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plat_nomor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_stnk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_aset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_service_terakhir` date NOT NULL,
  `status_ketersediaan_mobil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biaya_sewa` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `aset_kendaraan`
--

INSERT INTO `aset_kendaraan` (`id`, `id_mitra`, `nama_mobil`, `tipe_mobil`, `jenis_transmisi`, `jenis_bahan_bakar`, `volume_bahan_bakar`, `warna_mobil`, `kapasitas_mobil`, `fasilitas_mobil`, `plat_nomor`, `no_stnk`, `kategori_aset`, `tgl_service_terakhir`, `status_ketersediaan_mobil`, `biaya_sewa`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Toyota New Vios', 'Sedan', 'AT', 'Pertamax', 30.00, 'Merah', 6, 'AC, Safety Bag', 'AB134', '12341234', 'Pribadi', '2022-03-04', 'Tidak Tersedia', 400000.00, '2022-06-15 18:52:10', '2022-06-15 19:18:09'),
(2, NULL, 'Honda Civic', 'Sedan', 'AT', 'Pertamax', 50.00, 'Abu-abu', 6, 'AC, Multimedia, Honda Sensing Safety', 'AB4356', '157422377', 'Mitra', '2022-02-10', 'Tersedia', 500000.00, '2022-06-15 18:54:04', '2022-06-15 18:54:04'),
(3, NULL, 'Toyota New Agya', 'City Car', 'AT', 'Pertalite', 30.00, 'Merah', 4, 'AC, Air Bag', 'AB1235', '13426742121', 'Pribadi', '2022-03-13', 'Tersedia', 250000.00, '2022-06-15 18:55:28', '2022-06-15 18:55:28'),
(4, NULL, 'Honda Brio', 'City Car', 'MT', 'Pertalite', 25.00, 'Putih', 4, 'AC, Air bag', 'AB2345', '256322685', 'Pribadi', '2022-04-04', 'Tersedia', 200000.00, '2022-06-15 18:56:53', '2022-06-15 18:56:53'),
(5, NULL, 'Toyota Rush', 'SUV', 'AT', 'Pertamax', 80.00, 'Putih', 6, 'AC, Air Bag', 'AB1239', '3556732588', 'Mitra', '2022-06-10', 'Tersedia', 990000.00, '2022-06-15 18:59:02', '2022-06-15 18:59:02'),
(6, NULL, 'Toyota Fortuner', 'SUV', 'AT', 'Pertamax', 85.00, 'Hitam', 8, 'AC, Air Bag, Safety System', 'AB654', '8532479098', 'Pribadi', '2022-05-01', 'Tersedia', 980000.00, '2022-06-15 19:06:44', '2022-06-15 19:06:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir_customer` date NOT NULL,
  `jenis_kelamin_customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp_customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `nama_lengkap`, `tgl_lahir_customer`, `jenis_kelamin_customer`, `email_customer`, `password_customer`, `no_telp_customer`, `alamat_customer`, `created_at`, `updated_at`) VALUES
(1, 'Andre', '2002-10-06', 'Pria', 'andre@gmail.com', 'andre1', '085472738213', 'Sleman', '2022-06-15 18:06:36', '2022-06-15 18:06:36'),
(2, 'Mita', '2000-12-10', 'Wanita', 'mita@gmail.com', 'mita1', '085276512348', 'Babarsari', '2022-06-15 19:32:09', '2022-06-15 19:32:09'),
(3, 'Ruth', '2001-08-06', 'Wanita', 'ruth@gmail.com', 'ruth1', '086545432456', 'Sagan', '2022-06-15 19:35:46', '2022-06-15 19:35:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_jadwal`
--

CREATE TABLE `detail_jadwal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pegawai` bigint(20) UNSIGNED DEFAULT NULL,
  `hari_shift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `driver`
--

CREATE TABLE `driver` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir_driver` date NOT NULL,
  `jenis_kelamin_driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp_driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_tersedia_driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahasa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_pdf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `driver`
--

INSERT INTO `driver` (`id`, `nama_driver`, `alamat_driver`, `tgl_lahir_driver`, `jenis_kelamin_driver`, `no_telp_driver`, `email_driver`, `password_driver`, `status_tersedia_driver`, `bahasa`, `file_pdf`, `created_at`, `updated_at`) VALUES
(1, 'Aminsyah', 'Janti', '1998-12-12', 'Pria', '082638462821', 'aminsyah@gmail.com', 'aminsyah1', 'Tersedia', 'Indonesia', 'D:\\xampp\\tmp\\php22D.tmp', '2022-06-15 18:17:53', '2022-06-15 18:17:53'),
(2, 'Yanto', 'Seturan', '1889-12-13', 'Pria', '086434567896', 'yanto@gmail.com', 'yanto1', 'Tersedia', 'Indonesia', 'D:\\xampp\\tmp\\php5ED2.tmp', '2022-06-15 19:55:29', '2022-06-15 19:55:29'),
(3, 'Riando', 'Gondokusuman', '1998-04-13', 'Pria', '086543256781', 'riando@gmail.com', 'riando1', 'Tersedia', 'Indonesia, Inggris', 'D:\\xampp\\tmp\\php7E3D.tmp', '2022-06-15 19:56:43', '2022-06-15 19:56:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_shift`
--

CREATE TABLE `jadwal_shift` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `waktu_shift` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(33, '2022_04_27_114140_create_customer_table', 1),
(34, '2022_04_27_114434_create_role_table', 1),
(35, '2022_04_27_114509_create_pegawai_table', 1),
(39, '2022_04_27_114755_create_detail_jadwal_table', 1),
(40, '2022_04_27_114825_create_jadwal_shift_table', 1),
(62, '2022_04_27_114621_create_driver_table', 2),
(63, '2022_04_27_114650_create_mitra_table', 2),
(64, '2022_04_27_114720_create_aset_kendaraan_table', 2),
(65, '2022_04_27_114854_create_promo_table', 2),
(66, '2022_04_27_114929_create_transaksi_table', 2),
(67, '2022_05_19_012800_jadwal', 2),
(68, '2022_05_19_014813_schedule', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mitra`
--

CREATE TABLE `mitra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mitra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_mitra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp_mitra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai_kontrak` date NOT NULL,
  `akhir_kontrak` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mitra`
--

INSERT INTO `mitra` (`id`, `no_ktp`, `nama_mitra`, `alamat_mitra`, `no_telp_mitra`, `mulai_kontrak`, `akhir_kontrak`, `created_at`, `updated_at`) VALUES
(1, '8656788765445678', 'Ninuk Rahayu', 'Babarsari', '08625347189213', '2022-01-01', '2022-12-25', '2022-06-15 19:37:07', '2022-06-15 19:37:07'),
(2, '8654356787654456', 'Diska Nainggolan', 'Kaliurang', '086543256786', '2022-02-02', '2023-02-02', '2022-06-15 19:38:34', '2022-06-15 19:38:34'),
(3, '987654456789', 'Henry Butarbutar', 'Jetis', '086543457764', '2022-01-01', '2022-12-25', '2022-06-15 19:44:01', '2022-06-15 19:44:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_role` bigint(20) UNSIGNED NOT NULL,
  `nama_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir_pegawai` date NOT NULL,
  `jenis_kelamin_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `id_role`, `nama_pegawai`, `alamat_pegawai`, `tgl_lahir_pegawai`, `jenis_kelamin_pegawai`, `email_pegawai`, `no_telp_pegawai`, `password_pegawai`, `foto_pegawai`, `created_at`, `updated_at`) VALUES
(1, 1, 'Esther', 'Babarsari', '2002-10-06', 'Perempuan', 'ester@gmail.com', '085270934150', '2002-10-06', 'est.jpg', '2022-05-18 19:20:34', '2022-06-15 19:21:12'),
(2, 2, 'Yesi', 'Babarsari', '2005-07-12', 'Perempuan', 'yesi@gmail.com', '08128464748', '2005-07-12', 'yesi.jpg', '2022-05-18 19:22:54', '2022-05-18 19:22:54'),
(3, 3, 'Reynaldi', 'Seturan', '2001-02-06', 'Laki-Laki', 'reynaldi@gmail.com', '081363646432', '2001-02-06', 're.jpg', '2022-05-18 19:24:57', '2022-05-18 19:24:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_promo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_promo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon` double(8,2) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_promo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `promo`
--

INSERT INTO `promo` (`id`, `kode_promo`, `jenis_promo`, `diskon`, `keterangan`, `status_promo`, `created_at`, `updated_at`) VALUES
(1, 'MHS', 'Pelajar & Mahasiswa', 20.00, 'Promo bagi customer yang berusia mulai dari 17-22 tahun dan memiliki kartu identitas pelajar/mahasiswa, mendapat  diskon sebesar 20%', 'Tersedia', '2022-06-15 19:13:42', '2022-06-15 19:13:42'),
(2, 'BDAY', 'Promo bagi customer yang berusia mulai dari 17-22 tahun dan memiliki kartu identitas pelajar/mahasiswa, mendapat  diskon sebesar 20%', 15.00, 'Promo bagi customer yang sedang berulang tahun, mendapat  diskon sebesar 15%.', 'Tersedia', '2022-06-15 19:14:12', '2022-06-15 19:15:33'),
(3, 'MDK', 'Mudik', 25.00, 'Promo berlaku selama masa libur Lebaran dan Nataru,  mendapat diskon sebesar 25%.', 'Tersedia', '2022-06-15 19:14:45', '2022-06-15 19:15:22'),
(4, 'WKN', 'Weekend', 10.00, 'Promo berlaku selama hari Sabtu dan Minggu, mendapat  diskon sebesar 10%', 'Tersedia', '2022-06-15 19:15:12', '2022-06-15 19:15:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `nama_role`, `created_at`, `updated_at`) VALUES
(1, 'Manager', NULL, NULL),
(2, 'Admin', NULL, NULL),
(3, 'Customer Service', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedule`
--

CREATE TABLE `schedule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_customer` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pegawai` bigint(20) UNSIGNED DEFAULT NULL,
  `id_aset` bigint(20) UNSIGNED DEFAULT NULL,
  `id_driver` bigint(20) UNSIGNED DEFAULT NULL,
  `no_ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_sim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `tanggal_mulai_sewa` date NOT NULL,
  `tanggal_akhir_sewa` date NOT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ekstensi_biaya` double(8,2) NOT NULL,
  `total_biaya_sewa` double(8,2) NOT NULL,
  `status_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_verifikasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_driver` int(11) NOT NULL,
  `kode_promo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aset_kendaraan`
--
ALTER TABLE `aset_kendaraan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aset_kendaraan_id_mitra_foreign` (`id_mitra`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_jadwal`
--
ALTER TABLE `detail_jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_jadwal_id_pegawai_foreign` (`id_pegawai`);

--
-- Indeks untuk tabel `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal_shift`
--
ALTER TABLE `jadwal_shift`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_id_role_foreign` (`id_role`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id_customer_foreign` (`id_customer`),
  ADD KEY `transaksi_id_pegawai_foreign` (`id_pegawai`),
  ADD KEY `transaksi_id_aset_foreign` (`id_aset`),
  ADD KEY `transaksi_id_driver_foreign` (`id_driver`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aset_kendaraan`
--
ALTER TABLE `aset_kendaraan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `detail_jadwal`
--
ALTER TABLE `detail_jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `driver`
--
ALTER TABLE `driver`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal_shift`
--
ALTER TABLE `jadwal_shift`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `mitra`
--
ALTER TABLE `mitra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `promo`
--
ALTER TABLE `promo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aset_kendaraan`
--
ALTER TABLE `aset_kendaraan`
  ADD CONSTRAINT `aset_kendaraan_id_mitra_foreign` FOREIGN KEY (`id_mitra`) REFERENCES `mitra` (`id`);

--
-- Ketidakleluasaan untuk tabel `detail_jadwal`
--
ALTER TABLE `detail_jadwal`
  ADD CONSTRAINT `detail_jadwal_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`);

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_id_aset_foreign` FOREIGN KEY (`id_aset`) REFERENCES `aset_kendaraan` (`id`),
  ADD CONSTRAINT `transaksi_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `transaksi_id_driver_foreign` FOREIGN KEY (`id_driver`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `transaksi_id_pegawai_foreign` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
