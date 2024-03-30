-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2024 at 07:51 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricity`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `bill_id` varchar(255) NOT NULL,
  `users_id` varchar(255) NOT NULL,
  `bill_price` float NOT NULL,
  `active_bill` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `bill_id`, `users_id`, `bill_price`, `active_bill`, `created_at`) VALUES
(26, '0', 'AEE871322', 0, 0, '2022-02-15 14:02:00'),
(27, 'BILL-7765', 'AEE824717', 18000, 0, '2022-02-18 11:48:50'),
(28, 'BILL-2388', 'AEE824717', 2094, 0, '2022-02-25 21:43:37'),
(29, '0', 'AEE976738', 0, 0, '2022-02-25 22:15:30'),
(30, '0', 'AEE307949', 0, 0, '2022-02-25 22:20:37'),
(31, '0', 'AEE621615', 0, 0, '2022-02-25 22:28:57'),
(32, '0', 'AEE379035', 0, 0, '2022-02-25 22:31:00'),
(33, '0', 'AEE999862', 0, 0, '2022-03-02 07:26:29'),
(34, 'BILL-9087', 'AEE999862', 20000, 0, '2022-03-02 07:42:45'),
(35, 'BILL-9148', 'AEE824717', 20000, 0, '2022-03-12 10:25:06'),
(36, '0', 'AEE323030', 0, 0, '2022-03-11 22:30:22'),
(37, '0', 'AEE644183', 0, 0, '2022-03-11 22:39:48'),
(38, '0', 'AEE165373', 0, 0, '2022-03-11 22:59:36'),
(39, '0', 'AEE665156', 0, 0, '2022-03-11 23:01:03'),
(40, '0', 'AEE429146', 0, 0, '2022-03-11 23:03:18'),
(41, 'BILL-9971', 'AEE824717', 8, 0, '2022-03-12 11:12:59'),
(42, 'BILL-4788', 'AEE824717', 34201, 0, '2022-03-12 11:12:59'),
(43, 'BILL-7641', 'AEE824717', 1256, 0, '2022-03-12 10:58:19'),
(44, 'BILL-5085', 'AEE824717', 1000, 0, '2022-03-12 11:12:59'),
(45, 'BILL-5104', 'AEE824717', 14579, 0, '2022-03-13 10:24:50'),
(46, 'BILL-7545', 'AEE824717', 1365.23, 0, '2022-03-14 12:27:02'),
(47, 'BILL-3372', 'AEE824717', 10000, 0, '2022-03-27 07:46:44'),
(48, '0', 'AEE595439', 0, 0, '2022-03-24 18:03:56'),
(49, 'BILL-5749', 'AEE824717', 10000, 0, '2022-03-27 07:51:34'),
(50, 'BILL-5299', 'AEE824717', 10000, 0, '2022-03-27 07:53:25'),
(51, 'BILL-3704', 'AEE824717', 10000, 0, '2022-03-27 08:16:09'),
(52, 'BILL-6757', 'AEE824717', 10000, 0, '2022-03-27 08:19:58'),
(53, 'BILL-1086', 'AEE824717', 10000, 0, '2022-03-27 09:21:10'),
(54, 'BILL-1913', 'AEE824717', 12345.7, 0, '2022-03-27 09:25:24'),
(55, 'BILL-7029', 'AEE824717', 20000, 0, '2022-03-29 05:38:38'),
(56, 'BILL-8926', 'AEE824717', 20000, 0, '2023-10-28 07:00:22'),
(57, 'BILL-7384', 'AEE824717', 65000, 0, '2023-10-28 07:00:22'),
(58, 'BILL-8855', 'AEE824717', 658000, 0, '2023-11-13 13:45:38'),
(59, '0', 'AEE17289', 0, 0, '2023-12-20 15:44:56'),
(60, '0', 'AEE339093', 0, 0, '2023-12-20 15:49:56'),
(61, '0', 'AEE508169', 0, 0, '2023-12-20 15:53:10'),
(62, '0', 'BU843858', 0, 0, '2024-01-24 19:14:04'),
(63, '0', 'BU330379', 0, 0, '2024-02-11 13:07:54'),
(64, '0', 'BU511143', 0, 0, '2024-02-11 13:13:33'),
(65, '0', 'BU986487', 0, 0, '2024-02-11 13:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `id` int(255) NOT NULL,
  `users_id` varchar(255) NOT NULL,
  `statuses` varchar(10) NOT NULL,
  `reference` varchar(20) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `date_purchased` varchar(255) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `card_last4` int(11) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `users_id`, `statuses`, `reference`, `lastname`, `date_purchased`, `email_address`, `card_last4`, `card_type`, `amount`) VALUES
(73, 'AEE824717', 'success', 'BU-823254156', '', '02/11/2024 03:06:02 pm', 'nkem2@gmail.com', 4081, 'visa ', 67000);

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `price`, `created_at`) VALUES
(1, 6, '2021-07-03'),
(2, 6, '2021-07-03'),
(3, 4, '2021-07-03'),
(4, 4, '2021-07-03'),
(5, 4, '2021-07-03'),
(6, 7, '2021-07-03'),
(7, 7, '2021-07-03'),
(8, 4, '2021-07-03'),
(9, 4, '2021-07-03'),
(10, 4, '2021-07-03'),
(11, 4, '2021-07-03'),
(12, 5, '2021-07-03'),
(13, 5, '2021-07-03'),
(14, 60, '2021-07-03'),
(15, 60, '2021-07-03'),
(16, 10, '2021-07-03'),
(17, 7, '2021-07-04'),
(18, 7, '2021-07-04'),
(19, 6, '2021-07-04'),
(20, 12, '2021-07-04'),
(21, 2, '2021-07-04'),
(22, 5, '2021-07-04'),
(23, 4, '2021-07-04'),
(24, 6, '2021-07-06'),
(25, 12, '2021-07-15'),
(26, 6, '2021-07-20'),
(27, 5, '2022-03-12'),
(28, 3, '2022-03-12'),
(29, 4.23, '2022-03-12'),
(30, 68, '2024-01-18'),
(31, 4.5, '2024-01-24'),
(32, 0, '2024-02-04'),
(33, 21, '2024-02-04');

-- --------------------------------------------------------

--
-- Table structure for table `signed_up_customers`
--

CREATE TABLE `signed_up_customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `meter_id` int(20) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `passwords` varchar(255) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `addresss` varchar(255) NOT NULL,
  `states` varchar(255) NOT NULL,
  `zip_code` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `terms_and_conditions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signed_up_customers`
