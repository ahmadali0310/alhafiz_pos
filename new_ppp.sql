-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 09:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_ppp`
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '11111', 'Sales Account', 0, 0, 'This is account for Sale', 0, 1, '2018-12-18 02:58:02', '2021-11-09 00:15:41'),
(3, '21211', 'Payment Collection Account', NULL, 0, 'Ograhi Account', 0, 1, '2018-12-18 02:58:56', '2021-10-20 22:33:02'),
(4, '123456789', 'Online Account', 0, 0, 'This is Bank Online Account.', 0, 1, '2021-09-28 21:36:35', '2021-10-23 12:42:16'),
(5, '12345678910', 'For Testing Account', 0, 0, 'Some note here', 0, 0, '2021-10-20 22:32:55', '2021-10-23 12:41:20'),
(6, '123589', 'Test 1', 0, 0, '', 1, 1, '2021-11-09 00:15:32', '2021-11-09 00:15:41');

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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `employee_id`, `user_id`, `checkin`, `checkout`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, '2021-10-07', 1, 18, '9:45am', '6:00pm', 1, 'awrf3wf', '2021-10-07 18:11:22', '2021-10-07 18:11:22');

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
(1, 'الحافظ کلاۃ', 'logo.png', 'الحافظ کلاۃ', '12345', 'info@alhafizcloth.com', '0912211155', 'Peshawar', 'Peshawar', 'kpk', '25000', 'Pakistan', 1, '2020-11-16 09:56:39', '2021-06-10 19:43:15');

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
(1, 'حافظ فیبرکس', NULL, 1, '2021-06-16 00:00:11', '2021-06-16 23:20:58'),
(2, 'کاملہ فیبرکس', NULL, 1, '2021-06-17 15:48:42', '2021-06-17 15:48:42'),
(3, 'فیصل آباد', NULL, 1, '2021-09-02 19:05:37', '2021-09-04 03:27:18'),
(4, 'G.N Tex', NULL, 1, '2021-09-04 14:19:16', '2021-09-04 14:19:16'),
(5, 'پریمیئم فیبرکس', NULL, 1, '2021-09-04 14:24:52', '2021-09-24 19:27:05'),
(6, 'اذان فبرکس', NULL, 1, '2021-09-04 22:16:20', '2021-09-04 22:16:20'),
(7, 'بابا فیبرکس', NULL, 1, '2021-09-24 19:37:51', '2021-09-24 19:37:51'),
(9, 'test', NULL, 1, '2021-11-04 16:21:04', '2021-11-04 16:21:04');

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
(3, 'Waskat', NULL, 1, '2020-11-17 10:27:17', '2020-11-17 10:27:17'),
(4, 'Test', NULL, 0, '2021-08-24 21:16:25', '2021-08-24 21:16:41'),
(5, 'Abc Name', 1, 0, '2021-10-26 20:15:21', '2021-10-26 20:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `check_data`
--

CREATE TABLE `check_data` (
  `id` int(10) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `check_data`
--

INSERT INTO `check_data` (`id`, `detail`) VALUES
(1, 'deposit_triger'),
(2, 'update_sale_triger'),
(3, 'deposit_triger'),
(4, 'After sale insert triger called'),
(5, 'deposit_triger'),
(6, 'update_sale_triger'),
(7, 'insert_purchase'),
(8, 'deposit_triger'),
(9, 'After sale insert triger called'),
(10, 'deposit_triger'),
(11, 'update_sale_triger'),
(12, 'deposit_triger'),
(13, 'purchase_update_triger called'),
(14, 'deposit_triger'),
(15, 'update_sale_triger 1'),
(16, 'deposit_triger'),
(17, 'update_sale_triger 1'),
(18, 'deposit_triger'),
(19, 'delete_sale triger called'),
(20, 'supplier_deposit_triger called'),
(21, 'delete_purchase_triger'),
(22, 'insert_purchase'),
(23, 'supplier_deposit_triger called'),
(24, 'delete_purchase_triger'),
(25, 'insert_purchase'),
(26, 'supplier_deposit_triger called'),
(27, 'purchase_update_triger called'),
(28, 'supplier_deposit_triger called'),
(29, 'delete_purchase_triger'),
(30, 'insert_purchase'),
(31, 'supplier_deposit_triger called'),
(32, 'purchase_update_triger called'),
(33, 'supplier_deposit_triger called'),
(34, 'purchase_update_triger called'),
(35, 'supplier_deposit_triger called'),
(36, 'purchase_update_triger called'),
(37, 'supplier_deposit_triger called'),
(38, 'purchase_update_triger called'),
(39, 'supplier_deposit_triger called'),
(40, 'purchase_update_triger called'),
(41, 'supplier_deposit_triger called'),
(42, 'purchase_update_triger called'),
(43, 'deposit_triger'),
(44, 'After sale insert triger called'),
(45, 'deposit_triger'),
(46, 'update_sale_triger 1'),
(47, 'supplier_deposit_triger called'),
(48, 'purchase_update_triger called'),
(49, 'deposit_triger'),
(50, 'update_sale_triger 1'),
(51, 'deposit_triger'),
(52, 'delete_sale triger called'),
(53, 'supplier_deposit_triger called'),
(54, 'delete_purchase_triger'),
(55, 'insert_purchase'),
(56, 'deposit_triger'),
(57, 'After sale insert triger called'),
(58, 'deposit_triger'),
(59, 'return_triger'),
(60, 'deposit_triger'),
(61, 'return_delete triger called'),
(62, 'supplier_deposit_triger called'),
(63, 'return_purchase_triger called'),
(64, 'deposit_triger'),
(65, 'delete_sale triger called'),
(66, 'supplier_deposit_triger called'),
(67, 'delete_purchase_triger'),
(68, 'deposit_triger'),
(69, 'return_purchase_delete'),
(70, 'insert_purchase'),
(71, 'deposit_triger'),
(72, 'After sale insert triger called'),
(73, 'supplier_deposit_triger called'),
(74, 'supplier_deposit_triger called'),
(75, 'supplier_deposit_triger called'),
(76, 'deposit_triger'),
(77, 'deposit_triger'),
(78, 'deposit_triger'),
(79, 'delete_sale triger called'),
(80, 'supplier_deposit_triger called'),
(81, 'delete_purchase_triger'),
(82, 'deposit_triger'),
(83, 'After sale insert triger called'),
(84, 'deposit_triger'),
(85, 'After sale insert triger called'),
(86, 'deposit_triger'),
(87, 'After sale insert triger called'),
(88, 'deposit_triger'),
(89, 'return_triger'),
(90, 'deposit_triger'),
(91, 'return_triger'),
(92, 'deposit_triger'),
(93, 'return_triger'),
(94, 'deposit_triger'),
(95, 'return_triger'),
(96, 'deposit_triger'),
(97, 'return_triger'),
(98, 'insert_purchase'),
(99, 'insert_purchase'),
(100, 'insert_purchase'),
(101, 'supplier_deposit_triger called'),
(102, 'purchase_update_triger called'),
(103, 'insert_purchase'),
(104, 'supplier_deposit_triger called'),
(105, 'purchase_update_triger called'),
(106, 'insert_purchase'),
(107, 'supplier_deposit_triger called'),
(108, 'purchase_update_triger called'),
(109, 'supplier_deposit_triger called'),
(110, 'purchase_update_triger called'),
(111, 'insert_purchase'),
(112, 'supplier_deposit_triger called'),
(113, 'purchase_update_triger called'),
(114, 'insert_purchase'),
(115, 'supplier_deposit_triger called'),
(116, 'purchase_update_triger called'),
(117, 'insert_purchase'),
(118, 'supplier_deposit_triger called'),
(119, 'purchase_update_triger called'),
(120, 'supplier_deposit_triger called'),
(121, 'purchase_update_triger called'),
(122, 'insert_purchase'),
(123, 'supplier_deposit_triger called'),
(124, 'purchase_update_triger called'),
(125, 'insert_purchase'),
(126, 'supplier_deposit_triger called'),
(127, 'purchase_update_triger called'),
(128, 'insert_purchase'),
(129, 'supplier_deposit_triger called'),
(130, 'purchase_update_triger called'),
(131, 'supplier_deposit_triger called'),
(132, 'purchase_update_triger called'),
(133, 'supplier_deposit_triger called'),
(134, 'purchase_update_triger called'),
(135, 'insert_purchase'),
(136, 'insert_purchase'),
(137, 'supplier_deposit_triger called'),
(138, 'purchase_update_triger called'),
(139, 'insert_purchase'),
(140, 'supplier_deposit_triger called'),
(141, 'purchase_update_triger called'),
(142, 'insert_purchase'),
(143, 'supplier_deposit_triger called'),
(144, 'purchase_update_triger called'),
(145, 'insert_purchase'),
(146, 'supplier_deposit_triger called'),
(147, 'purchase_update_triger called'),
(148, 'insert_purchase'),
(149, 'supplier_deposit_triger called'),
(150, 'purchase_update_triger called'),
(151, 'insert_purchase'),
(152, 'supplier_deposit_triger called'),
(153, 'purchase_update_triger called'),
(154, 'insert_purchase'),
(155, 'supplier_deposit_triger called'),
(156, 'purchase_update_triger called'),
(157, 'supplier_deposit_triger called'),
(158, 'purchase_update_triger called'),
(159, 'insert_purchase'),
(160, 'supplier_deposit_triger called'),
(161, 'purchase_update_triger called'),
(162, 'insert_purchase'),
(163, 'insert_purchase'),
(164, 'supplier_deposit_triger called'),
(165, 'purchase_update_triger called'),
(166, 'insert_purchase'),
(167, 'supplier_deposit_triger called'),
(168, 'purchase_update_triger called'),
(169, 'insert_purchase'),
(170, 'supplier_deposit_triger called'),
(171, 'purchase_update_triger called'),
(172, 'deposit_triger'),
(173, 'return_triger'),
(174, 'deposit_triger'),
(175, 'return_triger'),
(176, 'deposit_triger'),
(177, 'return_triger'),
(178, 'deposit_triger'),
(179, 'return_triger'),
(180, 'insert_purchase'),
(181, 'insert_purchase'),
(182, 'supplier_deposit_triger called'),
(183, 'purchase_update_triger called'),
(184, 'insert_purchase'),
(185, 'supplier_deposit_triger called'),
(186, 'purchase_update_triger called'),
(187, 'supplier_deposit_triger called'),
(188, 'delete_purchase_triger'),
(189, 'supplier_deposit_triger called'),
(190, 'delete_purchase_triger'),
(191, 'supplier_deposit_triger called'),
(192, 'delete_purchase_triger'),
(193, 'insert_purchase'),
(194, 'supplier_deposit_triger called'),
(195, 'purchase_update_triger called'),
(196, 'supplier_deposit_triger called'),
(197, 'purchase_update_triger called'),
(198, 'deposit_triger'),
(199, 'After sale insert triger called'),
(200, 'supplier_deposit_triger called'),
(201, 'return_purchase_triger called'),
(202, 'deposit_triger'),
(203, 'return_purchase_delete'),
(204, 'deposit_triger'),
(205, 'return_triger'),
(206, 'insert_purchase'),
(207, 'deposit_triger'),
(208, 'After sale insert triger called'),
(209, 'deposit_triger'),
(210, 'return_triger'),
(211, 'deposit_triger'),
(212, 'return_delete triger called'),
(213, 'deposit_triger'),
(214, 'return_triger'),
(215, 'deposit_triger'),
(216, 'return_triger'),
(217, 'deposit_triger'),
(218, 'return_triger'),
(219, 'deposit_triger'),
(220, 'return_triger'),
(221, 'insert_purchase'),
(222, 'deposit_triger'),
(223, 'After sale insert triger called'),
(224, 'deposit_triger'),
(225, 'return_triger'),
(226, 'deposit_triger'),
(227, 'After sale insert triger called'),
(228, 'deposit_triger'),
(229, 'return_triger'),
(230, 'supplier_deposit_triger called'),
(231, 'return_purchase_triger called'),
(232, 'supplier_deposit_triger called'),
(233, 'return_purchase_triger called'),
(234, 'deposit_triger'),
(235, 'return_triger'),
(236, 'supplier_deposit_triger called'),
(237, 'return_purchase_triger called'),
(238, 'deposit_triger'),
(239, 'return_triger'),
(240, 'deposit_triger'),
(241, 'return_triger'),
(242, 'deposit_triger'),
(243, 'return_triger'),
(244, 'deposit_triger'),
(245, 'return_triger'),
(246, 'supplier_deposit_triger called'),
(247, 'deposit_triger'),
(248, 'After sale insert triger called'),
(249, 'deposit_triger'),
(250, 'After sale insert triger called');

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
  `deposit` double DEFAULT 0,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Khan', 'khan Cloths', 'khan@abc.com', '03464639776', '1234', 'ff 526, Deans', 'Peshawar', 'kpk', '25000', 'Pakistan', 0, NULL, 0, '2020-11-16 09:51:38', '2021-06-16 16:18:27'),
(2, 1, 'Anonymous - گمنام', NULL, 'alhafizcloths@gmail.com', '0000000000', NULL, 'Shop# 70, City Cloth Center Firdoos, Peshawar', 'Peshawar', NULL, NULL, NULL, 0, NULL, 0, '2021-06-15 18:29:44', '2021-06-16 16:18:19'),
(3, 2, 'مدیر خان', NULL, NULL, '03369736363', '101', 'علی مارکیٹ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 0, '2021-06-17 16:19:17', '2021-09-20 18:19:51'),
(4, 2, 'محمد عارف', NULL, NULL, '03329576986', '102', 'علی مارکیٹ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 0, '2021-06-17 16:23:47', '2021-09-21 20:41:37'),
(5, 2, 'یعقوب', NULL, NULL, '03084785674', '100', 'راجہ مارکیٹ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 0, '2021-06-17 16:25:52', '2021-09-21 20:41:43'),
(6, 2, 'محمد رفیق', NULL, NULL, '03337500885', '103', 'آمے مارکیٹ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 0, '2021-06-17 16:30:25', '2021-09-21 20:41:48'),
(7, 2, 'عبدلوالی', NULL, NULL, '0213021501201', '104', 'آمے مارکیٹ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 0, '2021-06-17 16:32:12', '2021-09-25 15:23:10'),
(8, 2, 'خالد', '', '', '03109747783', '104', 'فضل شاہ مارکیٹ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-06-17 16:34:57', '2021-11-02 19:26:36'),
(9, 2, 'عظیم', NULL, NULL, '03339670711', '106', 'قریشی مارکیٹ مین بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-17 16:38:09', '2021-10-22 22:36:10'),
(10, 2, 'شعیب', '', '', '03369797966', '105', 'مین بازار', 'ہنگو', '', '', '', 0, NULL, 1, '2021-06-17 16:39:49', '2021-11-02 19:27:28'),
(11, 2, 'نجیب', '', '', '03305170002', '108', 'قریشی مارکیٹ مین بازار', 'ہنگو', '', '', '', 0, NULL, 1, '2021-06-17 16:41:14', '2021-09-27 16:51:25'),
(12, 2, 'عطاالرحمان', NULL, NULL, '03356767682', '109', 'عمر مارکیٹ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-21 20:32:56', '2021-09-06 13:23:47'),
(13, 2, 'مسرت', NULL, NULL, '03360921170', '110', 'عمر مارکیٹ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-21 20:34:01', '2021-09-06 13:24:14'),
(14, 2, 'مولوی طاہر', NULL, NULL, '03061266002', '111', 'عطیق پلازہ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-21 20:37:36', '2021-09-06 13:24:36'),
(15, 2, 'نبی', NULL, NULL, '03339881404', '121', 'مین بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-21 20:39:15', '2021-09-28 23:52:52'),
(16, 2, 'عصمت', NULL, NULL, '03329680705', '122', 'مین بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-21 20:41:16', '2021-09-23 18:20:26'),
(17, 2, 'اکبر & عابد', NULL, NULL, '03329523529', '123', 'سعید مارکیٹ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-21 20:44:30', '2021-06-21 20:44:30'),
(18, 2, 'شفیق', NULL, NULL, '03336777557', '112', 'صبور مارکیٹ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-21 20:45:56', '2021-09-06 13:26:02'),
(19, 2, 'سسجاالدین', NULL, NULL, '03326627827', '126', 'مین بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-21 20:50:04', '2021-09-25 16:15:23'),
(20, 2, 'عبدالرشید', NULL, NULL, '03339653465', '125', 'مین بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-21 20:56:34', '2021-09-25 16:18:16'),
(21, 2, 'امین جان', NULL, NULL, '03339533156', '127', 'مین بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-21 20:57:52', '2021-09-25 16:28:57'),
(22, 2, 'حشمت', NULL, NULL, '09876555555', '128', 'مین بازار نزد امین جان', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-06-21 20:59:55', '2021-06-21 20:59:55'),
(23, 2, 'لعل محمد', '', '', '334445567777', '130', 'مین بازار', 'ہنگو', '', '', '', 0, NULL, 1, '2021-06-21 21:01:59', '2021-11-02 19:32:56'),
(24, 2, 'حامد', NULL, NULL, '03339656756', '130', 'پٹ بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 0, '2021-06-21 21:03:14', '2021-09-01 14:28:17'),
(25, 2, 'شاہین اللہ', '', '', '03349023827', '124', 'مین بازار', 'ہنگو', '', '', '', 0, NULL, 1, '2021-06-21 21:21:22', '2021-09-27 15:10:11'),
(26, 2, 'Test', 'الحافظ کلاۃ', 'test@gmail.com', '03464646464', NULL, 'علی مارکیٹ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 0, '2021-06-24 23:32:30', '2021-06-24 23:34:24'),
(27, 2, 'معظم', NULL, NULL, '00014560123', '132', 'مین بازار ہنگو', 'ہنگو', NULL, NULL, NULL, 0, NULL, 0, '2021-08-09 20:13:17', '2021-09-01 14:28:46'),
(28, 2, 'جان اکبر', '', '', '001122554', '133', 'شیخین پلازہ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-09 20:16:00', '2021-09-23 14:23:32'),
(29, 2, 'عبدالخالق', NULL, NULL, '03339687014', '151', 'سمانہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-09 20:17:50', '2021-09-06 13:30:18'),
(30, 2, 'ببرک', NULL, NULL, '00123654785', '152', 'سمانہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-09 20:21:09', '2021-08-09 20:21:09'),
(31, 2, 'ذولفقار', NULL, NULL, '03325459451', '153', 'سمانہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 13:41:08', '2021-09-06 13:30:47'),
(32, 2, 'مصطفی', NULL, NULL, '0123012541', '154', 'سمانہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 13:42:17', '2021-09-25 22:45:25'),
(33, 2, 'Aذاکر', NULL, NULL, '03328224921', '155', 'سمانہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 13:43:25', '2021-09-06 13:31:34'),
(34, 2, 'گل نواز', NULL, NULL, '01232541452', '156', 'سمانہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 13:44:27', '2021-09-06 13:32:03'),
(35, 2, 'آجمیر', NULL, NULL, '00214565124', '157', 'سمانہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 13:46:42', '2021-08-11 13:46:42'),
(36, 2, 'انس', '', '', '03339650707', '171', 'مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 14:15:27', '2021-09-27 15:11:43'),
(37, 2, 'عثمان', NULL, NULL, '03329625634', '172', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 14:17:52', '2021-09-06 13:33:16'),
(38, 2, 'Aمولوی رشید', '', '', '03319272605', '173', 'مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 14:19:21', '2021-09-27 16:50:31'),
(39, 2, 'بشیر', '', '', '03355669339', '174', 'مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 14:21:02', '2021-09-27 16:49:04'),
(40, 2, 'حافظ انعام', NULL, NULL, '03333400088', '175', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 14:22:50', '2021-09-06 13:34:53'),
(41, 2, 'فضل ربی', NULL, NULL, '03339688395', '176', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 14:23:57', '2021-09-06 13:35:14'),
(42, 2, 'جان آغا', NULL, NULL, '03348871850', '177', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 14:26:46', '2021-09-06 13:35:37'),
(43, 2, 'A فیض', '', '', '03339678577', '178', 'مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 14:29:21', '2021-09-27 17:30:20'),
(44, 2, 'خالد', NULL, NULL, '03330481600', '179', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 14:34:02', '2021-08-11 14:34:02'),
(45, 2, 'محمود', '', '', '03339674170', '180', 'مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 14:35:04', '2021-09-27 17:32:16'),
(46, 2, 'فدا', '', '', '03339601464', '181', 'مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:20:56', '2021-09-27 15:12:38'),
(47, 2, 'عاشف', NULL, NULL, '03329624213', '182', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 15:22:03', '2021-08-11 15:22:03'),
(48, 2, 'کفتان', NULL, NULL, '03339676822', '183', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 15:23:04', '2021-09-06 13:37:20'),
(49, 2, 'اجمل', '', '', '03328351287', '184', 'عرفان  پلازہ  مدرسہ  روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:27:03', '2021-09-27 17:35:34'),
(50, 2, 'اختر منیر', '', '', '03329517887', '185', 'عرفان  پلازہ  مدرسہ  روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:34:37', '2021-09-27 17:36:05'),
(51, 2, 'اشفاق', '', '', '03319594055', '186', 'عرفان  پلازہ  مدرسہ  روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:35:33', '2021-09-27 17:36:31'),
(52, 2, 'حافظ فرید', '', '', '03469255319', '187', 'عرفان  پلازہ  مدرسہ  روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:36:56', '2021-09-27 17:36:54'),
(53, 2, 'مولوی شہزاد', '', '', '03333139313', '188', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:40:52', '2021-09-27 17:38:22'),
(54, 2, 'یونس', '', '', '03360979596', '192', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:41:38', '2021-09-27 17:40:27'),
(55, 2, 'زاہد', '', '', '03369594034', '193', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:42:44', '2021-09-27 17:40:51'),
(56, 2, 'یاسین', '', '', '03329615927', '189', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:43:48', '2021-09-27 17:39:08'),
(57, 2, 'نور نیاز', '', '', '0021212213565', '190', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:44:44', '2021-09-27 17:39:32'),
(58, 2, 'منصور', '', '', '01236547895', '208', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:47:06', '2021-09-27 17:42:03'),
(59, 2, 'شاہد', '', '', '03339680749', '191', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:48:08', '2021-09-27 17:39:56'),
(60, 2, 'آصف نواز', '', '', '03322622337', '210', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:48:55', '2021-09-27 17:42:51'),
(61, 2, 'اسلم', '', '', '03339678552', '211', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:49:38', '2021-09-27 19:03:16'),
(62, 2, 'حاجی حرمین', '', '', '03215465498', '209', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:50:44', '2021-09-27 17:42:27'),
(63, 2, 'عمر غنی', '', '', '03348334725', '212', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:52:15', '2021-09-27 19:03:45'),
(64, 2, 'رشید', '', '', '001112233665', '202', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:53:18', '2021-09-27 17:41:10'),
(65, 2, 'مولوی سعید', '', '', '03368363493', '203', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 15:54:12', '2021-09-27 17:41:32'),
(66, 2, 'A  سمیع', '', '', '03363363334', '201', 'ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 16:01:12', '2021-09-27 16:45:21'),
(67, 2, 'رضوان', '', '', '03360431094', '238', 'مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 16:02:07', '2021-09-27 16:48:30'),
(68, 2, 'ممریز', NULL, NULL, '020101020020', '221', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:03:10', '2021-09-01 15:01:36'),
(69, 2, 'حافظ منان', '', '', '03369163269', '223', 'مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 16:03:57', '2021-09-27 16:47:29'),
(70, 2, 'مدثر جاوید', '', '', '03320502125', '222', 'مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 16:05:20', '2021-09-27 16:46:17'),
(71, 2, 'نواز', NULL, NULL, '03329789683', '235', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:14:06', '2021-09-06 13:50:35'),
(72, 2, 'محمد خان', NULL, NULL, '03339677860', '231', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:16:27', '2021-09-06 13:48:53'),
(73, 2, 'ویصال غنی', NULL, NULL, '01203654879', '230', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:18:35', '2021-09-06 13:49:17'),
(74, 2, 'آصف', NULL, NULL, '03339678482', '250', 'پایي پاس', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:20:50', '2021-09-06 13:49:41'),
(75, 2, 'محمد نور', NULL, NULL, '03315498454', '239', 'مدرسہ روڈ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:27:05', '2021-09-06 13:50:08'),
(76, 2, 'خان بدر', NULL, NULL, '03052858222', '251', 'شاہو بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:29:20', '2021-09-06 13:51:37'),
(77, 2, 'عبدالوادود', NULL, NULL, '03077173806', '252', 'شاہو بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:30:56', '2021-09-06 13:52:15'),
(78, 4, 'حاجی عبدالحمید', '', '', '03069276852', '253', 'شاہو بازار', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 16:32:23', '2021-09-25 15:01:02'),
(79, 2, 'اجمل', NULL, NULL, '01235465245', '255', 'شاہو بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:33:55', '2021-09-06 13:53:12'),
(80, 2, 'مجاہد', NULL, NULL, '03099452399', '256', 'شاہو بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:35:25', '2021-09-06 13:53:31'),
(81, 2, 'آصف', NULL, NULL, '03359611363', '261', 'بگٹو چوک', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:37:14', '2021-09-06 13:53:55'),
(82, 4, 'انور', '', '', '023225545512', '263', 'بگٹو چوک', 'ہنگو', '', '', '', 0, NULL, 1, '2021-08-11 16:38:32', '2021-09-25 15:00:35'),
(83, 2, 'A  شفیع', NULL, NULL, '001212365456', '262', 'بگٹو چوک', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:39:43', '2021-09-06 13:54:39'),
(84, 2, 'موسی', NULL, NULL, '03339893055', '265', 'محمد خواجہ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:41:49', '2021-09-06 13:55:09'),
(85, 2, 'مشتتاق احمد', NULL, NULL, '03331753300', '266', 'محمد خواجہ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 16:42:58', '2021-09-06 13:55:35'),
(86, 2, 'جلیل', NULL, NULL, '002255447788', '301', 'تھری سٹار پلازہ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 18:58:16', '2021-09-06 13:56:29'),
(87, 2, 'عظیم', NULL, NULL, '002154645645', '302', 'تھری سٹار پلازہ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 19:02:03', '2021-09-06 13:57:07'),
(88, 2, 'حاجی زرین', NULL, NULL, '002211554487', '303', 'تھری سٹار پلازہ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 19:04:21', '2021-09-06 13:57:27'),
(89, 2, 'زکریا', NULL, NULL, '03348878324', '305', 'گلاب پلازہ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 19:06:18', '2021-09-06 13:57:55'),
(90, 2, 'نقیب', NULL, NULL, '00215487', '306', 'گلاب پلازہ', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 19:58:41', '2021-09-06 13:58:22'),
(91, 2, 'نبی', NULL, NULL, '00221145565544', '307', 'ٹل روڈ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 20:02:49', '2021-09-06 13:58:42'),
(92, 2, 'مولوی سلطان', NULL, NULL, '12054875412', '316', 'اخون پلاازہ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 20:04:55', '2021-09-06 13:59:04'),
(93, 2, 'A عبد', 'الجواد گارمنٹس', NULL, '0011255645585', '312', 'ٹل روڈ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 20:22:15', '2021-09-06 16:21:28'),
(94, 2, 'گلزار', NULL, NULL, '01478965423', '313', 'اخون پلاازہ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 20:23:57', '2021-09-06 13:59:58'),
(95, 2, 'جنت ولی', NULL, NULL, '4454545454', '314', 'اخون پلاازہ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 20:24:59', '2021-09-06 14:00:18'),
(96, 2, 'عاصم', NULL, NULL, '03338547229', '315', 'اخون پلاازہ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 20:26:03', '2021-09-06 14:00:39'),
(97, 2, 'مولوی انعام', NULL, NULL, '0001215454', '316+', 'اخون پلاازہ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 20:27:20', '2021-09-06 14:01:02'),
(98, 2, 'یوسف', '', '', '03361216395', '317', 'اخون پلاازہ', 'کچہ پکہ', '', '', '', 0, NULL, 1, '2021-08-11 20:28:18', '2021-09-23 14:39:17'),
(99, 2, 'منتظر', NULL, NULL, '03329366886', '321', 'ٹل روڈ نزد مسجد', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 20:31:04', '2021-09-06 14:02:02'),
(100, 2, 'مولوی عبدالجبار', NULL, NULL, '03045656099', '322', 'ٹل روڈ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 20:32:52', '2021-09-06 14:03:45'),
(101, 2, 'طارق حسین', NULL, NULL, '03339992929', '323', 'کاہی روڈ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 20:34:54', '2021-08-11 20:34:54'),
(102, 2, 'آفتاب', NULL, NULL, '033295918954', '331', 'کاہی', 'کاہی', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 20:36:15', '2021-08-11 20:36:15'),
(103, 2, 'وحید گل', '', '', '03339671225', '335', 'غلجو', 'غلجو', '', '', '', 0, NULL, 1, '2021-08-11 20:38:15', '2021-09-27 19:07:36'),
(104, 2, 'عمران', NULL, NULL, '02020202022', '351', 'شوکت مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 22:55:08', '2021-09-06 14:13:46'),
(105, 2, 'A حمید', NULL, NULL, '02144555555', '352', 'شوکت مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 23:04:34', '2021-09-06 14:14:34'),
(106, 2, 'عبدالکریم', NULL, NULL, '03009172629', '353', 'شوکت مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 23:06:24', '2021-09-06 14:15:00'),
(107, 2, 'عبدالراؤف', NULL, NULL, '01111111111', '354', 'شوکت مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-11 23:08:33', '2021-08-11 23:08:33'),
(108, 2, 'شاہ زیب', NULL, NULL, '6666789005', '355', 'شوکت مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 13:57:29', '2021-09-06 14:15:24'),
(109, 2, 'B   عادل', NULL, NULL, '112234566778908', '365', 'بنگش مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:01:20', '2021-08-13 14:01:20'),
(110, 2, 'سید ولي', NULL, NULL, '03000511531', '366', 'بنگش مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:03:12', '2021-09-06 14:16:05'),
(111, 2, 'مختیار', NULL, NULL, '86532213445', '367', 'بنگش مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:04:17', '2021-09-06 14:16:43'),
(112, 2, 'اعجاز احمد', NULL, NULL, '03009153981', '368', 'بنگش مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:05:44', '2021-09-06 14:17:00'),
(113, 2, 'عبدالناصر', NULL, NULL, '65432112345', '371', 'قومی مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:08:07', '2021-09-06 14:17:25'),
(114, 2, 'شعیب', NULL, NULL, '030782926658', '372', 'قومی مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:09:15', '2021-09-06 14:17:46'),
(115, 2, 'نورالحق', NULL, NULL, '03059362603', '373', 'قومی مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:12:51', '2021-08-13 14:12:51'),
(116, 2, 'جہانزیب', NULL, NULL, '98766532133', '374', 'قومی مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:46:23', '2021-09-06 14:18:06'),
(117, 2, 'خالد', NULL, NULL, '5557555555', '375', 'قومی مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:47:15', '2021-08-13 14:47:15'),
(118, 2, 'مومن', NULL, NULL, '03051535622', '376', 'قومی مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:48:01', '2021-09-06 14:18:23'),
(119, 2, 'نعمان', NULL, NULL, '03009165969', '377', 'زوتلہ خان مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:53:05', '2021-09-06 14:18:45'),
(120, 2, 'عممران  ااینڈ  عمر صادق', NULL, NULL, '03038747590', '378', 'زوتلہ خان مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:55:32', '2021-08-13 14:55:32'),
(121, 2, 'ریاض الدین', NULL, NULL, '03028002167', '385', 'قاضی مارکیٹ', 'دوابہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 14:58:47', '2021-09-06 14:19:09'),
(122, 2, 'ایم عباس', NULL, NULL, '03038556564', '390', 'نریاب', 'نریاب', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 15:01:37', '2021-09-06 14:19:37'),
(123, 2, 'لقمان', NULL, NULL, '03028012321', '391', 'جھنڈی چوک', 'جھنڈی', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 15:03:45', '2021-08-13 15:03:45'),
(124, 2, 'A  رضاء', NULL, NULL, '03018985813', '401', 'عادل  شاہ  مارکیٹ', 'ٹل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 15:06:31', '2021-09-06 14:20:09'),
(125, 2, 'نوورحلیم', NULL, NULL, '03018328073', '402', 'عادل  شاہ  مارکیٹ', 'ٹل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 15:09:21', '2021-09-06 14:20:25'),
(126, 2, 'ارشاد', NULL, NULL, '03459869538', '403', 'عادل  شاہ  مارکیٹ', 'ٹل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 15:12:06', '2021-08-13 15:12:06'),
(127, 2, 'ارشاد', NULL, NULL, '03089116603', '403', 'عادل  شاہ  مارکیٹ', 'ٹل', NULL, NULL, NULL, 0, NULL, 0, '2021-08-13 15:13:21', '2021-09-01 15:32:40'),
(128, 2, 'عثمان', NULL, NULL, '03369394358', '404', 'عادل  شاہ  مارکیٹ', 'ٹل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 15:47:53', '2021-09-06 14:20:48'),
(129, 2, 'عبدالطیف', NULL, NULL, '03329682626', '405', 'عادل  شاہ  مارکیٹ', 'ٹل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 15:49:57', '2021-08-13 15:49:57'),
(130, 2, 'آصیف  شاہ', NULL, NULL, '03005872013', '406', 'ٹل', 'ٹل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 15:52:16', '2021-08-13 15:52:16'),
(131, 2, 'مولوی خالد', NULL, NULL, '03005661983', '407', 'جاوید مارکیٹ', 'ٹل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 17:21:18', '2021-09-06 14:21:30'),
(132, 2, 'اسحاق', NULL, NULL, '0124242121', '408', 'نزد پولیس لاین', 'ٹل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 17:25:19', '2021-08-13 17:25:19'),
(133, 2, 'فرید', NULL, NULL, '01225514212', '409', 'نزد پولیس لاین', 'ٹل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 17:26:13', '2021-09-06 14:21:50'),
(134, 2, 'فیصل', NULL, NULL, '02154251512', '410', 'نزد پولیس لاین', 'ٹل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 17:26:51', '2021-09-06 14:22:08'),
(135, 2, 'صوبیدار گل مر خان', NULL, NULL, '012125455454', '411', 'عادل  شاہ  مارکیٹ', 'ٹل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 17:28:44', '2021-09-06 14:22:28'),
(136, 2, 'خیال', NULL, NULL, '012121212', '451', 'غلجو', 'غلجو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 17:29:54', '2021-08-13 17:29:54'),
(137, 2, 'کریم', NULL, NULL, '021514151215', '452', 'غلجو', 'غلجو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 17:30:41', '2021-08-13 17:30:41'),
(138, 2, 'آمین بادشاہ', NULL, NULL, '03035760792', '453', 'غلجو', 'غلجو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 17:32:01', '2021-09-06 14:24:35'),
(139, 2, 'رحمان بادشاہ', NULL, NULL, '03069559504', '454', 'غلجو', 'غلجو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 17:32:50', '2021-09-06 14:26:20'),
(140, 2, 'ابراہیم', NULL, NULL, '021212121', '455', 'غلجو', 'غلجو', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 17:33:37', '2021-09-06 14:27:13'),
(141, 2, 'A  حبیب', NULL, NULL, '03359736466', '461', 'ڈبوری', 'ڈبوری', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 17:35:03', '2021-09-06 14:27:49'),
(142, 2, 'الیااس', NULL, NULL, '03009059921', '465', 'مشتی میلہ', 'مشتی میلہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 18:18:40', '2021-09-06 14:28:26'),
(143, 2, 'حاجی گلتان', NULL, NULL, '03359967218', '466', 'مشتی میلہ', 'مشتی میلہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 18:20:28', '2021-09-06 14:29:08'),
(144, 2, 'محمد طاہر', NULL, NULL, '0322156564856', '467', 'مشتی میلہ', 'مشتی میلہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 18:21:59', '2021-09-06 14:29:35'),
(145, 2, 'حاجی الیاس', NULL, NULL, '03025663942', '471', 'انجانی', 'انجانی', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 18:24:07', '2021-09-06 14:30:13'),
(146, 2, 'طاہر', NULL, NULL, '03323434870', '472', 'انجانی', 'انجانی', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 18:25:20', '2021-09-06 14:31:37'),
(147, 2, 'اعتبار گل', NULL, NULL, '03029030983', '481', 'پاڑہ چنار', 'پاڑہ چنار', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 18:27:16', '2021-08-13 18:27:16'),
(148, 4, 'نواب', '', '', '03015909791', '482', 'صدہ بازار', 'صدہ بازار', '', '', '', 0, NULL, 1, '2021-08-13 18:29:30', '2021-09-25 14:59:45'),
(149, 2, 'اشرف', NULL, NULL, '03029059383', '483', 'صدہ بازار', 'صدہ بازار', NULL, NULL, NULL, 0, NULL, 1, '2021-08-13 18:31:26', '2021-09-06 14:32:45'),
(150, 4, 'قاری حنیف', '', '', '03018013542', '484', 'صدہ بازار', 'صدہ بازار', '', '', '', 0, NULL, 1, '2021-08-13 18:34:07', '2021-09-25 14:59:22'),
(168, 2, 'خائیستہ الرححمان', NULL, NULL, '00887766553', '503', 'پنڈی  روڈ', 'کوہاٹ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:18:39', '2021-08-26 13:18:39'),
(169, 2, 'اکرام', NULL, NULL, '03335800223', '504', 'مین بازار', 'کوہاٹ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:20:09', '2021-09-06 14:37:18'),
(170, 4, 'A آصد', '', '', '03339648282', '505', 'بلوٹنگ', 'کوہاٹ', '', '', '', 0, NULL, 1, '2021-08-26 13:26:05', '2021-09-25 14:57:13'),
(171, 2, 'محمد امین', NULL, NULL, '03348257398', '506', 'کوھاٹ', 'کوہاٹ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:28:39', '2021-08-26 13:28:39'),
(172, 2, 'A بسم', NULL, NULL, '99887766554', '507', 'ھائی وے', 'کوہاٹ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:30:40', '2021-08-26 13:30:40'),
(173, 2, 'انور', NULL, NULL, '03339615259', '508', 'ڈوڈھ چوک ھائی وے', 'کوہاٹ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:32:37', '2021-09-06 14:38:38'),
(174, 2, 'مولوی  خطاب', NULL, NULL, '03354000455', '510', 'سبزی منڈی', 'کوہاٹ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:35:07', '2021-09-06 14:39:08'),
(175, 2, 'عابد', NULL, NULL, '03331686499', '509', 'ڈوڈھ چوک ھائی وے', 'کوہاٹ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:37:15', '2021-09-06 14:39:35'),
(176, 3, 'نور  A', NULL, NULL, '03038831595', '551', 'شہباز پلازہ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:43:45', '2021-09-06 14:40:15'),
(177, 3, 'خان حسن', NULL, NULL, '03328669557', '552', 'شہباز پلازہ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:45:12', '2021-09-06 14:40:51'),
(178, 3, 'حاجی میجر', NULL, NULL, '00332211445', '553', 'شہباز پلازہ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:46:15', '2021-09-06 14:49:20'),
(179, 3, 'A محمد', NULL, NULL, '03219390296', '554', 'شہباز پلازہ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:49:19', '2021-09-06 14:41:32'),
(180, 4, 'گل بشر', '', '', '110022665544', '555', 'شہباز پلازہ', 'باڑہ', '', '', '', 0, NULL, 1, '2021-08-26 13:50:25', '2021-09-24 23:53:04'),
(181, 3, 'A  حضرت', NULL, NULL, '03219144037', '556', 'شہباز پلازہ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:53:43', '2021-08-26 13:53:43'),
(182, 3, 'حضرت عمر', NULL, NULL, '22113366554', '557', 'شہباز پلازہ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 13:57:19', '2021-09-06 14:43:01'),
(183, 3, 'صابر', NULL, NULL, '03339321328', '561', 'عدنان مارکیٹ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:05:22', '2021-09-06 14:43:31'),
(184, 3, 'سہیل', NULL, NULL, '03325819267', '562', 'عدنان مارکیٹ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:06:47', '2021-09-06 14:44:06'),
(185, 3, 'اسحاق', NULL, NULL, '03335995550', '571', 'نیازی مارکیٹ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:09:11', '2021-09-06 14:46:13'),
(186, 3, 'ھارون', NULL, NULL, '22113300225', '575', 'نزد بس ااڈہ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:11:32', '2021-09-06 14:46:56'),
(187, 4, 'نعیم', '', '', '03329475919', '581', 'نالہ کوھی', 'باڑہ', '', '', '', 0, NULL, 1, '2021-08-26 14:13:29', '2021-09-24 23:49:43'),
(188, 4, 'ممنہاج الدین', '', '', '00221133885', '582', 'عوھی بازار', 'باڑہ', '', '', '', 0, NULL, 1, '2021-08-26 14:17:02', '2021-09-24 23:49:20'),
(189, 3, 'حاجی ثواب', NULL, NULL, '03005929645', '586', 'قمبرخیل مدرسہ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:20:12', '2021-09-06 14:50:59'),
(190, 3, 'عبدالحلیم', NULL, NULL, '03078508911', '587', 'قمبرخیل مدرسہ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:21:28', '2021-09-06 14:48:50'),
(191, 3, 'شاہد', NULL, NULL, '03015630030', '591', 'سپین ڈنڈ مدرشہ', 'باڑہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:24:17', '2021-09-06 14:49:58'),
(192, 4, 'ضابط', '', '', '03349101103', '592', 'باڑہ', 'باڑہ', '', '', '', 0, NULL, 1, '2021-08-26 14:25:29', '2021-09-23 15:17:36'),
(193, 3, 'حاجی خان ولی', NULL, NULL, '03077144632', '596', 'لنڈی کوتل', 'لنڈی کوتل', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:27:23', '2021-09-06 14:51:56'),
(194, 2, 'عبدالرازق', NULL, NULL, '03429659775', '597', 'نزد فاٹا یونیورسٹی', 'متننی درہ', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:38:13', '2021-09-06 14:52:45'),
(195, 3, 'انصار خان', NULL, NULL, '03120020884', '601', 'اورکزئی ٹاور', 'پشااور', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:40:27', '2021-09-06 15:14:56'),
(196, 3, 'A امان', NULL, NULL, '03239102550', '602', 'اورکزئی ٹاور', 'پشااور', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:42:14', '2021-09-06 15:15:37'),
(197, 3, 'گلاب', NULL, NULL, '03355151379', '606', 'ااشرف روڈ', 'پشاور', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:44:04', '2021-09-06 14:55:46'),
(198, 3, 'عشرت گل', NULL, NULL, '03369518243', '610', 'دلہ زک روڈ', 'پشاور', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:45:31', '2021-09-06 14:57:16'),
(199, 4, 'مکرم', '', '', '03149131510', '615', 'شوگر مل خزینہ', 'پشاور', '', '', '', 0, NULL, 1, '2021-08-26 14:47:48', '2021-09-23 15:24:04'),
(200, 3, 'افتخار احمد', NULL, NULL, '03451584238', '616', 'سرڈھیری', 'سرڈھیری', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:49:51', '2021-09-06 14:59:51'),
(201, 4, 'ملتان', '', '', '03139928258', '617', 'چارسدہ', 'چارسدہ', '', '', '', 0, NULL, 1, '2021-08-26 14:50:58', '2021-09-24 23:42:35'),
(202, 3, 'حاجی مجاھد', NULL, NULL, '03459009919', '618', 'ورسک روڈ پیربالہ', 'پشاور', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 14:58:45', '2021-09-06 15:00:49'),
(203, 3, 'A حاجی عنایت', NULL, NULL, '03359801770', '619', 'شاھی بالہ   ورسک روڈ', 'پشاور', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 15:01:14', '2021-09-06 15:01:44'),
(204, 4, 'A حفیظ', '', '', '03089024783', '620', 'ھری چند', 'ھری چند', '', '', '', 0, NULL, 1, '2021-08-26 15:02:46', '2021-09-23 15:24:57'),
(205, 4, 'طیب', '', '', '03049336063', '621', 'ھری چند', 'ھری چند', '', '', '', 0, NULL, 1, '2021-08-26 15:03:56', '2021-09-23 15:25:22'),
(206, 4, 'عبدالصمد', '', '', '03029090300', '622', 'راولپنڈی', 'راولپنڈی', '', '', '', 0, NULL, 1, '2021-08-26 15:05:22', '2021-09-23 15:25:45'),
(207, 4, 'M شیر', '', '', '03409852583', '623', 'چترال', 'چترال', '', '', '', 0, NULL, 1, '2021-08-26 15:06:48', '2021-09-23 15:26:06'),
(208, 3, 'علی احمد', NULL, NULL, '03478948295', '624', 'صوابی', 'صوابی', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 15:07:45', '2021-09-06 15:04:16'),
(209, 4, 'ادریس', '', '', '03348684099', '625', 'کرک', 'کرک', '', '', '', 0, NULL, 1, '2021-08-26 15:08:45', '2021-09-23 15:26:48'),
(210, 3, 'یونس', 'عدن کلاتھ', NULL, '03329141565', '626', 'کرک', 'کرک', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 15:11:51', '2021-09-06 15:05:27'),
(211, 4, 'سید جمیل', '', '', '03245466943', '627', 'ایبٹ آباد', 'ایبٹ آباد', '', '', '', 0, NULL, 1, '2021-08-26 15:13:35', '2021-09-23 15:27:10'),
(212, 4, 'سید خالق', '', '', '03171454134', '628', 'پبی', 'پبی', '', '', '', 0, NULL, 1, '2021-08-26 15:15:00', '2021-09-24 23:39:38'),
(213, 3, 'عدنان', NULL, NULL, '03128488973', '629', 'دلہ زک روڈ', 'پشاور', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 15:16:25', '2021-09-06 15:07:27'),
(214, 4, 'عرفان', '', '', '03139900921', '630', 'پھندو', 'پشاور', '', '', '', 0, NULL, 1, '2021-08-26 15:17:22', '2021-09-23 15:27:40'),
(215, 3, 'صابر خان', NULL, NULL, '03177407549', '631', 'پھندو چوک', 'پشاور', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 15:18:50', '2021-09-06 15:08:27'),
(216, 3, 'عثمان', '', '', '03181919521', '632', 'ملازئی چوک', 'پشاور', '', '', '', 0, NULL, 1, '2021-08-26 15:20:53', '2021-09-27 20:12:50'),
(217, 3, 'حاجی امین الحسنات', NULL, NULL, '03149119689', '633', 'ورسک روڈ پیربالہ', 'پشاور', NULL, NULL, NULL, 0, NULL, 1, '2021-08-26 15:23:17', '2021-09-06 15:09:55'),
(218, 3, 'امداد', '', '', '03474251311', '634', 'بونیر', 'بونیر', '', '', '', 0, NULL, 1, '2021-08-26 15:26:44', '2021-09-23 15:32:22'),
(219, 2, 'محمد عارف', NULL, NULL, '03318062162', '254', 'شاہو بازار', 'ہنگو', NULL, NULL, NULL, 0, NULL, 1, '2021-09-01 15:13:47', '2021-09-01 15:13:47'),
(220, 2, 'رضوان', NULL, NULL, '00112255447', '318', 'کاہی روڈ', 'کچہ پکہ', NULL, NULL, NULL, 0, NULL, 1, '2021-09-06 14:06:33', '2021-09-06 14:06:51'),
(221, 4, 'ذیشان', '', '', '03329547986', '332', 'کاہی', 'کاہی', '', '', '', 0, NULL, 1, '2021-09-06 14:09:41', '2021-09-23 14:42:49'),
(222, 4, 'عظمت', '', '', '03359687280', '333', 'کاہی', 'کاہی', '', '', '', 0, NULL, 1, '2021-09-06 14:11:14', '2021-09-23 14:43:24'),
(223, 3, 'A ضیا', '', '', '001212255', '634', 'خوست', 'خوست', '', '', 'افغانستان', 0, NULL, 1, '2021-09-06 15:13:31', '2021-09-23 15:32:42'),
(224, 2, 'عثمان', NULL, NULL, '00221144558', '700', 'پشاور', 'پشاور', NULL, NULL, NULL, 0, NULL, 1, '2021-09-06 17:40:09', '2021-09-06 17:40:09'),
(229, 2, 'محمد عارف', '', '', '03329576986', '101', 'علی مارکیٹ', 'ہنگوو', '', '', '', 0, NULL, 1, '2021-09-21 21:06:16', '2021-09-22 14:28:14'),
(234, 2, 'محمد رفیق', '', '', '03337500885', '103', 'آمے مارکیٹ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-09-23 14:09:12', '2021-11-02 19:25:58'),
(235, 4, 'عمران', '', '', '00112233554', '113', 'قریشی مارکیٹ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-09-23 14:12:50', '2021-11-02 19:39:13'),
(236, 4, 'شفیع اللہ', 'الجنت شاپنگ مال', '', '03318249119', '141', 'نزد 1122 ہیڈکوارٹر', 'ہنگو', '', '', '', 0, NULL, 1, '2021-09-23 14:25:10', '2021-09-23 14:25:10'),
(237, 4, 'حیات وزیر', '', '', '03365664574', '701', 'ورسک روڈ نزد فاٹا سیکرٹریٹ', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-23 14:35:56', '2021-09-23 14:36:57'),
(238, 2, 'رحمت جنان', '', '', '03025652049', '370', 'قومی مارکیٹ', 'دوابہ', '', '', '', 0, NULL, 1, '2021-09-23 14:53:39', '2021-09-23 14:53:39'),
(239, 4, 'یوسف', '', '', '00112233660', '456', 'غلجو', 'غلجو', '', '', '', 0, NULL, 1, '2021-09-23 14:59:00', '2021-09-23 14:59:00'),
(240, 2, 'A راحید', '', '', '03329515046', '502', 'بورڈ ہایی وے', 'کوھاٹ', '', '', '', 0, NULL, 1, '2021-09-23 15:04:35', '2021-09-23 15:05:04'),
(241, 4, 'انصار خان 2', '', '', '031200208840', '702', 'اورکزئی ٹاور', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-23 15:20:22', '2021-09-23 15:20:22'),
(242, 4, 'داؤد', '', '', '03014818187', '703', 'دلہ زک روڈ', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-23 15:22:51', '2021-09-24 23:44:03'),
(243, 4, 'راؤف خان', '', '', '001122336674', '704', 'رنگ روڈ', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-23 15:29:52', '2021-09-23 15:29:52'),
(244, 4, 'مولوی رشید احمد', '', '', '00440022554', '705', 'پدست حاجی حنیف', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-23 15:31:47', '2021-09-23 15:31:47'),
(245, 4, 'میرول', '', '', '001144005522', '706', 'پیربالہ', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-23 15:35:22', '2021-09-23 15:35:22'),
(246, 4, 'صوبیدار', '', '', '08080504002', '707', 'سپینہ اوڑی رنگ روڈ', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-23 15:37:01', '2021-09-23 15:37:01'),
(247, 4, 'انس', '', '', '00110044886', '334', 'کاہی', 'کاہی', '', '', '', 0, NULL, 1, '2021-09-23 15:38:14', '2021-09-24 23:35:12'),
(248, 4, 'حافظ نور زمان', '', '', '78041203652', '430', 'ٹل', 'ٹل', '', '', '', 0, NULL, 1, '2021-09-23 15:39:46', '2021-09-24 23:33:52'),
(249, 4, 'عبدلرازق مینیجر', '', '', '03339639240', '711', 'اورکزئی ٹاور', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-23 15:51:24', '2021-09-23 15:51:24'),
(250, 4, 'عبدلرحمانن', '', '', '10404050202', '712', 'فیصل کالونی ورسک روڈ', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-23 15:53:09', '2021-09-24 23:29:08'),
(251, 4, 'نصراللہ جان', '', '', '01023545698', '712', 'لٹو ماموزی', 'ماموزی', '', '', '', 0, NULL, 1, '2021-09-23 15:55:55', '2021-09-24 23:28:39'),
(252, 4, 'حاجی تاج رحمان', '', '', '03330917618', '713', 'جہانگیری', 'جہانگیری', '', '', '', 0, NULL, 1, '2021-09-23 16:06:47', '2021-09-24 23:27:37'),
(253, 4, 'خان محمد آفریدی', '', '', '03139644479', '714', 'آفریدی', 'آفریدی', '', '', '', 0, NULL, 1, '2021-09-23 16:08:12', '2021-09-24 23:26:57'),
(254, 4, 'زین العابدین', '', '', '03429067058', '715', 'بشاور', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-23 16:09:25', '2021-09-24 23:25:52'),
(255, 4, 'رایئس', '', '', '10402398455', '716', 'باڑہ', 'باڑہ', '', '', '', 0, NULL, 1, '2021-09-23 16:10:44', '2021-09-23 16:10:44'),
(256, 4, 'ارشاد', '', '', '03214446473', '716', 'میرہ', 'چارسدہ', '', '', '', 0, NULL, 1, '2021-09-23 16:11:58', '2021-09-23 16:11:58'),
(257, 4, 'سید انور', '', '', '0132145871423', '717', 'سید انور', 'سید انور', '', '', '', 0, NULL, 1, '2021-09-23 16:13:02', '2021-09-24 23:24:32'),
(258, 4, 'حاجی نظیف', '', '', '03339007620', '718', 'حاجی نظیف', 'حاجی نظیف', '', '', '', 0, NULL, 1, '2021-09-23 16:13:58', '2021-09-24 23:23:58'),
(259, 4, 'جواد', '', '', '03051997868', '720', 'دوران پور', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-23 16:15:02', '2021-09-23 16:15:02'),
(260, 4, 'حنیف', '', '', '03012116690', '721', 'باجوڑ ایجنسی', 'باجوڑ ایجنسی', '', '', '', 0, NULL, 1, '2021-09-23 16:16:08', '2021-09-23 16:16:08'),
(261, 4, 'انور', '', '', '001122003355', '722', 'کاہی', 'کاہی', '', '', '', 0, NULL, 1, '2021-09-23 16:17:26', '2021-09-23 16:17:26'),
(262, 4, 'سراج الدین  اینڈ شمس الدین', '', '', '11004400223', '723', 'سراج الدین  اینڈ شمس الدین', 'سراج الدین  اینڈ شمس الدین', '', '', '', 0, NULL, 1, '2021-09-23 16:19:43', '2021-09-23 16:19:43'),
(263, 4, 'حبیب الرحمان', '', '', '03339661772', '521', 'شاہ پور کوہاٹ', 'کوہاٹ', '', '', '', 0, NULL, 1, '2021-09-24 22:30:13', '2021-09-24 23:21:26'),
(264, 4, 'حاجی مشتاق', '', '', '001122554403', '635', 'درمنگی', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-24 22:34:59', '2021-09-24 23:20:18'),
(265, 4, 'عمران اینڈ کامران', '', '', '03413007152', '636', 'رابی سنٹر', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-24 22:38:18', '2021-09-24 22:38:18'),
(266, 4, 'فضل ربی', '', '', '03159597114', '637', 'چارسدہ', 'چارسدہ', '', '', '', 0, NULL, 1, '2021-09-24 22:39:18', '2021-09-24 22:39:18'),
(267, 4, 'جنت گل', '', '', '03348419757', '638', 'کھاتہ 563', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-24 22:41:14', '2021-09-24 22:41:14'),
(268, 4, 'M تاج', '', '', '03335360176', '638', 'کاہی', 'کاہی', '', '', '', 0, NULL, 1, '2021-09-24 22:42:53', '2021-09-24 22:42:53'),
(269, 4, 'حضرت علی', '', '', '03339589098', '640', 'فارس بازار', 'پشاور', '', '', '', 0, NULL, 1, '2021-09-24 22:45:02', '2021-09-24 22:45:02'),
(270, 4, 'طارق اینڈ واقف', '', '', '00870145632', '386', 'دوابہ', 'دوابہ', '', '', '', 0, NULL, 1, '2021-09-24 22:51:45', '2021-09-24 22:51:45'),
(271, 4, 'طیب سلیمان', '', '', '03369404458', '158', 'ورستہ چوک سمانہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-09-24 23:01:59', '2021-09-27 19:05:43'),
(272, 2, 'عبدلوالی & زمان', '', '', '03365893464', '102', 'آمے مارکیٹ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-09-25 15:24:33', '2021-11-07 16:19:53'),
(280, 2, 'اورنگزیب', '', '', '03349074316', '194', 'بسمنٹ فلور ملا پلازہ مدرسہ روڈ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-10-07 15:14:03', '2021-10-07 15:14:03'),
(281, 2, 'جمیل ٹیلر', '', '', '03339646454', '129', 'مین بازار نزد امین جان', 'ہنگو', '', '', '', 0, NULL, 1, '2021-10-07 15:20:21', '2021-11-02 19:33:22'),
(282, 2, 'سید امین', '', '', '11111111', '107', 'قریشی مارکیٹ', 'ہنگو', '', '', '', 0, NULL, 1, '2021-10-07 15:27:12', '2021-11-02 19:27:55'),
(283, 2, 'مجیب  کاہی', '', '', '03364445000', '336', 'کاہی', 'کاہی', '', '', '', 0, NULL, 1, '2021-10-07 15:32:56', '2021-10-07 15:32:56'),
(284, 2, 'Test', 'Test', '', '03464698773', '910', 'Test', 'Test', '', '', '', -169875, NULL, 1, '2021-10-09 18:04:28', '2021-11-20 16:02:44');

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
(1, 'Old Customer', '0', 0, '2020-11-16 09:49:37', '2021-06-17 16:00:01'),
(2, 'ہفتہ واری', '0', 1, '2021-06-17 16:02:18', '2021-09-24 19:16:31'),
(3, 'پشاور', '0', 1, '2021-06-17 16:03:01', '2021-06-17 16:03:01'),
(4, 'ریکوری', '0', 1, '2021-09-23 14:11:14', '2021-09-23 14:11:14');

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
  `debit` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `amount`, `debit`, `customer_id`, `user_id`, `note`, `my_status`, `created_at`, `updated_at`) VALUES
(1, 19400, 0, 284, 1, 'Ref No. sr-20211123-111938, Sale note is ', 0, '2021-11-23 06:19:38', '2021-11-23 06:19:38'),
(2, 19400, 0, 284, 1, 'Ref No. rr-20211123-112048, Sale returened  ', 0, '2021-11-23 06:20:48', '2021-11-23 06:20:48'),
(3, 29100, 0, 284, 1, 'Ref No. sr-20211123-112402, Sale note is ', 0, '2021-11-23 06:24:02', '2021-11-23 06:24:02'),
(4, 24900, 0, 284, 1, 'Ref No. rr-20211123-112646, Sale returened  ', 0, '2021-11-23 06:26:46', '2021-11-23 06:26:46'),
(5, 2800, 0, 284, 1, 'Ref No. rr-20211123-123349, Sale returened  ', 0, '2021-11-23 07:33:49', '2021-11-23 07:33:49'),
(6, 91275, 0, 284, 1, 'Ref No. rr-20211125-104707, Sale returened  ', 0, '2021-11-25 05:47:07', '2021-11-25 05:47:07'),
(7, 630, 0, 284, 1, 'Ref No. rr-20211125-053405, Sale returened  ', 0, '2021-11-25 12:34:05', '2021-11-25 12:34:05'),
(8, 1470, 0, 284, 1, 'Ref No. rr-20211125-054956, Sale returened  ', 0, '2021-11-25 12:49:56', '2021-11-25 12:49:56'),
(9, 29400, 0, 284, 1, 'Ref No. rr-20211125-055036, Sale returened  ', 0, '2021-11-25 12:50:36', '2021-11-25 12:50:36'),
(10, 150, 0, 8, 1, 'Ref No. sr-20220106-022923, Sale note is ', 0, '2022-01-06 09:29:23', '2022-01-06 09:29:23'),
(11, 150, 0, 8, 1, 'Ref No. sr-20220106-023335, Sale note is ', 0, '2022-01-06 09:33:35', '2022-01-06 09:33:35');

--
-- Triggers `deposits`
--
DELIMITER $$
CREATE TRIGGER `deposit_triger` AFTER INSERT ON `deposits` FOR EACH ROW BEGIN

DECLARE my_status integer;
DECLARE minimum_sale_id integer;
DECLARE payment_id integer;
DECLARE receive_amount decimal(10,2); 
DECLARE receive_amount_from integer; 
DECLARE grand_total_sale decimal(10,2); 
DECLARE receive_amount_one decimal(10,2); 
DECLARE remaining_amount_of_sale decimal(10,2); 
DECLARE paid_amount_sale decimal(10,2); 
DECLARE paid_amount decimal(10,2); 
DECLARE payment_reference varchar(50);
DECLARE account_id decimal(10,2);
DECLARE total_balance double;


IF NEW.`my_status` = 1 THEN
IF NEW.amount OR NEW.debit > 0 THEN

SET @account_id := (SELECT `id` FROM `accounts` WHERE `is_default` = 1 AND `is_active` = 1);

UPDATE `accounts` SET `total_balance` = (SELECT `total_balance`+ (NEW.amount - NEW.debit) FROM `accounts` WHERE `is_default` = 1 AND `is_active` = 1) WHERE `is_default` = 1 AND `is_active` = 1;

SET @receive_amount := NEW.`amount`;
SET @paid_amount :=  NEW.`debit`;

IF @paid_amount > 0 THEN
INSERT INTO `payments`(`payment_reference`, `user_id`, `purchase_id`, `sale_id`,`customer_id`, `seller_id`,`account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES (CONCAT('Payment Given',current_timestamp()),NEW.`user_id`,NULL,NULL,NEW.customer_id,NULL,@account_id,@receive_amount,@paid_amount,'CASH',NEW.`note`,current_timestamp(),current_timestamp());
ELSE 

