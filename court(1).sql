-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 03:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `court`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `password` text NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'محمد فوده', 'foda123', 1, '2023-08-31 11:45:16', '2023-08-31 11:45:16'),
(5, 'خالد', '12345', 2, '2023-08-31 12:16:57', '2023-08-31 12:16:57');

-- --------------------------------------------------------

--
-- Stand-in structure for view `admin_details`
-- (See below for the actual view)
--
CREATE TABLE `admin_details` (
`id` int(11)
,`name` varchar(40)
,`password` text
,`role_id` int(11)
,`description` varchar(40)
);

-- --------------------------------------------------------

--
-- Table structure for table `civil`
--

CREATE TABLE `civil` (
  `id` int(11) NOT NULL,
  `Appeal_No` int(11) NOT NULL,
  `Appeal_Date` date NOT NULL,
  `appeal_num` int(11) NOT NULL,
  `appellant_num` int(11) NOT NULL,
  `appeal_name` varchar(200) NOT NULL,
  `appellant_name` varchar(200) NOT NULL,
  `circle_no` varchar(100) NOT NULL,
  `history_ruling` date NOT NULL,
  `note` text NOT NULL,
  `file` text NOT NULL,
  `file_numbers` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `civil`
--

INSERT INTO `civil` (`id`, `Appeal_No`, `Appeal_Date`, `appeal_num`, `appellant_num`, `appeal_name`, `appellant_name`, `circle_no`, `history_ruling`, `note`, `file`, `file_numbers`, `created_at`, `updated_at`) VALUES
(42, 5644, '2023-09-13', 1, 1, '[\"adasda\"]', '[\"kasmd\"]', '6465464865', '2023-09-21', 'ممحمشسيحجكس', '[\"1693560692apple-touch-icon.png\",\"1693560692card.jpg\",\"1693560692logo2.png\"]', 3, '2023-09-01 09:27:57', '2023-09-01 09:27:57'),
(43, 45645, '2023-09-10', 2, 2, '[\"mohamed\",\"ahmed\"]', '[\"moaz\",\"rami\"]', '646545', '2023-09-27', 'يارب', '[\"1693570232card.jpg\",\"1693570232favicon.png\",\"1693570232leverage.jpg\",\"1693570232logo2.png\"]', 4, '2023-09-01 12:10:32', '2023-09-01 12:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment`
--

CREATE TABLE `investment` (
  `id` int(11) NOT NULL,
  `Appeal_No` int(50) NOT NULL,
  `Appeal_Date` date NOT NULL,
  `appeal_num` int(11) NOT NULL,
  `appellant_num` int(11) NOT NULL,
  `appeal_name` text NOT NULL,
  `appellant_name` text NOT NULL,
  `circle_no` int(50) NOT NULL,
  `history_ruling` date NOT NULL,
  `note` text NOT NULL,
  `file` text NOT NULL,
  `file_numbers` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legal`
--

CREATE TABLE `legal` (
  `id` int(11) NOT NULL,
  `Appeal_No` int(11) NOT NULL,
  `Appeal_Date` date NOT NULL,
  `appeal_num` int(11) NOT NULL,
  `appellant_num` int(11) NOT NULL,
  `appeal_name` varchar(200) NOT NULL,
  `appellant_name` varchar(200) NOT NULL,
  `circle_no` varchar(100) NOT NULL,
  `history_ruling` date NOT NULL,
  `note` text NOT NULL,
  `file` text NOT NULL,
  `file_numbers` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `money`
--

CREATE TABLE `money` (
  `id` int(11) NOT NULL,
  `Appeal_No` int(11) NOT NULL,
  `Appeal_Date` date NOT NULL,
  `appeal_num` int(11) NOT NULL,
  `appellant_num` int(11) NOT NULL,
  `appeal_name` varchar(200) NOT NULL,
  `appellant_name` varchar(200) NOT NULL,
  `circle_no` varchar(100) NOT NULL,
  `history_ruling` date NOT NULL,
  `note` text NOT NULL,
  `file` text NOT NULL,
  `file_numbers` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `description` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `description`) VALUES
(1, 'مسؤول'),
(2, 'مدير'),
(3, 'مستخدم');

-- --------------------------------------------------------

--
-- Table structure for table `self`
--

CREATE TABLE `self` (
  `id` int(11) NOT NULL,
  `Appeal_No` int(11) NOT NULL,
  `Appeal_Date` date NOT NULL,
  `appeal_num` int(11) NOT NULL,
  `appellant_num` int(11) NOT NULL,
  `appeal_name` varchar(200) NOT NULL,
  `appellant_name` varchar(200) NOT NULL,
  `circle_no` varchar(100) NOT NULL,
  `history_ruling` date NOT NULL,
  `note` text NOT NULL,
  `file` text NOT NULL,
  `file_numbers` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `Appeal_No` int(11) NOT NULL,
  `Appeal_Date` date NOT NULL,
  `appeal_num` int(11) NOT NULL,
  `appellant_num` int(11) NOT NULL,
  `appeal_name` text NOT NULL,
  `appellant_name` text NOT NULL,
  `circle_no` int(11) NOT NULL,
  `history_ruling` date NOT NULL,
  `note` text NOT NULL,
  `file` text NOT NULL,
  `file_numbers` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `Appeal_No`, `Appeal_Date`, `appeal_num`, `appellant_num`, `appeal_name`, `appellant_name`, `circle_no`, `history_ruling`, `note`, `file`, `file_numbers`, `created_at`, `updated_at`) VALUES
(34, 12345, '2023-08-10', 0, 0, '[\"محمود محمد احمد\",\"احمد خالد السيد\"]', '[\"احمد محمد محمود\",\"سيد\"]', 455, '2023-08-29', 'السلام عليكم', '[\"apple-touch-icon.png\",\"card.jpg\",\"favicon.png\",\"leverage.jpg\",\"loginpic.png\",\"logo.jpeg\",\"logo.jpg\",\"logo.png\",\"logo2.png\",\"messages-1.jpg\",\"messages-2.jpg\",\"messages-3.jpg\",\"news-1.jpg\",\"news-2.jpg\",\"news-3.jpg\",\"news-4.jpg\",\"news-5.jpg\",\"not-found.svg\",\"photo.jpg\",\"product-1.jpg\"]', 20, '2023-08-30 19:37:57', '2023-08-30 19:37:57'),
(35, 465465, '2023-08-31', 0, 0, '[\"احمد\"]', '[\"محمد\"]', 456465, '2023-08-31', 'منيسىشىن', '[\"logo.png\"]', 1, '2023-08-30 20:35:07', '2023-08-30 20:35:07'),
(36, 465465, '2023-08-31', 0, 0, '[\"ايمن\",\"منه\",\"مي\"]', '[\"محمد\",\"مهند\",\"احمد\"]', 456465, '2023-08-31', 'منيسىشىن', '[\"logo.png\"]', 1, '2023-08-30 20:36:02', '2023-08-30 20:36:02'),
(37, 65456431, '2023-08-30', 0, 0, '[]', '[]', 6354654, '2023-08-30', '', '[[[\"1693493999favicon.png\"]]]', 1, '2023-08-31 14:59:59', '2023-08-31 14:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `id` int(11) NOT NULL,
  `Appeal_No` int(11) NOT NULL,
  `Appeal_Date` date NOT NULL,
  `appeal_num` int(11) NOT NULL,
  `appellant_num` int(11) NOT NULL,
  `appeal_name` text NOT NULL,
  `appellant_name` text NOT NULL,
  `circle_no` int(11) NOT NULL,
  `history_ruling` date NOT NULL,
  `note` text NOT NULL,
  `file` text NOT NULL,
  `file_numbers` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`id`, `Appeal_No`, `Appeal_Date`, `appeal_num`, `appellant_num`, `appeal_name`, `appellant_name`, `circle_no`, `history_ruling`, `note`, `file`, `file_numbers`, `created_at`, `updated_at`) VALUES
(3, 5634654, '2023-08-30', 0, 0, '[\"a.,sd\"]', '[\"ada\"]', 53456, '2023-08-30', 'asda', '[\"u0645u062du0645u062f u062du0633u0646.jpeg\",\"u0645u062du0645u062f u0639u0644u064a u0637u0647.jpeg\",\"u0645u0634u064au0631u0629.jpeg\",\"u0645u0635u0637u0641u064a u0627u062du0645u062f.jpeg\"]', 0, '2023-08-29 20:59:46', '2023-08-29 20:59:46'),
(4, 53146541, '2023-08-30', 1, 1, '[\"skajhdkja\"]', '[\"al;ksdlkasm\"]', 653465456, '2023-08-30', 'oaidjoaksl', '[\"1693487740Picsart_22-10-25_21-06-12-021.jpg\",\"1693487740عبدالرحمن 6.xlsx\"]', 2, '2023-08-31 13:15:40', '2023-08-31 13:15:40'),
(5, 123, '2023-08-11', 1, 1, '[\"ahmed\"]', '[\"mahmoud\"]', 456, '2023-08-23', 'ahfjaskf', '[\"card.jpg\",\"messages-1.jpg\"]', 2, '2023-08-31 13:25:24', '2023-08-31 13:25:24'),
(6, 465465, '2023-08-30', 0, 0, '[]', '[]', 6854654, '2023-08-30', '', '[[[[\"1693494823logo2.png\",\"1693494823messages-1.jpg\"]]]]', 1, '2023-08-31 15:13:43', '2023-08-31 15:13:43');

-- --------------------------------------------------------

--
-- Structure for view `admin_details`
--
DROP TABLE IF EXISTS `admin_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin_details`  AS SELECT `admins`.`id` AS `id`, `admins`.`name` AS `name`, `admins`.`password` AS `password`, `roles`.`id` AS `role_id`, `roles`.`description` AS `description` FROM (`admins` join `roles` on(`admins`.`role_id` = `roles`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `civil`
--
ALTER TABLE `civil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment`
--
ALTER TABLE `investment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal`
--
ALTER TABLE `legal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money`
--
ALTER TABLE `money`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `self`
--
ALTER TABLE `self`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `civil`
--
ALTER TABLE `civil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `investment`
--
ALTER TABLE `investment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `legal`
--
ALTER TABLE `legal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `money`
--
ALTER TABLE `money`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `self`
--
ALTER TABLE `self`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
