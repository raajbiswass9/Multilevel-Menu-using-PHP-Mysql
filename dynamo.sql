-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2019 at 09:45 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamo`
--

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_menu`
--

CREATE TABLE `dynamic_menu` (
  `id` int(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `parent_id` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dynamic_menu`
--

INSERT INTO `dynamic_menu` (`id`, `name`, `parent_id`) VALUES
(1, 'About', NULL),
(2, 'Contact', NULL),
(3, 'Menu A', NULL),
(4, 'Menu B', NULL),
(5, 'SubMenu A1', 3),
(6, 'SubMenu A2', 3),
(7, 'SubMenu B1', 4),
(8, 'SubMenu B2', 4),
(9, 'SubMenu A1-a', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dynamic_menu`
--
ALTER TABLE `dynamic_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dynamic_menu`
--
ALTER TABLE `dynamic_menu`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