SET @payment_reference := NEW.`note`;


SET @minimum_sale_id := (SELECT MIN(`id`) FROM `sales` WHERE (grand_total - paid_amount) > 0 AND `customer_id` = NEW.`customer_id`);

  IF @minimum_sale_id IS NOT NULL THEN 

REPEAT  
    
    SET @minimum_sale_id := (SELECT MIN(`id`) FROM `sales` WHERE (grand_total - paid_amount) > 0 AND `customer_id` = NEW.`customer_id`);
    
       SET @paid_amount_sale := (SELECT `paid_amount` FROM `sales` WHERE `id` = @minimum_sale_id);
    SET @grand_total_sale := (SELECT `grand_total` FROM `sales` WHERE `id` = @minimum_sale_id);
    SET @payment_reference := (SELECT `reference_no` FROM `sales` WHERE `id` = @minimum_sale_id);
    
 INSERT INTO `payments`(`payment_reference`, `user_id`, `purchase_id`, `sale_id`,`customer_id`, `seller_id`,`account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES (CONCAT('old payment ',current_timestamp()),NEW.`user_id`,NULL,NULL,NEW.customer_id,NULL,@account_id,@receive_amount,0,'CASH',NEW.`note`,current_timestamp(),current_timestamp());
    
    IF @receive_amount > 0 THEN

    SET @remaining_amount_of_sale := @grand_total_sale - @paid_amount_sale;
    
    IF @remaining_amount_of_sale < @receive_amount THEN
     SET @receive_amount_one :=  @receive_amount - @remaining_amount_of_sale;
     SET @receive_amount := CONVERT (@receive_amount_one, DECIMAL(10,2));
     SET @paid_amount_sale := CONVERT(@paid_amount_sale + @remaining_amount_of_sale, DECIMAL(10,2));

           UPDATE `sales` SET `paid_amount` = @paid_amount_sale, `payment_status` = 4, `update_status` = 1 WHERE `id` = @minimum_sale_id;
           
      SET @payment_id := (SELECT `id` FROM `payments` WHERE `payment_reference` = @payment_reference);
      IF @payment_id > 0 THEN
      
      UPDATE `payments` SET `user_id` = NEW.`user_id`,`account_id` = @account_id,`amount` = @paid_amount_sale,`change` = @remaining_amount_of_sale,`updated_at` = current_timestamp() WHERE `id` = @payment_id;
      ELSE 
      
           
           INSERT INTO `payments`(`payment_reference`, `user_id`, `purchase_id`, `sale_id`, `account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES (@payment_reference,NEW.`user_id`,NULL,@minimum_sale_id,@account_id,@receive_amount_one,@remaining_amount_of_sale,'CASH',NEW.`note`,current_timestamp(),current_timestamp());
           
        END IF;         
    ELSE 
          SET @paid_amount_sale :=  @paid_amount_sale + @receive_amount;
          UPDATE `sales` SET `paid_amount` = @paid_amount_sale,`payment_status` = 3,`update_status` = 1 WHERE `id` = @minimum_sale_id;
          
          SET @payment_id := (SELECT `id` FROM `payments` WHERE `payment_reference` = @payment_reference);
      IF @payment_id > 0 THEN
      
      UPDATE `payments` SET `user_id` = NEW.`user_id`,`account_id` = @account_id,`amount` = @paid_amount_sale,`change` = 0,`updated_at` = current_timestamp() WHERE `id` = @payment_id;
      ELSE 
          
INSERT INTO `payments`(`payment_reference`, `user_id`, `purchase_id`, `sale_id`, `account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES (@payment_reference,NEW.`user_id`,NULL,@minimum_sale_id,@account_id,@receive_amount,0,'CASH',NEW.`note`,current_timestamp(),current_timestamp());
             END IF;   
          SET @receive_amount := 0;
          
     END IF;
        
    END IF;
   UNTIL @receive_amount = 0 
END REPEAT;
 ELSE
 INSERT INTO `payments`(`payment_reference`, `user_id`, `purchase_id`, `sale_id`,`customer_id`, `seller_id`,`account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES (CONCAT('old payment ',current_timestamp()),NEW.`user_id`,NULL,NULL,NEW.customer_id,NULL,@account_id,@receive_amount,0,'CASH',NEW.`note`,current_timestamp(),current_timestamp());
 
END IF;
END IF;
END IF;
END IF;
INSERT INTO `check_data`(`detail`) VALUES ('deposit_triger');
END
$$
DELIMITER ;

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

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `department_id`, `user_id`, `image`, `address`, `city`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Ibrahim', 'ibrahimokz101@gmail.com', '03025475101', 2, 20, 'ibrahimokz101gmailcom.jpg', 'Hangu', 'Hangu', 'Pakistan', 1, '2021-10-07 18:06:40', '2021-10-07 18:06:40');

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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '12246507', 'Fair', 1, '2021-09-28 19:44:56', '2021-09-28 19:44:56');

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
(1, 'Al Hafiz Cloth', 'logo.png', 'Rs', 'own', 'd/m/Y', 'blue.css', '2018-07-06 06:13:11', '2021-08-24 16:16:10', 'prefix');

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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63);

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
  `payment_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no_ref',
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `customer_id`, `seller_id`, `account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
(1, 'pr-20211123-111808', 1, 1, NULL, NULL, 1, 6, 0, 153500, 'CASH', '', '2021-11-23 06:18:08', '2021-11-23 06:18:08'),
(2, 'spr-20211123-111938', 1, NULL, 1, 284, NULL, 6, 19400, 0, 'Cash', '', '2021-11-23 06:19:38', '2021-11-23 06:19:38'),
(3, 'spr-20211123-112402', 1, NULL, 2, 284, NULL, 6, 29100, 0, 'Cash', '', '2021-11-23 06:24:02', '2021-11-23 06:24:02'),
(4, 'Payment Given-2021-11-29 11:26:45', 1, NULL, NULL, NULL, 2, 6, 0, 0, 'CASH', '', '2021-11-29 06:26:45', '2021-11-29 06:26:45'),
(5, 'spr-20220106-023335', 1, NULL, 4, 8, NULL, 6, 150, 0, 'Cash', '', '2022-01-06 09:33:35', '2022-01-06 09:33:35');

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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(90, 'warehouse-report', 'web', '2019-10-22 06:00:23', '2019-10-22 06:00:23'),
(91, 'stock-report', 'web', '2021-10-06 01:33:54', '2021-10-06 01:33:54');

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
(1, 2, 1, 1, 4, 1, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 03:17:04', '2021-06-15 18:31:07');

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
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `sale_sub_unit_id` int(11) NOT NULL,
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
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `supplier_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `sale_sub_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `featured`, `product_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`) VALUES
(23, 'سلیمانی', '101', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '130', '140', 24, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 22:51:01', '2021-11-25 12:50:36'),
(24, 'گریس دھنک', '102', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '160', '165', 25, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 22:55:32', '2022-01-06 09:33:35'),
(25, 'پراڈو', '103', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '180', '185', 22, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 22:59:02', '2021-11-23 06:35:01'),
(26, 'سٹار لایيٹ', '104', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '180', '185', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 23:02:41', '2021-11-20 09:01:53'),
(27, 'آسکر', '106', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '185', '190', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 23:07:54', '2021-11-09 15:05:17'),
(28, 'زعفران', '109', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '195', '200', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 23:10:59', '2021-11-09 20:15:50'),
(29, 'بوسکی', '110', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '200', '205', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 23:11:57', '2021-11-09 20:15:50'),
(30, 'شبیر سارجنٹ', '114', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '230', '240', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 23:14:23', '2021-10-27 21:02:26'),
(31, 'گریس پاسو', '115', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '240', '250', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 23:22:24', '2021-10-27 21:04:17'),
(32, 'ویکٹری', '117', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '205', '215', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 23:24:37', '2021-10-27 21:06:26'),
(33, 'سگما', '116', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '225', '235', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 23:26:35', '2021-10-27 21:05:26'),
(34, 'فنڈی', '119', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '240', '250', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-16 23:29:46', '2021-10-27 21:10:10'),
(35, 'کارٹر', '118', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '235', '245', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 13:56:50', '2021-10-27 21:07:48'),
(36, 'گریس پارس', '124', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '270', '280', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 14:53:36', '2021-10-27 21:12:05'),
(37, 'کیپری', '128', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '285', '295', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 14:54:45', '2021-10-27 21:17:34'),
(38, 'عجوہ', '126', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '275', '285', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 14:56:06', '2021-10-27 21:14:13'),
(39, 'زم زما', '127', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '300', '315', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '<p><br data-mce-bogus=@1@></p>', 1, '2021-06-17 14:57:55', '2021-10-27 21:16:44'),
(41, 'شبیر کیمری', '161', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '225', '235', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:05:53', '2021-10-27 21:33:03'),
(42, 'رینببو', '162', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '235', '250', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:08:17', '2021-09-08 13:52:21'),
(43, 'بسنتی', '163', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '265', '275', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:09:25', '2021-10-27 21:33:40'),
(44, 'بریزہ کاٹن', '151', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '275', '285', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:26:18', '2021-10-27 21:25:01'),
(45, 'مہاراجہ کاٹن', '152', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '270', '285', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-06-17 15:27:35', '2021-09-04 15:31:01'),
(46, 'محترم ڈیزاین کاٹن', '153', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '330', '350', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:30:11', '2021-10-27 21:28:49'),
(47, 'گلیٹر چمک کاٹن', '154', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '385', '405', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:32:11', '2021-10-27 21:32:17'),
(48, 'مہاراجہ ڈبہ کاٹن', '155', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '320', '400', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:33:57', '2021-09-08 13:47:13'),
(49, 'محترم ڈیزاین ڈبہ کاٹن', '156', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '380', '430', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:35:57', '2021-09-08 13:47:32'),
(50, 'گلیٹر چمک ڈدبہ کاٹن', '157', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '450', '500', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:37:54', '2021-09-08 13:47:54'),
(51, 'بلیک ٹایيگر', '171', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '230', '245', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:41:17', '2021-10-27 21:34:09'),
(52, 'پلیک بیری', '800', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '290', '300', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 0, '2021-06-17 15:42:41', '2021-10-28 14:39:08'),
(53, 'بلیو بیری', '174', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '300', '325', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:43:48', '2021-09-08 13:43:00'),
(54, 'اول سثار', '173', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '315', '325', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:45:20', '2021-10-27 21:35:28'),
(55, 'اٹالین وول', '197', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '370', '390', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-06-17 15:46:44', '2021-09-08 13:37:05'),
(56, 'نلوم', '876', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '55', '77', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2021-06-18 13:55:08', '2021-06-18 14:00:45'),
(57, 'آن لاين', '111', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '200', '205', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-08-09 15:37:46', '2021-10-27 20:14:23'),
(58, 'D آن لاين', '112', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '210', '220', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-08-09 15:39:47', '2021-10-27 20:14:48'),
(59, 'جک جل', '201', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '155', '165', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-08-09 15:45:03', '2021-10-28 14:08:53'),
(60, 'لال قلعہ', '202', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '147', '160', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-08-09 19:40:47', '2021-10-28 14:10:21'),
(61, 'نواب', '203', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '185', '195', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-08-09 19:42:48', '2021-10-28 14:12:08'),
(62, 'میٹرو', '204', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '170', '175', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-08-09 19:43:42', '2021-09-04 20:07:24'),
(63, 'فرسٹ پوزیشن', '205', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '180', '185', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-08-09 19:45:47', '2021-08-09 19:45:47'),
(64, 'انمول ہیرا', '206', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '252', '260', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-08-09 19:46:47', '2021-10-28 14:13:03'),
(65, 'سینیٹر', '207', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '240', '250', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-08-09 19:47:36', '2021-09-04 20:08:36'),
(66, 'المصری 4000', '208', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '225', '235', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-08-09 19:50:08', '2021-09-04 15:28:38'),
(67, 'المصری 11000', '209', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '245', '252', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-08-09 20:02:26', '2021-09-06 19:59:02'),
(68, 'رايس', '210', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '250', '260', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-08-09 20:04:07', '2021-10-28 14:15:03'),
(69, 'گل احمد', '250', 'standard', 'C128', 3, 3, 1, 1, 1, 1, 2, '190', '195', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-02 18:59:56', '2021-10-11 20:15:55'),
(70, 'سواتی وولل', '193', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '245', '260', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-03 23:23:52', '2021-09-08 13:33:42'),
(71, 'بلیک سٹار', '172', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '320', '330', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-03 23:33:30', '2021-10-27 21:34:38'),
(72, 'پشمینہ وول', '194', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '295', '315', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-03 23:36:45', '2021-09-08 13:35:02'),
(73, 'امریکن وول', '196', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '350', '370', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-03 23:39:10', '2021-09-08 13:36:13'),
(74, 'لندن ٹراپیکل', '195', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '310', '330', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-03 23:41:19', '2021-09-08 13:35:39'),
(75, 'شبیر گولڈ', '211', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '235', '240', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 03:06:11', '2021-10-28 14:16:13'),
(76, 'KSM', '256', 'standard', 'C128', 3, 3, 1, 1, 1, 1, 2, '200', '210', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 03:26:35', '2021-10-28 14:59:02'),
(77, '1 اول سٹار', '175', 'standard', 'C128', 1, 1, 1, 1, 1, 0, 1, '320', '350', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 03:34:37', '2021-11-13 15:12:52'),
(78, 'گریس بوس', '191', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '270', '280', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 03:38:05', '2021-10-27 21:37:29'),
(79, 'سرینہ  سٹار', '192', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '270', '280', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 03:43:38', '2021-10-27 21:38:10'),
(80, 'گریس مرجان', '190', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '270', '280', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '<p><br data-mce-bogus=@1@></p>', 1, '2021-09-04 14:08:45', '2021-09-08 13:49:29'),
(81, 'مصوئیر', '189', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '285', '300', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:10:22', '2021-10-27 21:36:45'),
(82, 'D گریس پارس', '130', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '335', '350', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:15:18', '2021-10-27 21:20:19'),
(83, 'چانسلر', '108', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '200', '210', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:16:27', '2021-11-09 20:15:50'),
(84, 'بونانزا', '188', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '200', '210', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:17:26', '2021-10-27 21:36:07'),
(85, 'وول آئیکان', '301', 'standard', 'C128', 4, 4, 1, 1, 1, 1, 2, '400', '420', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '<p><br data-mce-bogus=@1@></p>', 1, '2021-09-04 14:29:02', '2021-09-04 15:10:18'),
(86, 'بارسلونا وول', '302', 'standard', 'C128', 4, 4, 1, 1, 1, 1, 2, '380', '420', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 14:30:12', '2021-09-04 15:11:46'),
(87, 'وول ڈائیمنڈ', '303', 'standard', 'C128', 4, 4, 1, 1, 1, 1, 2, '380', '400', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:32:52', '2021-09-04 15:12:56'),
(88, 'لنک روڈ', '304', 'standard', 'C128', 4, 4, 1, 1, 1, 1, 2, '350', '370', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:34:26', '2021-09-04 15:14:06'),
(89, 'فرسٹ وول', '305', 'standard', 'C128', 4, 4, 1, 1, 1, 1, 2, '400', '420', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 14:36:24', '2021-09-04 15:15:11'),
(90, 'فلش وول', '306', 'standard', 'C128', 4, 4, 1, 1, 1, 1, 2, '400', '430', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 14:40:12', '2021-09-04 15:16:20'),
(91, 'استنبول وول', '307', 'standard', 'C128', 4, 4, 1, 1, 1, 1, 2, '400', '430', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:41:54', '2021-10-28 14:20:54'),
(92, 'وول انجل', '308', 'standard', 'C128', 4, 4, 1, 1, 1, 1, 2, '400', '430', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 14:43:03', '2021-09-04 15:24:42'),
(93, 'جائے وول', '309', 'standard', 'C128', 4, 4, 1, 1, 1, 1, 2, '365', '385', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 14:44:11', '2021-10-12 14:18:01'),
(94, 'سلطان', '141', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '190', '200', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:46:07', '2021-09-20 22:52:19'),
(95, 'مبروم', '125', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '260', '270', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:48:56', '2021-09-22 21:01:46'),
(96, 'فارٹونر', '351', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '340', '360', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2021-09-04 14:50:08', '2021-09-24 19:50:44'),
(97, 'کستوری', '129', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '295', '305', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:53:56', '2021-10-27 21:19:05'),
(98, 'چیری', '142', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '270', '280', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:55:44', '2021-10-27 21:23:54'),
(99, 'بگ پروفائیل', '352', 'standard', 'C128', 4, 4, 1, 1, 1, 1, 2, '320', '340', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:57:02', '2021-10-28 14:26:46'),
(100, 'صلاد ٹکس', '252', 'standard', 'C128', 3, 3, 1, 1, 1, 1, 2, '140', '160', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 14:58:01', '2021-10-28 14:54:44'),
(101, 'ہاسٹن', '354', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '340', '360', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 14:59:03', '2021-09-04 16:01:30'),
(102, 'ایوارڈ', '355', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '300', '320', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 14:59:54', '2021-09-04 16:02:18'),
(103, 'ایم آر کراچی', '356', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '340', '360', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 15:00:47', '2021-09-04 16:03:00'),
(104, 'مازلو', '357', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '340', '360', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 15:01:34', '2021-09-08 21:39:03'),
(105, 'L یونیفارم', '253', 'standard', 'C128', 3, 3, 1, 1, 1, 1, 2, '115', '125', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 15:03:25', '2021-10-28 14:55:40'),
(106, 'D یونیفارم', '254', 'standard', 'C128', 3, 3, 1, 1, 1, 1, 2, '125', '135', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 15:04:14', '2021-10-28 14:56:30'),
(107, 'روح افزا', '212', 'standard', 'C128', 2, 2, 1, 1, 1, 1, 2, '320', '330', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '<p><br data-mce-bogus=@1@></p>', 1, '2021-09-04 15:55:55', '2021-10-28 14:16:45'),
(108, 'آمبر ڈیزائن', '143', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '180', '185', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 20:13:37', '2021-10-27 20:56:00'),
(109, 'مصری', '107', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '205', '210', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 20:38:42', '2021-11-09 15:05:17'),
(110, 'سٹورم  شارٹنگ', '358', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '290', '310', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 21:43:38', '2021-09-04 21:46:02'),
(111, 'چاند تارہ', '359', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '300', '320', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 21:47:29', '2021-09-04 22:03:23'),
(112, 'سپر نظارہ', '360', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '300', '320', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 21:53:04', '2021-10-29 22:13:21'),
(113, 'پونورامہ', '361', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '330', '350', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-04 21:54:49', '2021-09-04 22:10:04'),
(114, 'ہنگ  آؤٹ', '362', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '300', '320', 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-04 22:05:17', '2021-09-06 16:49:26'),
(115, 'کاٹن کلکشن', '391', 'standard', 'C128', 6, 6, 1, 1, 1, 1, 2, '300', '320', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-06 16:57:21', '2021-09-24 19:56:36'),
(116, 'کالہ سفایئر', '255', 'standard', 'C128', 3, 3, 1, 1, 1, 1, 2, '120', '130', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-06 17:02:58', '2021-10-28 14:57:53'),
(117, 'Lite یونیفارم', '120', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '120', '130', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-24 19:33:22', '2021-10-27 21:11:02'),
(118, 'Dark یونیفارم', '121', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '131', '140', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-24 19:34:56', '2021-09-24 19:34:56'),
(119, 'کوہ نور', '401', 'standard', 'C128', 8, 8, 1, 1, 1, 1, 2, '215', '240', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '', 1, '2021-09-24 20:01:12', '2021-09-24 20:43:12'),
(120, 'کاجو وول', '402', 'standard', 'C128', 8, 8, 1, 1, 1, 1, 2, '310', '330', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-24 20:06:53', '2021-10-07 19:33:56'),
(121, 'موریتانیہ وول', '365', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '340', '355', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-24 20:42:49', '2021-09-24 20:42:49'),
(122, 'آرمینیہ وول', '366', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '425', '440', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-24 20:44:56', '2021-09-24 20:44:56'),
(123, 'روسیٹہ وول', '367', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '325', '340', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-24 20:46:03', '2021-09-24 20:46:03'),
(124, 'سپنش وول', '368', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '340', '355', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-24 22:01:09', '2021-09-24 22:01:09'),
(125, 'کوسمو وول', '369', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '490', '405', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-24 22:03:11', '2021-09-24 22:03:11'),
(126, 'فرنچ وول', '370', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '340', '355', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-24 22:04:02', '2021-09-24 22:04:02'),
(127, 'مردان وول', '371', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '340', '355', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-24 22:04:52', '2021-09-24 22:04:52'),
(128, 'پولیویہ وول', '372', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '385', '400', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-09-24 22:09:58', '2021-09-24 22:09:58'),
(130, 'test p', '91235701', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '100', '110', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2021-10-06 16:26:00', '2021-11-12 22:18:50'),
(131, 'testing123', '42050992', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '2000', '3000', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2021-10-26 20:05:06', '2021-11-12 22:19:00'),
(132, 'swana', '1515', 'standard', 'C128', 6, 6, 1, 1, 1, 1, 2, '150', '160', 0, 15, NULL, '', '2021-10-26', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2021-10-26 20:19:42', '2021-10-27 21:29:16'),
(133, 'xyz', '83737059', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '100', '110', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2021-10-26 21:06:09', '2021-10-27 20:02:54'),
(134, 'جارڈن وول', '373', 'standard', 'C128', 5, 5, 1, 1, 1, 1, 2, '340', '360', 0, 0, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-10-28 14:37:08', '2021-10-28 14:37:08'),
(135, 'Test 11', '23156799', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '100', '110', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2021-11-13 15:59:27', '2021-11-13 15:59:27'),
(136, 'Test 11', '23156799', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 2, '100', '110', 0, 10, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2021-11-13 15:59:27', '2021-11-13 18:00:26'),
(137, 'test', '2222', 'standard', 'C128', 1, 1, 1, 1, 1, 1, 1, '110', '110', 0, 120, NULL, '', '', '0000-00-00', 0, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2021-11-13 16:21:26', '2021-11-13 22:44:15');

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
  `size` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

--
-- Dumping data for table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `variant_id`, `qty`, `size`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 23, NULL, 10, '20', 10, 1, 130, 0, 0, 0, 26000, '2021-11-23 06:18:08', '2021-11-23 06:18:08'),
(2, 1, 24, NULL, 15, '25', 15, 1, 160, 0, 0, 0, 60000, '2021-11-23 06:18:08', '2021-11-23 06:18:08'),
(3, 1, 25, NULL, 25, '15', 25, 1, 180, 0, 0, 0, 67500, '2021-11-23 06:18:08', '2021-11-23 06:18:08');

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
  `sub_qty` double NOT NULL,
  `size` int(11) NOT NULL DEFAULT 0,
  `sale_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SALE',
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `net_unit_cost` double NOT NULL,
  `total_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_returns`
--

INSERT INTO `product_returns` (`id`, `return_id`, `product_id`, `variant_id`, `qty`, `sub_qty`, `size`, `sale_type`, `sale_unit_id`, `net_unit_price`, `net_unit_cost`, `total_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 23, NULL, 2, 0, 20, 'WHOLE_SALE', 1, 140, 130, 5200, 0, 0, 0, 5600, '2021-11-23 06:20:48', '2021-11-23 06:20:48'),
(2, 1, 24, NULL, 2, 0, 25, 'WHOLE_SALE', 1, 165, 160, 8000, 0, 0, 0, 8250, '2021-11-23 06:20:48', '2021-11-23 06:20:48'),
(3, 1, 25, NULL, 2, 0, 15, 'WHOLE_SALE', 1, 185, 180, 5400, 0, 0, 0, 5550, '2021-11-23 06:20:48', '2021-11-23 06:20:48'),
(4, 2, 23, NULL, 1, 5, 20, 'WHOLE_SALE', 1, 140, 130, 3900, 0, 0, 0, 4200, '2021-11-23 06:26:46', '2021-11-23 06:26:46'),
(5, 2, 24, NULL, 3, 0, 25, 'WHOLE_SALE', 1, 165, 160, 12000, 0, 0, 0, 12375, '2021-11-23 06:26:46', '2021-11-23 06:26:46'),
(6, 2, 25, NULL, 3, 0, 15, 'WHOLE_SALE', 1, 185, 180, 8100, 0, 0, 0, 8325, '2021-11-23 06:26:46', '2021-11-23 06:26:46'),
(7, 3, 23, NULL, 1, 0, 20, 'WHOLE_SALE', 1, 140, 130, 2600, 0, 0, 0, 2800, '2021-11-23 07:33:49', '2021-11-23 07:33:49'),
(8, 4, 23, NULL, 10, 50, 20, 'WHOLE_SALE', 1, 140, 130, 27300, 0, 0, 0, 29400, '2021-11-25 05:47:07', '2021-11-25 05:47:07'),
(9, 4, 24, NULL, 15, 0, 25, 'WHOLE_SALE', 1, 165, 160, 60000, 0, 0, 0, 61875, '2021-11-25 05:47:07', '2021-11-25 05:47:07'),
(10, 5, 23, NULL, 4, 50, 20, 'SALE', 1, 140, 130, 585, 0, 0, 0, 630, '2021-11-25 12:34:06', '2021-11-25 12:34:06'),
(11, 6, 23, NULL, 0, 10.5, 20, 'SALE', 1, 140, 130, 1365, 0, 0, 0, 1470, '2021-11-25 12:49:56', '2021-11-25 12:49:56'),
(12, 7, 23, NULL, 10, 50, 20, 'WHOLE_SALE', 1, 140, 130, 27300, 0, 0, 0, 29400, '2021-11-25 12:50:36', '2021-11-25 12:50:36');

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
  `size` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `total_cost` double NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `variant_id`, `qty`, `size`, `sale_unit_id`, `net_unit_price`, `total_cost`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 23, NULL, 2, '20', 1, 140, 5200, 130, 0, 0, 0, 5600, '2021-11-23 06:19:38', '2021-11-23 06:19:38'),
(2, 1, 24, NULL, 2, '25', 1, 165, 8000, 160, 0, 0, 0, 8250, '2021-11-23 06:19:38', '2021-11-23 06:19:38'),
(3, 1, 25, NULL, 2, '15', 1, 185, 5400, 180, 0, 0, 0, 5550, '2021-11-23 06:19:38', '2021-11-23 06:19:38'),
(4, 2, 23, NULL, 3, '20', 1, 140, 7800, 130, 0, 0, 0, 8400, '2021-11-23 06:24:02', '2021-11-23 06:24:02'),
(5, 2, 24, NULL, 3, '25', 1, 165, 9750, 130, 0, 0, 0, 12375, '2021-11-23 06:24:02', '2021-11-23 06:24:02'),
(6, 2, 25, NULL, 3, '15', 1, 185, 7200, 160, 0, 0, 0, 8325, '2021-11-23 06:24:02', '2021-11-23 06:24:02'),
(7, 4, 24, NULL, 1, '25', 1, 150, 130, 130, 0, 0, 0, 150, '2022-01-06 09:33:35', '2022-01-06 09:33:35');

-- --------------------------------------------------------

--
-- Stand-in structure for view `product_stock_view`
-- (See below for the actual view)
--
CREATE TABLE `product_stock_view` (
`name` varchar(191)
,`code` varchar(191)
,`cost` varchar(191)
,`size` double
,`product_details` text
,`warehouse_id` int(11)
,`qty` double
,`sub_qty` double
);

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
  `size` double NOT NULL,
  `sub_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `variant_id`, `warehouse_id`, `qty`, `size`, `sub_qty`, `created_at`, `updated_at`) VALUES
(1, '23', NULL, 1, 3, 20, '0', '2021-11-23 06:18:08', '2021-11-23 06:35:45'),
(2, '24', NULL, 1, 10, 25, '0', '2021-11-23 06:18:08', '2022-01-06 09:33:35'),
(3, '25', NULL, 1, 22, 15, '0', '2021-11-23 06:18:08', '2021-11-23 06:35:01');

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
  `paying_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `update_status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `paying_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`, `update_status`) VALUES
(1, 'pr-20211123-111808', 1, 1, 1, 3, 50, 0, 0, 153500, 0, 0, 0, 0, 153500, 153500, 0, 1, 4, NULL, '', '2021-11-23 06:18:08', '2021-11-23 06:18:08', 0);

--
-- Triggers `purchases`
--
DELIMITER $$
CREATE TRIGGER `delete_purchase_triger` BEFORE DELETE ON `purchases` FOR EACH ROW BEGIN
DECLARE m_credit integer;
DECLARE m_debit integer;
DECLARE m_amount integer;
DECLARE m_total_amount integer;

IF OLD.`paid_amount` IS NULL THEN
SET @m_debit := 0;
ELSE 
 SET @m_debit := OLD.`grand_total` - OLD.`paid_amount`;
END IF;

IF OLD.`grand_total` IS NULL THEN
SET @m_credit := 0;
ELSE 
 SET @m_credit := OLD.`paid_amount`;
END IF;

SET @m_amount := (SELECT `deposit` FROM `suppliers` WHERE `id` = OLD.`supplier_id`);
SET @m_total_amount := (@m_amount - @m_debit);

UPDATE `suppliers` SET `deposit`= @m_total_amount WHERE `id` = OLD.`supplier_id`;

 INSERT INTO `supplier_deposits`(`amount`, `debit`, `supplier_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES (@m_debit,@m_credit,OLD.`supplier_id`,OLD.`user_id`,CONCAT('Ref No. ', OLD.`reference_no`, ', Purchase deleted ',OLD.`note`),current_timestamp(),current_timestamp());
 
   INSERT INTO `check_data`(`detail`) VALUES ('delete_purchase_triger');

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_purchase` AFTER INSERT ON `purchases` FOR EACH ROW BEGIN
DECLARE m_credit integer;
DECLARE m_debit integer;
DECLARE m_amount integer;
DECLARE m_total_amount integer;
DECLARE account_id decimal(10,2);

IF NEW.`paid_amount` IS NULL THEN
SET @m_debit := 0;
ELSE 
 SET @m_debit := (NEW.`grand_total` - NEW.`paid_amount`);
END IF;

IF NEW.`paid_amount` IS NULL THEN
SET @m_credit := 0;
ELSE 
 SET @m_credit := NEW.`paid_amount`;
END IF;

SET @account_id := (SELECT `id` FROM `accounts` WHERE `is_default` = 1 AND `is_active` = 1);

INSERT INTO `payments`(`payment_reference`, `user_id`, `purchase_id`, `sale_id`,`customer_id`, `seller_id`, `account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES (NEW.`reference_no`,NEW.`user_id`,NEW.`id`,NULL,NULL,NEW.`supplier_id`,@account_id,NEW.`grand_total` -NEW.`paid_amount`,NEW.`paid_amount`,'CASH',NEW.`note`,current_timestamp(),current_timestamp());

SET @m_amount := (SELECT `deposit` FROM `suppliers` WHERE `id` = NEW.`supplier_id`);
SET @m_total_amount := (@m_amount + @m_debit);

UPDATE `suppliers` SET `deposit`= @m_total_amount WHERE `id` = NEW.`supplier_id`;
            
INSERT INTO `check_data`(`detail`) VALUES ('insert_purchase');       
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `purchase_update_triger` AFTER UPDATE ON `purchases` FOR EACH ROW BEGIN
DECLARE m_credit integer;
DECLARE m_debit integer;
DECLARE m_debit_old integer;
DECLARE m_amount integer;
DECLARE m_total_amount integer;


IF NEW.`update_status` = 0 THEN

IF NEW.`paid_amount` IS NULL THEN
SET @m_credit := 0;
ELSE 
 SET @m_credit := NEW.`paid_amount`;
END IF;

 SET @m_debit := (NEW.`grand_total` - @m_credit);

SET @m_debit_old := (OLD.`grand_total` - OLD.`paid_amount`);

SET @m_amount := (SELECT `deposit` FROM `suppliers` WHERE `id` = NEW.`supplier_id`);

SET @m_total_amount := (@m_amount - @m_debit_old);
SET @m_total_amount := (@m_total_amount + @m_debit);


UPDATE `suppliers` SET `deposit`= @m_total_amount WHERE `id` = NEW.`supplier_id`;

    INSERT INTO `supplier_deposits`(`amount`, `debit`, `supplier_id`, `user_id`, `note`,`my_status`,`created_at`, `updated_at`) VALUES (@m_credit,@m_debit,NEW.`supplier_id`,NEW.`user_id`,CONCAT('Ref No. ', NEW.`reference_no`, ', Purchase note is ',NEW.`note`),0,current_timestamp(),current_timestamp());

UPDATE `payments` SET `amount` = @m_debit , `change` = @m_credit,  `updated_at` = current_timestamp() WHERE `purchase_id` = NEW.`id`;
END IF;

INSERT INTO `check_data`(`detail`) VALUES ('purchase_update_triger called');
END
$$
DELIMITER ;

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
  `sub_qty` double NOT NULL,
  `size` int(11) NOT NULL DEFAULT 0,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_product_return`
--

INSERT INTO `purchase_product_return` (`id`, `return_id`, `product_id`, `variant_id`, `qty`, `sub_qty`, `size`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 23, NULL, 3, 0, 20, 1, 130, 0, 0, 0, 7800, '2021-11-23 06:35:01', '2021-11-23 06:35:01'),
(2, 1, 24, NULL, 3, 0, 25, 1, 160, 0, 0, 0, 12000, '2021-11-23 06:35:01', '2021-11-23 06:35:01'),
(3, 1, 25, NULL, 3, 0, 15, 1, 180, 0, 0, 0, 8100, '2021-11-23 06:35:01', '2021-11-23 06:35:01'),
(4, 2, 23, NULL, 1, 5, 20, 1, 130, 0, 0, 0, 3900, '2021-11-23 06:35:45', '2021-11-23 06:35:45'),
(5, 3, 23, NULL, 1, 0, 20, 1, 130, 0, 0, 0, 2600, '2021-11-23 07:35:42', '2021-11-23 07:35:42');

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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `sub_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `reference_no`, `user_id`, `customer_id`, `warehouse_id`, `biller_id`, `account_id`, `item`, `total_qty`, `sub_qty`, `total_discount`, `total_tax`, `total_price`, `total_cost`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(1, 'rr-20211123-112048', 1, 284, 1, 1, 6, 3, 6, 0, 0, 0, 19400, 18600, 0, 0, 19400, NULL, '', '', '2021-11-23 06:20:48', '2021-11-23 06:20:48'),
(2, 'rr-20211123-112646', 1, 284, 1, 1, 6, 3, 7, 5, 0, 0, 24900, 24000, 0, 0, 24900, NULL, '', '', '2021-11-23 06:26:46', '2021-11-23 06:26:46'),
(3, 'rr-20211123-123349', 1, 284, 1, 1, 6, 1, 1, 0, 0, 0, 2800, 2600, 0, 0, 2800, NULL, '', '', '2021-11-23 07:33:49', '2021-11-23 07:33:49'),
(4, 'rr-20211125-104707', 1, 284, 1, 1, 6, 2, 25, 5, 0, 0, 91275, 87300, 0, 0, 91275, NULL, '', '', '2021-11-25 05:47:07', '2021-11-25 05:47:07'),
(5, 'rr-20211125-053405', 1, 284, 1, 1, 6, 1, 0, 4.5, 0, 0, 630, 585, 0, 0, 630, NULL, '', '', '2021-11-25 12:34:05', '2021-11-25 12:34:05'),
(6, 'rr-20211125-054956', 1, 284, 1, 1, 6, 1, 0, 10.5, 0, 0, 1470, 1365, 0, 0, 1470, NULL, '', '', '2021-11-25 12:49:56', '2021-11-25 12:49:56'),
(7, 'rr-20211125-055036', 1, 284, 1, 1, 6, 1, 10, 5, 0, 0, 29400, 27300, 0, 0, 29400, NULL, '', '', '2021-11-25 12:50:36', '2021-11-25 12:50:36');

--
-- Triggers `returns`
--
DELIMITER $$
CREATE TRIGGER `return_delete` BEFORE DELETE ON `returns` FOR EACH ROW BEGIN

DECLARE m_sale_debit integer;
DECLARE m_amount_debit integer;
DECLARE m_amount_debit_final integer;
DECLARE m_sale_grand_total integer;
DECLARE m_sale_paid_amount integer;
DECLARE m_amount integer;


SET @m_amount := (SELECT `deposit` FROM `customers` WHERE `id` = OLD.`customer_id`);

SET @m_amount_debit_final := (@m_amount + OLD.`grand_total`);

UPDATE `customers` SET `deposit`= @m_amount_debit_final WHERE `id` = OLD.`customer_id`;

    INSERT INTO `deposits`(`amount`, `debit`, `customer_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES (0,OLD.`grand_total`,OLD.`customer_id`,OLD.`user_id`,CONCAT('Ref No. ', OLD.`reference_no`, ', Sale returened deleted  ',OLD.`return_note`),current_timestamp(),current_timestamp());
    
    INSERT INTO `check_data`(`detail`) VALUES ('return_delete triger called');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `return_triger` AFTER INSERT ON `returns` FOR EACH ROW BEGIN

DECLARE m_sale_debit integer;
DECLARE m_amount_debit integer;
DECLARE m_amount_debit_final integer;
DECLARE m_sale_grand_total integer;
DECLARE m_sale_paid_amount integer;
DECLARE m_amount integer;


SET @m_amount := (SELECT `deposit` FROM `customers` WHERE `id` = NEW.`customer_id`);

SET @m_amount_debit_final := (@m_amount - NEW.`grand_total`);

UPDATE `customers` SET `deposit`= @m_amount_debit_final WHERE `id` = NEW.`customer_id`;

    INSERT INTO `deposits`(`amount`, `debit`, `customer_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES (NEW.`grand_total`,0,NEW.`customer_id`,NEW.`user_id`,CONCAT('Ref No. ', NEW.`reference_no`, ', Sale returened  ',NEW.`return_note`),current_timestamp(),current_timestamp());
  
  INSERT INTO `check_data`(`detail`) VALUES ('return_triger');
END
$$
DELIMITER ;

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
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_purchases`
--

INSERT INTO `return_purchases` (`id`, `reference_no`, `supplier_id`, `warehouse_id`, `user_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(1, 'prr-20211123-113501', 1, 1, 1, 6, 3, 9, 0, 0, 27900, 0, 0, 27900, NULL, '', '', '2021-11-23 06:35:01', '2021-11-23 06:35:01'),
(2, 'prr-20211123-113545', 1, 1, 1, 6, 1, 1.5, 0, 0, 3900, 0, 0, 3900, NULL, '', '', '2021-11-23 06:35:45', '2021-11-23 06:35:45'),
(3, 'prr-20211123-123542', 1, 1, 1, 6, 1, 1, 0, 0, 2600, 0, 0, 2600, NULL, '', '', '2021-11-23 07:35:42', '2021-11-23 07:35:42');

--
-- Triggers `return_purchases`
--
DELIMITER $$
CREATE TRIGGER `return_purchase_delete` BEFORE DELETE ON `return_purchases` FOR EACH ROW BEGIN

DECLARE m_sale_debit integer;
DECLARE m_amount_debit integer;
DECLARE m_amount_debit_final integer;
DECLARE m_sale_grand_total integer;
DECLARE m_sale_paid_amount integer;
DECLARE m_amount integer;


SET @m_amount := (SELECT `deposit` FROM `suppliers` WHERE `id` = OLD.`supplier_id`);

SET @m_amount_debit_final := (@m_amount + OLD.`grand_total`);

UPDATE `suppliers` SET `deposit`= @m_amount_debit_final WHERE `id` = OLD.`supplier_id`;

    INSERT INTO `deposits`(`amount`, `debit`, `customer_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES (0,OLD.`grand_total`,OLD.`supplier_id`,OLD.`user_id`,CONCAT('Ref No. ', OLD.`reference_no`, ', Purchase returened deleted  ',OLD.`return_note`),current_timestamp(),current_timestamp());

INSERT INTO `check_data`(`detail`) VALUES ('return_purchase_delete');
    
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `return_purchase_triger` AFTER INSERT ON `return_purchases` FOR EACH ROW BEGIN

DECLARE m_sale_debit integer;
DECLARE m_amount_debit integer;
DECLARE m_amount_debit_final integer;
DECLARE m_sale_grand_total integer;
DECLARE m_sale_paid_amount integer;
DECLARE m_amount integer;


SET @m_amount := (SELECT `deposit` FROM `suppliers` WHERE `id` = NEW.`supplier_id`);

SET @m_amount_debit_final := (@m_amount - NEW.`grand_total`);

UPDATE `suppliers` SET `deposit`= @m_amount_debit_final WHERE `id` = NEW.`supplier_id`;

    INSERT INTO `supplier_deposits`(`amount`, `debit`, `supplier_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES (NEW.`grand_total`,0,NEW.`supplier_id`,NEW.`user_id`,CONCAT('Ref No. ', NEW.`reference_no`, ', Purchase returened ',NEW.`return_note`),current_timestamp(),current_timestamp());
    
        INSERT INTO `check_data`(`detail`) VALUES ('return_purchase_triger called');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `return_revenu`
-- (See below for the actual view)
--
CREATE TABLE `return_revenu` (
`date` timestamp
,`return_benifit` double
);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 00:05:27', '2018-06-02 00:05:27'),
(5, 'Super admin', 'Can acess all data', 'web', 1, '2021-06-15 17:48:11', '2021-06-15 17:48:11');

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
(4, 5),
(5, 1),
(5, 2),
(5, 5),
(6, 1),
(6, 2),
(6, 4),
(6, 5),
(7, 1),
(7, 2),
(7, 4),
(7, 5),
(8, 1),
(8, 2),
(8, 4),
(8, 5),
(9, 1),
(9, 2),
(9, 4),
(9, 5),
(10, 1),
(10, 2),
(10, 5),
(11, 1),
(11, 2),
(11, 5),
(12, 1),
(12, 2),
(12, 4),
(12, 5),
(13, 1),
(13, 2),
(13, 4),
(13, 5),
(14, 1),
(14, 2),
(14, 5),
(15, 1),
(15, 2),
(15, 5),
(16, 1),
(16, 2),
(16, 5),
(17, 1),
(17, 2),
(17, 5),
(18, 1),
(18, 2),
(18, 5),
(19, 1),
(19, 2),
(19, 5),
(20, 1),
(20, 2),
(20, 4),
(20, 5),
(21, 1),
(21, 2),
(21, 4),
(21, 5),
(22, 1),
(22, 2),
(22, 5),
(23, 1),
(23, 2),
(23, 5),
(24, 1),
(24, 2),
(24, 4),
(24, 5),
(25, 1),
(25, 2),
(25, 4),
(25, 5),
(26, 1),
(26, 2),
(26, 5),
(27, 1),
(27, 2),
(27, 5),
(28, 1),
(28, 2),
(28, 4),
(28, 5),
(29, 1),
(29, 2),
(29, 4),
(29, 5),
(30, 1),
(30, 2),
(30, 5),
(31, 1),
(31, 2),
(31, 5),
(32, 1),
(32, 2),
(32, 4),
(32, 5),
(33, 1),
(33, 2),
(33, 4),
(33, 5),
(34, 1),
(34, 2),
(34, 5),
(35, 1),
(35, 2),
(35, 5),
(36, 1),
(36, 2),
(36, 4),
(36, 5),
(37, 1),
(37, 2),
(37, 5),
(38, 1),
(38, 2),
(38, 5),
(39, 1),
(39, 2),
(39, 5),
(40, 1),
(40, 2),
(40, 5),
(41, 1),
(41, 2),
(41, 5),
(42, 1),
(42, 2),
(42, 5),
(43, 1),
(43, 2),
(43, 5),
(44, 1),
(44, 2),
(44, 5),
(45, 1),
(45, 2),
(45, 5),
(46, 1),
(46, 2),
(46, 5),
(47, 1),
(47, 2),
(47, 4),
(47, 5),
(48, 1),
(48, 2),
(48, 4),
(48, 5),
(49, 1),
(49, 2),
(49, 4),
(49, 5),
(50, 1),
(50, 2),
(50, 4),
(50, 5),
(51, 1),
(51, 2),
(51, 4),
(51, 5),
(52, 1),
(52, 2),
(52, 4),
(52, 5),
(53, 1),
(53, 2),
(53, 5),
(54, 1),
(54, 2),
(54, 5),
(55, 1),
(55, 2),
(55, 5),
(56, 1),
(56, 2),
(56, 5),
(57, 1),
(57, 2),
(57, 5),
(58, 1),
(58, 2),
(58, 5),
(59, 1),
(59, 2),
(59, 5),
(60, 1),
(60, 2),
(60, 5),
(61, 1),
(61, 2),
(61, 5),
(62, 1),
(62, 2),
(62, 5),
(63, 1),
(63, 2),
(63, 4),
(63, 5),
(64, 1),
(64, 2),
(64, 4),
(64, 5),
(65, 1),
(65, 2),
(65, 5),
(66, 1),
(66, 2),
(66, 5),
(67, 1),
(67, 2),
(67, 5),
(68, 1),
(68, 2),
(68, 5),
(69, 1),
(69, 2),
(69, 5),
(70, 1),
(70, 2),
(70, 5),
(71, 1),
(71, 2),
(71, 5),
(72, 1),
(72, 2),
(72, 5),
(73, 1),
(73, 2),
(73, 5),
(74, 1),
(74, 2),
(74, 5),
(75, 1),
(75, 2),
(75, 5),
(76, 1),
(76, 2),
(76, 5),
(77, 1),
(77, 2),
(77, 5),
(78, 1),
(78, 2),
(78, 4),
(78, 5),
(79, 1),
(79, 2),
(79, 4),
(79, 5),
(80, 1),
(80, 2),
(80, 5),
(81, 1),
(81, 2),
(81, 5),
(82, 1),
(82, 2),
(82, 5),
(83, 1),
(83, 5),
(84, 1),
(84, 2),
(84, 5),
(85, 1),
(85, 2),
(85, 5),
(86, 1),
(86, 2),
(86, 5),
(87, 1),
(87, 2),
(87, 5),
(88, 1),
(88, 2),
(88, 5),
(89, 1),
(89, 2),
(89, 5),
(90, 1),
(90, 2),
(90, 5),
(91, 1),
(91, 2);

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
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `discount_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `update_status` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `discount_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`, `update_status`) VALUES
(1, 'sr-20211123-111938', 1, 284, 1, 1, 3, 6, 0, 0, 19400, 19400, 18600, 0, 0, 0, NULL, NULL, 0, 1, 4, 1, NULL, 19400, '', '', '2021-11-23 06:19:38', '2021-11-23 06:19:38', 2),
(2, 'sr-20211123-112402', 1, 284, 1, 1, 3, 9, 0, 0, 29100, 29100, 24750, 0, 0, 0, NULL, NULL, 0, 1, 4, 1, NULL, 29100, '', '', '2021-11-23 06:24:02', '2021-11-23 06:24:02', 2),
(3, 'sr-20220106-022923', 1, 8, 1, 1, 1, 1, 0, 0, 150, 150, 130, 0, 0, 0, NULL, NULL, 0, 1, 4, 1, NULL, 150, '', '', '2022-01-06 09:29:23', '2022-01-06 09:29:23', 2),
(4, 'sr-20220106-023335', 1, 8, 1, 1, 1, 1, 0, 0, 150, 150, 130, 0, 0, 0, NULL, NULL, 0, 1, 4, 1, NULL, 150, '', '', '2022-01-06 09:33:35', '2022-01-06 09:33:35', 2);

--
-- Triggers `sales`
--
DELIMITER $$
CREATE TRIGGER `after_sale_insert` AFTER INSERT ON `sales` FOR EACH ROW BEGIN
DECLARE m_credit integer;
DECLARE m_debit integer;
DECLARE m_amount integer;
DECLARE m_total_amount integer;
DECLARE account_id decimal(10,2);

IF NEW.`paid_amount` IS NULL OR NEW.`paid_amount` = 0 THEN
SET @m_debit := NEW.`grand_total`;
SET @m_credit := 0;
ELSE 
 SET @m_debit := (NEW.`grand_total` - NEW.`paid_amount`);
  SET @m_credit := NEW.`paid_amount`;
END IF;


IF NEW.`paid_amount` = 0 THEN
SET @account_id := (SELECT `id` FROM `accounts` WHERE `is_default` = 1 AND `is_active` = 1);

INSERT INTO `payments`(`payment_reference`, `user_id`, `purchase_id`, `sale_id`,`customer_id`, `seller_id`,`account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES (NEW.`reference_no`,NEW.`user_id`,NULL,NULL,NEW.customer_id,NULL,@account_id,@m_credit,@m_debit,'Due Amount',NEW.`sale_note`,current_timestamp(),current_timestamp());
END IF;


SET @m_amount := (SELECT `deposit` FROM `customers` WHERE `id` = NEW.`customer_id`);
SET @m_total_amount := (@m_amount + @m_debit);

UPDATE `customers` SET `deposit`= @m_total_amount WHERE `id` = NEW.`customer_id`;

    INSERT INTO `deposits`(`amount`, `debit`, `customer_id`, `user_id`, `note`,`my_status`,`created_at`, `updated_at`) VALUES (@m_credit,@m_debit,NEW.`customer_id`,NEW.`user_id`,CONCAT('Ref No. ', NEW.`reference_no`, ', Sale note is ',NEW.`sale_note`),0,current_timestamp(),current_timestamp());
    


INSERT INTO `check_data`(`detail`) VALUES ('After sale insert triger called');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `delete_sale_tgriger` BEFORE DELETE ON `sales` FOR EACH ROW BEGIN
DECLARE m_credit integer;
DECLARE m_debit integer;
DECLARE m_amount integer;
DECLARE m_total_amount integer;

IF OLD.`paid_amount` IS NULL THEN
SET @m_debit := 0;
ELSE 
 SET @m_debit := OLD.`grand_total` - OLD.`paid_amount`;
END IF;

IF OLD.`grand_total` IS NULL THEN
SET @m_credit := 0;
ELSE 
 SET @m_credit := OLD.`paid_amount`;
END IF;

SET @m_amount := (SELECT `deposit` FROM `customers` WHERE `id` = OLD.`customer_id`);
SET @m_total_amount := (@m_amount - @m_debit);

UPDATE `customers` SET `deposit`= @m_total_amount WHERE `id` = OLD.`customer_id`;

 INSERT INTO `deposits`(`amount`, `debit`, `customer_id`, `user_id`, `note`,`created_at`, `updated_at`) VALUES (@m_credit,@m_debit,OLD.`customer_id`,OLD.`user_id`,CONCAT('Ref No. ', OLD.`reference_no`, ', Sale deleted ',OLD.`sale_note`),current_timestamp(),current_timestamp());
 
INSERT INTO `check_data`(`detail`) VALUES ('delete_sale triger called');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_sale_triger` AFTER UPDATE ON `sales` FOR EACH ROW BEGIN
DECLARE m_credit integer;
DECLARE m_debit integer;
DECLARE m_debit_old integer;
DECLARE m_amount integer;
DECLARE m_total_amount integer;


IF NEW.`update_status` = 0 THEN

IF NEW.`paid_amount` IS NULL THEN
SET @m_credit := 0;
ELSE 
 SET @m_credit := NEW.`paid_amount`;
END IF;

 SET @m_debit := (NEW.`grand_total` - @m_credit);

SET @m_debit_old := (OLD.`grand_total` - OLD.`paid_amount`);

SET @m_amount := (SELECT `deposit` FROM `customers` WHERE `id` = NEW.`customer_id`);

SET @m_total_amount := (@m_amount - @m_debit_old);
SET @m_total_amount := (@m_total_amount + @m_debit);


UPDATE `customers` SET `deposit`= @m_total_amount WHERE `id` = NEW.`customer_id`;

    INSERT INTO `deposits`(`amount`, `debit`, `customer_id`, `user_id`, `note`,`my_status`,`created_at`, `updated_at`) VALUES (@m_credit,@m_debit,NEW.`customer_id`,NEW.`user_id`,CONCAT('Ref No. ', NEW.`reference_no`, ', Sale note is ',NEW.`sale_note`),0,current_timestamp(),current_timestamp());

UPDATE `payments` SET `amount` = @m_debit , `change` = @m_credit,  `updated_at` = current_timestamp() WHERE `sale_id` = NEW.`id`;
INSERT INTO `check_data`(`detail`) VALUES ('update_sale_triger 1');
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `sale_revenue_view`
-- (See below for the actual view)
--
CREATE TABLE `sale_revenue_view` (
`date` timestamp
,`grant_total` double
,`total_cost` double
,`revenue` double
,`total_paid_amount` double
);

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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `deposit` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `deposit`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'نعمان', NULL, 'حافظ فیبرکس', '', 'nouman@yahoo.com', '03223500001', 'پاکستان کلاتھ مارکیٹ', 'لاہور', '', '', '', -34400, 1, '2021-09-27 14:16:04', '2021-11-20 15:58:45'),
(2, 'سکندر', NULL, 'کاملہ فیببرکس', NULL, 'kamlafabrics@gmail.com', '0123054987452', 'اعظم کلاتھ مارکیٹ', 'لاہور', NULL, NULL, NULL, 22000, 1, '2021-06-17 15:53:41', '2021-11-29 06:26:45'),
(3, 'فیصل آباد', NULL, 'F Mall', NULL, 'gfdg@yahoo.com', '09876543224', 'فیصل آباد', 'فیصل آباد', NULL, NULL, NULL, 0, 1, '2021-09-02 19:04:32', '2021-11-05 12:43:00'),
(4, 'GN', NULL, 'GN Tex', NULL, 'trtu@gmail.com', '09866555444', 'Karachi', 'Karachi', NULL, NULL, NULL, 0, 1, '2021-09-04 14:20:40', '2021-11-05 12:43:00'),
(5, 'پریمیئم', NULL, 'پریمیئم', '', 'hgf@yahoo.com', '098866555', 'Karachi', 'Karachi', '', '', '', 0, 1, '2021-09-04 14:24:03', '2021-11-05 12:43:00'),
(6, 'اذان فبرکس', NULL, 'اذان فبرکس', NULL, 'dgdfg@gmail.com', '654647یئ', 'لاہور', 'لاہور', NULL, NULL, NULL, 0, 1, '2021-09-04 22:17:35', '2021-11-05 12:43:00'),
(7, 'فیصل', NULL, 'بابا فیبرکس', '', 'dfff@yahoo.com', '00112233554', 'لاہور', 'لاہور', '', '', '', 0, 1, '2021-09-24 20:05:04', '2021-11-05 12:43:00'),
(8, 'test', NULL, 'test', '', 'khan1@gmail.com', '03362294392', 'Test', 'کوہاٹ', 'KPK', '25000', 'Pakistan', 0, 1, '2021-10-26 15:00:36', '2021-11-18 13:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_deposits`
--

CREATE TABLE `supplier_deposits` (
  `id` int(10) NOT NULL,
  `amount` double NOT NULL,
  `debit` double NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier_deposits`
--

INSERT INTO `supplier_deposits` (`id`, `amount`, `debit`, `supplier_id`, `user_id`, `note`, `my_status`, `created_at`, `updated_at`) VALUES
(1, 27900, 0, 1, 1, 'Ref No. prr-20211123-113501, Purchase returened ', 0, '2021-11-23 06:35:01', '2021-11-23 06:35:01'),
(2, 3900, 0, 1, 1, 'Ref No. prr-20211123-113545, Purchase returened ', 0, '2021-11-23 06:35:45', '2021-11-23 06:35:45'),
(3, 2600, 0, 1, 1, 'Ref No. prr-20211123-123542, Purchase returened ', 0, '2021-11-23 07:35:42', '2021-11-23 07:35:42'),
(4, 22000, 0, 2, 1, '', 1, '2021-11-29 06:26:45', '2021-11-29 06:26:45');

--
-- Triggers `supplier_deposits`
--
DELIMITER $$
CREATE TRIGGER `supplier_deposit_triger` AFTER INSERT ON `supplier_deposits` FOR EACH ROW BEGIN

DECLARE my_status integer;
DECLARE minimum_purchase_id integer;
DECLARE payment_id integer;
DECLARE receive_amount decimal(10,2); 
DECLARE receive_amount_from integer; 
DECLARE grand_total_purchase decimal(10,2); 
DECLARE receive_amount_one decimal(10,2); 
DECLARE remaining_amount_of_purchase decimal(10,2); 
DECLARE paid_amount_purchase decimal(10,2); 
DECLARE paid_amount decimal(10,2); 
DECLARE payment_reference varchar(50);
DECLARE account_id decimal(10,2);
DECLARE total_balance double;


IF NEW.`my_status` = 1 THEN
IF NEW.amount OR NEW.debit > 0 THEN

SET @account_id := (SELECT `id` FROM `accounts` WHERE `is_default` = 1 AND `is_active` = 1);

UPDATE `accounts` SET `total_balance` = (SELECT `total_balance`+ (NEW.amount - NEW.debit) FROM `accounts` WHERE `is_default` = 1 AND `is_active` = 1) WHERE `is_default` = 1 AND `is_active` = 1;


SET @receive_amount := NEW.`amount`;
SET @paid_amount :=  NEW.`debit`;

IF @receive_amount > 0 THEN
SET @payment_reference := 'Payment Given';
ELSE
SET @payment_reference := 'Payment Received';
END IF;

INSERT INTO `payments`(`payment_reference`, `user_id`, `purchase_id`, `sale_id`,`customer_id`, `seller_id`,`account_id`, `amount`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES (CONCAT(@payment_reference,'-',current_timestamp()),NEW.`user_id`,NULL,NULL,NULL,NEW.`supplier_id`,@account_id,0,@paid_amount,'CASH',NEW.`note`,current_timestamp(),current_timestamp());

END IF;
END IF;

  INSERT INTO `check_data`(`detail`) VALUES ('supplier_deposit_triger called');
END
$$
DELIMITER ;

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
-- Stand-in structure for view `total_expence_view`
-- (See below for the actual view)
--
CREATE TABLE `total_expence_view` (
`date` timestamp
,`total_expence` decimal(32,0)
);

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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2', 'Meter', 1, '*', 1, 1, '2020-11-17 08:39:25', '2020-11-17 08:39:25'),
(3, '1010', 'Yards', NULL, '*', 1, 1, '2020-11-25 20:22:37', '2020-11-25 20:22:37'),
(4, '1011', 'Kg', NULL, '*', 1, 1, '2020-11-25 20:23:17', '2020-11-25 20:23:17');

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
(1, 'admin', 'alhafizcloths@gmail.com', '$2y$10$Pm6Zd/K6HODlpL.uJX83X.iBkmhT775HWNS7tiJTlNY1LsqpU5n2y', 'ux9PBua5y7Z5K3Nn6NzMH9DAVFpYunIvBwY366hRproVSqr7VG3EsYv0cEux', '00923232211155', 'Alhafiz Cloth', 1, NULL, 1, 1, 0, '2018-06-02 03:24:15', '2021-08-25 22:31:23'),
(14, 'abubakar', 'abubakarehsas14@gmail.com', '$2y$10$OTraD22faEAB7tiqAQaNN.y54oD70D6qq35t84G8PTRucl4QSez3i', '68LwmtsDoDxkrCrhAhFvfxBYFAQIKi8z67hwMiq6e0Dbz4iVLpfLIBMBaSEz', '03464639774', 'Khyber Coded', 1, NULL, NULL, 1, 0, '2020-11-16 09:47:26', '2021-08-24 17:08:39'),
(15, 'abdurahman', 'abdurahman@alhafizcloth.com', '$2y$10$pbj.bdFP5HRojkI7fsnQG.z7Xz9KLwRvgA.NfGsyckcrdMWOuN59G', NULL, '03319347104', 'Al hafiz cloth', 4, 1, 1, 1, 0, '2021-06-10 20:36:04', '2021-06-10 20:36:04'),
(16, 'adminasas', 'wasiullahkhalil00@gmail.com', '$2y$10$/Lp0ZggLrZvk/Zk61OZz5ePL8jespRzb.0V24xDbIbH4TLcySGhqm', NULL, '03169942657', 'nn', 1, NULL, NULL, 0, 1, '2021-06-14 19:42:57', '2021-06-15 17:56:33'),
(17, 'superadmin', 'khybercoded@gmail.com', '$2y$10$EuoCT39Fnnz7Ve3kfgyKZ.OAx2uoKkgCDv7ItUY3LYMeyySVFtWge', 'kIa8dMnpYB1n1yXiZya3excQ7fgYbNO8Xk1YZ3epXVCX8pDNTdTxpJaxwDv2', '03464639774', 'Khyber Coded', 5, 1, 1, 1, 0, '2021-06-15 17:53:12', '2021-08-25 22:35:51'),
(18, 'Jamil', 'owner@gmail.com', '$2y$10$QrVaLMLepKJEByhdFzV.yu7Wi2R4Rgu8zihyOS1RNA3eldzvAKx8y', 'Rbnuv7VJc34O7uRpwwDTf8aXTrII2K98LCTE9rBtoXKAKcNFWpYj8BzVYrBB', '03232211155', 'Al Hafiz Cloths', 2, 0, 1, 1, 0, '2021-10-07 16:59:06', '2021-10-27 22:22:22'),
(19, 'testowner', 'ahmadalikhan0309@gmail.com', '$2y$10$PlQB1m/K4GijbKFGVm66U.T0RcNqV10FXb84p6gQuiAdupR8.E3xy', NULL, '03109687543', 'hi', 2, 0, 1, 1, 0, '2021-10-07 17:14:39', '2021-10-07 17:14:39'),
(20, 'ibrahim', 'ibrahimokz101@gmail.com', '$2y$10$FxttDCeeV3slQsbWtVhl0uPHXNghNhmlIuFkyATGna2fXhSOKr23i', '9ivY0ziTQrbX527GWN9kfmgOkLi0pXKmAhspkmnS3d2KONTAHpYzLvhGy2pl', '03025475101', '', 1, 0, 1, 1, 0, '2021-10-07 18:06:40', '2021-10-26 18:41:28'),
(21, 'FKarim', 'Fkarim@yahoo.com', '$2y$10$e4q1txJdZ9djVcJySyWFduHHNyQzYzhlm861pm.tbkhdoD7Q0ZN/m', NULL, '03308730325', '', 1, 0, 0, 1, 0, '2021-10-07 18:59:18', '2021-10-07 18:59:18');

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

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '30', '2021-03-15 16:09:40', '2021-03-15 16:09:40'),
(2, '30', '2021-03-15 16:12:29', '2021-03-15 16:12:29'),
(3, '30 Metters', '2021-03-15 16:17:08', '2021-03-15 16:17:08'),
(4, '3', '2021-03-17 14:14:18', '2021-03-17 14:14:18'),
(5, '3', '2021-03-17 14:16:10', '2021-03-17 14:16:10'),
(6, '3', '2021-03-17 14:21:28', '2021-03-17 14:21:28');

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
(1, 'Shop - دکان', '03232211155', 'alhafizcloths@gmail.com', 'Shop# 70, City Cloth Center Firdoos, Peshawar', 1, '2020-11-16 09:39:37', '2021-06-15 18:20:23'),
(2, 'Warehouse-  گودام', '03232211155', 'www.alhafizcloth@gmail.com', 'Shop# 70, City Cloth Center Firdoos, Peshawar', 1, '2020-11-16 09:40:40', '2021-06-15 18:23:23');

-- --------------------------------------------------------

--
-- Structure for view `product_stock_view`
--
DROP TABLE IF EXISTS `product_stock_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `product_stock_view`  AS  select `p`.`name` AS `name`,`p`.`code` AS `code`,`p`.`cost` AS `cost`,`pw`.`size` AS `size`,`p`.`product_details` AS `product_details`,`pw`.`warehouse_id` AS `warehouse_id`,`pw`.`qty` AS `qty`,`pw`.`size` - `pw`.`sub_qty` AS `sub_qty` from (`product_warehouse` `pw` join `products` `p`) where `pw`.`product_id` = `p`.`id` and `p`.`is_active` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `return_revenu`
--
DROP TABLE IF EXISTS `return_revenu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `return_revenu`  AS  select `returns`.`updated_at` AS `date`,sum(`returns`.`grand_total`) - sum(`returns`.`total_cost`) AS `return_benifit` from `returns` group by `returns`.`updated_at` order by `returns`.`updated_at` desc ;

-- --------------------------------------------------------

--
-- Structure for view `sale_revenue_view`
--
DROP TABLE IF EXISTS `sale_revenue_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sale_revenue_view`  AS  select `sales`.`updated_at` AS `date`,sum(`sales`.`grand_total`) AS `grant_total`,sum(`sales`.`total_cost`) AS `total_cost`,sum(`sales`.`grand_total`) - sum(`sales`.`total_cost`) AS `revenue`,sum(`sales`.`paid_amount`) AS `total_paid_amount` from `sales` group by `sales`.`updated_at` order by `sales`.`updated_at` desc ;

-- --------------------------------------------------------

--
-- Structure for view `total_expence_view`
--
DROP TABLE IF EXISTS `total_expence_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_expence_view`  AS  select `expenses`.`updated_at` AS `date`,sum(`expenses`.`amount`) AS `total_expence` from `expenses` group by `expenses`.`updated_at` order by `expenses`.`updated_at` desc ;

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
-- Indexes for table `check_data`
--
ALTER TABLE `check_data`
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
-- Indexes for table `supplier_deposits`
--
ALTER TABLE `supplier_deposits`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `check_data`
--
ALTER TABLE `check_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `supplier_deposits`
--
ALTER TABLE `supplier_deposits`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