--

INSERT INTO `signed_up_customers` (`id`, `first_name`, `last_name`, `meter_id`, `email_address`, `passwords`, `phone_number`, `addresss`, `states`, `zip_code`, `created_at`, `terms_and_conditions`) VALUES
(1, 'akeem', 'abass ab111', 0, 'lanreabassab1@gmail.com', 'gkjh', 0, ' omotanbaje street oke', 'Kaduna', 0, '2021-05-18 17:44:28', ''),
(2, 'akeem', 'abass', 0, 'lanreabassab1@gmail.com', 'gkjh', 0, ' omotanbaje street oke', 'Kaduna', 0, '2021-05-18 18:09:29', ''),
(3, 'akeem', 'abass', 0, 'lanreabassab1@gmail.com', 'asdfg', 12345, ' omotanbaje street oke', 'Gombe', 12345, '2021-05-22 15:20:22', ''),
(4, 'akeem', 'lanre-abass', 0, 'lanreabassab1@gmail.com', 'Passwordab1', 2147483647, 'number 15 omotanbaje street oke', 'Oyo', 200222, '2021-05-22 15:28:23', ''),
(5, 'akeem', 'lanre-abass', 0, 'lanreabassab1@gmail.com', 'Password', 2147483647, 'number 15 omotanbaje street oke', 'Oyo', 200222, '2021-05-22 15:43:38', ''),
(6, 'akeem', 'lanre-abass', 0, 'lanreabassab1@gmail.com', 'Password', 2147483647, 'number 15 omotanbaje street oke', 'Choose...', 200222, '2021-05-22 15:44:48', ''),
(7, 'akeem', 'lanre-abass', 12345678, 'lanreabassab1@gmail.com', 'password', 2147483647, 'number 15 omotanbaje street oke', 'Jigawa', 200222, '2021-05-22 15:54:12', ''),
(8, 'akeem', 'abass', 0, 'lanreabassab1@gmail.com', 'abass', 2147483647, 'omotanbaje', 'Imo', 200222, '2021-05-25 10:37:41', ''),
(9, 'akeem', 'abass', 0, 'lanreabassab1@gmail.com', 'abass', 2147483647, 'omotanbaje', 'Oyo', 200222, '2021-05-25 10:41:19', ''),
(10, 'akeem', 'abass', 0, 'lanreabassab1@gmail.com', 'abass', 814979248, 'omotanbaje', 'Oyo', 200222, '2021-05-25 10:42:25', ''),
(11, 'akeem', 'lanre-abass', 0, 'lanreabassab1@gmail.com', 'abass', 2147483647, 'omotanbaje', 'Oyo', 200222, '2021-05-25 10:44:34', ''),
(12, 'akeem', 'lanre-abass', 0, 'lanreabassab1@gmail.com', 'abass', 2147483647, 'omotanbaje', 'Oyo', 200222, '2021-05-25 10:45:52', ''),
(13, 'akeem', 'abass', 0, 'lanreabassab1@gmail.com', 'abass', 2147483647, 'omotanbaje', 'Choose...', 200222, '2021-05-25 10:50:02', ''),
(14, 'akeem akinfolarin', 'lanre-abass', 0, 'lanreabassab1@gmail.com', 'asdfgh', 2147483647, 'number 15 omotanbaje street oke', 'Oyo', 200222, '2021-05-27 09:23:54', ''),
(15, 'akeem akinfolarin', 'lanre-abass', 0, 'lanreabassab1@gmail.com', 'asdf', 2147483647, 'number 15 omotanbaje street oke', 'Choose...', 200222, '2021-05-27 09:27:04', '');

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `id` int(6) NOT NULL,
  `user_idd` int(6) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userstable`
--

CREATE TABLE `userstable` (
  `id` int(20) NOT NULL,
  `users_id` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `meterid` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `passwords` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `addresss` varchar(255) NOT NULL,
  `states` text NOT NULL,
  `zip_code` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `activated` enum('0','1') NOT NULL DEFAULT '1',
  `avatar` varchar(255) NOT NULL,
  `reset_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userstable`
--

INSERT INTO `userstable` (`id`, `users_id`, `firstname`, `lastname`, `roles`, `username`, `meterid`, `date_of_birth`, `email_address`, `passwords`, `phone_number`, `addresss`, `states`, `zip_code`, `created_at`, `activated`, `avatar`, `reset_link`) VALUES
(150, 'BU361552', 'EBUBE', 'NTUMOBE', 'admin', 'admin', '1234567890', '2021-07-05', 'ebube1@gmail.com', '$2y$10$w/IFVaRU4X/ldDddfyezTuJm0vQIhtM./VH9i6EtwC4MjOCnU/TIm', '23481497924837', 'Number 15 omotanbaje street okeibadan estate Akobo ibadan samabadina', 'Oyo', 200222, '2024-02-15 10:50:29', '1', '', ''),
(157, 'BU440749', 'Nwa', 'Nkem', 'User', 'abassboyy', 'asdf123456789', '2001-03-05', 'nkem0@gmail.com', '$2y$10$DlAiS9YFuYr0jqjTB2oyh.fA5m7f5CzLcDhTT4YrUbE79RvXwxn4y', '08149792483289', 'Number 15 omotanbaje street okeibadan estate Akobo ibadan tokunbo', 'Adamawa', 2002222, '2024-02-15 10:50:44', '1', '', ''),
(158, 'BU266306', 'akeem', 'Lanre-abass', 'Admin', 'abassakeem_', '', '2001-03-05', 'lanreabassab6@gmail.com', '$2y$10$YcFhW.HlqOAnRa6YjmY2TeAX4fbo5IULFAO7lQJrtBMATWDb2Rape', '08149792483', 'Number 15 omotanbaje street okeibadan estate Akobo ibadan', 'Oyo', 200222, '2024-02-15 10:45:58', '1', '', ''),
(162, 'BU824717', 'Nwabuisi', 'Nkemakornam', 'user', '', '0123456789', '2001-03-05', 'Nkem2@gmail.com', '$2y$10$E5byiJJDuuWq.gliAI/lROTZt9RzA3eq6QKuEutEa531ndAkUQNJC', '08144444444', 'Number 15 lekki lagos,', 'Lagos', 200122, '2024-02-15 10:46:06', '1', '', ''),
(192, 'BU986487', 'NKEMAKORNAM ', 'NWABUISI ', 'user', '', '1234567899', '2023-11-08', 'nkemakornam@gmail.com', '$2y$10$tukel4fi1GAG/UMBBfEMwOj.WmnRTl7rRnPSxp8DsslUIbsqnJQ1S', '08000000000', 'babcock University Ilishan remo', 'Ogun', 200532, '2024-02-11 13:17:21', '1', '', ''),
(193, 'AEE763838', 'admin', 'admin', 'Admin', 'admin', '11111111111', '2024-02-16', 'admin@gmail.com', '$2y$10$/sB5ZDo7ClauicZFZOEDyuzcct3D9CUiE0TMKbNVrTLBawistNME.', '08011111111', 'admin house', 'Edo', 200000, '2024-02-15 10:52:44', '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_complaint`
--

