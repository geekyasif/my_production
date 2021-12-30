-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 26, 2021 at 10:41 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendence`
--

-- --------------------------------------------------------

--
-- Table structure for table `absent`
--

DROP TABLE IF EXISTS `absent`;
CREATE TABLE IF NOT EXISTS `absent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time DEFAULT NULL,
  `work_hour` time DEFAULT NULL,
  `over_time` time DEFAULT NULL,
  `late_time` time DEFAULT NULL,
  `early_out_time` time DEFAULT NULL,
  `in_location` varchar(200) NOT NULL,
  `out_location` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absent`
--

INSERT INTO `absent` (`id`, `name`, `date`, `in_time`, `out_time`, `work_hour`, `over_time`, `late_time`, `early_out_time`, `in_location`, `out_location`, `user_id`) VALUES
(21, 'user1', '2021-11-10', '12:42:53', '00:00:00', '00:00:12', '12:42:53', '12:42:53', '12:42:53', '12:42:53', '12:42:53', 3),
(22, 'user1', '2021-11-10', '12:42:53', '12:42:53', '00:00:12', '12:42:53', '12:42:53', '12:42:53', '12:42:53', '12:42:53', 3),
(23, 'user1', '2021-11-10', '12:42:53', '12:42:53', '00:00:12', '12:42:53', '12:42:53', '12:42:53', '12:42:53', '12:42:53', 2),
(24, 'user3', '2021-11-10', '12:42:53', '12:42:53', '12:42:53', '12:42:53', '12:42:53', '12:42:53', '12:42:53', '12:42:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `editedby` int(10) NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `selection` varchar(50) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `name`, `editedby`, `timestamp`, `selection`) VALUES
(1, 'civil', 1, '2021-10-08 07:25:03', 'false'),
(2, 'Bar Winder', 1, '2021-10-08 07:26:08', 'false'),
(3, 'Electrician', 1, '2021-10-08 07:27:00', 'true'),
(4, 'Shuttering Carpenter', 1, '2021-10-08 07:27:23', 'false'),
(5, 'Plumber', 1, '2021-10-08 07:27:33', 'false'),
(6, 'False Ceiling', 1, '2021-10-08 07:28:02', 'false'),
(7, 'Water Proofing', 1, '2021-10-08 07:28:19', 'true'),
(8, 'Carpenter', 1, '2021-10-08 07:28:33', 'false'),
(9, 'Painter', 1, '2021-10-08 07:28:46', 'false'),
(10, 'mistri', 1, '2021-11-03 05:50:29', 'false'),
(13, 'labour1', 1, '2021-11-03 06:09:50', 'false'),
(14, 'labour2', 1, '2021-11-03 06:16:09', 'false'),
(15, 'labour3', 1, '2021-11-05 10:52:54', 'false'),
(16, 'cnc', 1, '2021-11-08 08:57:08', 'false'),
(17, 'newlabour', 11, '2021-12-10 10:21:55', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `attempt` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `longi` varchar(255) NOT NULL,
  `lati` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `date`, `time`, `user_id`, `attempt`, `img`, `longi`, `lati`, `location`, `site_id`) VALUES
(10, 'admin', '2021-11-30', '15:52:03.749', '1', '2', 'IMG301120211638267724.jpg', '80.9455504', '26.9160091', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 3),
(11, 'admin', '2021-12-01', '11:35:50.655', '1', '1', 'IMG011220211638338753.jpg', '80.9455431', '26.9160179', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 0),
(12, 'gaurav', '2021-12-01', '11:38:04.912', '2', '1', 'IMG011220211638338887.jpg', '80.9455479', '26.9160137', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 2),
(13, 'admin', '2021-12-01', '11:39:17.412', '1', '2', 'IMG011220211638338958.jpg', '80.9455751', '26.9159831', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 0),
(14, 'gaurav', '2021-12-01', '11:41:37.172', '2', '1', 'IMG011220211638339099.jpg', '80.9455428', '26.9160171', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 1),
(15, 'gaurav', '2021-12-01', '11:42:41.776', '2', '1', 'IMG011220211638339164.jpg', '80.9455406', '26.9160173', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 1),
(16, 'admin', '2021-12-01', '11:45:37.012', '1', '2', 'IMG011220211638339340.jpg', '80.9455507', '26.9160154', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 0),
(17, 'gaurav', '2021-12-01', '11:46:25.624', '2', '1', 'IMG011220211638339388.jpg', '80.9455474', '26.9160147', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 1),
(18, 'nayaadmin', '2021-12-09', '17:06:25.758', '18', '1', 'IMG091220211639049783.jpg', '80.9455494', '26.9160136', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 0),
(19, 'nayaadmin', '2021-12-09', '17:11:26.195', '18', '1', 'IMG091220211639050084.jpg', '80.9455888', '26.9160236', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 0),
(20, 'nayaadmin', '2021-12-09', '17:13:44.349', '18', '1', 'IMG091220211639050222.jpg', '80.9455481', '26.9160134', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 0),
(21, 'nayaadmin', '2021-12-09', '17:15:51.340', '18', '1', 'IMG091220211639050349.jpg', '80.9455419', '26.9160173', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 0),
(22, 'nayaadmin', '2021-12-09', '18:30:32.532', '18', '1', 'IMG091220211639054830.jpg', '80.9455449', '26.9160161', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 0),
(23, 'vineet admin', '2021-12-09', '18:40:31.067', '3', '1', 'IMG091220211639055428.jpg', '80.9455452', '26.9160169', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 5),
(24, 'vineet admin', '2021-12-09', '18:41:11.286', '3', '1', 'IMG091220211639055469.jpg', '80.9455479', '26.9160148', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 5),
(25, 'vineet admin', '2021-12-09', '18:50:33.297', '3', '1', 'IMG091220211639056031.jpg', '80.9455477', '26.9160155', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 5),
(26, 'vineet admin', '2021-12-09', '18:50:58.045', '3', '1', 'IMG091220211639056056.jpg', '80.9455507', '26.9160185', 'D-1/329, opp. Jankipuram, Sector F, Jankipuram, Lucknow, Uttar Pradesh 226021, India', 5);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `by_whom` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `by_whom`, `username`, `amount`, `user_id`, `site_id`, `date`) VALUES
(1, 'bs', 'nayaadmin', 462, '18', '3', '2021-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `fund`
--

DROP TABLE IF EXISTS `fund`;
CREATE TABLE IF NOT EXISTS `fund` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fund`
--

