-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 02:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

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
(30, 1, 'kevin AD', 50, 'exp', 'cash', 1, '0000-00-00 00:00:00', '2024-09-13 20:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '1-active, 2-delete',
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `phone_number`, `status`, `date_modified`, `date_added`) VALUES
(1, 'Lee', '9994578802', 1, '2024-09-12 17:17:53', '2024-09-12 17:17:53'),
(2, 'Prithiv', '9626531146', 1, '2024-09-12 17:18:07', '2024-09-12 17:18:07'),
(3, 'Freddie', '9789850402', 2, '2024-09-12 17:19:07', '2024-09-12 17:19:07'),
(4, 'Kevin', '8608223911', 1, '2024-09-12 17:19:57', '2024-09-12 17:19:57'),
(5, 'Bala', '', 1, '2024-09-12 17:20:23', '2024-09-12 17:20:23');

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
-- Indexes for table `daily_sales`
--
ALTER TABLE `daily_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
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
-- AUTO_INCREMENT for table `daily_sales`
--
ALTER TABLE `daily_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
