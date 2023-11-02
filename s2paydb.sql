-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 11:01 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s2paydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `name`, `state_id`) VALUES
(1, 'Delta', 4),
(2, 'Langley', 4),
(3, 'Burnbay', 4),
(4, 'Leon', 5),
(5, 'Zapopan', 5),
(6, 'Puebla', 5),
(7, 'Havana', 6),
(8, 'Bayamo', 6),
(9, 'Holguin', 6),
(10, 'Chennai', 1),
(11, 'Villupuram', 1),
(12, 'Madurai', 1),
(13, 'Coimbatore', 1),
(14, 'Calicut', 2),
(15, 'Kochi', 2),
(16, 'Thiruvandrum', 2),
(17, 'Vizag', 3),
(18, 'Thirupathi', 3),
(19, 'Amaravathi', 3),
(20, 'Melbourne', 7),
(21, 'Bendigo', 7),
(22, 'Geeolong', 7),
(23, 'Hobart', 8),
(24, 'Launcestor', 8),
(25, 'Brisbane', 9),
(26, 'Dalby', 9),
(27, 'Emerald', 9),
(28, 'Lanzhou', 11),
(29, 'Tianshui', 11),
(30, 'Wuwei', 11),
(31, 'Houshanpu', 10),
(32, 'Houshayu', 10),
(33, 'Houtaowacun', 10),
(34, 'Baisha', 12),
(35, 'Changjiang', 12),
(36, 'Danzhou', 12),
(37, 'Chengmai', 12),
(38, 'Kech', 13),
(39, 'Larkana ', 14),
(40, 'Colombo', 15),
(41, 'Moratuwa', 15),
(42, 'Galewela', 16),
(43, 'Pallepola', 16),
(44, 'Dehiwala', 17),
(45, 'Karachi', 14),
(46, 'Pondicherry', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`) VALUES
(1, 'America'),
(2, 'Australia'),
(3, 'India'),
(4, 'China'),
(5, 'Pakistan'),
(6, 'Sri lanka');

-- --------------------------------------------------------

--
-- Table structure for table `empdata`
--

CREATE TABLE `empdata` (
  `id` int(11) NOT NULL,
  `EmpName` varchar(50) NOT NULL,
  `EmpEmail` varchar(100) NOT NULL,
  `EmpNum` bigint(20) NOT NULL,
  `EmpSal` int(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  `states_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empdata`
--

INSERT INTO `empdata` (`id`, `EmpName`, `EmpEmail`, `EmpNum`, `EmpSal`, `country_id`, `states_id`, `city_id`) VALUES
(1, 'baba', 'sd@gmail.com', 9767723456, 23323, 1, 4, 1),
(2, 'ajantha', 'ajantha@gmail.com', 4132622493, 300000, 2, 7, 20),
(3, 'Balu', 'balu@gmai.com', 9787753914, 400000, 3, 2, 15),
(4, 'sabar', 'sabar@gmail.com', 3342234454, 30000, 4, 12, 37);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `states_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`states_id`, `name`, `country_id`) VALUES
(1, 'Tamilnadu', 3),
(2, 'Kerala', 3),
(3, 'Andhra', 3),
(4, 'Canada', 1),
(5, 'Mexico', 1),
(6, 'Cuba', 1),
(7, 'Victoria', 2),
(8, 'Tasmania', 2),
(9, 'Queensland', 2),
(10, 'Beijing', 4),
(11, 'Gansu', 4),
(12, 'Haina', 4),
(13, 'Balochistan', 5),
(14, 'Sindh', 5),
(15, 'Anuradhapuram', 6),
(16, 'Matelae', 6),
(17, 'Kandy', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `empdata`
--
ALTER TABLE `empdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`states_id`),
  ADD KEY `country_id` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `empdata`
--
ALTER TABLE `empdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `states_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `state_id` FOREIGN KEY (`state_id`) REFERENCES `states` (`states_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
