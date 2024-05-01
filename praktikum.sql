-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 05:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `nip`, `email`, `jabatan`) VALUES
(1, 'Agnes Torphy DVM', '2897522776', 'tmorissette@example.net', 'c'),
(2, 'Lelah Steuber', '0755365886', 'clakin@example.org', 'c'),
(3, 'Sophia Koch', '1487656652', 'halvorson.elisa@example.org', 'a'),
(4, 'Mrs. Cierra Pfannerstill PhD', '9184780564', 'amani08@example.net', 'a'),
(5, 'Maximillia Rosenbaum III', '8391438845', 'lila.simonis@example.org', 'a'),
(6, 'Geovanny Kulas', '9995653013', 'kory09@example.org', 'b'),
(7, 'Lulu Wisoky', '5031861657', 'dino.brakus@example.org', 'a'),
(8, 'Salma Raynor', '4092554067', 'ankunding.elvis@example.net', 'b'),
(9, 'Darryl Padberg', '5439462887', 'leuschke.ellsworth@example.com', 'b'),
(10, 'Mallie McDermott', '3899543872', 'xmurphy@example.net', 'a'),
(11, 'Jay Windler DDS', '8509276080', 'dominique.raynor@example.net', 'a'),
(12, 'Jonatan Christiansen', '8468658505', 'rau.queenie@example.com', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktd`
--

CREATE TABLE `ktd` (
  `id_ktd` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(9) NOT NULL,
  `nidn` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ktd`
--

INSERT INTO `ktd` (`id_ktd`, `nip`, `nidn`) VALUES
(1, '034997844', '7549766427'),
(2, '082902792', '0029206999'),
(3, '922623073', '2305342555'),
(4, '116007687', '6515404411'),
(5, '027642076', '2011957245'),
(6, '012876482', '1870794336'),
(7, '779242128', '7620442198'),
(8, '330444901', '9616743669'),
(9, '188396063', '4005132935'),
(10, '042166578', '3970871671'),
(11, '539188600', '1239097268'),
(12, '663637406', '9048137489');

-- --------------------------------------------------------

--
-- Table structure for table `ktm`
--

CREATE TABLE `ktm` (
  `id_ktm` bigint(20) UNSIGNED NOT NULL,
  `nim` int(9) NOT NULL,
  `nomor_identitas` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ktm`
--

INSERT INTO `ktm` (`id_ktm`, `nim`, `nomor_identitas`) VALUES
(1, 1, 'KTM12345'),
(2, 2, 'KTM23456'),
(3, 3, 'KTM34567'),
(4, 4, 'KTM45678'),
(5, 5, 'KTM56789'),
(6, 6, 'KTM67890'),
(7, 7, 'KTM78901'),
(8, 8, 'KTM89012');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` int(9) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `nim`, `jurusan`, `alamat`) VALUES
(1, 'John Doe', 1901001, 'Teknik Informatika', 'Jalan Merdeka 123'),
(2, 'Jane Doe', 1901002, 'Manajemen', 'Teknik Elektro'),
(3, 'Adam Smith', 1901003, 'Manajemen', 'Jalan Raya 456'),
(4, 'Sarah Lee', 1901004, 'Akuntansi', 'Jalan Jaya 101'),
(5, 'Michael Wong', 1901005, 'Hukum', 'Jalan Damai 12'),
(6, 'Lisa Chen', 1901006, 'Teknik Kimia', 'Jalan Jenderal Sudirman'),
(7, 'David Park', 1901007, 'Ekonomi', 'Jalan Pahlawan 56 '),
(8, 'Emily Wu', 1901008, 'Psikologi', 'Jalan Harmoni 88');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_18_043910_create_staff_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `nip`, `email`, `nama`, `tanggal_lahir`, `no_hp`) VALUES
(1, '0364563817', 'remington.crist@example.com', 'Idella Jast', '1979-09-08', '820.616.3981'),
(2, '0473756866', 'reinger.abbigail@example.com', 'Brandyn Hermiston', '1987-06-07', '(203) 415-2600'),
(3, '1882867133', 'jast.aracely@example.net', 'Thelma Osinski', '1997-12-31', '+1 (213) 457-3662'),
(4, '8971632117', 'pmaggio@example.com', 'Dr. Yolanda Hand DDS', '1985-11-26', '+15856946779'),
(5, '7859280687', 'fkoepp@example.net', 'Dr. Lawrence Satterfield', '2019-04-09', '+1.770.504.6706'),
(6, '5095230774', 'trever.grimes@example.com', 'Alden Cummings Jr.', '2001-02-04', '(743) 432-8701'),
(7, '2239112077', 'anibal97@example.com', 'Shemar Gutmann DDS', '1988-07-08', '408.250.0232'),
(8, '5421006475', 'will71@example.net', 'Ms. Anna Gislason', '2005-06-23', '201-476-0855');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `ktd`
--
ALTER TABLE `ktd`
  ADD PRIMARY KEY (`id_ktd`),
  ADD KEY `nip` (`nip`),
  ADD UNIQUE KEY `nidn` (`nidn`);

--
-- Indexes for table `ktm`
--
ALTER TABLE `ktm`
  ADD PRIMARY KEY (`id_ktm`),
  ADD KEY `ktm_ibfk_1` (`nim`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_nip_unique` (`nip`),
  ADD UNIQUE KEY `staff_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ktd`
--
ALTER TABLE `ktd`
  MODIFY `id_ktd` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ktm`
--
ALTER TABLE `ktm`
  MODIFY `id_ktm` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ktm`
--
ALTER TABLE `ktm`
  ADD CONSTRAINT `ktm_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
