-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 19, 2023 at 12:01 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docket`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE IF NOT EXISTS `data` (
  ` id` int NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `lawyerName` tinytext NOT NULL,
  `address` tinytext NOT NULL,
  `caseType` tinytext NOT NULL,
  `contact` tinytext NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (` id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (` id`, `name`, `lawyerName`, `address`, `caseType`, `contact`, `date`) VALUES
(1, 'Ajit Meesala', 'Lalitendra', 'College Road, Srikakulam, Andhra Pradesh, 532127', 'Civil', '9848398231', '2023-10-10 13:20:27'),
(2, 'Lalitendra Konna', 'Ajit', 'GMR Nagar, Rajam, Andhra Pradesh, 532127', 'Criminal', '1234567890', '2023-10-10 13:21:13'),
(3, 'Ajit Meesala', 'Lalitendra', 'College Road, Srikakulam, Andhra Pradesh, 532127', 'Criminal', '9848398231', '2023-10-10 13:47:25'),
(4, 'Lalitendra Konna', 'Ajit', 'GMR Nagar, Rajam, Andhra Pradesh, 532127', 'Civil', '9848398231', '2023-10-10 13:47:55');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
