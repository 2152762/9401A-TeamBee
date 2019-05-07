-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 07, 2019 at 01:44 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teambee`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `Examinee No` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `topic` varchar(30) NOT NULL,
  `typeOfQuiz` varchar(30) NOT NULL,
  `numOfQuestions` int(11) NOT NULL,
  `chosenDifficulty` varchar(30) NOT NULL,
  PRIMARY KEY (`Examinee No`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Examinee No`, `lname`, `fname`, `topic`, `typeOfQuiz`, `numOfQuestions`, `chosenDifficulty`) VALUES
(1, 'Guzman', 'Franz Vittoria', 'JS', 'Fill in the blanks', 15, 'Veteran'),
(2, 'Malto', 'Sean', 'HTTP', 'Identification', 30, 'Hardened'),
(3, 'Renner', 'Jeremy', 'CSS', 'Fill in the blanks', 20, 'Veteran'),
(4, 'waz', 'zup', 'JS', 'Identification', 25, 'Hardened');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
