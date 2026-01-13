-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 103.179.56.211:3306
-- Generation Time: Dec 04, 2025 at 07:44 AM
-- Server version: 8.4.6
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_city`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_themes`
--

CREATE TABLE `app_themes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `primary_colour` varchar(255) NOT NULL,
  `secondary_colour` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_themes`
--

INSERT INTO `app_themes` (`id`, `name`, `primary_colour`, `secondary_colour`, `image_path`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Merah', '#BC0000', '#FF928A', 'tema/merah.png', 1, '2025-11-30 13:29:45', '2025-12-04 05:34:23'),
(2, 'Hijau', '#319F43', '#9CFF8F', 'tema/hijau.png', 0, '2025-11-30 13:29:45', '2025-12-04 05:34:23'),
(3, 'Kuning', '#E2BD00', '#FFEB00', 'tema/kuning.png', 0, '2025-11-30 13:29:45', '2025-12-04 05:34:23'),
(4, 'Biru', '#2A87FF', '#BDE4FF', 'tema/biru.png', 0, '2025-11-30 13:29:45', '2025-12-04 05:34:23'),
(5, 'Hitam', '#4A4949', '#CFCFCF', 'tema/hitam.png', 0, '2025-11-30 13:29:45', '2025-12-04 05:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `display_order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image_url`, `link_url`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'public/carousel/3FoS6Sc3sfSZ5qOl1LN3T7JEexkgaqa0ZDoTDTa9.png', 'http://localhost:5173/Manajemen_Konten/Branding_Kota/Tambah_Banner', 2, 1, '2025-10-17 13:55:57', '2025-10-20 13:54:02'),
(5, 'public/carousel/ewCjlWOCVY7lxMcHYbEktTx2vlbQ9Ne8HlVVuDaW.png', 'tixchain.id', 5, 1, '2025-10-20 11:38:19', '2025-10-20 12:10:52'),
(6, 'public/carousel/U1TmC7lGGxV17nDVwBIDN1taWbNPobd8jVWeCIvj.png', 'http://localhost:5173/Manajemen_Konten/Branding_Kota/Tambah_Banner', 3, 1, '2025-10-20 12:09:17', '2025-10-20 12:09:17'),
(7, 'public/carousel/u1K5lw9hmPX5mYz3Lc3CF42czpbUxXQLqMZ05c0Q.png', 'https://smart-city-admin.citiasiainc.id/Manajemen_Konten/Branding_Kota/Tambah_Banner', 4, 1, '2025-10-20 12:10:39', '2025-10-20 12:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `branding_kota`
--

CREATE TABLE `branding_kota` (
  `id` bigint UNSIGNED NOT NULL,
  `selected_provinsi_kode` varchar(5) NOT NULL,
  `selected_provinsi_nama` varchar(100) NOT NULL,
  `selected_kota_kode` varchar(10) NOT NULL,
  `selected_kota_nama` varchar(100) NOT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `theme_settings` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `branding_kota`
--

INSERT INTO `branding_kota` (`id`, `selected_provinsi_kode`, `selected_provinsi_nama`, `selected_kota_kode`, `selected_kota_nama`, `logo_url`, `theme_settings`, `created_at`, `updated_at`) VALUES
(1, '63', 'Kalimantan Selatan', '63.10', 'Tanah Bumbu', 'logo/uMoQa8YIrb7RPlYmII7iBLJpkQtZfhxv4DqOIQi1.png', NULL, '2025-10-11 14:12:44', '2025-10-16 18:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `citizen_reports`
--

CREATE TABLE `citizen_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` char(36) NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `media` varchar(255) DEFAULT NULL,
  `location` text NOT NULL,
  `location_details` varchar(255) DEFAULT NULL,
  `status` enum('Terkirim','Di Proses','Selesai','Di tolak') NOT NULL DEFAULT 'Terkirim',
  `status_description` text,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `citizen_reports`
--

INSERT INTO `citizen_reports` (`id`, `user_id`, `category_id`, `title`, `description`, `media`, `location`, `location_details`, `status`, `status_description`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(55, '5a4f1a3b-9ed4-4bb9-ada6-9388858dc77f', 8, 'Jalan Berlubang, Pemotor Scoopy Asal Depok Motornya Patah', 'Tolong jalanannya berlubang, bikin banyak korban, mohon diproses', '[\"citizen_reports\\/original\\/be7defe5-ef08-4335-924a-ce71df6cd3a9.jpg\"]', 'Depok lama', 'Deket stasiun depok lama', 'Di tolak', 'Laporan di tolak mohon menunggu sabar ya', NULL, NULL, '2025-11-06 09:28:33', '2025-12-04 06:11:19'),
(56, '5a4f1a3b-9ed4-4bb9-ada6-9388858dc77f', 11, 'Monyet Liar Masuk Halaman Rumah', 'Tolong ada monyet lepas, masuk halaman rumah saya', '[\"citizen_reports\\/original\\/a97457d5-f077-44bd-be1f-37fbcd80c37c.jpeg\"]', 'Rawabuntu, Perum Kopi Kenangan', 'Halaman depan perumahan saya', 'Terkirim', 'Laporan berhasil dikirim, mohon menunggu.,', NULL, NULL, '2025-11-06 09:40:09', '2025-11-11 03:59:51'),
(59, 'bbd8ed03-ed35-4d3d-b19a-1e0d4c594d1d', 11, 'Ada satwa liar lepas di kebun saya', 'Tolong pak/bu ini ada satwa liar lepas di kebun saya, satwa liarnya merusak kebun saya', '[\"citizen_reports\\/original\\/1a88140f-2ed4-41a3-89e7-b0e43d441442.jpg\",\"citizen_reports\\/original\\/9cd8f964-7ba6-495f-83ff-2aab925af2af.jpg\"]', 'Jatinegara', 'Samping stasiun', 'Terkirim', NULL, NULL, NULL, '2025-11-26 05:47:18', '2025-11-26 05:47:18'),
(60, 'bbd8ed03-ed35-4d3d-b19a-1e0d4c594d1d', 7, '3 Semprul mengejar BBH', 'Jual aja sepaket 500 rebu net (nego dicuekin)\nmulus tapi min\nlokasi pamulang belah kiri', '[\"citizen_reports\\/original\\/970c1724-11f1-4779-a0b4-ccdbbf04d4e9.jpg\"]', 'Kecamatan Jatinegara, Jakarta', 'Test', 'Terkirim', NULL, '-6.21933910', '106.86494810', '2025-12-04 05:23:59', '2025-12-04 05:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_call`
--

CREATE TABLE `emergency_call` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `emergency_call`
--

INSERT INTO `emergency_call` (`id`, `name`, `phone_number`, `icon`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 'Polisi', '110', 'emergency_icons/zDuTJIBOMP1yuliACVCPaMWzaw8TdcH50DYdHbp3.svg', 1, '2025-11-20 03:18:56', '2025-11-20 05:44:59'),
(6, 'Ambulans', '112', 'emergency_icons/r8I7votDtbuYjjrKStANR5OYbSu51IafgV5G5Fr8.svg', 1, '2025-11-20 03:30:15', '2025-11-20 05:43:34'),
(7, 'Pemadam Kebakaran', '113', 'emergency_icons/LUDjvuDVoDSXWRazdpnS5M76cLAQb4BlnLCb8BlT.svg', 1, '2025-11-20 03:40:13', '2025-11-20 05:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int UNSIGNED NOT NULL,
  `facility_categories_id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `maps_url` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `facility_categories_id`, `name`, `image_url`, `maps_url`, `created_at`, `updated_at`) VALUES
(28, 5, 'Lapangan Badminton', 'olahraga/28_gor_namuja.jpg', 'https://www.google.com/maps/place/Lapangan+Badminton+PB+Gelatik/@-6.2423245,106.8264768,17z/data=!3m1!4b1!4m6!3m5!1s0x2e69f3e74fac45c1:0xe41d8417f67aeefd!8m2!3d-6.2423245!4d106.8313477!16s%2Fg%2F11ffj_vsz_?entry=ttu&g_ep=EgoyMDI1MTEwNC4xIKXMDSoASAFQAw%3D%3D', '2025-11-06 03:46:03', '2025-11-06 09:42:57'),
(29, 5, 'Lapangan Futsal', 'lapangan/29_Tebing.jpeg', 'https://www.google.com/maps/place/Lap.Futsal+Villa+Kelapa+Dua/@-6.2130067,106.7637032,17z/data=!3m1!4b1!4m6!3m5!1s0x2e69f7296aefff75:0xc7b1288e4d4662c6!8m2!3d-6.2130067!4d106.7662781!16s%2Fg%2F11c6s86j4f?entry=ttu&g_ep=EgoyMDI1MTEwNC4xIKXMDSoASAFQAw%3D%3D', '2025-11-06 04:22:13', '2025-11-06 09:44:17'),
(30, 8, 'SD Global Islamic School', 'sekolah/30_SD_Global_Islamic_School.png', 'https://www.google.com/maps/place/SD+Global+Islamic+School/@-6.2912446,106.8540945,17z/data=!3m1!4b1!4m6!3m5!1s0x2e69f3d742d4295b:0x714140300b8e53cf!8m2!3d-6.2912446!4d106.8566694!16s%2Fg%2F122892xc?entry=ttu&g_ep=EgoyMDI1MTEwNC4xIKXMDSoASAFQAw%3D%3D', '2025-11-06 04:23:14', '2025-11-06 09:47:46'),
(31, 5, 'Lapangan Basket', 'lapangan/31_Lapangan_Basket.jpg', 'https://www.google.com/maps/place/Lapangan+Basket+Rawajati/@-6.2605814,106.8396434,15z/data=!4m10!1m2!2m1!1sLapangan+basket!3m6!1s0x2e69f3fb55a5c697:0xe44cc436fe1d6b66!8m2!3d-6.2605814!4d106.8571529!15sCg9MYXBhbmdhbiBiYXNrZXRaESIPbGFwYW5nYW4gYmFza2V0kgEQYmFza2V0YmFsbF9jb3VydJoBI0NoWkRTVWhOTUc5blMwVkpRMEZuU1VSb0xUUlhRbVpCRUFF4AEA-gEECAAQGw!16s%2Fg%2F11gjs2dclh?entry=ttu&g_ep=EgoyMDI1MTEwNC4xIKXMDSoASAFQAw%3D%3D', '2025-11-06 09:45:51', '2025-11-10 07:06:34'),
(32, 8, 'SMPN 49 Jakarta', 'sekolah/32_SMPN_49_Jakarta.png', 'https://www.google.com/maps/place/SMPN+49+Jakarta/@-6.2854926,106.8687072,17z/data=!3m1!4b1!4m6!3m5!1s0x2e69f28f284ed637:0xaa28c58d7a415f37!8m2!3d-6.2854926!4d106.8712821!16s%2Fg%2F122091j2?entry=ttu&g_ep=EgoyMDI1MTEwNC4xIKXMDSoASAFQAw%3D%3D', '2025-11-06 09:48:39', '2025-11-06 09:48:39'),
(33, 9, 'Taman Ismail Marzuki', 'taman/33_Taman_Ismail_Marzuki.jpg', 'https://www.google.com/maps/place/Taman+Ismail+Marzuki+(TIM)/@-6.1902998,106.8359599,17z/data=!3m1!4b1!4m6!3m5!1s0x2e69f51f0ca6b0eb:0xe5788342658120f1!8m2!3d-6.1902998!4d106.8385348!16s%2Fg%2F11vb68fvp4?entry=ttu&g_ep=EgoyMDI1MTEwNC4xIKXMDSoASAFQAw%3D%3D', '2025-11-06 09:50:19', '2025-11-06 09:50:19'),
(34, 9, 'Taman Bunga', 'taman/34_Taman_Bunga.jpg', 'https://www.google.com/maps/place/Taman+Bunga+Wiladatika+Saung+Soka/@-6.3716979,106.8911888,17z/data=!3m1!4b1!4m6!3m5!1s0x2e69ed0071dbd537:0x304a2f8e66460bfb!8m2!3d-6.3716979!4d106.8937637!16s%2Fg%2F11ybzwgcxy?entry=ttu&g_ep=EgoyMDI1MTEwNC4xIKXMDSoASAFQAw%3D%3D', '2025-11-06 09:52:49', '2025-11-06 09:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `facility_categories`
--

CREATE TABLE `facility_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `facility_categories`
--

INSERT INTO `facility_categories` (`id`, `name`, `banner_url`, `created_at`, `updated_at`) VALUES
(5, 'Lapangan', 'facility_categories/original/b6ecb345-e259-4455-b8b6-ab0b99832896.jpg', '2025-11-01 15:53:59', '2025-11-06 08:51:50'),
(8, 'Sekolah', 'facility_categories/original/965dd2a1-4569-43cc-90ba-fcf598cb7df5.jpg', '2025-11-06 04:22:54', '2025-11-06 09:42:04'),
(9, 'Taman', 'facility_categories/original/a2b4c0ca-39f5-4334-88c0-56696795b77d.jpeg', '2025-11-06 09:49:23', '2025-11-06 09:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon_url` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `link`, `icon_url`, `status`, `created_at`) VALUES
(6, 'Fasilitas Kesehatan', 'https://dinkes.tanahbumbukab.go.id/', 'feature_icons/bzBHnmiIj0ZDzXNhPrSTwSKCt8V8P36ydnuJciEj.png', 'active', '2025-11-24 06:59:22'),
(7, 'Dukcapil', 'https://disdukcapil.tanahbumbukab.go.id/', 'feature_icons/EZCdPURxLcHXFvtJrdId9DrvlWJEU5QLBPNX8laW.png', 'active', '2025-11-24 07:07:02'),
(8, 'Pajak', 'https://pendapatan.tanahbumbukab.go.id/', 'feature_icons/ZJTQ5DsooD1YCOJKahXXutERCkSe0PgCqbwed1k0.png', 'active', '2025-11-24 07:07:21'),
(9, 'Perizinan', 'https://myperizinan.tanahbumbukab.go.id/', 'feature_icons/uurPevfpqrDQ4Xwwhs7bkFLYheAaccdVwaTsqzTt.png', 'active', '2025-11-24 07:07:40'),
(10, 'Monitoring Kota', 'https://tanahbumbukab.com/', 'feature_icons/VUGf7vCrTbtNWKPgBP5cobZJ952roaqJ2O14W6Eq.png', 'active', '2025-11-24 07:07:59'),
(11, 'Transportasi Umum', 'https://dishubtanahbumbu.com/', 'feature_icons/9AWWXPHmyKiPJnTGRpOofnxFcWLRWjmjvHZeGFUZ.png', 'active', '2025-11-24 07:08:24'),
(12, 'Pengelolaan Sampah', 'https://dlh.tanahbumbukab.go.id/', 'feature_icons/PqK5knEFK4srseQJlAfEocss0c1m76ebutNg0cat.png', 'active', '2025-11-24 07:08:43'),
(13, 'Perpustakaan', 'https://kbk25065c7.perpustakaandigital.com/index', 'feature_icons/aIHJERO6DojlPTL64fJFUK7wWpZ49c9EJNMjuCuB.png', 'active', '2025-11-24 07:09:00'),
(14, 'Harga Pangan', 'https://sipangan-dpkpkalsel.badanpangan.go.id/', 'feature_icons/RVaNHyJTACdm5Xsh4UBH0kkPOU6aqqWLkJlwngms.png', 'active', '2025-11-24 07:09:14'),
(17, 'test', 'http://localhost:5173/Manajemen_fitur/Tambah_Manajemen_fitur', 'feature_icons/MrYc3t0fzgbUhIIh02L3INKdDWqUrDDtamWOeviC.svg', 'active', '2025-12-01 09:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `log_report`
--

CREATE TABLE `log_report` (
  `id` bigint UNSIGNED NOT NULL,
  `report_id` bigint UNSIGNED NOT NULL,
  `status` enum('Terkirim','Di Proses','Selesai','Di tolak') NOT NULL,
  `description` text,
  `changed_by` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `log_report`
--

INSERT INTO `log_report` (`id`, `report_id`, `status`, `description`, `changed_by`, `created_at`, `updated_at`) VALUES
(39, 55, 'Terkirim', 'Laporan berhasil dikirim, mohon menunggu.', NULL, '2025-11-06 09:29:23', '2025-11-06 09:29:23'),
(40, 55, 'Di Proses', 'Laporan sedang diproses, mohon menunggu.', NULL, '2025-11-06 09:32:15', '2025-11-06 09:32:15'),
(41, 55, 'Selesai', 'Laporan sudah selesai diatasi.', NULL, '2025-11-06 09:32:32', '2025-11-06 09:32:32'),
(42, 56, 'Terkirim', 'Laporan berhasil dikirim, mohon menunggu.', NULL, '2025-11-06 09:40:28', '2025-11-06 09:40:28'),
(43, 56, 'Di Proses', 'Laporan sedang diproses, mohon menunggu.,', NULL, '2025-11-06 09:40:43', '2025-11-11 03:59:43'),
(58, 55, 'Terkirim', 'Laporan berhasil dikirim, mohon menunggu sabar', NULL, '2025-11-11 04:22:41', '2025-11-11 04:22:41'),
(59, 55, 'Di Proses', 'Laporan berhasil dikirim, mohon menunggu sabar ya', NULL, '2025-11-11 04:24:10', '2025-11-11 04:24:10'),
(63, 55, 'Di tolak', 'Laporan di tolak mohon menunggu sabar ya', NULL, '2025-12-04 06:11:19', '2025-12-04 06:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2025_09_06_140837_create_roles_table', 1),
(12, '2025_09_07_123334_create_users_table', 1),
(13, '2025_09_07_141040_create_sessions_table', 1),
(14, '2025_09_07_160513_create_personal_access_tokens_table', 1),
(15, '2025_09_23_074255_create_branding_kota_table', 1),
(16, '2025_09_23_075131_create_banners_table', 1),
(17, '2025_09_23_075659_create_news_categories_table', 1),
(18, '2025_09_23_080936_create_news_table', 1),
(19, '2025_09_25_080140_create_public_info_table', 1),
(20, '2025_10_05_175505_create_cache_table', 1),
(25, '2025_10_17_091431_create_password_resets_table', 3),
(31, '2025_10_15_101010_create_report_categories_table', 4),
(32, '2025_10_15_101020_create_citizen_reports_table', 4),
(33, '2025_10_29_080336_create_log_report_table', 5),
(34, '2025_10_31_031033_create_facility_category', 6),
(35, '2025_11_02_150717_create_facilities_table', 7),
(36, '2025_11_17_123951_create_emergency_call_table', 8),
(37, '2025_11_20_074940_create_features_table', 9),
(38, '2025_11_28_064606_create_app_themes_table', 10),
(39, '2025_11_30_064606_create_app_themes_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `author_name` varchar(100) NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `status` enum('published','draft') NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `author_name`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(20, '<p>Pemerintah \'Gas Pol\' Percepat Pencairan 7 Jenis Bansos Jelang Akhir Tahun 2025</p>', '<p>Jelang batas waktu 31 Desember 2025, Kementerian Keuangan dan Kementerian Sosial mempercepat penyaluran berbagai program bansos, termasuk PKH Tahap IV, BPNT Rp600 Ribu, dan BLT Kesra Rp900 Ribu. Percepatan ini dilakukan untuk menjaga daya beli masyarakat dan mencegah hangusnya anggaran.</p>', 'news-images/original/0c631877-d6c2-447a-9ab5-c27684671ffd.jpeg', 'Admin Tanah Bumbu', 6, 'published', '2025-11-17 12:37:33', '2025-11-25 03:16:17'),
(21, '<p>Taman Bunga Ramai Pengunjung Jelang Akhir Pekan</p>', '<p>Taman bunga ramai dikunjungi masyarakat pada saat akhir pekan, tiket taman bunga habis terjual dalam waktu 2 jam, karena lonjakan pengunjung taman bunga hingga overload karena ramainya masyakarakat yang berlibur.</p>', 'news-images/original/c4e286d9-41f6-4430-b278-7879b8a58c10.jpg', 'Admin Tanah Bumbu', 6, 'published', '2025-11-17 12:47:50', '2025-11-25 03:16:35'),
(22, '<p>Jalan Rusak Di Tanah Bumbu</p>', '<p>Jalan rusak menyebabkan motor warga sekitar yang melintas di jalan Tanah Bumbu mengalami kerusakan, warga melakukan protes ke pemerintah setempat untuk segera memperbaiki jalan yang rusak untuk mengurangi korban serupa bisa terjadi lagi.</p>', 'news-images/original/75d59a98-a361-4774-9b43-227c6d986305.jpg', 'Admin Tanah Bumbu', 18, 'published', '2025-11-17 12:49:49', '2025-11-25 03:16:50'),
(24, '<p>Bupati Tanah Bumbu Perkuat Gotong Royong Lewat \'Aksi Sinergitas Merah Putih\' di Mantewe dan Angsana</p>', '<p>Pemkab Tanah Bumbu masif menggelar Aksi Sinergitas Merah Putih yang melibatkan seluruh elemen masyarakat dan ASN. Kegiatan ini bertujuan mendekatkan pelayanan publik, mempererat silaturahmi, sekaligus membangkitkan budaya gotong royong dalam aksi bersih-bersih lingkungan desa dan jalan sehat.</p>', 'news-images/original/9201c51c-1b01-45d3-9304-a8399cdff65e.jpg', 'Admin Tanah Bumbu', 22, 'published', '2025-11-25 03:18:50', '2025-11-25 03:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Politik', '2025-10-12 08:45:00', '2025-10-15 08:52:01'),
(5, 'Pendidikan', '2025-10-12 08:45:19', '2025-10-12 08:45:19'),
(6, 'Hiburan', '2025-10-14 03:41:39', '2025-10-17 09:37:04'),
(9, 'Bencana Alam', '2025-10-14 10:31:54', '2025-10-14 10:31:54'),
(18, 'Infrastruktur', '2025-10-17 09:37:21', '2025-10-17 09:37:21'),
(22, 'Sosial', '2025-11-25 03:17:50', '2025-11-25 03:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@example.com', 'koaGXmQmBmG36Gbu2o7DsHVazJhqAr5scV8WlWhwxgqf3x8jtu0uwuxmbtxgHgMG', '2025-10-17 13:32:11'),
('muhammad.alfarizki@citiasiainc.id', 'pLzJGlEJ2mGpGjOptQM9ZSDxj3CVqhO8xw26gq2reV9v0twrAhR38ZLstnYjCD4A', '2025-10-27 13:24:01'),
('ahmad.zulkarnaen@citiasiainc.id', 'bYIW78af8x4svvigw6ZSoSMjSY65fABLCecLnOdfnApQMcS8mYOfnX0j5h8Ih0ey', '2025-10-27 18:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` char(36) NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\User', '8c730355-9a39-46ee-a9a0-30f1113ffcff', 'auth-token', '3acd809a68ed146eda10ec4f4503ce8e335302200337518ab9738dfa7c73eb43', '[\"*\"]', NULL, NULL, '2025-10-14 17:33:31', '2025-10-14 17:33:31'),
(47, 'App\\Models\\User', '25999541-e2cd-437a-8afa-9b56d7b834de', 'auth-token', '52e7378e2a5865c1548681e29e43a3c7d7ea557d7f0270ac077a6114c071558d', '[\"*\"]', '2025-10-17 02:29:46', NULL, '2025-10-17 02:29:26', '2025-10-17 02:29:46'),
(63, 'App\\Models\\User', 'e872a5bc-c55b-46f5-8f21-0b77d86e105f', 'auth-token', '757eb8043692fad72e6250dfcec1035a17b6fcc5d36251e1743db695c6aadb38', '[\"*\"]', NULL, NULL, '2025-10-18 05:32:44', '2025-10-18 05:32:44'),
(77, 'App\\Models\\User', '7a763faa-d094-408d-ac93-69fb3ed31298', 'auth-token', 'ac733e291c0389693578085de6612cb56d7e58311f825fd06aea76c65c17823a', '[\"*\"]', NULL, NULL, '2025-10-20 03:09:56', '2025-10-20 03:09:56'),
(102, 'App\\Models\\User', '90d71eba-6628-4b00-b1de-4a82c0910786', 'auth-token', 'a28483ff7c78b009dcfb817a5cced08f1746669f45733e6185c3325d5b31cf75', '[\"*\"]', '2025-10-21 02:59:22', NULL, '2025-10-21 01:16:23', '2025-10-21 02:59:22'),
(174, 'App\\Models\\User', 'f09ef7b4-b616-450f-a937-6035373dea8e', 'auth-token', '0fad081a7d05dd11a62268c156e85f1b9ed18b40e995881ec6e7e65a5699a4d0', '[\"*\"]', '2025-10-25 11:08:21', NULL, '2025-10-25 11:06:38', '2025-10-25 11:08:21'),
(284, 'App\\Models\\User', '2ef7a886-d071-4885-87e8-32861f5d0cb1', 'auth-token', '39b4650b5ab540674ccb948f000a5dc52a79e3941580994c26b6186bfced5256', '[\"*\"]', NULL, NULL, '2025-10-28 07:24:15', '2025-10-28 07:24:15'),
(285, 'App\\Models\\User', 'f44be736-8273-4138-afa6-a7a998dd43b8', 'auth-token', '164c281b56fe1a7981686f078aeb2dd0ce455e64453c02c86f0bc3c99e774247', '[\"*\"]', NULL, NULL, '2025-10-28 07:24:25', '2025-10-28 07:24:25'),
(378, 'App\\Models\\User', 'fcb03d1e-41f0-4f3d-a3a3-cd53dce823a9', 'auth-token', '3efd36e4185c3b267c28ca0f9c9610b02fad80b38ddb6e04f0e46e8e3ef68c08', '[\"*\"]', NULL, NULL, '2025-11-07 11:16:06', '2025-11-07 11:16:06'),
(608, 'App\\Models\\User', '555e74ba-f567-4241-a611-71741767c1af', 'auth-token', 'efee8b8bd38c459a8e66770e0be90810c089e29b5ff83e4f2b5ecd1541395c83', '[\"*\"]', NULL, NULL, '2025-12-04 03:51:03', '2025-12-04 03:51:03'),
(623, 'App\\Models\\User', 'bbd8ed03-ed35-4d3d-b19a-1e0d4c594d1d', 'auth-token', '1e08114785db77e34c5938b53b9880a47fcd9678befac6edf0103ba6a440654d', '[\"*\"]', '2025-12-04 05:34:53', NULL, '2025-12-04 05:32:03', '2025-12-04 05:34:53'),
(625, 'App\\Models\\User', '0f76a410-9eac-48a1-a6f8-9a33f671a2c6', 'auth-token', '3b1ef79cae16c2e1c3f4cd0ec5861f3c272ae8cad48967f38e2b8b1e1f0d60d3', '[\"*\"]', '2025-12-04 06:17:39', NULL, '2025-12-04 05:51:16', '2025-12-04 06:17:39'),
(627, 'App\\Models\\User', '760ad378-d330-4475-8f72-8ff32063408f', 'auth-token', '1ddb0e66112c0f6f18f082b8722f80ba85446e4b444fa4a016631296d0600459', '[\"*\"]', NULL, NULL, '2025-12-04 06:10:45', '2025-12-04 06:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `public_info`
--

CREATE TABLE `public_info` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category` enum('Announcement','Warning') NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `public_info`
--

INSERT INTO `public_info` (`id`, `title`, `content`, `category`, `image_url`, `location`, `is_active`, `created_at`, `updated_at`) VALUES
(45, '<p>Ada Teroris Di SMP Negeri Rawabuntu 1</p>', '<p>Diduga ada teroris yang menyamar sebagai siswa SMP berjumlah 10 orang, teroris tersebut menyandra siswa dan guru yang berada di sekolah dan meminta tebusan sebesar 10M kepada pemerintah, apabila tidak terpenuhi siswa dan guru terancam untuk dibunuh.</p>', 'Announcement', 'public_info/original/a6a32630-86c6-4e3b-acd9-5e2b3351ce97.png', '<p>SMP Rawabuntu 1</p>', 0, '2025-11-17 12:26:18', '2025-11-17 12:26:18'),
(47, '<p><strong>Hati - Hati Satwa Liar Lepas</strong></p>', '<p>Hati - hati satwa liar lepas di Jatinegara, 10 Babi hutan berkeliaran bebas disekitar Jatinegara yang membahayakan warga sekitar, bahkan babi hutan tersebut terlihat menecelakai serta merusak fasilitas umum, warga sekitar menentut pemerintah bisa melakukan penanganan dengan cepat, dikhwatirkan jika tidak segera ditangani akan memakan banyak korban.</p>', 'Warning', 'public_info/original/23c4e40e-bf2e-406b-a64b-682ec03eeae6.jpg', '<p><i>Jatinegara</i></p>', 0, '2025-11-17 12:29:40', '2025-11-17 12:30:46'),
(49, '<p>Peringatan Darurat Angin Topan Di Jatinegara</p>', '<p>Badan Meteorologi telah mengonfirmasi bahwa <strong>Angin Topan/Tornado telah terdeteksi</strong> dan bergerak menujuTimur Laut dengan kecepatan 40 km/jam.</p>', 'Warning', 'public_info/original/9f30c7bc-faff-4e95-8b0b-1fced82a81c0.jpg', '<p>Jatinegara</p>', 0, '2025-11-25 03:29:38', '2025-11-25 03:29:38'),
(50, '<p>Peringatan Darurat Gempa Bumi Di Depok Lama</p>', '<p>Pusat Vulkanologi dan Mitigasi Bencana Geologi (PVMBG) melaporkan telah terjadi gempa bumi dengan Magnitudo M 6.5 di Depok Lama pada pukul 10.00 - 10.30.</p>', 'Warning', 'public_info/original/3831608a-4441-43a5-8f07-fe3ae0b2dd9c.jpg', '<p>Depok Lama</p>', 0, '2025-11-25 03:37:56', '2025-11-25 07:18:58'),
(51, '<p>Pemberitahuan Pembangunan dan Penutupan Sebagian Ruas Jalan Tanah Bumbu</p>', '<p>Diberitahukan kepada seluruh pengguna jalan dan warga sekitar bahwa akan dilaksanakan <strong>Pekerjaan Pembangunan/Perbaikan Jalan</strong> di ruas Jalan Tanah Bumbu.<br>&nbsp;</p><p>Sehubungan dengan kegiatan tersebut, akan dilakukan <strong>Penutupan Sementara/Pengalihan Arus Lalu Lintas</strong> di lokasi tersebut, yang akan berlangsung pada:<br>&nbsp;</p><p><strong>1. Tanggal Mulai:</strong> 20 November 2025</p><p><strong>2. Tanggal Selesai (Estimasi):</strong> 25 November 2025</p><p><strong>3. Waktu Pengerjaan:</strong> Pukul 08.00 - 17.00 WIB<br>&nbsp;</p><p>Kami mengimbau agar pengguna jalan dapat mencari <strong>jalur alternatif</strong> selama periode pengerjaan untuk menghindari kemacetan. Mohon maaf atas ketidaknyamanan yang timbul. Kerjasama dan pengertian Anda sangat kami hargai demi kelancaran pembangunan.</p>', 'Announcement', 'public_info/original/96c83827-5ead-4894-9d64-8ab5763719b0.jpg', '<p>Tanah Bumbu</p>', 0, '2025-11-25 03:42:56', '2025-12-01 08:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `report_categories`
--

CREATE TABLE `report_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `report_categories`
--

INSERT INTO `report_categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(2, 'Publik', '2025-10-21 16:50:23', '2025-10-21 16:50:23'),
(7, 'Kriminal', '2025-10-25 23:36:57', '2025-10-25 23:37:10'),
(8, 'Jalan Rusak', '2025-10-28 00:01:45', '2025-10-28 00:01:45'),
(11, 'Satwa Liar', '2025-10-28 00:17:37', '2025-10-28 00:17:37'),
(13, 'Sosial', '2025-11-06 01:52:18', '2025-11-06 01:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2025-10-10 19:39:14', '2025-10-10 19:39:14'),
(2, 'Warga', '2025-10-10 19:39:14', '2025-10-10 19:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` char(36) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `google_id` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto_profil` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `google_id`, `email`, `password`, `foto_profil`, `username`, `role_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
('04e39265-53f8-45fb-b608-f2c0e8fcd242', NULL, 'mad@gmail.com', '$2y$12$bXinhNt5kWbGxnkX3pGR5uy82e2sOOji3HD.Mz9sfONIofVq5dQY2', 'profile/5vZGl7V9sJCFdjXrHfNExu911mAyK4Zvi9fKpoP9.jpg', 'kontak', 2, NULL, NULL, '2025-12-04 03:48:36', '2025-12-04 05:13:01'),
('0f76a410-9eac-48a1-a6f8-9a33f671a2c6', NULL, 'yaya@gmail.com', '$2y$12$KU268Q6KJEAKht4j5wwAdO1kSEoLSB8OyDLBE9Rb.OfY5TG9Cl7EG', 'profile/E1FDzZqH2qpsrGKDC0rMOpXutG71DDR9uK1cVSxI.jpg', 'Yayaiyaaaa', 1, NULL, NULL, '2025-11-24 08:20:29', '2025-12-04 06:17:39'),
('25999541-e2cd-437a-8afa-9b56d7b834de', NULL, 'carmelita.cynthia@students.utdi.ac.id', '$2y$12$Bmb4sJwZwT7XUKptxkdXtedgOAig7lkFuxpeBRF18GDq3Gm6YoXUW', NULL, 'Carmelita', 2, NULL, NULL, '2025-10-16 08:27:37', '2025-10-28 01:59:18'),
('2bdc9afe-679b-473b-8536-64d1cc7bdac5', NULL, 'farizki@example.com', '$2y$12$S7AA4S4HPxYAnqDm4nZtXea2/0QLZ7EWXJU3LB5yiluPrxqAydSje', NULL, 'alfamarss', 1, NULL, NULL, '2025-10-14 17:45:24', '2025-10-20 11:35:39'),
('2ef7a886-d071-4885-87e8-32861f5d0cb1', NULL, 'coura@gmail.com', '$2y$12$lKDIuVHzfj/1/rCT6R4ThubOhxJkJLTmxIUmAL0yMqnRYCjIiuiwO', NULL, 'Coura', 2, NULL, NULL, '2025-10-28 00:24:38', '2025-10-28 00:24:38'),
('555e74ba-f567-4241-a611-71741767c1af', NULL, 'alfaadmin123@gmail.com', '$2y$12$DDLiBXFI4nYat46xc7/jouk0qRkDICqSZ8yLQw6IOqL9rR59g0bPa', NULL, 'alfaadmin', 1, NULL, NULL, '2025-12-03 08:49:02', '2025-12-03 08:49:02'),
('5a4f1a3b-9ed4-4bb9-ada6-9388858dc77f', NULL, 'muhammad.alfarizki@citiasiainc.id', '$2y$12$7rznLUT82GF3l1mtk69p5eFroq7cjjwIFABtBZ1425q4V.l2Lh52K', NULL, 'muhammad al farizki', 2, NULL, NULL, '2025-10-14 17:47:20', '2025-10-21 02:33:51'),
('760ad378-d330-4475-8f72-8ff32063408f', NULL, 'admin@example.com', '$2y$12$Mla4QY0j3tN67hZJ2LT07eMA8KAhRbCtMF9mOL94FB25qyQLfPugi', NULL, 'admin', 1, '2025-10-10 19:39:22', NULL, '2025-10-10 19:39:22', '2025-10-14 17:44:58'),
('86f3a0f5-d3f3-446f-85ef-701466aca816', NULL, 'ahmad.zulkarnaen@citiasiainc.id', '$2y$12$HzLi7bEtkeQsTlHFVp1MFOJUNa/uXoHmyuOFl5kSelsr.kF8K4A0a', NULL, 'naencitiasia', 2, NULL, NULL, '2025-10-20 11:22:56', '2025-10-27 05:59:08'),
('bbd8ed03-ed35-4d3d-b19a-1e0d4c594d1d', NULL, 'rakha@gmail.com', '$2y$12$INdGtdq7HYdGzACb5clnKOOFOeQBS2futLXzqPHa6FVhqM0Q3.1Ku', 'profile/VLowiOs9Goe1XTqlaU3nempjMqzb67oEqxiDFLub.jpg', 'Rakha', 2, NULL, NULL, '2025-10-25 23:40:37', '2025-12-04 05:34:52'),
('e872a5bc-c55b-46f5-8f21-0b77d86e105f', NULL, 'ahmzlkrnn@gmail.com', '$2y$12$tIsJF6eD5xBmxcRKL2epCOTLaulYA1/5CVwefELQesfytzlQqKe7S', NULL, 'naen', 2, NULL, NULL, '2025-10-18 05:27:36', '2025-10-18 05:27:36'),
('f44be736-8273-4138-afa6-a7a998dd43b8', NULL, 'kuliah.cynthia01@gmail.com', '$2y$12$jftmXGb8Vn9oZWP7sKf5uebA79dyoKuv/9bGjkjcCsB9AQCZvim8q', NULL, 'yaya', 2, NULL, NULL, '2025-10-28 02:03:26', '2025-10-28 02:03:26'),
('fcb03d1e-41f0-4f3d-a3a3-cd53dce823a9', NULL, 'madnaen@example.com', '$2y$12$x6TsP3aV9Djmf/CE3FEhN.OcocBqfyS/.l3TWlzwZzQiALhElJX92', NULL, 'Madnaen', 2, NULL, NULL, '2025-10-15 05:27:26', '2025-10-15 05:27:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_themes`
--
ALTER TABLE `app_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branding_kota`
--
ALTER TABLE `branding_kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `citizen_reports`
--
ALTER TABLE `citizen_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizen_reports_user_id_foreign` (`user_id`),
  ADD KEY `citizen_reports_category_id_foreign` (`category_id`);

--
-- Indexes for table `emergency_call`
--
ALTER TABLE `emergency_call`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facilities_facility_categories_id_foreign` (`facility_categories_id`);

--
-- Indexes for table `facility_categories`
--
ALTER TABLE `facility_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_report`
--
ALTER TABLE `log_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_report_report_id_foreign` (`report_id`),
  ADD KEY `log_report_changed_by_foreign` (`changed_by`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_id_foreign` (`category_id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `public_info`
--
ALTER TABLE `public_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_categories`
--
ALTER TABLE `report_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_themes`
--
ALTER TABLE `app_themes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `branding_kota`
--
ALTER TABLE `branding_kota`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `citizen_reports`
--
ALTER TABLE `citizen_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `emergency_call`
--
ALTER TABLE `emergency_call`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `facility_categories`
--
ALTER TABLE `facility_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `log_report`
--
ALTER TABLE `log_report`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=628;

--
-- AUTO_INCREMENT for table `public_info`
--
ALTER TABLE `public_info`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `report_categories`
--
ALTER TABLE `report_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `citizen_reports`
--
ALTER TABLE `citizen_reports`
  ADD CONSTRAINT `citizen_reports_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `report_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `citizen_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `facilities`
--
ALTER TABLE `facilities`
  ADD CONSTRAINT `facilities_facility_categories_id_foreign` FOREIGN KEY (`facility_categories_id`) REFERENCES `facility_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `log_report`
--
ALTER TABLE `log_report`
  ADD CONSTRAINT `log_report_changed_by_foreign` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `log_report_report_id_foreign` FOREIGN KEY (`report_id`) REFERENCES `citizen_reports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `news_categories` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