INSERT INTO `fund` (`id`, `amount`, `user_id`, `site_id`, `date`, `time`, `status`) VALUES
(5, '100', '2', '2', '01-12-2021', '18:32:05.348', 'accept'),
(6, '100', '2', '1', '02-12-2021', '14:33:05.916', 'accept'),
(7, '100', '2', '1', '02-12-2021', '15:34:47.363', 'accept'),
(8, '100', '2', '1', '02-12-2021', '15:36:53.956', 'accept'),
(9, '100', '2', '1', '02-12-2021', '16:04:33.620', '0'),
(10, '100', '2', '1', '02-12-2021', '16:21:20.972', '0');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` text NOT NULL,
  `longt` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manpower`
--

DROP TABLE IF EXISTS `manpower`;
CREATE TABLE IF NOT EXISTS `manpower` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `edited_by` varchar(50) DEFAULT '1',
  `date` varchar(255) NOT NULL,
  `skilled` int(10) NOT NULL,
  `unskilled` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manpower`
--

INSERT INTO `manpower` (`id`, `name`, `edited_by`, `date`, `skilled`, `unskilled`, `user_id`, `site_id`) VALUES
(1, 'Electrician', 'vineet admin', '2021-12-10', 0, 0, 11, 8),
(2, 'Water Proofing', 'vineet admin', '2021-12-10', 0, 0, 11, 8);

-- --------------------------------------------------------

--
-- Table structure for table `md_location`
--

DROP TABLE IF EXISTS `md_location`;
CREATE TABLE IF NOT EXISTS `md_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `md5` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_location`
--

INSERT INTO `md_location` (`id`, `md5`) VALUES
(1, '77bb6f644872803a4d0f038a2d0565a6');

-- --------------------------------------------------------

--
-- Table structure for table `pic_activity`
--

DROP TABLE IF EXISTS `pic_activity`;
CREATE TABLE IF NOT EXISTS `pic_activity` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `site_location` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pic_activity`
--

INSERT INTO `pic_activity` (`id`, `site_location`, `type`, `location`, `remark`, `date`, `img`, `user_id`, `site_id`) VALUES
(1, 'lucknow', 'column', 'boundary line', 'ho', '2021-12-08 13:36:09', 'IMG101220211639137842.jpg', 18, 7),
(2, 'lucknow', 'door', 'boundary line', 'hsje', '2021-12-10 17:34:23', 'IMG101220211639137865.jpg', 18, 7);

