-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2014 at 12:00 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uni_health_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appscheduler_bookings`
--

CREATE TABLE IF NOT EXISTS `appscheduler_bookings` (
  `student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_add_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_add_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_notes` text COLLATE utf8_unicode_ci,
  `student_dob` date DEFAULT NULL,
  `student_mis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appointment_id` int(10) unsigned DEFAULT NULL,
  `appointment_d` date DEFAULT NULL,
  `appointment_t` time DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `appscheduler_bookings`
--

INSERT INTO `appscheduler_bookings` (`student_id`, `student_name`, `student_email`, `student_phone`, `student_city`, `student_state`, `student_zip`, `student_add_1`, `student_add_2`, `student_notes`, `student_dob`, `student_mis`, `appointment_id`, `appointment_d`, `appointment_t`) VALUES
(1, 'Preeti', 'preetidagar@gmail.com', '5626826591', 'Santa Clara', 'California', '92115', NULL, NULL, 'typhoid', '2001-12-15', NULL, 11, '2014-12-15', '08:00:00'),
(2, 'Vivek', 'shahvivekn@gmail.com', '5626827047', 'San Diego', 'California', '92117', NULL, NULL, 'fever', '2001-12-16', NULL, 14, '2014-12-17', '08:20:00'),
(3, 'Vipin', 'vipinrthakur@gmail.com', '5626826591', 'Long Beach', 'California', '90815', NULL, NULL, 'flushot', '2000-12-14', NULL, 15, '2014-12-14', '08:25:00'),
(4, 'Karishma', 'm.karish14@gmail.com', '6194525259', 'San Francisco', 'California', '95485', NULL, NULL, 'measles', '2014-11-29', NULL, 17, '2014-12-15', '08:35:00'),
(5, 'Priyanka', 'shahpriyankaj@gmail.com', '7738598387', 'Arlington', 'Texas', '92117', NULL, NULL, 'typhoid', '2000-12-17', NULL, 18, '2014-12-17', '08:05:00'),
(6, 'Nisha', 'nishaj@gmail.com', '6194525259', 'Arlington', 'Texas', '92115', NULL, NULL, 'typhoid', '2001-12-20', NULL, 19, '2014-12-25', '08:10:00'),
(7, 'Saurabh', 'sau_14@gmail.com', '5626826591', 'Los Angeles', 'California', '92115', NULL, NULL, 'measles', '1999-02-01', NULL, 20, '2014-12-26', '08:15:00'),
(8, 'Mayur', 'mayurjurani@gmail.com', '7738598387', 'Los Angeles', 'California', '92118', NULL, NULL, 'flushot', '1999-02-01', NULL, 21, '2014-12-27', '08:20:00'),
(9, 'Karishma', 'm.karish14@gmail.com', '6194525259', 'Long Beach', 'California', '95250', NULL, NULL, 'flushot', '1989-12-17', NULL, 22, '2014-12-19', '08:25:00'),
(10, 'Vivek', 'shahvivekn@gmail.com', '5626826591', 'San Diego', 'California', '92117', NULL, NULL, 'typhoid', '1989-12-17', NULL, 23, '2014-12-19', '08:30:00'),
(11, 'Aashna', 'aashnajpatel@gmail.com', '7738598387', 'Long Beach', 'California', '92115', NULL, NULL, 'feverish', '1999-02-02', NULL, 24, '2014-12-30', '08:35:00'),
(12, 'Jaishri', 'jayshri.nikam@gmail.com', '6194525259', 'Long Beach', 'California', '92115', NULL, NULL, 'typhoid', '1999-02-02', NULL, 25, '2014-12-31', '08:40:00'),
(13, 'Anuj', 'anujsharma@gmail.com', '5626826591', 'Arlington', 'Texas', '92118', NULL, NULL, 'typhoid', '1999-02-02', NULL, 26, '2014-12-26', '08:45:00'),
(14, 'Sahil', 'sahilshah@gmail.com', '7738598387', 'Arlington', 'Texas', '95250', NULL, NULL, 'typhoid', '1999-02-03', NULL, 27, '2014-12-27', '08:50:00'),
(15, 'Lipi', 'lip@gmail.com', '6194525259', 'Arlington', 'Texas', '92117', NULL, NULL, 'measles', '1999-02-01', NULL, 28, '2014-12-26', '08:55:00'),
(16, 'Vinayak', 'vin@gmail.com', '5626826591', 'Arlington', 'Texas', '92115', NULL, NULL, 'flushot', '1999-02-01', NULL, 29, '2014-12-29', '09:00:00'),
(17, 'Vipin', 'vipinrthakur@gmail.com', '7738598387', 'San Diego', 'California', '92115', NULL, NULL, 'flushot', '2001-12-17', NULL, 30, '2014-12-30', '09:05:00'),
(18, 'Preeti', 'preetidagar@gmail.com', '6194525259', 'Long Beach', 'California', '92118', NULL, NULL, 'typhoid', '1998-12-17', NULL, 31, '2014-12-31', '09:10:00'),
(19, 'Raunak', 'raunak.gandhi@gmail.com', '5626826591', 'San Diego', 'California', '95250', NULL, NULL, 'feverish', '1999-02-02', NULL, 32, '2014-12-26', '09:15:00'),
(20, 'Malkesh', 'malkesh.patel@gmail.com', '7738598387', 'Cupertino', 'California', '92117', NULL, NULL, 'typhoid', '1999-02-02', NULL, 33, '2014-12-27', '09:20:00'),
(21, 'Avinash', 'avinashsharma@gmail.com', '6194525259', 'San Francisco', 'California', '92115', NULL, NULL, 'typhoid', '1999-02-02', NULL, 34, '2014-12-26', '09:25:00'),
(22, 'Nirali', 'nirali.shah@gmail.com', '5626826591', 'San Jose', 'California', '92115', NULL, NULL, 'typhoid', '1999-02-03', NULL, 35, '2014-12-29', '09:30:00'),
(23, 'Jay', 'jayrathod@gmail.com', '7738598387', 'San Jose', 'California', '92118', NULL, NULL, 'measles', '1999-02-01', NULL, 36, '2014-12-30', '09:35:00'),
(24, 'Monang', 'monangt@gmail.com', '6194525259', 'San Jose', 'California', '95250', NULL, NULL, 'flushot', '1999-02-01', NULL, 37, '2014-12-31', '09:40:00'),
(25, 'Adit', 'adit.vira15@gmail.com', '5626826591', 'San Francisco', 'California', '92117', NULL, NULL, 'flushot', '1999-02-02', NULL, 38, '2014-12-26', '09:45:00'),
(26, 'Rakesh', 'rak_14@gmail.com', '7738598387', 'San Francisco', 'California', '92115', NULL, NULL, 'typhoid', '1999-02-02', NULL, 39, '2014-12-27', '09:50:00'),
(27, 'Ravi', 'ravi_14@gmail.com', '6194525259', 'San Francisco', 'California', '92115', NULL, NULL, 'feverish', '1999-02-02', NULL, 40, '2014-12-26', '09:55:00'),
(28, 'Apurva', 'apurva_1212@gmail.com', '5626826591', 'Santa Clara', 'California', '92118', NULL, NULL, 'typhoid', '1999-02-03', NULL, 41, '2014-12-29', '10:00:00'),
(29, 'Shaanvi', 'shaanu12@gmail.com', '7738598387', 'Los Angeles', 'California', '95250', NULL, NULL, 'typhoid', '1999-02-01', NULL, 42, '2014-12-30', '10:05:00'),
(30, 'Kevin', 'kevinshah@gmail.com', '6194525259', 'San Francisco', 'California', '92117', NULL, NULL, 'typhoid', '1999-02-01', NULL, 43, '2014-12-31', '10:10:00'),
(31, 'Harshal', 'harshal12@gmail.com', '5626826591', 'Santa Clara', 'California', '92115', NULL, NULL, 'measles', '1999-02-02', NULL, 44, '2014-12-26', '10:15:00'),
(32, 'Vinay', 'vinay1@gmail.com', '7738598387', 'Los Angeles', 'California', '92115', NULL, NULL, 'flushot', '1999-02-02', NULL, 45, '2014-12-27', '10:20:00'),
(33, 'Neha', 'neha_shah@gmail.com', '6194525259', 'San Francisco', 'California', '92118', NULL, NULL, 'flushot', '1999-02-02', NULL, 46, '2014-12-26', '10:25:00'),
(34, 'Dipti', 'dipti_desai@gmail.com', '5626826591', 'Santa Clara', 'California', '95250', NULL, NULL, 'typhoid', '1999-02-03', NULL, 47, '2014-12-29', '10:30:00'),
(35, 'Kaushi', 'kaushi_shah@gmail.com', '7738598387', 'Los Angeles', 'California', '92117', NULL, NULL, 'feverish', '1999-02-01', NULL, 48, '2014-12-30', '10:35:00'),
(36, 'Deepal', 'deepal@gmail.com', '6194525259', 'San Francisco', 'California', '92115', NULL, NULL, 'typhoid', '1999-02-01', NULL, 49, '2014-12-31', '10:40:00'),
(37, 'Arushi', 'arushi_124@gmail.com', '5626826591', 'Santa Clara', 'California', '92115', NULL, NULL, 'typhoid', '1999-02-02', NULL, 50, '2014-12-26', '10:45:00'),
(38, 'Arun', 'arun_1@gmail.com', '7738598387', 'Los Angeles', 'California', '92118', NULL, NULL, 'typhoid', '1999-02-02', NULL, 51, '2014-12-27', '10:50:00'),
(39, 'Aditya', 'adigada@gmail.com', '6194525259', 'San Francisco', 'California', '95250', NULL, NULL, 'measles', '1999-02-02', NULL, 52, '2014-12-26', '10:55:00'),
(40, 'Chaitali', 'chaitali_c@gmail.com', '5626826591', 'Santa Clara', 'California', '92117', NULL, NULL, 'flushot', '1999-02-03', NULL, 53, '2014-12-29', '11:00:00'),
(41, 'Nirav', 'niravwise@gmail.com', '7738598387', 'Los Angeles', 'California', '92115', NULL, NULL, 'flushot', '1999-02-01', NULL, 54, '2014-12-30', '11:05:00'),
(42, 'Komal', 'komal_1412@gmail.com', '6194525259', 'San Francisco', 'California', '92115', NULL, NULL, 'typhoid', '1999-02-01', NULL, 55, '2014-12-31', '11:10:00'),
(43, 'Niyati', 'niyati_p@gmail.com', '5626826591', 'Santa Clara', 'California', '92118', NULL, NULL, 'feverish', '1999-02-02', NULL, 56, '2014-12-26', '11:15:00'),
(44, 'Vipin', 'vipinrthakur@gmail.com', '7738598387', 'Los Angeles', 'California', '95250', NULL, NULL, 'typhoid', '1999-02-03', NULL, 57, '2014-12-27', '11:20:00'),
(45, 'Neha', 'neha_shah@gmail.com', '6194525259', 'San Francisco', 'California', '92117', NULL, NULL, 'typhoid', '1999-02-01', NULL, 58, '2014-12-26', '11:25:00'),
(46, 'Mayur', 'mayurjurani@gmail.com', '5626826591', 'Santa Clara', 'California', '92115', NULL, NULL, 'typhoid', '1999-02-01', NULL, 59, '2014-12-29', '11:30:00'),
(47, 'Preeti', 'preetidagar@gmail.com', '7738598387', 'Los Angeles', 'California', '92115', NULL, NULL, 'measles', '2001-12-17', NULL, 60, '2014-12-17', '11:35:00'),
(48, 'Karishma', 'm.karish14@gmail.com', '6194525259', 'Long Beach', 'California', '92118', NULL, NULL, 'flushot', '2001-12-17', NULL, 61, '2014-12-17', '11:40:00'),
(49, 'Vivek', 'shahvivekn@gmail.com', '5626826591', 'San Diego', 'California', '95250', NULL, NULL, 'flushot', '2001-12-17', NULL, 62, '2014-12-17', '11:45:00'),
(50, 'Priyanka', 'shahpriyankaj@gmail.com', '5626826591', 'Arlington', 'Texas', '95250', NULL, NULL, 'typhoid', '1999-02-01', NULL, 63, '2014-12-27', '11:50:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