CREATE TABLE `users_complaint` (
  `id` int(11) NOT NULL,
  `complaint_id` varchar(255) NOT NULL,
  `users_id` varchar(255) NOT NULL,
  `meter_id` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `statuss` varchar(255) NOT NULL DEFAULT 'pending',
  `response` varchar(255) NOT NULL DEFAULT 'awaiting response'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_complaint`
--

INSERT INTO `users_complaint` (`id`, `complaint_id`, `users_id`, `meter_id`, `email_address`, `comment`, `created_at`, `statuss`, `response`) VALUES
(66, 'AEE-COMP-4112291', 'AEE871322', 'abcde192515', 'quabsonb@gmail.com', 'test', '2022-03-14 13:07:04', 'fulfilled', 'baddest boy'),
(67, 'AEE-COMP-95638085', 'AEE824717', 'abcde12345', 'lanreabassab1@gmail.com', 'hmhp', '2022-03-06 21:55:24', 'fulfilled', 'we don reply'),
(68, 'AEE-COMP-28930230', 'AEE824717', 'abcde12345', 'lanreabassab3@gmail.com', 'complaint1', '2022-02-25 22:52:17', 'fulfilled', 'reply to complaint 1'),
(69, 'AEE-COMP-12136935', 'AEE361552', 'abcde12345', 'lanreabassab5@gmail.com', 'complaint2', '2022-02-25 22:45:28', 'pending', 'awaiting response'),
(70, 'AEE-COMP-51595686', 'AEE361552', 'abcde12345', 'lanreabassab2@gmail.com', 'complaintt 3\r\n', '2022-03-06 21:58:37', 'fulfilled', 'we don reply mafejopami\r\n'),
(71, 'AEE-COMP-59471314', 'AEE361552', 'abcde12345', 'lanreabassab3@gmail.com', 'complaint 3', '2022-02-25 23:46:39', 'fulfilled', 'if the doors are suicide give mee not a reason tomdrive because people dey die share share back in the days because wtf is all this work and shit'),
(72, 'AEE-COMP-38703144', 'AEE361552', '12345abcde', 'lanreabassab2ki@gmail.com', 'humpj', '2022-03-06 22:00:04', 'fulfilled', 'opor'),
(90, 'AEE-COMP-71443751', 'AEE824717', 'abcde12345', 'lanreabassab1@gmail.com', '123456', '2022-03-13 09:50:02', 'pending', 'awaiting response'),
(91, 'AEE-COMP-22381729', 'AEE824717', 'abcde12345', 'lanreabassab1@gmail.com', '345678', '2022-03-13 09:53:37', 'pending', 'awaiting response'),
(92, 'AEE-COMP-29216683', 'AEE824717', 'abcde12345', 'lanreabassab1@gmail.com', '345678', '2022-03-13 10:00:23', 'pending', 'awaiting response'),
(93, 'AEE-COMP-93128235', 'AEE824717', '12345abcde', 'lanreabassab1@gmail.com', 'help', '2022-03-13 10:02:14', 'pending', 'awaiting response'),
(94, 'AEE-COMP-20759429', 'AEE824717', '12345abcde', 'lanreabassab1@gmail.com', 'help', '2022-03-13 10:02:28', 'pending', 'awaiting response'),
(95, 'AEE-COMP-27147611', 'AEE824717', '12345abcde', 'lanreabassab1@gmail.com', 'help', '2022-03-13 10:03:26', 'pending', 'awaiting response'),
(96, 'AEE-COMP-32923451', 'AEE824717', '12345abcde', 'lanreabassab1@gmail.com', 'help', '2022-03-13 10:03:31', 'pending', 'awaiting response'),
(97, 'AEE-COMP-91118693', 'AEE824717', '12345abcde', 'lanreabassab1@gmail.com', 'help', '2022-03-13 10:03:47', 'pending', 'awaiting response'),
(98, 'AEE-COMP-76740105', 'AEE824717', '12345abcde', 'lanreabassab1@gmail.com', 'help', '2022-03-13 10:03:58', 'pending', 'awaiting response'),
(99, 'AEE-COMP-38292591', 'AEE824717', '12345abcde', 'lanreabassab1@gmail.com', '135w', '2022-03-13 10:20:20', 'pending', 'awaiting response'),
(100, 'AEE-COMP-44287908', 'AEE361552', '12345abcde', 'lanreabassab1@gmail.com', '135w', '2022-03-13 10:22:35', 'pending', 'awaiting response'),
(101, 'AEE-COMP-793338', 'AEE824717', 'abcde12345', 'lanreabassab1@gmail.com', '1234', '2022-03-13 20:08:38', 'pending', 'awaiting response'),
(102, 'AEE-COMP-69020066', 'AEE824717', '1237856789', 'lanreabassab1@gmail.com', 'ko shi she', '2023-10-28 07:03:38', 'pending', 'awaiting response');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signed_up_customers`
--
ALTER TABLE `signed_up_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userstable`
--
ALTER TABLE `userstable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address` (`addresss`),
  ADD UNIQUE KEY `email_address` (`email_address`),
  ADD UNIQUE KEY `meterid` (`meterid`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- Indexes for table `users_complaint`
--
ALTER TABLE `users_complaint`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `signed_up_customers`
--
ALTER TABLE `signed_up_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `trash`
--
ALTER TABLE `trash`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userstable`
--
ALTER TABLE `userstable`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `users_complaint`
--
ALTER TABLE `users_complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