-- --------------------------------------------------------

--
-- Table structure for table `receiving`
--

DROP TABLE IF EXISTS `receiving`;
CREATE TABLE IF NOT EXISTS `receiving` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `by_whom` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receiving`
--

INSERT INTO `receiving` (`id`, `username`, `by_whom`, `amount`, `site_id`, `user_id`, `date`) VALUES
(2, 'nayaadmin', 'bans', '527', '7', '18', '2021-12-09'),
(3, 'nayaadmin', 'hsjs', '6282', '3', '18', '2021-12-09'),
(4, 'asif', 'vinnet', '1500', '3', '1', '2021-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `selfie_activity`
--

DROP TABLE IF EXISTS `selfie_activity`;
CREATE TABLE IF NOT EXISTS `selfie_activity` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `attempt` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `site_id` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` time NOT NULL,
  `out_time` time NOT NULL,
  `many_employee` varchar(50) NOT NULL,
  `key_insert` char(40) NOT NULL,
  `timezone` varchar(100) NOT NULL,
  `recaptcha` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `start_time`, `out_time`, `many_employee`, `key_insert`, `timezone`, `recaptcha`) VALUES
(1, '08:00:00', '17:00:00', '8', '51e69892ab49df85c6230ccc57f8e1d1606cabbb', 'Asia/Makassar', 0);

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `members` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `name`, `location`, `members`, `user_id`) VALUES
(1, 'integral site 1', 'integral university lucknow', 5, 3),
(2, 'integral site 2', 'integral universitylucknow', 6, 0),
(3, 'integal2', 'integral university', 4, 3),
(4, 'amtapali', 'lko', 2, 1),
(7, 'newa dmin ki site', 'lucknow', 1, 18),
(8, 'mysite', 'lko', 1, 11),
(9, 'my site', 'hardoi', 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `quantity` int(10) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `name`, `brand`, `quantity`, `unit`, `user_id`, `site_id`, `date`) VALUES
(1, 'cement', 'ambuja', 10, 'bags', 0, 4, ''),
(2, 'cement', 'birla', 8600, 'Bags', 11, 5, '7-12-2021'),
(3, 'cement', 'cement', 13, 'cement', 1, 4, ''),
(4, 'cement', 'birla', 47, 'Bags', 11, 1, '05-12-2021'),
(8, 'new materia', 'abc', 0, 'Bags', 11, 5, '6-12-2021'),
(7, 'fhv duf', 'ykh', 110, 'Kg', 11, 5, '7-12-2021'),
(10, 'cement', 'ambuja', 150, 'Bags', 18, 7, '09-12-2021'),
(11, 'loha', 'na', 200, 'Kg', 18, 7, '09-12-2021');

-- --------------------------------------------------------

--
-- Table structure for table `stock_request`
--

