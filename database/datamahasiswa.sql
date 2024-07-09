-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Waktu pembuatan: 09 Jul 2024 pada 05.19
-- Versi server: 9.0.0
-- Versi PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datamahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_08_124333_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '351d1944217359bc409ca9367431bd8c72ada46e0a7068d74ba197bc7fdffbd2', '[\"*\"]', NULL, NULL, '2024-07-08 16:31:06', '2024-07-08 16:31:06'),
(2, 'App\\Models\\User', 1, 'auth_token', 'e7e5608a802d16474cc0abf848ddfaecf43753bbdc54e361ae6543082e019fda', '[\"*\"]', NULL, NULL, '2024-07-08 16:33:54', '2024-07-08 16:33:54'),
(3, 'App\\Models\\User', 1, 'auth_token', '23b98fb13a3c3cb6a0eece50113f787d1a7412d5e7509e0ca452c728d02b9069', '[\"*\"]', NULL, NULL, '2024-07-08 16:33:55', '2024-07-08 16:33:55'),
(4, 'App\\Models\\User', 1, 'auth_token', '8d490d8c4ddc913c0261f6485fbe611ef72b6448949533d764b496ef5b64c7ba', '[\"*\"]', NULL, NULL, '2024-07-08 17:04:49', '2024-07-08 17:04:49'),
(5, 'App\\Models\\User', 1, 'auth_token', '564b8353f62ba26e3e4124e6ff6ff29fa0f1439bcc7a3a2a79f3f6d0129a32f1', '[\"*\"]', NULL, NULL, '2024-07-08 17:19:48', '2024-07-08 17:19:48'),
(6, 'App\\Models\\User', 1, 'auth_token', '9615a469ccab3fb8e3cfe74a7ca0f4001749df35b5c00a3ee48ebc8083288bf4', '[\"*\"]', NULL, NULL, '2024-07-08 17:29:19', '2024-07-08 17:29:19'),
(7, 'App\\Models\\User', 2, 'auth_token', 'b60a89560394e6996cb8b567ad3e3860399e1929b0e5fa9e6d817869b1919575', '[\"*\"]', NULL, NULL, '2024-07-08 17:43:19', '2024-07-08 17:43:19'),
(8, 'App\\Models\\User', 1, 'auth_token', 'e980b3bd2743b02aa53876a368a79ccd30679adbbf16a091de31d0481d5bac64', '[\"*\"]', NULL, NULL, '2024-07-08 17:54:22', '2024-07-08 17:54:22'),
(9, 'App\\Models\\User', 1, 'auth_token', '1dcc0088ae339c6593deecf0c7c1f40bedb6788f805d6e4832666f56119f204a', '[\"*\"]', NULL, NULL, '2024-07-08 17:55:17', '2024-07-08 17:55:17'),
(10, 'App\\Models\\User', 1, 'auth_token', 'bf2ff5e0023be320e39e7db7c1cad276b990c8518d5e26ae3a0417804cfb84b4', '[\"*\"]', NULL, NULL, '2024-07-08 18:01:03', '2024-07-08 18:01:03'),
(11, 'App\\Models\\User', 3, 'auth_token', '2e1ccc3422f499bc9958c4c229fdeaa3ae0a2c59f4e12d55082df92f92a49ced', '[\"*\"]', '2024-07-08 23:02:33', NULL, '2024-07-08 18:23:06', '2024-07-08 23:02:33'),
(12, 'App\\Models\\User', 1, 'auth_token', '86a500c900328e8eb46720fc5144fcfb8d2d1f8f9f6568152111e073c957d20c', '[\"*\"]', NULL, NULL, '2024-07-08 23:04:54', '2024-07-08 23:04:54'),
(13, 'App\\Models\\User', 4, 'auth_token', 'eab8e1a7ae2e341438791aa350d164658a8a7d49f85c1f541706e5c10063356d', '[\"*\"]', NULL, NULL, '2024-07-09 01:48:45', '2024-07-09 01:48:45'),
(14, 'App\\Models\\User', 4, 'auth_token', '37cf19c5f7dee55b91dafcdb2ebd0eb652b45d501593b15080c83eb425cfb1bf', '[\"*\"]', NULL, NULL, '2024-07-09 01:49:19', '2024-07-09 01:49:19'),
(15, 'App\\Models\\User', 1, 'auth_token', '4b40c5a2bd31318d299b73eb90aca37e582044f205bfc4d0c3e197a7c6892ee7', '[\"*\"]', NULL, NULL, '2024-07-09 05:13:05', '2024-07-09 05:13:05'),
(16, 'App\\Models\\User', 1, 'auth_token', 'ffd469cea188993f77370c234ca90278bb0377172764c8b1c077b98fedf2ca3a', '[\"*\"]', NULL, NULL, '2024-07-09 05:14:53', '2024-07-09 05:14:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9SGzaIhTbzT3NeAkJv9nzvsej0UNSFRjkqZLvBkZ', 1, '172.22.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiemtORWpET3g0bE1sRGdCZkppUGQ0cVZCTTJpRmw4Wm1vdFNwVW5XciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4OC9zdHVkZW50cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxMjoiYWNjZXNzX3Rva2VuIjtzOjUxOiIxNnx0eFdoUm5EOVhBUW5SMHk1aTlDQUxYb09ldzBNczZyYjQ4ZmRFRGc1NmJlYzg5Y2MiO30=', 1720502295),
('mtGRHqy0zvTlGAGknnV4CSTqd88Xxkn82TrCNhMJ', 4, '172.22.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidXhNNjZaM1UwTTZPblVPU3hPQmRZbkJGcVprb21YbzV2VjRlbVdkaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4OC9maWxlcyI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O3M6MTI6ImFjY2Vzc190b2tlbiI7czo1MToiMTR8OEVDT05MeGJpTlVoWElWUGFqeWlldktDdE5ZakJzNTkyMzluMklsRzE3NjFmMWY2Ijt9', 1720490397);

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `age` int NOT NULL,
  `hobby` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone_num` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `faculty` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`, `age`, `hobby`, `address`, `phone_num`, `faculty`, `created_at`, `updated_at`) VALUES
