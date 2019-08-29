-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 09:25 AM
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
  `bus_number` int(11) NOT NULL,
  `driver_name_english` varchar(100) NOT NULL,
  `driver_name_arabic` varchar(100) NOT NULL,
  `driver_mobile` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `bus_number`, `driver_name_english`, `driver_name_arabic`, `driver_mobile`) VALUES
(1, 1234, 'Mohammed Ebrahim', 'محمد إبراهيم', 39394616),
(2, 5454, 'Ali Ebrahim', 'علي إبراهيم', 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name_english` varchar(70) NOT NULL,
  `name_arabic` varchar(70) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name_english`, `name_arabic`, `district_id`) VALUES
(2, 'Manama', 'المنامة', 3),
(3, 'Muharraq', 'المحرق', 4);

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
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost/school_bus/public/admin/student30/edit-save/10', 'Update data Ali ahemed at Students', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name_arabic</td><td>2253</td><td>علي احمد</td></tr></tbody></table>', 1, '2019-08-27 04:20:47', NULL);

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
(4, 'Countries', 'Route', 'AdminCountryControllerGetIndex', NULL, 'fa fa-globe', 0, 1, 0, 1, 2, '2019-08-15 07:41:54', NULL),
(5, 'Districts', 'Route', 'AdminDistrictControllerGetIndex', NULL, 'fa fa-globe', 0, 1, 0, 1, 3, '2019-08-15 07:45:37', NULL),
(9, 'Cities', 'Route', 'AdminCity20ControllerGetIndex', 'normal', 'fa fa-globe', 0, 1, 0, 1, 4, '2019-08-15 09:15:36', '2019-08-18 06:48:23'),
(10, 'Schools', 'Route', 'AdminSchoolControllerGetIndex', NULL, 'fa fa-building', 0, 1, 0, 1, 5, '2019-08-15 10:06:17', NULL),
(11, 'Schools Classes', 'Route', 'AdminSchoolClassControllerGetIndex', 'normal', 'fa fa-building', 0, 1, 0, 1, 7, '2019-08-15 10:22:10', '2019-08-18 07:47:22'),
(14, 'Companys', 'Route', 'AdminCompanyControllerGetIndex', NULL, 'fa fa-building-o', 0, 1, 0, 1, 9, '2019-08-18 04:18:20', NULL),
(20, 'Students', 'Route', 'AdminStudent30ControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 1, 8, '2019-08-18 09:43:04', '2019-08-18 10:10:14'),
(23, 'Buses', 'Route', 'AdminBusControllerGetIndex', NULL, 'fa fa-car', 0, 1, 0, 1, 10, '2019-08-19 04:08:57', NULL),
(25, 'Years', 'Route', 'AdminYearsControllerGetIndex', NULL, 'fa fa-search', 0, 1, 0, 1, 6, '2019-08-19 06:22:29', NULL),
(32, 'Students Recipts', 'URL', '/school_bus/public/StudentsRecipts', 'normal', 'fa fa-paperclip', 0, 1, 0, 1, 1, '2019-08-20 08:32:59', '2019-08-20 08:36:48');

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
(48, 23, 1),
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
(66, 32, 2),
(67, 32, 1);

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
(15, 'Countries', 'fa fa-globe', 'country', 'country', 'AdminCountryController', 0, 0, '2019-08-15 07:41:54', NULL, NULL),
(16, 'Districts', 'fa fa-globe', 'district', 'district', 'AdminDistrictController', 0, 0, '2019-08-15 07:45:37', NULL, NULL),
(17, 'Cities', 'fa fa-globe', 'city', 'city', 'AdminCityController', 0, 0, '2019-08-15 08:38:59', NULL, '2019-08-15 08:45:34'),
(18, 'Cities', 'fa fa-globe', 'city', 'city', 'AdminCityController', 0, 0, '2019-08-15 08:45:52', NULL, '2019-08-15 09:04:28'),
(19, 'Cities', 'fa fa-globe', 'city', 'city', 'AdminCityController', 0, 0, '2019-08-15 09:05:24', NULL, '2019-08-15 09:15:15'),
(20, 'Cities', 'fa fa-globe', 'city20', 'city', 'AdminCity20Controller', 0, 0, '2019-08-15 09:15:36', NULL, NULL),
(21, 'Schools', 'fa fa-building', 'school', 'school', 'AdminSchoolController', 0, 0, '2019-08-15 10:06:17', NULL, NULL),
(22, 'Schools Classes', 'fa fa-building', 'school_class', 'school_class', 'AdminSchoolClassController', 0, 0, '2019-08-15 10:22:10', NULL, NULL),
(23, 'Students', 'fa fa-users', 'student', 'student', 'AdminStudentController', 0, 0, '2019-08-15 10:30:10', NULL, '2019-08-18 02:36:13'),
(24, 'Students', 'fa fa-users', 'student24', 'student', 'AdminStudent24Controller', 0, 0, '2019-08-18 02:36:32', NULL, '2019-08-18 09:42:41'),
(25, 'Companys', 'fa fa-building-o', 'company', 'company', 'AdminCompanyController', 0, 0, '2019-08-18 04:18:20', NULL, NULL),
(26, 'Companys Buses', 'fa fa-car', 'company_bus', 'company_bus', 'AdminCompanyBusController', 0, 0, '2019-08-18 04:25:41', NULL, '2019-08-19 04:08:26'),
(27, 'Companys Employees', 'fa fa-users', 'company_employee', 'company_employee', 'AdminCompanyEmployeeController', 0, 0, '2019-08-18 04:32:58', NULL, '2019-08-18 04:38:13'),
(28, 'Companys Employees', 'fa fa-users', 'company_employee28', 'company_employee', 'AdminCompanyEmployee28Controller', 0, 0, '2019-08-18 04:38:29', NULL, '2019-08-19 04:08:30'),
(29, 'Recipts', 'fa fa-globe', 'recipt', 'recipt', 'AdminReciptController', 0, 0, '2019-08-18 04:55:50', NULL, '2019-08-19 04:11:47'),
(30, 'Students', 'fa fa-users', 'student30', 'student', 'AdminStudent30Controller', 0, 0, '2019-08-18 09:43:04', NULL, NULL),
(31, 'Recipt Master Details', 'fa fa-paperclip', 'recipt31', 'recipt', 'AdminRecipt31Controller', 0, 0, '2019-08-18 10:25:38', NULL, '2019-08-18 10:26:57'),
(32, 'Recipts Master Details', 'fa fa-paperclip', 'recipt32', 'recipt', 'AdminRecipt32Controller', 0, 0, '2019-08-19 02:46:24', NULL, '2019-08-19 04:11:53'),
(33, 'Buses', 'fa fa-car', 'bus', 'bus', 'AdminBusController', 0, 0, '2019-08-19 04:08:57', NULL, NULL),
(34, 'Recipts', 'fa fa-paper-plane', 'recipt34', 'recipt', 'AdminRecipt34Controller', 0, 0, '2019-08-19 04:12:20', NULL, NULL),
(35, 'Years', 'fa fa-search', 'years', 'years', 'AdminYearsController', 0, 0, '2019-08-19 06:22:28', NULL, NULL),
(36, 'Payments', 'fa fa-money', 'payment', 'payment', 'AdminPaymentController', 0, 0, '2019-08-19 06:56:25', NULL, NULL);

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
(41, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(42, 1, 1, 1, 1, 1, 2, 22, NULL, NULL),
(43, 1, 1, 1, 1, 1, 2, 30, NULL, NULL),
(44, 1, 1, 1, 1, 1, 1, 35, NULL, NULL),
(45, 1, 1, 1, 1, 1, 1, 36, NULL, NULL);

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
(2, 'Bus Company Owner', 'uploads/1/2019-08/bahrain_flag_512.png', 'mohamedrahim@invopos.com', '$2y$10$MG2p17oLq/TByCN1bnUbQ.KBVrnDzcme0Xs8PAryFeDXu2xyW6HBi', 2, '2019-08-15 07:17:22', '2019-08-18 06:38:41', NULL);

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

--
-- Dumping data for table `month_payment`
--

INSERT INTO `month_payment` (`id`, `month_id`, `student_id`, `year_id`, `month_fees`, `month_recipt_date`) VALUES
(15, 9, 6, 1, '30', '2019-08-26'),
(18, 10, 6, 1, '0', '2019-08-26'),
(30, 11, 6, 1, '0', '2019-08-26'),
(31, 12, 6, 1, '0', '2019-08-26'),
(32, 1, 6, 1, '0', '2019-08-26'),
(33, 2, 6, 1, '0', '2019-08-26'),
(34, 3, 6, 1, '2', '2019-08-26'),
(36, 5, 6, 1, '4', '2019-08-26'),
(37, 6, 6, 1, '3', '2019-08-26'),
(185, 4, 6, 1, '0', '2019-08-26');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `september_fees` varchar(50) NOT NULL,
  `september_recipt_number` varchar(50) NOT NULL,
  `september_recipt_date` varchar(50) NOT NULL,
  `september_payment_status` varchar(50) NOT NULL,
  `octorber_fees` varchar(50) NOT NULL,
  `october_recipt_number` varchar(50) NOT NULL,
  `october_recipt_date` varchar(50) NOT NULL,
  `octorber_payment_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `year_id`, `student_id`, `september_fees`, `september_recipt_number`, `september_recipt_date`, `september_payment_status`, `octorber_fees`, `october_recipt_number`, `october_recipt_date`, `octorber_payment_status`) VALUES
(1, 1, 6, '10', '10', '10', '', '01', '10', '01', '');

-- --------------------------------------------------------

--
-- Table structure for table `recipt`
--

CREATE TABLE `recipt` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `amount_remaining` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipt`
--

INSERT INTO `recipt` (`id`, `student_id`, `bus_id`, `amount_paid`, `amount_remaining`, `date`) VALUES
(3, 6, 1, 10, 15454, '2019-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `name_english` varchar(150) NOT NULL,
  `name_arabic` varchar(150) NOT NULL,
  `telephone` int(15) NOT NULL,
  `mobile` int(15) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `name_english`, `name_arabic`, `telephone`, `mobile`, `city_id`) VALUES
(1, 'Default School', 'Default School', 123456789, 123456789, 2);

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
(1, 'GR4-E', 'GR4-E', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name_english` varchar(100) NOT NULL,
  `name_arabic` varchar(100) NOT NULL,
  `flat_no` int(11) DEFAULT NULL,
  `house_no` int(11) NOT NULL,
  `road_no` int(11) NOT NULL,
  `block_no` int(11) NOT NULL,
  `father_mobile` int(15) NOT NULL,
  `mother_mobile` int(15) NOT NULL,
  `father_email` varchar(70) NOT NULL,
  `mother_email` varchar(70) NOT NULL,
  `class_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name_english`, `name_arabic`, `flat_no`, `house_no`, `road_no`, `block_no`, `father_mobile`, `mother_mobile`, `father_email`, `mother_email`, `class_id`, `bus_id`, `city_id`) VALUES
(6, 'Mohammed Ebrahim', 'محمد إبراهيم', 0, 2443, 2256, 1022, 17601233, 17601233, 'father1@gmail.com', 'mother1@gmail.com', 1, 2, 2),
(10, 'Ali ahemed', 'علي احمد', 12, 5545, 465, 4564, 65455656, 5645556, 'father2@gmail.com', 'mother2@gmail.com', 1, 1, 2);

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
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `year_id` (`year_id`);

--
-- Indexes for table `recipt`
--
ALTER TABLE `recipt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `bus_id` (`bus_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

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
  ADD KEY `city_id` (`city_id`),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recipt`
--
ALTER TABLE `recipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_class`
--
ALTER TABLE `school_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `recipt`
--
ALTER TABLE `recipt`
  ADD CONSTRAINT `recipt_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `recipt_ibfk_2` FOREIGN KEY (`bus_id`) REFERENCES `company_bus` (`id`);

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `school_class`
--
ALTER TABLE `school_class`
  ADD CONSTRAINT `school_class_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school_class` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `school_class` (`id`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
