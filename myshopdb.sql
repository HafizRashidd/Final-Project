-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 04:28 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `email` varchar(50) NOT NULL,
  `prid` varchar(50) NOT NULL,
  `qty` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`email`, `prid`, `qty`) VALUES
('hafiz@gmail.com', '50', 3),
('null', '61', 1),
('null', '63', 1),
('abdhafiz1322@gmail.com', '62', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `prid` int(11) NOT NULL,
  `prname` varchar(30) NOT NULL,
  `prtype` varchar(30) NOT NULL,
  `prprice` double NOT NULL,
  `prqty` int(11) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `picture` varchar(30) NOT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`prid`, `prname`, `prtype`, `prprice`, `prqty`, `datecreated`, `picture`, `created_timestamp`) VALUES
(53, 'Baju Rugby 2020', 'ROUND NECK SHORTSLEEVE', 40, 4, '2021-06-10 11:54:26', '60c18cf283106.png', '2021-06-10 03:54:26'),
(54, 'Baju Rugby Perak', 'RUGBY JERSEY', 60, 100, '2021-06-10 12:01:41', '60c18ea5a9edd.png', '2021-06-10 04:01:41'),
(55, 'Rugby Malaysia 2020', 'RUGBY JERSEY', 60, 200, '2021-06-10 12:02:31', '60c18ed71e0de.png', '2021-06-10 04:02:31'),
(56, 'Protagonis', 'ROUND NECK SHORTSLEEVE', 40, 50, '2021-06-10 12:06:31', '60c18fc720a53.png', '2021-06-10 04:06:31'),
(57, 'IPG PERAK', 'POLO SHORTSLEEV', 40, 40, '2021-06-10 12:07:21', '60c18ff9cd048.png', '2021-06-10 04:07:21'),
(58, 'Intek Rugby', 'SINGLET', 35, 100, '2021-06-10 12:08:01', '60c1902185938.png', '2021-06-10 04:08:01'),
(59, 'UiTM Bowling Club ', 'MUSLIMAH', 45, 30, '2021-06-10 12:09:49', '60c1908d0f3ac.png', '2021-06-10 04:09:49'),
(60, '17 Squad', 'ROUND NECK LONGSLEEVE', 40, 50, '2021-06-10 12:10:23', '60c190af83e15.png', '2021-06-10 04:10:23'),
(61, 'STITOS FRONTLINER JERSEY', 'ROUND NECK SHORTSLEEVE', 40, 100, '2021-06-10 17:24:33', '60c1da51d9769.png', '2021-06-10 09:24:33'),
(62, 'MUSLIMAH', 'MUSLIMAH', 40, 200, '2021-06-10 21:42:53', '60c216dd771ee.png', '2021-06-10 13:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchased`
--

CREATE TABLE `tbl_purchased` (
  `orderid` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `paid` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_purchased`
--

INSERT INTO `tbl_purchased` (`orderid`, `email`, `paid`, `status`) VALUES
('xcrhblpt', 'abdalhafiz98@gmail.com', '40', 'paid'),
('xcrhblpt', 'abdalhafiz98@gmail.com', '40', 'paid'),
('xcrhblpt', 'abdalhafiz98@gmail.com', '40', 'paid'),
('xcrhblpt', 'abdalhafiz98@gmail.com', '40', 'paid'),
('xcrhblpt', 'abdalhafiz98@gmail.com', '40', 'paid'),
('58ofskfy', 'abdalhafiz98@gmail.com', '40', 'paid'),
('win5xmwf', 'abdalhafiz98@gmail.com', '40', 'paid'),
('sw14yc0g', 'abdalhafiz98@gmail.com', '40', 'paid'),
('rk21yadf', 'abdalhafiz98@gmail.com', '40', 'paid'),
('ma2b0oyq', 'abdalhafiz98@gmail.com', '50', 'paid'),
('ma2b0oyq', 'abdalhafiz98@gmail.com', '50', 'paid'),
('ma2b0oyq', 'abdalhafiz98@gmail.com', '50', 'paid'),
('rbomvc2n', 'abdalhafiz98@gmail.com', '40', 'paid'),
('9t80709b', 'abdalhafiz98@gmail.com', '50', 'paid'),
('mnof7zno', 'abdalhafiz98@gmail.com', '231', 'paid'),
('b2xj8kmm', 'abdhafiz1322@gmail.com', '50', 'paid'),
('fbhyn0a1', 'abdhafiz1322@gmail.com', '50', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `otp` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`name`, `email`, `phone`, `password`, `otp`) VALUES
('ABDUL HAFIZ BIN MD RASHID', 'abdhafiz1322@gmail.com', 0, '10ad604972a0dd6dd04e70e7c0b67b518c6f1edc', 8804),
('abu', 'abu@c.com', 117272142, '73fddef46cbcf6b91b2a2da18643439a9b666f4f', 5434),
('ali', 'ali@gmail.com', 117272142, 'b42a6d93d796915222f6ffb2ffdd6137d93c1cdb', 7168),
('min', 'min@c.com', 156266262, 'b6c935d4f3c7b220fa038613a1f9c1b56b255a86', 1634);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`prid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
