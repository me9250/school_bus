-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 04:00 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_bus_managment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `bus_number` varchar(50) DEFAULT NULL,
  `driver_name_english` varchar(100) DEFAULT NULL,
  `driver_name_arabic` varchar(100) DEFAULT NULL,
  `driver_mobile` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `bus_number`, `driver_name_english`, `driver_name_arabic`, `driver_mobile`) VALUES
(4, '2', '', '', 0),
(5, '15', '', '', 0),
(6, '20', '', '', 0),
(7, '4', '', '', 0),
(8, '1', '', '', 0),
(9, '28', '', '', 0),
(10, '26', '', '', 0),
(11, '7', '', '', 0),
(12, '19', '', '', 0),
(13, '22', '', '', 0),
(14, '23', '', '', 0),
(15, '31', '', '', 0),
(16, '12', '', '', 0),
(17, '14', '', '', 0),
(18, '8', '', '', 0),
(19, '32', '', '', 0),
(20, '33', '', '', 0),
(21, '25', '', '', 0),
(22, '21', '', '', 0),
(23, '11', '', '', 0),
(24, 'الروضة', '', '', 0),
(25, '3', '', '', 0),
(26, '9', '', '', 0),
(27, '5', '', '', 0),
(28, '18', '', '', 0),
(29, '24', '', '', 0),
(30, '16', '', '', 0),
(31, '27', '', '', 0),
(32, '13', '', '', 0),
(33, '30', '', '', 0),
(34, '17', '', '', 0),
(35, '29', '', '', 0),
(36, '6', '', '', 0),
(37, '10', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name_english` varchar(70) NOT NULL,
  `name_arabic` varchar(70) NOT NULL,
  `district_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name_english`, `name_arabic`, `district_id`) VALUES
(2, 'Manama', 'المنامة', 3),
(3, 'Muharraq', 'المحرق', 4),
(4, 'Adliya', 'عدلية', 3),
(5, 'Karzakan', 'كرزكان', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
(2, 'get_all_students', 'student', 'list', NULL, NULL, NULL, NULL, 'get_all_students', NULL, NULL, NULL, NULL, 'get', 'a:13:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:12:\"name_english\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:11:\"name_arabic\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:7:\"flat_no\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:8:\"house_no\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:5;a:5:{s:4:\"name\";s:7:\"road_no\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:6;a:5:{s:4:\"name\";s:8:\"block_no\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:7;a:5:{s:4:\"name\";s:13:\"father_mobile\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:8;a:5:{s:4:\"name\";s:13:\"mother_mobile\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:9;a:5:{s:4:\"name\";s:8:\"class_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:10;a:5:{s:4:\"name\";s:6:\"bus_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:11;a:5:{s:4:\"name\";s:7:\"city_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:12;a:5:{s:4:\"name\";s:20:\"default_monthly_fees\";s:4:\"type\";s:7:\"numeric\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:13:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:12:\"name_english\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:11:\"name_arabic\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:7:\"flat_no\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:8:\"house_no\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:7:\"road_no\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:8:\"block_no\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:13:\"father_mobile\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:13:\"mother_mobile\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:8:\"class_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:6:\"bus_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:7:\"city_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:20:\"default_monthly_fees\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_apikey`
--

INSERT INTO `cms_apikey` (`id`, `screetkey`, `hit`, `status`, `created_at`, `updated_at`) VALUES
(2, '19512e88bc0dbdbe0e32373877be13ff', 0, 'active', '2019-08-15 09:51:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-08-15 07:08:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-08-15 07:09:17', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/users/add-save', 'Add New Data Bus Company Owner at Users Management', '', 1, '2019-08-15 07:17:22', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-08-15 07:17:51', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-15 07:18:07', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-15 07:18:35', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/logout', 'mohamedrahim@invopos.com logout', '', 2, '2019-08-15 07:18:47', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-08-15 07:19:28', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/countries/add-save', 'Add New Data Bahrain at Countries', '', 1, '2019-08-15 07:24:17', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/13', 'Delete data Districts at Module Generator', '', 1, '2019-08-15 07:36:58', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/12', 'Delete data Countries at Module Generator', '', 1, '2019-08-15 07:41:29', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/14', 'Delete data Districts at Module Generator', '', 1, '2019-08-15 07:41:32', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/country/add-save', 'Add New Data Bahrain at Countries', '', 1, '2019-08-15 07:43:18', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/17', 'Delete data Cities at Module Generator', '', 1, '2019-08-15 08:45:34', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/district/add-save', 'Add New Data South Gevernate at Districts', '', 1, '2019-08-15 08:47:37', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/district/add-save', 'Add New Data North Governate at Districts', '', 1, '2019-08-15 08:47:58', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/district/add-save', 'Add New Data Capital Governate at Districts', '', 1, '2019-08-15 08:48:28', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/district/add-save', 'Add New Data Muharraq Governate at Districts', '', 1, '2019-08-15 08:52:03', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/18', 'Delete data Cities at Module Generator', '', 1, '2019-08-15 09:04:28', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/district/add-save', 'Add New Data test at Districts', '', 1, '2019-08-15 09:12:19', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/19', 'Delete data Cities at Module Generator', '', 1, '2019-08-15 09:15:15', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/city20/add-save', 'Add New Data Manama at Cities', '', 1, '2019-08-15 09:16:32', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/statistic_builder/add-save', 'Add New Data aaa at Statistic Builder', '', 1, '2019-08-15 09:29:52', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/statistic_builder/edit-save/1', 'Update data aaa at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-08-15 09:30:13', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school/add-save', 'Add New Data Shaik Isa Bin Ali School at Schools', '', 1, '2019-08-15 10:08:32', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class/add-save', 'Add New Data GR4-E at Schools Classes', '', 1, '2019-08-15 10:23:24', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class/add-save', 'Add New Data a at Schools Classes', '', 1, '2019-08-15 10:24:00', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class/delete/2', 'Delete data a at Schools Classes', '', 1, '2019-08-15 10:24:05', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-08-18 02:16:06', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/23', 'Delete data Students at Module Generator', '', 1, '2019-08-18 02:36:13', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company/add-save', 'Add New Data Al Dana at Companys', '', 1, '2019-08-18 04:19:35', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_bus/add-save', 'Add New Data  at Companys Buses', '', 1, '2019-08-18 04:31:10', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-08/bahrain_flag_512.png</td></tr><tr><td>password</td><td>$2y$10$lBz/tnAIyiJ9Qc92QKtACOE4PAvFtEnYFseThvMmpwU1ARTbFt5x.</td><td>$2y$10$i8V6LpM9wBx/ay.84Mxn1.t/aHwaggHRguow8ltrL4OFdftFqsgeO</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-08-18 04:35:31', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/27', 'Delete data Companys Employees at Module Generator', '', 1, '2019-08-18 04:38:13', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student24/add-save', 'Add New Data Mohammed Ebrahim at Students', '', 1, '2019-08-18 05:22:09', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/users/edit-save/2', 'Update data Bus Company Owner at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$jhjS4/2QB7qb43qOL2YZD.K1sbe3x2RO1ZQonAJoImMqCXdqCLqiq</td><td>$2y$10$MG2p17oLq/TByCN1bnUbQ.KBVrnDzcme0Xs8PAryFeDXu2xyW6HBi</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-08-18 06:38:41', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-18 06:39:05', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/18', 'Update data Recipts at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2019-08-18 06:39:41', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:51', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:51', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:51', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:52', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:52', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:52', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:52', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:53', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:53', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:53', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:54', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:54', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:54', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:55', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:55', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:55', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:55', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:56', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:56', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:56', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:39:57', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:00', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:01', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:01', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:01', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:01', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:02', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:02', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:02', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:02', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:03', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:03', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:03', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:03', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:03', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:04', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:04', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:04', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:05', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:05', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:05', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin', 'Try view the data :name at ', '', 2, '2019-08-18 06:40:05', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/18', 'Update data Recipts at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2019-08-18 06:40:28', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-18 06:40:44', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/18', 'Update data Recipts at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2019-08-18 06:42:34', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/18', 'Update data Recipts at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2019-08-18 06:42:54', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/step3/24', 'Try view the data :name at Module Generator', '', 2, '2019-08-18 06:47:16', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/17', 'Update data Companys Employees at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2019-08-18 06:47:53', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/15', 'Update data Companys Buses at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2019-08-18 06:48:03', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/13', 'Update data Students at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2019-08-18 06:48:11', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/9', 'Update data Cities at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-08-18 06:48:23', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/district/delete/5', 'Delete data test at Districts', '', 1, '2019-08-18 06:49:15', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/11', 'Update data Schools Classes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-08-18 06:51:30', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 06:52:02', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 06:52:19', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 06:52:21', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 06:59:58', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 07:00:01', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 07:06:56', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 07:06:58', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 07:06:59', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 07:07:32', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/statistic_builder/delete/1', 'Delete data aaa at Statistic Builder', '', 1, '2019-08-18 07:11:56', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/statistic_builder/add-save', 'Add New Data Cities at Statistic Builder', '', 1, '2019-08-18 07:12:04', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 07:16:03', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 07:33:31', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 07:34:52', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 07:34:55', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/11', 'Update data Schools Classes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-08-18 07:36:22', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class', 'Try view the data :name at Schools Classes', '', 2, '2019-08-18 07:36:31', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/11', 'Update data Schools Classes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-08-18 07:37:25', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/logout', 'mohamedrahim@invopos.com logout', '', 2, '2019-08-18 07:46:29', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-18 07:46:35', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/city20', 'Try view the data :name at Cities', '', 2, '2019-08-18 07:46:36', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/city20', 'Try view the data :name at Cities', '', 2, '2019-08-18 07:46:38', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/city20', 'Try view the data :name at Cities', '', 2, '2019-08-18 07:46:39', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/city20', 'Try view the data :name at Cities', '', 2, '2019-08-18 07:46:43', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/11', 'Update data Schools Classes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-08-18 07:47:22', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/logout', 'mohamedrahim@invopos.com logout', '', 2, '2019-08-18 07:47:31', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-18 07:47:36', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/add-save', 'Add New Data nbk at Menu Management', '', 1, '2019-08-18 07:49:30', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/delete/19', 'Delete data nbk at Menu Management', '', 1, '2019-08-18 07:52:08', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student24/delete/1', 'Delete data Mohammed Ebrahim at Students', '', 2, '2019-08-18 07:56:00', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/city20/add-save', 'Add New Data Muharraq at Cities', '', 2, '2019-08-18 07:59:00', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student24/add-save', 'Add New Data Mohammed Ebrahim at Students', '', 1, '2019-08-18 08:09:30', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student24/edit-save/2', 'Update data Mohammed Ebrahim at Students', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name_arabic</td><td>مملكة البحرين</td><td>محمد إبراهيم</td></tr><tr><td>flat_no</td><td>4</td><td>0</td></tr><tr><td>house_no</td><td>4</td><td>2443</td></tr><tr><td>road_no</td><td>4</td><td>2256</td></tr><tr><td>block_no</td><td>4</td><td>1021</td></tr><tr><td>father_mobile</td><td>6</td><td>17601233</td></tr><tr><td>mother_mobile</td><td>4</td><td>17601233</td></tr></tbody></table>', 1, '2019-08-18 08:12:13', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student24/add-save', 'Add New Data sdds at Students', '', 1, '2019-08-18 08:19:10', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_employee28/add-save', 'Add New Data Mohammed Ebrahim at Companys Employees', '', 1, '2019-08-18 08:22:51', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_bus/add-save', 'Add New Data  at Companys Buses', '', 1, '2019-08-18 09:36:24', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/24', 'Delete data Students at Module Generator', '', 1, '2019-08-18 09:42:41', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/add-save', 'Add New Data Mohammed Ebrahim at Students', '', 1, '2019-08-18 09:53:34', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_employee28/add-save', 'Add New Data Mohammed Ebrahim at Companys Employees', '', 1, '2019-08-18 09:54:04', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/add-save', 'Add New Data Mohammed Ebrahim at Students', '', 1, '2019-08-18 10:03:49', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/edit-save/5', 'Update data Mohammed Ebrahim at Students', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-08-18 10:05:34', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/action-selected', 'Delete data 5,4,3,2 at Students', '', 1, '2019-08-18 10:07:07', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/menu_management/edit-save/20', 'Update data Students at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2019-08-18 10:10:14', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/add-save', 'Add New Data Mohammed Ebrahim at Students', '', 1, '2019-08-18 10:17:38', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/recipt/add-save', 'Add New Data  at Recipts', '', 1, '2019-08-18 10:26:39', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/31', 'Delete data Recipt Master Details at Module Generator', '', 1, '2019-08-18 10:26:57', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school/edit-save/1', 'Update data Default School at Schools', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name_english</td><td>Shaik Isa Bin Ali School</td><td>Default School</td></tr><tr><td>name_arabic</td><td>مدرسة الشيخ عيسى بن علي</td><td>Default School</td></tr><tr><td>telephone</td><td>17601234</td><td>123456789</td></tr><tr><td>mobile</td><td>17601233</td><td>123456789</td></tr></tbody></table>', 1, '2019-08-19 01:41:32', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/add-save', 'Add New Data Bahrain at Students', '', 1, '2019-08-19 01:46:03', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/school_class/add-save', 'Add New Data aaa at Schools Classes', '', 1, '2019-08-19 02:10:59', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/add-save', 'Add New Data Manama at Students', '', 1, '2019-08-19 02:12:38', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/action-selected', 'Delete data 8,7 at Students', '', 1, '2019-08-19 02:12:50', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_employee28/delete/1', 'Delete data Mohammed Ebrahim at Companys Employees', '', 1, '2019-08-19 02:13:46', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company/edit-save/1', 'Update data Default Company at Companys', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name_english</td><td>Al Dana</td><td>Default Company</td></tr><tr><td>name_arabic</td><td>الدانة</td><td>Default Company</td></tr></tbody></table>', 1, '2019-08-19 02:24:00', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_bus/add-save', 'Add New Data  at Companys Buses', '', 1, '2019-08-19 02:34:27', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/edit-save/6', 'Update data Mohammed Ebrahim at Students', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-08-19 02:35:45', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/edit-save/6', 'Update data Mohammed Ebrahim at Students', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>bus_id</td><td>3</td><td>2</td></tr></tbody></table>', 1, '2019-08-19 02:36:01', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_bus/delete/3', 'Delete data 3 at Companys Buses', '', 1, '2019-08-19 02:37:05', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_bus/delete/3', 'Delete data  at Companys Buses', '', 1, '2019-08-19 02:37:05', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_bus/delete/1', 'Delete data 1 at Companys Buses', '', 1, '2019-08-19 02:37:10', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/recipt/delete/2', 'Delete data 2 at Recipts', '', 1, '2019-08-19 02:37:29', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/recipt32/add-save', 'Add New Data  at Recipts Master Details', '', 1, '2019-08-19 03:09:30', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_employee28/delete/2', 'Delete data Mohammed Ebrahim at Companys Employees', '', 1, '2019-08-19 03:47:27', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_employee28/add-save', 'Add New Data Mohammed Ebrahim at Companys Employees', '', 1, '2019-08-19 03:51:19', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_employee28/add-save', 'Add New Data 54645456 at Companys Employees', '', 1, '2019-08-19 03:51:31', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_employee28/add-save', 'Add New Data Mohammed Ebrahim at Companys Employees', '', 1, '2019-08-19 03:51:59', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_employee28/add-save', 'Add New Data 65454645 at Companys Employees', '', 1, '2019-08-19 03:52:12', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_employee28/delete/5', 'Delete data Mohammed Ebrahim at Companys Employees', '', 1, '2019-08-19 03:52:37', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_employee28/delete/6', 'Delete data 65454645 at Companys Employees', '', 1, '2019-08-19 03:53:16', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/company_employee28/add-save', 'Add New Data Bahrain at Companys Employees', '', 1, '2019-08-19 03:53:31', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/26', 'Delete data Companys Buses at Module Generator', '', 1, '2019-08-19 04:08:26', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/28', 'Delete data Companys Employees at Module Generator', '', 1, '2019-08-19 04:08:30', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/bus/add-save', 'Add New Data Ali Ebrahim at Buses', '', 1, '2019-08-19 04:10:07', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/edit-save/6', 'Update data Mohammed Ebrahim at Students', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-08-19 04:10:21', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30/edit-save/6', 'Update data Mohammed Ebrahim at Students', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-08-19 04:10:44', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/29', 'Delete data Recipts at Module Generator', '', 1, '2019-08-19 04:11:47', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/module_generator/delete/32', 'Delete data Recipts Master Details at Module Generator', '', 1, '2019-08-19 04:11:53', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-19 05:40:00', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30', 'Try view the data :name at Students', '', 2, '2019-08-19 05:40:12', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/student30', 'Try view the data :name at Students', '', 2, '2019-08-19 05:40:16', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/logout', 'mohamedrahim@invopos.com logout', '', 2, '2019-08-19 05:41:41', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-19 05:41:44', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/years/add-save', 'Add New Data 2025-2026 at Years', '', 1, '2019-08-19 06:23:17', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus_managment_system/public/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-08-19 08:59:17', NULL),
(174, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-08-20 02:47:19', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-20 03:01:49', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/logout', 'mohamedrahim@invopos.com logout', '', 2, '2019-08-20 03:01:55', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-08-20 03:01:59', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/country/delete-image', 'Delete the image of Bahrain at Countries', '', 1, '2019-08-20 03:02:15', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/country/edit-save/1', 'Update data Bahrain at Countries', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-08/bahrain_flag_512.png</td></tr></tbody></table>', 1, '2019-08-20 03:02:20', NULL),
(180, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/add-save', 'Add New Data Student Reports at Menu Management', '', 1, '2019-08-20 06:18:13', NULL),
(181, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-08-20 07:12:52', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-08-20 07:39:32', NULL),
(183, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2019-08-20 07:40:07', NULL),
(184, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/add-save', 'Add New Data data at Menu Management', '', 1, '2019-08-20 07:52:54', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/add-save', 'Add New Data Students Recipts at Menu Management', '', 1, '2019-08-20 08:17:38', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/add-save', 'Add New Data Students Recipts at Menu Management', '', 1, '2019-08-20 08:18:56', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/add-save', 'Add New Data 11111 at Menu Management', '', 1, '2019-08-20 08:31:44', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/add-save', 'Add New Data Students Recipts at Menu Management', '', 1, '2019-08-20 08:32:59', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/edit-save/32', 'Update data Students Recipts at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-08-20 08:35:36', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/edit-save/32', 'Update data Students Recipts at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/school_bus/public/admin/StudentsRecipts</td><td>/school_bus/public/StudentsRecipts</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-08-20 08:36:48', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-20 08:39:52', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/delete/26', 'Delete data Payments at Menu Management', '', 1, '2019-08-20 09:03:56', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/delete/24', 'Delete data Recipts at Menu Management', '', 1, '2019-08-20 09:04:00', NULL),
(194, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/student30/add-save', 'Add New Data Mohammed Ebrahim at Students', '', 1, '2019-08-20 09:31:50', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/student30/edit-save/6', 'Update data Mohammed Ebrahim at Students', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>father_email</td><td></td><td>father1@gmail.com</td></tr><tr><td>mother_email</td><td></td><td>mother1@gmail.com</td></tr></tbody></table>', 1, '2019-08-22 08:31:13', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-08-22 08:39:03', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-08-22 08:39:14', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-08-25 03:04:48', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/student30/add-save', 'Add New Data Ali ahemed at Students', '', 1, '2019-08-27 04:17:30', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/student30/edit-save/10', 'Update data Ali ahemed at Students', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name_arabic</td><td>2253</td><td>علي احمد</td></tr></tbody></table>', 1, '2019-08-27 04:20:47', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/edit-save/32', 'Update data Students Recipts at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-08-28 04:26:48', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/add-save', 'Add New Data Bus Students at Menu Management', '', 1, '2019-08-28 04:28:36', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/edit-save/33', 'Update data Bus Students at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td>fa fa-car</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-08-28 04:29:03', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/edit-save/33', 'Update data Bus Students at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/school_bus/public/StudentsRecipts</td><td>/school_bus/public/BusStudents</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-08-28 04:29:29', NULL),
(205, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/add-save', 'Add New Data Class Students at Menu Management', '', 1, '2019-08-28 08:00:21', NULL),
(206, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/school_class/add-save', 'Add New Data GR4-A at Schools Classes', '', 1, '2019-08-28 08:19:13', NULL),
(207, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/users/edit-save/2', 'Update data Bus Company Owner at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$MG2p17oLq/TByCN1bnUbQ.KBVrnDzcme0Xs8PAryFeDXu2xyW6HBi</td><td>$2y$10$3.1TFw9hnh4TQdwviV21FeobzUNYl1SpwA647PbajwhCTdqMT2mGq</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-08-28 08:20:28', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-28 08:21:27', NULL),
(209, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/edit-save/23', 'Update data Buses at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-08-28 08:35:45', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/bus', 'Try view the data :name at Buses', '', 2, '2019-08-28 08:54:15', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/bus', 'Try view the data :name at Buses', '', 2, '2019-08-28 09:02:28', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/bus', 'Try view the data :name at Buses', '', 2, '2019-08-28 09:02:31', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/bus', 'Try view the data :name at Buses', '', 2, '2019-08-28 09:03:19', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/logout', 'mohamedrahim@invopos.com logout', '', 2, '2019-08-28 09:03:23', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/login', 'mohamedrahim@invopos.com login with IP Address 127.0.0.1', '', 2, '2019-08-28 09:03:27', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/city20/add-save', 'Add New Data Adliya at Cities', '', 2, '2019-08-28 09:42:46', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/city20/add-save', 'Add New Data Karzakan at Cities', '', 2, '2019-08-28 09:43:03', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/module_generator/delete/30', 'Delete data Students at Module Generator', '', 1, '2019-08-29 10:04:52', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/module_generator/delete/21', 'Delete data Schools at Module Generator', '', 1, '2019-08-29 10:20:00', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/module_generator/delete/21', 'Delete data Schools at Module Generator', '', 1, '2019-08-29 10:20:01', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/module_generator/delete/34', 'Delete data Recipts at Module Generator', '', 1, '2019-08-29 10:20:06', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/module_generator/delete/36', 'Delete data Payments at Module Generator', '', 1, '2019-08-29 10:20:10', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/module_generator/delete/16', 'Delete data Districts at Module Generator', '', 1, '2019-08-29 10:20:14', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/module_generator/delete/15', 'Delete data Countries at Module Generator', '', 1, '2019-08-29 10:20:18', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/module_generator/delete/20', 'Delete data Cities at Module Generator', '', 1, '2019-08-29 10:20:22', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/edit-save/34', 'Update data Class Report at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Class Students</td><td>Class Report</td></tr><tr><td>icon</td><td>fa fa-building-o</td><td>fa fa-paperclip</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-08-29 10:28:09', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/edit-save/33', 'Update data Bus Report at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Bus Students</td><td>Bus Report</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2019-08-29 10:29:03', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/menu_management/add-save', 'Add New Data Year Total at Menu Management', '', 1, '2019-08-29 10:56:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(11, 'Schools Classes', 'Route', 'AdminSchoolClassControllerGetIndex', 'normal', 'fa fa-building', 0, 1, 0, 1, 3, '2019-08-15 10:22:10', '2019-08-18 07:47:22'),
(14, 'Companys', 'Route', 'AdminCompanyControllerGetIndex', NULL, 'fa fa-building-o', 0, 1, 0, 1, 12, '2019-08-18 04:18:20', NULL),
(23, 'Buses', 'Route', 'AdminBusControllerGetIndex', 'normal', 'fa fa-car', 0, 1, 0, 1, 4, '2019-08-19 04:08:57', '2019-08-28 08:35:45'),
(25, 'Years', 'Route', 'AdminYearsControllerGetIndex', NULL, 'fa fa-search', 0, 1, 0, 1, 11, '2019-08-19 06:22:29', NULL),
(32, 'Students Recipts', 'URL', '/school_bus/public/StudentsRecipts', 'normal', 'fa fa-paperclip', 0, 1, 0, 1, 7, '2019-08-20 08:32:59', '2019-08-28 04:26:48'),
(33, 'Bus Report', 'URL', '/school_bus/public/BusStudents', 'normal', 'fa fa-car', 0, 1, 0, 1, 6, '2019-08-28 04:28:36', '2019-08-29 10:29:03'),
(34, 'Class Report', 'URL', '/school_bus/public/ClassStudents', 'normal', 'fa fa-paperclip', 0, 1, 0, 1, 5, '2019-08-28 08:00:21', '2019-08-29 10:28:09'),
(35, 'Students', 'Route', 'AdminStudent37ControllerGetIndex', NULL, 'fa fa-users', 0, 1, 0, 1, 13, '2019-08-29 10:05:12', NULL),
(36, 'Year Total', 'URL', '/school_bus/public/YearTotal', 'normal', 'fa fa-money', 0, 1, 0, 1, NULL, '2019-08-29 10:56:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(10, 10, 1),
(12, 12, 1),
(14, 14, 1),
(16, 16, 1),
(25, 18, 2),
(26, 18, 1),
(27, 17, 2),
(28, 17, 1),
(29, 15, 2),
(30, 15, 1),
(31, 13, 2),
(32, 13, 1),
(33, 9, 2),
(34, 9, 1),
(40, 11, 2),
(41, 11, 1),
(42, 19, 2),
(44, 20, 2),
(45, 20, 1),
(46, 21, 1),
(47, 22, 1),
(49, 24, 1),
(50, 25, 1),
(51, 26, 1),
(52, 27, 2),
(53, 27, 1),
(54, 28, 2),
(55, 28, 1),
(56, 29, 2),
(57, 29, 1),
(58, 30, 2),
(59, 30, 1),
(60, 31, 2),
(61, 31, 1),
(68, 32, 2),
(69, 32, 1),
(78, 23, 2),
(79, 23, 1),
(80, 35, 1),
(81, 34, 2),
(82, 34, 1),
(83, 33, 2),
(84, 33, 1),
(85, 36, 2),
(86, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-08-15 07:08:11', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-08-15 07:08:11', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-08-15 07:08:11', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-08-15 07:08:11', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-08-15 07:08:11', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-08-15 07:08:11', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-08-15 07:08:11', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-08-15 07:08:11', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-08-15 07:08:11', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-08-15 07:08:11', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-08-15 07:08:11', NULL, NULL),
(12, 'Countries', 'fa fa-globe', 'countries', 'countries', 'AdminCountriesController', 0, 0, '2019-08-15 07:22:21', NULL, '2019-08-15 07:41:29'),
(13, 'Districts', 'fa fa-globe', 'districts', 'districts', 'AdminDistrictsController', 0, 0, '2019-08-15 07:32:03', NULL, '2019-08-15 07:36:58'),
(14, 'Districts', 'fa fa-globe', 'districts', 'districts', 'AdminDistrictsController', 0, 0, '2019-08-15 07:37:33', NULL, '2019-08-15 07:41:32'),
(15, 'Countries', 'fa fa-globe', 'country', 'country', 'AdminCountryController', 0, 0, '2019-08-15 07:41:54', NULL, '2019-08-29 10:20:18'),
(16, 'Districts', 'fa fa-globe', 'district', 'district', 'AdminDistrictController', 0, 0, '2019-08-15 07:45:37', NULL, '2019-08-29 10:20:14'),
(17, 'Cities', 'fa fa-globe', 'city', 'city', 'AdminCityController', 0, 0, '2019-08-15 08:38:59', NULL, '2019-08-15 08:45:34'),
(18, 'Cities', 'fa fa-globe', 'city', 'city', 'AdminCityController', 0, 0, '2019-08-15 08:45:52', NULL, '2019-08-15 09:04:28'),
(19, 'Cities', 'fa fa-globe', 'city', 'city', 'AdminCityController', 0, 0, '2019-08-15 09:05:24', NULL, '2019-08-15 09:15:15'),
(20, 'Cities', 'fa fa-globe', 'city20', 'city', 'AdminCity20Controller', 0, 0, '2019-08-15 09:15:36', NULL, '2019-08-29 10:20:22'),
(21, 'Schools', 'fa fa-building', 'school', 'school', 'AdminSchoolController', 0, 0, '2019-08-15 10:06:17', NULL, '2019-08-29 10:20:01'),
(22, 'Schools Classes', 'fa fa-building', 'school_class', 'school_class', 'AdminSchoolClassController', 0, 0, '2019-08-15 10:22:10', NULL, NULL),
(23, 'Students', 'fa fa-users', 'student', 'student', 'AdminStudentController', 0, 0, '2019-08-15 10:30:10', NULL, '2019-08-18 02:36:13'),
(24, 'Students', 'fa fa-users', 'student24', 'student', 'AdminStudent24Controller', 0, 0, '2019-08-18 02:36:32', NULL, '2019-08-18 09:42:41'),
(25, 'Companys', 'fa fa-building-o', 'company', 'company', 'AdminCompanyController', 0, 0, '2019-08-18 04:18:20', NULL, NULL),
(26, 'Companys Buses', 'fa fa-car', 'company_bus', 'company_bus', 'AdminCompanyBusController', 0, 0, '2019-08-18 04:25:41', NULL, '2019-08-19 04:08:26'),
(27, 'Companys Employees', 'fa fa-users', 'company_employee', 'company_employee', 'AdminCompanyEmployeeController', 0, 0, '2019-08-18 04:32:58', NULL, '2019-08-18 04:38:13'),
(28, 'Companys Employees', 'fa fa-users', 'company_employee28', 'company_employee', 'AdminCompanyEmployee28Controller', 0, 0, '2019-08-18 04:38:29', NULL, '2019-08-19 04:08:30'),
(29, 'Recipts', 'fa fa-globe', 'recipt', 'recipt', 'AdminReciptController', 0, 0, '2019-08-18 04:55:50', NULL, '2019-08-19 04:11:47'),
(30, 'Students', 'fa fa-users', 'student30', 'student', 'AdminStudent30Controller', 0, 0, '2019-08-18 09:43:04', NULL, '2019-08-29 10:04:52'),
(31, 'Recipt Master Details', 'fa fa-paperclip', 'recipt31', 'recipt', 'AdminRecipt31Controller', 0, 0, '2019-08-18 10:25:38', NULL, '2019-08-18 10:26:57'),
(32, 'Recipts Master Details', 'fa fa-paperclip', 'recipt32', 'recipt', 'AdminRecipt32Controller', 0, 0, '2019-08-19 02:46:24', NULL, '2019-08-19 04:11:53'),
(33, 'Buses', 'fa fa-car', 'bus', 'bus', 'AdminBusController', 0, 0, '2019-08-19 04:08:57', NULL, NULL),
(34, 'Recipts', 'fa fa-paper-plane', 'recipt34', 'recipt', 'AdminRecipt34Controller', 0, 0, '2019-08-19 04:12:20', NULL, '2019-08-29 10:20:06'),
(35, 'Years', 'fa fa-search', 'years', 'years', 'AdminYearsController', 0, 0, '2019-08-19 06:22:28', NULL, NULL),
(36, 'Payments', 'fa fa-money', 'payment', 'payment', 'AdminPaymentController', 0, 0, '2019-08-19 06:56:25', NULL, '2019-08-29 10:20:10'),
(37, 'Students', 'fa fa-users', 'student37', 'student', 'AdminStudent37Controller', 0, 0, '2019-08-29 10:05:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2019-08-15 07:08:11', NULL),
(2, 'Bus Company Owner', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2019-08-15 07:08:11', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2019-08-15 07:08:11', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2019-08-15 07:08:11', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2019-08-15 07:08:11', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2019-08-15 07:08:11', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2019-08-15 07:08:11', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2019-08-15 07:08:11', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2019-08-15 07:08:11', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2019-08-15 07:08:11', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2019-08-15 07:08:11', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2019-08-15 07:08:11', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(36, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(37, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(38, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(39, 1, 1, 1, 1, 1, 1, 33, NULL, NULL),
(40, 1, 1, 1, 1, 1, 1, 34, NULL, NULL),
(44, 1, 1, 1, 1, 1, 1, 35, NULL, NULL),
(45, 1, 1, 1, 1, 1, 1, 36, NULL, NULL),
(50, 1, 1, 1, 1, 1, 1, 37, NULL, NULL),
(51, 1, 1, 1, 1, 1, 2, 33, NULL, NULL),
(52, 1, 1, 1, 1, 1, 2, 22, NULL, NULL),
(53, 1, 1, 1, 1, 1, 2, 37, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2019-08-15 07:08:11', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2019-08-15 07:08:11', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2019-08-15 07:08:11', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-08-15 07:08:11', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-08-15 07:08:11', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2019-08-15 07:08:11', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-08-15 07:08:11', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2019-08-15 07:08:11', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2019-08-15 07:08:11', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'School Bus Managment System', 'text', NULL, NULL, '2019-08-15 07:08:11', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-08-15 07:08:11', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/1/2019-08/bahrain_flag_512.png', 'upload_image', NULL, NULL, '2019-08-15 07:08:11', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/1/2019-08/bahrain_flag_512.png', 'upload_image', NULL, NULL, '2019-08-15 07:08:11', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-08-15 07:08:11', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', 'AIzaSyArm4_diawDthukwXIwbMSzXiqW9kCJODM', 'text', NULL, NULL, '2019-08-15 07:08:11', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2019-08-15 07:08:11', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Cities', 'cities', '2019-08-18 07:12:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '78bafbeab23ccc4d29045f03ce83c8fd', 'table', 'area5', 0, 'Untitled', NULL, '2019-08-15 09:30:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2019-08/bahrain_flag_512.png', 'admin@crudbooster.com', '$2y$10$i8V6LpM9wBx/ay.84Mxn1.t/aHwaggHRguow8ltrL4OFdftFqsgeO', 1, '2019-08-15 07:08:11', '2019-08-18 04:35:31', 'Active'),
(2, 'Bus Company Owner', 'uploads/1/2019-08/bahrain_flag_512.png', 'mohamedrahim@invopos.com', '$2y$10$3.1TFw9hnh4TQdwviV21FeobzUNYl1SpwA647PbajwhCTdqMT2mGq', 2, '2019-08-15 07:17:22', '2019-08-28 08:20:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name_english` varchar(100) NOT NULL,
  `name_arabic` varchar(100) NOT NULL,
  `telephone` int(15) NOT NULL,
  `mobile` int(15) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name_english`, `name_arabic`, `telephone`, `mobile`, `city_id`) VALUES
(1, 'Default Company', 'Default Company', 123456789, 123456789, 2);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name_english` varchar(70) NOT NULL,
  `name_arabic` varchar(70) NOT NULL,
  `currency_english` varchar(10) NOT NULL,
  `currency_arabic` varchar(10) NOT NULL,
  `phone_code` int(10) NOT NULL,
  `code` varchar(5) NOT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name_english`, `name_arabic`, `currency_english`, `currency_arabic`, `phone_code`, `code`, `image`) VALUES
(1, 'Bahrain', 'مملكة البحرين', 'BHD', 'د.ب', 973, 'BH', 'uploads/1/2019-08/bahrain_flag_512.png');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name_english` varchar(70) NOT NULL,
  `name_arabic` varchar(70) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name_english`, `name_arabic`, `country_id`) VALUES
(1, 'South Gevernate', 'المحافظة الجنوبية', 1),
(2, 'North Governate', 'المحافظة الشمالية', 1),
(3, 'Capital Governate', 'محافظة العاصمة', 1),
(4, 'Muharraq Governate', 'محافظة المحرق', 1);

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
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `id` int(11) NOT NULL,
  `name_english` varchar(50) NOT NULL,
  `name_arabic` varchar(50) NOT NULL,
  `month_status` varchar(50) NOT NULL,
  `month_display_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `name_english`, `name_arabic`, `month_status`, `month_display_order`) VALUES
(1, 'January', 'يناير', 'School', 5),
(2, 'February', 'فبراير', 'School', 6),
(3, 'March', 'مارس', 'School', 7),
(4, 'April', 'أبريل', 'School', 8),
(5, 'May', 'مايو', 'School', 9),
(6, 'June', 'يونيو', 'School', 10),
(7, 'July', 'يوليو', 'Vaction', 11),
(8, 'August', 'أغسطس', 'Vaction', 12),
(9, 'September', 'سبتمبر', 'School', 1),
(10, 'October', 'أكتوبر', 'School', 2),
(11, 'November', 'نوفمبر', 'School', 3),
(12, 'December', 'ديسمبر', 'School', 4);

-- --------------------------------------------------------

--
-- Table structure for table `month_payment`
--

CREATE TABLE `month_payment` (
  `id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `month_fees` varchar(50) NOT NULL,
  `month_recipt_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `name_english` varchar(150) NOT NULL,
  `name_arabic` varchar(150) NOT NULL,
  `telephone` int(15) NOT NULL,
  `mobile` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `name_english`, `name_arabic`, `telephone`, `mobile`) VALUES
(1, 'Default School', 'Default School', 123456789, 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `school_class`
--

CREATE TABLE `school_class` (
  `id` int(11) NOT NULL,
  `name_english` varchar(20) NOT NULL,
  `name_arabic` varchar(20) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_class`
--

INSERT INTO `school_class` (`id`, `name_english`, `name_arabic`, `school_id`) VALUES
(81, 'GR4-A', 'GR4-A', 1),
(82, 'KG2-C', 'KG2-C', 1),
(83, 'GR2-C', 'GR2-C', 1),
(84, 'GR4-D', 'GR4-D', 1),
(85, 'GR4-B', 'GR4-B', 1),
(86, 'GR3-A', 'GR3-A', 1),
(87, 'GR3-C', 'GR3-C', 1),
(88, 'GR2-E', 'GR2-E', 1),
(89, 'GR3-D', 'GR3-D', 1),
(90, 'GR1-B', 'GR1-B', 1),
(91, 'GR2-A', 'GR2-A', 1),
(92, 'GR10-C', 'GR10-C', 1),
(93, 'GR1-A', 'GR1-A', 1),
(94, 'GR7-A', 'GR7-A', 1),
(95, 'GR1-F', 'GR1-F', 1),
(96, 'GR10-A', 'GR10-A', 1),
(97, 'GR1-C', 'GR1-C', 1),
(98, 'GR6-E', 'GR6-E', 1),
(99, 'GR9-C', 'GR9-C', 1),
(100, 'GR5-F', 'GR5-F', 1),
(101, 'GR1-E', 'GR1-E', 1),
(102, 'GR7-C', 'GR7-C', 1),
(103, 'GR8-A', 'GR8-A', 1),
(104, 'GR5-B', 'GR5-B', 1),
(105, 'GR6-B', 'GR6-B', 1),
(106, 'GR8-D', 'GR8-D', 1),
(107, 'KG1-B', 'KG1-B', 1),
(108, 'GR9-B', 'GR9-B', 1),
(109, 'GR5-D', 'GR5-D', 1),
(110, 'GR3-B', 'GR3-B', 1),
(111, 'GR5-???F', 'GR5-???F', 1),
(112, 'GR1-G', 'GR1-G', 1),
(113, 'GR12-C', 'GR12-C', 1),
(114, 'GR2-D', 'GR2-D', 1),
(115, 'GR2-B', 'GR2-B', 1),
(116, 'GR6-F', 'GR6-F', 1),
(117, 'GR7-E', 'GR7-E', 1),
(118, 'GR3-E', 'GR3-E', 1),
(119, 'GR12-A', 'GR12-A', 1),
(120, 'GR5-A', 'GR5-A', 1),
(121, 'GR3-F', 'GR3-F', 1),
(122, 'GR7-D', 'GR7-D', 1),
(123, 'GR11-A', 'GR11-A', 1),
(124, 'GR5-C', 'GR5-C', 1),
(125, 'GR11-B', 'GR11-B', 1),
(126, 'GR6-D', 'GR6-D', 1),
(127, 'KG1-G', 'KG1-G', 1),
(128, 'GR6-C', 'GR6-C', 1),
(129, 'GR1-D', 'GR1-D', 1),
(130, 'GR4-C', 'GR4-C', 1),
(131, 'KG2-I', 'KG2-I', 1),
(132, 'GR11-C', 'GR11-C', 1),
(133, 'GR9-A', 'GR9-A', 1),
(134, 'KG2-H', 'KG2-H', 1),
(135, 'GR10-B', 'GR10-B', 1),
(136, 'GR5-E', 'GR5-E', 1),
(137, 'GR12-B', 'GR12-B', 1),
(138, 'GR9-D', 'GR9-D', 1),
(139, 'GR7-B', 'GR7-B', 1),
(140, 'GR8-E', 'GR8-E', 1),
(141, 'GR4-E', 'GR4-E', 1),
(142, 'PR-KG-A', 'PR-KG-A', 1),
(143, 'GR6-A', 'GR6-A', 1),
(144, 'KG1-C', 'KG1-C', 1),
(145, 'KG2-G', 'KG2-G', 1),
(146, 'GR8-C', 'GR8-C', 1),
(147, 'GR8-B', 'GR8-B', 1),
(148, 'KG1-A', 'KG1-A', 1),
(149, 'KG2-?F', 'KG2-?F', 1),
(150, 'KG1-E', 'KG1-E', 1),
(151, 'KG1-D', 'KG1-D', 1),
(152, 'KG2-A', 'KG2-A', 1),
(153, 'KG2-B', 'KG2-B', 1),
(154, 'KG2-D', 'KG2-D', 1),
(155, 'KG2-E', 'KG2-E', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name_english` varchar(100) DEFAULT NULL,
  `name_arabic` varchar(100) DEFAULT NULL,
  `flat_no` int(11) DEFAULT NULL,
  `house_no` int(11) DEFAULT NULL,
  `road_no` int(11) DEFAULT NULL,
  `block_no` int(11) DEFAULT NULL,
  `father_mobile` int(15) DEFAULT NULL,
  `mother_mobile` int(15) DEFAULT NULL,
  `father_email` varchar(70) DEFAULT NULL,
  `mother_email` varchar(70) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `bus_id` int(11) DEFAULT NULL,
  `city_name` varchar(100) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `bus_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name_english`, `name_arabic`, `flat_no`, `house_no`, `road_no`, `block_no`, `father_mobile`, `mother_mobile`, `father_email`, `mother_email`, `class_id`, `bus_id`, `city_name`, `class_name`, `bus_no`) VALUES
(1637, '', 'حوراء ابراهيم', 0, 0, 0, 0, 0, 0, '', '', 81, 4, 'السنابس', 'GR4-A', '2'),
(1638, '', 'علي حسين محمد يوسف', 0, 1363, 4347, 543, 0, 32001000, '', '', 82, 5, 'بني جمرة', 'KG2-C', '15'),
(1639, '', 'محمد حسين محمد يوسف', 0, 1363, 4347, 543, 0, 32001000, '', '', 83, 5, 'بني جمرة', 'GR2-C', '15'),
(1640, '', 'حسين صالح فرحان', 0, 1253, 228, 602, 0, 33086137, '', '', 84, 6, 'سترة - مهزه', 'GR4-D', '20'),
(1641, '', 'كرار عبدالله سعيد', 0, 1111, 4318, 643, 0, 33088988, '', '', 85, 7, 'النويدرات', 'GR4-B', '4'),
(1642, '', 'علي حسين عبدالامير المسباح', 0, 1320, 420, 1204, 0, 33328657, '', '', 86, 8, 'مدينه حمد 1', 'GR3-A', '1'),
(1643, '', 'زهراء علي يوسف', 0, 1052, 1532, 815, 0, 33449447, '', '', 87, 9, 'مدينة عيسى', 'GR3-C', '28'),
(1644, '', 'مياسه علي عبدالعزيز ناصر', 0, 793, 1614, 1216, 0, 33727270, '', '', 86, 10, 'مدينة حمد 22', 'GR3-A', '26'),
(1645, '', 'لينه جودي', 0, 11, 5127, 351, 0, 34070900, '', '', 88, 4, 'البرهامه', 'GR2-E', '2'),
(1646, '', 'فاطمة حسين احمد الحمران', 0, 1347, 723, 507, 0, 34340186, '', '', 89, 11, 'مقابة', 'GR3-D', '7'),
(1647, '', 'نيلة عمر القرعان', 0, 113, 3105, 931, 0, 35008456, '', '', 90, 9, 'الحجيات', 'GR1-B', '28'),
(1648, '', 'علي محمد يوسف علي حسين', 0, 1694, 839, 708, 0, 35062448, '', '', 91, 12, 'سلماباد', 'GR2-A', '19'),
(1649, '', 'محمد جميل عباس', 0, 964, 3831, 1038, 0, 35577070, '', '', 92, 13, 'صدد', 'GR10-C', '22'),
(1650, '', 'كوثر ناصر محمد باقر الجمري', 0, 2688, 941, 1209, 0, 36394439, '', '', 93, 8, 'المركز الصحي', 'GR1-A', '1'),
(1651, '', 'سيرين عبدالكريم عطية سلمان', 0, 2691, 1043, 1210, 0, 36487787, '', '', 94, 12, 'سلماباد', 'GR7-A', '19'),
(1652, '', 'مهدي علي عبدالله الهرمي', 0, 2312, 2160, 721, 0, 36557225, '', '', 92, 14, 'جدعلي', 'GR10-C', '23'),
(1653, '', 'قاسم علي سلمان الشيخ', 0, 1029, 429, 404, 0, 36660577, '', '', 95, 4, 'السنابس', 'GR1-F', '2'),
(1654, '', 'فاطمة خليل عبدالرضا', 0, 2901, 5547, 255, 0, 36877009, '', '', 96, 15, 'قلالي', 'GR10-A', '31'),
(1655, '', 'حسين علي احمد ليث', 0, 1555, 4647, 1046, 0, 38002422, '', '', 97, 10, 'دار كليب', 'GR1-C', '26'),
(1656, '', 'محمد احمد ابراهيم الجمري', 0, 1849, 3948, 439, 0, 38355584, '', '', 83, 16, 'السهلة الشمالية', 'GR2-C', '12'),
(1657, '', 'ريم سيدحسين شبر عدنان', 0, 0, 0, 0, 0, 38830603, '', '', 95, 17, 'عالي', 'GR1-F', '14'),
(1658, '', 'مريم حسين علي حسن علي ناصر', 0, 157, 1301, 813, 0, 38887278, '', '', 98, 18, 'مدينة عيسى', 'GR6-E', '8'),
(1659, '', 'ملاك علي احمد المطوع', 0, 339, 3311, 1033, 0, 39287327, '', '', 99, 19, 'المالكية', 'GR9-C', '32'),
(1660, '', 'الحر بدر جمعه', 0, 2838, 2173, 721, 0, 39381888, '', '', 100, 14, 'جد علي', 'GR5-F', '23'),
(1661, '', 'رضا عادل شملوه', 0, 2944, 180, 701, 0, 39437447, '', '', 101, 20, 'توبلي', 'GR1-E', '33'),
(1662, '', 'هيا عادل عبدالقادر', 0, 84, 2013, 1020, 0, 39555078, '', '', 102, 21, 'اللوزي', 'GR7-C', '25'),
(1663, '', 'زين خالد حسن خزعل', 0, 1283, 2721, 527, 0, 39776649, '', '', 103, 22, 'سار', 'GR8-A', '21'),
(1664, '', 'محمد خالد حسن خزعل', 0, 1283, 2721, 527, 0, 39776649, '', '', 104, 22, 'سار', 'GR5-B', '21'),
(1665, '', 'محمد حسين حاجي', 0, 110, 902, 109, 0, 39900058, '', '', 105, 23, 'الحد', 'GR6-B', '11'),
(1666, '', 'علي رضا علي فضل', 0, 534, 1509, 1215, 32006661, 39816681, '', '', 106, 10, 'مدينة حمد 22', 'GR8-D', '26'),
(1667, '', 'علي حسين عبدالكريم عبدالله', 0, 29, 701, 607, 32018848, 33853955, '', '', 107, 24, 'سترة', 'KG1-B', 'الروضة'),
(1668, '', 'احمد كاظم احمد ابراهيم', 0, 1238, 3326, 333, 32218544, 32294484, '', '', 108, 25, 'ام الحصم', 'GR9-B', '3'),
(1669, '', 'حسين محمد الحداد', 0, 1947, 2154, 721, 32222797, 38813304, '', '', 109, 14, 'جدعلي', 'GR5-D', '23'),
(1670, '', 'عبدالله محمد الحداد', 0, 1947, 2154, 721, 32222797, 38813304, '', '', 95, 14, 'جدعلي', 'GR1-F', '23'),
(1671, '', 'فاطمة محمد الحداد', 0, 1947, 2154, 721, 32222797, 38813304, '', '', 110, 14, 'جدعلي', 'GR3-B', '23'),
(1672, '', 'سيد امير سيد حسين ابو الفضل', 0, 2737, 444, 1204, 32228961, 39433389, '', '', 81, 8, '2 مدينة حمد', 'GR5-‍‍‍F', '1'),
(1673, '', 'كوثر سيدحسين ابوالفضل الموسوي', 0, 2737, 444, 1204, 32228961, 39433389, '', '', 101, 8, 'مدينة حمد 1', 'GR1-E', '1'),
(1674, '', 'لافا عبدالغني الدبس', 0, 1770, 4185, 441, 32230915, 0, '', '', 112, 16, 'السهلة الشمالية', 'GR1-G', '12'),
(1675, '', 'جود حسين حسن علي احمد', 0, 270, 4416, 644, 32239811, 66300325, '', '', 95, 7, 'نويدرات', 'GR1-F', '4'),
(1676, '', 'الياس عبدالنبي علي  مرهون', 0, 918, 1431, 414, 32239991, 38886998, '', '', 104, 26, 'الديه', 'GR5-B', '9'),
(1677, '', 'فاطمة عبدالنبي علي مرهون', 0, 918, 1431, 414, 32239991, 38886998, '', '', 113, 26, 'الديه', 'GR12-C', '9'),
(1678, '', 'نور علي يعقوب يوسف', 0, 784, 1126, 411, 33004831, 33395033, '', '', 114, 27, 'المصلى', 'GR2-D', '5'),
(1679, '', 'غيداء خليل ابراهيم عبدالله', 0, 3184, 3479, 1034, 33015820, 36661077, '', '', 115, 28, 'المالكية', 'GR2-B', '18'),
(1680, '', 'جود عقيل سعيد', 0, 958, 1333, 414, 33050111, 39593161, '', '', 81, 26, 'الديه', 'GR4-A', '9'),
(1681, '', 'عبدالله نبيل العيسى', 0, 760, 1014, 1210, 33055066, 39897070, '', '', 116, 29, 'مدينه حمد 11', 'GR6-F', '24'),
(1682, '', 'محمد احمد عبدالحسين طراده', 0, 1207, 719, 907, 33061438, 39609950, '', '', 116, 9, 'الرفاع الشرقي', 'GR6-F', '28'),
(1683, '', 'عبدالله نادر عبدالله خليل الصيرفي', 0, 1682, 1448, 814, 33067117, 39300656, '', '', 117, 18, 'مدينة عيسى', 'GR7-E', '8'),
(1684, '', 'حسين محمود عبدالقادر', 0, 893, 2428, 524, 33077035, 33571888, '', '', 109, 30, 'باربار', 'GR5-D', '16'),
(1685, '', 'حور محمود عبدالقادر', 0, 893, 2428, 524, 33077035, 33571888, '', '', 83, 30, 'باربار', 'GR2-C', '16'),
(1686, '', 'راحيل حسن علي شملوه', 0, 941, 515, 1205, 33088978, 36533378, '', '', 87, 8, 'مدينة حمد 4', 'GR3-C', '1'),
(1687, '', 'محمد زهير عبد النبي القصاص', 0, 369, 3405, 634, 33090068, 33229959, '', '', 118, 7, 'المعامير', 'GR3-E', '4'),
(1688, '', 'سلمان يوسف احمد الحايكي', 0, 3224, 5770, 457, 3310022, 33100441, '', '', 100, 16, 'سرايا', 'GR5-F', '12'),
(1689, '', 'علي يوسف احمد الحايكي', 0, 3224, 5770, 457, 3310022, 33100441, '', '', 119, 16, 'سرايا', 'GR12-A', '12'),
(1690, '', 'اسراء احمد عبدالامير', 0, 2223, 3361, 1033, 33100625, 33090892, '', '', 120, 19, 'المالكية', 'GR5-A', '32'),
(1691, '', 'عبدالله محمد عبدالحسين', 0, 849, 51, 216, 33110799, 33110766, '', '', 110, 31, 'المحرق', 'GR3-B', '27'),
(1692, '', 'ايمان جميل حسن يعقوب', 0, 1758, 5445, 754, 33111179, 33110634, '', '', 81, 12, 'بوري', 'GR4-A', '19'),
(1693, '', 'محمد حسن سلمان', 0, 909, 2419, 424, 33114348, 0, '', '', 101, 26, 'الدية', 'GR1-E', '9'),
(1694, '', 'سلمان حسن سلمان', 0, 909, 2419, 424, 33114348, 39607446, '', '', 101, 26, 'الدية', 'GR1-E', '9'),
(1695, '', 'علي محمد صالح ناصر', 0, 1665, 4842, 1048, 33121515, 39128433, '', '', 121, 10, 'دار كليب', 'GR3-F', '26'),
(1696, '', 'مهدي عبدالرضا اسماعيل', 0, 648, 3614, 736, 33127127, 39199157, '', '', 122, 17, 'عالي', 'GR7-D', '14'),
(1697, '', 'يوسف عبدالرضا اسماعيل', 0, 648, 3614, 736, 33127127, 39199157, '', '', 109, 17, 'عالي', 'GR5-D', '14'),
(1698, '', 'علي محمد النور', 0, 1965, 3503, 235, 33151516, 39202007, '', '', 106, 31, 'سماهيج', 'GR8-D', '27'),
(1699, '', 'الزهراء توفيق علي', 0, 1582, 248, 602, 33163437, 39032280, '', '', 93, 6, 'سترة', 'GR1-A', '20'),
(1700, '', 'علي حسن محمد حسن', 0, 2237, 157, 701, 33168887, 33873539, '', '', 104, 20, 'توبلي', 'GR5-B', '33'),
(1701, '', 'حسن علي منصور حسن محفوظ', 0, 2485, 3241, 1032, 33170870, 33170870, '', '', 87, 28, 'المالكية', 'GR3-C', '18'),
(1702, '', 'خالد عبدالله احمد عبدالله عبدالملك', 0, 209, 11, 721, 33181191, 39827244, '', '', 92, 32, 'جدعلي', 'GR10-C', '13'),
(1703, '', 'سيد حسين هشام سلمان', 0, 1030, 1532, 815, 33193005, 34017144, '', '', 123, 9, 'مدينة عيسى', 'GR11-A', '28'),
(1704, '', 'اسراء فاضل عباس احمد', 0, 1268, 2541, 1025, 33211347, 33070760, '', '', 124, 21, 'كرزكان', 'GR5-C', '25'),
(1705, '', 'بتول محمود عبدالحسين عيد', 0, 2033, 424, 604, 33222285, 39192292, '', '', 114, 6, 'سترة', 'GR2-D', '20'),
(1706, '', 'فاطمة فيصل جاسم عليوي', 0, 1758, 5547, 455, 33225666, 33002247, '', '', 103, 16, 'ابوقوة', 'GR8-A', '12'),
(1707, '', 'ملاك حسن محمد كاظم الجزيري', 0, 144, 1602, 1216, 33226683, 33794342, '', '', 102, 6, 'النبيه صالح', 'GR7-C', '20'),
(1708, '', 'امينة حسن محمد كاظم الجزيري', 0, 144, 8249, 382, 33226683, 35582302, '', '', 120, 6, 'النبيه صالح', 'GR5-A', '20'),
(1709, '', 'علي امين جاسم حميدان', 0, 590, 919, 509, 33245544, 33009257, '', '', 117, 5, 'مقابة', 'GR7-E', '15'),
(1710, '', 'قاسم امين جاسم حميدان', 0, 590, 919, 509, 33245544, 33009257, '', '', 84, 5, 'مقابة', 'GR4-D', '15'),
(1711, '', 'محمد هاني نبيل', 0, 118, 1803, 318, 33248431, 0, '', '', 125, 25, 'الحورة', 'GR11-B', '3'),
(1712, '', 'محمد فؤاد عبدالواحد يوسف', 0, 1508, 4645, 1046, 33252152, 39025288, '', '', 126, 10, 'داركليب', 'GR6-D', '26'),
(1713, '', 'هادي حمزة جعفر', 0, 1086, 3727, 537, 33280274, 33222345, '', '', 83, 5, 'بني جمرة', 'GR2-C', '15'),
(1714, '', 'علي محمود فاضل', 0, 618, 2218, 1022, 33284272, 33103203, '', '', 114, 33, 'دمستان', 'GR2-D', '30'),
(1715, '', 'ولاء محمد احمد مرهون', 0, 1464, 4046, 540, 33288876, 3359593, '', '', 127, 30, 'الدراز', 'KG1-G', '16'),
(1716, '', 'حسين امير كاظم عبدالله كاظم', 0, 26, 49, 743, 33299101, 33305450, '', '', 118, 9, 'سند', 'GR3-E', '28'),
(1717, '', 'حسين شاكر علي جعفر الجمري', 0, 4026, 1991, 1019, 33299111, 39601118, '', '', 88, 33, 'دمستان', 'GR2-E', '30'),
(1718, '', 'حسين احمد علي محمد مطيلق', 0, 824, 2617, 626, 33300499, 33300272, '', '', 93, 7, 'العكر الغربي', 'GR1-A', '4'),
(1719, '', 'جنان صادق جعفر حسين مهدي', 0, 1031, 1121, 711, 33308005, 39111733, '', '', 83, 34, 'توبلي', 'GR2-C', '17'),
(1720, '', 'فاطمة حسن محمد عبدالله مطر', 0, 633, 1915, 1019, 33308335, 33117033, '', '', 128, 33, 'دمستان', 'GR6-C', '30'),
(1721, '', 'محمد حسن محمد عبدالله مطر', 0, 2767, 1957, 1019, 33308335, 33117033, '', '', 101, 33, 'دمستان', 'GR1-E', '30'),
(1722, '', 'حسين علي الماجد', 0, 1758, 1934, 1019, 33314104, 33331644, '', '', 87, 33, 'دمستان', 'GR3-C', '30'),
(1723, '', 'بيان محمد صادق حسن الستراوي', 0, 92, 22, 424, 33322298, 33053308, '', '', 99, 26, 'الديه', 'GR9-C', '9'),
(1724, '', 'جويريه محمد علي عبدالغفار', 0, 4819, 2863, 228, 33322372, 33371270, '', '', 129, 23, 'المحرق', 'GR1-D', '11'),
(1725, '', 'السيدهاشم سيدمحمد عاشور محمد', 0, 2121, 8249, 382, 33327222, 66656554, '', '', 129, 6, 'النبيه صالح', 'GR1-D', '20'),
(1726, '', 'علي حسين سعيد خميس', 0, 1064, 4632, 1046, 33332042, 33332043, '', '', 85, 10, 'دار كليب', 'GR4-B', '26'),
(1727, '', 'زهراء جابر علي حسين الشعله', 0, 1810, 3451, 734, 33334549, 33343816, '', '', 110, 17, 'اسكان عالي', 'GR3-B', '14'),
(1728, '', 'سيد احمد سيد يوسف منيري', 0, 2536, 4575, 745, 33336916, 39246467, '', '', 84, 9, 'سند', 'GR4-D', '28'),
(1729, '', 'احمد يونس عبدالعزيز', 0, 843, 60, 518, 33337522, 39151761, '', '', 109, 30, 'باربار', 'GR5-D', '16'),
(1730, '', 'منتظر محمد شبيب', 0, 1629, 822, 1208, 33338101, 39966435, '', '', 129, 29, 'مدينة حمد 8', 'GR1-D', '24'),
(1731, '', 'قاسم محمد احمد علي ناصر', 0, 1091, 4632, 1046, 33349009, 33235570, '', '', 93, 10, 'دار كليب', 'GR1-A', '26'),
(1732, '', 'دعاء عبدالشهيد أحمد علي شعبان', 0, 382, 8235, 1426, 33361212, 39287841, '', '', 99, 6, 'النبيه صالح', 'GR9-C', '20'),
(1733, '', 'عبدالله ياسرعلي عبدالله', 0, 699, 2124, 721, 33377345, 39245552, '', '', 86, 32, 'جدعلي', 'GR3-A', '13'),
(1734, '', 'علي ياسر علي عبدالله', 0, 699, 2124, 721, 33377345, 39245552, '', '', 109, 32, 'جدعلي', 'GR5-D', '13'),
(1735, '', 'سيدحسين علوي السيدعباس احمد', 0, 433, 4518, 745, 33382285, 33988855, '', '', 122, 9, 'سند', 'GR7-D', '28'),
(1736, '', 'فاطمة مظاهر العجمي', 0, 195, 4516, 745, 33399960, 33073989, '', '', 130, 9, 'سند', 'GR4-C', '28'),
(1737, '', 'زينب سلمان عبدالله ابراهيم', 0, 2835, 705, 705, 33399967, 33883996, '', '', 124, 20, 'توبلي', 'GR5-C', '33'),
(1738, '', 'احمد جاسم محمد علي فردان', 0, 2128, 3360, 1033, 33406699, 33656848, '', '', 112, 19, 'المالكية', 'GR1-G', '32'),
(1739, '', 'زينب جاسم محمد علي فردان', 0, 2128, 3360, 1033, 33406699, 33656848, '', '', 120, 19, 'المالكية', 'GR5-A', '32'),
(1740, '', 'سيف مطر', 0, 1046, 5710, 257, 33419733, 33263684, '', '', 93, 15, 'امواج', 'GR1-A', '31'),
(1741, '', 'علي مطر', 0, 1046, 5710, 257, 33419733, 33263684, '', '', 131, 15, 'امواج', 'KG2-I', '31'),
(1742, '', 'زهراء أحمد محمد الملاح', 0, 913, 3431, 1034, 33433131, 33845555, '', '', 99, 28, 'المالكية', 'GR9-C', '18'),
(1743, '', 'مريم علي يوسف خليل كاظم', 0, 34, 1301, 413, 33433139, 33977477, '', '', 102, 4, 'جدحفص', 'GR7-C', '2'),
(1744, '', 'ايلاء حسين مجيد اسماعيل', 0, 1872, 149, 701, 33433620, 39839666, '', '', 98, 20, 'توبلي', 'GR6-E', '33'),
(1745, '', 'علي حسين مجيد اسماعيل', 0, 2145, 154, 701, 33433620, 39839666, '', '', 89, 20, 'توبلي', 'GR3-D', '33'),
(1746, '', 'بيان علي صالح يوسف', 0, 3691, 2857, 928, 33485888, 36485888, '', '', 132, 35, 'وادي السيل', 'GR11-C', '29'),
(1747, '', 'حسن احمد حسن علي', 0, 101, 32, 432, 33592825, 33883617, '', '', 115, 36, 'كرباباد', 'GR2-B', '6'),
(1748, '', 'حسن علي ميرزا سلمان محمد', 0, 64, 2031, 1020, 33618884, 33935552, '', '', 88, 21, 'كرزكان', 'GR2-E', '25'),
(1749, '', 'مهدي صلاح جعفر العصفور', 0, 1481, 8130, 481, 33669981, 39127419, '', '', 118, 11, 'الشاخورة', 'GR3-E', '7'),
(1750, '', 'يحيى زكريا عبدالهادي عبدعلي', 0, 257, 3208, 736, 33697744, 39319177, '', '', 115, 17, 'عالي', 'GR2-B', '14'),
(1751, '', 'أحمد سامي علي حسن الحايكي', 0, 479, 3415, 234, 33727178, 33727174, '', '', 106, 31, 'سماهيج', 'GR8-D', '27'),
(1752, '', 'علي سامي علي حسن الحايكي', 0, 479, 3415, 234, 33727178, 33727174, '', '', 125, 31, 'سماهيج', 'GR11-B', '27'),
(1753, '', 'علي جواد هيات', 0, 1118, 4453, 644, 33733778, 33313457, '', '', 97, 7, 'نويدرات', 'GR1-C', '4'),
(1754, '', 'علي عبدالكريم عبدالجبار علي مشيمع', 0, 1845, 4153, 541, 33733913, 39013471, '', '', 85, 5, 'بني جمره', 'GR4-B', '15'),
(1755, '', 'عمر احمد رشاد امين', 0, 2983, 3955, 939, 33736235, 33279207, '', '', 119, 9, 'الحجيات', 'GR12-A', '28'),
(1756, '', 'معاذ احمد الشملان', 0, 1427, 5339, 553, 33737776, 33166667, '', '', 109, 5, 'بني جمرة', 'GR5-D', '15'),
(1757, '', 'علي محمد فريد طرادة', 0, 1285, 3224, 1032, 33752222, 33221655, '', '', 121, 28, 'المالكيه', 'GR3-F', '18'),
(1758, '', 'علي حسن عبدعلي', 0, 1983, 845, 608, 33757744, 35081633, '', '', 91, 37, 'سترة واديان', 'GR2-A', '10'),
(1759, '', 'علي عبدالرضا  محمد حسن بوحميد', 0, 3357, 3468, 1034, 33761707, 0, '', '', 92, 19, 'المالكية', 'GR10-C', '32'),
(1760, '', 'صالح جاسم صالح الظاعن', 0, 595, 728, 107, 33775504, 33775584, '', '', 95, 23, 'الحد', 'GR1-F', '11'),
(1761, '', 'هادي ماجد عبدالنبي علي', 0, 2038, 3641, 536, 33778840, 33339459, '', '', 87, 30, 'الدراز', 'GR3-C', '16'),
(1762, '', 'يوسف محمد حمادي', 0, 3287, 1154, 1211, 33779594, 0, '', '', 129, 35, 'مدينة حمد 15', 'GR1-D', '29'),
(1763, '', 'سيدمحمد سعيد حسن حسين', 0, 1141, 3221, 1032, 33858800, 39039009, '', '', 109, 28, 'المالكية', 'GR5-D', '18'),
(1764, '', 'زينب احمد حسين', 0, 1452, 3342, 633, 33859339, 34172554, '', '', 83, 7, 'المعامير', 'GR2-C', '4'),
(1765, '', 'زينب اسماعيل رحيم البهادلي', 0, 136, 2208, 1022, 33875337, 36089081, '', '', 103, 33, 'اسكان دمستان', 'GR8-A', '30'),
(1766, '', 'علي  اوال جعفر عبدالله', 0, 297, 0, 341, 33877780, 33877790, '', '', 133, 25, 'الجفير', 'GR9-A', '3'),
(1767, '', 'محمد ابراهيم منصور محمد علي', 0, 539, 407, 604, 33888919, 39181190, '', '', 134, 24, 'سترة', 'KG2-H', 'الروضة'),
(1768, '', 'منصور ابراهيم منصور محمد علي', 0, 539, 407, 604, 33888919, 39181190, '', '', 126, 37, 'سترة', 'GR6-D', '10'),
(1769, '', 'عدنان هاني عبدالرسول', 0, 1374, 2629, 626, 33889599, 36499974, '', '', 88, 7, 'العكر الغربي', 'GR2-E', '4'),
(1770, '', 'محمد حيدر محمد', 0, 1020, 1532, 815, 33901850, 33310029, '', '', 89, 18, 'مدينة عيسى', 'GR3-D', '8'),
(1771, '', 'فاطمة علي يوسف خليل كاظم', 0, 34, 1301, 413, 33977477, 33433139, '', '', 81, 4, 'جدحفص', 'GR4-A', '2'),
(1772, '', 'جود حسن علي الموالي', 0, 2085, 3641, 736, 33996552, 0, '', '', 86, 17, 'اسكان عالي', 'GR3-A', '14'),
(1773, '', 'محمد مرتضى احمد عبدالله القميش', 0, 3542, 3376, 1033, 33997599, 33388322, '', '', 135, 19, 'المالكية', 'GR10-B', '32'),
(1774, '', 'حسين خليل الجسر', 0, 477, 3210, 432, 33998328, 66968808, '', '', 84, 36, 'كرباباد', 'GR4-D', '6'),
(1775, '', 'غفران فتحي خليل ابراهيم نصيف', 0, 2503, 4270, 742, 34081958, 3993770, '', '', 136, 12, 'عالي', 'GR5-E', '19'),
(1776, '', 'محمد مازن جواد الحوري', 0, 1555, 747, 704, 34101140, 34101130, '', '', 126, 20, 'توبلي', 'GR6-D', '33'),
(1777, '', 'زينب سيدعدنان مهدي', 0, 886, 3324, 1033, 34141662, 39923033, '', '', 128, 19, 'المالكيه', 'GR6-C', '32'),
(1778, '', 'سيدعلي سيدعدنان مهدي', 0, 886, 3324, 1033, 34141662, 39923033, '', '', 137, 19, 'المالكيه', 'GR12-B', '32'),
(1779, '', 'عبدالرحمن عبدالله محمد', 0, 3128, 842, 1208, 34193011, 39389129, '', '', 138, 29, 'مدينه حمد 8', 'GR9-D', '24'),
(1780, '', 'علي نضال علي حسن نوح', 0, 1157, 433, 404, 34331976, 39331667, '', '', 138, 4, 'سنابس', 'GR9-D', '2'),
(1781, '', 'حسن جميل سلمان', 0, 1734, 5547, 455, 3434861, 33442263, '', '', 118, 16, 'بوقوة', 'GR3-E', '12'),
(1782, '', 'فاطمة حسين ادريس منصور', 0, 612, 5116, 551, 34434564, 66336032, '', '', 95, 22, 'القرية', 'GR1-F', '21'),
(1783, '', 'كندة خالد ابراهيم راشيدي', 0, 31, 2826, 228, 34441182, 34674191, '', '', 90, 23, 'البسيتين', 'GR1-B', '11'),
(1784, '', 'يوسف نبيل حسين محمد العريبي', 0, 1348, 1539, 815, 34443037, 0, '', '', 139, 18, 'مدينة عيسى', 'GR7-B', '8'),
(1785, '', 'يعقوب يوسف محمد يوسف', 0, 530, 1915, 1019, 34483004, 38853346, '', '', 126, 33, 'دمستان', 'GR6-D', '30'),
(1786, '', 'محمود بن حاتم محمود المصري', 0, 71, 4021, 997, 34501355, 34501356, '', '', 140, 25, 'الجفير', 'GR8-E', '3'),
(1787, '', 'ملاك بن حاتم محمود المصري', 0, 71, 4021, 997, 34501355, 34501356, '', '', 112, 25, 'الجفير', 'GR1-G', '3'),
(1788, '', 'دعاء حسن خميس', 0, 993, 2821, 328, 350722102, 39443604, '', '', 94, 25, 'السقية', 'GR7-A', '3'),
(1789, '', 'اسر ضياء الدين', 0, 2677, 3648, 436, 35084837, 33566759, '', '', 87, 36, 'السيف', 'GR3-C', '6'),
(1790, '', 'تركي ثامر ابراهيم صالح الغزال', 0, 468, 5335, 253, 35350595, 39555356, '', '', 138, 15, 'قلالي', 'GR9-D', '31'),
(1791, '', 'صادق جعفر موسى علي بوحسان', 0, 1506, 3750, 1037, 36000134, 37773371, '', '', 105, 13, 'صدد', 'GR6-B', '22'),
(1792, '', 'علي جميل جعفر احمد فضل', 0, 1414, 8129, 481, 36052400, 39955569, '', '', 105, 11, 'الشاخورة', 'GR6-B', '7'),
(1793, '', 'محمد جميل جعفر احمد فضل', 0, 1414, 8129, 481, 36052400, 39955569, '', '', 131, 11, 'الشاخورة', 'KG2-I', '7'),
(1794, '', 'رضا حميد عبدالله', 0, 1176, 5443, 754, 36052485, 36736377, '', '', 109, 12, 'بوري', 'GR5-D', '19'),
(1795, '', 'ملاك عبدالرضا محمد الجلابي', 0, 2860, 1153, 711, 36061554, 39755055, '', '', 124, 34, 'توبلي', 'GR5-C', '17'),
(1796, '', 'محمد صالح عبدالرحيم', 0, 2720, 4578, 745, 36119988, 39819898, '', '', 135, 9, 'سند', 'GR10-B', '28'),
(1797, '', 'امير احمد عبدالامير احمد عبدالله', 0, 707, 3423, 434, 36167000, 36003310, '', '', 141, 36, 'كرباباد', 'GR4-E', '6'),
(1798, '', 'اسراء يوسف احمد العالي', 0, 2846, 4274, 742, 36181888, 39434585, '', '', 142, 12, 'عالي', 'PR-KG-A', '19'),
(1799, '', 'امل يوسف احمد العالي', 0, 2846, 4274, 742, 36181888, 39434585, '', '', 89, 12, 'عالي', 'GR3-D', '19'),
(1800, '', 'زهرة يوسف احمد العالي', 0, 2846, 4274, 742, 36181888, 39434585, '', '', 143, 12, 'عالي', 'GR6-A', '19'),
(1801, '', 'زينب يوسف احمد العالي', 0, 2846, 42721, 742, 36181888, 39434585, '', '', 94, 12, 'عالي', 'GR7-A', '19'),
(1802, '', 'احمد جعفر احمد محمد حسن', 0, 549, 1410, 714, 36199969, 39090398, '', '', 141, 12, 'سلماباد', 'GR4-E', '19'),
(1803, '', 'ملاك محمود عبدالوهاب محسن', 0, 94, 38, 1038, 36224344, 39880088, '', '', 136, 28, 'صدد', 'GR5-E', '18'),
(1804, '', 'اسيل سيد جلال مهدي', 0, 2955, 1959, 1019, 36286333, 35085202, '', '', 89, 33, 'دمستان', 'GR3-D', '30'),
(1805, '', 'سيد محمد هيثم العلوي', 0, 3465, 3674, 236, 36366423, 0, '', '', 97, 31, 'السماهيج', 'GR1-C', '27'),
(1806, '', 'بتول سيدباقر ابراهيم امين', 0, 2253, 1639, 1216, 36442033, 39578799, '', '', 136, 10, '22مدينة حمد', 'GR5-E', '26'),
(1807, '', 'سيد محمد باقر ابراهيم امين', 0, 2253, 1639, 1216, 36442033, 39578799, '', '', 117, 10, 'مدينة حمد 22', 'GR7-E', '26'),
(1808, '', 'هالة حمد ايراهيم خلف', 0, 1135, 2014, 1020, 36446313, 39699233, '', '', 144, 21, 'كرزكان', 'KG1-C', '25'),
(1809, '', 'صادق جعفر محمد', 0, 43, 28, 1032, 36450144, 34539900, '', '', 125, 19, 'المالكية', 'GR11-B', '32'),
(1810, '', 'منار عباس هلال ابراهيم احمد', 0, 1203, 5633, 45, 36450707, 0, '', '', 95, 30, 'كرانة', 'GR1-F', '16'),
(1811, '', 'محمد عباس هلال  ابراهيم احمد', 0, 1203, 5633, 456, 36450707, 0, '', '', 100, 30, 'كرانه', 'GR5-F', '16'),
(1812, '', 'ليان عبدالله وزير', 0, 1405, 2447, 524, 36469090, 39607607, '', '', 99, 30, 'باربار', 'GR9-C', '16'),
(1813, '', 'نواف عبدالله وزير', 0, 1405, 2447, 524, 36469090, 39607607, '', '', 126, 30, 'باربار', 'GR6-D', '16'),
(1814, '', 'زهراء محمد جعفر منصور', 0, 1159, 8130, 381, 36475557, 37772566, '', '', 120, 6, 'النبيه صالح', 'GR5-A', '20'),
(1815, '', 'زينب محمد جعفر منصور', 0, 1159, 8130, 381, 36475557, 37772566, '', '', 101, 6, 'النبيه صالح', 'GR1-E', '20'),
(1816, '', 'سيدعلي سيدجلال هاشم', 0, 2503, 164, 701, 36482833, 33249036, '', '', 83, 20, 'توبلي', 'GR2-C', '33'),
(1817, '', 'محمود محمد صالح القفاص', 0, 171, 31, 447, 36498822, 33936341, '', '', 138, 27, 'اشبيلة', 'GR9-D', '5'),
(1818, '', 'علي محمد جعفر منصور عمران', 0, 24, 3901, 539, 36510003, 33304843, '', '', 119, 5, 'بني جمرة', 'GR12-A', '15'),
(1819, '', 'سلمان وائل سلمان', 0, 1796, 5055, 450, 36515885, 39001411, '', '', 96, 36, 'المقشع', 'GR10-A', '6'),
(1820, '', 'فاطمة وائل سلمان', 0, 796, 5055, 450, 36515885, 39001411, '', '', 118, 36, 'المقشع', 'GR3-E', '6'),
(1821, '', 'علي احمد اكبر احمد', 0, 1171, 1812, 1018, 36540405, 36677316, '', '', 140, 8, 'اللوزي', 'GR8-E', '1'),
(1822, '', 'سلمان رائد جاسم معيوف', 0, 1334, 2141, 721, 36551777, 36099355, '', '', 115, 14, 'جدعلي', 'GR2-B', '23'),
(1823, '', 'محمد رائد جاسم معيوف', 0, 1334, 2141, 721, 36551777, 36099355, '', '', 126, 14, '13جدعلي', 'GR6-D', '23'),
(1824, '', 'علي محمد علي الشيخ', 0, 1378, 1926, 1019, 36556652, 33001039, '', '', 97, 33, 'دمستان', 'GR1-C', '30'),
(1825, '', 'مازن علي محمد يعقوب المفتاح', 0, 745, 4580, 2828, 36633423, 39661203, '', '', 138, 9, 'سند', 'GR9-D', '28'),
(1826, '', 'علي محمد عبدالأمير جاسم مخلوق', 0, 1520, 3443, 734, 36637754, 39122193, '', '', 105, 17, 'عالي', 'GR6-B', '14'),
(1827, '', 'محمود محمد عبدالامير جاسم مخلوق', 0, 1520, 3443, 734, 36637754, 39122193, '', '', 85, 17, 'عالي', 'GR4-B', '14'),
(1828, '', 'يوسف محمد عبدالامير جاسم مخلوق', 0, 1520, 3443, 734, 36637754, 39122193, '', '', 144, 17, 'عالي', 'KG1-C', '14'),
(1829, '', 'سارة سمير رشيد عبدالله الماحوزي', 0, 3136, 958, 709, 36660880, 36660385, '', '', 81, 34, 'توبلي', 'GR4-A', '17'),
(1830, '', 'جود علي احمد نوح', 0, 1193, 1943, 419, 36661450, 39844378, '', '', 97, 4, 'اسكان جدحفص', 'GR1-C', '2'),
(1831, '', 'مهدي علي احمد نوح', 0, 1193, 1943, 419, 36661450, 39844378, '', '', 116, 4, 'اسكان جدحفص', 'GR6-F', '2'),
(1832, '', 'سلمان علي سلمان عبدالله', 0, 3341, 3374, 1033, 36677595, 0, '', '', 109, 19, 'المالكية', 'GR5-D', '32'),
(1833, '', 'يحيى عمار مهدي عبدالوهاب رضي', 0, 235, 11, 721, 36681118, 39680812, '', '', 92, 32, 'جدعلي', 'GR10-C', '13'),
(1834, '', 'فاطمة علي محمد ابراهيم يوسف صالح', 0, 124, 2208, 1022, 36691777, 34302000, '', '', 81, 33, 'دمستان', 'GR4-A', '30'),
(1835, '', 'حسين ميرزا عمران', 0, 1716, 2367, 523, 36699853, 66388820, '', '', 84, 22, 'سار', 'GR4-D', '21'),
(1836, '', 'محمد محمود محمد حسن طه', 0, 635, 711, 807, 36727227, 39205877, '', '', 108, 18, '23مدينة عيسى', 'GR9-B', '8'),
(1837, '', 'مريم فيصل عبدالوهاب غزوان', 0, 1778, 1557, 515, 36741002, 38410545, '', '', 113, 5, 'مقابة', 'GR12-C', '15'),
(1838, '', 'عيسى حمد عيسى عبدالله العويناتي', 0, 3639, 2188, 721, 36755955, 39612311, '', '', 119, 32, 'جدعلي', 'GR12-A', '13'),
(1839, '', 'يوسف حمد عيسى عبدالله العويناتي', 0, 3639, 2188, 721, 36755955, 39612311, '', '', 122, 32, 'جدعلي', 'GR7-D', '13'),
(1840, '', 'احمد يونس عبدعلي درويش', 0, 62, 2603, 1026, 36764666, 39637179, '', '', 84, 21, 'كرزكان', 'GR4-D', '25'),
(1841, '', 'محمود يونس عبدعلي درويش', 0, 62, 2603, 1026, 36764666, 39637179, '', '', 116, 21, 'كرزكان', 'GR6-F', '25'),
(1842, '', 'مرهفه محمد ايهم النمر', 0, 1413, 5127, 351, 36774470, 66355334, '', '', 91, 4, 'السنابس', 'GR2-A', '2'),
(1843, '', 'سكينة حسن علي دسمال', 0, 1339, 3338, 633, 36779967, 39921030, '', '', 145, 24, 'المعامير', 'KG2-G', 'الروضة'),
(1844, '', 'زينب عبدالله عبدالجليل الصفار', 0, 1446, 421, 1204, 36877414, 39077078, '', '', 146, 8, '2 مدينة حمد', 'GR8-C', '1'),
(1845, '', 'محمد عبدالله عبدالجليل الصفار', 0, 1446, 421, 1204, 36877414, 39077078, '', '', 89, 8, '4 مدينة حمد', 'GR3-D', '1'),
(1846, '', 'مريم عبدالله عبدالجليل الصفار', 0, 1446, 421, 1204, 36877414, 39077078, '', '', 120, 8, '2 مدينة حمد', 'GR5-A', '1'),
(1847, '', 'امل نوح عيسى', 0, 1663, 4325, 643, 36936983, 37760116, '', '', 112, 7, 'نويدرات', 'GR1-G', '4'),
(1848, '', 'ريان عباس يوسف احمد', 0, 1185, 5736, 457, 36944939, 34206208, '', '', 118, 16, 'ابوقوة', 'GR3-E', '12'),
(1849, '', 'نور حسين احمد محفوظ حسن الميل', 0, 1274, 8133, 381, 36997899, 39683260, '', '', 130, 6, 'النبيه صالح', 'GR4-C', '20'),
(1850, '', 'دانة ايمن خليل الشاخوري', 0, 502, 2617, 1026, 36999332, 33499299, '', '', 91, 21, 'كرزكان', 'GR2-A', '25'),
(1851, '', 'عبدالله علي صالح علي عطية', 0, 4212, 1174, 711, 37351122, 34114111, '', '', 83, 34, 'توبلي', 'GR2-C', '17'),
(1852, '', 'محمد قاسم حسن يوسف', 0, 703, 2623, 1026, 37707757, 39880029, '', '', 109, 21, 'كرزكان', 'GR5-D', '25'),
(1853, '', 'عباس جعفر محمد ابراهيم ال جواد', 0, 2846, 1959, 1019, 37722251, 38858519, '', '', 85, 33, 'دمستان', 'GR4-B', '30'),
(1854, '', 'احمد حميد عبدالكريم حبيب', 0, 2365, 2365, 742, 37756622, 66355909, '', '', 125, 12, 'عالي', 'GR11-B', '19'),
(1855, '', 'فاطمة حميد عبدالكريم حبيب', 0, 2365, 2365, 742, 37756622, 66355909, '', '', 123, 12, 'عالي', 'GR11-A', '19'),
(1856, '', 'حسين يوسف مكي يوسف', 0, 2164, 2652, 526, 37773070, 37780188, '', '', 101, 30, 'باربار', 'GR1-E', '16'),
(1857, '', 'عبدالله عادل عيسى فاضل العرب', 0, 2533, 1141, 1211, 37773885, 33799897, '', '', 88, 35, 'مدينة حمد 17', 'GR2-E', '29'),
(1858, '', 'علي عادل عيسى فاضل علي العرب', 0, 2533, 1141, 1211, 37773885, 33804941, '', '', 147, 35, '17مدينة حمد', 'GR8-B', '29'),
(1859, '', 'محمد عادل عيسى فاضل على العرب', 0, 2533, 1141, 1211, 37773885, 33804941, '', '', 92, 35, '17مدينة حمد', 'GR10-C', '29'),
(1860, '', 'علي عباس مرتضى عباس علي حاجي', 0, 1188, 2524, 525, 37777731, 39878222, '', '', 125, 22, 'سار', 'GR11-B', '21'),
(1861, '', 'ابراهيم حسين يوسف جعفر', 0, 1507, 3029, 430, 38381543, 38381543, '', '', 114, 36, 'كرباباد', 'GR2-D', '6'),
(1862, '', 'علي حسين يوسف جعفر', 0, 1507, 3029, 430, 38381543, 38381543, '', '', 92, 36, 'كرباباد', 'GR10-C', '6'),
(1863, '', 'مريم حسين يوسف جعفر', 0, 1507, 3029, 430, 38381543, 38381543, '', '', 102, 36, 'كرباباد', 'GR7-C', '6'),
(1864, '', 'فيصل محمد مهدي عبدالهادي رجب', 0, 2707, 2553, 525, 38463334, 38388336, '', '', 139, 22, 'سار', 'GR7-B', '21'),
(1865, '', 'مريم صلاح رضي صالح علي', 0, 2666, 6261, 362, 38804818, 36643111, '', '', 102, 27, 'البلاد القديم', 'GR7-C', '5'),
(1866, '', 'علياء علي محفوظ يوسف', 0, 2128, 4457, 1044, 38856525, 39082274, '', '', 130, 13, 'شهركان', 'GR4-C', '22'),
(1867, '', 'عبدالواحد علي عبدالواحد محمود الكوهجي', 0, 1477, 2926, 929, 38881564, 39010055, '', '', 106, 18, '23مدينة عيسى', 'GR8-D', '8'),
(1868, '', 'نورة علي عبدالواحد محمود الكوهجي', 0, 1477, 2926, 929, 38881564, 39010055, '', '', 87, 18, 'مدينة عيسى', 'GR3-C', '8'),
(1869, '', 'مهدي حسن علي سلمان عواجي', 0, 1436, 3934, 439, 38881899, 39003889, '', '', 112, 16, 'السهلة الشمالية', 'GR1-G', '12'),
(1870, '', 'سيد فضل هاشم عباس', 0, 1282, 5149, 551, 38882022, 38808339, '', '', 129, 22, 'القرية', 'GR1-D', '21'),
(1871, '', 'زينب عباس ابراهيم حسن', 0, 1394, 3249, 432, 38885706, 33679933, '', '', 130, 36, 'كرباباد', 'GR4-C', '6'),
(1872, '', 'سيدمحمد سيد حيدر شبر هاشم', 0, 2107, 1048, 1010, 38886251, 39958480, '', '', 91, 33, 'الهملة', 'GR2-A', '30'),
(1873, '', 'سارة عمار ابراهيم', 0, 1808, 427, 1204, 39000072, 33121424, '', '', 110, 8, 'مدينة حمد الدوار 2', 'GR3-B', '1'),
(1874, '', 'حسن عباس علي بوحسن', 0, 2422, 2570, 1025, 39000840, 33368725, '', '', 114, 21, 'كرزكان', 'GR2-D', '25'),
(1875, '', 'محمد هاني عباس محفوظ', 0, 3098, 181, 701, 39001610, 39446796, '', '', 114, 20, 'توبلي', 'GR2-D', '33'),
(1876, '', 'هادي حسن علي سلمان عواجي', 0, 1436, 3934, 439, 39003889, 38881899, '', '', 118, 16, 'السهلة الشمالية', 'GR3-E', '12'),
(1877, '', 'سيدمحمود مصطفى جلال العلوي', 0, 2075, 3461, 1034, 39022233, 33701110, '', '', 84, 28, 'المالكية', 'GR4-D', '18'),
(1878, '', 'شهلاء حسن علي عبدالله', 0, 797, 3322, 1033, 39024945, 33363634, '', '', 113, 19, 'المالكية', 'GR12-C', '32'),
(1879, '', 'علي حسن اسماعيل جاسم', 0, 396, 611, 406, 39033036, 38811731, '', '', 123, 22, 'سنابس', 'GR11-A', '21'),
(1880, '', 'علي حسن اسماعيل جاسم', 0, 396, 611, 406, 39033036, 38811731, '', '', 123, 4, 'سنابس', 'GR11-A', '2'),
(1881, '', 'محمد حسن اسماعيل جاسم', 0, 396, 611, 406, 39033036, 38811731, '', '', 106, 4, 'سنابس', 'GR8-D', '2'),
(1882, '', 'محمد حسن اسماعيل جاسم', 0, 396, 611, 406, 39033036, 38811731, '', '', 106, 22, 'سنابس', 'GR8-D', '21'),
(1883, '', 'سيدجعفر سيدوصي جعفر علوي', 0, 2116, 4457, 1044, 39050752, 39804599, '', '', 89, 13, 'شهركان', 'GR3-D', '22'),
(1884, '', 'حوراء يوسف عبدالعزيز', 0, 419, 410, 404, 39057270, 36531532, '', '', 128, 4, 'السنابس', 'GR6-C', '2'),
(1885, '', 'محمد علي موسى', 0, 669, 60, 502, 39085111, 33301124, '', '', 141, 30, 'جنوسان', 'GR4-E', '16'),
(1886, '', 'اسماء عبدالاله علي بوعلي', 0, 1581, 4732, 447, 39096044, 39581751, '', '', 103, 16, 'اشبيلية', 'GR8-A', '12'),
(1887, '', 'نادر عباس حبيب محمد علي مال الله', 0, 1318, 3730, 537, 39096298, 39811597, '', '', 126, 5, 'بني جمرة', 'GR6-D', '15'),
(1888, '', 'عبدالله احمد عبدالله صالح الدويسان', 0, 63, 131, 801, 39096606, 33394433, '', '', 137, 18, '23مدينة عيسى', 'GR12-B', '8'),
(1889, '', 'فجر أحمد عبدالله صالح الدويسان', 0, 634, 131, 801, 39096606, 33394433, '', '', 146, 18, '23مدينة عيسى', 'GR8-C', '8'),
(1890, '', 'كوثر صلاح جعفر العصفور', 0, 1481, 8130, 481, 39127419, 33669981, '', '', 102, 11, 'الشاخورة', 'GR7-C', '7'),
(1891, '', 'عبدالله يونس عبدالنبي يوسف علي', 0, 951, 4430, 1044, 39130384, 39593290, '', '', 141, 13, 'شهركان', 'GR4-E', '22'),
(1892, '', 'علي عبدالعزيز عبدعلي عبدالله', 0, 908, 1431, 414, 39133132, 39334233, '', '', 88, 26, 'الديه', 'GR2-E', '9'),
(1893, '', 'نور عبدالعزيز عبدعلي عبدالله', 0, 908, 1431, 414, 39133132, 39334233, '', '', 97, 26, 'الديه', 'GR1-C', '9'),
(1894, '', 'فاطمة حسن علي رضا', 0, 497, 2808, 1028, 39140705, 39904005, '', '', 87, 19, 'كرزكان', 'GR3-C', '32'),
(1895, '', 'حوراء علي رضي علي', 0, 4453, 660, 606, 39166730, 39529338, '', '', 98, 37, 'ستره الخارجيه', 'GR6-E', '10'),
(1896, '', 'سارة علي رضي علي', 0, 4453, 660, 606, 39166730, 39529338, '', '', 81, 37, 'سترة الخارجيه', 'GR4-A', '10'),
(1897, '', 'احمد طه احمد علي عبدالله', 0, 510, 909, 1209, 39181454, 36512365, '', '', 85, 29, '8مدينة حمد', 'GR4-B', '24'),
(1898, '', 'مريم طه احمد علي عبدالله', 0, 510, 909, 1209, 39181454, 36512365, '', '', 144, 29, 'مدينة حمد\\ دوار8', 'KG1-C', '24'),
(1899, '', 'ميثم طه احمد علي عبدالله', 0, 510, 909, 1209, 39181454, 36512365, '', '', 148, 29, 'مدينة حمد\\ دوار8', 'KG1-A', '24'),
(1900, '', 'ميساء طه احمد علي عبدالله', 0, 510, 909, 1209, 39181454, 36512365, '', '', 87, 29, '8مدينة حمد', 'GR3-C', '24'),
(1901, '', 'حسن علي محمد الجبوري', 0, 1047, 1618, 1216, 39200911, 39879503, '', '', 100, 10, '22 مدينة حمد', 'GR5-F', '26'),
(1902, '', 'ريم رائد احمد محمد الصفار', 0, 1647, 7523, 575, 39209305, 34400468, '', '', 94, 22, 'الجنبية', 'GR7-A', '21'),
(1903, '', 'محمد احمد محمد الجبوري', 0, 1023, 1618, 1216, 39209618, 39800905, '', '', 88, 10, 'مدينة حمد 22', 'GR2-E', '26'),
(1904, '', 'فاطمة حسين علي  عبدالله حسن العبد', 0, 452, 2933814, 608, 39212797, 36367978, '', '', 121, 37, 'سترة', 'GR3-F', '10'),
(1905, '', 'يوسف سمير احمد الشيخ', 0, 1931, 2639, 262, 39218285, 36690013, '', '', 87, 7, 'العكر الغربي', 'GR3-C', '4'),
(1906, '', 'فاضل صادق ابراهيم علي سلمان', 0, 361, 3808, 438, 39221393, 39548929, '', '', 122, 36, 'القلعة', 'GR7-D', '6'),
(1907, '', 'سلمان صادق عبدالعزيز', 0, 3469, 5772, 457, 39222466, 0, '', '', 137, 16, 'ابو قوة\\سرايا 2', 'GR12-B', '12'),
(1908, '', 'ايمن احمد حسن علي مسعود', 0, 935, 3325, 1033, 39224498, 39059081, '', '', 140, 19, 'المالكية', 'GR8-E', '32'),
(1909, '', 'ليالي أحمد حسن علي مسعود', 0, 935, 3325, 1033, 39224498, 39059081, '', '', 92, 19, 'المالكية', 'GR10-C', '32'),
(1910, '', 'دانه ياسر محسن سيف', 0, 701, 5917, 359, 39232309, 39901601, '', '', 102, 27, 'الزنج', 'GR7-C', '5'),
(1911, '', 'عمار ياسر محسن سيف', 0, 701, 5917, 359, 39232309, 39901601, '', '', 122, 27, 'الزنج', 'GR7-D', '5'),
(1912, '', 'سيدسجاد سيدحسين عبدالنبي', 0, 2397, 3468, 1034, 39234739, 39166097, '', '', 85, 19, 'المالكيه', 'GR4-B', '32'),
(1913, '', 'بتول سيدمحمود محمد باقر', 0, 4, 5831, 758, 39237724, 39033899, '', '', 81, 12, 'بوري', 'GR4-A', '19'),
(1914, '', 'علي حسين علي محمد كويتان', 0, 1630, 949, 709, 39244885, 39403300, '', '', 116, 20, 'توبلي', 'GR6-F', '33'),
(1915, '', 'جود حسين عبدالكريم صالح', 0, 929, 2227, 1022, 39259301, 34007903, '', '', 81, 33, 'دمستان', 'GR4-A', '30'),
(1916, '', 'سكينة حسين حسن عبدالله', 0, 91, 19, 721, 39266282, 39550229, '', '', 128, 32, 'جدعلي', 'GR6-C', '13'),
(1917, '', 'حسين محمد علي حبيب العرب', 0, 1735, 4657, 1046, 39269499, 33702203, '', '', 147, 10, 'داركليب', 'GR8-B', '26'),
(1918, '', 'احمد عبدالله احمد عبدالملك', 0, 209, 11, 721, 39278783, 39827244, '', '', 106, 32, 'جدعلي', 'GR8-D', '13'),
(1919, '', 'حسين علي عبدالعزيز حسن محمد علي', 0, 498, 1108, 1211, 39285622, 39021353, '', '', 122, 35, '15مدينة حمد', 'GR7-D', '29'),
(1920, '', 'زينب علي عبدالعزيز حسن محمد علي', 0, 498, 1108, 1211, 39285622, 39021353, '', '', 136, 35, '15مدينة حمد', 'GR5-E', '29'),
(1921, '', 'فاطمة علي عبدالعزيز حسن محمد', 0, 498, 1108, 1211, 39285622, 39021353, '', '', 114, 35, 'مدينة حمد 15', 'GR2-D', '29'),
(1922, '', 'حسن علي موسى أحمد حسن', 0, 1501, 545, 705, 39287755, 39811984, '', '', 87, 20, 'توبلي', 'GR3-C', '33'),
(1923, '', 'موسى علي موسى أحمد حسن', 0, 1501, 545, 705, 39287755, 39811984, '', '', 105, 20, 'توبلي', 'GR6-B', '33'),
(1924, '', 'فاطمة محمد عبدالله احمد اضرابوه', 0, 2130, 848, 608, 39291474, 39097804, '', '', 102, 37, 'ستره', 'GR7-C', '10'),
(1925, '', 'مريم حسين عبدعلي الصباح', 0, 1056, 2421, 424, 39297971, 39251610, '', '', 88, 26, 'الديه', 'GR2-E', '9'),
(1926, '', 'محمد فاضل صالح الليث', 0, 1481, 8130, 481, 39299454, 39179894, '', '', 122, 11, 'الشاخورة', 'GR7-D', '7'),
(1927, '', 'زينب محمود فاضل عباس', 0, 2698, 1143, 1211, 39309494, 36122323, '', '', 90, 35, 'مدينة حمد 15', 'GR1-B', '29'),
(1928, '', 'عائشة حسين عباس رمضان', 0, 81, 1101, 1211, 39333521, 33003444, '', '', 132, 35, 'مدينة حمد دوار 13', 'GR11-C', '29'),
(1929, '', 'بتول سيدضياء حسن احمد', 0, 2440, 1139, 1211, 39339971, 33105559, '', '', 115, 35, 'مدينة حمد دوار 17', 'GR2-B', '29'),
(1930, '', 'وديعة عبدالله حسن عبدالله سليم', 0, 91, 91, 721, 39400783, 39400788, '', '', 124, 32, 'جدعلي', 'GR5-C', '13'),
(1931, '', 'محمد فيصل علي الشوفة', 0, 3072, 983, 709, 39402032, 39993252, '', '', 84, 34, 'توبلي', 'GR4-D', '17'),
(1932, '', 'فاطمة فيصل علي الشوفة', 0, 3072, 983, 709, 39402032, 39999252, '', '', 98, 34, 'توبلي', 'GR6-E', '17'),
(1933, '', 'مهدي محمود حسن الوزير', 0, 623, 714, 607, 39404646, 33306946, '', '', 81, 24, 'سترة ( ابو العيش)', 'KG2-‍F', 'الروضة'),
(1934, '', 'زهراء صالح مهدي مكي', 0, 1160, 3926, 439, 39405474, 39271835, '', '', 120, 16, 'السهلة الشمالية', 'GR5-A', '12'),
(1935, '', 'مهدي صالح مهدي مكي', 0, 1160, 3926, 439, 39405474, 39271835, '', '', 150, 16, 'السهلة الشمالية', 'KG1-E', '12'),
(1936, '', 'ريم حسين علي عبدالله جمعه', 0, 52, 3, 606, 39412214, 39085360, '', '', 151, 24, 'ستره', 'KG1-D', 'الروضة'),
(1937, '', 'علي حسين علي عبدالله جمعه', 0, 52, 3, 606, 39412214, 39085360, '', '', 89, 37, 'ستره', 'GR3-D', '10'),
(1938, '', 'عباس عبدالمحسن حسن علي أحمد', 0, 1987, 2155, 721, 39416816, 39650097, '', '', 108, 32, 'جدعلي', 'GR9-B', '13'),
(1939, '', 'علي عبدالمحسن حسن علي أحمد', 0, 1987, 2155, 721, 39416816, 39650097, '', '', 125, 32, 'جدعلي', 'GR11-B', '13'),
(1940, '', 'فاطمة عبدالمحسن حسن علي احمد', 0, 1987, 2155, 721, 39416816, 39650097, '', '', 94, 32, 'جدعلي', 'GR7-A', '13'),
(1941, '', 'نور عبدالمحسن حسن علي أحمد', 0, 1987, 2155, 721, 39416816, 39650097, '', '', 119, 32, 'جدعلي', 'GR12-A', '13'),
(1942, '', 'سارة حسن مكي رضي', 0, 154, 4313, 543, 39420448, 39958383, '', '', 125, 5, 'بني جمرة', 'GR11-B', '15'),
(1943, '', 'غدير حسن مكي رضي', 0, 154, 4313, 543, 39420448, 39958383, '', '', 102, 5, 'بنى جمرة', 'GR7-C', '15'),
(1944, '', 'ياسين حسن مكي رضي', 0, 154, 4313, 543, 39420448, 39958383, '', '', 101, 5, 'بني جمرة', 'GR1-E', '15'),
(1945, '', 'احمد ابراهيم ال شهاب', 0, 4045, 5780, 547, 39434333, 0, '', '', 138, 16, 'سرايا 2', 'GR9-D', '12'),
(1946, '', 'عبدالله ابراهيم ال شهاب', 0, 4045, 5780, 547, 39434333, 0, '', '', 147, 16, 'سرايا 2', 'GR8-B', '12'),
(1947, '', 'علي شفيق عاشور حرم', 0, 1403, 2629, 626, 39434711, 0, '', '', 152, 24, 'العكر الغربي', 'KG2-A', 'الروضة'),
(1948, '', 'خليل حسين خليل ثامر', 0, 1725, 4657, 1725, 39435358, 33488222, '', '', 101, 10, 'دار كليب', 'GR1-E', '26'),
(1949, '', 'علي حسين خليل ثامر', 0, 1725, 4657, 1046, 39435358, 33488222, '', '', 105, 10, 'داركليب', 'GR6-B', '26'),
(1950, '', 'علي أحمد حسن الزاير', 0, 3029, 983, 709, 39448596, 39596270, '', '', 105, 34, '23توبلي', 'GR6-B', '17'),
(1951, '', 'علي عيسى احمد عبدالوهاب ربيع', 0, 336, 404, 604, 39448814, 0, '', '', 121, 37, 'سترة', 'GR3-F', '10'),
(1952, '', 'زهراء حسين علي ثامر', 0, 243, 1505, 1215, 39449356, 33545866, '', '', 90, 10, 'مدينة حمد', 'GR1-B', '26'),
(1953, '', 'بتول علي عبدالعزيز الطويل', 0, 2537, 164, 701, 39452229, 33454441, '', '', 120, 20, 'توبلي', 'GR5-A', '33'),
(1954, '', 'الياس عيسى ابراهيم حسن ابراهيم', 0, 139, 43, 139, 39452417, 39179795, '', '', 125, 9, 'سند', 'GR11-B', '28'),
(1955, '', 'جود حبيب عبدالله حبيب', 0, 666, 3831, 738, 39455315, 39310578, '', '', 101, 17, 'عالي', 'GR1-E', '14'),
(1956, '', 'اسامة راشد أحمد نظر', 0, 76, 901, 1209, 39462177, 0, '', '', 125, 8, '7مدينة حمد', 'GR11-B', '1'),
(1957, '', 'حسين محمد ابراهيم الدمستاني', 0, 2985, 1959, 1019, 39466269, 33328829, '', '', 92, 33, 'دمستان', 'GR10-C', '30'),
(1958, '', 'بتول محمد محسن زهير', 0, 322, 2607, 626, 39467841, 39765565, '', '', 94, 7, 'العكرالغربي', 'GR7-A', '4'),
(1959, '', 'زينب حسين علي الطوبجي', 0, 3920, 2183, 721, 39470722, 33058454, '', '', 83, 14, 'جدعلي', 'GR2-C', '23'),
(1960, '', 'سيدعلي سيدمحمود جعفر محمد', 0, 2, 2210, 1022, 39557577, 39991015, '', '', 83, 33, 'دمستان', 'GR2-C', '30'),
(1961, '', 'علي حسن علي غريب', 0, 1124, 3832, 1038, 39559228, 33099686, '', '', 88, 13, 'صدد', 'GR2-E', '22'),
(1962, '', 'حسين شاكر باقر حسين', 0, 1561, 4647, 1046, 39577664, 33240966, '', '', 110, 10, 'دار كليب', 'GR3-B', '26'),
(1963, '', 'علي حسين مهدي حبيب', 0, 66, 3208, 434, 39580255, 39205472, '', '', 106, 36, 'كرباباد', 'GR8-D', '6'),
(1964, '', 'زينب ياسر العسكري', 0, 1349, 1422, 714, 39600617, 34109041, '', '', 123, 12, 'سلماباد', 'GR11-A', '19'),
(1965, '', 'حسن حمورابي حسن رضي عبدالوهاب', 0, 1554, 3751, 1037, 39601010, 39484484, '', '', 108, 13, 'صدد', 'GR9-B', '22'),
(1966, '', 'زينب حمورابي حسن  رضي عبدالوهاب', 0, 1554, 3751, 1037, 39601010, 39484484, '', '', 81, 13, 'صدد', 'GR4-A', '22'),
(1967, '', 'علي اسامة سلمان تقي محمد', 0, 2650, 3367, 1033, 39601145, 3335939, '', '', 89, 19, 'المالكية', 'GR3-D', '32'),
(1968, '', 'محمد عبدالشهيد احمدعلي', 0, 795, 3616, 736, 39608675, 33331623, '', '', 116, 17, 'اسكان عالي', 'GR6-F', '14'),
(1969, '', 'فاطمة ميثم عبدالامير المشيمع', 0, 356, 0, 805, 39609496, 39911980, '', '', 128, 18, '23مدينه عيسى', 'GR6-C', '8'),
(1970, '', 'فاطمة حسين احمد عبدالرضا', 0, 982, 3329, 233, 39610908, 33001500, '', '', 92, 31, 'الدير', 'GR10-C', '27'),
(1971, '', 'محمد نزار أحمد  منصور الحلواجي', 0, 488, 209, 302, 39617996, 33252294, '', '', 105, 25, 'المنامة', 'GR6-B', '3'),
(1972, '', 'محمد حسين يوسف جاسم نعمه', 0, 2870, 106, 1037, 39631634, 39993002, '', '', 139, 13, 'صدد', 'GR7-B', '22'),
(1973, '', 'مهدي يوسف محمد يوسف اسد', 0, 2629, 5447, 254, 39632536, 39686908, '', '', 125, 15, 'قلالي', 'GR11-B', '31'),
(1974, '', 'علي يوسف محمد يوسف اسد', 0, 2629, 5447, 254, 39632536, 39687908, '', '', 91, 15, 'قلالي', 'GR2-A', '31'),
(1975, '', 'محمد يوسف محمد يوسف اسد', 0, 2629, 5447, 254, 39632536, 39687908, '', '', 92, 15, 'قلالي', 'GR10-C', '31'),
(1976, '', 'يوسف مهدي عبدالرسول دادي', 0, 77, 3501, 935, 39633305, 0, '', '', 139, 9, 'الرفاع الشرقي', 'GR7-B', '28'),
(1977, '', 'سندس حسين ابراهيم الصالح', 0, 3229, 1050, 1210, 39637364, 33393535, '', '', 131, 29, 'مدينة حمد 11', 'KG2-I', '24'),
(1978, '', 'علي حسين ابراهيم الصالح', 0, 3229, 1050, 1210, 39637364, 33393535, '', '', 141, 29, 'مدينة حمد 11', 'GR4-E', '24'),
(1979, '', 'كميل حسين ابراهيم الصالح', 0, 3229, 1050, 1210, 39637364, 33393535, '', '', 122, 29, 'مدينة حمد 11', 'GR7-D', '24'),
(1980, '', 'زينب سيدعبدالرضا ابوقاسم', 0, 1082, 219, 302, 39650807, 36431314, '', '', 151, 25, 'المنامة', 'KG1-D', '3'),
(1981, '', 'سيدحسين عبدالرضا ابوقاسم', 0, 1082, 219, 302, 39650807, 36431314, '', '', 135, 25, 'المنامه', 'GR10-B', '3'),
(1982, '', 'إيثار سيدمهدي جعفر علوي حسين', 0, 2134, 4457, 1044, 39654544, 39839757, '', '', 98, 13, 'شهركان', 'GR6-E', '22'),
(1983, '', 'سيدعبدالله سيدمهدي جعفر علوي حسين', 0, 2134, 4457, 1044, 39654544, 39839757, '', '', 87, 13, 'شهركان', 'GR3-C', '22'),
(1984, '', 'حنين حسين عيسى الماضي', 0, 816, 3327, 233, 39654599, 0, '', '', 153, 31, 'الدير', 'KG2-B', '27'),
(1985, '', 'علي حسين عيسى الماضي', 0, 816, 3327, 233, 39654599, 0, '', '', 92, 31, 'الدير', 'GR10-C', '27'),
(1986, '', 'فاطمة حسين عيسى الماضي', 0, 816, 3327, 233, 39654599, 0, '', '', 92, 31, 'الدير', 'GR10-C', '27'),
(1987, '', 'منال عبدالمجيد ابل', 0, 2, 5778, 457, 39655305, 39040507, '', '', 132, 16, 'ابو قوة', 'GR11-C', '12'),
(1988, '', 'ابرار يوسف عبدالجبار حسن', 0, 175, 36, 232, 39659938, 36700133, '', '', 135, 31, 'سماهيج', 'GR10-B', '27'),
(1989, '', 'علي جعفر علي احمد حسين الغانمي', 0, 703, 826, 408, 39661167, 39934949, '', '', 115, 4, 'السنابس', 'GR2-B', '2'),
(1990, '', 'عبدالله جعفر علي احمد حسين الغانمي', 0, 703, 826, 408, 39661167, 39934949, '', '', 109, 4, 'السنابس', 'GR5-D', '2'),
(1991, '', 'مريم محمد حميد احمد الشهاب', 0, 761, 3515, 435, 39663000, 39127821, '', '', 88, 27, 'جبلة حبشي', 'GR2-E', '5'),
(1992, '', 'زهراء حسن ابراهيم الدقاق', 0, 266, 3408, 434, 39663995, 39071808, '', '', 118, 36, 'كرباباد', 'GR3-E', '6'),
(1993, '', 'فاطمة حسن ابراهيم الدقاق', 0, 266, 3408, 434, 39663995, 39074246, '', '', 118, 36, 'كرباباد', 'GR3-E', '6'),
(1994, '', 'محمد حسن ابراهيم الدقاق', 0, 266, 3408, 434, 39663995, 39074246, '', '', 116, 36, 'كرباباد', 'GR6-F', '6'),
(1995, '', 'حسين علي جواد جباري', 0, 4030, 2192, 721, 39670032, 39638877, '', '', 117, 14, 'جدعلي', 'GR7-E', '23'),
(1996, '', 'حسين عبدالعزيز احمد فخر', 0, 555, 1418, 414, 39677607, 39798296, '', '', 104, 26, 'الديه', 'GR5-B', '9'),
(1997, '', 'علي محمود محمد علي', 0, 2483, 2962, 724, 39682727, 39977007, '', '', 105, 14, 'جرداب', 'GR6-B', '23'),
(1998, '', 'فيصل محمود محمد علي', 0, 2483, 2962, 724, 39682727, 39977007, '', '', 122, 14, 'جرداب', 'GR7-D', '23'),
(1999, '', 'فاطمة حسين عبدعلي الصباح', 0, 1056, 2421, 424, 39686361, 39251610, '', '', 88, 26, 'الديه', 'GR2-E', '9'),
(2000, '', 'طاهرة نبيل محمد رضا عبدالحسين', 0, 1497, 2142, 721, 39686399, 39779931, '', '', 135, 14, 'جدعلي', 'GR10-B', '23'),
(2001, '', 'ريم سيد فاضل شبر السماك', 0, 1410, 2141, 721, 39688966, 39333977, '', '', 124, 14, '13جدعلي', 'GR5-C', '23'),
(2002, '', 'خديجة سيدهاشم محمد التوبلاني', 0, 1771, 2148, 721, 39696250, 39797694, '', '', 119, 32, 'جدعلي', 'GR12-A', '13'),
(2003, '', 'حسين علي رضا', 0, 581, 521, 405, 39698966, 39968966, '', '', 114, 27, 'طشان', 'GR2-D', '5'),
(2004, '', 'زينب علي رضا', 0, 581, 521, 405, 39698966, 39968966, '', '', 143, 27, 'طشان', 'GR6-A', '5'),
(2005, '', 'حسين حمزة جاسم حماد', 0, 270, 307, 303, 39698990, 33836797, '', '', 147, 25, 'النعيم', 'GR8-B', '3'),
(2006, '', 'ابراهيم حمد إبراهيم خلف', 0, 1135, 2014, 1020, 39699233, 36446313, '', '', 90, 21, 'كرزكان', 'GR1-B', '25'),
(2007, '', 'سلمان حمد ابراهيم خلف', 0, 1135, 2014, 1020, 39699233, 36446313, '', '', 138, 21, 'كرزكان', 'GR9-D', '25'),
(2008, '', 'علي احمد ناصر حسن مبارك', 0, 761, 623, 206, 39715571, 33228667, '', '', 85, 23, 'المحرق', 'GR4-B', '11'),
(2009, '', 'ناصر احمد ناصر حسن مبارك', 0, 761, 623, 206, 39715571, 33228667, '', '', 105, 23, 'المحرق', 'GR6-B', '11'),
(2010, '', 'علي زهير عبدالنبي القصاص', 0, 369, 3405, 634, 39729071, 33229959, '', '', 144, 24, 'المعامير', 'KG1-C', 'الروضة'),
(2011, '', 'فاطمه جعفر محمد سليم', 0, 2361, 1146, 711, 39746059, 39532444, '', '', 83, 34, 'توبلي', 'GR2-C', '17'),
(2012, '', 'ابراهيم حسين ابراهيم  احمد الناصر', 0, 1211, 4617, 746, 39767600, 35595101, '', '', 147, 17, 'عالي', 'GR8-B', '14'),
(2013, '', 'زهراء حسين ايراهيم احمد الناصر', 0, 1211, 4617, 746, 39767600, 35595101, '', '', 102, 17, 'عالي', 'GR7-C', '14'),
(2014, '', 'سارة علي حسن رضي', 0, 3172, 3372, 1033, 39770388, 38414242, '', '', 130, 19, 'المالكيه', 'GR4-C', '32'),
(2015, '', 'عبدالله علي حسن رضي', 0, 3172, 3372, 1033, 39770388, 38414242, '', '', 106, 19, 'المالكيه', 'GR8-D', '32'),
(2016, '', 'احمد علي عبدالرزاق عباس', 0, 2649, 3158, 231, 39773221, 39773220, '', '', 88, 15, 'الدير', 'GR2-E', '31'),
(2017, '', 'حسين علي عبدالرزاق عباس', 0, 2649, 3158, 231, 39773221, 39773220, '', '', 135, 15, 'الدير', 'GR10-B', '31'),
(2018, '', 'عبدالرزاق علي عبدالرزاق عباس', 0, 2649, 3158, 231, 39773221, 39773220, '', '', 117, 15, 'الدير', 'GR7-E', '31'),
(2019, '', 'ناصر علي جواد جاسم', 0, 1483, 1423, 1214, 39775791, 39820938, '', '', 101, 35, 'مدينة حمد 19', 'GR1-E', '29'),
(2020, '', 'نوح علي جواد جاسم', 0, 1483, 1423, 1214, 39775791, 39820938, '', '', 116, 35, '19مدينة حمد', 'GR6-F', '29'),
(2021, '', 'حسن محمد علي عبدالله خميس', 0, 326, 58, 358, 39777281, 33131050, '', '', 138, 27, 'الزنج', 'GR9-D', '5'),
(2022, '', 'فاطمة فاضل محمد', 0, 179, 4123, 241, 39777595, 0, '', '', 133, 23, 'عراد', 'GR9-A', '11'),
(2023, '', 'زينة حسين علي طريف', 0, 1551, 8131, 481, 39777841, 36987869, '', '', 133, 11, 'الشاخورة', 'GR9-A', '7'),
(2024, '', 'مهدي حسين علي طريف', 0, 1551, 8131, 481, 39777841, 36987869, '', '', 126, 11, 'الشاخورة', 'GR6-D', '7'),
(2025, '', 'محمد سيداسامة حبيب', 0, 693, 3826, 1038, 39785588, 39776641, '', '', 92, 13, 'صدد', 'GR10-C', '22'),
(2026, '', 'فاطمة حسن جعفر', 0, 1983, 3870, 738, 39788993, 0, '', '', 95, 17, 'عالي', 'GR1-F', '14'),
(2027, '', 'مريم سامي خليل ابراهيم احمد مرهون', 0, 1210, 8035, 380, 39796500, 39903277, '', '', 81, 6, 'النبيه صالح', 'GR4-A', '20'),
(2028, '', 'علي مجيد احمد اسماعيل', 0, 4, 43, 626, 39799477, 37770050, '', '', 139, 7, 'العكر الغربي', 'GR7-B', '4'),
(2029, '', 'فاطمة هاني علي ابراهيم الشوفه', 0, 49, 19, 709, 39803126, 38389773, '', '', 124, 34, '23توبلي', 'GR5-C', '17'),
(2030, '', 'محمد هاني علي ابراهيم الشوفه', 0, 49, 19, 709, 39803126, 38389773, '', '', 138, 34, '23توبلي', 'GR9-D', '17'),
(2031, '', 'سلمان عبدالنبي حسن عبدالنبي إبراهيم', 0, 3027, 458, 1205, 39811553, 39022088, '', '', 86, 8, 'مدينة حمد 4', 'GR3-A', '1'),
(2032, '', 'علي عبدالنبي حسن عبدالنبي ابراهيم', 0, 3027, 548, 1205, 39811553, 39022088, '', '', 117, 8, '4 مدينة حمد', 'GR7-E', '1'),
(2033, '', 'محمد عبدالنبي حسن عبدالنبي إبراهيم', 0, 3027, 548, 1205, 39811553, 39022088, '', '', 84, 8, '4 مدينة حمد', 'GR4-D', '1'),
(2034, '', 'سجاد اصغر مهدي احمد', 0, 3052, 3371, 1033, 39815192, 0, '', '', 93, 19, 'المالكية', 'GR1-A', '32'),
(2035, '', 'طه عبدالنبي سلمان الجديد', 0, 387, 58, 361, 39819191, 0, '', '', 108, 27, 'البلاد القديم', 'GR9-B', '5'),
(2036, '', 'حوراء علي حسن الماجد', 0, 1699, 623, 1206, 39820082, 39988992, '', '', 130, 29, 'مدينه حمد 5', 'GR4-C', '24'),
(2037, '', 'ساره علي حسن الماجد', 0, 1699, 623, 1206, 39820082, 39988992, '', '', 96, 29, 'مدينة حمد 5', 'GR10-A', '24'),
(2038, '', 'حنان صالح سعيد علي يوسف', 0, 793, 1312, 1213, 39822913, 66366991, '', '', 133, 35, '19مدينة حمد', 'GR9-A', '29'),
(2039, '', 'محمد احمد حسين ناصر', 0, 2189, 5170, 551, 39828148, 33006591, '', '', 125, 22, 'القرية', 'GR11-B', '21'),
(2040, '', 'حسن عبدالامير عبدالنبي الساري', 0, 222, 3709, 537, 39834438, 33854458, '', '', 84, 5, 'بني جمره', 'GR4-D', '15'),
(2041, '', 'فاطمة يوسف عبدالرسول حسن', 0, 635, 711, 807, 39836099, 39256986, '', '', 81, 36, 'كرباباد', 'GR4-A', '6'),
(2042, '', 'دانة هيثم عبدالله مكي احمد الخير', 0, 3084, 806, 808, 39839709, 33008030, '', '', 112, 34, 'مدينة عيسى', 'GR1-G', '17'),
(2043, '', 'فاطمة هيثم عبدالله مكي احمد الخير', 0, 3084, 983, 709, 39839709, 33008030, '', '', 135, 34, 'توبلي', 'GR10-B', '17'),
(2044, '', 'لجين هيثم عبدالله مكي احمد الخير', 0, 3084, 806, 808, 39839709, 33008030, '', '', 98, 34, '23مدينة عيسى', 'GR6-E', '17'),
(2045, '', 'قاسم عباس ابراهيم عبدالرسول العفو', 0, 161, 7308, 473, 39841416, 39889020, '', '', 108, 11, 'ابوصيبع', 'GR9-B', '7'),
(2046, '', 'هادي عباس ابراهيم العفو', 0, 161, 7308, 473, 39841416, 39889020, '', '', 116, 11, 'ابو صيبع', 'GR6-F', '7'),
(2047, '', 'علي حسن علي نعمه', 0, 72, 1602, 1216, 39848459, 32227827, '', '', 126, 10, 'مدينة  حمد 21', 'GR6-D', '26'),
(2048, '', 'ليلى عبدالله عيسى سعد', 0, 993, 1532, 815, 39848485, 39433414, '', '', 113, 18, 'مدينة عيسى', 'GR12-C', '8'),
(2049, '', 'علي عبدالله عيسى سعد سلطان', 0, 993, 1532, 815, 39848485, 39624429, '', '', 114, 18, 'مدينة عيسى', 'GR2-D', '8'),
(2050, '', 'لينا عبدالله عيسى سعد', 0, 993, 1532, 815, 39848485, 39624429, '', '', 89, 18, 'مدينة عيسى', 'GR3-D', '8'),
(2051, '', 'سيدهاشم سيد حسن علوي ابراهيم', 0, 3002, 3475, 1034, 39848844, 33522567, '', '', 116, 28, 'المالكية', 'GR6-F', '18'),
(2052, '', 'مريم محمد علي احمد بركات', 0, 704, 1421, 414, 39850344, 33455797, '', '', 94, 26, 'الديه', 'GR7-A', '9'),
(2053, '', 'علي ابراهيم عاشور حسن', 0, 301, 604, 1206, 39858799, 36776625, '', '', 108, 8, '3مدينة حمد', 'GR9-B', '1'),
(2054, '', 'مريم جاسم محمد علي', 0, 836, 0, 742, 39873440, 33240542, '', '', 130, 12, 'عالي', 'GR4-C', '19'),
(2055, '', 'حسين عبدالله رضي علي', 0, 2351, 341, 603, 39875449, 39155459, '', '', 137, 37, 'سترة', 'GR12-B', '10'),
(2056, '', 'رضا عبدالله رضي علي', 0, 2351, 341, 603, 39875449, 39155459, '', '', 126, 37, 'سترة', 'GR6-D', '10'),
(2057, '', 'نور نبيل حسن علي خليفة', 0, 942, 914, 1209, 39875988, 33118644, '', '', 132, 29, '7مدينة حمد', 'GR11-C', '24'),
(2058, '', 'سارة هاني جعفر فردان شعيب', 0, 516, 2417, 524, 39877377, 39092738, '', '', 132, 30, 'باربار', 'GR11-C', '16'),
(2059, '', 'احمد عدنان ثابت', 0, 1583, 1952, 419, 39877799, 0, '', '', 110, 4, 'جدحفص', 'GR3-B', '2');
INSERT INTO `student` (`id`, `name_english`, `name_arabic`, `flat_no`, `house_no`, `road_no`, `block_no`, `father_mobile`, `mother_mobile`, `father_email`, `mother_email`, `class_id`, `bus_id`, `city_name`, `class_name`, `bus_no`) VALUES
(2060, '', 'زهراء علي ميرزا عبدالله', 0, 1326, 2224, 522, 39880003, 33480003, '', '', 97, 30, 'باربار', 'GR1-C', '16'),
(2061, '', 'مهدي علي ميرزا عبدالله', 0, 1326, 2224, 522, 39880003, 33480003, '', '', 116, 30, 'باربار', 'GR6-F', '16'),
(2062, '', 'قاسم عبدالرضا عبدالحسين ناصر', 0, 1203, 2136, 721, 39881216, 34588708, '', '', 126, 14, 'جدعلي', 'GR6-D', '23'),
(2063, '', 'بنين حسن ناصر حسن الصايغ', 0, 761, 623, 234, 39883393, 33666821, '', '', 112, 15, 'سماهيج', 'GR1-G', '31'),
(2064, '', 'عبدالله حسن ناصر حسن الصايغ', 0, 761, 623, 234, 39883393, 33666821, '', '', 89, 15, 'سماهيج', 'GR3-D', '31'),
(2065, '', 'يوسف محمد عبدالله عاشور', 0, 850, 2531, 1025, 39894343, 0, '', '', 95, 21, 'كرزكان', 'GR1-F', '25'),
(2066, '', 'علي حسين منصور محمد', 0, 539, 407, 604, 39898066, 0, '', '', 139, 37, 'سترة', 'GR7-B', '10'),
(2067, '', 'سارة احمد محمد', 0, 1948, 3758, 1037, 39898780, 39787578, '', '', 97, 13, 'صدد', 'GR1-C', '22'),
(2068, '', 'زينب علوي سيدسعيد رضي', 0, 524, 2117, 521, 39898804, 33311651, '', '', 110, 22, 'سار', 'GR3-B', '21'),
(2069, '', 'مريم علوي سيدسعيد رضي', 0, 524, 2117, 521, 39898804, 33311651, '', '', 97, 22, 'سار', 'GR1-C', '21'),
(2070, '', 'فاطمة عبدالواحد مسلم احمد', 0, 278, 3710, 537, 39930023, 39232400, '', '', 113, 5, 'بني جمرة', 'GR12-C', '15'),
(2071, '', 'سيد سلمان سيد انور محفوظ', 0, 2066, 3231, 1032, 39930080, 33377102, '', '', 109, 28, 'المالكية', 'GR5-D', '18'),
(2072, '', 'محمود محمد علي حسن مطر', 0, 2831, 1044, 1210, 39946640, 33739209, '', '', 106, 29, '11مدينة حمد', 'GR8-D', '24'),
(2073, '', 'فاطمة عبدالمحسن حسن', 0, 1089, 3743, 1037, 39949974, 33331349, '', '', 102, 13, 'صدد', 'GR7-C', '22'),
(2074, '', 'نداء عبدالشهيد احمد علي', 0, 1426, 8235, 382, 39955306, 39287841, '', '', 124, 6, 'النبيه صالح', 'GR5-C', '20'),
(2075, '', 'محمد هاني علي صالح عباس', 0, 784, 1512, 1215, 39970299, 39056917, '', '', 100, 10, '22 مدينة حمد', 'GR5-F', '26'),
(2076, '', 'محمد عبدالله حسن العريس', 0, 21, 3503, 235, 39979779, 66333488, '', '', 106, 31, 'سماهيج', 'GR8-D', '27'),
(2077, '', 'رقية السيدمصطفى حسين احمد', 0, 1401, 573, 605, 39979922, 39921040, '', '', 154, 24, 'سترة', 'KG2-D', 'الروضة'),
(2078, '', 'فاطمة السيد مصطفى حسين احمد', 0, 1401, 573, 605, 39979922, 39921040, '', '', 81, 6, 'سترة مركوبان', 'GR4-A', '20'),
(2079, '', 'سيد محمد جواد هادي', 0, 1852, 3231, 1032, 39990359, 39960540, '', '', 104, 28, 'المالكية', 'GR5-B', '18'),
(2080, '', 'فجر مدن عباس البنبلي', 0, 1971, 2641, 626, 39991304, 39991305, '', '', 120, 7, 'العكر الغربي', 'GR5-A', '4'),
(2081, '', 'محمد مدن عباس البنبلي', 0, 1971, 2641, 626, 39991304, 39991305, '', '', 86, 7, 'العكر الغربي', 'GR3-A', '4'),
(2082, '', 'زينب علي ميرزا العنيسي', 0, 3074, 1150, 1211, 39991896, 39991895, '', '', 93, 35, 'مدينة حمد 17', 'GR1-A', '29'),
(2083, '', 'سيدمحمد حسن جعفر محمد', 0, 971, 2228, 1022, 39992313, 36061331, '', '', 109, 33, 'دمستان', 'GR5-D', '30'),
(2084, '', 'علي عبدالحميد علي فردان', 0, 408, 216, 602, 39993387, 39867865, '', '', 117, 6, 'سترة', 'GR7-E', '20'),
(2085, '', 'محمد عبدالحميد علي فردان', 0, 408, 216, 602, 39993387, 39867865, '', '', 100, 6, 'سترة', 'GR5-F', '20'),
(2086, '', 'خولة حسين جعفر خاتم', 0, 743, 2624, 1026, 39994041, 39550739, '', '', 91, 21, 'كرزكان', 'GR2-A', '25'),
(2087, '', 'حسين محمود جعفر ربيع', 0, 1906, 1559, 515, 39998821, 39467725, '', '', 92, 5, 'مقابة', 'GR10-C', '15'),
(2088, '', 'محمد عبدالله مكي اسماعيل', 0, 175, 2407, 624, 66303609, 0, '', '', 155, 24, 'العكر الغربي', 'KG2-E', 'الروضة'),
(2089, '', 'حسين حميد علي سلمان شهاب', 0, 1759, 4158, 441, 66331466, 33977888, '', '', 135, 16, 'السهلة الشماليه', 'GR10-B', '12'),
(2090, '', 'علي عبدالشهيد عون علي حسن عتيق', 0, 553, 3320, 633, 66344616, 36337226, '', '', 150, 24, 'معامير', 'KG1-E', 'الروضة'),
(2091, '', 'علي عبدالله حسن العريس', 0, 21, 3503, 245, 66377997, 66333488, '', '', 91, 31, 'سماهيج', 'GR2-A', '27'),
(2092, '', 'جنات محمد عبدالرسول', 0, 2047, 931, 1209, 66383399, 37774180, '', '', 130, 29, '8مدينة حمد', 'GR4-C', '24'),
(2093, '', 'علي اسامة عقيل الدرازي', 0, 1476, 2142, 721, 66606560, 37223379, '', '', 123, 32, 'جدعلي', 'GR11-A', '13'),
(2094, '', 'زينب حسن علي العالي', 0, 380, 3821, 738, 66666693, 33889877, '', '', 123, 17, 'عالي', 'GR11-A', '14'),
(2095, '', 'علي حسن علي العالي', 0, 380, 3821, 738, 66666693, 33889877, '', '', 154, 17, 'عالي', 'KG2-D', '14'),
(2096, '', 'مريم علي احمد يوسف', 0, 2861, 1959, 1019, 66711620, 32018580, '', '', 91, 21, 'دمستان', 'GR2-A', '25');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `name`) VALUES
(1, '2019-2020'),
(2, '2020-2021'),
(3, '2021-2022'),
(4, '2022-2023'),
(5, '2023-2024'),
(6, '2024-2025'),
(7, '2025-2026');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month_payment`
--
ALTER TABLE `month_payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `month_id` (`month_id`,`student_id`,`year_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `year_id` (`year_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_class`
--
ALTER TABLE `school_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `bus_id` (`bus_id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `months`
--
ALTER TABLE `months`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `month_payment`
--
ALTER TABLE `month_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_class`
--
ALTER TABLE `school_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2097;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`);

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `district_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `month_payment`
--
ALTER TABLE `month_payment`
  ADD CONSTRAINT `month_payment_ibfk_1` FOREIGN KEY (`month_id`) REFERENCES `months` (`id`),
  ADD CONSTRAINT `month_payment_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `month_payment_ibfk_3` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `school_class`
--
ALTER TABLE `school_class`
  ADD CONSTRAINT `school_class_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `school_class` (`id`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
