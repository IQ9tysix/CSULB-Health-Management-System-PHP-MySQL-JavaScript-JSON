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
-- Database: `a5599707_health`
--

-- --------------------------------------------------------

--
-- Table structure for table `appscheduler_bookings`
--

use a5599707_health;

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


CREATE TABLE IF NOT EXISTS `appointments_months` (
  `month` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appointments_months`
--

INSERT INTO `appointments_months` (`month`, `amount`) VALUES
('January', 20),
('February', 30),
('March', 50),
('April', 25),
('May', 25),
('June', 40),
('July', 35),
('August', 40),
('September', 40),
('October', 50),
('November', 50),
('December', 20);



CREATE TABLE IF NOT EXISTS `campaign_list` (
  `compaign_name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign_criteria1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign_criteria2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `campaign_list`
--

INSERT INTO `campaign_list` (`compaign_name`, `campaign_criteria1`, `campaign_criteria2`) VALUES
('asdaa', 'Yes', 'Yes'),
('lkjm', 'Yes', 'No'),
('kllkl', 'No', 'Yes'),
('llolol', 'No', 'Yes'),
('abc', 'No', 'Yes'),
('view_abc123', 'Yes', 'No'),
('view_city_state', 'No', 'Yes'),
('view_city_LB_SD', 'Yes', 'No');


--
-- Table structure for table `criteria_groups`
--

CREATE TABLE IF NOT EXISTS `criteria_groups` (
  `view_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `view_criteria` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `criteria_groups`
--

INSERT INTO `criteria_groups` (`view_name`, `view_criteria`) VALUES
('asdcv', 'student_city = Long Beach'),
('sad', 'student_city = Long Beach OR student_city = San Diego'),
('lkjm', 'No Criteria'),
('kllkl', 'student_city = Long Beach'),
('asdaa', 'student_city = Long Beach'),
('llolol', 'student_city = Long Beach'),
('abc', 'student_city = Long Beach'),
('view_abc123', 'student_city = Long Beach'),
('view_city_state', 'student_state = California AND student_city = Long Beach'),
('view_city_LB_SD', 'student_city = Long Beach OR student_city = San Diego'),
('view_city_Long Beach', 'student_city = Long Beach');


--
-- Table structure for table `email_sent`
--

CREATE TABLE IF NOT EXISTS `email_sent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reason` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `appointment_date` date NOT NULL,
  `image_link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;





--
-- Table structure for table `email_table`
--

CREATE TABLE IF NOT EXISTS `email_table` (
  `student_email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `student_notes` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `appointment_modified_d` date NOT NULL,
  `days_before` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_table`
--

INSERT INTO `email_table` (`student_email`, `student_notes`, `appointment_modified_d`, `days_before`) VALUES
('m.karish14@gmail.com', 'I want checkup for flu shots.', '2014-11-05', '3'),
('m.karish14@gmail.com', 'flushot', '2014-11-27', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-28', '3'),
('shahvivekn@gmail.com', 'flushot', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'typhoid', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'fever', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('shahvivekn@gmail.com', 'flushot', '2014-12-02', '3'),
('mayur.jurani@gmail.com', 'vaccination', '2014-12-02', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '3'),
('m.karish14@gmail.com', 'I want checkup for flu shots.', '2014-11-07', '1'),
('m.karish14@gmail.com', 'flushot', '2014-11-29', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'typhoid', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'fever', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'vaccination', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-04', '1'),
('m.karish14@gmail.com', 'I want checkup for flu shots.', '2014-11-05', '3'),
('m.karish14@hotmail.com', 'I have scheduled appointment f', '2014-11-05', '3'),
('shahvivekn@gmail.com', 'I am feeling feverish.', '2014-11-05', '3'),
('shahvivekn@yahoo.co.in', 'Appointment for vaccination', '2014-11-08', '3'),
('shahvivekn@hotmail.com', 'measles', '2014-11-22', '3'),
('shahvivekn@yahoo.co.in', 'typhoid', '2014-11-23', '3'),
('mayur.jurani@gmail.com', 'measles', '2014-11-24', '3'),
('vipinrthakur@gmail.com', 'flu shot', '2014-11-25', '3'),
('aashnajpatel@gmail.com', 'fever', '2014-11-26', '3'),
('m.karish14@gmail.com', 'flushot', '2014-11-27', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-28', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-28', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-28', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-28', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-28', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-28', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-28', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-28', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flushot', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-29', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-29', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-29', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-29', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-29', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-29', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'typhoid', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-29', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-29', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-29', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-29', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-30', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-30', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'fever', '2014-11-30', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-30', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-30', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-30', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-30', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-30', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-30', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-30', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-30', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-01', '3'),
('m.karish14@gmail.com', 'measles', '2014-12-01', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-12-01', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-12-01', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-01', '3'),
('m.karish14@gmail.com', 'measles', '2014-12-01', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-12-01', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-12-01', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-01', '3'),
('m.karish14@gmail.com', 'measles', '2014-12-01', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-12-01', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-12-01', '3'),
('shahvivekn@gmail.com', 'flushot', '2014-12-02', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-02', '3'),
('m.karish14@gmail.com', 'measles', '2014-12-02', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-12-02', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-12-02', '3'),
('mayur.jurani@gmail.com', 'vaccination', '2014-12-02', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-02', '3'),
('m.karish14@gmail.com', 'measles', '2014-12-02', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-12-02', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-12-02', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '3'),
('', '', '0000-00-00', '3'),
('', '', '0000-00-00', '3'),
('', '', '0000-00-00', '3'),
('', '', '0000-00-00', '3'),
('m.karish14@gmail.com', 'I want checkup for flu shots.', '2014-11-07', '1'),
('m.karish14@gmail.com', 'flushot', '2014-11-29', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'typhoid', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'fever', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'vaccination', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-04', '1'),
('m.karish14@gmail.com', 'I want checkup for flu shots.', '2014-11-07', '1'),
('m.karish14@gmail.com', 'flushot', '2014-11-29', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'typhoid', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'fever', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'vaccination', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-04', '1'),
('vipinrthakur@gmail.com', 'flushot', '0000-00-00', '3'),
('vipinrthakur@gmail.com', 'flushot', '2014-12-13', '1'),
('m.karish14@gmail.com', 'flushot', '2014-12-16', '1'),
('aashnajpatel@gmail.com', 'feverish', '2014-12-29', '1'),
('jayshri.nikam@gmail.com', 'typhoid', '2014-12-30', '1'),
('preetidagar@gmail.com', 'typhoid', '2014-12-30', '1'),
('m.karish14@gmail.com', 'flushot', '2014-12-16', '1'),
('shahvivekn@gmail.com', 'fever', '0000-00-00', '3'),
('vipinrthakur@gmail.com', 'flushot', '2014-12-11', '3'),
('m.karish14@gmail.com', 'flushot', '2014-12-14', '3'),
('shahvivekn@gmail.com', 'typhoid', '2014-12-16', '3'),
('aashnajpatel@gmail.com', 'feverish', '2014-12-27', '3'),
('jayshri.nikam@gmail.com', 'typhoid', '2014-12-28', '3'),
('vipinrthakur@gmail.com', 'flushot', '2014-12-27', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-28', '3'),
('raunak.gandhi@gmail.com', 'feverish', '2014-12-23', '3'),
('m.karish14@gmail.com', 'flushot', '2014-12-14', '3'),
('shahvivekn@gmail.com', 'flushot', '2014-12-14', '3');



CREATE TABLE IF NOT EXISTS `feedback` (
  `First_Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Last Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `Gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Age` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Cleanliness` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Facilities` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Comfort` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Responsive` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Friendliness` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Helpfull` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Suggestion` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`First_Name`, `Last Name`, `Address`, `Gender`, `Age`, `Cleanliness`, `Facilities`, `Comfort`, `Responsive`, `Friendliness`, `Helpfull`, `Suggestion`) VALUES
('Karishma', 'Mehta', '1742 Ximeno Avenue\r\nApt 7', 'Female', '19-30', 'very good', 'very good', 'very good', 'very good', 'good', 'good', ' Good'),
('Karishma', 'Mehta', '1742 Ximeno Avenue\r\nApt 7', 'Female', '19-30', 'very good', 'very good', 'great', 'very good', 'very good', 'very good', 'Very good');

--
-- Database: `a5599707_health`
--

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--
CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  primary key(id)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `location`, `caption`) VALUES
(22, 'photos/bank1.jpg', 'djbsj');

--
-- Database: `a5599707_health`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `email`) VALUES
(3, 'm.karish14', '123', 'Karishma', 'Mehta', 'm.karish14@gmail.com');


-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2014 at 12:12 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `a5599707_health`
--

-- --------------------------------------------------------

--
-- Table structure for table `abc`
--

CREATE TABLE IF NOT EXISTS `abc` (
  `student_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count(*)` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `abc`
--

INSERT INTO `abc` (`student_name`, `count(*)`) VALUES
('Aashna', 1),
('Adit', 1),
('Aditya', 1),
('Anuj', 1),
('Apurva', 1),
('Arun', 1),
('Arushi', 1),
('Avinash', 1),
('Chaitali', 1),
('Deepal', 1),
('Dipti', 1),
('Harshal', 1),
('Jaishri', 1),
('Jay', 1),
('Karishma', 3),
('Kaushi', 1),
('Kevin', 1),
('Komal', 1),
('Lipi', 1),
('Malkesh', 1),
('Mayur', 2),
('Monang', 1),
('Neha', 2),
('Nirali', 1),
('Nirav', 1),
('Nisha', 1),
('Niyati', 1),
('Preeti', 3),
('Priyanka', 2),
('Rakesh', 1),
('Raunak', 1),
('Ravi', 1),
('Sahil', 1),
('Saurabh', 1),
('Shaanvi', 1),
('Vinay', 1),
('Vinayak', 1),
('Vipin', 3),
('Vivek', 3);

-- --------------------------------------------------------

--
-- Table structure for table `appointments_months`
--

CREATE TABLE IF NOT EXISTS `appointments_months` (
  `month` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appointments_months`
--

INSERT INTO `appointments_months` (`month`, `amount`) VALUES
('January', 20),
('February', 30),
('March', 50),
('April', 25),
('May', 25),
('June', 40),
('July', 35),
('August', 40),
('September', 40),
('October', 50),
('November', 50),
('December', 20);

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

-- --------------------------------------------------------

--
-- Stand-in structure for view `asdaa`
--
CREATE TABLE IF NOT EXISTS `asdaa` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`student_phone` varchar(255)
,`student_city` varchar(255)
,`student_state` varchar(255)
,`student_zip` varchar(255)
,`student_add_1` varchar(255)
,`student_add_2` varchar(255)
,`student_notes` text
,`student_dob` date
,`student_mis` varchar(255)
,`appointment_id` int(10) unsigned
,`appointment_d` date
,`appointment_t` time
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `asdcv`
--
CREATE TABLE IF NOT EXISTS `asdcv` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`student_phone` varchar(255)
,`student_city` varchar(255)
,`student_state` varchar(255)
,`student_zip` varchar(255)
,`student_add_1` varchar(255)
,`student_add_2` varchar(255)
,`student_notes` text
,`student_dob` date
,`student_mis` varchar(255)
,`appointment_id` int(10) unsigned
,`appointment_d` date
,`appointment_t` time
);
-- --------------------------------------------------------

--
-- Table structure for table `campaign_list`
--

CREATE TABLE IF NOT EXISTS `campaign_list` (
  `compaign_name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign_criteria1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign_criteria2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `campaign_list`
--

INSERT INTO `campaign_list` (`compaign_name`, `campaign_criteria1`, `campaign_criteria2`) VALUES
('asdaa', 'Yes', 'Yes'),
('lkjm', 'Yes', 'No'),
('kllkl', 'No', 'Yes'),
('llolol', 'No', 'Yes'),
('abc', 'No', 'Yes'),
('view_abc123', 'Yes', 'No'),
('view_city_state', 'No', 'Yes'),
('view_city_LB_SD', 'Yes', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `criteria_groups`
--

CREATE TABLE IF NOT EXISTS `criteria_groups` (
  `view_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `view_criteria` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `criteria_groups`
--

INSERT INTO `criteria_groups` (`view_name`, `view_criteria`) VALUES
('asdcv', 'student_city = Long Beach'),
('sad', 'student_city = Long Beach OR student_city = San Diego'),
('lkjm', 'No Criteria'),
('kllkl', 'student_city = Long Beach'),
('asdaa', 'student_city = Long Beach'),
('llolol', 'student_city = Long Beach'),
('abc', 'student_city = Long Beach'),
('view_abc123', 'student_city = Long Beach'),
('view_city_state', 'student_state = California AND student_city = Long Beach'),
('view_city_LB_SD', 'student_city = Long Beach OR student_city = San Diego'),
('view_city_Long Beach', 'student_city = Long Beach');

-- --------------------------------------------------------

--
-- Table structure for table `email_sent`
--

CREATE TABLE IF NOT EXISTS `email_sent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reason` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `appointment_date` date NOT NULL,
  `image_link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `email_sent`
--

INSERT INTO `email_sent` (`id`, `name`, `reason`, `appointment_date`, `image_link`) VALUES
(7, 'Karishma', 'fever', '2014-12-21', 'photos/kari1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `email_table`
--

CREATE TABLE IF NOT EXISTS `email_table` (
  `student_email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `student_notes` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `appointment_modified_d` date NOT NULL,
  `days_before` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_table`
--

INSERT INTO `email_table` (`student_email`, `student_notes`, `appointment_modified_d`, `days_before`) VALUES
('m.karish14@gmail.com', 'I want checkup for flu shots.', '2014-11-05', '3'),
('m.karish14@gmail.com', 'flushot', '2014-11-27', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-28', '3'),
('shahvivekn@gmail.com', 'flushot', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'typhoid', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'fever', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('shahvivekn@gmail.com', 'flushot', '2014-12-02', '3'),
('mayur.jurani@gmail.com', 'vaccination', '2014-12-02', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '3'),
('m.karish14@gmail.com', 'I want checkup for flu shots.', '2014-11-07', '1'),
('m.karish14@gmail.com', 'flushot', '2014-11-29', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'typhoid', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'fever', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'vaccination', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-04', '1'),
('m.karish14@gmail.com', 'I want checkup for flu shots.', '2014-11-05', '3'),
('m.karish14@hotmail.com', 'I have scheduled appointment f', '2014-11-05', '3'),
('shahvivekn@gmail.com', 'I am feeling feverish.', '2014-11-05', '3'),
('shahvivekn@yahoo.co.in', 'Appointment for vaccination', '2014-11-08', '3'),
('shahvivekn@hotmail.com', 'measles', '2014-11-22', '3'),
('shahvivekn@yahoo.co.in', 'typhoid', '2014-11-23', '3'),
('mayur.jurani@gmail.com', 'measles', '2014-11-24', '3'),
('vipinrthakur@gmail.com', 'flu shot', '2014-11-25', '3'),
('aashnajpatel@gmail.com', 'fever', '2014-11-26', '3'),
('m.karish14@gmail.com', 'flushot', '2014-11-27', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-28', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-28', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-28', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-28', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-28', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-28', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-28', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-28', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flushot', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-29', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-29', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-29', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-29', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-29', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-29', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'typhoid', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-29', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-29', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-29', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-29', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-29', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-29', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-29', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-30', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-30', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'fever', '2014-11-30', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-30', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-30', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-30', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-30', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-30', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-30', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-11-30', '3'),
('m.karish14@gmail.com', 'measles', '2014-11-30', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-11-30', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-11-30', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-01', '3'),
('m.karish14@gmail.com', 'measles', '2014-12-01', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-12-01', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-12-01', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-01', '3'),
('m.karish14@gmail.com', 'measles', '2014-12-01', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-12-01', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-12-01', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-01', '3'),
('m.karish14@gmail.com', 'measles', '2014-12-01', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-12-01', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-12-01', '3'),
('shahvivekn@gmail.com', 'flushot', '2014-12-02', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-02', '3'),
('m.karish14@gmail.com', 'measles', '2014-12-02', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-12-02', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-12-02', '3'),
('mayur.jurani@gmail.com', 'vaccination', '2014-12-02', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-02', '3'),
('m.karish14@gmail.com', 'measles', '2014-12-02', '3'),
('shahvivekn@gmail.com', 'flu shot', '2014-12-02', '3'),
('shahvivekn@yahoo.com', 'fever', '2014-12-02', '3'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '3'),
('', '', '0000-00-00', '3'),
('', '', '0000-00-00', '3'),
('', '', '0000-00-00', '3'),
('', '', '0000-00-00', '3'),
('m.karish14@gmail.com', 'I want checkup for flu shots.', '2014-11-07', '1'),
('m.karish14@gmail.com', 'flushot', '2014-11-29', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'typhoid', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'fever', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'vaccination', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-04', '1'),
('m.karish14@gmail.com', 'I want checkup for flu shots.', '2014-11-07', '1'),
('m.karish14@gmail.com', 'flushot', '2014-11-29', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-11-30', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'typhoid', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-01', '1'),
('shahvivekn@gmail.com', 'fever', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-02', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-03', '1'),
('shahvivekn@gmail.com', 'flushot', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'vaccination', '2014-12-04', '1'),
('mayur.jurani@gmail.com', 'flushot', '2014-12-04', '1'),
('vipinrthakur@gmail.com', 'flushot', '0000-00-00', '3'),
('vipinrthakur@gmail.com', 'flushot', '2014-12-13', '1'),
('m.karish14@gmail.com', 'flushot', '2014-12-16', '1'),
('aashnajpatel@gmail.com', 'feverish', '2014-12-29', '1'),
('jayshri.nikam@gmail.com', 'typhoid', '2014-12-30', '1'),
('preetidagar@gmail.com', 'typhoid', '2014-12-30', '1'),
('m.karish14@gmail.com', 'flushot', '2014-12-16', '1'),
('shahvivekn@gmail.com', 'fever', '0000-00-00', '3'),
('vipinrthakur@gmail.com', 'flushot', '2014-12-11', '3'),
('m.karish14@gmail.com', 'flushot', '2014-12-14', '3'),
('shahvivekn@gmail.com', 'typhoid', '2014-12-16', '3'),
('aashnajpatel@gmail.com', 'feverish', '2014-12-27', '3'),
('jayshri.nikam@gmail.com', 'typhoid', '2014-12-28', '3'),
('vipinrthakur@gmail.com', 'flushot', '2014-12-27', '3'),
('preetidagar@gmail.com', 'typhoid', '2014-12-28', '3'),
('raunak.gandhi@gmail.com', 'feverish', '2014-12-23', '3'),
('m.karish14@gmail.com', 'flushot', '2014-12-14', '3'),
('shahvivekn@gmail.com', 'flushot', '2014-12-14', '3');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `First_Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Last Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `Gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Age` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Cleanliness` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Facilities` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Comfort` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Responsive` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Friendliness` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Helpfull` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Suggestion` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`First_Name`, `Last Name`, `Address`, `Gender`, `Age`, `Cleanliness`, `Facilities`, `Comfort`, `Responsive`, `Friendliness`, `Helpfull`, `Suggestion`) VALUES
('Karishma', 'Mehta', '1742 Ximeno Avenue\r\nApt 7', 'Female', '19-30', 'very good', 'very good', 'very good', 'very good', 'good', 'good', ' Good'),
('Karishma', 'Mehta', '1742 Ximeno Avenue\r\nApt 7', 'Female', '19-30', 'very good', 'very good', 'great', 'very good', 'very good', 'very good', 'Very good');

-- --------------------------------------------------------

--
-- Stand-in structure for view `kllkl`
--
CREATE TABLE IF NOT EXISTS `kllkl` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`student_phone` varchar(255)
,`student_city` varchar(255)
,`student_state` varchar(255)
,`student_zip` varchar(255)
,`student_add_1` varchar(255)
,`student_add_2` varchar(255)
,`student_notes` text
,`student_dob` date
,`student_mis` varchar(255)
,`appointment_id` int(10) unsigned
,`appointment_d` date
,`appointment_t` time
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `lkjm`
--
CREATE TABLE IF NOT EXISTS `lkjm` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`student_phone` varchar(255)
,`student_city` varchar(255)
,`student_state` varchar(255)
,`student_zip` varchar(255)
,`student_add_1` varchar(255)
,`student_add_2` varchar(255)
,`student_notes` text
,`student_dob` date
,`student_mis` varchar(255)
,`appointment_id` int(10) unsigned
,`appointment_d` date
,`appointment_t` time
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `llolol`
--
CREATE TABLE IF NOT EXISTS `llolol` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`student_phone` varchar(255)
,`student_city` varchar(255)
,`student_state` varchar(255)
,`student_zip` varchar(255)
,`student_add_1` varchar(255)
,`student_add_2` varchar(255)
,`student_notes` text
,`student_dob` date
,`student_mis` varchar(255)
,`appointment_id` int(10) unsigned
,`appointment_d` date
,`appointment_t` time
);
-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `location`, `caption`) VALUES
(19, 'photos/kari1.jpg', 'kari'),
(20, 'photos/bank1.jpg', 'djbsj'),
(21, 'photos/bank1.jpg', 'djbsj'),
(18, 'photos/bank1.jpg', 'xvxv'),
(17, 'photos/bank1.jpg', 'jchxjc'),
(14, 'photos/bank1.jpg', 'bank'),
(16, 'photos/bank1.jpg', 'hh'),
(15, 'photos/', ''),
(22, 'photos/bank1.jpg', 'djbsj'),
(23, 'photos/bank1.jpg', 'djbsj'),
(24, 'photos/bank1.jpg', 'djbsj'),
(25, 'photos/bank1.jpg', 'djbsj'),
(26, 'photos/bank1.jpg', 'djbsj'),
(27, 'photos/bank1.jpg', 'djbsj'),
(28, 'photos/bank1.jpg', 'djbsj'),
(29, 'photos/bank1.jpg', 'bk'),
(30, 'photos/bank1.jpg', 'bk'),
(31, 'photos/bank1.jpg', 'bk'),
(32, 'photos/bank1.jpg', 'bk'),
(33, 'photos/bank1.jpg', 'bk'),
(34, 'photos/bank1.jpg', 'dhsjzd'),
(35, 'photos/bank1.jpg', 'dhsjzd'),
(36, 'photos/bank1.jpg', 'dhsjzd'),
(37, 'photos/bank1.jpg', 'fdefes'),
(38, 'photos/bank1.jpg', 'fdefes'),
(39, 'photos/bank1.jpg', 'bank'),
(40, 'photos/kari1.jpg', 'dgksz'),
(41, 'photos/bank1.jpg', 'hello'),
(42, 'photos/bank1.jpg', 'bank'),
(43, 'photos/kari1.jpg', 'kari'),
(44, 'photos/bank1.jpg', 'a1'),
(45, 'photos/bank1.jpg', '1'),
(46, 'photos/bank1.jpg', '145'),
(47, 'photos/kari1.jpg', '55'),
(48, 'photos/bank1.jpg', 'hy'),
(49, 'photos/bank1.jpg', 'bank'),
(50, 'photos/kari1.jpg', 'Karishma'),
(51, 'photos/kari1.jpg', 'Karishma');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sad`
--
CREATE TABLE IF NOT EXISTS `sad` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`student_phone` varchar(255)
,`student_city` varchar(255)
,`student_state` varchar(255)
,`student_zip` varchar(255)
,`student_add_1` varchar(255)
,`student_add_2` varchar(255)
,`student_notes` text
,`student_dob` date
,`student_mis` varchar(255)
,`appointment_id` int(10) unsigned
,`appointment_d` date
,`appointment_t` time
);
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `email`) VALUES
(1, 'm.karish14', '123', 'Karishma', 'Mehta', 'm.karish14@gmail.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_abc123`
--
CREATE TABLE IF NOT EXISTS `view_abc123` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`student_phone` varchar(255)
,`student_city` varchar(255)
,`student_state` varchar(255)
,`student_zip` varchar(255)
,`student_add_1` varchar(255)
,`student_add_2` varchar(255)
,`student_notes` text
,`student_dob` date
,`student_mis` varchar(255)
,`appointment_id` int(10) unsigned
,`appointment_d` date
,`appointment_t` time
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_city_lb_sd`
--
CREATE TABLE IF NOT EXISTS `view_city_lb_sd` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`student_phone` varchar(255)
,`student_city` varchar(255)
,`student_state` varchar(255)
,`student_zip` varchar(255)
,`student_add_1` varchar(255)
,`student_add_2` varchar(255)
,`student_notes` text
,`student_dob` date
,`student_mis` varchar(255)
,`appointment_id` int(10) unsigned
,`appointment_d` date
,`appointment_t` time
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_city_state`
--
CREATE TABLE IF NOT EXISTS `view_city_state` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`student_phone` varchar(255)
,`student_city` varchar(255)
,`student_state` varchar(255)
,`student_zip` varchar(255)
,`student_add_1` varchar(255)
,`student_add_2` varchar(255)
,`student_notes` text
,`student_dob` date
,`student_mis` varchar(255)
,`appointment_id` int(10) unsigned
,`appointment_d` date
,`appointment_t` time
);
-- --------------------------------------------------------

--
-- Structure for view `asdaa`
--
DROP TABLE IF EXISTS `asdaa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asdaa` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`student_phone` AS `student_phone`,`appscheduler_bookings`.`student_city` AS `student_city`,`appscheduler_bookings`.`student_state` AS `student_state`,`appscheduler_bookings`.`student_zip` AS `student_zip`,`appscheduler_bookings`.`student_add_1` AS `student_add_1`,`appscheduler_bookings`.`student_add_2` AS `student_add_2`,`appscheduler_bookings`.`student_notes` AS `student_notes`,`appscheduler_bookings`.`student_dob` AS `student_dob`,`appscheduler_bookings`.`student_mis` AS `student_mis`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_d` AS `appointment_d`,`appscheduler_bookings`.`appointment_t` AS `appointment_t` from `appscheduler_bookings` where (`appscheduler_bookings`.`student_city` = 'Long Beach');

-- --------------------------------------------------------

--
-- Structure for view `asdcv`
--
DROP TABLE IF EXISTS `asdcv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asdcv` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`student_phone` AS `student_phone`,`appscheduler_bookings`.`student_city` AS `student_city`,`appscheduler_bookings`.`student_state` AS `student_state`,`appscheduler_bookings`.`student_zip` AS `student_zip`,`appscheduler_bookings`.`student_add_1` AS `student_add_1`,`appscheduler_bookings`.`student_add_2` AS `student_add_2`,`appscheduler_bookings`.`student_notes` AS `student_notes`,`appscheduler_bookings`.`student_dob` AS `student_dob`,`appscheduler_bookings`.`student_mis` AS `student_mis`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_d` AS `appointment_d`,`appscheduler_bookings`.`appointment_t` AS `appointment_t` from `appscheduler_bookings` where (`appscheduler_bookings`.`student_city` = 'Long Beach');

-- --------------------------------------------------------

--
-- Structure for view `kllkl`
--
DROP TABLE IF EXISTS `kllkl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kllkl` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`student_phone` AS `student_phone`,`appscheduler_bookings`.`student_city` AS `student_city`,`appscheduler_bookings`.`student_state` AS `student_state`,`appscheduler_bookings`.`student_zip` AS `student_zip`,`appscheduler_bookings`.`student_add_1` AS `student_add_1`,`appscheduler_bookings`.`student_add_2` AS `student_add_2`,`appscheduler_bookings`.`student_notes` AS `student_notes`,`appscheduler_bookings`.`student_dob` AS `student_dob`,`appscheduler_bookings`.`student_mis` AS `student_mis`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_d` AS `appointment_d`,`appscheduler_bookings`.`appointment_t` AS `appointment_t` from `appscheduler_bookings` where (`appscheduler_bookings`.`student_city` = 'Long Beach');

-- --------------------------------------------------------

--
-- Structure for view `lkjm`
--
DROP TABLE IF EXISTS `lkjm`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lkjm` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`student_phone` AS `student_phone`,`appscheduler_bookings`.`student_city` AS `student_city`,`appscheduler_bookings`.`student_state` AS `student_state`,`appscheduler_bookings`.`student_zip` AS `student_zip`,`appscheduler_bookings`.`student_add_1` AS `student_add_1`,`appscheduler_bookings`.`student_add_2` AS `student_add_2`,`appscheduler_bookings`.`student_notes` AS `student_notes`,`appscheduler_bookings`.`student_dob` AS `student_dob`,`appscheduler_bookings`.`student_mis` AS `student_mis`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_d` AS `appointment_d`,`appscheduler_bookings`.`appointment_t` AS `appointment_t` from `appscheduler_bookings`;

-- --------------------------------------------------------

--
-- Structure for view `llolol`
--
DROP TABLE IF EXISTS `llolol`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `llolol` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`student_phone` AS `student_phone`,`appscheduler_bookings`.`student_city` AS `student_city`,`appscheduler_bookings`.`student_state` AS `student_state`,`appscheduler_bookings`.`student_zip` AS `student_zip`,`appscheduler_bookings`.`student_add_1` AS `student_add_1`,`appscheduler_bookings`.`student_add_2` AS `student_add_2`,`appscheduler_bookings`.`student_notes` AS `student_notes`,`appscheduler_bookings`.`student_dob` AS `student_dob`,`appscheduler_bookings`.`student_mis` AS `student_mis`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_d` AS `appointment_d`,`appscheduler_bookings`.`appointment_t` AS `appointment_t` from `appscheduler_bookings` where (`appscheduler_bookings`.`student_city` = 'Long Beach');

-- --------------------------------------------------------

--
-- Structure for view `sad`
--
DROP TABLE IF EXISTS `sad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sad` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`student_phone` AS `student_phone`,`appscheduler_bookings`.`student_city` AS `student_city`,`appscheduler_bookings`.`student_state` AS `student_state`,`appscheduler_bookings`.`student_zip` AS `student_zip`,`appscheduler_bookings`.`student_add_1` AS `student_add_1`,`appscheduler_bookings`.`student_add_2` AS `student_add_2`,`appscheduler_bookings`.`student_notes` AS `student_notes`,`appscheduler_bookings`.`student_dob` AS `student_dob`,`appscheduler_bookings`.`student_mis` AS `student_mis`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_d` AS `appointment_d`,`appscheduler_bookings`.`appointment_t` AS `appointment_t` from `appscheduler_bookings` where ((`appscheduler_bookings`.`student_city` = 'Long Beach') or (`appscheduler_bookings`.`student_city` = 'San Diego'));

-- --------------------------------------------------------

--
-- Structure for view `view_abc123`
--
DROP TABLE IF EXISTS `view_abc123`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_abc123` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`student_phone` AS `student_phone`,`appscheduler_bookings`.`student_city` AS `student_city`,`appscheduler_bookings`.`student_state` AS `student_state`,`appscheduler_bookings`.`student_zip` AS `student_zip`,`appscheduler_bookings`.`student_add_1` AS `student_add_1`,`appscheduler_bookings`.`student_add_2` AS `student_add_2`,`appscheduler_bookings`.`student_notes` AS `student_notes`,`appscheduler_bookings`.`student_dob` AS `student_dob`,`appscheduler_bookings`.`student_mis` AS `student_mis`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_d` AS `appointment_d`,`appscheduler_bookings`.`appointment_t` AS `appointment_t` from `appscheduler_bookings` where (`appscheduler_bookings`.`student_city` = 'Long Beach');

-- --------------------------------------------------------

--
-- Structure for view `view_city_lb_sd`
--
DROP TABLE IF EXISTS `view_city_lb_sd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_city_lb_sd` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`student_phone` AS `student_phone`,`appscheduler_bookings`.`student_city` AS `student_city`,`appscheduler_bookings`.`student_state` AS `student_state`,`appscheduler_bookings`.`student_zip` AS `student_zip`,`appscheduler_bookings`.`student_add_1` AS `student_add_1`,`appscheduler_bookings`.`student_add_2` AS `student_add_2`,`appscheduler_bookings`.`student_notes` AS `student_notes`,`appscheduler_bookings`.`student_dob` AS `student_dob`,`appscheduler_bookings`.`student_mis` AS `student_mis`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_d` AS `appointment_d`,`appscheduler_bookings`.`appointment_t` AS `appointment_t` from `appscheduler_bookings` where ((`appscheduler_bookings`.`student_city` = 'Long Beach') or (`appscheduler_bookings`.`student_city` = 'San Diego'));

-- --------------------------------------------------------

--
-- Structure for view `view_city_state`
--
DROP TABLE IF EXISTS `view_city_state`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_city_state` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`student_phone` AS `student_phone`,`appscheduler_bookings`.`student_city` AS `student_city`,`appscheduler_bookings`.`student_state` AS `student_state`,`appscheduler_bookings`.`student_zip` AS `student_zip`,`appscheduler_bookings`.`student_add_1` AS `student_add_1`,`appscheduler_bookings`.`student_add_2` AS `student_add_2`,`appscheduler_bookings`.`student_notes` AS `student_notes`,`appscheduler_bookings`.`student_dob` AS `student_dob`,`appscheduler_bookings`.`student_mis` AS `student_mis`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_d` AS `appointment_d`,`appscheduler_bookings`.`appointment_t` AS `appointment_t` from `appscheduler_bookings` where ((`appscheduler_bookings`.`student_state` = 'California') and (`appscheduler_bookings`.`student_city` = 'Long Beach'));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