(1, 'John Loka', 20, 'Polisi', 'Labasari', '12345678', 'Teknik Kejuruan', '2024-07-08 16:32:09', '2024-07-08 18:40:59'),
(4, 'pasek', 19, 'Memancing', 'Abang', '087980678543', 'Teknik', '2024-07-08 18:31:14', '2024-07-08 18:31:14'),
(5, 'wayan mangku', 23, 'kerauhan', 'jalan banjar new', '08123456789', 'kerohanian', '2024-07-09 01:50:26', '2024-07-09 01:50:26'),
(6, 'wayan surip', 23, 'kerauhan', 'jalan banjar new', '08123456789', 'kerohanian', '2024-07-09 05:14:02', '2024-07-09 05:14:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `uploads`
--

INSERT INTO `uploads` (`id`, `file_path`, `original_name`, `created_at`, `updated_at`) VALUES
(2, 'uploads/rV2z5UVwyUEDLnfhT2G7Xjov9B2YGiGXpo2cGrp1.pdf', 'srs.pdf', '2024-07-08 18:06:52', '2024-07-08 18:06:52'),
(4, 'uploads/DuQ0UpAQ6AjlC2ha3Zyb4HyQQogMe3F9nRVlRwrV.pdf', 'tgdojs,+16.pdf', '2024-07-09 05:17:59', '2024-07-09 05:17:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'pasek', 'komangpasek281@gmail.com', NULL, '$2y$12$lbQyw3Yk6Qy9tBr0XzYNsutm2YB7I0V8LkVImmXcJod5Cl2iFzTeq', 'CMCkrGoCIv67Z8GTj48rmsXROfquoBz7TP6uWudWwOKQrmppNHGWAZUaaOfR', '2024-07-08 16:23:14', '2024-07-08 23:00:20'),
(2, 'yy', 'yy@gmail.com', NULL, '$2y$12$lEaX.3agj6EbP192jiPFO.fq0EWV.tXetYni7c8.bc5yk9DYiWJrW', NULL, '2024-07-08 17:43:19', '2024-07-08 17:43:19'),
(3, 'pasek', 'pasek@gmail.com', NULL, '$2y$12$gEH0p9Z/mvL7Y7uYYb/UEOte5tzyW0i6VLjfgSvRxyPWt49o.DmTG', NULL, '2024-07-08 18:23:06', '2024-07-08 18:23:06'),
(4, 'test', 'test@gmail.com', NULL, '$2y$12$b/LQAiLDO6cG4XfKvHPeremRXuVlQ5q49uhpL.3ROxBrjR2DrfWyC', NULL, '2024-07-09 01:48:45', '2024-07-09 01:48:45');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
