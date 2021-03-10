-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2019 at 06:39 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `createaccount`
--

CREATE TABLE `createaccount` (
  `first_name` text NOT NULL,
  `surname` text NOT NULL,
  `blood_group` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `con_pass` varchar(20) NOT NULL,
  `calendar` date NOT NULL,
  `address` text NOT NULL,
  `lastdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `createaccount`
--

INSERT INTO `createaccount` (`first_name`, `surname`, `blood_group`, `email`, `phone`, `pass`, `con_pass`, `calendar`, `address`, `lastdate`) VALUES
('Anujit', 'Datta', 'B-', 'anujit@gmail.com', '01914601485', 'anujit', 'anujit', '1995-10-23', 'Dhaka', NULL),
('Asif', 'Abdulla', 'AB-', 'asif@gmail.com', '018945621659', 'asif', 'asif', '1995-05-16', 'Aftabnagar, B-A', NULL),
('Avijit', 'Datta', 'B+', 'avijit@gmail.com', '01859784694', '123', '123', '1996-09-16', 'PL-57, RD-13, DIT MERUL, BADDA', '2019-07-31'),
('kamrul', 'Islam', 'O+', 'kamrul@gmail.com', '1832406506', 'kamrul', 'kamrul', '1997-12-30', 'PL-57, RD-13, DIT MERUL, BADDA', '0000-00-00'),
('Momtaz', 'Rashel', 'B+', 'momtazrasel8@gmail.com', '01775219993', 'mom', 'mom', '1996-12-31', 'Chattagram', '1000-10-10'),
('Khaled', 'Sifulla', 'A-', 'monmoykms.16@gmail.com', '01715489632', 'monmoy', 'monmoy', '1996-09-16', 'khilgaon, Dhaka', NULL),
('Noni', 'kar', 'O-', 'noni@gmail.com', '01914301481', 'noni', 'noni', '1990-05-22', '', '0000-00-00'),
('Pronoy', 'Das', 'B+', 'pronoydas1122@gmail.com', '01784342889', 'pronoy', 'pronoy', '1996-02-01', 'Rampura', '1996-02-01'),
('Anirban', 'Sarkar', 'B+', 'sarkaran01@gmail.com', '01725946470', 'anirban', 'anirban', '1992-05-12', 'PL-57, RD-13, DIT MERUL, BADDA', NULL),
('Shanto', 'Islam', 'AB+', 'shanto@gmail.com', '01914301481', '555', '555', '1985-07-17', 'Khulna', NULL),
('Shibly', 'Gnr', 'A+', 'shiblygnr@gmail.com', '01521205754', '12345', '12345', '1995-10-06', 'Jatrabari', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `bloodGroup` text NOT NULL,
  `email` text NOT NULL,
  `phnNum` varchar(11) NOT NULL,
  `HAdress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`bloodGroup`, `email`, `phnNum`, `HAdress`) VALUES
('A-', 'datta.senior010@gmail.com', '01832406506', 'PL-57, RD-13, DIT MERUL, BADDA'),
('A+', 'shiblygnr@gmail.com', '01521205754', 'Jarabari');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `email` varchar(30) NOT NULL,
  `name` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`email`, `name`, `subject`, `message`) VALUES
('kamrul@gmail.com', 'kamrul', 'O+ blood', 'I need yesterday. Please help.'),
('monmoykms.16@gmail.com', 'Monmoy', 'reply', 'Thank you for help.');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` text NOT NULL,
  `pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `pass`) VALUES
('avijit@gmail.com', '123'),
('kamrul@gmail.com', 'kamrul'),
('noni@gmail.com', 'noni'),
('pronoydas1122@gmail.com', 'pronoy'),
('monmoykms.16@gmail.com', 'monmoy'),
('kamrul@gmail.com', 'kamrul'),
('monmoykms.16@gmail.com', 'monmoy'),
('asif@gmail.com', 'asif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `createaccount`
--
ALTER TABLE `createaccount`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