DROP TABLE IF EXISTS `stock_request`;
CREATE TABLE IF NOT EXISTS `stock_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `brand` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `user` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `user_id` int(11) NOT NULL,
  `site_id` varchar(255) NOT NULL,
  `material_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_request`
--

INSERT INTO `stock_request` (`id`, `name`, `brand`, `quantity`, `user`, `date`, `status`, `user_id`, `site_id`, `material_id`) VALUES
(9, 'fhv duf', 'ykh', 700, 'vineet', '07-12-2021', 'accept', 3, '5', 7),
(8, 'cement', 'birla', 4070, 'vineet', '07-12-2021', 'accept', 3, '5', 2),
(4, 'cement', 'birla', 26, 'vineet', '05-12-2021', 'accept', 3, '5', 2),
(5, 'cement', 'birla', 110, 'vineet', '05-12-2021', 'accept', 3, '5', 2),
(6, 'fhv duf', 'ykh', 13, 'vineet', '05-12-2021', 'accept', 3, '5', 7),
(7, 'new materia', 'abc', 49, 'vineet', '05-12-2021', 'accept', 3, '5', 8),
(10, 'cement', 'birla', 1000, 'vineet', '07-12-2021', 'pending', 3, '5', 2),
(11, 'fhv duf', 'ykh', 50, 'vineet', '07-12-2021', 'pending', 3, '5', 7),
(12, 'cement', 'birla', 500, 'vineet', '07-12-2021', 'pending', 3, '5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `user_id`, `created`) VALUES
(1, 'cf4a84b9363ee247853e7bcac43d4a', 2, '2021-09-22'),
(2, '2b0357ed10ba0bce888666399bdfc8', 3, '2021-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `totalmanpower`
--

DROP TABLE IF EXISTS `totalmanpower`;
CREATE TABLE IF NOT EXISTS `totalmanpower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_skilled` int(11) NOT NULL,
  `total_unskilled` int(11) NOT NULL,
  `edited_by` varchar(255) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `totalmanpower`
--

INSERT INTO `totalmanpower` (`id`, `total_skilled`, `total_unskilled`, `edited_by`, `site_id`, `user_id`, `date`) VALUES
(1, 8, 17, 'admin', 4, 1, '2021-11-26'),
(2, 75, 0, 'admin', 4, 1, '2021-11-26'),
(3, 4, 9, 'raina', 4, 16, '2021-11-26'),
(4, 7, 2, 'vineet', 22, 3, '2021-12-01'),
(5, 3, 2, 'vineet', 22, 3, '2021-12-01'),
(6, 240, 6, 'vineet', 22, 3, '2021-12-01'),
(7, 2, 7, 'vineet', 22, 3, '2021-12-01'),
(8, 0, 0, 'vineet', 22, 3, '2021-12-01'),
(9, 0, 0, 'vineet', 22, 3, '2021-12-01'),
(10, 0, 0, 'vineet', 22, 3, '2021-12-01'),
(11, 0, 0, 'vineet', 22, 3, '2021-12-01'),
(12, 0, 0, 'vineet', 22, 3, '2021-12-01'),
(13, 0, 0, 'vineet', 22, 3, '2021-12-01'),
(14, 0, 0, 'vineet', 22, 3, '2021-12-03'),
(15, 11, 11, 'vineet', 22, 3, '2021-12-03'),
(16, 0, 0, 'vineet', 22, 3, '2021-12-04'),
(17, 0, 0, 'vineet', 22, 3, '2021-12-04'),
(18, 0, 0, 'vineet', 22, 3, '2021-12-04'),
(19, 0, 0, 'vineet', 22, 3, '2021-12-04'),
(20, 0, 0, 'vineet', 22, 3, '2021-12-04'),
(21, 0, 0, 'vineet', 22, 3, '2021-12-04'),
(22, 0, 0, 'vineet', 22, 3, '2021-12-04'),
(23, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(24, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(25, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(26, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(27, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(28, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(29, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(30, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(31, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(32, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(33, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(34, 0, 0, 'gaurav', 1, 2, '2021-12-08'),
(35, 0, 0, 'vineet', 5, 3, '2021-12-08'),
(36, 0, 0, 'vineet admin', 8, 11, '2021-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
CREATE TABLE IF NOT EXISTS `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `name`) VALUES
(1, 'Kilogram'),
(2, 'Gram');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL,
  `password` text NOT NULL,
  `last_login` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `banned_users` varchar(100) NOT NULL,
  `admin` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `role`, `password`, `last_login`, `status`, `banned_users`, `admin`, `site_id`, `token`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', '0', 'sha256:1000:afMG4GHoH0gR1YsZz3Odq6W3n1M7wTUG:gjbZhnxB9K0im16imrc+yDM23q+8n1Wm', '2021-12-26 10:34:07 AM', 'approved', 'unban', 0, 0, 'fFbDQyjzRNap6qIqNyPt01'),
