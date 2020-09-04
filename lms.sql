-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 04, 2020 at 08:47 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(30) DEFAULT NULL,
  `fathers_name` varchar(30) DEFAULT NULL,
  `employee_id` varchar(14) NOT NULL,
  `dob` varchar(12) DEFAULT NULL,
  `gender` varchar(12) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `locality` varchar(20) DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `fathers_name`, `employee_id`, `dob`, `gender`, `email`, `contact`, `district`, `locality`, `password`) VALUES
('MOHD SALEM DAR', 'MOHD AKRAM DAR', 'IUST1231231232', '1980-12-12', 'TRANS', 'SALIIM@GMAIL.COM', '7889433346', NULL, NULL, '98254'),
('MUHAMMAD ALTAF', 'MOHD SADIQ', 'IUST1231231233', '1989-08-27', 'MALE', 'HELLO@GMAIL.COM', '9596710601', 'Kupwara', 'DARDPORA', 'KAIF1234');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `name` varchar(30) DEFAULT NULL,
  `book_id` int(12) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  `price` varchar(12) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`name`, `book_id`, `author`, `price`, `publisher`) VALUES
('JAVASCRIPT ELOQUENT', 77890, 'SAMEER DEV Kapl', '578', 'newyork press lmt');

-- --------------------------------------------------------

--
-- Table structure for table `issued_books`
--

DROP TABLE IF EXISTS `issued_books`;
CREATE TABLE IF NOT EXISTS `issued_books` (
  `name` varchar(30) DEFAULT NULL,
  `book_id` int(10) NOT NULL,
  `registration_no` varchar(14) DEFAULT NULL,
  `issued_date` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(40) DEFAULT NULL,
  `fathers_name` varchar(40) DEFAULT NULL,
  `registration_no` varchar(14) NOT NULL,
  `dob` varchar(12) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `branch` varchar(15) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `locality` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`registration_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `fathers_name`, `registration_no`, `dob`, `gender`, `branch`, `district`, `locality`, `email`, `contact`, `password`) VALUES
('SADAM HUSSAIN', 'GULAM AHMAD', 'IUST0118010844', '1999-03-01', 'MALE', 'CSE', 'Kupwara', 'DARDPORA', 'GHUSSAIN@GMAIL.COM', '7889422245', '41304'),
('MOHD AADIL', 'AB RASHID', 'iust0118010833', '2004-08-28', 'MALE', 'ME', 'Pulwama', 'AWANTIPORA', 'AADIL@GMAIL.COM', '7889422211', 'AADIL123'),
('MEHRAJ DIN', 'MOHD YOUSEF', 'IUST0118010899', '2000-01-01', 'MALE', 'CSE', 'Kulgam', 'DADE LANE', 'ABCDE@GMAIL.COM', '7889455567', 'MEHRAJ123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
