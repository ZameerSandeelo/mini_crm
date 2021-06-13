-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 08:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` char(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` char(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Company 1', 'company1@test1.com', 'CompaniesLogos/20210613-060416-1623564256.jpg', 'http://test1.com', 0, 1, '2021-06-11 15:00:16', '2021-06-13 01:04:16'),
(4, 'Company 2', 'company2@test2.com', 'CompaniesLogos/20210611-200440-1623441880.jpg', 'http://test2.com', 0, 1, '2021-06-11 15:04:40', '2021-06-13 01:03:37'),
(6, 'Company3', 'Company3@abc.com', 'CompaniesLogos/20210613-060223-1623564143.jpg', 'http://www.Company3.com', 0, 1, '2021-06-13 01:02:23', '2021-06-13 01:02:23'),
(7, 'Company4', 'Company4@xyz.com', 'CompaniesLogos/20210613-060310-1623564190.jpg', 'http://www.Company4.com', 0, 1, '2021-06-13 01:03:10', '2021-06-13 01:03:10'),
(8, 'Company7', 'Company7@abc.com', 'CompaniesLogos/20210613-060850-1623564530.jpg', 'http://www.Company7.com', 0, 1, '2021-06-13 01:08:50', '2021-06-13 01:08:50'),
(9, 'Company9', 'Company9@wxy.com', 'CompaniesLogos/20210613-060933-1623564573.jpg', 'http://wwww.Company9.com', 0, 1, '2021-06-13 01:09:33', '2021-06-13 01:09:33'),
(10, 'Company10', 'Company10@wxy.com', 'CompaniesLogos/20210613-061042-1623564642.jpg', 'http://www.Company10.com', 0, 1, '2021-06-13 01:10:42', '2021-06-13 01:10:42'),
(11, 'Company11', 'Company11@abc.com', 'CompaniesLogos/20210613-061119-1623564679.jpg', 'http://www.Company11.com', 0, 1, '2021-06-13 01:11:19', '2021-06-13 01:11:19'),
(12, 'Company12', 'company12@abc.com', 'CompaniesLogos/20210613-061206-1623564726.jpg', 'http://www.Company.com', 0, 1, '2021-06-13 01:12:06', '2021-06-13 01:12:06'),
(13, 'Company13', 'company@abc.com', 'CompaniesLogos/20210613-061255-1623564775.jpg', 'http://www.company13.com', 0, 1, '2021-06-13 01:12:55', '2021-06-13 01:12:55'),
(14, 'Company14', 'company14@gmail.com', 'CompaniesLogos/20210613-061359-1623564839.jpg', 'http://www.company14.com', 0, 1, '2021-06-13 01:13:59', '2021-06-13 01:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `email` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `company_id`, `email`, `phone`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Zameer1', 'Hussain2', 3, 'emp@emp.com', '010101111222', 0, 1, '2021-06-12 07:55:14', '2021-06-12 08:21:15'),
(3, 'emp2', 'emp2', 4, 'emp2@emp2.com', '0200000000000000', 0, 1, '2021-06-12 11:55:15', '2021-06-12 11:55:15'),
(5, 'emp4', 'lemp4', 3, 'emp4@gmail.com', '741258963', 0, 1, '2021-06-12 11:56:28', '2021-06-12 11:56:28'),
(6, 'emp5', 'emp5l', 3, 'emp5@emp4.ocm', '414785214', 0, 1, '2021-06-12 11:57:23', '2021-06-12 11:57:23'),
(7, 'emp6', 'emp6ll', 3, 'emp6@emp6.emp6', 'emp6', 0, 1, '2021-06-12 11:58:19', '2021-06-12 11:58:19'),
(8, 'emp7', 'emp7l', 3, 'emp7@emp7.com', '02145874555', 0, 1, '2021-06-12 14:58:11', '2021-06-12 14:58:11'),
(9, 'emp8', 'llemp8', 3, 'emp8@emp8.com', '741253698', 0, 1, '2021-06-12 14:59:55', '2021-06-12 14:59:55'),
(10, 'emp9', 'llemp9', 3, 'emp9@gmail.com', '6369852147', 0, 1, '2021-06-12 15:00:35', '2021-06-12 15:00:35'),
(11, 'emp10', 'emp10ll', 3, 'emp10@emp.com', '41472588', 0, 1, '2021-06-12 15:01:39', '2021-06-12 15:01:39'),
(12, 'emp111', 'emp111', 4, 'emp111@gmail.com', '369852147', 0, 1, '2021-06-12 15:06:29', '2021-06-12 15:06:29'),
(13, 'emp22', 'emp22LLLLLLLL', 4, 'emp22@gmail.com', '1425369', 0, 1, '2021-06-12 15:08:00', '2021-06-12 15:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_11_170430_create_companies_table', 1),
(5, '2021_06_11_171056_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$KZTDzspPezGfzvNJPfCwpu6o7hJVpw.mhatz4LWETpxVD.gX3oKoa', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`),
  ADD KEY `companies_user_id_foreign` (`user_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_company_id_foreign` (`company_id`),
  ADD KEY `employees_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
