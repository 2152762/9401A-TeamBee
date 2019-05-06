-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 06, 2019 at 03:17 AM
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
  `topicNo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `questionsByDifficultyAndType` varchar(10000) NOT NULL,
  `answer` varchar(300) NOT NULL,
  PRIMARY KEY (`topicNo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`topicNo`, `questionsByDifficultyAndType`, `answer`) VALUES
(1, 'RECRUIT / identification : [1] What is the meaning of the acronym CSS?\r\n\r\nHARDENED / identification : [2] Who developed CSS?', '[1] Cascading Style Sheets\r\n\r\n[2] Hakon Wium Lie, Bert Bos'),
(2, 'HARDENED / identification : [1] Enumerate all 6 Functionalities when retrieving references to nodes in DOM.\r\n\r\nVETERAN / fill in the blanks : [2] Fill in the blanks. Find what\'s wrong with the code below that\'s not making the light bulb Turn ON: < Add the necessary codes >\r\n\r\n<button onclick = \"document.getElementById(\'myImAGE\')(a)_______\" class = \"button button1 w3-opacity w3-green w3-hover-opacity-off\"> Turn ON the light\r\n							</button>\r\n\r\n							<img (b)_______ src = \"pic_bulboff.gif\" style = \"width:100px\">\r\n\r\n							<button onclick = \"document.getElementById(\'myImAGE\')(c)_______\" class = \"button button1 w3-opacity w3-red w3-hover-opacity-off\"> Turn OFF the light\r\n							</button>', '[1] getElementById(), getElementsByTagName(), getElementsByClassName(), getElementsByName(), querySelector(), querySelectorAll()\r\n\r\n[2] (a) .src = \'pic_bulbon.gif\', (b) id = \"myImAGE\", (c) .src = \'pic_bulboff.gif\'');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE IF NOT EXISTS `studentinfo` (
  `idNo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studName` varchar(20) NOT NULL,
  `topic` varchar(20) NOT NULL,
  `typeOfQuiz` varchar(20) NOT NULL,
  `numOfQuestions` int(11) NOT NULL,
  `difficulty` varchar(20) NOT NULL,
  PRIMARY KEY (`idNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2154839 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`idNo`, `studName`, `topic`, `typeOfQuiz`, `numOfQuestions`, `difficulty`) VALUES
(2154838, 'Franz Vittoria', 'JS', 'Fill in the blanks', 30, 'Hardened');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
