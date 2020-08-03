-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2020 at 10:39 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hms.sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Dentist', 1, 1, 500, '2016-12-31', '09:25', '2017-01-01 00:29:02', 1, 0, ''),
(2, 'Homeopath', 4, 5, 700, '2017-01-11', '14:10', '2017-01-07 08:02:58', 0, 1, ''),
(3, 'General Physician', 6, 6, 2500, '2020-07-31', '23:54', '2020-07-30 16:54:37', 1, 0, ''),
(5, 'Demo test', 7, 7, 2000, '2020-07-30', '18:06', '2020-07-30 17:06:26', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Test', 'Nigeria', '500', 8285703354, 'anuj.lpu1@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2016-12-29 06:25:37', '04-01-2017 01:27:51 PM'),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', ''),
(7, 'Demo test', 'Kay', 'xyz', '2000', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', ''),
(8, 'Gynecologist/Obstetrician', 'Kayode', 'FRSC National HQ No4 Maputo Street Wuse Zone 3 Abuja', '2000', 1111111, 'test@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-07-30 17:26:11', ''),
(10, 'General Physician', 'swd', 'FRSC National HQ No4 Maputo Street Wuse Zone 3 Abuja', '2000', 1111111, 'swd@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-07-30 17:27:20', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE IF NOT EXISTS `doctorslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE IF NOT EXISTS `doctorspecilization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', ''),
(2, 'General Physician', '2016-12-28 06:38:12', ''),
(3, 'Dermatologist', '2016-12-28 06:38:48', ''),
(4, 'Homeopath', '2016-12-28 06:39:26', ''),
(5, 'Ayurveda', '2016-12-28 06:39:51', ''),
(6, 'Dentist', '2016-12-28 06:40:08', ''),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', ''),
(9, 'Demo test', '2016-12-28 07:37:39', '28-12-2016 01:28:42 PM'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '07-01-2017 01:38:04 PM');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 1, '', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 07:02:28', '', 1),
(7, 1, 'info@w3gang.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 07:04:28', '', 1),
(8, 0, 'admin', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 07:07:41', '06-01-2017 12:38:09 PM', 0),
(9, 1, 'info@w3gang.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 07:08:01', '', 1),
(10, 1, 'info@w3gang.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 07:10:09', '06-01-2017 12:41:43 PM', 1),
(11, 2, 'test@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 07:57:18', '07-01-2017 01:27:34 PM', 1),
(12, 0, 'asdad', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 07:57:44', '', 0),
(13, 0, 'xyz@test.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 07:59:43', '', 0),
(14, 5, 'amit12@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 08:00:44', '07-01-2017 01:34:19 PM', 1),
(15, 2, 'test@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-07-29 22:13:37', '30-07-2020 03:44:31 AM', 1),
(16, 2, 'test@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-07-30 08:41:13', '30-07-2020 02:55:50 PM', 1),
(17, 2, 'test@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-07-30 09:34:48', '30-07-2020 03:04:58 PM', 1),
(18, 2, 'test@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-07-30 09:36:34', '30-07-2020 03:06:41 PM', 1),
(19, 2, 'test@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-07-30 09:37:57', '30-07-2020 03:08:08 PM', 1),
(20, 2, 'test@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-07-30 09:43:08', '30-07-2020 03:13:17 PM', 1),
(21, 0, 'admin', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-07-30 16:22:26', '', 0),
(22, 2, 'test@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-07-30 16:22:41', '30-07-2020 09:54:26 PM', 1),
(23, 6, 'fogo@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-07-30 16:53:30', '', 1),
(24, 6, 'fogo@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-08-03 08:37:51', '', 1),
(25, 6, 'fogo@yahoo.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2020-08-03 08:38:22', '03-08-2020 02:08:44 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Anuj kumar', 'Test address', 'Aligarh', 'Males', 'info@w3gang.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-26 07:03:09', '30-12-2016 11:27:47 AM'),
(2, 'Code Projects', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', ''),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '07-01-2017 01:32:12 PM'),
(6, 'kay', 'plot 196 Gbazango Ext Kubwa', 'Abuja', 'male', 'fogo@yahoo.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-07-30 16:53:02', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