(2, 'gaurav.suman@gmail.com', 'gaurav', 'suman', '1', 'sha256:1000:afMG4GHoH0gR1YsZz3Odq6W3n1M7wTUG:gjbZhnxB9K0im16imrc+yDM23q+8n1Wm', '2021-12-26 09:24:14 AM', 'approved', 'unban', 1, 1, 'fFbDQyjzRNap6qIqNyPt01'),
(3, 'vineetkamau@gmail.com', 'vineet', '8874327867', '2', 'sha256:1000:JDJ5JDEwJGgzTFZRTWVPdzJjaVc2STFtb1RxME9ndlRBRU5USHZVekZqOXBrLjVQd3BuUnRhTWN0Zngy:p8ZDwCUr3ugm4et+ZKHTkPyGvTqmdqkP', '2021-12-12 10:55:53 AM', 'approved', 'unban', 11, 8, 'dVYBvI_iRJugtHSRgf_43s'),
(10, 'vineet23@gmail.com', 'vineet kumar', '88743278', '2', 'sha256:1000:JDJ5JDEwJGhKRDVPcjBLbExqeE9oUy9NaGdNbGV6Z2ZqcHh2L0NmU3JObFlGV1ppNjVWM1A3aEtZNjk2:CKwJwiNjmj6MQZHYJBscDguK+dazSn/d', '2021-10-11 07:48:24 AM', '', '', 0, 2, ''),
(11, 'abcd@gmail.com', 'vineet admin', '936964015', '1', 'sha256:1000:afMG4GHoH0gR1YsZz3Odq6W3n1M7wTUG:gjbZhnxB9K0im16imrc+yDM23q+8n1Wm', '2021-12-12 10:09:01 AM', '', 'unban', 0, 1, 'dVYBvI_iRJugtHSRgf_43s'),
(12, '4565656', 'test', '12135545', '', 'sha256:1000:JDJ5JDEwJGI3c2UvaTZyLnJCQjN3cGVXdjZXLmVwV0VIWGRqdlRFSGJWRVNQNHhlc204c3ZLTFRXTUpT:ktz25hAiz6vA2qnVvxaRahc3LPgC8Is2', '', '', '', 0, 1, ''),
(13, '1234@gmail.com', 'bsns', '8874327867', '1', 'sha256:1000:JDJ5JDEwJGgzTFZRTWVPdzJjaVc2STFtb1RxME9ndlRBRU5USHZVekZqOXBrLjVQd3BuUnRhTWN0Zngy:p8ZDwCUr3ugm4et+ZKHTkPyGvTqmdqkP', '', 'approved', 'unban', 3, 1, ''),
(16, 'raina@gmail.com', 'raina', '8766383794', '2', 'sha256:1000:JDJ5JDEwJFpFMnhEYUFQUlhvNFhLS05xcUlHc3UxSmJuek1RSWh4cFBYR0xUOXN1MFl6YlFBS0V1alhx:dPyB9wUsrZXzb4OgNygE8gx8mTzR/cHk', '2021-11-26 09:02:48 AM', 'approved', 'unban', 1, 4, ''),
(18, 'newadmin', 'nayaadmin', '8874327867', '1', 'sha256:1000:JDJ5JDEwJEl5R28vaHFRdzhGci9INkZGZldabGVIUmRlVWo0c0VmTm1WSnNrbWFuVC9saXg4bkZjRDhH:dyWcVQI2RPw0d0UE4BG/E7Joyg9QLB9I', '2021-12-10 12:03:33 PM', 'approved', 'unban', 0, 0, 'fFSBI_OiTnu32NPQgFrOSD'),
(19, 'newuser', 'naya user', '9369640153', '2', 'sha256:1000:JDJ5JDEwJHptV2NhQTdmWFBJVGsxVllDN0VKTHU1ZEt2M1dmZGhkTDQwNWRVSW5ELjlzSUp1SHc1NG4y:7UwuWe5UklccyfpzTIjbkc4+0IpBmkJ4', '2021-12-09 11:51:30 AM', 'approved', 'unban', 18, 7, 'eS9qaIHST0GQIf8xwf7XzH'),
(20, 'abcd', '34', '34', '2', 'sha256:1000:JDJ5JDEwJHcwazZLbEx6TmY2cUVmUmRMcHBTMHVETEVXa3pXNW5CZmUvLnZSc0pNSlU2dUVGRC5TUXBP:jGamghzSiQ6G8fdYkjFDBnjeGSL/2xWb', '', 'approved', 'unban', 2, 2, ''),
(28, 'abcd2', '34', '34', '2', 'sha256:1000:JDJ5JDEwJEtTNmw0aktRbVVpckhDU2p6eVFoYU9FQTJzdVQ0NTJwS2MzMHNxaUhtckFGbHVha0xmUDZD:kEWVpjhygWKAewg2BFnPtgPWj0Hz0mmP', '', 'approved', 'unban', 2, 2, ''),
(30, 'abcd3', '34', '34', '2', 'sha256:1000:JDJ5JDEwJHNlRHRwdW11OUlWdWp0RTNtQ1RSTC5sV2dXUUlrM0tGd2k1UUxXMlkyUWVCUkZxUFJ1dVNt:jJGnvBU8/agbAdeXJRz0ojCtFBFVdJOz', '', 'approved', 'unban', 2, 2, ''),
(32, 'vineetkiamau@gmail.com', '34', '34', '2', 'sha256:1000:JDJ5JDEwJHppaFBUay5BZVZBUGhiYVFNSWZQbE9VNmJheEVxek5kb0w4OC9OMUQubHhYc3JoWXhWQzNt:+QtgMVZuT0vB/G58TLsibf3Mfpv99Qdp', '', 'approved', 'unban', 2, 2, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
