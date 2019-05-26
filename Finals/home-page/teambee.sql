-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2019 at 06:12 PM
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
  `tookExamBy` datetime DEFAULT NULL,
  PRIMARY KEY (`Examinee No`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Examinee No`, `lname`, `fname`, `topic`, `typeOfQuiz`, `numOfQuestions`, `tookExamBy`) VALUES
(1, 'Vittoria', 'Franz', 'CSS', 'Identification', 11, '2019-05-27 00:45:53'),
(2, 'Adkins', 'Scott', 'JS', 'Identification', 21, '2019-05-27 00:47:38'),
(3, 'Malto', 'Sean', 'HTTP', 'Multiple Choice', 33, '2019-05-27 02:12:14');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
