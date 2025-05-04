-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 04, 2025 at 06:16 PM
-- Server version: 8.0.33
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikkoqrkc_fusion`
--

-- --------------------------------------------------------

--
-- Table structure for table `txns`
--

CREATE TABLE `txns` (
  `txn_id` int NOT NULL,
  `uid` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `txn_type` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `txn_status` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `txn_amt` decimal(15,2) NOT NULL,
  `plan` text COLLATE utf8mb4_general_ci NOT NULL,
  `txn_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `txns`
--

INSERT INTO `txns` (`txn_id`, `uid`, `username`, `txn_type`, `txn_status`, `txn_amt`, `plan`, `txn_time`) VALUES
(1, 5, 'Richard Croft', 'Withdraw', 'Approved', 0.00, 'nil', '2025-02-01 08:16:14'),
(2, 6, 'test2', 'Deposit', 'Approved', 1000.00, 'Premium Plan $1,001 - $2,500', '2025-02-01 10:09:38'),
(3, 7, 'Izzypro55', 'Deposit', 'Approved', 150.00, 'Starter Plan $100 - $500', '2025-02-01 10:12:09'),
(4, 6, 'test2', 'Withdraw', 'Approved', 120.00, 'nil', '2025-02-01 10:33:55'),
(5, 7, 'Izzypro55', 'Withdraw', 'Approved', 50.00, 'nil', '2025-02-01 10:34:18'),
(6, 3, 'David Havertz', 'Withdraw', 'Declined', 55.00, 'nil', '2025-02-01 17:01:24'),
(7, 8, 'Kidiboy ', 'Withdraw', 'Approved', 5000.00, 'nil', '2025-03-15 18:01:16'),
(8, 10, 'Bigbetty', 'Deposit', 'Pending', 100.00, 'Starter Plan $100 - $500', '2025-05-04 01:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_balance`
--

CREATE TABLE `user_balance` (
  `uid` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `balance` decimal(50,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_balance`
--

INSERT INTO `user_balance` (`uid`, `username`, `balance`) VALUES
(3, 'David Havertz', 0.00),
(4, 'Test', 15000.00),
(5, 'Richard Croft', 5000.00),
(6, 'test2', 1880.00),
(7, 'Izzypro55', 250.00),
(8, 'Kidiboy ', -5000.00),
(9, 'Vavav', 0.00),
(10, 'Bigbetty', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `uid` int NOT NULL,
  `uname` varchar(90) NOT NULL,
  `uemail` varchar(90) NOT NULL,
  `referer` varchar(50) NOT NULL,
  `upwd` varchar(75) NOT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `p_img` longblob,
  `darkmood` int NOT NULL,
  `wallet` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `location` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`uid`, `uname`, `uemail`, `referer`, `upwd`, `reg_date`, `p_img`, `darkmood`, `wallet`, `location`) VALUES
(3, 'David Havertz', 'michaelnwankwoscloud@gmail.com', 'Referal Code -Optional', 'LrZL_l[SxIV/eC/S', '2025-01-31 15:04:52', NULL, 0, '36cKJigarmib6vo5Gvvrird4ZPy7ukAZZN', 'David Havertzwrwe steet 103'),
(4, 'Test', 'test@gmail.com', 'Referal Code -Optional', 'test', '2025-01-31 15:43:51', NULL, 0, NULL, NULL),
(5, 'Richard Croft', 'test1@gmail.com', 'Referal Code -Optional', 'test', '2025-01-31 17:39:59', NULL, 0, 'bc1qvwe7knquk40v4h78pd9n9d02wpzseuzlk4ry0l', 'Test'),
(6, 'test2', 'Test2@gmail.com', 'Referal Code -Optional', 'test2', '2025-02-01 06:55:30', NULL, 0, 'bc1qvwe7knquk40v4h78pd9n9d02wpzseuzlk4ry0l', 'Testtest'),
(7, 'Izzypro55', 'israelojungha55@gmail.com', 'Referal Code -Optional', 'Efficient55.', '2025-02-01 06:59:20', NULL, 0, '36cKJigarmib6vo5Gvvrird4ZPy7ukAZZN', 'Ggff'),
(8, 'Kidiboy ', 'kidij1234@gmail.com', 'Referal Code -Optional', 'kubzo4-qiQvoc-kakmiw', '2025-03-15 14:59:07', NULL, 1, '1F1tAaz5x1HUXrCNLbtMDqcw6o5GNn4xqX', 'USA'),
(9, 'Vavav', 'vvv@gmail.com', 'Referal Code -Optional', 'xxx', '2025-03-15 15:10:52', NULL, 0, NULL, NULL),
(10, 'Bigbetty', 'bettyhawn51@gmail.com', 'Referal Code -Optional', 'Godalmighty_1', '2025-05-03 22:47:00', NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `txns`
--
ALTER TABLE `txns`
  ADD PRIMARY KEY (`txn_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `txns`
--
ALTER TABLE `txns`
  MODIFY `txn_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
