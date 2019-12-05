-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2019 at 01:02 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beerstats`
--

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
CREATE TABLE IF NOT EXISTS `stats` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8_bin NOT NULL,
  `Density` varchar(80) COLLATE utf8_bin NOT NULL,
  `Radius` varchar(80) COLLATE utf8_bin NOT NULL,
  `Age` varchar(80) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`ID`, `Name`, `Density`, `Radius`, `Age`) VALUES
(1, 'Mercury', '5.43 g/cm3', '2,440 km', '4,503 billion years old'),
(2, 'Venus', '5.24 g/cm3', '6,052 km', '4,503 billion years old'),
(3, 'Earth', '5.51 g/cm3', '6,371 km', '4,543 billion years old'),
(4, 'Mars', '3.93 g /cm3', '3,389.5 km', '4,603 billion years old'),
(5, 'Jupiter', '1.33 g/cm3', '69,911 km', '4,503 billion years old'),
(6, 'Saturn', '687 kg/m3', '58,232 km', '4,503 billion years old'),
(7, 'Neptune', '1.64 g/cm3', '24,622 km', '4,503 billion years old'),
(8, 'Uranus', '1.27 g/cm3', '25,362 km', '4,503 billion years old');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
