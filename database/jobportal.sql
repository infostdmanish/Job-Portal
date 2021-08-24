-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2013 at 04:27 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `applied_jobs`
--

CREATE TABLE IF NOT EXISTS `applied_jobs` (
  `a_id` int(5) NOT NULL AUTO_INCREMENT,
  `jusername` varchar(30) NOT NULL,
  `job_post_id` int(5) NOT NULL,
  PRIMARY KEY (`a_id`),
  KEY `job_post_id` (`job_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `applied_jobs`
--

INSERT INTO `applied_jobs` (`a_id`, `jusername`, `job_post_id`) VALUES
(9, 'manish', 17),
(10, 'manish', 22),
(11, 'manish', 26),
(12, 'manish', 19),
(13, 'sabir', 19),
(15, 'manish', 18),
(16, 'akash', 19),
(17, 'akash', 19),
(18, 'akash', 17),
(19, 'akash', 18),
(20, 'akash', 22),
(21, 'swift', 17),
(25, 'manish', 19),
(26, 'manish', 21),
(27, 'manish', 28),
(28, 'manish', 28),
(29, 'manish', 18),
(30, 'sanjivudas', 17),
(33, 'sanjivudas', 21),
(34, 'rajendra', 19),
(35, 'manish', 17),
(36, 'manish', 27),
(37, 'arun', 19),
(38, 'arun', 18),
(39, 'manish', 18),
(40, 'manish', 17),
(41, 'manish', 28),
(42, 'ashis', 19),
(43, 'ashis', 17),
(44, 'salen', 19),
(45, 'salen', 21),
(46, 'salen', 17),
(47, 'simal', 19),
(48, 'anmol', 19),
(49, 'anmol', 17),
(50, 'regan', 17),
(51, 'regan', 17),
(52, 'regan', 22),
(53, 'robin', 19),
(54, 'robin', 17),
(55, 'suman', 19),
(56, 'suman', 17),
(57, 'suman', 22),
(58, 'suman', 28),
(59, 'manish', 28),
(60, 'manish', 28),
(61, 'manish', 28),
(62, 'manish', 28),
(63, 'manish', 22);

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE IF NOT EXISTS `employer` (
  `emp_id` int(5) NOT NULL AUTO_INCREMENT,
  `ename` varchar(30) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `eusername` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL,
  `location` varchar(30) NOT NULL,
  `establish` varchar(20) NOT NULL,
  `office_no` varchar(20) NOT NULL,
  `website` varchar(30) NOT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `username` (`eusername`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`emp_id`, `ename`, `cname`, `mail`, `eusername`, `password`, `cpassword`, `location`, `establish`, `office_no`, `website`) VALUES
(8, 'Manish ', 'Swift Innovation ', 'swift_123@gmail.com', 'swift', 'swift', 'swift', 'baneshwor', '', '', ''),
(9, 'Shakya ', 'Guna Airlines', 'guna@hotmail.com', 'shakya', 'pass', 'pass', 'Kathmandu', '2010-03-10', '01-5553873', 'www.guna.com.np'),
(11, 'Mercantile ', 'Mercantile PVT ', 'mercantile@gmail.com', 'mercantile', 'pass', 'pass', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE IF NOT EXISTS `jobseeker` (
  `js_id` int(5) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `mnum` varchar(20) NOT NULL,
  `hnum` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `degree` varchar(20) NOT NULL,
  `msubject` varchar(20) NOT NULL,
  `gcollegename` varchar(30) NOT NULL,
  `experience` varchar(5) NOT NULL,
  `Level` varchar(20) NOT NULL,
  `availability` varchar(20) NOT NULL,
  `farea` varchar(50) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `marital` varchar(20) NOT NULL,
  `gen` varchar(10) NOT NULL,
  PRIMARY KEY (`js_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`js_id`, `firstname`, `lastname`, `mail`, `username`, `password`, `cpassword`, `address`, `mnum`, `hnum`, `nationality`, `degree`, `msubject`, `gcollegename`, `experience`, `Level`, `availability`, `farea`, `occupation`, `dob`, `marital`, `gen`) VALUES
(2, 'Akash', 'Rajbanshi', 'raj_as@hotmial.com', 'akash', 'akash', 'akash', '', '', '', '', '', '', '', '', '', '', '', '', '2013-02-24', '', ''),
(3, 'manish', 'shakya', 'infostdmanish@gmail.', 'manish', 'pass', 'pass', 'pulchowk', '98298924', '5553873', 'Other', 'Bachelor', 'Doctoring', 'Islington college', 'Yes', 'Middle', 'Part_time', 'Computer', 'teacher', '2013-04-02', 'Single', 'Male'),
(4, 'John', 'Cooper', 'john_cooper@gmail.co', 'john', 'john', 'john', '', '', '', '', '', '', '', '', '', '', '', 'Doctor', '2004-07-20', 'Married', 'Male'),
(5, 'suman', 'shakya', 'suman_123@hotmail.co', 'suman', 'suman', 'suman', '', '', '', '', '', '', '', '', '', '', '', 'Farmer', '2004-02-08', 'Married', 'Female'),
(6, 'Sabir', 'Shrestha', 'sabir@hotmail.com', 'sabir', 'sabir', 'sabir', '', '', '', '', '', '', '', 'yes', 'Entry', 'Full time', 'Computer', 'student', '2013-03-13', 'Single', 'Male'),
(9, 'rajendra', 'maharjan', 'sdflkjs', 'rajendra', 'pass', 'pass', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', ''),
(10, 'arun', 'shakya', 'arun_123@hotmailm.co', 'arun', 'pass', 'pass', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', ''),
(11, 'Chandra', 'Gupta', 'chandra@gmail.com', 'chandra', 'pass', 'pass', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', ''),
(13, 'Rajan', 'Maharjan', 'rajan@gmail.com', 'rajan', 'pass', 'pass', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', ''),
(14, 'Regan', 'shakya', 'regan_123@hotmail.co', 'regan', 'pass', 'pass', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', ''),
(15, 'Ashis', 'Maharjan', 'ashis_123@hotmail.co', 'ashis', 'pass', 'pass', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', ''),
(16, 'Salen', 'Maharjan', 'salem@gmail.com', 'salen', 'pass', 'pass', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', ''),
(17, 'Simal', 'Shrestha', 'simal@hotmail.com', 'simal', 'pass', 'pass', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', ''),
(18, 'Anmol', 'Rajbandari', 'anmol@gmail.com', 'anmol', 'pass', 'pass', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', ''),
(19, 'Robin', 'Thapa', 'robin@gmail.com', 'robin', 'pass', 'pass', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE IF NOT EXISTS `job_post` (
  `job_post_id` int(5) NOT NULL AUTO_INCREMENT,
  `emp_id` int(5) NOT NULL,
  `jobtitle` varchar(30) NOT NULL,
  `vacancy` int(5) NOT NULL,
  `postdate` date NOT NULL,
  `clocation` varchar(30) NOT NULL,
  `salary` double(10,2) NOT NULL,
  `jobcategory` varchar(50) NOT NULL,
  `jobtype` varchar(10) NOT NULL,
  `experience` varchar(30) NOT NULL,
  `level` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`job_post_id`),
  KEY `emp_id` (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`job_post_id`, `emp_id`, `jobtitle`, `vacancy`, `postdate`, `clocation`, `salary`, `jobcategory`, `jobtype`, `experience`, `level`, `gender`) VALUES
(17, 8, 'Designer', 2, '2013-02-12', 'Pokhara', 10000.00, 'IT & Telecommunication', 'Full Time', '2yrs', 'Senior', 'Female'),
(18, 9, 'Marketing', 5, '2013-03-06', 'Putalisadak', 20000.00, 'Marketing / Advertising / Customer Service', 'Part Time', '6Mon', 'Middle', 'Any'),
(19, 9, 'Database Admin', 4, '2009-03-16', 'Kamal Pokhari', 34000.00, 'IT & Telecommunication', 'Contract', '4yrs', 'Senior', 'Male'),
(21, 9, 'environment officer', 3, '2013-03-12', 'Pulchowk', 20000.00, 'Marketing / Advertising / Customer Service', 'Full Time', '6Mon', 'Middle', 'Male'),
(22, 9, 'Counter staff', 3, '2013-03-20', 'Kathmandu', 10000.00, 'Secretarial / Front Office / Data Entry', 'Full Time', '6Mon', 'Middle', 'Female'),
(23, 9, 'Receiptionist', 3, '2013-03-20', 'Kathmandu', 12000.00, 'Secretarial / Front Office / Data Entry', 'Full Time', '6Mon', 'Senior', 'Male'),
(24, 9, 'Receiptionist', 4, '2013-03-27', 'Lalitpur', 3000.00, 'Architecture/Interior Designing', 'Contract', '3Mon', 'Middle', 'Female'),
(25, 9, 'Marketing staff', 2, '2013-03-27', 'Lalitpur', 3000.00, 'Architecture/Interior Designing', 'Contract', '3Mon', 'Middle', 'Male'),
(26, 9, 'Ticketing ', 2, '2013-03-27', 'Lalitpur', 34000.00, 'Hospitality', 'Full Time', '3Mon', 'Middle', 'Male'),
(28, 8, 'ASP.Dot Net', 4, '2013-04-09', 'Patan', 20000.00, 'IT & Telecommunication', 'Contract', '6Mon', 'Entry', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `m_id` int(5) NOT NULL AUTO_INCREMENT,
  `sender_name` varchar(20) NOT NULL,
  `receiver_name` varchar(20) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message_desc` text NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`m_id`, `sender_name`, `receiver_name`, `subject`, `message_desc`) VALUES
(4, 'arun', 'shakya', 'Job vacancy Notice', 'We have vacancy in our company so if you are you can visit our company.'),
(6, 'regan', 'shakya', 'Job vacancy Notice', 'We have vacancy in our company so if you are you can visit our company.'),
(7, 'salen', 'shakya', 'Job vacancy Notice', 'We have vacancy in our company so if you are you can visit our company.'),
(21, 'swift', 'manish', 'job specification', 'I have only 1 year of experience so do i qualify for that jobs.'),
(27, 'manish', 'shakya', 'this is message from', 'this is just the check'),
(28, 'shakya', 'manish', 'this is message form', 'this just the check');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_post`
--
ALTER TABLE `job_post`
  ADD CONSTRAINT `job_post_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employer` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
