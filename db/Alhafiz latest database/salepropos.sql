-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 11:23 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salepropos`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '11111', 'Sales Account', 1000, 1000, 'this is first account', 1, 1, '2018-12-18 02:58:02', '2019-01-20 09:59:06'),
(3, '21211', 'Sa', NULL, 0, NULL, 0, 1, '2018-12-18 02:58:56', '2019-01-20 09:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'M Jamil', 'AbcBiller.jpg', 'Al Hafiz Cloth', '12345', 'abcbiller@gmail.com', '0915253276', 'Peshawar', 'Peshawar', 'kpk', '25000', 'Pakistan', 1, '2020-11-16 09:56:39', '2020-12-23 04:55:44'),
(2, 'ZIL', 'ZakoorGroupofIndustries.png', 'Zakoor Group of Industries', '111111', 'zakoorigroup@gmail.com', '0915253276', '186 Industrial Estate Jamrud Road, Phase 1 Hayatabad, Peshawar, Khyber Pakhtunkhwa', 'Peshawar', 'KPK', '25000', 'Pakistan', 0, '2020-11-25 20:30:44', '2020-12-23 04:40:09'),
(3, 'Sujja U Din', NULL, 'Qureshi FB', NULL, 'Sujja123@gmail.com', '03331234590', 'Hangu', 'Hangu', NULL, NULL, NULL, 0, '2020-12-22 02:13:47', '2020-12-23 04:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Gul Ahmad', NULL, 1, '2020-11-16 09:59:02', '2020-11-16 09:59:02'),
(2, 'Kamala', 'Kamala.png', 0, '2020-12-04 11:31:34', '2020-12-22 02:06:26'),
(3, 'GN Tex', NULL, 1, '2020-12-21 21:01:50', '2020-12-21 21:01:50'),
(4, 'BABA Fabrics', NULL, 1, '2020-12-21 21:06:03', '2020-12-21 21:06:03'),
(5, 'Kamla Fabrics', NULL, 1, '2020-12-22 02:17:16', '2020-12-22 02:17:16'),
(6, 'Hafiz Fabrics', NULL, 1, '2020-12-22 02:18:04', '2020-12-22 02:18:04'),
(7, 'Uniform', NULL, 1, '2020-12-22 02:18:34', '2020-12-22 02:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Male Cloths', NULL, 1, '2020-11-15 09:01:39', '2020-11-15 09:01:39'),
(2, 'Female Cloths', NULL, 1, '2020-11-15 09:02:49', '2020-11-15 09:02:49'),
(3, 'Waskat', NULL, 1, '2020-11-17 10:27:17', '2020-11-17 10:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Khan', 'khan Cloths', 'khan@abc.com', '03464639776', '1234', 'ff 526, Deans', 'Peshawar', 'kpk', '25000', 'Pakistan', NULL, NULL, 0, '2020-11-16 09:51:38', '2020-12-23 04:53:09'),
(2, 1, 'Sujja U Din', 'Qureshi FB', 'abcbiller@gmail.com', '03123698745', NULL, 'Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 04:53:46', '2020-12-23 04:57:42'),
(3, 1, 'Mudir Khan', NULL, NULL, '03342262596', NULL, 'Ali Market Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 04:56:41', '2020-12-26 19:38:07'),
(4, 1, 'M Arif', NULL, NULL, '03329576986', NULL, 'Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 05:00:44', '2020-12-26 19:38:15'),
(5, 1, 'M rafiq', NULL, NULL, '03337500885', NULL, 'Amay Market Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 05:02:01', '2020-12-26 19:38:42'),
(6, 1, 'Azeem', NULL, NULL, '03331234567', NULL, 'Qureshi Market Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 05:03:18', '2020-12-26 19:38:47'),
(7, 1, 'Shoaib', NULL, NULL, '03311234567', NULL, 'Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 05:04:58', '2020-12-26 19:39:11'),
(8, 1, 'Atta U Rehman', NULL, NULL, '03356767682', NULL, 'Umar Market Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 05:06:18', '2020-12-26 19:38:34'),
(9, 1, 'Molvi Tahir', NULL, NULL, '03061266002', NULL, 'Ateeq Plaza Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 05:07:49', '2020-12-26 19:39:16'),
(10, 1, 'Musarat', NULL, NULL, '03360921170', NULL, 'Umar Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:15:52', '2020-12-26 19:39:22'),
(11, 1, 'Khalid', NULL, NULL, '03109747783', NULL, 'Fazal Shah Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:17:13', '2020-12-26 19:39:27'),
(12, 1, 'Imran', NULL, NULL, '03331236548', NULL, 'Qureshi Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:18:50', '2020-12-26 19:39:33'),
(13, 1, 'Najeeb', NULL, NULL, '03348308036', NULL, 'Qureshi Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:19:32', '2020-12-26 19:39:41'),
(14, 1, 'Shafi U ALLAH', NULL, NULL, '03332569874', NULL, 'Near HQ 1122', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:21:25', '2020-12-26 19:39:46'),
(15, 1, 'Shafiq', NULL, NULL, '03336777557', NULL, 'Saboor Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:22:38', '2020-12-26 19:39:52'),
(16, 1, 'Nabi', NULL, NULL, '03312654863', NULL, 'Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:23:37', '2020-12-26 19:39:57'),
(17, 1, 'Asmat', NULL, NULL, '03329680705', NULL, 'Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:26:06', '2020-12-26 19:40:02'),
(18, 1, 'Akbar & Abid', NULL, NULL, '03332514698', NULL, 'Saeed Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:28:25', '2020-12-26 19:40:07'),
(19, 1, 'Abdul Rasheed', NULL, NULL, '03331232564', NULL, 'Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:29:35', '2020-12-26 19:40:12'),
(20, 1, 'Sujja U Din', NULL, NULL, '03326627827', NULL, 'Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:31:55', '2020-12-26 19:40:19'),
(21, 1, 'Ameen Jan', NULL, NULL, '03331236542', NULL, 'Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:32:33', '2020-12-26 19:40:24'),
(22, 1, 'Hashmat', NULL, NULL, '03333214562', NULL, 'Near Ameen Jan', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:34:04', '2020-12-26 19:40:29'),
(23, 1, 'M Anas', NULL, NULL, '03333321532', NULL, 'Madrassa rad', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:34:52', '2020-12-26 19:40:35'),
(24, 1, 'Usman', NULL, NULL, '03332222556', NULL, 'Madrassa rad', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:35:26', '2020-12-26 19:40:41'),
(25, 1, 'Younas', NULL, NULL, '03332226542', NULL, 'Mula plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:36:14', '2020-12-26 19:40:46'),
(26, 1, 'Khan Bahadar', NULL, NULL, '03332563214', NULL, 'Shahu Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:37:26', '2020-12-26 19:40:51'),
(27, 1, 'Babrak', NULL, NULL, '03333366554', NULL, 'Samana Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:38:11', '2020-12-26 19:40:58'),
(28, 1, 'Molvi Rasheed', NULL, NULL, '03335405929', NULL, 'Madrassa rad', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:38:59', '2020-12-26 19:41:03'),
(29, 1, 'H Habib U ALLAH', NULL, NULL, '03332211332', NULL, 'Madrassa rad', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:39:48', '2020-12-26 19:41:08'),
(30, 1, 'Basheer', NULL, NULL, '03332211665', NULL, 'Madrassa rad', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:40:32', '2020-12-26 19:41:13'),
(31, 1, 'Hafiz Inam', NULL, NULL, '03332221116', NULL, 'Madrassa rad', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:41:09', '2020-12-26 19:41:19'),
(32, 1, 'Fazal Rabi', NULL, NULL, '03339688395', NULL, 'Madrassa rad', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:41:57', '2020-12-26 19:41:24'),
(33, 1, 'Faiz U ALLAH', NULL, NULL, '03333332221', NULL, 'Madrassa rad', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:42:40', '2020-12-26 19:41:32'),
(34, 1, 'Jan Agha', NULL, NULL, '03348871850', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:43:31', '2020-12-26 19:41:36'),
(35, 1, 'Kaftan', NULL, NULL, '03321232564', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:44:18', '2020-12-26 19:41:42'),
(36, 1, 'Ajmal', NULL, NULL, '03112365412', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:44:48', '2020-12-26 19:41:47'),
(37, 1, 'Akbar', NULL, NULL, '03331133666', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:45:33', '2020-12-26 19:41:51'),
(38, 1, 'Tafail', NULL, NULL, '03333214569', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:46:08', '2020-12-26 19:41:56'),
(39, 1, 'Ishfaq', NULL, NULL, '03331236544', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:46:54', '2020-12-26 19:42:01'),
(40, 1, 'Hafiz Farid', NULL, NULL, '03359500575', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:48:07', '2020-12-26 19:42:14'),
(41, 1, 'Asif Nawaz', NULL, NULL, '03322622337', NULL, 'Mula plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:49:27', '2020-12-26 19:42:09'),
(42, 1, 'Akif', NULL, NULL, '03331232456', NULL, 'Mula plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:50:02', '2020-12-26 19:42:19'),
(43, 1, 'Molvi Saeed', NULL, NULL, '03332563210', NULL, 'Mula plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:50:45', '2020-12-26 19:42:23'),
(44, 1, 'Umar Ghani', NULL, NULL, '03215236221', NULL, 'Mula plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:51:21', '2020-12-26 19:42:27'),
(45, 1, 'Mansoor', NULL, NULL, '03210000000', NULL, 'Mula plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:51:57', '2020-12-26 19:42:32'),
(46, 1, 'ASlam', NULL, NULL, '03326523214', NULL, 'Mula plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:52:38', '2020-12-26 19:42:37'),
(47, 1, 'Molvi Shehzad', NULL, NULL, '03451234567', NULL, 'Mula plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:53:26', '2020-12-26 19:42:46'),
(48, 1, 'Yaseen', NULL, NULL, '03441234567', NULL, 'Mula plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:54:00', '2020-12-26 19:42:51'),
(49, 1, 'Zahid', NULL, NULL, '03451223456', NULL, 'Mula plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:54:29', '2020-12-26 19:42:56'),
(50, 1, 'Mamrez', NULL, NULL, '03221234567', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:55:05', '2020-12-26 19:43:00'),
(51, 1, 'Hafiz Manan', NULL, NULL, '03121234567', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:55:56', '2020-12-26 19:43:05'),
(52, 1, 'Nawaz', NULL, NULL, '03221236542', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:56:24', '2020-12-26 19:43:09'),
(53, 1, 'Abdul Khaliq', NULL, NULL, '03332564521', NULL, 'Samana Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:56:59', '2020-12-26 19:43:15'),
(54, 1, 'Haji Haramain', NULL, NULL, '03321252643', NULL, 'Mula plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:57:37', '2020-12-26 19:43:22'),
(55, 1, 'Mustafa', NULL, NULL, '03361236542', NULL, 'Samana Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:58:12', '2020-12-26 19:43:27'),
(56, 1, 'Tayab Sullaiman', NULL, NULL, '03369404458', NULL, 'hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:59:07', '2020-12-26 19:43:32'),
(57, 1, 'Mudasir Javid', NULL, NULL, '03316542311', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 20:59:44', '2020-12-26 19:43:37'),
(58, 1, 'Wisal Ghani', NULL, NULL, '03253652411', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:00:26', '2020-12-26 19:43:41'),
(59, 1, 'Rahmat', NULL, NULL, '03352632145', NULL, 'hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:01:10', '2020-12-26 19:43:46'),
(60, 1, 'Abdul Haseeb', NULL, NULL, '03339678482', NULL, 'Bai Pass', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:02:08', '2020-12-26 19:43:51'),
(61, 1, 'Mushtaq Ahmad', NULL, NULL, '03331753300', NULL, 'Momd Khowaja', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:03:05', '2020-12-26 19:43:56'),
(62, 1, 'M Asif', NULL, NULL, '03317172076', NULL, 'Bagato Chowk', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:03:51', '2020-12-26 19:44:00'),
(63, 1, 'Anwar', NULL, NULL, '03332514365', NULL, 'Bagato', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:04:39', '2020-12-26 19:44:08'),
(64, 1, 'Abdul Hameed', NULL, NULL, '03332569875', NULL, 'Shahoo Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:05:22', '2020-12-26 19:44:12'),
(65, 1, 'Arif', NULL, NULL, '03318062162', NULL, 'Wam Watch Bazar Shahu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:06:38', '2020-12-26 19:44:17'),
(66, 1, 'Zulfiqar', NULL, NULL, '03325459451', NULL, 'Samana Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:07:19', '2020-12-26 19:44:21'),
(67, 1, 'Abu Bakar Sidiq', NULL, NULL, '03332565421', NULL, 'hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:08:29', '2020-12-26 19:44:26'),
(68, 1, 'Zakir U ALLAH', NULL, NULL, '03318224921', NULL, 'Samana Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:09:13', '2020-12-26 19:44:32'),
(69, 1, 'M Ajmal', NULL, NULL, '02223654125', NULL, 'hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:09:44', '2020-12-26 19:45:58'),
(70, 1, 'Shahin U ALLAH', NULL, NULL, '03349023827', NULL, 'Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:10:29', '2020-12-26 19:46:02'),
(71, 1, 'Mahmood', NULL, NULL, '03555256542', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:12:57', '2020-12-26 19:46:07'),
(72, 1, 'Niamat', NULL, NULL, '03225641235', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:13:29', '2020-12-26 19:46:11'),
(73, 1, 'Hashmat', NULL, NULL, '03321458756', NULL, 'Madrassa road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:13:59', '2020-12-26 19:46:15'),
(74, 1, 'Musa', NULL, NULL, '03339893055', NULL, 'Momd Khowaja', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:14:46', '2020-12-26 19:46:20'),
(75, 1, 'Akhtar Munir', NULL, NULL, '03662514254', NULL, 'Madrassa rad', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:15:22', '2020-12-26 19:46:24'),
(76, 1, 'Sohail', NULL, NULL, '03319796858', NULL, 'Momd Khowaja', 'Hangu', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-23 21:16:39', '2020-12-26 19:46:29'),
(77, 3, '101 Mudir Khan', NULL, NULL, '03369736363', NULL, 'Ali Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 19:51:56', '2021-01-09 08:53:43'),
(78, 3, 'M Arif', NULL, NULL, '03329576986', NULL, 'Ali Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 19:53:59', '2020-12-26 19:53:59'),
(79, 3, 'M rafiq', NULL, NULL, '03337500885', NULL, 'Amay Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 19:55:04', '2020-12-26 19:55:04'),
(80, 3, 'Khalid', NULL, NULL, '03109747783', NULL, 'Fazal Shah Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 19:56:01', '2020-12-26 19:56:01'),
(81, 3, 'Azeem', NULL, NULL, '03339670711', NULL, 'Qureshi Market Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 19:57:38', '2020-12-26 19:57:38'),
(82, 3, 'Shoaib', NULL, NULL, '03369797966', NULL, 'Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 19:58:57', '2020-12-26 19:58:57'),
(83, 3, 'Najeeb', NULL, NULL, '03348308036', NULL, 'Qureshi Market Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 19:59:40', '2021-01-01 05:45:20'),
(84, 3, 'Atta U Rehman', NULL, NULL, '03356767682', NULL, 'Umar Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:00:23', '2020-12-26 20:00:23'),
(85, 3, 'Musarat', NULL, NULL, '03360921170', NULL, 'Umar Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:01:55', '2020-12-26 20:01:55'),
(86, 3, 'Molvi Tahir', NULL, NULL, '03061266002', NULL, 'Ateeq Plaza', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:03:10', '2020-12-26 20:03:10'),
(87, 9, 'Imran', NULL, NULL, '03331234567', NULL, 'Qureshi Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:04:17', '2021-01-01 05:22:21'),
(88, 3, 'Nabi', NULL, NULL, '03339881404', NULL, 'Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:06:22', '2020-12-26 20:06:22'),
(89, 3, 'Asmat', NULL, NULL, '03329680705', NULL, 'Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:07:13', '2020-12-26 20:07:13'),
(90, 3, 'Akbar & Abid', NULL, NULL, '03329523529', NULL, 'Saeed Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:08:15', '2020-12-26 20:08:15'),
(91, 3, 'Shafiq', NULL, NULL, '03336777557', NULL, 'Saboor Market', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:09:33', '2020-12-26 20:09:33'),
(92, 3, 'Sujja U Din', NULL, NULL, '03339685626', NULL, 'Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:10:14', '2020-12-26 20:10:14'),
(93, 3, 'Abdul Rasheed', NULL, NULL, '03339653465', NULL, 'Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:10:52', '2021-01-01 05:33:12'),
(94, 3, 'Amin Jan', NULL, NULL, '03339533156', NULL, 'Main Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:14:43', '2020-12-26 20:14:43'),
(95, 3, 'Hashmat', NULL, NULL, '03341234567', NULL, 'Main Bazar Near Amin Jan', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:16:35', '2020-12-26 20:16:35'),
(96, 3, 'Shafi U ALLAH', 'Al Janat Shoping Mall', NULL, '03318249119', NULL, 'Near HQ 1122', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:18:57', '2020-12-26 20:18:57'),
(97, 3, 'Abdul Khaliq', NULL, NULL, '03339687014', NULL, 'Samana Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:20:39', '2020-12-26 20:20:39'),
(98, 3, 'Babrak', NULL, NULL, '03311234567', NULL, 'Samana Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:21:27', '2020-12-26 20:21:27'),
(99, 3, 'Zulfiqar', NULL, NULL, '03325459451', NULL, 'Samana Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:22:36', '2020-12-26 20:22:36'),
(100, 3, 'Mustafa', NULL, NULL, '02221234567', NULL, 'Samana Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:23:30', '2020-12-26 20:23:30'),
(101, 3, 'Zakir U ALLAH', NULL, NULL, '03318224921', NULL, 'Samana Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:24:23', '2020-12-26 20:24:23'),
(102, 3, 'M Anas', NULL, NULL, '02321234567', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:25:17', '2020-12-26 20:25:17'),
(103, 3, 'M Usman', NULL, NULL, '03329625634', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:26:30', '2020-12-26 20:26:30'),
(104, 3, 'Molvi Rasheed', NULL, NULL, '03335405929', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:29:18', '2020-12-26 20:29:18'),
(105, 3, 'Bashir', NULL, NULL, '02131234567', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:30:15', '2020-12-26 20:30:15'),
(106, 3, 'Hafiz Inam', NULL, NULL, '03333400088', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:31:33', '2020-12-26 20:31:33'),
(107, 3, 'Fazal Rabi', NULL, NULL, '03339688395', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:32:18', '2020-12-26 20:32:18'),
(108, 3, 'Jan Agha', NULL, NULL, '03348871850', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:33:09', '2020-12-26 20:33:09'),
(109, 3, 'Faiz U ALLAH', NULL, NULL, '02321234568', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:37:02', '2020-12-26 20:37:02'),
(110, 3, 'Khalid', NULL, NULL, '03330481600', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:38:14', '2020-12-31 18:27:42'),
(111, 3, 'Kaftan', NULL, NULL, '03339676822', NULL, 'Opposite Irfan Plazza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:38:55', '2021-01-01 05:43:40'),
(112, 3, 'Ajmal', NULL, NULL, '01231234567', NULL, 'Irfan Plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:39:46', '2021-01-01 05:52:38'),
(113, 3, 'Akhtar Munir', NULL, NULL, '01231233456', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:40:55', '2020-12-26 20:40:55'),
(114, 3, 'Hafiz Farid', NULL, NULL, '03469255319', NULL, 'Irfan Plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:41:45', '2021-01-01 05:55:41'),
(115, 3, 'Ishfaq', NULL, NULL, '03319594055', NULL, 'Irfan Plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:47:46', '2021-01-01 05:54:58'),
(116, 3, 'Akbar', NULL, NULL, '03211234567', NULL, 'Irfan Plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:48:25', '2021-01-01 05:53:30'),
(117, 3, 'Akif', NULL, NULL, '01321234567', NULL, 'Mula plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:49:08', '2021-01-01 05:57:02'),
(118, 3, 'Mansoor', NULL, NULL, '03231234567', NULL, 'Mula plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:49:54', '2021-01-01 05:58:12'),
(119, 3, 'Asif Nawaz', NULL, NULL, '03322622337', NULL, 'Mula plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:50:37', '2021-01-01 05:56:11'),
(120, 3, 'Haji Haramain', NULL, NULL, '00012345670', NULL, 'Mula plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-26 20:52:43', '2021-01-01 06:02:36'),
(121, 3, 'Aslam', NULL, NULL, '03339678552', NULL, 'Mula plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 18:44:54', '2021-01-01 05:58:54'),
(122, 3, 'Umar Ghani', NULL, NULL, '03348334725', NULL, 'Mula plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 18:45:50', '2021-01-01 05:57:54'),
(123, 3, 'Molvi Saeed', NULL, NULL, '00012365478', NULL, 'Mula plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 18:48:11', '2021-01-01 05:57:28'),
(124, 3, 'Molvi Shehzad', NULL, NULL, '01111234567', NULL, 'Mula plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 18:50:19', '2021-01-01 05:59:18'),
(125, 3, 'Yasin', NULL, NULL, '03329615927', NULL, 'Mula plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 18:51:16', '2021-01-01 05:59:49'),
(126, 3, 'Younas', NULL, NULL, '03360979695', NULL, 'Mula plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 18:57:16', '2021-01-01 05:46:40'),
(127, 3, 'Zahid', NULL, NULL, '03369594034', NULL, 'Mula plaza Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 18:57:55', '2021-01-01 06:00:10'),
(128, 3, 'Hafiz Manan', NULL, NULL, '2220123654', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 18:59:50', '2020-12-28 18:59:50'),
(129, 3, 'Mudasir Javid', NULL, NULL, '33301236542', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:00:43', '2020-12-28 19:00:43'),
(130, 3, 'Wisal Ghani', NULL, NULL, '22210321456', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:01:23', '2020-12-28 19:01:23'),
(131, 3, 'Mamrez', NULL, NULL, '11103214568', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:01:54', '2020-12-28 19:01:54'),
(132, 3, 'Nawaz', NULL, NULL, '03329789683', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:02:47', '2020-12-28 19:02:47'),
(133, 3, 'Mahmood', NULL, NULL, '00022233311', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:03:40', '2020-12-28 19:03:40'),
(134, 3, 'Niamat', NULL, NULL, '33310000000', NULL, 'Madrasa Road', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:04:08', '2020-12-28 19:04:08'),
(135, 3, 'Hashmat', NULL, NULL, '03366668661', NULL, 'hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:04:57', '2020-12-28 19:12:51'),
(136, 3, 'Abu Bakar Sidiq', NULL, NULL, '11102223332', NULL, 'Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:05:40', '2020-12-28 19:05:40'),
(137, 3, 'Taib Sullaiman', NULL, NULL, '03369404458', NULL, 'Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:06:43', '2020-12-28 19:06:43'),
(138, 3, 'Rahmat', NULL, NULL, '11113214567', NULL, 'hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:10:31', '2020-12-28 19:10:31'),
(139, 3, 'Shahin U ALLAH', NULL, NULL, '03349023827', NULL, 'Hangu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:14:26', '2020-12-28 19:14:26'),
(140, 3, 'Abdul Haseeb', NULL, NULL, '03339678482', NULL, 'By Pass', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:15:19', '2020-12-28 19:15:19'),
(141, 3, 'M Asif', NULL, NULL, '03359611363', NULL, 'Bagato Chowk', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:16:12', '2020-12-28 19:16:12'),
(142, 3, 'Anwar', NULL, NULL, '33320123654', NULL, 'Bagato', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:16:55', '2020-12-28 19:16:55'),
(143, 3, 'Haji Abdul Hameed', NULL, NULL, '03069276852', NULL, 'Shahu Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:18:04', '2020-12-28 19:18:04'),
(144, 3, 'Abdul Wadood', NULL, NULL, '03077173806', NULL, 'Shahu Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:19:02', '2020-12-28 19:19:02'),
(145, 3, 'M Arif', NULL, NULL, '03318062162', NULL, 'Wam Watch Bazar Shahu', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:19:46', '2020-12-28 19:19:46'),
(146, 3, 'Khan Bahadar', NULL, NULL, '03052858222', NULL, 'Shahu Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:20:39', '2020-12-28 19:20:39'),
(147, 3, 'Ajmal', NULL, NULL, '01236541021', NULL, 'Shahu Bazar', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:21:19', '2020-12-28 19:21:19'),
(148, 3, 'Musa', NULL, NULL, '03339893055', NULL, 'Muhammad Khowaja', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:22:12', '2020-12-28 19:22:12'),
(149, 3, 'Sohail', NULL, NULL, '03319796858', NULL, 'Muhammad Khowaja', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:22:46', '2020-12-28 19:22:46'),
(150, 3, 'Mushtaq Ahmad', NULL, NULL, '03331753300', NULL, 'Muhammad Khowaja', 'Hangu', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 19:23:24', '2020-12-28 19:23:24'),
(151, 3, 'Jalil', NULL, NULL, '00011122233', NULL, '3 Star Plaza', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:19:52', '2020-12-30 19:15:27'),
(152, 3, 'Azeem', NULL, NULL, '33300022211', NULL, '3 Star Plaza', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:20:24', '2020-12-30 19:16:14'),
(153, 3, 'Haji Zareen', NULL, NULL, '33300011122', NULL, '3 Star Plaza', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:21:09', '2020-12-30 19:16:33'),
(154, 3, 'Zakriya', NULL, NULL, '03348878324', NULL, 'Kacha Paka', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:22:27', '2021-01-01 06:58:10'),
(155, 3, 'Naqeeb', NULL, NULL, '11100022235', NULL, 'Kacha Paka', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:23:17', '2020-12-30 19:17:21'),
(156, 3, 'Nabi', NULL, NULL, '03348030538', NULL, 'Thal Road', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:24:01', '2020-12-30 19:17:46'),
(157, 3, 'Amin Ul Haq', NULL, NULL, '44400011123', NULL, 'Thal Road', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:24:32', '2020-12-30 19:18:24'),
(158, 3, 'AbdULLAH', 'AL Jawad Garments', NULL, '01236521456', NULL, 'Thal Road', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:26:32', '2020-12-30 19:19:48'),
(159, 3, 'Gulzar', NULL, NULL, '11144455522', NULL, 'Akhoon Plaza', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:29:37', '2020-12-30 19:20:13'),
(160, 3, 'Janat Wali', NULL, NULL, '00055544412', NULL, 'Akhoon Plaza', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:30:06', '2020-12-30 19:20:38'),
(161, 3, 'Asim', NULL, NULL, '03338547229', NULL, 'Akhoon Plaza', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:30:40', '2020-12-30 19:21:05'),
(162, 3, 'Molvi Inam-U-ALLAH', NULL, NULL, '11122233365', NULL, 'Akhoon Plaza', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:31:29', '2020-12-30 19:21:38'),
(163, 3, 'Yousaf', NULL, NULL, '00014203215', NULL, 'Akhoon Plaza', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-28 22:31:55', '2020-12-30 19:21:56'),
(164, 3, 'Rizwan', NULL, NULL, '33321032151', NULL, 'Kahi Road', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 01:14:26', '2020-12-30 19:22:17'),
(165, 3, 'Molvi Abdul Jabar', NULL, NULL, '03045656099', NULL, 'Kahi Road', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 01:15:21', '2020-12-30 19:22:36'),
(166, 9, 'Zeeshan', NULL, NULL, '03329547986', NULL, 'Kacha Paka', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 01:16:24', '2021-01-01 07:00:27'),
(167, 3, 'Hafiz Gul Saeed', NULL, NULL, '33321200032', NULL, 'Thal Road', 'Kacha Paka', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 02:09:07', '2020-12-30 19:23:32'),
(168, 3, 'Abdul Basit', NULL, NULL, '03330925477', NULL, 'Kahi Bazar', 'Kahi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 02:11:53', '2020-12-30 19:23:57'),
(169, 3, 'Azmat', NULL, NULL, '03359687280', NULL, 'Kahi Bazar', 'Kahi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 02:13:44', '2020-12-30 19:24:17'),
(170, 3, 'Ghani Rehman', NULL, NULL, '02132510254', NULL, 'Kahi Bazar', 'Kahi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 02:14:16', '2021-01-01 07:03:31'),
(171, 3, 'Aftab', NULL, NULL, '03329591894', NULL, 'Kahi Bazar', 'Kahi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 02:15:02', '2020-12-30 19:24:54'),
(172, 3, 'Shoaib', NULL, NULL, '01201230142', NULL, 'Kahi Bazar', 'Kahi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 02:15:32', '2020-12-30 19:25:11'),
(173, 3, 'Waheed Gull', NULL, NULL, '03339671225', NULL, 'Zargari Bazar', 'Zargari', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 02:16:40', '2020-12-30 19:25:42'),
(174, 3, 'Hamid-U-ALLAH', NULL, NULL, '21302101230', NULL, 'Shaokat Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:32:04', '2020-12-30 19:26:03'),
(175, 3, 'Abdul Karim', NULL, NULL, '03009172629', NULL, 'Shaokat Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:33:12', '2020-12-30 19:26:24'),
(176, 3, 'Abdul Rauf', NULL, NULL, '10230124510', NULL, 'Shaokat Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:33:47', '2020-12-30 19:26:44'),
(177, 3, 'BISMILLAH Gull', NULL, NULL, '01201230152', NULL, 'Shaokat Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:34:44', '2020-12-30 19:27:56'),
(178, 3, 'Adil Badshah', NULL, NULL, '01301201201', NULL, 'Bangash Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:36:31', '2020-12-30 19:28:14'),
(179, 3, 'Saeed Wali', NULL, NULL, '03000511531', NULL, 'Bangash Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:37:20', '2020-12-30 19:28:40'),
(180, 3, 'Mukhtiar', NULL, NULL, '01203254120', NULL, 'Bangash Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:37:51', '2020-12-30 19:29:01'),
(181, 3, 'Ijaz Ahmad', NULL, NULL, '03009153981', NULL, 'Bangash Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:38:38', '2020-12-30 19:29:22'),
(182, 3, 'Nasir-U-Din', NULL, NULL, '01201365487', NULL, 'Qomi Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:40:17', '2020-12-30 19:29:40'),
(183, 3, 'Shoaib', NULL, NULL, '03078292658', NULL, 'Qomi Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:41:11', '2020-12-30 19:30:04'),
(184, 3, 'Noor-Ul-Haq', NULL, NULL, '01203201542', NULL, 'Qomi Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:42:24', '2020-12-30 19:30:21'),
(185, 3, 'Jehanzeb', NULL, NULL, '10101235644', NULL, 'Qomi Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:43:06', '2020-12-30 19:30:42'),
(186, 3, 'Khalid', NULL, NULL, '012547895', NULL, 'Qomi Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:43:36', '2020-12-30 19:27:24'),
(187, 3, 'Momin', NULL, NULL, '01256321014', NULL, 'Qomi Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:43:57', '2020-12-30 19:31:22'),
(188, 3, 'Nouman', NULL, NULL, '03009165969', NULL, 'ZautALLAH Khan Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:45:13', '2020-12-30 19:31:45'),
(189, 3, 'Umar Sadiq', NULL, NULL, '03013315985', NULL, 'ZautALLAH Khan Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:45:54', '2020-12-30 19:32:11'),
(190, 9, 'Tariq & Waqif', NULL, NULL, '01259874512', NULL, 'ZautALLAH Khan Market', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:46:20', '2021-01-01 07:13:12'),
(191, 3, 'Riaz-U-Din', NULL, NULL, '03028002167', NULL, 'Doaba', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 22:47:02', '2021-01-01 07:09:12'),
(192, 9, 'Abas', NULL, NULL, '03038556564', NULL, 'Naryab', 'Naryab', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 23:56:55', '2021-01-01 07:08:35'),
(193, 3, 'Luqman', NULL, NULL, '03028012321', NULL, 'Jhandi Stop', 'Jhandi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-29 23:58:23', '2020-12-30 19:33:33'),
(194, 3, 'RAZA-U-ALLAH', NULL, NULL, '03018985813', NULL, 'Adil Shah Market', 'Thall', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:00:04', '2020-12-30 19:33:53'),
(195, 3, 'Noor Haleem', NULL, NULL, '03018328073', NULL, 'Adil Shah Market', 'Thall', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:01:05', '2020-12-30 19:34:13'),
(196, 3, 'Irshad', NULL, NULL, '03459869538', NULL, 'Adil Shah Market', 'Thall', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:02:15', '2020-12-30 19:34:37'),
(197, 3, 'Molvi Khalid', NULL, NULL, '03005661983', NULL, 'Opposite Adil Shah Market', 'Thall', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:04:17', '2020-12-30 19:35:33'),
(198, 3, 'Farid', NULL, NULL, '01235469874', NULL, 'Street opposite Police Line', 'Thall', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:05:02', '2020-12-30 19:36:02'),
(199, 3, 'Faisal', NULL, NULL, '12542102321', NULL, 'Street opposite Police Line', 'Thall', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:05:31', '2020-12-30 19:36:27'),
(200, 3, 'Khial Muhammad', NULL, NULL, '01452103214', NULL, 'Ghiljo Bazar', 'Ghiljo', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:31:04', '2020-12-30 19:36:51'),
(201, 3, 'RabNawaz & Irfan', NULL, NULL, '03369390644', NULL, 'Ghiljo Bazar', 'Ghiljo', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:32:12', '2020-12-30 19:37:16'),
(202, 3, 'Mirza Khan', NULL, NULL, '10102036548', NULL, 'Ghiljo Bazar', 'Ghiljo', NULL, NULL, NULL, 0, NULL, 1, '2020-12-30 00:32:44', '2020-12-30 19:37:40'),
(203, 3, 'Amin Badshah', NULL, NULL, '03035760792', NULL, 'Ghiljo Bazar', 'Ghiljo', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:33:21', '2020-12-30 19:38:50'),
(204, 3, 'Rehman Badshah', NULL, NULL, '03069559504', NULL, 'Ghiljo Bazar', 'Ghiljo', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:34:11', '2020-12-30 19:39:10'),
(205, 6, 'Minaz Gull', NULL, NULL, '03377519715', NULL, 'Dabori Bazar', 'Dabori', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-30 00:35:10', '2020-12-30 00:36:19'),
(206, 3, 'M Yousaf', NULL, NULL, '01478965412', NULL, 'Ghiljo Bazar', 'Ghiljo', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:37:05', '2020-12-30 19:39:36'),
(207, 3, 'Minaz Gull', NULL, NULL, '03377519715', NULL, 'Dabori Bazar', 'Dabori', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:37:41', '2020-12-30 19:39:55'),
(208, 3, 'Habib Rehman', NULL, NULL, '02365478965', NULL, 'Dabori Bazar', 'Dabori', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:38:15', '2020-12-30 19:40:34'),
(209, 3, 'Ilyas', NULL, NULL, '03009059921', NULL, 'Meshti Mela', 'Meshti', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:39:13', '2020-12-30 19:41:28'),
(210, 3, 'Gultan', NULL, NULL, '03359967218', NULL, 'Meshti Mela', 'Meshti', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:39:52', '2020-12-30 19:41:45'),
(211, 3, 'Shahid', NULL, NULL, '01259654120', NULL, 'Meshti Mela', 'Meshti', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:40:23', '2020-12-30 19:42:02'),
(212, 3, 'Qari Hasham', NULL, NULL, '03039298921', NULL, 'Anjani Bazar', 'Anjani', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:41:15', '2020-12-30 19:42:17'),
(213, 3, 'Haji Muhammad', NULL, NULL, '03000419145', NULL, 'Anjani Bazar', 'Anjani', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:42:15', '2020-12-30 19:42:32'),
(214, 3, 'Tahir', NULL, NULL, '03323434870', NULL, 'Anjani Bazar', 'Anjani', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 00:43:33', '2020-12-30 19:42:45'),
(215, 3, 'Itbar Gull', NULL, NULL, '03029030983', NULL, 'Sada Bazar', 'Sada', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 18:41:00', '2020-12-30 19:43:01'),
(216, 3, 'M Nawab', NULL, NULL, '03015909791', NULL, 'Sada Bazar', 'Sada', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 18:41:35', '2020-12-30 19:43:15'),
(217, 3, 'Ali Badshah', NULL, NULL, '03075604453', NULL, 'Sada Bazar', 'Sada', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 18:42:28', '2020-12-30 19:43:30'),
(218, 3, 'Ashraf', NULL, NULL, '03029059383', NULL, 'Sada Bazar', 'Sada', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 18:43:10', '2020-12-30 19:41:04'),
(219, 3, 'Qari Haneef', NULL, NULL, '03018013542', NULL, 'Sada Bazar', 'Sada', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 18:43:54', '2020-12-30 19:40:51'),
(220, 3, 'Sajid', NULL, NULL, '03339663850', NULL, 'High Way Chowk Board', 'Kohat', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 19:49:51', '2020-12-30 19:49:51'),
(221, 3, 'Hafiz Rahid-U-ALLAH', NULL, NULL, '03329515046', NULL, 'High Way Chowk Board', 'Kohat', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 19:51:07', '2020-12-30 19:51:07'),
(222, 3, 'Khaista Rehman', NULL, NULL, '01230125410', NULL, 'Kohat Bazar', 'Kohat', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 19:51:46', '2020-12-30 19:51:46'),
(223, 3, 'Ikram', NULL, NULL, '03335800223', NULL, 'Kohat Bazar', 'Kohat', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 19:52:27', '2020-12-30 19:52:27'),
(224, 3, 'Asad-U-ALLAH', NULL, NULL, '03339648282', NULL, 'Belotang Bazar', 'Kohat', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 19:53:20', '2020-12-30 19:53:20'),
(225, 8, 'Khan Hassan', NULL, NULL, '03328669557', NULL, 'Shehbaz Plaza', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:27:56', '2020-12-30 21:27:56'),
(226, 8, 'Saifoor', NULL, NULL, '02130654879', NULL, 'Shehbaz Plaza', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:28:30', '2020-12-30 21:28:30'),
(227, 8, 'Haji Major', NULL, NULL, '02147896541', NULL, 'Shehbaz Plaza', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:29:05', '2020-12-30 21:29:05'),
(228, 9, 'Gull Bashar', NULL, NULL, '01478520147', NULL, 'Shehbaz Plaza', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:29:46', '2021-01-01 07:26:09'),
(229, 8, 'MUHAMMAD-U-ALLAH', NULL, NULL, '03219390296', NULL, 'Shehbaz Plaza', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:30:38', '2021-01-01 07:24:32'),
(230, 8, 'HAZRAT-U-ALLAH', NULL, NULL, '03219144037', NULL, 'Shehbaz Plaza', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:32:10', '2020-12-30 21:32:10'),
(231, 8, 'Sohail', NULL, NULL, '03325814267', NULL, 'Bara Bazar', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:32:54', '2020-12-30 21:32:54'),
(232, 8, 'Ishaq', NULL, NULL, '03335995550', NULL, 'Niazi Market', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:34:02', '2020-12-30 21:34:02'),
(233, 8, 'Naeem', NULL, NULL, '03329475919', NULL, 'Nala Kohi', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:34:52', '2020-12-30 21:34:52'),
(234, 8, 'Minhaj-U-Din', NULL, NULL, '03359705873', NULL, 'Kohi Bazar', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:36:10', '2020-12-30 21:36:10'),
(235, 8, 'Haji Sawab', NULL, NULL, '03005929645', NULL, 'QambarKhell Madrasa', 'QambarKhell Madrasa Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:37:46', '2020-12-30 21:39:47'),
(236, 8, 'Abdul Haleem', NULL, NULL, '03078508911', NULL, 'QambarKhell Madrasa', 'QambarKhell Madrasa Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:39:15', '2020-12-30 21:40:07'),
(237, 8, 'Shahid', NULL, NULL, '03015630030', NULL, 'Speen Dhand Madrassa', 'Speen Dhand Madrassa Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:41:13', '2020-12-30 21:41:13'),
(238, 8, 'Azghar', NULL, NULL, '03339335905', NULL, 'Bara', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:42:07', '2020-12-30 21:42:07'),
(239, 8, 'Zabit', NULL, NULL, '03349101103', NULL, 'Bara Khyber Agency', 'Bara Khyber Agency', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:43:04', '2020-12-30 21:43:04'),
(240, 8, 'Haji Khan Wali', NULL, NULL, '03015936010', NULL, 'Landi Kotal Bazar', 'Landi Kotal', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-30 21:43:54', '2020-12-30 21:43:54'),
(241, 8, 'Ansar Khan', NULL, NULL, '01254102312', NULL, 'Orakzai Green Tower Firdos', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 01:03:50', '2020-12-31 02:31:08'),
(242, 8, 'AMANULLAH', NULL, NULL, '03239102550', NULL, 'Orakzai Green Tower Firdos', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 02:30:44', '2020-12-31 02:30:44'),
(243, 9, 'Haji Mushtaq', NULL, NULL, '01236541023', NULL, 'Orakzai Green Tower Firdos', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 02:31:47', '2021-01-01 07:27:37'),
(244, 8, 'Gulab', NULL, NULL, '03355151379', NULL, 'Ashraf Road Near Mobile Plaza', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 02:33:57', '2020-12-31 02:33:57'),
(245, 8, 'Hafiz Javid', NULL, NULL, '03075965626', NULL, 'Arbab Road', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 02:34:59', '2020-12-31 02:34:59'),
(246, 8, 'Daud Khaksaar', NULL, NULL, '03014818187', NULL, 'Dalazak Road', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 02:36:03', '2020-12-31 02:36:36'),
(247, 8, 'Ishrat Gull', NULL, NULL, '03369518243', NULL, 'Dalazak Road', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 02:37:55', '2020-12-31 02:37:55'),
(248, 8, 'Mukaram', NULL, NULL, '03149131510', NULL, 'Chrsada Road khazina Near Sugar Mill', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 02:39:11', '2020-12-31 02:39:11'),
(249, 8, 'Iftikhar Ahmad', NULL, NULL, '03451584238', NULL, 'Sardheri', 'Sardheri', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 02:40:30', '2020-12-31 02:40:30'),
(250, 8, 'Multan', NULL, NULL, '03139928258', NULL, 'Charsada', 'Charsada', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 02:41:19', '2020-12-31 02:41:19'),
(251, 8, 'Haji Mujahid', NULL, NULL, '03459009919', NULL, 'Pirbala Warsak Road', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:26:21', '2020-12-31 04:26:21'),
(252, 8, 'Inayat-U-ALLAH', NULL, NULL, '03359801770', NULL, 'Spirsang Road Shahi Bala', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:27:51', '2020-12-31 04:27:51'),
(253, 8, 'Sadaqat', NULL, NULL, '03469220768', NULL, 'Pirbala Warsak Road', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:29:18', '2020-12-31 04:29:18'),
(254, 8, 'HAFEEZ-U-ALLAH', NULL, NULL, '03089024783', NULL, 'Hari Chand', 'Hari Chand', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:30:29', '2020-12-31 04:30:29'),
(255, 8, 'M Taib', NULL, NULL, '03049336063', NULL, 'Hari Chand', 'Hari Chand', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:31:16', '2020-12-31 04:31:16'),
(256, 8, 'Naeem', NULL, NULL, '03139722373', NULL, 'Duran Pur', 'Duran Pur', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:32:45', '2020-12-31 04:32:45'),
(257, 8, 'Haneef', NULL, NULL, '03012116690', NULL, 'Bajour', 'Bajour', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-31 04:33:38', '2020-12-31 04:39:30'),
(258, 8, 'Khan Muhammad Afridi', NULL, NULL, '03139644479', NULL, 'Afridi', 'Afridi', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-31 04:34:39', '2020-12-31 04:38:37'),
(259, 8, 'Taj Rehman', NULL, NULL, '03330917618', NULL, 'Jangiri', 'Jangiri', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-31 04:35:44', '2020-12-31 04:37:52'),
(260, 8, 'Abdul Samad', NULL, NULL, '03029090300', NULL, 'Pindi', 'Pindi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:40:59', '2020-12-31 04:40:59'),
(261, 8, 'Sher Muhammad', NULL, NULL, '03409852583', NULL, 'Chitral', 'Chitral', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:41:44', '2020-12-31 04:41:44'),
(262, 8, 'Ali Ahmad', NULL, NULL, '03478948295', NULL, 'Sawabi', 'Sawabi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:42:34', '2020-12-31 04:42:34'),
(263, 8, 'Idreas', NULL, NULL, '03348684099', NULL, 'Karak', 'Karak', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:43:22', '2020-12-31 04:43:22'),
(264, 8, 'Younas', 'Adan Cloth', NULL, '03329141565', NULL, 'Karak', 'Karak', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:44:30', '2020-12-31 04:44:30'),
(265, 8, 'Abdul Raziq', NULL, NULL, '03429659577', NULL, 'Matani Near FATA University', 'Matani', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:46:21', '2021-01-01 07:41:39'),
(266, 9, 'Fazal Ghani', NULL, NULL, '03028572498', NULL, 'Bara', 'Bara', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:51:06', '2020-12-31 04:51:06'),
(267, 9, 'Shafi U ALLAH', NULL, NULL, '01230254102', NULL, 'City Cloth Center Firdos', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:52:42', '2020-12-31 04:52:42'),
(268, 9, 'Kabil Khan', NULL, NULL, '03015442494', NULL, 'Tora Orhi Doaba', 'Doaba', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:53:41', '2020-12-31 04:53:41'),
(269, 9, 'Abdul Rehman', NULL, NULL, '02302145124', NULL, 'Faisal Colony Warsak Road', 'warsak Road', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:54:49', '2020-12-31 04:54:49'),
(270, 9, 'Abdul Raziq', NULL, NULL, '01254789548', NULL, 'Manager Orakzai Tower', 'Firdos', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:56:06', '2020-12-31 04:56:06'),
(271, 9, 'NASRULLAH JAN', NULL, NULL, '01203654789', NULL, 'Mammozai', 'Mammozai', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:57:02', '2020-12-31 04:57:02'),
(272, 9, 'Zainul Abidin', NULL, NULL, '03429067058', NULL, 'Peshawar', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:57:51', '2020-12-31 04:57:51'),
(273, 9, 'Haris ishtiaq', NULL, NULL, '03329827164', NULL, 'Karak', 'Karak', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:58:55', '2020-12-31 04:58:55'),
(274, 9, 'Irshad', NULL, NULL, '03214446473', NULL, 'Mera Charsada', 'Charsada', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 04:59:57', '2020-12-31 04:59:57'),
(275, 9, 'Abdul Hameed Mammozai', NULL, NULL, '03362131124', NULL, 'Kohat', 'Kohat', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:01:12', '2020-12-31 05:01:12'),
(276, 9, 'Haji Nazeef', NULL, NULL, '03339007620', NULL, 'Afridi', 'Afridi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:02:24', '2020-12-31 05:02:24'),
(277, 9, 'Saeed Anwar', NULL, NULL, '01236547854', NULL, 'Peshawar', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:03:01', '2020-12-31 05:03:01'),
(278, 9, 'Bilal', NULL, NULL, '03460767607', NULL, 'Peshawar', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:03:41', '2020-12-31 05:03:41'),
(279, 9, 'Jawad', NULL, NULL, '03051997868', NULL, 'Duran Pur', 'Duran Pur', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:04:35', '2020-12-31 05:04:35'),
(280, 9, 'Haneef', NULL, NULL, '03012116690', NULL, 'Bajour', 'Bajour', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:05:15', '2020-12-31 05:05:15'),
(281, 9, 'Siraj-U-Din & Shams-U-Din', NULL, NULL, '01202012458', NULL, 'Peshawar', 'Peshawar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:06:14', '2020-12-31 05:06:14'),
(282, 9, 'Anwar', NULL, NULL, '01256987451', NULL, 'Kahi', 'Kahi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:06:42', '2020-12-31 05:06:42'),
(283, 9, 'Habib Rehman', NULL, NULL, '03339661772', NULL, 'Kohat', 'Kohat', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:07:22', '2021-01-01 07:28:18'),
(284, 9, 'Janat Gull', NULL, NULL, '03348419757', NULL, 'unknown', 'unknown', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:08:39', '2020-12-31 05:08:39'),
(285, 9, 'Fazal Rabi', NULL, NULL, '03159597114', NULL, 'Charsada', 'Charsada', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:09:28', '2020-12-31 05:09:28'),
(286, 9, 'Taj Muhammad', NULL, NULL, '03335360176', NULL, 'Kahi', 'Kahi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:10:08', '2020-12-31 05:10:08'),
(287, 9, 'Abdul Wali', NULL, NULL, '03334108009', NULL, 'Khatako Poll', 'Khatako Poll', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:10:59', '2020-12-31 05:10:59'),
(288, 9, 'Bashir Ahmad', NULL, NULL, '03329937987', NULL, 'Faras Bazar', 'Faras Bazar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:11:46', '2020-12-31 05:11:46'),
(289, 9, 'Hazrat Ali', NULL, NULL, '03339589098', NULL, 'Faras Bazar', 'Faras Bazar', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:12:32', '2020-12-31 05:12:32'),
(290, 9, 'Imran & Kamran', NULL, NULL, '00014569874', NULL, 'Rabi Center', 'Firdos', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:13:18', '2020-12-31 05:13:18'),
(291, 9, 'Taj Rehman', NULL, NULL, '03330917618', NULL, 'Jangiri', 'Jangiri', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:13:57', '2020-12-31 05:13:57'),
(292, 9, 'Khan Muhammad Afridi', NULL, NULL, '03139644479', NULL, 'Afridi', 'Afridi', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-31 05:14:37', '2020-12-31 05:14:37'),
(293, 8, 'Saeed Jamil', NULL, NULL, '03340666444', NULL, 'Abbottabad', 'Abbottabad', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-01 07:17:37', '2021-01-01 07:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Old Customer', '0', 0, '2020-11-16 09:49:37', '2020-12-28 21:54:49'),
(2, 'New', '0', 1, '2020-12-21 21:17:32', '2020-12-21 21:17:32'),
(3, 'Kohat Hangu', '0', 1, '2020-12-26 19:48:04', '2020-12-30 19:14:36'),
(4, 'Kahi Kacha Paka', '0', 0, '2020-12-28 22:17:47', '2020-12-30 19:47:25'),
(5, 'Doaba & Thall', '0', 0, '2020-12-29 22:30:00', '2020-12-30 19:47:43'),
(6, 'Orakzai & Kurram', '0', 0, '2020-12-30 00:27:25', '2020-12-30 19:47:35'),
(7, 'Peshawar', '0', 0, '2020-12-30 21:25:50', '2020-12-30 21:25:59'),
(8, 'Peshawar', '0', 1, '2020-12-30 21:26:15', '2020-12-30 21:26:15'),
(9, 'Dues Recovery', '0', 1, '2020-12-31 04:49:23', '2021-01-01 07:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sale', 1, '2020-11-17 09:20:17', '2020-11-17 09:20:17'),
(2, 'Finance', 1, '2020-11-17 09:20:31', '2020-11-17 09:20:31'),
(3, 'Stock', 1, '2020-11-17 09:20:43', '2020-11-17 09:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `currency`, `staff_access`, `date_format`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
(1, 'Khyber Coded Sale ERP', 'logo.png', 'Rs', 'own', 'd/m/Y', 'blue.css', '2018-07-06 06:13:11', '2020-11-25 20:46:21', 'prefix');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, '10:00am', '6:00pm', '2019-01-02 02:20:08', '2019-01-02 04:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en', '2018-07-07 22:59:17', '2019-12-24 17:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
(91, '2019_11_13_150206_create_product_variants_table', 57),
(92, '2019_11_13_153828_create_variants_table', 57),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
(102, '2020_12_07_153145_add_size_to_product_purchases', 64),
(103, '2020_12_07_153241_add_unit_id_to_product_purchases', 64);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('abubakarehsas14@gmail.com', '$2y$10$6DT3XjV5n6tD7noNgbAy8ui3gKBBtvwskyBguYjoelMJNoFlMLc7S', '2020-11-16 09:52:21'),
('admin@gmail.com', '$2y$10$uiFFNNremT09vIYe1S8o3eJJzrSF4Miy8xirLR5IXPcBE3n1V.j92', '2020-11-16 09:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 01:00:09', '2018-06-03 01:00:09'),
(5, 'products-delete', 'web', '2018-06-03 22:54:22', '2018-06-03 22:54:22'),
(6, 'products-add', 'web', '2018-06-04 00:34:14', '2018-06-04 00:34:14'),
(7, 'products-index', 'web', '2018-06-04 03:34:27', '2018-06-04 03:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 08:03:19', '2018-06-04 08:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 08:12:25', '2018-06-04 08:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(12, 'sales-index', 'web', '2018-06-04 10:49:08', '2018-06-04 10:49:08'),
(13, 'sales-add', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 10:49:53', '2018-06-04 10:49:53'),
(16, 'quotes-index', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(17, 'quotes-add', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(18, 'quotes-edit', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(19, 'quotes-delete', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(20, 'transfers-index', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(21, 'transfers-add', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(22, 'transfers-edit', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(23, 'transfers-delete', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(24, 'returns-index', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(25, 'returns-add', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(26, 'returns-edit', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(27, 'returns-delete', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(28, 'customers-index', 'web', '2018-06-04 23:15:54', '2018-06-04 23:15:54'),
(29, 'customers-add', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(30, 'customers-edit', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(31, 'customers-delete', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(32, 'suppliers-index', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(33, 'suppliers-add', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(36, 'product-report', 'web', '2018-06-24 23:05:33', '2018-06-24 23:05:33'),
(37, 'purchase-report', 'web', '2018-06-24 23:24:56', '2018-06-24 23:24:56'),
(38, 'sale-report', 'web', '2018-06-24 23:33:13', '2018-06-24 23:33:13'),
(39, 'customer-report', 'web', '2018-06-24 23:36:51', '2018-06-24 23:36:51'),
(40, 'due-report', 'web', '2018-06-24 23:39:52', '2018-06-24 23:39:52'),
(41, 'users-index', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(42, 'users-add', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(43, 'users-edit', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(44, 'users-delete', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(45, 'profit-loss', 'web', '2018-07-14 21:50:05', '2018-07-14 21:50:05'),
(46, 'best-seller', 'web', '2018-07-14 22:01:38', '2018-07-14 22:01:38'),
(47, 'daily-sale', 'web', '2018-07-14 22:24:21', '2018-07-14 22:24:21'),
(48, 'monthly-sale', 'web', '2018-07-14 22:30:41', '2018-07-14 22:30:41'),
(49, 'daily-purchase', 'web', '2018-07-14 22:36:46', '2018-07-14 22:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-14 22:48:17', '2018-07-14 22:48:17'),
(51, 'payment-report', 'web', '2018-07-14 23:10:41', '2018-07-14 23:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-14 23:16:55', '2018-07-14 23:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-14 23:33:21', '2018-07-14 23:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 03:00:01', '2018-07-30 03:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 01:07:11', '2018-09-05 01:07:11'),
(59, 'general_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(60, 'mail_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(61, 'pos_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 10:30:23', '2019-01-02 10:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(67, 'account-index', 'web', '2019-01-02 22:06:13', '2019-01-02 22:06:13'),
(68, 'balance-sheet', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(69, 'account-statement', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(70, 'department', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(71, 'attendance', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(72, 'payroll', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(73, 'employees-index', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(74, 'employees-add', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(75, 'employees-edit', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(76, 'employees-delete', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(77, 'user-report', 'web', '2019-01-16 06:48:18', '2019-01-16 06:48:18'),
(78, 'stock_count', 'web', '2019-02-17 10:32:01', '2019-02-17 10:32:01'),
(79, 'adjustment', 'web', '2019-02-17 10:32:02', '2019-02-17 10:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(81, 'create_sms', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(83, 'empty_database', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(84, 'customer_group', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(85, 'unit', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(86, 'tax', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(87, 'gift_card', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(88, 'coupon', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(89, 'holiday', 'web', '2019-10-19 08:57:15', '2019-10-19 08:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 06:00:23', '2019-10-22 06:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 1, 4, 0, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 03:17:04', '2019-02-02 04:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `featured`, `product_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Cloth 1', '30732648', 'standard', 'C128', 1, 1, 1, 1, 1, '4000', '4500', 5, 10, NULL, NULL, NULL, NULL, NULL, 1, '1605604303699104699242_23844944552720473_97433597198853940_n.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2020-11-17 08:42:08', '2020-12-23 04:51:20'),
(2, 'Cloth 2', '39277135', 'standard', 'C128', 1, 1, 1, 1, 1, '3000', '3500', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '160561630035666a0c854f854abd06c9808c436767f18.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2020-11-17 12:01:53', '2020-12-23 04:51:24'),
(3, 'Baba', '100055', 'standard', 'C128', 1, 1, 1, 1, 1, '1000', '1500', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, '1606732997919vlcsnap-2020-06-03-01h05m23s192.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2020-11-30 10:13:33', '2020-12-22 02:15:25'),
(4, 'Abc', '1000526', 'standard', 'C128', 1, 2, 1, 1, 1, '1200', '1500', 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '1606733086127my design.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2020-11-30 10:15:00', '2020-12-22 02:15:18'),
(5, 'First Position', '12565', 'standard', 'C128', 2, 1, 1, 1, 1, '5000', '5500', 0, 5, NULL, NULL, '2020-12-04', NULL, NULL, 1, '1607083634353WhatsApp-Image-2020-08-30-at-8.53.07-PM-1-2.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2020-12-04 11:37:57', '2020-12-23 04:51:06'),
(6, 'First Position', '101', 'standard', 'C128', 5, 1, 3, 3, 3, '154', '160', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 02:34:35', '2020-12-23 19:45:20'),
(7, 'Metro', '102', 'standard', 'C128', 5, 1, 3, 3, 3, '148', '155', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 02:35:55', '2020-12-23 19:48:47'),
(8, 'Jack-n-Jill', '103', 'standard', 'C128', 5, 1, 3, 3, 3, '140', '148', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 02:38:22', '2020-12-23 19:49:27'),
(9, 'Anmol Hera', '104', 'standard', 'C128', 5, 1, 3, 3, 3, '194', '200', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 02:39:36', '2020-12-23 19:50:10'),
(10, 'Rooh Afza', '105', 'standard', 'C128', 5, 1, 3, 3, 3, '220', '235', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 02:41:06', '2020-12-23 19:50:49'),
(11, 'London Express', '106', 'standard', 'C128', 5, 1, 3, 3, 3, '210', '220', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 02:43:31', '2020-12-23 19:51:18'),
(12, 'Al Misri 7300', '107', 'standard', 'C128', 5, 1, 3, 3, 3, '185', '192', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 19:46:43', '2020-12-23 19:51:47'),
(13, 'Al Misri 11000', '108', 'standard', 'C128', 5, 1, 3, 3, 3, '220', '230', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 19:47:52', '2020-12-23 19:52:23'),
(14, 'Al Misri 4000', '109', 'standard', 'C128', 5, 1, 3, 3, 3, '192', '200', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 19:49:28', '2020-12-23 19:53:05'),
(15, 'Al Misri 11000 VIP', '110', 'standard', 'C128', 5, 1, 3, 3, 3, '245', '255', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 19:53:06', '2021-01-05 14:54:33'),
(16, 'Shabir Gold', '111', 'standard', 'C128', 5, 1, 3, 3, 3, '180', '190', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 19:54:58', '2020-12-23 19:54:34'),
(17, 'Blue Berry', '112', 'standard', 'C128', 5, 1, 3, 3, 3, '305', '320', 0, 150, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 19:55:44', '2020-12-23 19:55:00'),
(18, 'Toyobo', '113', 'standard', 'C128', 5, 1, 3, 3, 3, '190', '200', 0, 50, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 19:56:46', '2020-12-23 19:55:36'),
(19, 'Shabir Sargent', '131', 'standard', 'C128', 6, 1, 3, 3, 3, '2', '185', 1000, 182, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2020-12-22 19:58:41', '2020-12-23 02:24:21'),
(20, 'Grace Passo', '202', 'standard', 'C128', 6, 1, 3, 3, 3, '185', '190', 1250, 188, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:15:29', '2021-01-05 08:52:44'),
(21, 'Shabir Sargent', '201', 'standard', 'C128', 6, 1, 3, 3, 3, '180', '185', 0, 200, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:16:48', '2021-01-05 08:52:24'),
(22, 'Grace Paris', '203', 'standard', 'C128', 6, 1, 3, 3, 3, '215', '230', 4300, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:19:13', '2021-01-05 08:52:59'),
(23, 'Grace Paris Dark', '204', 'standard', 'C128', 6, 1, 3, 3, 3, '275', '285', 800, 150, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:20:13', '2021-01-05 08:53:14'),
(24, 'Prado', '205', 'standard', 'C128', 6, 1, 3, 3, 3, '145', '150', 840, 200, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:21:48', '2021-01-05 08:53:31'),
(25, 'Online', '206', 'standard', 'C128', 6, 1, 3, 3, 3, '170', '180', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:23:45', '2021-01-05 08:53:49'),
(26, 'Online Dark', '207', 'standard', 'C128', 6, 1, 3, 3, 3, '180', '190', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:25:11', '2021-01-05 08:54:06'),
(27, 'Itallian Wool', '208', 'standard', 'C128', 6, 1, 3, 3, 3, '290', '300', 0, 50, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:26:36', '2021-01-05 08:54:20'),
(28, 'Grace Marjan', '209', 'standard', 'C128', 6, 1, 3, 3, 3, '225', '235', 0, 50, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:27:41', '2021-01-05 08:54:34'),
(29, 'Sigma', '210', 'standard', 'C128', 6, 1, 3, 3, 3, '195', '205', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:28:36', '2021-01-05 08:54:53'),
(30, 'Black Berry', '211', 'standard', 'C128', 6, 1, 3, 3, 3, '290', '300', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:29:35', '2021-01-05 08:55:23'),
(31, 'Bonanza', '212', 'standard', 'C128', 6, 1, 3, 3, 3, '170', '175', 800, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:33:54', '2021-01-05 08:55:39'),
(32, 'Sareena Star', '213', 'standard', 'C128', 6, 1, 3, 3, 3, '205', '220', 0, 200, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:35:10', '2021-01-05 08:56:01'),
(33, 'Black Tiger', '214', 'standard', 'C128', 6, 1, 3, 3, 3, '210', '220', 400, 200, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:36:00', '2021-01-05 08:56:18'),
(34, 'Awal Star', '215', 'standard', 'C128', 6, 1, 3, 3, 3, '310', '320', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:36:45', '2021-01-05 08:56:38'),
(35, 'Ajwa', '216', 'standard', 'C128', 6, 1, 3, 3, 3, '235', '250', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:38:08', '2021-01-05 08:56:56'),
(36, 'Askar', '217', 'standard', 'C128', 6, 1, 3, 3, 3, '170', '180', 0, 100, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:38:48', '2021-01-05 08:57:10'),
(37, 'Musawair', '218', 'standard', 'C128', 6, 1, 3, 3, 3, '220', '235', 0, 150, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:39:42', '2021-01-05 08:57:24'),
(38, 'Black Barry', '301', 'standard', 'C128', 4, 1, 3, 3, 3, '190', '200', 0, 50, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:40:59', '2021-01-05 14:52:32'),
(39, 'Rose King', '302', 'standard', 'C128', 4, 1, 3, 3, 3, '190', '200', 0, 200, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:45:19', '2021-01-05 14:52:45'),
(40, 'Uniform', '351', 'standard', 'C128', 7, 1, 3, 3, 3, '105', '110', 0, 200, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:46:18', '2021-01-05 14:51:59'),
(41, 'Uniform Dark', '352', 'standard', 'C128', 7, 1, 3, 3, 3, '115', '120', 0, 200, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2020-12-22 20:46:53', '2021-01-05 14:51:42'),
(42, 'Wool Flight', '401', 'standard', 'C128', 3, 1, 3, 3, 3, '372', '395', 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-01-06 14:47:28', '2021-01-06 14:48:42'),
(43, 'First Wool', '402', 'standard', 'C128', 3, 1, 3, 3, 3, '372', '395', 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:48:25', '2021-01-06 14:48:25'),
(44, 'Flash Wool', '403', 'standard', 'C128', 3, 1, 3, 3, 3, '372', '395', 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:49:41', '2021-01-06 14:49:41'),
(45, 'Wool Daimond', '404', 'standard', 'C128', 3, 1, 3, 3, 3, '348', '370', 0, 0, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:50:38', '2021-01-06 14:50:38'),
(46, 'Istanbool Wool', '405', 'standard', 'C128', 3, 1, 3, 3, 3, '368', '390', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:51:33', '2021-01-06 14:51:33'),
(47, 'Wool Angel', '406', 'standard', 'C128', 3, 1, 3, 3, 3, '364', '385', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:52:28', '2021-01-06 14:52:28'),
(48, 'Wool Team', '407', 'standard', 'C128', 3, 1, 3, 3, 3, '308', '330', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:53:29', '2021-01-06 14:53:29'),
(49, 'Wool Icon', '408', 'standard', 'C128', 3, 1, 3, 3, 3, '364', '385', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:54:08', '2021-01-06 14:54:08'),
(50, 'Open Wool', '409', 'standard', 'C128', 3, 1, 3, 3, 3, '372', '395', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:54:41', '2021-01-06 14:54:41'),
(51, 'Barcelona Wool', '410', 'standard', 'C128', 3, 1, 3, 3, 3, '348', '370', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:55:19', '2021-01-06 14:55:19'),
(52, 'Paris Gold', '411', 'standard', 'C128', 3, 1, 3, 3, 3, '288', '310', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:56:34', '2021-01-06 14:56:34'),
(53, 'Green Home', '412', 'standard', 'C128', 3, 1, 3, 3, 3, '308', '330', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:57:15', '2021-01-06 14:57:15'),
(54, 'Sun Flower', '413', 'standard', 'C128', 3, 1, 3, 3, 3, '292', '315', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 14:57:58', '2021-01-06 14:57:58'),
(55, 'Deluxe World', '414', 'standard', 'C128', 3, 1, 3, 3, 3, '296', '320', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 15:01:13', '2021-01-06 15:01:13'),
(56, 'Smart Life', '415', 'standard', 'C128', 3, 1, 3, 3, 3, '292', '315', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 15:01:57', '2021-01-06 15:01:57'),
(57, 'Red Apple', '416', 'standard', 'C128', 3, 1, 3, 3, 3, '304', '325', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 15:02:46', '2021-01-06 15:02:46'),
(58, 'Big Profile', '417', 'standard', 'C128', 3, 1, 3, 3, 3, '308', '320', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 15:03:33', '2021-01-06 15:03:33'),
(59, 'Cash & Carry', '418', 'standard', 'C128', 3, 1, 3, 3, 3, '286', '310', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 15:04:14', '2021-01-06 15:04:14'),
(60, 'Super Sky', '419', 'standard', 'C128', 3, 1, 3, 3, 3, '312', '335', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 15:04:55', '2021-01-06 15:04:55'),
(61, 'Sweet Dish', '420', 'standard', 'C128', 3, 1, 3, 3, 3, '372', '395', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 15:05:30', '2021-01-06 15:05:30'),
(62, 'Gold Flex', '421', 'standard', 'C128', 3, 1, 3, 3, 3, '312', '335', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 15:06:05', '2021-01-06 15:06:05'),
(63, 'Fresh Life', '422', 'standard', 'C128', 3, 1, 3, 3, 3, '292', '315', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 15:06:45', '2021-01-06 15:06:45'),
(64, 'Link Road', '423', 'standard', 'C128', 3, 1, 3, 3, 3, '312', '335', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-01-06 15:07:18', '2021-01-06 15:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `size` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_quotation`
--

INSERT INTO `product_quotation` (`id`, `quotation_id`, `product_id`, `variant_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 1, 1, 4500, 0, 0, 0, 4500, '2020-12-08 08:03:08', '2020-12-08 08:03:08'),
(2, 1, 2, NULL, 1, 1, 3500, 0, 0, 0, 3500, '2020-12-08 08:03:08', '2020-12-08 08:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_transfer`
--

INSERT INTO `product_transfer` (`id`, `transfer_id`, `product_id`, `variant_id`, `qty`, `purchase_unit_id`, `net_unit_cost`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, 50, 1, 5000, 0, 0, 250000, '2020-12-04 12:16:53', '2020-12-04 12:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `variant_id`, `warehouse_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, 1, 5, '2020-11-17 08:44:20', '2020-12-23 04:51:20'),
(2, '2', NULL, 1, 0, '2020-11-17 12:03:07', '2020-12-23 04:51:24'),
(3, '5', NULL, 1, -50, '2020-12-04 11:43:03', '2020-12-23 04:51:06'),
(4, '5', NULL, 2, 50, '2020-12-04 12:16:53', '2020-12-04 12:16:53'),
(5, '22', NULL, 1, 4300, '2020-12-22 21:04:19', '2020-12-30 01:17:07'),
(6, '19', NULL, 1, 1000, '2020-12-23 02:24:21', '2020-12-23 02:24:21'),
(7, '24', NULL, 1, 840, '2020-12-23 04:25:19', '2020-12-23 04:25:19'),
(8, '20', NULL, 1, 1250, '2020-12-30 01:15:37', '2020-12-30 01:15:37'),
(9, '23', NULL, 1, 800, '2020-12-30 01:18:07', '2020-12-30 01:18:07'),
(10, '33', NULL, 1, 400, '2020-12-30 01:20:15', '2020-12-30 01:20:15'),
(11, '31', NULL, 1, 800, '2020-12-30 01:22:05', '2020-12-30 01:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `reference_no`, `user_id`, `biller_id`, `supplier_id`, `customer_id`, `warehouse_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `quotation_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'qr-20201208-010308', 1, 1, NULL, 1, 1, 2, 2, 0, 0, 8000, 11, 878.9, 10, 100, 8968.9, 2, 'download-removebg-preview.png', 'iueyf7wf7wyf', '2020-12-08 08:03:08', '2020-12-08 08:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin can access all data...', 'web', 1, '2018-06-01 23:46:44', '2018-06-02 23:13:05'),
(2, 'Owner', 'Owner of shop...', 'web', 1, '2018-10-22 02:38:13', '2018-10-22 02:38:13'),
(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 00:05:27', '2018-06-02 00:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(7, 4),
(8, 1),
(8, 2),
(8, 4),
(9, 1),
(9, 2),
(9, 4),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(12, 4),
(13, 1),
(13, 2),
(13, 4),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(20, 4),
(21, 1),
(21, 2),
(21, 4),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(24, 4),
(25, 1),
(25, 2),
(25, 4),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(28, 4),
(29, 1),
(29, 2),
(29, 4),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(63, 4),
(64, 1),
(64, 2),
(64, 4),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Abc Supplier Name', 'AbcSupplier.png', 'Abc Supplier', '1234', 'abc@suplier.com', '03464639774', 'Peshawar', 'Pakistan', 'Kpk', '25000', 'Pakistan', 0, '2020-11-16 09:54:27', '2020-12-22 20:50:41'),
(2, 'Nouman', NULL, 'Hafiz Fabrics', NULL, 'noumanfb@gmail.com', '03223500001', 'Lahore', 'Lahore', NULL, NULL, NULL, 1, '2020-12-22 02:10:04', '2020-12-22 02:10:04'),
(3, 'Hassan', NULL, 'Kamla Fabrics', NULL, 'kamlafb@gmail.com', '03214272762', 'Lahore', 'Lahore', NULL, NULL, NULL, 1, '2020-12-22 20:52:44', '2020-12-22 20:52:44'),
(4, 'Baba', NULL, 'Baba Fabrics', NULL, 'babafb@gmail.com', '03331236547', 'Lahore', 'Lahore', NULL, NULL, NULL, 1, '2020-12-22 20:54:02', '2020-12-22 20:54:02'),
(5, 'Mushtaq', NULL, 'GN tex', NULL, 'gnfb123@gmail.com', '03123698745', 'Lahore', 'Lahore', NULL, NULL, NULL, 1, '2020-12-22 20:55:10', '2020-12-22 20:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'GST', 11, 1, '2020-11-16 10:00:23', '2020-11-16 10:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `reference_no`, `user_id`, `status`, `from_warehouse_id`, `to_warehouse_id`, `item`, `total_qty`, `total_tax`, `total_cost`, `shipping_cost`, `grand_total`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'tr-20201204-051653', 1, 1, 1, 2, 1, 50, 0, 250000, 100, 250100, NULL, NULL, '2020-12-04 12:16:53', '2020-12-04 12:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1', 'Pack(Than)', NULL, '*', 1, 1, '2020-11-16 09:59:47', '2020-11-17 08:38:30'),
(2, '2', 'Meter', 1, 'Abubakar', 2, 0, '2020-11-17 08:39:25', '2020-12-23 04:21:19'),
(3, '1010', 'Meter', NULL, '*', 1, 1, '2020-11-25 20:22:37', '2020-12-23 04:21:34'),
(4, '1011', 'Kg', NULL, '*', 1, 0, '2020-11-25 20:23:17', '2020-12-21 21:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'P1u3JBey2c7eRD6OBso8nSKqUfsqzxvpXuPLorvvSZVLJOqRu30kqVMDbJVv', '12112', 'Khyber Coded', 1, NULL, NULL, 1, 0, '2018-06-02 03:24:15', '2020-11-16 08:40:17'),
(14, 'abubakar', 'abubakarehsas14@gmail.com', '$2y$10$LVBIMsfybPZ7u0t52vLOmejcmsADlp.ByOXlJ2hr9Bdofx1hkl5t2', NULL, '03464639774', 'Khyber Coded', 1, NULL, 1, 1, 0, '2020-11-16 09:47:26', '2020-11-16 09:47:26'),
(15, 'Rehmath', 'rehmath@gmail.com', '$2y$10$LaMOrpGs7NrSQHoUiSSk..xer0pZX2Rp1IsJp8Gl5.gYbcWQ/6C8W', NULL, '03151572892', 'Alhafiz', 4, 1, 1, 1, 0, '2020-12-23 04:37:25', '2020-12-23 04:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Warehouse 1', '03464639774', 'abu@gmail.com', 'ff 526, Deans Trade Center Peshawar', 1, '2020-11-16 09:39:37', '2020-11-16 09:39:37'),
(2, 'Warehouse 2', '03464639775', 'khan@gmail.com', 'ff 527, Deans Trade Center Peshawar', 1, '2020-11-16 09:40:40', '2020-11-16 09:40:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
