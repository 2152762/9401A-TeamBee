-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 07, 2019 at 03:21 AM
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
-- Database: `webtek_lec`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `rowNo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `topicNo` int(11) NOT NULL,
  `quizType` varchar(30) NOT NULL,
  `difficulty` varchar(20) NOT NULL,
  `examQuestions` longtext NOT NULL,
  `answers` varchar(500) NOT NULL,
  PRIMARY KEY (`rowNo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`rowNo`, `topicNo`, `quizType`, `difficulty`, `examQuestions`, `answers`) VALUES
(1, 1, 'identification', 'hardened', '1. Enumerate all 6 Functionalities when retrieving references to nodes in DOM.\r\n\r\n2. Who developed CSS?', '1. getElementById(), getElementsByTagName(), getElementsByClassName(), getElementsByName(), querySelector(), querySelectorAll()\r\n\r\n2. Hakon Wium Lie, Bert Bos'),
(2, 1, 'fill in the blanks', 'veteran', '1. Fill in the blanks. Find what\'s wrong with the code below that\'s not making the light bulb Turn ON: < Add the necessary codes >\r\n\r\n<button onclick = \"document.getElementById(\'myImAGE\')(a)_______\" class = \"button button1 w3-opacity w3-green w3-hover-opacity-off\"> Turn ON the light\r\n</button>\r\n\r\n<img (b)_______ src = \"pic_bulboff.gif\" style = \"width:100px\">\r\n\r\n<button onclick = \"document.getElementById(\'myImAGE\')(c)_______\" class = \"button button1 w3-opacity w3-red w3-hover-opacity-off\"> Turn OFF the light\r\n</button>', '1. (a) .src = \'pic_bulbon.gif\', (b) id = \"myImAGE\", (c) .src = \'pic_bulboff.gif\'');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE IF NOT EXISTS `studentinfo` (
  `idNo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studName` varchar(40) NOT NULL,
  `topic` varchar(20) NOT NULL,
  `typeOfQuiz` varchar(20) NOT NULL,
  `numOfQuestions` int(11) NOT NULL,
  `chosenDifficulty` varchar(20) NOT NULL,
  `tookExamBy` datetime DEFAULT NULL,
  `finishedExamBy` datetime DEFAULT NULL,
  `examScore` int(11) DEFAULT NULL,
  `yourAnswers` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idNo`)
) ENGINE=InnoDB AUTO_INCREMENT=9021346 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`idNo`, `studName`, `topic`, `typeOfQuiz`, `numOfQuestions`, `chosenDifficulty`, `tookExamBy`, `finishedExamBy`, `examScore`, `yourAnswers`) VALUES
(1234567, 'asjdfiu, osadouahdouahsdasd', 'misc', 'Identification', 10, 'Veteran', '2019-05-06 15:49:02', '2019-05-06 20:03:34', NULL, NULL),
(2100000, 'Adkins, Scott', 'HTTP', 'Fill in the blanks', 20, 'Hardened', '2019-05-06 15:46:27', '2019-05-06 16:49:20', 13, NULL),
(2141234, 'Malto, Sean', 'JS', 'Identification', 10, 'Veteran', '2019-05-06 15:48:31', NULL, NULL, NULL),
(2143111, 'Prime, Optimus', 'css', 'Identification', 25, 'Hardened', '2019-05-06 16:09:56', NULL, 22, '2. Hakon Wium Lie & Bert Bos'),
(2154838, 'Guzman, Franz Vittoria', 'JS', 'Fill in the blanks', 15, 'Veteran', '2019-05-06 16:09:08', '2019-05-06 20:16:14', 12, 'a. you, b. me, c.'),
(2345678, 'TESTING Finised Exam By', 'HTTP', 'Fill in the blanks', 5, 'Veteran', '2019-05-06 16:35:17', '2019-05-06 16:35:32', 2, NULL),
(7654321, 'Stranger Things', 'http', 'Identification', 30, 'Hardened', '2019-05-06 16:57:43', NULL, NULL, NULL),
(8901234, 'Malone, Post', 'MISC', 'Fill in the blanks', 5, 'Veteran', '2019-05-06 16:54:36', '2019-05-06 17:02:25', 3, NULL),
(9021345, 'Spag Heddy', 'js', 'Fill in the blanks', 10, 'Veteran', '2019-05-06 17:00:53', NULL, NULL, NULL),
(9300000, 'Renner, Jeremy', 'HTTP', 'Identification', 20, 'Hardened', '2019-05-06 19:50:29', NULL, NULL, NULL),
(9876540, 'Brown, Kane', 'js', 'Identification', 15, 'Hardened', '2019-05-06 16:52:10', '2019-05-06 16:55:18', 9, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
