-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 06:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin_type` varchar(15) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '1-active, 2-delete',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `admin_type`, `status`, `date_modified`, `date_added`) VALUES
(1, 'Lee', 'Lee@123', 'super_admin', 1, '2024-09-12 17:17:53', '2024-09-12 17:17:53'),
(2, 'Prithiv', 'prithiv@11', 'admin', 1, '2024-09-12 17:18:07', '2024-09-12 17:18:07'),
(3, 'seller', 'seller@24', 'seller', 1, '2024-09-12 17:19:07', '2024-09-12 17:19:07'),
(4, 'Kevin', 'kevin@12', 'seller', 1, '2024-09-12 17:19:57', '2024-09-12 17:19:57'),
(5, 'Bala', 'bala@14', 'seller', 1, '2024-09-12 17:20:23', '2024-09-12 17:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `daily_sales`
--

CREATE TABLE `daily_sales` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(5) NOT NULL COMMENT 'inc - Income, exp - Expense',
  `amount_mode` varchar(10) NOT NULL DEFAULT 'cash',
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '1-active, 2-delete',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_sales`
--

INSERT INTO `daily_sales` (`id`, `emp_id`, `description`, `amount`, `amount_type`, `amount_mode`, `status`, `date_modified`, `date_added`) VALUES
(1, 4, 'Flipcase', 200, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 18:00:18'),
(2, 4, 'Prem Petrol ', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 18:00:44'),
(3, 4, 'Back Case (Gpay)', 450, 'inc', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-13 18:01:21'),
(4, 4, 'Skin', 100, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 18:01:38'),
(5, 4, 'Temper 2', 200, 'inc', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-13 18:02:04'),
(6, 2, 'prithi petrol', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 18:36:56'),
(7, 2, 'temper and flip case', 350, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 18:37:57'),
(8, 4, 'Tea', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 19:58:48'),
(9, 2, 'Kevin (Ad)', 200, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:00:54'),
(10, 2, 'Prem (Ad)', 150, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:01:24'),
(11, 2, 'Privacy Temper', 150, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:01:59'),
(13, 2, 'Temper', 100, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:02:38'),
(14, 2, 'Fradi Bro Change', 150, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:03:10'),
(15, 2, 'Passion Pro Petrol', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:03:40'),
(16, 2, 'POO', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:03:55'),
(18, 2, 'Temper', 100, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:44:52'),
(19, 1, 'Balaji Paints', 2500, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:48:08'),
(20, 2, 'Prem Salary', 400, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:49:00'),
(21, 2, 'Prem Finance', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:49:32'),
(22, 1, 'RO Kishore', 8400, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:50:01'),
(23, 1, 'Kishore Ad', 200, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:50:33'),
(24, 1, 'RO', 300, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:50:54'),
(25, 1, 'RO Kishore work', 1400, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:51:12'),
(26, 1, 'Mapla shop', 1000, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:51:27'),
(27, 1, 'TMR', 1000, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:51:47'),
(28, 1, 'Cell Fix', 500, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:52:00'),
(29, 1, 'Prince Finance', 500, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:52:17'),
(30, 1, 'kevin AD', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:52:47'),
(31, 4, 'privacy temper and case', 550, 'inc', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 12:01:50'),
(32, 2, 'Tab flip case', 450, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 15:06:03'),
(33, 2, 'Temper and Flip case', 300, 'inc', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 15:06:44'),
(34, 2, 'FIRE bolt watch', 2500, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 15:58:28'),
(35, 2, 'pulcer pertol', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 17:19:18'),
(36, 2, 'prem petrol', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 17:44:11'),
(37, 4, 'passion pro petrol', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 17:44:39'),
(38, 2, 'prithivi (HC)', 100, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 18:21:46'),
(39, 2, 'SATHISH BRO FINANCE', 3000, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 18:22:37'),
(40, 2, 'Batery diod service', 550, 'inc', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 18:32:53'),
(41, 1, 'Lee Bro Transfer', 9000, 'inc', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 19:53:33'),
(42, 2, 'Mathan Bro Finance', 1700, 'exp', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 19:57:40'),
(43, 2, 'flipkart parcel', 1740, 'exp', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 20:24:45'),
(44, 2, 'bike service', 800, 'exp', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 20:25:43'),
(45, 2, 'SATHISH BRO FINANCE', 3350, 'exp', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 20:26:59'),
(46, 2, '20 w adapter', 1500, 'inc', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 20:27:22'),
(47, 2, 'FRADI BRO CHANGE', 50, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 20:28:13'),
(48, 2, 'Prem Petrol ', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 20:28:36'),
(49, 1, 'lee bro change', 300, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 20:29:04'),
(50, 1, 'Prem salary', 350, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 20:29:59'),
(51, 1, 'Prem', 30, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 20:30:28'),
(52, 1, 'prem', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 20:31:03'),
(53, 1, 'Skin temper and cable', 700, 'inc', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 20:32:17'),
(54, 2, 'case and skin', 500, 'inc', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 20:32:54'),
(55, 1, 'car charger and cable', 600, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 20:36:16'),
(56, 4, 'A4 Paper', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 20:57:00'),
(57, 2, 'Bill Cover', 75, 'exp', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 20:59:29'),
(58, 2, 'Prithiv', 100, 'inc', 'gpay', 1, '0000-00-00 00:00:00', '2024-09-14 21:00:06'),
(59, 2, 'Prithiv', 200, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 21:00:19'),
(60, 1, 'Prince Finance', 500, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 21:07:05'),
(61, 2, 'Prem Finance', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 21:07:23'),
(62, 1, 'Vivo Y22 Mobile Used, Cable, Headphone', 5500, 'inc', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 21:25:21'),
(63, 1, 'kevin AD', 110, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 21:25:41'),
(64, 1, 'Lee Bro', 5500, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-14 21:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '1-active, 2-delete',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `password`, `phone_number`, `status`, `date_modified`, `date_added`) VALUES
(1, 'Lee', 'Lee@123', '9994578802', 1, '2024-09-12 17:17:53', '2024-09-12 17:17:53'),
(2, 'Prithiv', 'prithiv@11', '9626531146', 1, '2024-09-12 17:18:07', '2024-09-12 17:18:07'),
(3, 'Freddie', 'fred@13', '9789850402', 2, '2024-09-12 17:19:07', '2024-09-12 17:19:07'),
(4, 'Kevin', 'kevin@12', '8608223911', 1, '2024-09-12 17:19:57', '2024-09-12 17:19:57'),
(5, 'Bala', 'bala@14', '1234567898', 1, '2024-09-14 19:04:03', '2024-09-12 17:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `employee_advance`
--

CREATE TABLE `employee_advance` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(5) NOT NULL COMMENT 'dr- debit (incoming money), cr-credit (outgoing money)',
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '1-active, 2-delete',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_advance`
--

INSERT INTO `employee_advance` (`id`, `emp_id`, `amount`, `amount_type`, `status`, `date_modified`, `date_added`) VALUES
(1, 4, 200, 'DEB', 1, '0000-00-00 00:00:00', '2024-09-14 21:56:03'),
(2, 4, 50, 'CRE', 1, '0000-00-00 00:00:00', '2024-09-14 22:00:36'),
(3, 2, 500, 'DEB', 1, '0000-00-00 00:00:00', '2024-09-14 22:02:52'),
(4, 2, 150, 'CRE', 1, '0000-00-00 00:00:00', '2024-09-14 22:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(5) NOT NULL COMMENT 'dr- debit (incoming money), cr-credit (outgoing money)',
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '1-active, 2-delete',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `user_id`, `amount`, `amount_type`, `status`, `date_modified`, `date_added`) VALUES
(1, 4, 50, 'CRE', 1, '0000-00-00 00:00:00', '2024-09-14 21:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `outcomes`
--

CREATE TABLE `outcomes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(5) NOT NULL COMMENT 'dr- debit (incoming money), cr-credit (outgoing money)',
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '1-active, 2-delete',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '1-active, 2-delete',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone_number`, `address`, `status`, `date_modified`, `date_added`) VALUES
(1, 'Freddie', '9789850402', 'East 7th St, Pudukkottai', 1, '2024-09-12 22:10:11', '2024-09-12 22:09:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_sales`
--
ALTER TABLE `daily_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_advance`
--
ALTER TABLE `employee_advance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outcomes`
--
ALTER TABLE `outcomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `daily_sales`
--
ALTER TABLE `daily_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `employee_advance`
--
ALTER TABLE `employee_advance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `outcomes`
--
ALTER TABLE `outcomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
