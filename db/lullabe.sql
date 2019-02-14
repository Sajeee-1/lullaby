-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 11, 2017 at 02:51 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lullabe`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `number` double NOT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `account_type` varchar(45) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `firstname`, `lastname`, `email`, `number`, `dob`, `password`, `account_type`, `creation_date`, `user_id`, `account_status`, `renewal_date`, `pic`, `paid`, `paid_date`, `passcode`, `passcode_status`, `passcode_time`) VALUES
(1, 'sajeevan', 'balachandran', 'sajisajeevan@live.in', 9003927146, '', '$2y$10$a/9WiTMkUAIkZxV74pkfZuNxD10AfHiCvh6SueTsyAQC0k1bNaZaC', 'free', '2017-07-05 14:21:25.253036', '1013', 'active', '2017-08-20', '', 0, '', '$2y$10$pOqBB2a8n0TmCWnuafNuzuMFlzraWM98KC6mlz38jLpdwaJqrSEH6', 0, 300);

-- --------------------------------------------------------

--
-- Table structure for table `account_payment`
--

CREATE TABLE `account_payment` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `account_type` varchar(45) NOT NULL,
  `status` varchar(20) NOT NULL,
  `token` varchar(200) NOT NULL,
  `plan_name` varchar(45) NOT NULL,
  `mode_of_payment` varchar(45) NOT NULL,
  `payment_date` varchar(65) NOT NULL,
  `expiry_date` varchar(65) NOT NULL,
  `days_count` varchar(45) NOT NULL,
  `setup_amount` int(100) NOT NULL,
  `trainee_amount` int(100) NOT NULL,
  `monthly_amount` int(100) NOT NULL,
  `tax` int(100) NOT NULL,
  `discount` int(100) NOT NULL,
  `total_amount` int(50) NOT NULL DEFAULT '0',
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_payment`
--

INSERT INTO `account_payment` (`id`, `user_id`, `company_id`, `account_type`, `status`, `token`, `plan_name`, `mode_of_payment`, `payment_date`, `expiry_date`, `days_count`, `setup_amount`, `trainee_amount`, `monthly_amount`, `tax`, `discount`, `total_amount`, `modify_date`) VALUES
(1, '1013', 'C5917fad640daa', 'ms', 'paid', 'tok_1AKIYJCsA4tRr8jrztXDHV67', 'sai', 'card', '2017-05-17', '2017-06-17', '31', 67, 76, 65, 0, 0, 208, '2017-05-17 03:10:27'),
(2, '1013', 'C58bc06cdc430f', 'cc', 'paid', 'tok_1AKIZLCsA4tRr8jr0GYUn4PW', 'sai', 'card', '2017-05-17', '2017-06-17', '31', 67, 76, 65, 0, 0, 208, '2017-05-17 03:11:30'),
(3, '1013', 'C58bc06cdc430f', 'cc', 'paid', 'tok_1AKIfmCsA4tRr8jrFLGQU9dQ', 'sai', 'card', '2017-05-17', '2017-06-17', '31', 67, 76, 65, 0, 0, 208, '2017-05-17 03:18:18'),
(4, '1013', '', 'cc', 'paid', 'tok_1Amo7ZCsA4tRr8jr18Gl5DcE', 'sai', 'card', '2017-08-03', '2017-09-03', '31', 0, 0, 65, 0, 0, 65, '2017-08-03 18:32:43'),
(5, '1013', '', 'cc', 'paid', 'tok_1Amo9BCsA4tRr8jrWtdKB1OI', 'sai', 'card', '2017-08-03', '2017-09-03', '31', 0, 0, 65, 0, 0, 65, '2017-08-03 18:34:22'),
(6, '1013', 'C58bc06cdc430f', 'cc', 'paid', 'tok_1B0pxyCsA4tRr8jrVsRnNgd6', 'sai', 'card', '2017-09-11', '2017-10-12', '31', 0, 0, 65, 0, 0, 65, '2017-09-11 11:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `add_camp`
--

CREATE TABLE `add_camp` (
  `id` int(20) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `class_name` varchar(45) NOT NULL,
  `starting_age_year` int(11) NOT NULL,
  `starting_age_month` int(11) NOT NULL,
  `max_age_year` int(11) NOT NULL,
  `max_age_month` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `camp_id` varchar(200) NOT NULL,
  `archive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `add_child`
--

CREATE TABLE `add_child` (
  `id` int(11) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `family_id` varchar(200) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `year` year(4) NOT NULL,
  `month` int(11) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `date` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `profile_pic` varchar(300) DEFAULT NULL,
  `notes` text NOT NULL,
  `status` varchar(45) NOT NULL,
  `message` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `add_child`
--

INSERT INTO `add_child` (`id`, `company_id`, `family_id`, `child_id`, `last_name`, `first_name`, `year`, `month`, `gender`, `date`, `create_date`, `profile_pic`, `notes`, `status`, `message`) VALUES
(1, 'C58bc06cdc430f', 'FI58bc074d336da4045', 'CI404558bc074d3369f', 'balachandran', 'sajitha', 1994, 8, 'female', 24, '2017-08-05 06:35:08', 'pic/400_69f5985671c43f9f.jpg', '', 'active', 0),
(2, 'C58bc06cdc430f', 'FI58bd01180dc3d2632', 'CI263258bd01180dbf5', 'balachandran', 'sajeevan', 1993, 3, 'male', 6, '2017-04-13 06:52:52', 'pic/400_bf558ef2043f1cb0.jpg', '--d', 'active', 0),
(3, 'C58bc06cdc430f', 'FI58dfe988e54f55520', 'CI552058dfe988e54b1', 'theivendran', 'thinesh', 1992, 4, 'male', 1, '2017-04-01 17:58:09', 'pic/400_4b158dfea3189f04.jpg', '--mvnd jhih hvsdh shv j buihvu jzxk', 'active', 0),
(7, 'C58bc06cdc430f', 'FI58bd01180dc3d2632', 'CI122858e64cccd297b', 'balachandran', 'sangeetha', 1997, 11, 'female', 22, '2017-04-06 14:15:20', NULL, '--jvbjd', 'not active', 0),
(8, 'C58bc06cdc430f', 'FI58dfe988e54f55520', 'CI220958e64f1165f0f', 'theivendran', 'vakeesan', 1990, 1, 'male', 12, '2017-04-06 14:22:09', NULL, '--bsbckjznjxh suhcv ui', 'not active', 0),
(9, 'C58bc06cdc430f', 'FI595cf674979702348', 'CI2348595cf6749792f', 'giyg', 'ryeuiy', 1990, 1, 'male', 1, '2017-08-05 05:43:58', 'pic/400_92f595cf68a9c8a1.jpg', '--biyui', 'not active', 9);

-- --------------------------------------------------------

--
-- Table structure for table `add_class`
--

CREATE TABLE `add_class` (
  `id` int(20) NOT NULL,
  `class_name` varchar(45) NOT NULL,
  `starting_age_year` int(11) NOT NULL,
  `starting_age_month` int(11) NOT NULL,
  `max_age_year` int(11) NOT NULL,
  `max_age_month` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `class_id` varchar(200) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `archive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `add_class`
--

INSERT INTO `add_class` (`id`, `class_name`, `starting_age_year`, `starting_age_month`, `max_age_year`, `max_age_month`, `capacity`, `class_id`, `company_id`, `archive`) VALUES
(1, 'knowledg', 0, 1, 2, 3, 10, 'CLA30f58bc06df98194', 'C58bc06cdc430f', 'yes'),
(2, 'mark zuckerbeg', 0, 2, 2, 6, 100, 'CLA30f58c1819dc7c4f', 'C58bc06cdc430f', 'no'),
(3, 'jio', 7, 9, 8, 9, 200, 'CLA30f58dfa31394075', 'C58bc06cdc430f', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `add_staff`
--

CREATE TABLE `add_staff` (
  `id` int(11) NOT NULL,
  `company_id` varchar(100) NOT NULL,
  `staff_id` varchar(100) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  `start_date` date NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  `option` varchar(45) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `staff_status` varchar(45) DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `termination_reason` varchar(45) DEFAULT NULL,
  `create_date` date NOT NULL,
  `state` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `add_staff`
--

INSERT INTO `add_staff` (`id`, `company_id`, `staff_id`, `first_name`, `last_name`, `position`, `start_date`, `mobile`, `phone`, `email`, `street`, `city`, `zip`, `option`, `notes`, `pic`, `staff_status`, `termination_date`, `termination_reason`, `create_date`, `state`) VALUES
(1, 'C58bc06cdc430f', 'STA30f58bc07c522857', 'sajeevan', 'balachandran', 'Principle', '2017-01-25', 478364398, 468790, 'sajisajeevan007@gmail.com', '', 'NULL', 0, NULL, 'NULL', 'pic/400_8575936d82250141.jpg', 'active', '2017-04-30', NULL, '0000-00-00', 'sajeevan'),
(2, 'C58bc06cdc430f', 'STA30f58bd1b3461a29', 'sajeevan', 'balachandran', 'Principle', '2017-01-25', 478364398, 468790, 'sajisajeevan007@gmail.com', '', 'NULL', 0, NULL, 'sljh', 'pic/400_a2959895d20dc8fe.jpg', 'active', '2017-04-30', NULL, '0000-00-00', 'sajeevan'),
(3, 'C58bc06cdc430f', 'STA30f58f44bdb8fa70', 'sajeevan', 'NULL', 'sa', '2017-04-01', 0, 0, 'NULL', 'NULL', 'NULL', 0, NULL, 'NULL', 'pic/400_a7058f44c67e11c0.jpeg', 'active', '0000-00-00', NULL, '0000-00-00', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `allergies`
--

CREATE TABLE `allergies` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `allergy` varchar(45) NOT NULL,
  `notes` varchar(45) DEFAULT NULL,
  `epison` varchar(45) DEFAULT NULL,
  `expiry_date` varchar(45) DEFAULT NULL,
  `carried_by` varchar(45) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `allergies`
--

INSERT INTO `allergies` (`id`, `child_id`, `allergy`, `notes`, `epison`, `expiry_date`, `carried_by`, `date`) VALUES
(1, 'CI404558bc074d3369f', 'klasjdkojo', 'dnhvodsjo', 'epison', '2017-03-08', 'Child', '2017-03-20 18:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `id` int(11) NOT NULL,
  `attachment` varchar(300) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `title` varchar(45) NOT NULL,
  `child_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `camp_shedule`
--

CREATE TABLE `camp_shedule` (
  `id` int(11) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `camp_id` varchar(200) NOT NULL,
  `shedule_id` varchar(200) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `mon_type` varchar(45) NOT NULL,
  `mon_start` time(6) NOT NULL,
  `mon_end` time(6) NOT NULL,
  `tue_type` varchar(45) NOT NULL,
  `tue_start` time(6) NOT NULL,
  `tue_end` time(6) NOT NULL,
  `wed_type` varchar(45) NOT NULL,
  `wed_start` time(6) NOT NULL,
  `wed_end` time(6) NOT NULL,
  `thu_type` varchar(45) NOT NULL,
  `thu_start` time(6) NOT NULL,
  `thu_end` time(6) NOT NULL,
  `fri_type` varchar(45) NOT NULL,
  `fri_start` time(6) NOT NULL,
  `fri_end` time(6) NOT NULL,
  `sat_type` varchar(45) NOT NULL,
  `sat_start` time(6) NOT NULL,
  `sat_end` time(6) NOT NULL,
  `sun_type` varchar(45) NOT NULL,
  `sun_start` time(6) NOT NULL,
  `sun_end` time(6) NOT NULL,
  `price` int(50) NOT NULL,
  `price_interval` varchar(45) NOT NULL,
  `archive` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `direction` varchar(20) NOT NULL,
  `from` varchar(45) NOT NULL,
  `to` varchar(45) NOT NULL,
  `message` varchar(300) NOT NULL,
  `status` varchar(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `child_id`, `company_id`, `direction`, `from`, `to`, `message`, `status`, `time`) VALUES
(1, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'hi, ', '', '2017-08-03 03:52:33'),
(2, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'how are you?, ', '', '2017-08-03 03:54:48'),
(3, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'fine, ', '', '2017-08-03 03:54:48'),
(4, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'we have a parent meeting today, ', '', '2017-08-03 03:54:49'),
(5, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'ok ill come on time, ', '', '2017-08-03 03:54:49'),
(6, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'thank you, ', '', '2017-08-03 03:54:49'),
(7, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'vhjjh', '', '2017-08-03 06:24:31'),
(8, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'vhjjhjhfdlkj', '', '2017-08-03 06:24:53'),
(9, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'b ksjk', '', '2017-08-03 06:25:08'),
(10, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'b ksjk', '', '2017-08-03 06:25:11'),
(11, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jdk', '', '2017-08-03 06:26:33'),
(12, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'klljflkdj jbdkj dbd bjkd jkdbvjkdbjvbdj', '', '2017-08-03 06:26:43'),
(13, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'kejle', '', '2017-08-03 06:32:00'),
(14, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jlkw', '', '2017-08-03 06:32:28'),
(15, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jfeik', '', '2017-08-03 06:32:31'),
(16, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'sajeevan', '', '2017-08-03 06:32:37'),
(17, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jle', '', '2017-08-03 06:32:47'),
(18, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'hi baby', '', '2017-08-03 06:33:02'),
(19, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'kfbdskj', '', '2017-08-04 09:13:17'),
(20, 'CI263258bd01180dbf5', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'hhj', '', '2017-08-04 09:14:40'),
(21, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'hjs', '', '2017-08-04 09:15:51'),
(22, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jvhdjxk', '', '2017-08-04 09:15:55'),
(23, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:34:57'),
(24, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'gfjdkhjk', '', '2017-08-04 11:35:05'),
(25, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:35:08'),
(26, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'fbvkj', '', '2017-08-04 11:35:13'),
(27, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:36:21'),
(28, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:36:22'),
(29, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:37:30'),
(30, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'hfekj', '', '2017-08-04 11:37:35'),
(31, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:37:38'),
(32, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:39:42'),
(33, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:42:09'),
(34, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jkhdkj', '', '2017-08-04 11:42:13'),
(35, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:43:28'),
(36, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'ckjds', '', '2017-08-04 11:43:34'),
(37, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:43:52'),
(38, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'a', '', '2017-08-04 11:43:58'),
(39, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:52:46'),
(40, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:53:25'),
(41, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:53:34'),
(42, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jiojsin sbbcjks', '', '2017-08-04 11:53:41'),
(43, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'h', '', '2017-08-04 11:53:46'),
(44, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '    ', '', '2017-08-04 11:53:50'),
(45, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:54:08'),
(46, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'vjfk', '', '2017-08-04 11:54:12'),
(47, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'opio jdvdk dbihx chdbh nz hsebhz j hdsv zd vhd bdhvhudbcn dshf geshchdgfhdsgb', '', '2017-08-04 11:54:24'),
(48, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:54:44'),
(49, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jfdhjih jdhuij', '', '2017-08-04 11:54:49'),
(50, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 11:55:03'),
(51, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jfnjd', '', '2017-08-04 11:55:10'),
(52, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'opieur vdbvhib svn sdjvbh vhjbs xcv nbs vhjbisbvx cbv knsdnbfvjdsbv bxjc vjbsdvg shudgvuhdgjbc ghsgchkdsg zcjbvhegyh', '', '2017-08-04 11:55:21'),
(53, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'dhjkhfjdk', '', '2017-08-04 12:20:15'),
(54, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 13:45:35'),
(55, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jhdjk', '', '2017-08-04 13:45:39'),
(56, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 13:48:41'),
(57, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jkdhejk', '', '2017-08-04 13:48:44'),
(58, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 14:53:46'),
(59, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'hjdk', '', '2017-08-04 14:53:55'),
(60, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-04 14:56:46'),
(61, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'bjs', '', '2017-08-04 14:56:49'),
(62, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-05 03:52:12'),
(63, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jhdjk', '', '2017-08-05 03:52:21'),
(64, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-05 03:52:35'),
(65, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jhj', '', '2017-08-05 03:52:38'),
(66, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', '', '', '2017-08-05 03:55:01'),
(67, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'jkkfdhgjk', '', '2017-08-05 03:55:05'),
(68, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'gfg', '', '2017-08-05 03:56:38'),
(69, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', '', '', '2017-08-05 03:57:53'),
(70, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'hfjr', '', '2017-08-05 03:57:57'),
(71, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', '', '', '2017-08-05 03:58:03'),
(72, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'klgjoriugioufinguiof ugoiruiotgf guoryugiyrf v', '', '2017-08-05 03:58:08'),
(73, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', '', '', '2017-08-05 05:04:39'),
(74, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'jkghfdj', '', '2017-08-05 05:04:44'),
(75, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-05 05:05:21'),
(76, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jrkl', '', '2017-08-05 05:05:29'),
(77, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'jhdfjk', '', '2017-08-05 05:05:38'),
(78, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', '', '', '2017-08-05 05:13:08'),
(79, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'fhdkj', '', '2017-08-05 05:13:12'),
(80, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', '', '', '2017-08-05 05:16:39'),
(81, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'fhdj', '', '2017-08-05 05:17:07'),
(82, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'fhruhkuj', '', '2017-08-05 05:17:12'),
(83, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', '', '', '2017-08-05 05:20:09'),
(84, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'kgjfk', '', '2017-08-05 05:20:13'),
(85, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'kfjdk', '', '2017-08-05 05:20:45'),
(86, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', '', '', '2017-08-05 05:21:57'),
(87, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'cg', 'staff', 'guardian', 'fj', '', '2017-08-05 05:22:00'),
(88, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'fhdj', '', '2017-08-05 05:22:08'),
(89, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-05 05:25:38'),
(90, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'jfgjd', '', '2017-08-05 05:25:41'),
(91, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-05 05:42:29'),
(92, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'vj', '', '2017-08-05 05:42:46'),
(93, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', '', '', '2017-08-05 05:43:18'),
(94, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'hghj', '', '2017-08-05 05:43:22'),
(95, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'k', '', '2017-08-05 05:43:27'),
(96, 'CI2348595cf6749792f', 'C58bc06cdc430f', 'gc', 'guardian', 'staff', 'bghg', '', '2017-08-05 05:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `class_shedule`
--

CREATE TABLE `class_shedule` (
  `id` int(11) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `class_id` varchar(200) NOT NULL,
  `shedule_id` varchar(200) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `mon_type` varchar(45) NOT NULL,
  `mon_start` varchar(50) NOT NULL,
  `mon_end` varchar(50) NOT NULL,
  `tue_type` varchar(45) NOT NULL,
  `tue_start` varchar(50) NOT NULL,
  `tue_end` varchar(50) NOT NULL,
  `wed_type` varchar(45) NOT NULL,
  `wed_start` varchar(50) NOT NULL,
  `wed_end` varchar(50) NOT NULL,
  `thu_type` varchar(45) NOT NULL,
  `thu_start` varchar(50) NOT NULL,
  `thu_end` varchar(50) NOT NULL,
  `fri_type` varchar(45) NOT NULL,
  `fri_start` varchar(50) NOT NULL,
  `fri_end` varchar(50) NOT NULL,
  `sat_type` varchar(45) NOT NULL,
  `sat_start` varchar(50) NOT NULL,
  `sat_end` varchar(50) NOT NULL,
  `sun_type` varchar(45) NOT NULL,
  `sun_start` varchar(50) NOT NULL,
  `sun_end` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `price_interval` varchar(45) NOT NULL,
  `archive` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_shedule`
--

INSERT INTO `class_shedule` (`id`, `company_id`, `class_id`, `shedule_id`, `name`, `type`, `mon_type`, `mon_start`, `mon_end`, `tue_type`, `tue_start`, `tue_end`, `wed_type`, `wed_start`, `wed_end`, `thu_type`, `thu_start`, `thu_end`, `fri_type`, `fri_start`, `fri_end`, `sat_type`, `sat_start`, `sat_end`, `sun_type`, `sun_start`, `sun_end`, `price`, `price_interval`, `archive`) VALUES
(1, 'C58bc06cdc430f', 'CLA30f58bc06df98194', 'SHE30f58bc06fcad019', 'ihedi', 'variable', 'continues', '11 : 25 : PM', '11 : 25 : PM', 'continues', '06 : 09 : PM', '06 : 09 : PM', 'continues', '06 : 09 : PM', '06 : 09 : PM', 'continues', '06 : 09 : PM', '06 : 09 : PM', 'continues', '06 : 09 : PM', '06 : 09 : PM', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 300, 'weekly', 'yes'),
(2, 'C58bc06cdc430f', 'CLA30f58bc06df98194', 'SHE30f58bc0736a5d40', 'rest', 'variable', 'continues', '06 : 09 : PM', '06 : 09 : PM', 'continues', '06 : 09 : PM', '06 : 09 : PM', 'alternative', '06 : 10 : PM', '06 : 10 : PM', 'NULL', 'NULL', 'NULL', 'continues', '06 : 10 : PM', '06 : 10 : PM', 'alternative', '06 : 10 : PM', '06 : 10 : PM', 'NULL', 'NULL', 'NULL', 200, 'monthly', 'no'),
(3, 'C58bc06cdc430f', 'CLA30f58c1819dc7c4f', 'SHE30f58c19558262a7', 'rio', 'continues', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 200, 'monthly', 'yes'),
(17, 'C58bc06cdc430f', 'SHE30f58c19558262a7', 'SHE30f58dea8487c29c', 'rio', 'continues', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 200, 'monthly', 'no'),
(19, 'C58bc06cdc430f', 'CLA30f58bc06df98194', 'SHE30f58deabfe4c168', 'rij', 'variable', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 200, 'monthly', 'no'),
(20, 'C58bc06cdc430f', 'CLA30f58c1819dc7c4f', 'SHE30f591edb9e3ef33', 'leho', 'continues', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'NULL', 'NULL', 'NULL', 67, 'monthly', NULL),
(21, 'C58bc06cdc430f', 'CLA30f58c1819dc7c4f', 'SHE30f591edbcf4601f', 'ihedi', 'variable', 'continues', '11 : 25 : PM', '11 : 25 : PM', 'continues', '06 : 09 : PM', '06 : 09 : PM', 'continues', '06 : 09 : PM', '06 : 09 : PM', 'continues', '06 : 09 : PM', '06 : 09 : PM', 'continues', '06 : 09 : PM', '06 : 09 : PM', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 300, 'weekly', 'no'),
(22, 'C58bc06cdc430f', 'CLA30f58c1819dc7c4f', 'SHE30f591edbd41363c', 'rio', 'continues', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 200, 'monthly', 'no'),
(23, 'C58bc06cdc430f', 'CLA30f58dfa31394075', 'SHE30f591edbdd592a4', 'rio', 'continues', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'continues', '11 : 18 : PM', '10 : 18 : PM', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 200, 'monthly', 'no'),
(24, 'C58bc06cdc430f', 'CLA30f58dfa31394075', 'SHE30f591edbe0d1bc1', 'leho', 'continues', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'continues', '05 : 18 : PM', '06 : 18 : PM', 'NULL', 'NULL', 'NULL', 67, 'monthly', 'no'),
(25, 'C58bc06cdc430f', 'CLA30f58c1819dc7c4f', 'SHE30f591f27d0d377e', 'sajeevan', 'continues', 'continues', '10 : 43 : PM', '10 : 43 : PM', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 324, 'monthly', NULL),
(26, 'C58bc06cdc430f', 'CLA30f58c1819dc7c4f', 'SHE30f591f28020c913', '', 'variable', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'daily', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `center_type` varchar(45) NOT NULL,
  `capacity` int(10) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL,
  `zip` int(10) NOT NULL,
  `create_date` varchar(65) NOT NULL,
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` varchar(200) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `plan_name` varchar(45) NOT NULL,
  `plan_code` int(10) NOT NULL,
  `expiry_date` varchar(65) NOT NULL,
  `status` varchar(45) NOT NULL,
  `def` int(11) NOT NULL,
  `monthly` int(100) NOT NULL,
  `setup` int(100) NOT NULL,
  `trainee` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `icon` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `center_type`, `capacity`, `address`, `city`, `code`, `zip`, `create_date`, `last_update_date`, `user_id`, `company_id`, `plan_name`, `plan_code`, `expiry_date`, `status`, `def`, `monthly`, `setup`, `trainee`, `total`, `icon`) VALUES
(1, 'knowledge', 'cc', 100, 'ckls', 'cbskj', 'AB', 566, '2017-03-05', '2017-09-11 11:20:44', '1013', 'C58bc06cdc430f', 'sai', 0, '2017-10-12', '1', 1, 65, 67, 76, 208, 'icon/400_85f591f2cbca086a.jpg'),
(2, 'sajeevan', 'ms', 190, 'vdmlk', 'joij', 'AB', 78678, '0000-00-00', '2017-09-08 06:59:54', '1013', 'C5917fad640daa', 'sai', 0, '2017-11-17', '1', 0, 65, 67, 76, 208, ''),
(3, 'hfsj', 'cc', 7, 'fbuh', 'hjkh', 'AB', 56, '0000-00-00', '2017-05-15 06:12:44', '1013', 'C59185523904ca', 'trial', 0, '', '', 0, 0, 0, 0, 0, ''),
(4, 'raji', 'cc', 6578, 'sh', 'sk', 'AB', 66766, '2017-05-14', '2017-09-08 07:00:00', '1013', 'C59185a10463c8', 'trial', 0, '2017-11-14', '', 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

CREATE TABLE `credit` (
  `id` int(11) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `p_payer_id` varchar(200) NOT NULL,
  `credit_id` varchar(200) NOT NULL,
  `credit_amount` int(11) NOT NULL,
  `credit_date` varchar(45) NOT NULL,
  `method` varchar(45) NOT NULL,
  `current_amount` int(11) NOT NULL,
  `credit_status` varchar(45) NOT NULL,
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`id`, `company_id`, `p_payer_id`, `credit_id`, `credit_amount`, `credit_date`, `method`, `current_amount`, `credit_status`, `last_update_date`) VALUES
(1, 'C58bc06cdc430f', 'G58bc0779ac818369f', 'CR30f58bfa11a47603', 1200, '2017-03-08', 'cash', 1000, 'credit', '2017-03-08 12:33:02'),
(2, 'C58bc06cdc430f', 'G58bd0131a4e9ddbf5', 'CR30f58bff93debd13', 500, '2017-03-08', 'cash', 0, 'refund', '2017-03-22 19:18:52'),
(3, 'C58bc06cdc430f', 'G58bd0131a4e9ddbf5', 'CR30f58bff948464b8', 800, '2017-03-08', 'cash', 0, 'refund', '2017-03-22 19:18:52'),
(4, 'C58bc06cdc430f', 'G58bd0131a4e9ddbf5', 'CR30f58c040a6d40f7', 100, '2017-03-08', 'cash', 100, 'credit', '2017-03-08 17:34:30'),
(5, 'C58bc06cdc430f', 'G58bd0131a4e9ddbf5', 'CR30f58d951d799fe1', 10, '2017-03-27', 'cash', -83, 'credit', '2017-03-27 17:54:32'),
(6, 'C58bc06cdc430f', 'G58d7cfe55587e369f', 'CR30f58f616a937280', 10000, '2017-04-18', 'cash', 10000, 'credit', '2017-04-18 13:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounts`
--

CREATE TABLE `crm_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(200) DEFAULT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `company` varchar(200) NOT NULL,
  `jobtitle` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `o` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `balance` decimal(16,2) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `notes` text NOT NULL,
  `tags` text NOT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL,
  `ts` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `web` varchar(200) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `google` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `tax_number` varchar(100) DEFAULT NULL,
  `entity_number` varchar(100) DEFAULT NULL,
  `currency` int(11) DEFAULT '0',
  `pmethod` varchar(100) DEFAULT NULL,
  `autologin` varchar(100) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `lastloginip` varchar(100) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `isp` varchar(100) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `sid` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `country_idd` varchar(20) DEFAULT NULL,
  `signed_up_by` varchar(100) DEFAULT NULL,
  `signed_up_ip` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ct` varchar(200) DEFAULT NULL,
  `assistant` varchar(200) DEFAULT NULL,
  `asst_phone` varchar(100) DEFAULT NULL,
  `second_email` varchar(100) DEFAULT NULL,
  `second_phone` varchar(100) DEFAULT NULL,
  `taxexempt` varchar(50) DEFAULT NULL,
  `latefeeoveride` varchar(50) DEFAULT NULL,
  `overideduenotices` varchar(50) DEFAULT NULL,
  `separateinvoices` varchar(50) DEFAULT NULL,
  `disableautocc` varchar(50) DEFAULT NULL,
  `billingcid` int(10) NOT NULL DEFAULT '0',
  `securityqid` int(10) NOT NULL DEFAULT '0',
  `securityqans` text,
  `cardtype` varchar(200) DEFAULT NULL,
  `cardlastfour` varchar(20) DEFAULT NULL,
  `cardnum` text,
  `startdate` varchar(50) DEFAULT NULL,
  `expdate` varchar(50) DEFAULT NULL,
  `issuenumber` varchar(200) DEFAULT NULL,
  `bankname` varchar(200) DEFAULT NULL,
  `banktype` varchar(200) DEFAULT NULL,
  `bankcode` varchar(200) DEFAULT NULL,
  `bankacct` varchar(200) DEFAULT NULL,
  `gatewayid` int(10) NOT NULL DEFAULT '0',
  `language` text,
  `pwresetkey` varchar(100) DEFAULT NULL,
  `emailoptout` varchar(50) DEFAULT NULL,
  `email_verified` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pwresetexpiry` datetime DEFAULT NULL,
  `c1` varchar(200) DEFAULT NULL,
  `c2` varchar(200) DEFAULT NULL,
  `c3` varchar(200) DEFAULT NULL,
  `c4` varchar(200) DEFAULT NULL,
  `c5` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounts`
--

INSERT INTO `crm_accounts` (`id`, `account`, `fname`, `lname`, `company`, `jobtitle`, `cid`, `o`, `phone`, `email`, `address`, `city`, `state`, `zip`, `country`, `balance`, `status`, `notes`, `tags`, `password`, `token`, `ts`, `img`, `web`, `facebook`, `google`, `linkedin`, `twitter`, `skype`, `tax_number`, `entity_number`, `currency`, `pmethod`, `autologin`, `lastlogin`, `lastloginip`, `stage`, `timezone`, `isp`, `lat`, `lon`, `gname`, `gid`, `sid`, `role`, `country_code`, `country_idd`, `signed_up_by`, `signed_up_ip`, `dob`, `ct`, `assistant`, `asst_phone`, `second_email`, `second_phone`, `taxexempt`, `latefeeoveride`, `overideduenotices`, `separateinvoices`, `disableautocc`, `billingcid`, `securityqid`, `securityqans`, `cardtype`, `cardlastfour`, `cardnum`, `startdate`, `expdate`, `issuenumber`, `bankname`, `banktype`, `bankcode`, `bankacct`, `gatewayid`, `language`, `pwresetkey`, `emailoptout`, `email_verified`, `created_at`, `updated_at`, `pwresetexpiry`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1000, 'sajeevan', '', '', '', '', 0, 0, '', '', '', '', '', '', 'United States', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1001, 'sajeevan', '', '', '', '', 0, 0, '', '', '', '', '', '', 'United States', '0.00', 'Active', '', '', 'ibvO190uTu7Bc', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1002, 'sajeevan', '', '', '', '', 0, 0, '', 'sajisajeevan@live.in', '', '', '', '', '', '0.00', 'Active', '', '', 'ibvO190uTu7Bc', 'mxlssevr3amewbjyeojbcfc942a4cde34c7a6764a23d088865d9', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'localhost', NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1003, 'guru', 'guru', 'b', 'knowledge1003', '', 0, 0, '9090909090', 'guru@gmail.com', 'dncj', 'jdj', 'AB', '87678', '', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1004, NULL, '', '', 'code blocks', '', 0, 0, '', '', 'gcj', 'scfguyg', '', '36257', '', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1005, 'ji', 'ji', 'balachandran', 'koi1005', '', 0, 0, '3436546', 'sajisajeevan007@gmail.com', '', '', '', '', '', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1006, 'sajeevan', 'sajeevan', 'balachandran', 'knowledge1006', '', 0, 0, '5879790', 'sajisajeevan@live.in', 'snnvdygsf', 'pudukkottai', 'AB', '600303', '', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1007, 'sajeevan', 'sajeevan', 'balachandran', '', '', 0, 0, '8789798', 'sajisajeevan@live.in', '', '', '', '', '', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1008, 'sajeevan', 'sajeevan', 'balachandran', '', '', 0, 0, '8789798', 'sajisajeevan@live.in', '', '', '', '', '', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1009, 'sajeevan', 'sajeevan', 'balachandran', '', '', 0, 0, '8789798', 'sajisajeevan@live.in', '', '', '', '', '', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1010, 'sajeevan', 'sajeevan', 'balachandran', 'code blocks1010', '', 0, 0, '675876', 'sajisajeevan007@gmail.com', 'nclkdj', 'dnjkl', 'AB', '5866789', '', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1011, 'sajeevan', 'sajeevan', 'balachandran', 'code blocks1011', '', 0, 0, '8789798', 'sajisajeevan@live.in', 'ndjlwhl', 'cnbsjkh', 'AB', '6786', '', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1012, 'sajeevan', 'sajeevan', 'balachandran', '', '', 0, 0, '7689', 'sajisajeevan007@gmail.com', '', '', '', '', '', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1013, 'sajeevan', 'sajeevan', 'balachandran', 'kjhcsjdk1013', '', 0, 0, '9003927146', 'sajisajeevan@live.in', '.vdmlj', 'hoh', '', '', '', '0.00', 'Active', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_customfields`
--

CREATE TABLE `crm_customfields` (
  `id` int(10) NOT NULL,
  `ctype` text,
  `relid` int(10) NOT NULL DEFAULT '0',
  `fieldname` text,
  `fieldtype` text,
  `description` text,
  `fieldoptions` text,
  `regexpr` text,
  `adminonly` text,
  `required` text,
  `showorder` text,
  `showinvoice` text,
  `sorder` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_customfieldsvalues`
--

CREATE TABLE `crm_customfieldsvalues` (
  `id` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `fvalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_groups`
--

CREATE TABLE `crm_groups` (
  `id` int(11) NOT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `parent` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `exempt` text,
  `description` text,
  `separateinvoices` text,
  `sorder` int(10) DEFAULT NULL,
  `c1` varchar(200) DEFAULT NULL,
  `c2` varchar(200) DEFAULT NULL,
  `c3` varchar(200) DEFAULT NULL,
  `c4` varchar(200) DEFAULT NULL,
  `c5` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `discount_id` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `company_id`, `discount_id`, `name`, `number`, `type`, `create_date`) VALUES
(1, 'C58bc06cdc430f', 'DISC58bc06cdc4591efef8ee640', 'jjs', 89, '%', '2017-05-19 14:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `dr_name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `w_phone` bigint(100) DEFAULT NULL,
  `mobile` int(50) DEFAULT NULL,
  `phone` int(50) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `child_id`, `dr_name`, `address`, `state`, `city`, `zip`, `w_phone`, `mobile`, `phone`, `email`, `create_date`) VALUES
(1, 'CI263258bd01180dbf5', 'knslk', 'nxjn', 'AB', 'vldnl', '678689', 78678, 6786798, 86978689, NULL, '2017-04-30 07:12:10'),
(2, 'CI552058dfe988e54b1', 'gfyuhdg', 'gdygf', 'AB', 'fuhgu', '87438', 7889, 8483783, 874892, NULL, '2017-08-08 06:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `enrolment`
--

CREATE TABLE `enrolment` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `class_id` varchar(200) NOT NULL,
  `shedule_method` varchar(45) NOT NULL,
  `shedule_id` varchar(200) NOT NULL,
  `tuition` int(30) NOT NULL,
  `tuition_interval` varchar(45) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `discount_method` varchar(45) NOT NULL,
  `recurring_fee` varchar(45) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `end_reason` varchar(45) DEFAULT NULL,
  `created_date` date NOT NULL,
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payer_id` varchar(200) DEFAULT NULL,
  `pay_interval` varchar(45) DEFAULT NULL,
  `pay_method` varchar(45) DEFAULT NULL,
  `last_invoice_create_date` date DEFAULT NULL,
  `total_amount` int(200) DEFAULT '0',
  `enrolment_id` varchar(200) NOT NULL,
  `status` varchar(46) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enrolment`
--

INSERT INTO `enrolment` (`id`, `child_id`, `class_id`, `shedule_method`, `shedule_id`, `tuition`, `tuition_interval`, `discount`, `discount_method`, `recurring_fee`, `start_date`, `end_date`, `end_reason`, `created_date`, `last_update_date`, `payer_id`, `pay_interval`, `pay_method`, `last_invoice_create_date`, `total_amount`, `enrolment_id`, `status`) VALUES
(1, 'CI404558bc074d3369f', 'CLA30f58bc06df98194', 'variable', 'SHE30f58bc0736a5d40', 200, 'monthly', 'NULL', 'NULL', '', '2017-03-01', '2017-05-19', 'withdraw', '2017-03-05', '2017-05-19 07:56:30', 'G58bc0779ac818369f', 'monthly', NULL, NULL, 0, 'ENR69f58bc07a78358d', 'close'),
(2, 'CI263258bd01180dbf5', 'CLA30f58bc06df98194', 'variable', 'SHE30f58bc0736a5d40', 200, 'monthly', 'NULL', 'NULL', '', '2017-03-01', '2017-04-17', 'withdraw', '2017-03-06', '2017-04-17 05:47:38', 'NULL', 'NULL', NULL, NULL, 0, 'ENRbf558bd0177b5a92', 'close'),
(3, 'CI404558bc074d3369f', 'CLA30f58bc06df98194', 'variable', 'SHE30f58bc0736a5d40', 200, 'monthly', '20', '%', '', '2017-02-01', '2017-03-31', '', '2017-03-07', '2017-03-07 15:28:44', 'G58bc0779ac818369f', 'bi-weekly', NULL, NULL, 0, 'ENR69f58bed1ac92b61', ''),
(4, 'CI404558bc074d3369f', 'CLA30f58dfa31394075', 'continues', 'SHE30f58bc06fcad019', 100, 'monthly', 'NULL', 'NULL', '', '2017-03-01', '', '', '2017-03-09', '2017-08-10 05:37:29', 'G591d8ca56de91369f', 'monthly', NULL, NULL, 0, 'ENR69f58c1307085229', ''),
(5, 'CI404558bc074d3369f', 'CLA30f58c1819dc7c4f', 'continues', 'SHE30f58c19558262a7', 200, 'monthly', 'NULL', 'NULL', '', '2017-03-01', '', '', '2017-03-09', '2017-03-09 17:48:44', 'NULL', 'NULL', NULL, NULL, 0, 'ENR69f58c1957c461f6', ''),
(6, 'CI552058dfe988e54b1', 'CLA30f58c1819dc7c4f', 'continues', 'SHE30f58c19558262a7', 200, 'monthly', '20', '%', '100', '2017-04-01', '', '', '2017-04-01', '2017-04-01 17:56:50', 'G58dfe9b40031654b1', 'Credit Card', NULL, NULL, 0, 'ENR4b158dfe9e21be7c', ''),
(8, 'CI263258bd01180dbf5', 'CLA30f58c1819dc7c4f', 'continues', 'SHE30f58c19558262a7', 200, 'monthly', 'NULL', 'NULL', '', '2017-04-26', '2017-04-17', 'withdraw', '2017-04-13', '2017-04-17 05:45:53', NULL, NULL, NULL, NULL, 0, 'ENRbf558efb31a780b7', 'close'),
(9, 'CI404558bc074d3369f', 'CLA30f58dfa31394075', '', '', 0, '', 'NULL', 'NULL', '', '2017-05-15', '2017-05-27', NULL, '2017-05-19', '2017-05-19 07:56:20', NULL, NULL, NULL, NULL, 0, 'ENR69f591ea51804e98', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `start_date` varchar(65) NOT NULL,
  `end_date` varchar(65) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `discount` int(11) NOT NULL,
  `company_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `start_date`, `end_date`, `create_date`, `discount`, `company_id`) VALUES
(1, 'kfadsh', '2017-05-02', '2017-05-17', '2017-05-27 07:16:15', 0, 'C58bc06cdc430f'),
(2, 'mnl', '', '', '2017-05-27 07:16:26', 0, 'C58bc06cdc430f'),
(3, 'jdhfdsjlk', '2017-05-28', '2017-05-31', '2017-05-27 07:18:30', 0, 'C58bc06cdc430f');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `food` varchar(45) NOT NULL,
  `period` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comments` varchar(100) NOT NULL,
  `company_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `child_id`, `food`, `period`, `status`, `date`, `comments`, `company_id`) VALUES
(1, '', 'bjk', 'snacks', '1', '2017-05-01 18:17:22', 'njlhljk', 'C58bc06cdc430f'),
(2, 'CI404558bc074d3369f', 'bash', 'snacks', '1', '2017-05-27 07:10:45', 'poda', 'C58bc06cdc430f'),
(4, 'CI404558bc074d3369f', 'gjhg', 'breakfast', '1', '2017-05-09 14:32:40', 'jkhkj', 'C58bc06cdc430f');

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE `guardian` (
  `id` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `relationship` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  `work` varchar(45) DEFAULT NULL,
  `occupation` varchar(45) DEFAULT NULL,
  `w_address` varchar(45) DEFAULT NULL,
  `w_city` varchar(45) DEFAULT NULL,
  `w_state` varchar(45) DEFAULT NULL,
  `w_zip` varchar(45) DEFAULT NULL,
  `w_phone` varchar(45) DEFAULT NULL,
  `cell` varchar(45) DEFAULT NULL,
  `h_phone` varchar(45) DEFAULT NULL,
  `o_phone` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `pickup` varchar(45) DEFAULT NULL,
  `payer` varchar(45) DEFAULT NULL,
  `notes` varchar(45) DEFAULT NULL,
  `custody` varchar(200) DEFAULT NULL,
  `guardian_id` varchar(200) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `create_date` date NOT NULL,
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guardian`
--

INSERT INTO `guardian` (`id`, `firstname`, `lastname`, `relationship`, `address`, `city`, `state`, `zip`, `work`, `occupation`, `w_address`, `w_city`, `w_state`, `w_zip`, `w_phone`, `cell`, `h_phone`, `o_phone`, `email`, `mail`, `type`, `pickup`, `payer`, `notes`, `custody`, `guardian_id`, `child_id`, `pic`, `create_date`, `last_update_date`) VALUES
(4, 'd', '', 'father', 'NULL', 'NULL', '', 0, NULL, NULL, 'NULL', 'NULL', '', '', '1547657', '443756578', '58787', '', '', NULL, 'emergency', 'pickup', NULL, '', NULL, 'G58bd0154574f2dbf5', 'CI263258bd01180dbf5', NULL, '0000-00-00', '2017-03-06 06:37:40'),
(5, 'kdsjkof', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'raj@gmail.com', '', '', '', '', 'NULL', 'NULL', 'G58d7cfe55587e369f', 'CI404558bc074d3369f', 'gpic/400_69f58e8d6d771d41.jpg', '2017-03-26', '2017-07-20 11:06:13'),
(6, 'theivendran', 's', 'father', 'NY', 'pudukkottai', '', 890000000, 'gtsdyufdsbu', 'NULL', 'NULL', 'NULL', '', 'NULL', '6878', '567858768', '0656858767', '168968923', 'fdhj@gfh.com', 'mail', 'primary', 'pickup', 'payer', 'NULL', 'NULL', 'G58dfe9b40031654b1', 'CI552058dfe988e54b1', NULL, '2017-04-01', '2017-04-01 17:56:04'),
(7, 'sajeevan', 'lop', 'father', 'NY', 'NULL', '', 0, '0578790', 'NULL', 'NULL', 'NULL', '', '', NULL, '57889', '6587689', '65465879', 'sajisajeevan@live.in', 'mail', 'primary', 'pickup', 'payer', 'NULL', 'NULL', 'G58e64cccd2c0d', 'CI122858e64cccd297b', NULL, '2017-04-06', '2017-04-06 14:12:28'),
(8, 'd', '', 'father', 'NULL', 'NULL', '', 0, '', '', 'NULL', 'NULL', '', '', NULL, '443756578', '58787', '', '', '', 'emergency', 'pickup', '', '', '', 'G58e64ccd019be', 'CI122858e64cccd297b', NULL, '2017-04-06', '2017-04-06 14:12:29'),
(9, 'theivendran', 's', 'father', 'NY', 'pudukkottai', '', 890000000, 'gtsdyufdsbu', 'NULL', 'NULL', 'NULL', '', 'NULL', NULL, '567858768', '0656858767', '168968923', 'fdhj@gfh.com', 'mail', 'primary', 'pickup', 'payer', 'NULL', 'NULL', 'G58e64f1166155', 'CI220958e64f1165f0f', NULL, '2017-04-06', '2017-04-06 14:22:09'),
(10, 'sajeevan', '', 'father', 'NY', 'pudukkottai', '', 165867, NULL, NULL, 'jkhjn', '56678', '', '6586587', '7658767', '16568587', '58769798', '6758768', 'fdbdih@kjcjbds.com', NULL, 'emergency', 'NULL', NULL, 'bcsakjhbcjk', NULL, 'G58e8d70adea9b369f', 'CI404558bc074d3369f', 'gpic/400_69f58e8d8196d3b1.png', '0000-00-00', '2017-04-08 12:31:21'),
(11, 'sajeevan', '', 'Select Relationship', 'NULL', 'NULL', '', 0, NULL, NULL, 'NULL', 'NULL', '', 'NULL', 'NULL', '', 'NULL', 'NULL', '', NULL, 'emergency', 'NULL', NULL, 'NULL', NULL, 'G58e8d8725ca11369f', 'CI404558bc074d3369f', NULL, '0000-00-00', '2017-04-08 12:32:50'),
(12, 'balachandran', 'dsgsdgyhjgjhyg', 'Select Relationship', 'NULL', '', '', 0, '56576', 'NULL', 'NULL', '', '', 'NULL', '56576', '67576578', '4765', '', '', 'mail', 'primary', 'pickup', 'payer', 'NULL', 'NULL', 'G591d8ca56de91369f', 'CI404558bc074d3369f', NULL, '2017-05-18', '2017-08-10 05:37:03'),
(13, 'sajeevan', 'djnfjd', 'father', 'BF', 'NULL', '', 0, 'NULL', 'NULL', 'NULL', 'NULL', '', 'NULL', '00435049', '4343', '93493', '3543', '', 'mail', 'primary', 'pickup', 'NULL', 'NULL', 'NULL', 'G59855cc5d53a9369f', 'CI404558bc074d3369f', NULL, '2017-08-05', '2017-08-05 05:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `ib_doc_rel`
--

CREATE TABLE `ib_doc_rel` (
  `id` int(11) NOT NULL,
  `rtype` varchar(100) NOT NULL DEFAULT 'contact',
  `rid` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `can_download` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `immunization`
--

CREATE TABLE `immunization` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `1` varchar(65) NOT NULL,
  `2` varchar(65) NOT NULL,
  `3` varchar(65) NOT NULL,
  `4` varchar(65) NOT NULL,
  `5` varchar(65) NOT NULL,
  `6` varchar(65) NOT NULL,
  `7` varchar(65) NOT NULL,
  `status` varchar(75) NOT NULL,
  `comments` varchar(100) NOT NULL,
  `modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` varchar(100) NOT NULL,
  `company_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `immunization`
--

INSERT INTO `immunization` (`id`, `child_id`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `status`, `comments`, `modify`, `created_date`, `company_id`) VALUES
(2, 'CI404558bc074d3369f', '2017-05-02', '2017-05-20', '2017-09-09', '2017-05-12', '2017-05-22', '', '', 'ckldjkljsd', '', '2017-05-01 06:59:24', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `policy_no` varchar(100) NOT NULL,
  `group_no` varchar(100) NOT NULL,
  `date` varchar(65) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`id`, `child_id`, `company_id`, `company_name`, `policy_no`, `group_no`, `date`, `timestamp`) VALUES
(1, 'CI263258bd01180dbf5', '', '', 'odhio', 'hudioh', 'sdso', '2017-04-30 07:44:12'),
(2, 'CI263258bd01180dbf5', '', 'ojcdhjo', 'ojvhdo', 'hojdho', 'hkovdok', '2017-04-30 07:44:49'),
(3, 'CI404558bc074d3369f', '', 'hgjhgjh', '766756', '566', '5656', '2017-05-18 11:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `i_payer_id` varchar(200) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `invoice_id` varchar(200) NOT NULL,
  `invoice_no` varchar(45) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `invoice_amount` int(11) NOT NULL,
  `balance_amount` int(11) NOT NULL,
  `method` varchar(45) DEFAULT NULL,
  `payment_id` varchar(200) DEFAULT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `create_date` varchar(50) NOT NULL,
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enrolment_id` varchar(200) NOT NULL,
  `period` varchar(200) NOT NULL,
  `tution_fee` int(11) NOT NULL,
  `discount_amount_1` int(11) NOT NULL,
  `discount_amount_2` int(11) NOT NULL,
  `discount_amount_3` int(11) NOT NULL,
  `tax_amount_1` int(11) NOT NULL,
  `tax_amount_2` int(11) NOT NULL,
  `tax_amount_3` int(11) NOT NULL,
  `enrolment_fee` int(11) NOT NULL,
  `recurring_fee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `company_id`, `i_payer_id`, `child_id`, `invoice_id`, `invoice_no`, `comments`, `invoice_amount`, `balance_amount`, `method`, `payment_id`, `start_date`, `end_date`, `create_date`, `last_update_date`, `enrolment_id`, `period`, `tution_fee`, `discount_amount_1`, `discount_amount_2`, `discount_amount_3`, `tax_amount_1`, `tax_amount_2`, `tax_amount_3`, `enrolment_fee`, `recurring_fee`) VALUES
(11, 'C58bc06cdc430f', 'G58bc0779ac818369f', 'CI404558bc074d3369f', 'I58bed3b9c770769f', NULL, 'PAID', 600, 487, 'credit', 'CR30f58bff91f55087', '2017-03-01', '2017-Mar-31', '2017-03-07', '2017-03-08 12:29:19', 'ENR69f58bc07a78358d', '14883228001490911200', 400, 0, 0, 0, 0, 0, 0, 200, 0),
(12, 'C58bc06cdc430f', 'G58bc0779ac818369f', 'CI404558bc074d3369f', 'I58bed3b9c7be869f', NULL, 'PAID', 75, 61, 'credit', 'CR30f58bff906b53e9', '2017-Mar-06', '2017-Mar-19', '2017-03-07', '2017-03-08 12:28:54', 'ENR69f58bed1ac92b61', '14887548001489878000', 0, 19, 0, 0, 0, 0, 0, 93, 0),
(13, 'C58bc06cdc430f', 'G58bd0131a4e9ddbf5', 'CI263258bd01180dbf5', 'I58bed3b9c8217bf5', NULL, 'paid', 47, 0, 'cash', 'CR30f58d951d799fe1', '2017-Mar-06', '2017-Mar-12', '2017-03-07', '2017-03-27 17:54:31', 'ENRbf558bd0177b5a92', '14887548001489273200', 0, 0, 0, 0, 0, 0, 0, 47, 0),
(14, 'C58bc06cdc430f', 'G591d8ca56de91369f', 'CI263258bd01180dbf5', '', NULL, NULL, 280, 0, 'Cash', NULL, '', '', '2017-03-08', '2017-08-05 06:56:14', '', '', 0, 20, 0, 0, 0, 0, 0, 200, 100),
(15, 'C58bc06cdc430f', 'G58bd0131a4e9ddbf5', 'CI263258bd01180dbf5', 'I58bfa07f719de', NULL, 'PAID', 300, 0, 'credit', 'CR30f58bffa263425f', '', '', '2017-03-08', '2017-03-08 12:33:42', '', '', 200, 100, 0, 0, 0, 0, 0, 100, 100),
(16, 'C58bc06cdc430f', 'G58bc0779ac818369f', 'CI404558bc074d3369f', 'I58bfa0f27d948', NULL, 'paid', 1100, 0, 'cash', 'CR30f58bfa11a47603', '2017-03-08', '2017-03-08', '2017-03-08', '2017-03-08 06:13:46', '', '', 1000, 100, 0, 0, 0, 0, 0, 200, 0),
(17, 'C58bc06cdc430f', 'G58d7cfe55587e369f', 'CI404558bc074d3369f', 'I58d951569b65b69f', NULL, NULL, 100, 30, NULL, NULL, '2017-03-01', '2017-Mar-31', '2017-03-27', '2017-08-03 09:07:07', 'ENR69f58c1307085229', '14883228001490911200', 0, 0, 0, 0, 0, 0, 0, 100, 0),
(18, 'C58bc06cdc430f', 'G58bd0131a4e9ddbf5', 'CI263258bd01180dbf5', 'I58d951569ee83bf5', NULL, 'paid', 47, 0, 'cash', 'CR30f58d951d799fe1', '2017-Mar-20', '2017-Mar-26', '2017-03-27', '2017-03-27 17:54:31', 'ENRbf558bd0177b5a92', '14899644001490482800', 0, 0, 0, 0, 0, 0, 0, 47, 0),
(19, 'C58bc06cdc430f', 'G58e64f1166155', 'CI404558bc074d3369f', 'I58f6499e3048e', NULL, NULL, 400, 400, 'Cash', NULL, '2017-04-18', '2017-04-18', '2017-04-18', '2017-07-20 11:15:45', '', '', 0, 0, 0, 0, 0, 0, 0, 100, 300),
(20, 'C58bc06cdc430f', 'G58dfe9b40031654b1', 'CI404558bc074d3369f', 'I58f649d4a3261', NULL, NULL, 240, 240, 'Cash', NULL, '2017-04-18', '2017-04-18', '2017-04-18', '2017-07-20 11:15:40', '', '', 0, 0, 0, 0, 0, 0, 0, 240, 0),
(22, 'C58bc06cdc430f', 'G58d7cfe55587e369f', 'CI404558bc074d3369f', 'I58bed3b9c8217bf87', NULL, 'paid', 47, 0, 'cash', 'CR30f58d951d799jiu', '2017-Mar-06', '2017-Mar-12', '2017-03-07', '2017-07-20 11:17:48', 'ENRbf558bd0177b5a92', '14887548001489273200', 0, 0, 0, 0, 0, 0, 0, 47, 0),
(23, 'C58bc06cdc430f', 'G58d7cfe55587e369f', 'CI404558bc074d3369f', 'I58bed3b9c8217bfoi', NULL, 'paid', 47, 0, 'cash', 'CR30f58d951d799jop', '2017-Mar-06', '2017-Mar-12', '2017-03-07', '2017-07-20 11:17:43', 'ENRbf558bd0177b5a92', '14887548001489273200', 0, 0, 0, 0, 0, 0, 0, 47, 0),
(24, 'C58bc06cdc430f', 'G58d7cfe55587e369f', 'CI404558bc074d3369f', 'I58bed3b9c8217bfgy', NULL, 'paid', 47, 0, 'cash', 'CR30f58d951d799jlp', '2017-Mar-06', '2017-Mar-12', '2017-03-07', '2017-07-20 11:17:39', 'ENRbf558bd0177b5a92', '14887548001489273200', 0, 0, 0, 0, 0, 0, 0, 47, 0),
(27, 'C58bc06cdc430f', 'G58d7cfe55587e369f', 'CI404558bc074d3369f', 'I58bed3b9c8217bvko', NULL, 'paid', 47, 0, 'cash', 'CR30f58d951d799jal', '2017-Mar-06', '2017-Mar-12', '2017-03-07', '2017-07-20 11:18:20', 'ENRbf558bd0177b5a92', '14887548001489273200', 0, 0, 0, 0, 0, 0, 0, 47, 0),
(28, 'C58bc06cdc430f', 'G58d7cfe55587e369f', 'CI404558bc074d3369f', 'I58bed3b9c8217bcjo', NULL, 'paid', 47, 0, 'cash', 'CR30f58d951d799jsl', '2017-Mar-06', '2017-Mar-12', '2017-03-07', '2017-07-20 11:18:16', 'ENRbf558bd0177b5a92', '14887548001489273200', 0, 0, 0, 0, 0, 0, 0, 47, 0),
(29, 'C58bc06cdc430f', 'G58d7cfe55587e369f', 'CI404558bc074d3369f', 'I58bed3b9c8217bpoi', NULL, 'paid', 47, 0, 'cash', 'CR30f58d951d799jel', '2017-Mar-06', '2017-Mar-12', '2017-03-07', '2017-07-20 11:18:12', 'ENRbf558bd0177b5a92', '14887548001489273200', 0, 0, 0, 0, 0, 0, 0, 47, 0),
(30, 'C58bc06cdc430f', 'G58d7cfe55587e369f', 'G58e8d70adea9b369f', 'I58bed3b9c8217bmko', NULL, 'paid', 47, 0, 'cash', 'CR30f58d951d799jvl', '2017-Mar-06', '2017-Mar-12', '2017-03-07', '2017-07-20 11:17:13', 'ENRbf558bd0177b5a92', '14887548001489273200', 0, 0, 0, 0, 0, 0, 0, 47, 0),
(31, 'C58bc06cdc430f', 'G591d8ca56de91369f', 'CI404558bc074d3369f', 'I598bf1bb746e869f', NULL, NULL, 100, 100, NULL, NULL, '2017-Aug-01', '2017-Aug-31', '2017-08-10', '2017-08-10 05:40:17', 'ENR69f58c1307085229', '15015384001504130400', 0, 0, 0, 0, 0, 0, 0, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `medical_condition`
--

CREATE TABLE `medical_condition` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `condition` varchar(45) NOT NULL,
  `notes` varchar(45) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hide_r` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `id` int(11) NOT NULL,
  `medication` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `create_date` varchar(65) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `child_id` varchar(200) NOT NULL,
  `company_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`id`, `medication`, `notes`, `create_date`, `timestamp`, `child_id`, `company_id`) VALUES
(1, 'jhscjo', 'jhjsh', '', '2017-04-30 07:29:00', 'CI263258bd01180dbf5', ''),
(2, 'm', 'ewddgj', '', '2017-05-18 11:54:43', 'CI404558bc074d3369f', ''),
(3, 'RHGF', 'TH', '', '2017-08-05 05:51:20', 'CI404558bc074d3369f', '');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `notes`, `child_id`, `create_date`, `company_id`) VALUES
(1, 'vdtj  raet set\r\n', 'CI263258bd01180dbf5', '2017-03-05 18:30:00', ''),
(3, 'jio', 'CI404558bc074d3369f', '2017-04-01 15:00:24', ''),
(4, 'bkjhl kl;', 'CI404558bc074d3369f', '2017-04-01 14:03:15', 'C58bc06cdc430f'),
(5, 'nb,n', 'CI404558bc074d3369f', '2017-04-01 14:03:41', 'C58bc06cdc430f'),
(6, 'jbjkbkj', 'CI404558bc074d3369f', '2017-04-01 14:04:38', 'C58bc06cdc430f');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `id` int(11) NOT NULL,
  `food` varchar(67) NOT NULL,
  `period` varchar(45) NOT NULL,
  `date` varchar(75) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`id`, `food`, `period`, `date`, `modified`, `company_id`, `status`) VALUES
(1, 'klsjklperiodbreakfast', '', '2017-05-2', '2017-05-01 17:14:31', '', 1),
(2, 'klsjklperiodbreakfast', '', '2017-05-3', '2017-05-01 17:15:53', '', 1),
(3, 'kjfkdperiod=launch', '', '2017-05-4', '2017-05-01 17:19:27', '', 1),
(4, 'fek', 'dinner', '2017-05-1', '2017-05-01 17:20:17', '', 1),
(5, 'klkjlk', 'breakfast', '2017-05-4', '2017-05-01 17:23:22', '', 1),
(6, 'kjfk', 'breakfast', '2017-05-16', '2017-05-01 17:23:45', '', 1),
(7, 'jfdk', 'launch', '2017-05-17', '2017-05-01 17:25:43', '', 1),
(8, 'jkld', 'breakfast', '2017-05-10', '2017-05-01 17:28:09', '', 1),
(9, 'j;kl', 'breakfast', '2017-05-11', '2017-05-01 17:29:09', '', 1),
(10, 'nlknlk', 'snacks', '2017-05-12', '2017-05-01 17:29:45', 'C58bc06cdc430f', 1),
(11, 'uppuma', 'breakfast', '2017-05-27', '2017-05-27 05:58:09', 'C58bc06cdc430f', 1),
(12, 'ckjfoi', 'breakfast', '2017-05-13', '2017-05-27 06:00:26', 'C58bc06cdc430f', 1),
(13, 'fhf', 'breakfast', '2017-08-4', '2017-08-05 05:52:15', 'C58bc06cdc430f', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(200) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `invoice_id` varchar(200) NOT NULL,
  `payer_id` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(45) NOT NULL,
  `payment_method` varchar(45) NOT NULL,
  `token` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `payment_id`, `company_id`, `invoice_id`, `payer_id`, `amount`, `date`, `month`, `payment_method`, `token`) VALUES
(1, 'CR30f58bcf4a476081', 'C58bc06cdc430f', 'I58bc13fc967da69f', 'G58bc0779ac818369f', 33, '2017-03-06', '2017-03', '', ''),
(2, 'CR30f58bfa11a47603', 'C58bc06cdc430f', 'I58bfa0f27d948', 'G58bc0779ac818369f', 1100, '2017-03-08', '2017-03', '', ''),
(3, 'CR58bff542109af', '', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 50, '2017-04-12', '2017-04', '', ''),
(4, 'CR30f58bff59117197', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 50, '2017-03-07', '2017-03', '', ''),
(5, 'CR30f58bff62163a52', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 10, '2017-04-17', '2017-04', '', ''),
(6, 'CR30f58bff62181006', 'C58bc06cdc430f', 'I58bed3b9c7be869f', 'G58bc0779ac818369f', 10, '2017-04-19', '2017-04', '', ''),
(7, 'CR30f58bff662425de', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 10, '2017-03-07', '2017-03', '', ''),
(8, 'CR30f58bff6a122ffc', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 10, '2017-03-07', '2017-03', '', ''),
(9, 'CR30f58bff6c742ae3', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 10, '2017-03-07', '2017-03', '', ''),
(10, 'CR30f58bff8315309d', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 10, '2017-03-07', '2017-03', '', ''),
(11, 'CR30f58bff839491fe', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 10, '2017-03-07', '2017-03', '', ''),
(12, 'CR30f58bff8498001e', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 10, '2017-03-07', '2017-03', '', ''),
(13, 'CR30f58bff861587c8', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 20, '2017-03-07', '2017-03', '', ''),
(14, 'CR30f58bff8a0c68af', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 10, '2017-03-07', '2017-03', '', ''),
(15, 'CR30f58bff8f4940b5', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 4, '2017-03-07', '2017-03', '', ''),
(16, 'CR30f58bff9069c3a3', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 8, '2017-03-07', '2017-03', '', ''),
(17, 'CR30f58bff906b53e9', 'C58bc06cdc430f', 'I58bed3b9c7be869f', 'G58bc0779ac818369f', 4, '2017-03-07', '2017-03', '', ''),
(18, 'CR30f58bff91f55087', 'C58bc06cdc430f', 'I58bed3b9c770769f', 'G58bc0779ac818369f', 1, '2017-03-07', '2017-03', '', ''),
(19, 'CR30f58bff95b2e74d', 'C58bc06cdc430f', 'I58bed3b9c8217bf5', 'G58bd0131a4e9ddbf5', 0, '2017-03-07', '2017-03', '', ''),
(20, 'CR30f58bff97fe46cb', 'C58bc06cdc430f', 'I58bed3b9c8217bf5', 'G58bd0131a4e9ddbf5', 0, '2017-03-07', '2017-03', '', ''),
(21, 'CR30f58bff9b4ada2b', 'C58bc06cdc430f', 'I58bed3b9c8217bf5', 'G58bd0131a4e9ddbf5', 500, '2017-04-13', '2017-04', '', ''),
(22, 'CR30f58bff9d3c41d4', 'C58bc06cdc430f', 'I58bed3b9c8217bf5', 'G58bd0131a4e9ddbf5', 500, '2017-03-07', '2017-03', '', ''),
(23, 'CR30f58bffa261d598', 'C58bc06cdc430f', 'I58bed3b9c8217bf5', 'G58bd0131a4e9ddbf5', 100, '2017-03-07', '2017-03', '', ''),
(24, 'CR30f58bffa263425f', 'C58bc06cdc430f', 'I58bfa07f719de', 'G58bd0131a4e9ddbf5', 47, '2017-03-08', '2017-03', '', ''),
(25, 'CR30f58c016a0b9ec1', 'C58bc06cdc430f', 'I58bed3b9c8217bf5', 'G58bd0131a4e9ddbf5', 500, '2017-03-07', '2017-03', '', ''),
(26, 'CR30f58c016f80f92b', 'C58bc06cdc430f', 'I58bed3b9c8217bf5', 'G58bd0131a4e9ddbf5', 100, '2017-03-07', '2017-03', '', ''),
(27, 'CR30f58d951d799fe1', 'C58bc06cdc430f', 'I58bed3b9c8217bf5', 'G58bd0131a4e9ddbf5', 46, '2017-03-27', '2017-03', '', ''),
(28, 'CR30f58d951d799fe1', 'C58bc06cdc430f', 'I58d951569ee83bf5', 'G58bd0131a4e9ddbf5', 47, '2017-03-27', '2017-03', '', ''),
(29, 'CR69f597a0c2721cb1', 'C58bc06cdc430f', 'I58d951569b65b69f', 'G58d7cfe55587e369f', 10, '2017-07-27', '2017-07', '', ''),
(30, 'CR69f5982c66a52945', 'C58bc06cdc430f', 'I58d951569b65b69f', 'G58d7cfe55587e369f', 10, '2017-08-03', '2017-08', '', ''),
(31, 'CR69f5982e6cb2596b', 'C58bc06cdc430f', 'I58d951569b65b69f', 'G58d7cfe55587e369f', 10, '2017-08-03', '2017-08', 'direct', ''),
(32, 'CR69f5982e71505066', 'C58bc06cdc430f', 'I58d951569b65b69f', 'G58d7cfe55587e369f', 10, '2017-08-03', '2017-08', 'online', 'tok_1AmfGCCsA4tRr8jro6MT5tHp'),
(33, 'CR69f5982e78fe94c8', 'C58bc06cdc430f', 'I58d951569b65b69f', 'G58d7cfe55587e369f', 20, '2017-08-03', '2017-08', 'online', 'tok_1AmfIFCsA4tRr8jrhZz0UdPU'),
(34, 'CR69f59856bf0e0ea6', 'C58bc06cdc430f', '', 'G591d8ca56de91369f', 280, '2017-08-05', '2017-08', 'online', 'tok_1AnMChCsA4tRr8jrAnx85j8N');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(65) NOT NULL,
  `setup_fee` int(100) NOT NULL,
  `trainee_fee` int(100) NOT NULL,
  `monthly_fee` int(100) NOT NULL,
  `capacity` int(100) NOT NULL,
  `after_capacity_per_child_fee` int(100) NOT NULL,
  `period` varchar(65) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `discount` varchar(45) DEFAULT NULL,
  `status` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `plan_name`, `setup_fee`, `trainee_fee`, `monthly_fee`, `capacity`, `after_capacity_per_child_fee`, `period`, `date`, `discount`, `status`) VALUES
(1, 'diwalli offer', 67, 76, 65, 20, 23, 'monthly', '2017-06-06 18:18:39', '3', 'active'),
(2, 'sajeevan', 250, 100, 100, 200, 10, 'monthly', '2017-06-06 18:19:41', '0', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `id` int(11) NOT NULL,
  `credit_id` varchar(200) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `refund_amount` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `refund_id` varchar(200) NOT NULL,
  `method` varchar(45) NOT NULL,
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `r_payer_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `refund`
--

INSERT INTO `refund` (`id`, `credit_id`, `company_id`, `refund_amount`, `date`, `refund_id`, `method`, `last_update_date`, `r_payer_id`) VALUES
(1, 'CR30f58bff93debd13', 'C58bc06cdc430f', 500, '2017-Mar-22', 'RE30f58d2ce1c89cfd', '', '2017-03-22 19:18:52', 'G58bd0131a4e9ddbf5'),
(2, 'CR30f58bff948464b8', 'C58bc06cdc430f', 400, '2017-Mar-22', 'RE30f58d2ce1c89cfd', '', '2017-03-22 19:18:52', 'G58bd0131a4e9ddbf5');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `number` bigint(200) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(200) NOT NULL,
  `key` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='to register the accounts';

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `firstname`, `lastname`, `email`, `number`, `creation_date`, `password`, `key`) VALUES
(1, 'sajeevan', 'balachandran', 'sajisajeevan@live.in', 9003927146, '2017-03-05 12:37:01', '$2y$10$a/9WiTMkUAIkZxV74pkfZuNxD10AfHiCvh6SueTsyAQC0k1bNaZaC', '58bc066d1941a');

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `reminder` varchar(100) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `r_date` date NOT NULL,
  `remind_head` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reminder`
--

INSERT INTO `reminder` (`id`, `child_id`, `reminder`, `create_date`, `r_date`, `remind_head`) VALUES
(2, 'CI404558bc074d3369f', ' b hgfiug fyicgyufgeuyf dsgvyt fyetfydsgidsj', '2017-04-01 15:04:33', '2017-04-01', 'jsajkhj sg hisjhagsyh');

-- --------------------------------------------------------

--
-- Table structure for table `security_deposite`
--

CREATE TABLE `security_deposite` (
  `id` int(11) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `s_payer_id` varchar(200) NOT NULL,
  `security_amount` int(11) NOT NULL DEFAULT '0',
  `method` varchar(45) NOT NULL,
  `current_amount` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sess_mg`
--

CREATE TABLE `sess_mg` (
  `id` int(11) NOT NULL,
  `uid` varchar(200) NOT NULL,
  `rid` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sess_mg`
--

INSERT INTO `sess_mg` (`id`, `uid`, `rid`, `date`) VALUES
(1, '1013', '58bc06c35158c', '2017-03-05 12:38:27'),
(2, '1013', '58bc2deb549c7', '2017-03-05 15:25:31'),
(3, '1013', '58bcf41d8b137', '2017-03-06 05:31:09'),
(4, '1013', '58bd1a18bb997', '2017-03-06 08:13:12'),
(5, '1013', '58bd227465b23', '2017-03-06 08:48:52'),
(6, '1013', '58be4403babc0', '2017-03-07 05:24:19'),
(7, '1013', '58bea982ddd2c', '2017-03-07 12:37:23'),
(8, '1013', '58befab669bf8', '2017-03-07 18:23:50'),
(9, '1013', '58bf8a779ee0e', '2017-03-08 04:37:11'),
(10, '1013', '58c0fe3cb5481', '2017-03-09 07:03:24'),
(11, '1013', '58c232f98a69e', '2017-03-10 05:00:41'),
(12, '1013', '58c275abc83fd', '2017-03-10 09:45:15'),
(13, '1013', '58c3740e3a082', '2017-03-11 03:50:38'),
(14, '1013', '58c5323f7b454', '2017-03-12 11:34:23'),
(15, '1013', '58c6375b720ab', '2017-03-13 06:08:27'),
(16, '1013', '58c9003ecf12c', '2017-03-15 08:50:07'),
(17, '1013', '58cbec706a18b', '2017-03-17 14:02:24'),
(18, '1013', '58ce207d6a0cc', '2017-03-19 06:09:01'),
(19, '1013', '58cfb4f3524b7', '2017-03-20 10:54:43'),
(20, '1013', '58d018bbc8631', '2017-03-20 18:00:27'),
(21, '1013', '58d0e87b76ecb', '2017-03-21 08:46:51'),
(22, '1013', '58d12a1dc37a7', '2017-03-21 13:26:53'),
(23, '1013', '58d12b7bb327c', '2017-03-21 13:32:43'),
(24, '1013', '58d12f6d02b91', '2017-03-21 13:49:33'),
(25, '1013', '58d12f9a390f7', '2017-03-21 13:50:18'),
(26, '1013', '58d201523b3bc', '2017-03-22 04:45:06'),
(27, '1013', '58d2c42045f50', '2017-03-22 18:36:16'),
(28, '1013', '58d2c5e7ee206', '2017-03-22 18:43:52'),
(29, '1013', '58d2ce0c8582b', '2017-03-22 19:18:36'),
(30, '1013', '58d363c7856f4', '2017-03-23 05:57:27'),
(31, '1013', '58d5018e671b5', '2017-03-24 11:22:54'),
(32, '1013', '58d629870ef0d', '2017-03-25 08:25:43'),
(33, '1013', '58d7cf5b6c993', '2017-03-26 14:25:31'),
(34, '1013', '58d8e3535bc7f', '2017-03-27 10:02:59'),
(35, '1013', '58d9500bc273a', '2017-03-27 17:46:51'),
(36, '1013', '58da42cc57990', '2017-03-28 11:02:36'),
(37, '1013', '58da433ab1313', '2017-03-28 11:04:26'),
(38, '1013', '58dba86be74fe', '2017-03-29 12:28:28'),
(39, '1013', '58dba8c7925bd', '2017-03-29 12:29:59'),
(40, '1013', '58dba905e13d7', '2017-03-29 12:31:02'),
(41, '1013', '58dba94c07949', '2017-03-29 12:32:12'),
(42, '1013', '58dba97dbbbd5', '2017-03-29 12:33:01'),
(43, '1013', '58dcf3aa6bb7c', '2017-03-30 12:01:46'),
(44, '1013', '58dddcb8b7c64', '2017-03-31 04:36:08'),
(45, '1013', '58de90dd65c7b', '2017-03-31 17:24:45'),
(46, '1013', '58df4cd08d1ac', '2017-04-01 06:46:40'),
(47, '1013', '58dfe8f5f25b4', '2017-04-01 17:52:54'),
(48, '1013', '58e4f5dc37ec6', '2017-04-05 13:49:16'),
(49, '1013', '58e640ea7cc05', '2017-04-06 13:21:46'),
(50, '1013', '58e87505963ec', '2017-04-08 05:28:37'),
(51, '1013', '58e8e5451dbc0', '2017-04-08 13:27:33'),
(52, '1013', '58ec8518d24d2', '2017-04-11 07:26:16'),
(53, '1013', '58ecc2a534e2d', '2017-04-11 11:48:53'),
(54, '1013', '58ee26bc34863', '2017-04-12 13:08:12'),
(55, '1013', '58ef1f9badf33', '2017-04-13 06:50:03'),
(56, '1013', '58ef74a497e69', '2017-04-13 12:52:52'),
(57, '1013', '58f44ad8a1304', '2017-04-17 04:55:52'),
(58, '1013', '58f450583ec1c', '2017-04-17 05:19:20'),
(59, '1013', '58f6156bb2c02', '2017-04-18 13:32:27'),
(60, '1013', '58f64652252f8', '2017-04-18 17:01:06'),
(61, '1013', '58f6495665f04', '2017-04-18 17:13:58'),
(62, '1013', '58f76efd8b0c8', '2017-04-19 14:06:53'),
(63, '1013', '58f76f0dd8547', '2017-04-19 14:07:10'),
(64, '1013', '58fa09e22830d', '2017-04-21 13:32:18'),
(65, '1013', '58fa09ec62940', '2017-04-21 13:32:28'),
(66, '1013', '58fdea3ed98d1', '2017-04-24 12:06:23'),
(67, '1013', '58fdea513d65d', '2017-04-24 12:06:41'),
(68, '1013', '58fef2385ff89', '2017-04-25 06:52:40'),
(69, '1013', '58fef25a8771c', '2017-04-25 06:53:14'),
(70, '1013', '5905716918cb1', '2017-04-30 05:08:57'),
(71, '1013', '59057170b10dc', '2017-04-30 05:09:04'),
(72, '1013', '5905752b28c0a', '2017-04-30 05:24:59'),
(73, '1013', '59057532a3858', '2017-04-30 05:25:06'),
(74, '1013', '5906bb5a38829', '2017-05-01 04:36:42'),
(75, '1013', '5906bb6212541', '2017-05-01 04:36:50'),
(76, '1013', '590c23ac11817', '2017-05-05 07:03:08'),
(77, '1013', '590c23b558fa8', '2017-05-05 07:03:17'),
(78, '1013', '590c6e2f6dd9a', '2017-05-05 12:21:03'),
(79, '1013', '590c6f983ac90', '2017-05-05 12:27:04'),
(80, '1013', '5911c580c0d6d', '2017-05-09 13:34:56'),
(81, '1013', '59131f6831b58', '2017-05-10 14:10:48'),
(82, '1013', '591326a5bb681', '2017-05-10 14:41:41'),
(83, '1013', '5913483c96710', '2017-05-10 17:05:00'),
(84, '1013', '591693931a162', '2017-05-13 05:03:15'),
(85, '1013', '5917df4251489', '2017-05-14 04:38:26'),
(86, '1013', '591946657365a', '2017-05-15 06:10:45'),
(87, '1013', '591a99acee825', '2017-05-16 06:18:21'),
(88, '1013', '591bae3e2568e', '2017-05-17 01:58:22'),
(89, '1013', '591d8b027df33', '2017-05-18 11:52:34'),
(90, '1013', '591ea4efd5b67', '2017-05-19 07:55:27'),
(91, '1013', '592914c70279e', '2017-05-27 05:55:19'),
(92, '1013', '5929927d7203c', '2017-05-27 14:51:41'),
(93, '1013', '5931528e4b353', '2017-06-02 11:57:02'),
(94, '1013', '5935660731e14', '2017-06-05 14:09:11'),
(95, '1013', '5936ca6b0eb9e', '2017-06-06 15:29:47'),
(96, '1013', '593812c6804db', '2017-06-07 14:50:46'),
(97, '1013', '59382ad0bf915', '2017-06-07 16:33:20'),
(98, '1013', '59382b00a5e00', '2017-06-07 16:34:08'),
(99, '1013', '59382ea1c2933', '2017-06-07 16:49:37'),
(100, '1013', '5938d624ba39b', '2017-06-08 04:44:20'),
(101, '1013', '5938d668e16b4', '2017-06-08 04:45:29'),
(102, '1013', '5938d6a752218', '2017-06-08 04:46:31'),
(103, '1013', '5938d6cdbbd2e', '2017-06-08 04:47:09'),
(104, '1013', '5938d6e042162', '2017-06-08 04:47:28'),
(105, '1013', '5938d6ee0690c', '2017-06-08 04:47:42'),
(106, '1013', '5938d7be3a7a4', '2017-06-08 04:51:10'),
(107, '1013', '5938d8bb9d326', '2017-06-08 04:55:23'),
(108, '1013', '5938d91290142', '2017-06-08 04:56:50'),
(109, '1013', '5938d9395259c', '2017-06-08 04:57:29'),
(110, '1013', '5938d95779dd4', '2017-06-08 04:57:59'),
(111, '1013', '5938e0e336763', '2017-06-08 05:30:11'),
(112, '1013', '5938e0f38f1fe', '2017-06-08 05:30:27'),
(113, '1013', '5938e11e42501', '2017-06-08 05:31:10'),
(114, '1013', '5938e1302dab6', '2017-06-08 05:31:28'),
(115, '1013', '5938e13ee48f5', '2017-06-08 05:31:43'),
(116, '1013', '5938e154c7fc2', '2017-06-08 05:32:04'),
(117, '1013', '5938e15f5bb4d', '2017-06-08 05:32:15'),
(118, '1013', '5938e407a71dd', '2017-06-08 05:43:35'),
(119, '1013', '5939932034bc9', '2017-06-08 18:10:40'),
(120, '1013', '593a3eed17b43', '2017-06-09 06:23:41'),
(121, '1013', '595cf5619a8e4', '2017-07-05 14:19:13'),
(122, '1013', '595cf5c6ba343', '2017-07-05 14:20:54'),
(123, '1013', '5968bb22badfb', '2017-07-14 12:37:54'),
(124, '1013', '5970443c80f04', '2017-07-20 05:48:44'),
(125, '1013', '5971f779a0e83', '2017-07-21 12:45:45'),
(126, '1013', '5979e9bb2e950', '2017-07-27 13:25:15'),
(127, '1013', '597f065374e16', '2017-07-31 10:28:35'),
(128, '1013', '59804ad1c9173', '2017-08-01 09:33:05'),
(129, '1013', '5982c50c55037', '2017-08-03 06:39:08'),
(130, '1013', '5982e854adf69', '2017-08-03 09:09:40'),
(131, '1013', '5984304eb3a26', '2017-08-04 08:29:02'),
(132, '1013', '598459ee1d0ac', '2017-08-04 11:26:38'),
(133, '1013', '598540b9d9af3', '2017-08-05 03:51:22'),
(134, '1013', '5989546bdd24e', '2017-08-08 06:04:28'),
(135, '1013', '598bf0c292318', '2017-08-10 05:36:02'),
(136, '1013', '59b23fafdc112', '2017-09-08 06:58:56'),
(137, '1013', '59b23ffab8f4f', '2017-09-08 07:00:10'),
(138, '1013', '59b66f0c90c93', '2017-09-11 11:10:04'),
(139, '1013', '59b6713072bd4', '2017-09-11 11:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `special_req`
--

CREATE TABLE `special_req` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `req` varchar(45) NOT NULL,
  `notes` varchar(45) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hide` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_allergies`
--

CREATE TABLE `staff_allergies` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(200) NOT NULL,
  `allergy` varchar(45) NOT NULL,
  `notes` varchar(45) DEFAULT NULL,
  `epison` varchar(45) NOT NULL,
  `expiry_date` varchar(45) DEFAULT NULL,
  `carried_by` varchar(45) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_allergies`
--

INSERT INTO `staff_allergies` (`id`, `staff_id`, `allergy`, `notes`, `epison`, `expiry_date`, `carried_by`, `date`) VALUES
(1, 'STA30f58bd1b3461a29', 'dust', 'monthly once', 'on', '2017-03-09', 'Child', '2017-03-06 17:37:53'),
(2, 'STA30f58bd1b3461a29', 'jjhcdlk ', 'dhvoidsjoi', 'on', '2017-03-15', 'Child', '2017-03-06 17:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attachment`
--

CREATE TABLE `staff_attachment` (
  `id` int(11) NOT NULL,
  `attachment` varchar(300) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `staff_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_attachment`
--

INSERT INTO `staff_attachment` (`id`, `attachment`, `create_date`, `title`, `staff_id`) VALUES
(3, 'STA30f58bc07c52285758c37c68a9ece.jpg', '2017-03-11 00:00:00.000000', 'elevation point', 'STA30f58bc07c522857'),
(4, 'attachment/STA30f58bc07c52285758ddf6dc378ec.png', '2017-03-31 00:00:00.000000', 'hghj', 'STA30f58bc07c522857');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(200) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `month` varchar(45) NOT NULL,
  `notes` varchar(45) NOT NULL,
  `01_in_time` varchar(45) NOT NULL,
  `03_in_time` varchar(45) NOT NULL,
  `02_in_time` varchar(45) NOT NULL,
  `04_in_time` varchar(45) NOT NULL,
  `05_in_time` varchar(45) NOT NULL,
  `06_in_time` varchar(45) NOT NULL,
  `07_in_time` varchar(45) NOT NULL,
  `08_in_time` varchar(45) NOT NULL,
  `09_in_time` varchar(45) NOT NULL,
  `10_in_time` varchar(45) NOT NULL,
  `11_in_time` varchar(45) NOT NULL,
  `12_in_time` varchar(45) NOT NULL,
  `13_in_time` varchar(45) NOT NULL,
  `14_in_time` varchar(45) NOT NULL,
  `15_in_time` varchar(45) NOT NULL,
  `16_in_time` varchar(45) NOT NULL,
  `17_in_time` varchar(45) NOT NULL,
  `18_in_time` varchar(45) NOT NULL,
  `19_in_time` varchar(45) NOT NULL,
  `20_in_time` varchar(45) NOT NULL,
  `21_in_time` varchar(45) NOT NULL,
  `22_in_time` varchar(45) NOT NULL,
  `23_in_time` varchar(45) NOT NULL,
  `24_in_time` varchar(45) NOT NULL,
  `25_in_time` varchar(45) NOT NULL,
  `26_in_time` varchar(45) NOT NULL,
  `27_in_time` varchar(45) NOT NULL,
  `28_in_time` varchar(45) NOT NULL,
  `29_in_time` varchar(45) NOT NULL,
  `30_in_time` varchar(45) NOT NULL,
  `31_in_time` varchar(45) NOT NULL,
  `01_out_time` varchar(45) NOT NULL,
  `02_out_time` varchar(45) NOT NULL,
  `03_out_time` varchar(45) NOT NULL,
  `04_out_time` varchar(45) NOT NULL,
  `05_out_time` varchar(45) NOT NULL,
  `06_out_time` varchar(45) NOT NULL,
  `07_out_time` varchar(45) NOT NULL,
  `08_out_time` varchar(45) NOT NULL,
  `09_out_time` varchar(45) NOT NULL,
  `10_out_time` varchar(45) NOT NULL,
  `11_out_time` varchar(45) NOT NULL,
  `12_out_time` varchar(45) NOT NULL,
  `13_out_time` varchar(45) NOT NULL,
  `14_out_time` varchar(45) NOT NULL,
  `15_out_time` varchar(45) NOT NULL,
  `16_out_time` varchar(45) NOT NULL,
  `17_out_time` varchar(45) NOT NULL,
  `18_out_time` varchar(45) NOT NULL,
  `19_out_time` varchar(45) NOT NULL,
  `20_out_time` varchar(45) NOT NULL,
  `21_out_time` varchar(45) NOT NULL,
  `22_out_time` varchar(45) NOT NULL,
  `23_out_time` varchar(45) NOT NULL,
  `24_out_time` varchar(45) NOT NULL,
  `25_out_time` varchar(45) NOT NULL,
  `26_out_time` varchar(45) NOT NULL,
  `27_out_time` varchar(45) NOT NULL,
  `28_out_time` varchar(45) NOT NULL,
  `29_out_time` varchar(45) NOT NULL,
  `30_out_time` varchar(45) NOT NULL,
  `31_out_time` varchar(45) NOT NULL,
  `01_status` varchar(45) NOT NULL,
  `02_status` varchar(45) NOT NULL,
  `03_status` varchar(45) NOT NULL,
  `04_status` varchar(45) NOT NULL,
  `05_status` varchar(45) NOT NULL,
  `06_status` varchar(45) NOT NULL,
  `07_status` varchar(45) NOT NULL,
  `08_status` varchar(45) NOT NULL,
  `09_status` varchar(45) NOT NULL,
  `10_status` varchar(45) NOT NULL,
  `11_status` varchar(45) NOT NULL,
  `12_status` varchar(45) NOT NULL,
  `13_status` varchar(45) NOT NULL,
  `14_status` varchar(45) NOT NULL,
  `15_status` varchar(45) NOT NULL,
  `16_status` varchar(45) NOT NULL,
  `17_status` varchar(45) NOT NULL,
  `18_status` varchar(45) NOT NULL,
  `19_status` varchar(45) NOT NULL,
  `20_status` varchar(45) NOT NULL,
  `21_status` varchar(45) NOT NULL,
  `22_status` varchar(45) NOT NULL,
  `23_status` varchar(45) NOT NULL,
  `24_status` varchar(45) NOT NULL,
  `25_status` varchar(45) NOT NULL,
  `26_status` varchar(45) NOT NULL,
  `27_status` varchar(45) NOT NULL,
  `28_status` varchar(45) NOT NULL,
  `29_status` varchar(45) NOT NULL,
  `30_status` varchar(45) NOT NULL,
  `31_status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_attendance`
--

INSERT INTO `staff_attendance` (`id`, `staff_id`, `company_id`, `month`, `notes`, `01_in_time`, `03_in_time`, `02_in_time`, `04_in_time`, `05_in_time`, `06_in_time`, `07_in_time`, `08_in_time`, `09_in_time`, `10_in_time`, `11_in_time`, `12_in_time`, `13_in_time`, `14_in_time`, `15_in_time`, `16_in_time`, `17_in_time`, `18_in_time`, `19_in_time`, `20_in_time`, `21_in_time`, `22_in_time`, `23_in_time`, `24_in_time`, `25_in_time`, `26_in_time`, `27_in_time`, `28_in_time`, `29_in_time`, `30_in_time`, `31_in_time`, `01_out_time`, `02_out_time`, `03_out_time`, `04_out_time`, `05_out_time`, `06_out_time`, `07_out_time`, `08_out_time`, `09_out_time`, `10_out_time`, `11_out_time`, `12_out_time`, `13_out_time`, `14_out_time`, `15_out_time`, `16_out_time`, `17_out_time`, `18_out_time`, `19_out_time`, `20_out_time`, `21_out_time`, `22_out_time`, `23_out_time`, `24_out_time`, `25_out_time`, `26_out_time`, `27_out_time`, `28_out_time`, `29_out_time`, `30_out_time`, `31_out_time`, `01_status`, `02_status`, `03_status`, `04_status`, `05_status`, `06_status`, `07_status`, `08_status`, `09_status`, `10_status`, `11_status`, `12_status`, `13_status`, `14_status`, `15_status`, `16_status`, `17_status`, `18_status`, `19_status`, `20_status`, `21_status`, `22_status`, `23_status`, `24_status`, `25_status`, `26_status`, `27_status`, `28_status`, `29_status`, `30_status`, `31_status`) VALUES
(1, 'STA30f58bc07c522857', 'C58bc06cdc430f', '2017-03', '', '', '', '', '', '', '', '', '', '', '00:21', '', '', '', '', '', '', '19:55', '', '', '', '', '', '', '', '', '', '', '', '', '', '11:58', '', '', '', '', '', '', '', '', '', 'NULL', '', '', '', '', '', '', '19:34', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'arrived', '', '', '', '', '', '', 'arrived', '', '', '', '', '', '', '', '', '', '', '', '', '', 'arrived'),
(2, 'STA30f58bd1b3461a29', 'C58bc06cdc430f', '2017-03', '', '', '', '', '', '', '', '', '', '', 'NULL', '', '', '', '', '', '', '19:33', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '00:22', '', '', '', '', '', '', '19:56', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'attened', '', '', '', '', '', '', 'attened', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'STA30f58bc07c522857', 'C58bc06cdc430f', '2017-04', '', '20:43', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20:43', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'attened', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'STA30f58bd1b3461a29', 'C58bc06cdc430f', '2017-04', '', 'NULL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20:46', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'attened', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff_contact`
--

CREATE TABLE `staff_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `relationship` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` int(50) DEFAULT NULL,
  `w_address` varchar(45) DEFAULT NULL,
  `w_city` varchar(45) DEFAULT NULL,
  `w_state` varchar(45) DEFAULT NULL,
  `w_zip` int(50) DEFAULT NULL,
  `w_phone` int(100) DEFAULT NULL,
  `h_phone` int(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cell` int(100) DEFAULT NULL,
  `o_phone` int(100) DEFAULT NULL,
  `pickup` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `staff_id` varchar(200) NOT NULL,
  `contact_id` varchar(200) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_contact`
--

INSERT INTO `staff_contact` (`id`, `name`, `relationship`, `address`, `city`, `state`, `zip`, `w_address`, `w_city`, `w_state`, `w_zip`, `w_phone`, `h_phone`, `email`, `cell`, `o_phone`, `pickup`, `type`, `staff_id`, `contact_id`, `create_date`, `pic`) VALUES
(1, 'sajeevan', 'father', 'NULL', 'NULL', '', 0, 'NULL', 'NULL', '', 0, 0, 0, 'NULL', 0, 0, NULL, 'primary', 'STA30f58bd1b3461a29', 'CON58bd2fe6d492e', '2017-08-08 06:33:15', 'cpic/400_a2959895b2b9cabb.jpg'),
(4, 'guru', 'guardian', 'pudukkottai', 'pudukkottai', '', 5657, 'dfnvfdn', '56678', '', 0, 6767689, 5767, 'sajisajeevan@live.in', 46578, 657689, NULL, 'primary', 'STA30f58bc07c522857', 'CON58ddde751a2e3', '2017-06-06 16:34:25', 'cpic/400_8575936d991c9320.jpg'),
(7, 'sdj;', 'NULL', 'NULL', 'NULL', '', 0, 'NULL', 'NULL', '', 0, 0, 0, 'NULL', 0, 0, NULL, 'primary', 'STA30f58bc07c522857', 'CON591ea67198e44', '2017-06-06 16:27:55', 'gpic/400_8575936d80bd6eae.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `staff_doctors`
--

CREATE TABLE `staff_doctors` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(200) NOT NULL,
  `dr_name` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zip` varchar(45) NOT NULL,
  `w_phone` bigint(100) NOT NULL,
  `mobile` int(50) NOT NULL,
  `phone` int(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_doctors`
--

INSERT INTO `staff_doctors` (`id`, `staff_id`, `dr_name`, `address`, `state`, `city`, `zip`, `w_phone`, `mobile`, `phone`, `email`, `create_date`) VALUES
(1, 'STA30f58bd1b3461a29', 'sajeevanb', 'dgaiuh', 'AB', 'dcbjk', '675879', 54876, 587679, 7587698, '', '2017-03-06 11:51:05'),
(2, 'STA30f58bd1b3461a29', 'sajeevan', 'pudukkottai', 'AB', 'pudukkottai', '8609278', 90089372817, 2147483647, 90083, '', '2017-03-06 16:14:00'),
(3, 'STA30f58bd1b3461a29', 'guru', 'trichy', 'after school', 'trichy', '908', 90089372817, 2147483647, 0, 'guruman@live.in', '2017-03-06 16:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `staff_medical_condition`
--

CREATE TABLE `staff_medical_condition` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(200) NOT NULL,
  `condition` varchar(45) NOT NULL,
  `notes` varchar(45) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hide_r` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_medical_condition`
--

INSERT INTO `staff_medical_condition` (`id`, `staff_id`, `condition`, `notes`, `date`, `hide_r`) VALUES
(1, 'STA30f58bd1b3461a29', 'chdois', 'kdjio', '2017-03-06 16:54:08', 'on'),
(2, 'STA30f58bd1b3461a29', 'saaas', 'kcodaji cidajioa cehco ', '2017-03-06 17:10:46', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `staff_notes`
--

CREATE TABLE `staff_notes` (
  `id` int(11) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `staff_id` varchar(200) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_notes`
--

INSERT INTO `staff_notes` (`id`, `notes`, `staff_id`, `create_date`, `company_id`) VALUES
(4, 'jhg hhoij pok;', 'STA30f58bc07c522857', '2017-04-01 07:11:31', ''),
(5, ',jcksapsjcmnvhjjh', 'STA30f58bc07c522857', '2017-04-01 07:37:23', ''),
(6, ',jcksapsjcjhj', 'STA30f58bc07c522857', '2017-04-01 07:41:50', ''),
(7, ',jcksapsjcjhjkhjkhk', 'STA30f58bc07c522857', '2017-04-01 07:42:14', ''),
(8, 'jbkjl', 'STA30f58bc07c522857', '2017-04-01 07:45:45', 'C58bc06cdc430f'),
(9, 'dml;sajeevan\r\n', 'STA30f58bc07c522857', '2017-06-06 16:35:18', 'C58bc06cdc430f');

-- --------------------------------------------------------

--
-- Table structure for table `staff_reminder`
--

CREATE TABLE `staff_reminder` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(200) NOT NULL,
  `reminder` varchar(100) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `r_date` date NOT NULL,
  `remind_head` varchar(45) DEFAULT NULL,
  `company_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_reminder`
--

INSERT INTO `staff_reminder` (`id`, `staff_id`, `reminder`, `create_date`, `r_date`, `remind_head`, `company_id`) VALUES
(2, 'STA30f58bc07c522857', 'sajiohoifih uahcu hduhuihw', '2017-04-01 10:32:26', '2017-04-12', 'home work', 'C58bc06cdc430f'),
(3, 'STA30f58bc07c522857', 'nsdfoadho', '2017-04-01 10:31:28', '2017-04-25', 'assignment', 'C58bc06cdc430f');

-- --------------------------------------------------------

--
-- Table structure for table `staff_special_req`
--

CREATE TABLE `staff_special_req` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(200) NOT NULL,
  `req` varchar(45) NOT NULL,
  `notes` varchar(45) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hide` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_special_req`
--

INSERT INTO `staff_special_req` (`id`, `staff_id`, `req`, `notes`, `date`, `hide`) VALUES
(10, 'STA30f58bd1b3461a29', 'sajeevan', 'chsaoio', '2017-03-06 17:55:16', 'NULL'),
(11, 'STA30f58bd1b3461a29', 'guru', 'guru', '2017-03-06 17:55:09', 'on'),
(12, 'STA30f58bd1b3461a29', 'vetri', 'guru', '2017-03-06 17:54:59', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `staff_vacation`
--

CREATE TABLE `staff_vacation` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(200) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vacation` varchar(200) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `student_id` varchar(200) NOT NULL,
  `company_id` varchar(200) NOT NULL,
  `month` varchar(45) NOT NULL,
  `notes` varchar(45) NOT NULL,
  `01_in_time` varchar(45) NOT NULL,
  `03_in_time` varchar(45) NOT NULL,
  `02_in_time` varchar(45) NOT NULL,
  `04_in_time` varchar(45) NOT NULL,
  `05_in_time` varchar(45) NOT NULL,
  `06_in_time` varchar(45) NOT NULL,
  `07_in_time` varchar(45) NOT NULL,
  `08_in_time` varchar(45) NOT NULL,
  `09_in_time` varchar(45) NOT NULL,
  `10_in_time` varchar(45) NOT NULL,
  `11_in_time` varchar(45) NOT NULL,
  `12_in_time` varchar(45) NOT NULL,
  `13_in_time` varchar(45) NOT NULL,
  `14_in_time` varchar(45) NOT NULL,
  `15_in_time` varchar(45) NOT NULL,
  `16_in_time` varchar(45) NOT NULL,
  `17_in_time` varchar(45) NOT NULL,
  `18_in_time` varchar(45) NOT NULL,
  `19_in_time` varchar(45) NOT NULL,
  `20_in_time` varchar(45) NOT NULL,
  `21_in_time` varchar(45) NOT NULL,
  `22_in_time` varchar(45) NOT NULL,
  `23_in_time` varchar(45) NOT NULL,
  `24_in_time` varchar(45) NOT NULL,
  `25_in_time` varchar(45) NOT NULL,
  `26_in_time` varchar(45) NOT NULL,
  `27_in_time` varchar(45) NOT NULL,
  `28_in_time` varchar(45) NOT NULL,
  `29_in_time` varchar(45) NOT NULL,
  `30_in_time` varchar(45) NOT NULL,
  `31_in_time` varchar(45) NOT NULL,
  `01_out_time` varchar(45) NOT NULL,
  `02_out_time` varchar(45) NOT NULL,
  `03_out_time` varchar(45) NOT NULL,
  `04_out_time` varchar(45) NOT NULL,
  `05_out_time` varchar(45) NOT NULL,
  `06_out_time` varchar(45) NOT NULL,
  `07_out_time` varchar(45) NOT NULL,
  `08_out_time` varchar(45) NOT NULL,
  `09_out_time` varchar(45) NOT NULL,
  `10_out_time` varchar(45) NOT NULL,
  `11_out_time` varchar(45) NOT NULL,
  `12_out_time` varchar(45) NOT NULL,
  `13_out_time` varchar(45) NOT NULL,
  `14_out_time` varchar(45) NOT NULL,
  `15_out_time` varchar(45) NOT NULL,
  `16_out_time` varchar(45) NOT NULL,
  `17_out_time` varchar(45) NOT NULL,
  `18_out_time` varchar(45) NOT NULL,
  `19_out_time` varchar(45) NOT NULL,
  `20_out_time` varchar(45) NOT NULL,
  `21_out_time` varchar(45) NOT NULL,
  `22_out_time` varchar(45) NOT NULL,
  `23_out_time` varchar(45) NOT NULL,
  `24_out_time` varchar(45) NOT NULL,
  `25_out_time` varchar(45) NOT NULL,
  `26_out_time` varchar(45) NOT NULL,
  `27_out_time` varchar(45) NOT NULL,
  `28_out_time` varchar(45) NOT NULL,
  `29_out_time` varchar(45) NOT NULL,
  `30_out_time` varchar(45) NOT NULL,
  `31_out_time` varchar(45) NOT NULL,
  `01_status` varchar(45) NOT NULL,
  `02_status` varchar(45) NOT NULL,
  `03_status` varchar(45) NOT NULL,
  `04_status` varchar(45) NOT NULL,
  `05_status` varchar(45) NOT NULL,
  `06_status` varchar(45) NOT NULL,
  `07_status` varchar(45) NOT NULL,
  `08_status` varchar(45) NOT NULL,
  `09_status` varchar(45) NOT NULL,
  `10_status` varchar(45) NOT NULL,
  `11_status` varchar(45) NOT NULL,
  `12_status` varchar(45) NOT NULL,
  `13_status` varchar(45) NOT NULL,
  `14_status` varchar(45) NOT NULL,
  `15_status` varchar(45) NOT NULL,
  `16_status` varchar(45) NOT NULL,
  `17_status` varchar(45) NOT NULL,
  `18_status` varchar(45) NOT NULL,
  `19_status` varchar(45) NOT NULL,
  `20_status` varchar(45) NOT NULL,
  `21_status` varchar(45) NOT NULL,
  `22_status` varchar(45) NOT NULL,
  `23_status` varchar(45) NOT NULL,
  `24_status` varchar(45) NOT NULL,
  `25_status` varchar(45) NOT NULL,
  `26_status` varchar(45) NOT NULL,
  `27_status` varchar(45) NOT NULL,
  `28_status` varchar(45) NOT NULL,
  `29_status` varchar(45) NOT NULL,
  `30_status` varchar(45) NOT NULL,
  `31_status` varchar(45) NOT NULL,
  `01_class` varchar(200) NOT NULL,
  `02_class` varchar(200) NOT NULL,
  `03_class` varchar(200) NOT NULL,
  `04_class` varchar(200) NOT NULL,
  `05_class` varchar(200) NOT NULL,
  `06_class` varchar(200) NOT NULL,
  `07_class` varchar(200) NOT NULL,
  `08_class` varchar(200) NOT NULL,
  `09_class` varchar(200) NOT NULL,
  `10_class` varchar(200) NOT NULL,
  `11_class` varchar(200) NOT NULL,
  `12_class` varchar(200) NOT NULL,
  `13_class` varchar(200) NOT NULL,
  `14_class` varchar(200) NOT NULL,
  `15_class` varchar(200) NOT NULL,
  `16_class` varchar(200) NOT NULL,
  `17_class` varchar(200) NOT NULL,
  `18_class` varchar(200) NOT NULL,
  `19_class` varchar(200) NOT NULL,
  `20_class` varchar(200) NOT NULL,
  `21_class` varchar(200) NOT NULL,
  `22_class` varchar(200) NOT NULL,
  `23_class` varchar(200) NOT NULL,
  `24_class` varchar(200) NOT NULL,
  `25_class` varchar(200) NOT NULL,
  `26_class` varchar(200) NOT NULL,
  `27_class` varchar(200) NOT NULL,
  `28_class` varchar(200) NOT NULL,
  `29_class` varchar(200) NOT NULL,
  `30_class` varchar(20) NOT NULL,
  `31_class` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `student_id`, `company_id`, `month`, `notes`, `01_in_time`, `03_in_time`, `02_in_time`, `04_in_time`, `05_in_time`, `06_in_time`, `07_in_time`, `08_in_time`, `09_in_time`, `10_in_time`, `11_in_time`, `12_in_time`, `13_in_time`, `14_in_time`, `15_in_time`, `16_in_time`, `17_in_time`, `18_in_time`, `19_in_time`, `20_in_time`, `21_in_time`, `22_in_time`, `23_in_time`, `24_in_time`, `25_in_time`, `26_in_time`, `27_in_time`, `28_in_time`, `29_in_time`, `30_in_time`, `31_in_time`, `01_out_time`, `02_out_time`, `03_out_time`, `04_out_time`, `05_out_time`, `06_out_time`, `07_out_time`, `08_out_time`, `09_out_time`, `10_out_time`, `11_out_time`, `12_out_time`, `13_out_time`, `14_out_time`, `15_out_time`, `16_out_time`, `17_out_time`, `18_out_time`, `19_out_time`, `20_out_time`, `21_out_time`, `22_out_time`, `23_out_time`, `24_out_time`, `25_out_time`, `26_out_time`, `27_out_time`, `28_out_time`, `29_out_time`, `30_out_time`, `31_out_time`, `01_status`, `02_status`, `03_status`, `04_status`, `05_status`, `06_status`, `07_status`, `08_status`, `09_status`, `10_status`, `11_status`, `12_status`, `13_status`, `14_status`, `15_status`, `16_status`, `17_status`, `18_status`, `19_status`, `20_status`, `21_status`, `22_status`, `23_status`, `24_status`, `25_status`, `26_status`, `27_status`, `28_status`, `29_status`, `30_status`, `31_status`, `01_class`, `02_class`, `03_class`, `04_class`, `05_class`, `06_class`, `07_class`, `08_class`, `09_class`, `10_class`, `11_class`, `12_class`, `13_class`, `14_class`, `15_class`, `16_class`, `17_class`, `18_class`, `19_class`, `20_class`, `21_class`, `22_class`, `23_class`, `24_class`, `25_class`, `26_class`, `27_class`, `28_class`, `29_class`, `30_class`, `31_class`) VALUES
(1, 'CI404558bc074d3369f', 'C58bc06cdc430f', '2017-03', '', '18:51', '', '', '', '', '', '17:18', '17:21', '16:59', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12:35', '12:31', '18:51', '', '', '', '', '', '', '17:21', '18:11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12:36', '12:31', 'present', '', '', '', '', '', 'absent', 'present', 'present', 'present', '', '', '', '', '', '', '', '', '', '', '', 'sick', '', '', '', '', '', '', '', 'present', 'present', 'SHE30f58c19558262a7', '', '', '', '', '', 'SHE30f58bc0736a5d40', 'SHE30f58bc0736a5d40', 'SHE30f58c19558262a7', '', '', '', '', '', '', '', '', '', '', '', '', 'SHE30f58bc0736a5d40', '', '', '', '', '', '', '', 'SHE30f58bc06fcad019', 'SHE30f58bc06fcad019'),
(2, 'CI263258bd01180dbf5', 'C58bc06cdc430f', '2017-03', '', '', '', '', '', '', '', '17:17', '17:21', '13:59', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12:34', '', '', '', '', '', '', '17:18', '18:00', '16:59', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12:34', '', '', '', '', '', '', 'present', 'present', 'present', '', '', '', '', '', '', '', '', '', '', '', '', 'present', '', '', '', '', '', '', '', '', 'present', '', '', '', '', '', '', 'SHE30f58bc0736a5d40', 'SHE30f58bc0736a5d40', 'SHE30f58bc0736a5d40', '', '', '', '', '', '', '', '', '', '', '', '', 'SHE30f58bc0736a5d40', '', '', '', '', '', '', '', '', 'SHE30f58bc0736a5d40'),
(3, '', '', '2017-03', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'CI404558bc074d3369f', 'C58bc06cdc430f', '2017-04', '', '18:49', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18:49', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SHE30f58c19558262a7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'CI552058dfe988e54b1', 'C58bc06cdc430f', '2017-04', '', '18:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '21:30', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SHE30f58c19558262a7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'CI404558bc074d3369f', 'C58bc06cdc430f', '2017-06', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SHE30f58c19558262a7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'CI552058dfe988e54b1', 'C58bc06cdc430f', '2017-06', '', '', '', '', '', '', '', '', '', '12:17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '13:42', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SHE30f58c19558262a7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 'CI263258bd01180dbf5', 'C58bc06cdc430f', '2017-06', '', '', '', '', '', '', '', '', '', '14:17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16:42', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SHE30f58c19558262a7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'CI404558bc074d3369f', 'C58bc06cdc430f', '2017-08', '', '', '', '', '', '', '', '', '11:38', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SHE30f58c19558262a7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'CI552058dfe988e54b1', 'C58bc06cdc430f', '2017-08', '', '', '', '', '', '', '', '', '11:37', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '11:38', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'absent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SHE30f58c19558262a7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'CI263258bd01180dbf5', 'C58bc06cdc430f', '2017-08', '', '', '', '', '', '', '', '', '11:37', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12:38', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'present', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SHE30f58c19558262a7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_accounts`
--

CREATE TABLE `sys_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_person` varchar(200) DEFAULT NULL,
  `contact_phone` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ib_url` varchar(200) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `notes` text,
  `sorder` int(11) DEFAULT NULL,
  `e` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_activity`
--

CREATE TABLE `sys_activity` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `msg` text NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT '',
  `stime` varchar(50) NOT NULL,
  `sdate` date NOT NULL,
  `o` int(11) NOT NULL DEFAULT '0',
  `oname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_api`
--

CREATE TABLE `sys_api` (
  `id` int(11) NOT NULL,
  `label` text,
  `ip` text,
  `apikey` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_appconfig`
--

CREATE TABLE `sys_appconfig` (
  `id` int(11) NOT NULL,
  `setting` text NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_appconfig`
--

INSERT INTO `sys_appconfig` (`id`, `setting`, `value`) VALUES
(1, 'CompanyName', 'iBilling'),
(29, 'theme', 'ibilling'),
(37, 'currency_code', '$'),
(56, 'language', 'en'),
(57, 'show-logo', '1'),
(58, 'nstyle', 'dark'),
(63, 'dec_point', '.'),
(64, 'thousands_sep', ','),
(65, 'timezone', 'America/New_York'),
(66, 'country', 'United States'),
(67, 'country_code', 'US'),
(68, 'df', 'Y-m-d'),
(69, 'caddress', 'iBilling <br> 424 Grandview Avenue <br>Staten Island <br> NYC - 10301'),
(70, 'account_search', '1'),
(71, 'redirect_url', 'dashboard'),
(72, 'rtl', '0'),
(73, 'ckey', '0982995697'),
(74, 'networth_goal', '200000'),
(75, 'sysEmail', 'demo@example.com'),
(76, 'url_rewrite', '0'),
(77, 'build', '4600'),
(78, 'animate', '0'),
(79, 'pdf_font', 'dejavusanscondensed'),
(80, 'accounting', '1'),
(81, 'invoicing', '1'),
(82, 'quotes', '1'),
(83, 'client_dashboard', '1'),
(84, 'contact_set_view_mode', 'search'),
(85, 'invoice_terms', ''),
(86, 'console_notify_invoice_created', '0'),
(87, 'i_driver', 'v2'),
(88, 'purchase_code', '794e3f64-1061-45e1-bac5-d35574b7de05'),
(89, 'c_cache', '4518f4ea543b9b1ccb051f265824a7ef'),
(90, 'mininav', '0'),
(91, 'hide_footer', '1'),
(92, 'design', 'default'),
(93, 'default_landing_page', 'login'),
(94, 'recaptcha', '0'),
(95, 'recaptcha_sitekey', ''),
(96, 'recaptcha_secretkey', ''),
(97, 'home_currency', 'USD'),
(98, 'currency_decimal_digits', 'true'),
(99, 'currency_symbol_position', 'p'),
(100, 'thousand_separator_placement', '3'),
(101, 'dashboard', 'canvas'),
(102, 'header_scripts', ''),
(103, 'footer_scripts', ''),
(104, 'ib_key', 'vLBLfhA6DNi1R2MFHO8IvFWr4Cn9665eHUF+L/sqAKM='),
(105, 'ib_s', 'PNhjeZ0sOFF3JNfzT2mLxvNNKPeh6ltqpE+G5LVSDSvgp/z79Sco7W4tJEoXYIl8'),
(106, 'ib_u_t', '1488218405'),
(107, 'ib_u_a', '0'),
(108, 'momentLocale', 'en'),
(109, 'contentAnimation', 'animated fadeIn'),
(110, 'calendar', '1'),
(111, 'leads', '1'),
(112, 'tasks', '1'),
(113, 'orders', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sys_cats`
--

CREATE TABLE `sys_cats` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('Income','Expense') NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_cats`
--

INSERT INTO `sys_cats` (`id`, `name`, `type`, `sorder`) VALUES
(14, 'Advertising', 'Expense', 1),
(15, 'Bank and Credit Card Interest', 'Expense', 23),
(16, 'Car and Truck', 'Expense', 24),
(17, 'Commissions and Fees', 'Expense', 25),
(18, 'Contract Labor', 'Expense', 26),
(19, 'Contributions', 'Expense', 27),
(20, 'Cost of Goods Sold', 'Expense', 28),
(21, 'Credit Card Interest', 'Expense', 29),
(22, 'Depreciation', 'Expense', 31),
(23, 'Dividend Payments', 'Expense', 32),
(24, 'Employee Benefit Programs', 'Expense', 33),
(25, 'Entertainment', 'Expense', 34),
(26, 'Gift', 'Expense', 35),
(27, 'Insurance', 'Expense', 36),
(28, 'Legal, Accountant &amp; Other Professional Services', 'Expense', 37),
(29, 'Meals', 'Expense', 38),
(30, 'Mortgage Interest', 'Expense', 39),
(31, 'Non-Deductible Expense', 'Expense', 40),
(33, 'Other Business Property Leasing', 'Expense', 22),
(34, 'Owner Draws', 'Expense', 21),
(35, 'Payroll Taxes', 'Expense', 8),
(37, 'Phone', 'Expense', 9),
(38, 'Postage', 'Expense', 10),
(39, 'Rent', 'Expense', 12),
(40, 'Repairs &amp; Maintenance', 'Expense', 11),
(41, 'Supplies', 'Expense', 13),
(42, 'Taxes and Licenses', 'Expense', 14),
(43, 'Transfer Funds', 'Expense', 15),
(44, 'Travel', 'Expense', 16),
(45, 'Utilities', 'Expense', 17),
(46, 'Vehicle, Machinery &amp; Equipment Rental or Leasing', 'Expense', 18),
(47, 'Wages', 'Expense', 19),
(48, 'Regular Income', 'Income', 1),
(49, 'Owner Contribution', 'Income', 12),
(50, 'Interest Income', 'Income', 11),
(51, 'Expense Refund', 'Income', 10),
(52, 'Other Income', 'Income', 9),
(53, 'Salary', 'Income', 8),
(54, 'Equities', 'Income', 7),
(55, 'Rent &amp; Royalties', 'Income', 6),
(56, 'Home equity', 'Income', 5),
(57, 'Part Time Work', 'Income', 3),
(58, 'Account Transfer', 'Income', 4),
(60, 'Health Care', 'Expense', 20),
(63, 'Loans', 'Expense', 30),
(64, 'Selling Software', 'Income', 2),
(65, 'Software Customization', 'Income', 13),
(66, 'Envato', 'Income', 0),
(67, 'Salary', 'Expense', 7),
(68, 'Paypal', 'Expense', 6),
(69, 'Office Equipment', 'Expense', 5),
(70, 'Staff Entertaining', 'Expense', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sys_companies`
--

CREATE TABLE `sys_companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `logo_url` varchar(200) DEFAULT NULL,
  `logo_path` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `emails` text,
  `phones` text,
  `tags` text,
  `description` text,
  `notes` text,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `ratings` varchar(50) DEFAULT NULL,
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `c1` text,
  `c2` text,
  `c3` text,
  `c4` text,
  `c5` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_currencies`
--

CREATE TABLE `sys_currencies` (
  `id` int(11) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `iso_code` varchar(10) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `rate` decimal(11,4) NOT NULL DEFAULT '1.0000',
  `prefix` varchar(20) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `decimal_separator` varchar(10) DEFAULT NULL,
  `thousand_separator` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `available_in` text,
  `isdefault` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_currencies`
--

INSERT INTO `sys_currencies` (`id`, `cname`, `iso_code`, `symbol`, `rate`, `prefix`, `suffix`, `format`, `decimal_separator`, `thousand_separator`, `created_at`, `created_by`, `updated_at`, `updated_by`, `available_in`, `isdefault`, `trash`, `archived`) VALUES
(1, 'USD', 'USD', '$', '1.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_documents`
--

CREATE TABLE `sys_documents` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `file_o_name` varchar(200) DEFAULT NULL,
  `file_r_name` varchar(200) DEFAULT NULL,
  `file_mime_type` varchar(200) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `file_dl_token` varchar(200) DEFAULT NULL,
  `file_owner` int(11) NOT NULL DEFAULT '0',
  `version` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `sha1` varchar(40) DEFAULT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `contacts` text,
  `deals` text,
  `leads` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `customer_can_download` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_emailconfig`
--

CREATE TABLE `sys_emailconfig` (
  `id` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `apikey` varchar(200) NOT NULL,
  `port` varchar(10) NOT NULL,
  `secure` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_emailconfig`
--

INSERT INTO `sys_emailconfig` (`id`, `method`, `host`, `username`, `password`, `apikey`, `port`, `secure`) VALUES
(1, 'phpmail', 'smtp.gmail.com', 'you@gmail.com', '123456', '', '587', 'tls');

-- --------------------------------------------------------

--
-- Table structure for table `sys_email_logs`
--

CREATE TABLE `sys_email_logs` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `iid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_email_templates`
--

CREATE TABLE `sys_email_templates` (
  `id` int(11) NOT NULL,
  `tplname` varchar(128) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `send` varchar(50) DEFAULT 'Active',
  `core` enum('Yes','No') DEFAULT 'Yes',
  `hidden` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_email_templates`
--

INSERT INTO `sys_email_templates` (`id`, `tplname`, `language_id`, `subject`, `message`, `send`, `core`, `hidden`) VALUES
(3, 'Invoice:Invoice Created', 1, '{{business_name}} Invoice', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Greetings,</div>	<div style="padding:5px">		This email serves as your official invoice from <strong>{{business_name}}. </strong>	</div><div style="padding:10px 5px">    Invoice URL: <a href="{{invoice_url}}" target="_blank">{{invoice_url}}</a><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{app_url}}"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">If you have any questions or need assistance, please don''t hesitate to contact us.</span><br></div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(7, 'Admin:Password Change Request', 1, '{{business_name}} password change request', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Hi {{name}},</div>	<div style="padding:5px">		This is to confirm that we have received a Forgot Password request for your Account Username - {{username}} <br>From the IP Address - {{ip_address}}	</div>	<div style="padding:5px">		Click this linke to reset your password- <br><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{password_reset_link}}">{{password_reset_link}}</a>	</div><div style="padding:5px">Please note: until your password has been changed, your current password will remain valid. The Forgot Password Link will be available for a limited time only.</div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(10, 'Admin:New Password', 1, '{{business_name}} New Password for Admin', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3">\n\n<div style="padding:5px;font-size:11pt;font-weight:bold">\n   Hello {{name}}\n</div>\n\n\n	<div style="padding:5px">\n		Here is your new password for <strong>{{business_name}}. </strong>\n	</div>\n\n	\n<div style="padding:10px 5px">\n    Log in URL: <a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{login_url}}">{{login_url}}</a><br>Username: {{username}}<br>Password: {{password}}</div>\n\n<div style="padding:5px">For security reason, Please change your password after login. </div>\n\n<div style="padding:0px 5px">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n</div>\n\n</div>', 'Yes', 'Yes', 0),
(12, 'Invoice:Invoice Payment Reminder', 1, '{{business_name}} Invoice Payment Reminder', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Greetings,</div>	<div style="padding:5px">		This is a billing reminder that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is due on {{invoice_due_date}}. 	</div><div style="padding:10px 5px">    Invoice URL: <a href="{{invoice_url}}" target="_blank">{{invoice_url}}</a><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{app_url}}"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">If you have any questions or need assistance, please don''t hesitate to contact us.</span><br></div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(13, 'Invoice:Invoice Overdue Notice', 1, '{{business_name}} Invoice Overdue Notice', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Greetings,</div>	<div style="padding:5px">		This is the notice that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is now overdue.	</div>	<div style="padding:10px 5px">    Invoice URL: <a href="{{invoice_url}}" target="_blank">{{invoice_url}}</a><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{app_url}}"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">If you have any questions or need assistance, please don''t hesitate to contact us.</span><br></div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(14, 'Invoice:Invoice Payment Confirmation', 1, '{{business_name}} Invoice Payment Confirmation', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3">\n\n<div style="padding:5px;font-size:11pt;font-weight:bold">\n   Greetings,\n</div>\n\n\n\n	<div style="padding:5px">\n		This is a payment receipt for Invoice {{invoice_id}} sent on {{invoice_date}}.\n	</div>\n\n\n	<div style="padding:5px">\n		Login to your client Portal to view this invoice.\n	</div>\n\n\n<div style="padding:10px 5px">\n    Invoice URL: <a href="{{invoice_url}}" target="_blank">{{invoice_url}}</a><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{app_url}}"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div>\n\n\n<div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">If you have any questions or need assistance, please don''t hesitate to contact us.</span><br></div>\n\n\n<div style="padding:0px 5px">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n\n</div>\n\n\n</div>', 'Yes', 'Yes', 0),
(15, 'Invoice:Invoice Refund Confirmation', 1, '{{business_name}} Invoice Refund Confirmation', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,''droid sans'',''lucida sans'',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Greetings,</div>	<div style="padding:5px">		This is confirmation that a refund has been processed for Invoice {{invoice_id}} sent on {{invoice_date}}.	</div><div style="padding:10px 5px">    Invoice URL: <a href="{{invoice_url}}" target="_blank">{{invoice_url}}</a><a target="_blank" style="color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none" href="{{app_url}}"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">If you have any questions or need assistance, please don''t hesitate to contact us.</span><br></div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(16, 'Quote:Quote Created', 1, '{{quote_subject}}', '<div style="line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3"><div style="padding:5px;font-size:11pt;font-weight:bold">   Greetings,</div>	<div style="padding:5px">		Dear {{contact_name}},&nbsp;<br> Here is the quote you requested for.  The quote is valid until {{valid_until}}.	</div><div style="padding:10px 5px">    Quote Unique URL: <a href="{{quote_url}}" target="_blank">{{quote_url}}</a><br></div><div style="padding:5px"><span style="font-size: 13.3333330154419px; line-height: 21.3333320617676px;">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span><br></div><div style="padding:0px 5px">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(17, 'Client:Client Signup Email', 1, 'Your {{business_name}} Login Info', '<p>Dear {{client_name}},</p>\n<p>Welcome to {{business_name}}.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: {{client_login_url}} <br />Email Address: {{client_email}}<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>{{business_name}} Team</p>', 'Yes', 'Yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_events`
--

CREATE TABLE `sys_events` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `contacts` text,
  `deals` text,
  `owner` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `etype` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `allday` int(1) NOT NULL DEFAULT '0',
  `notification` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoiceitems`
--

CREATE TABLE `sys_invoiceitems` (
  `id` int(10) NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `taxed` int(1) NOT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(14,2) NOT NULL DEFAULT '0.00',
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_invoiceitems`
--

INSERT INTO `sys_invoiceitems` (`id`, `invoiceid`, `userid`, `type`, `relid`, `itemcode`, `description`, `qty`, `amount`, `taxed`, `taxamount`, `total`, `duedate`, `paymentmethod`, `notes`) VALUES
(1190, 1000, 1000, '', 0, '', 'jhwqdouh', '0', '1.00', 0, '0.00', '0.00', '2017-02-24', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoices`
--

CREATE TABLE `sys_invoices` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `account` varchar(200) NOT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `taxname` varchar(100) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL DEFAULT '0.00',
  `taxrate` decimal(10,2) NOT NULL,
  `taxrate2` decimal(10,2) NOT NULL,
  `status` text NOT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT '0',
  `ename` varchar(200) NOT NULL DEFAULT '',
  `vid` int(11) NOT NULL DEFAULT '0',
  `currency` int(11) NOT NULL DEFAULT '0',
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT '1.0000',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_ends` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `last_overdue_reminder` date DEFAULT NULL,
  `allowed_payment_methods` text,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(50) DEFAULT NULL,
  `billing_country` varchar(100) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` varchar(100) DEFAULT NULL,
  `q_hide` tinyint(1) NOT NULL DEFAULT '0',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_invoices`
--

INSERT INTO `sys_invoices` (`id`, `userid`, `account`, `cn`, `invoicenum`, `date`, `duedate`, `datepaid`, `subtotal`, `discount_type`, `discount_value`, `discount`, `credit`, `taxname`, `tax`, `tax2`, `total`, `taxrate`, `taxrate2`, `status`, `paymentmethod`, `notes`, `vtoken`, `ptoken`, `r`, `nd`, `eid`, `ename`, `vid`, `currency`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `recurring`, `recurring_ends`, `last_recurring_date`, `source`, `sale_agent`, `last_overdue_reminder`, `allowed_payment_methods`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `q_hide`, `show_quantity_as`, `pid`) VALUES
(1000, 1000, 'sajeevan', '', '', '2017-02-24', '2017-02-24', '2017-02-24 01:17:05', '0.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', 'Unpaid', '', '', '9499585314', '7488414526', '0', '2017-02-24', 0, '', 0, 1, '$', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_items`
--

CREATE TABLE `sys_items` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `unit` varchar(100) NOT NULL DEFAULT '',
  `sales_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `item_number` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` enum('Service','Product') NOT NULL,
  `track_inventroy` enum('Yes','No') NOT NULL DEFAULT 'No',
  `negative_stock` enum('Yes','No') NOT NULL DEFAULT 'No',
  `available` int(11) NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added` date DEFAULT NULL,
  `last_sold` date DEFAULT NULL,
  `e` mediumtext NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `gname` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `expire_days` int(11) NOT NULL DEFAULT '0',
  `image` text,
  `flag` int(1) NOT NULL DEFAULT '0',
  `is_service` int(1) NOT NULL DEFAULT '0',
  `commission_percent` decimal(16,2) NOT NULL DEFAULT '0.00',
  `commission_percent_type` varchar(100) DEFAULT NULL,
  `commission_fixed` decimal(16,2) NOT NULL DEFAULT '0.00',
  `trash` int(1) NOT NULL DEFAULT '0',
  `payterm` varchar(200) DEFAULT NULL,
  `cost_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `unit_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `promo_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `setup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `onetime` decimal(16,2) NOT NULL DEFAULT '0.00',
  `monthly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `monthlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quarterly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quarterlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `halfyearly` decimal(16,2) NOT NULL DEFAULT '0.00',
  `halfyearlysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `annually` decimal(16,2) NOT NULL DEFAULT '0.00',
  `annuallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `biennially` decimal(16,2) NOT NULL DEFAULT '0.00',
  `bienniallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `triennially` decimal(16,2) NOT NULL DEFAULT '0.00',
  `trienniallysetup` decimal(16,2) NOT NULL DEFAULT '0.00',
  `has_domain` varchar(100) DEFAULT NULL,
  `free_domain` varchar(100) DEFAULT NULL,
  `email_rel` int(11) NOT NULL DEFAULT '0',
  `tags` text,
  `c1` text,
  `c2` text,
  `c3` text,
  `c4` text,
  `c5` text,
  `c6` text,
  `c7` text,
  `c8` text,
  `c9` text,
  `c10` text,
  `c11` text,
  `c12` text,
  `c13` text,
  `c14` text,
  `c15` text,
  `c16` text,
  `c17` text,
  `c18` text,
  `c19` text,
  `c20` text,
  `c21` text,
  `c22` text,
  `c23` text,
  `c24` text,
  `c25` text,
  `c26` text,
  `c27` text,
  `c28` text,
  `c29` text,
  `c30` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_leads`
--

CREATE TABLE `sys_leads` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `sorder` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT '0',
  `ratings` varchar(50) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `lost` int(1) NOT NULL DEFAULT '0',
  `junk` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_logs`
--

CREATE TABLE `sys_logs` (
  `id` int(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_logs`
--

INSERT INTO `sys_logs` (`id`, `date`, `type`, `description`, `userid`, `ip`) VALUES
(1, '2016-11-15 11:30:45', 'System', 'Build Updated to: 4600\r\nDocuments Table Created\r\nOrders Table Created\r\nsys_items table altered\r\nUpdate Completed!\r\n', 0, '::1'),
(2, '2017-02-24 00:34:43', 'Admin', 'Login Successful sajisajeevan@live.in', 1, '127.0.0.1'),
(3, '2017-02-24 01:08:57', 'Admin', 'Login Successful sajisajeevan@live.in', 1, '127.0.0.1'),
(4, '2017-02-24 01:16:46', 'Admin', 'New Contact Added sajeevan [CID: 1000]', 1, '127.0.0.1'),
(5, '2017-02-24 01:57:45', 'Admin', 'Login Successful sajisajeevan@live.in', 1, '127.0.0.1'),
(6, '2017-02-24 01:58:29', 'Admin', 'New Contact Added sajeevan [CID: 1001]', 1, '127.0.0.1'),
(7, '2017-02-24 02:14:01', 'Portal Registration', 'New Contact Added sajeevan [CID: 1002]', 0, '127.0.0.1'),
(8, '2017-02-24 02:15:08', 'Admin', 'Login Successful sajisajeevan@live.in', 1, '127.0.0.1'),
(9, '2017-02-24 03:34:25', 'Admin', 'Login Successful sajisajeevan@live.in', 1, '127.0.0.1'),
(10, '2017-02-26 13:00:00', 'Admin', 'Login Successful sajisajeevan@live.in', 1, '127.0.0.1'),
(11, '2017-02-26 14:06:45', 'Admin', 'Login Successful sajisajeevan@live.in', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `sys_orders`
--

CREATE TABLE `sys_orders` (
  `id` int(11) NOT NULL,
  `ordernum` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `sales_person` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_expiry` date DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `stitle` varchar(200) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `recurring` decimal(16,2) NOT NULL DEFAULT '0.00',
  `setup_fee` decimal(16,2) NOT NULL DEFAULT '0.00',
  `billing_cycle` text,
  `addon_ids` text,
  `related_orders` text,
  `description` text,
  `upgrade_ids` text,
  `xdata` text,
  `xsecret` varchar(100) DEFAULT NULL,
  `promo_code` text,
  `promo_type` text,
  `promo_value` text,
  `payment_method` text,
  `ipaddress` text,
  `fraud_module` text,
  `fraud_output` text,
  `activation_subject` text,
  `activation_message` text,
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `c1` text,
  `c2` text,
  `c3` text,
  `c4` text,
  `c5` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_permissions`
--

CREATE TABLE `sys_permissions` (
  `id` int(11) NOT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `shortname` varchar(200) DEFAULT NULL,
  `available` int(1) NOT NULL DEFAULT '0',
  `core` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_permissions`
--

INSERT INTO `sys_permissions` (`id`, `pname`, `shortname`, `available`, `core`) VALUES
(1, 'Customers', 'customers', 0, 1),
(2, 'Companies', 'companies', 0, 1),
(3, 'Transactions', 'transactions', 0, 1),
(4, 'Sales', 'sales', 0, 1),
(5, 'Bank & Cash', 'bank_n_cash', 0, 1),
(6, 'Products & Services', 'products_n_services', 0, 1),
(7, 'Reports', 'reports', 0, 1),
(8, 'Utilities', 'utilities', 0, 1),
(9, 'Appearance', 'appearance', 0, 1),
(10, 'Plugins', 'plugins', 0, 1),
(11, 'Calendar', 'calendar', 0, 1),
(12, 'Leads', 'leads', 0, 1),
(13, 'Tasks', 'tasks', 0, 1),
(14, 'Contracts', 'contracts', 0, 1),
(15, 'Orders', 'orders', 0, 1),
(16, 'Settings', 'settings', 0, 1),
(17, 'Documents', 'documents', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_pg`
--

CREATE TABLE `sys_pg` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `settings` text NOT NULL,
  `value` text NOT NULL,
  `processor` text NOT NULL,
  `ins` text NOT NULL,
  `c1` text NOT NULL,
  `c2` text NOT NULL,
  `c3` text NOT NULL,
  `c4` text NOT NULL,
  `c5` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `sorder` int(2) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `mode` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_pg`
--

INSERT INTO `sys_pg` (`id`, `name`, `settings`, `value`, `processor`, `ins`, `c1`, `c2`, `c3`, `c4`, `c5`, `status`, `sorder`, `logo`, `mode`) VALUES
(1, 'Paypal', 'Paypal Email', 'demo@example.com', 'paypal', 'Invoices', 'USD', '1', '', '', '', 'Active', 1, NULL, NULL),
(2, 'Stripe', 'API Key', 'sk_test_ARblMczqDw61NusMMs7o1RVK', 'stripe', '', 'USD', '', '', '', '', 'Active', 2, NULL, NULL),
(3, 'Bank / Cash', 'Instructions', 'Make a Payment to Our Bank Account <br>Bank Name: City Bank <br>Account Name: Sadia Sharmin <br>Account Number: 1505XXXXXXXX <br>', 'manualpayment', '', '', '', '', '', '', 'Active', 3, NULL, NULL),
(4, 'Authorize.net', 'API_LOGIN_ID', 'Insert API Login ID here', 'authorize_net', '', 'Insert Transaction Key Here', '', '', '', '', 'Active', 4, NULL, NULL),
(5, 'Braintree', 'Merchant ID', 'your merchant id', 'braintree', '', 'your public key', 'your private key', 'bank account', 'sandbox', '', 'Inactive', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_pl`
--

CREATE TABLE `sys_pl` (
  `id` int(11) NOT NULL,
  `c` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `sorder` int(11) NOT NULL DEFAULT '0',
  `build` int(10) DEFAULT '1',
  `c1` text,
  `c2` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_pmethods`
--

CREATE TABLE `sys_pmethods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_pmethods`
--

INSERT INTO `sys_pmethods` (`id`, `name`, `sorder`) VALUES
(1, 'Cash', 1),
(2, 'Check', 4),
(3, 'Credit Card', 5),
(4, 'Debit', 6),
(5, 'Electronic Transfer', 7),
(9, 'Paypal', 2),
(10, 'ATM Withdrawals', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sys_quoteitems`
--

CREATE TABLE `sys_quoteitems` (
  `id` int(10) NOT NULL,
  `qid` int(10) NOT NULL,
  `itemcode` text NOT NULL,
  `description` text NOT NULL,
  `qty` text NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `taxable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_quotes`
--

CREATE TABLE `sys_quotes` (
  `id` int(10) NOT NULL,
  `subject` text NOT NULL,
  `stage` enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') NOT NULL,
  `validuntil` date NOT NULL,
  `userid` int(10) NOT NULL,
  `invoicenum` text NOT NULL,
  `cn` text NOT NULL,
  `account` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `companyname` text NOT NULL,
  `email` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `phonenumber` text NOT NULL,
  `currency` int(10) NOT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` text NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `taxname` text NOT NULL,
  `taxrate` decimal(10,2) NOT NULL,
  `tax1` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `proposal` text NOT NULL,
  `customernotes` text NOT NULL,
  `adminnotes` text NOT NULL,
  `datecreated` date NOT NULL,
  `lastmodified` date NOT NULL,
  `datesent` date NOT NULL,
  `dateaccepted` date NOT NULL,
  `vtoken` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_roles`
--

CREATE TABLE `sys_roles` (
  `id` int(11) NOT NULL,
  `rname` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_roles`
--

INSERT INTO `sys_roles` (`id`, `rname`) VALUES
(1, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `sys_sales`
--

CREATE TABLE `sys_sales` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `oname` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `term` varchar(100) NOT NULL,
  `milestone` varchar(100) NOT NULL,
  `p` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `open` date NOT NULL,
  `close` date NOT NULL,
  `status` enum('New','In Progress','Won','Lost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_schedule`
--

CREATE TABLE `sys_schedule` (
  `id` int(11) NOT NULL,
  `cname` mediumtext NOT NULL,
  `val` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_schedule`
--

INSERT INTO `sys_schedule` (`id`, `cname`, `val`) VALUES
(1, 'accounting_snapshot', 'Active'),
(2, 'recurring_invoice', 'Active'),
(3, 'notify', 'Active'),
(4, 'notifyemail', 'demo@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `sys_schedulelogs`
--

CREATE TABLE `sys_schedulelogs` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `logs` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_schedulelogs`
--

INSERT INTO `sys_schedulelogs` (`id`, `date`, `logs`) VALUES
(4, '2015-03-14', '2015-03-14 20:17:15 : Schedule Jobs Started....... <br>2015-03-14 20:17:15 : Creating Accounting Snapshot <br>2015-03-14 20:17:15 : Accounting Snapshot created! <br>=============== Accounting Snaphsot ==================== <br>Accounting Snaphsot - Date: 2015-03-13<br>Total Income: Tk. 0.00<br>Total Expense: Tk. 0.00<br>================================================== <br>2015-03-14 20:17:15 : Creating Recurring Invoice <br>2015-03-14 20:17:15 : 1 Invoice created! <br>================================================== <br>');

-- --------------------------------------------------------

--
-- Table structure for table `sys_staffpermissions`
--

CREATE TABLE `sys_staffpermissions` (
  `id` int(11) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `can_view` int(1) NOT NULL DEFAULT '0',
  `can_edit` int(1) NOT NULL DEFAULT '0',
  `can_create` int(1) NOT NULL DEFAULT '0',
  `can_delete` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_tags`
--

CREATE TABLE `sys_tags` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_tasks`
--

CREATE TABLE `sys_tasks` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `status` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `oid` int(11) NOT NULL DEFAULT '0',
  `iid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0',
  `eid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `subscribers` text,
  `assigned_to` text,
  `priority` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `vtoken` varchar(50) DEFAULT NULL,
  `ptoken` varchar(50) DEFAULT NULL,
  `started` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `stime` varchar(50) DEFAULT NULL,
  `dtime` varchar(50) DEFAULT NULL,
  `time_spent` varchar(50) DEFAULT NULL,
  `date_finished` date DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT '0',
  `finished` int(1) NOT NULL DEFAULT '0',
  `ratings` varchar(50) DEFAULT NULL,
  `rel_type` varchar(50) DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `is_public` int(1) NOT NULL DEFAULT '0',
  `billable` int(1) NOT NULL DEFAULT '0',
  `billed` int(1) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(14,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT NULL,
  `progress` int(3) DEFAULT NULL,
  `visible_to_client` int(1) NOT NULL DEFAULT '0',
  `notification` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_tax`
--

CREATE TABLE `sys_tax` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `aid` int(11) NOT NULL,
  `bal` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tax`
--

INSERT INTO `sys_tax` (`id`, `name`, `state`, `country`, `rate`, `aid`, `bal`) VALUES
(1, 'Sales Tax', '', '', '1.50', 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `sys_transactions`
--

CREATE TABLE `sys_transactions` (
  `id` int(11) NOT NULL,
  `account` varchar(200) NOT NULL,
  `type` enum('Income','Expense','Transfer') NOT NULL,
  `category` varchar(200) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `payer` varchar(200) NOT NULL,
  `payee` varchar(200) NOT NULL,
  `payerid` int(11) NOT NULL DEFAULT '0',
  `payeeid` int(11) NOT NULL DEFAULT '0',
  `method` varchar(200) NOT NULL,
  `ref` varchar(200) NOT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Cleared',
  `description` mediumtext NOT NULL,
  `tags` mediumtext NOT NULL,
  `tax` decimal(18,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `dr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `cr` decimal(18,2) NOT NULL DEFAULT '0.00',
  `bal` decimal(18,2) NOT NULL DEFAULT '0.00',
  `iid` int(11) NOT NULL DEFAULT '0',
  `currency` int(11) NOT NULL DEFAULT '0',
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT '1.0000',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `vid` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `attachments` text,
  `source` varchar(200) DEFAULT NULL,
  `rid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `archived` int(1) NOT NULL DEFAULT '0',
  `trash` int(1) NOT NULL DEFAULT '0',
  `flag` int(1) NOT NULL DEFAULT '0',
  `c1` text,
  `c2` text,
  `c3` text,
  `c4` text,
  `c5` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_users`
--

CREATE TABLE `sys_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `fullname` varchar(45) NOT NULL DEFAULT '',
  `phonenumber` varchar(20) DEFAULT NULL,
  `password` mediumtext NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'Full Access',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  `otp` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin` mediumtext NOT NULL,
  `img` text NOT NULL,
  `api` enum('Yes','No') DEFAULT 'No',
  `pwresetkey` varchar(100) NOT NULL,
  `keyexpire` varchar(100) NOT NULL,
  `roleid` int(11) NOT NULL DEFAULT '0',
  `role` varchar(200) DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `autologin` varchar(200) DEFAULT NULL,
  `at` varchar(200) DEFAULT NULL,
  `landing_page` varchar(200) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `notes` text,
  `c1` text,
  `c2` text,
  `c3` text,
  `c4` text,
  `c5` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_users`
--

INSERT INTO `sys_users` (`id`, `username`, `fullname`, `phonenumber`, `password`, `user_type`, `status`, `last_login`, `email`, `creationdate`, `otp`, `pin_enabled`, `pin`, `img`, `api`, `pwresetkey`, `keyexpire`, `roleid`, `role`, `last_activity`, `autologin`, `at`, `landing_page`, `language`, `notes`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1, 'sajisajeevan@live.in', 'sajeevan', '', 'ibvO190uTu7Bc', 'Admin', 'Active', '2017-02-26 14:06:44', '', '2014-10-20 01:43:07', 'No', 'No', '$1$ZW/.uF5.$.rwCeLiguoBzYzf3waOnY1', '', 'No', '', '0', 0, NULL, NULL, 'i2wgndz163lvreitq8ts1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE `vacation` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vacation` varchar(200) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vacation`
--

INSERT INTO `vacation` (`id`, `child_id`, `start_date`, `end_date`, `create_date`, `vacation`, `discount`, `total_days`) VALUES
(1, '', '2017-04-01', '2017-04-19', '2017-04-08 05:44:55', 'Submit', 0, 0),
(2, 'CI263258bd01180dbf5', '2017-04-01', '2017-04-19', '2017-04-08 05:45:31', 'Submit', 0, 0),
(3, 'CI263258bd01180dbf5', '2017-04-01', '2017-04-19', '2017-04-08 05:52:48', 'gamil', 0, 0),
(4, 'CI263258bd01180dbf5', '2017-04-04', '2017-04-26', '2017-04-13 12:53:55', 'wdisjaiop', 0, 0),
(5, 'CI263258bd01180dbf5', '2017-04-12', '2017-04-27', '2017-04-13 17:18:59', 'jhsd', 0, 0),
(6, 'CI404558bc074d3369f', '2017-07-31', '2017-08-05', '2017-07-31 10:58:47', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `waitlist`
--

CREATE TABLE `waitlist` (
  `id` int(11) NOT NULL,
  `child_id` varchar(200) NOT NULL,
  `class_id` varchar(200) NOT NULL,
  `shedule_method` varchar(45) NOT NULL,
  `shedule_id` varchar(200) NOT NULL,
  `tuition` int(30) NOT NULL,
  `tuition_interval` varchar(45) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `discount_method` varchar(45) NOT NULL,
  `recurring_fee` varchar(45) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_invoice_create_date` date DEFAULT NULL,
  `enrolment_id` varchar(200) NOT NULL,
  `start_date` varchar(45) NOT NULL,
  `wait_notes` varchar(100) NOT NULL,
  `created_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `waitlist`
--

INSERT INTO `waitlist` (`id`, `child_id`, `class_id`, `shedule_method`, `shedule_id`, `tuition`, `tuition_interval`, `discount`, `discount_method`, `recurring_fee`, `end_date`, `last_update_date`, `last_invoice_create_date`, `enrolment_id`, `start_date`, `wait_notes`, `created_date`) VALUES
(1, 'CI263258bd01180dbf5', 'CLA30f58c1819dc7c4f', 'continues', 'SHE30f58c19558262a7', 200, 'monthly', 'NULL', 'NULL', '', '2017-04-30', '2017-04-17 05:31:17', NULL, 'ENRbf558f45325dff31', '2017-04-25', 'jsafjk', '2017-04-17'),
(3, 'CI404558bc074d3369f', 'CLA30f58c1819dc7c4f', '', '', 0, '', 'NULL', 'NULL', '', '2017-05-17', '2017-05-19 08:10:39', NULL, 'ENR69f591ea87f273e9', '2017-05-23', 'bjkhjl', '2017-05-19'),
(7, 'CI404558bc074d3369f', 'CLA30f58c1819dc7c4f', '', '', 0, '', 'NULL', 'NULL', '', '2017-05-17', '2017-05-19 08:13:30', NULL, 'ENR69f591ea92a44abc', '2017-05-16', 'nlnk', '2017-05-19'),
(8, 'CI404558bc074d3369f', 'CLA30f58c1819dc7c4f', 'variable', 'SHE30f591edbcf4601f', 300, 'weekly', 'NULL', 'NULL', '', '2017-05-31', '2017-05-19 11:50:37', NULL, 'ENR69f591edc0d068ea', '2017-05-30', '', '2017-05-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_payment`
--
ALTER TABLE `account_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_camp`
--
ALTER TABLE `add_camp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `camp_id_UNIQUE` (`camp_id`),
  ADD KEY `camp_id` (`camp_id`);

--
-- Indexes for table `add_child`
--
ALTER TABLE `add_child`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `child_id_UNIQUE` (`child_id`),
  ADD KEY `family_id` (`family_id`),
  ADD KEY `company_id` (`child_id`);

--
-- Indexes for table `add_class`
--
ALTER TABLE `add_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_id_UNIQUE` (`class_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `add_staff`
--
ALTER TABLE `add_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_id_UNIQUE` (`staff_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `staff_status` (`staff_status`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `staff_name` (`last_name`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `position` (`position`);

--
-- Indexes for table `allergies`
--
ALTER TABLE `allergies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `epison` (`epison`),
  ADD KEY `allergy` (`allergy`);

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `camp_shedule`
--
ALTER TABLE `camp_shedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shedule_id_UNIQUE` (`shedule_id`),
  ADD KEY `camp_id` (`shedule_id`,`camp_id`),
  ADD KEY `camp_shedule_id` (`shedule_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_shedule`
--
ALTER TABLE `class_shedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shedule_id_UNIQUE` (`shedule_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `class_shedule_id` (`shedule_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id_UNIQUE` (`company_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credit_id` (`credit_id`);

--
-- Indexes for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customfields`
--
ALTER TABLE `crm_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_groups`
--
ALTER TABLE `crm_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_id_UNIQUE` (`discount_id`),
  ADD KEY `discount_id` (`discount_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `create_date` (`create_date`),
  ADD KEY `dr_name` (`dr_name`),
  ADD KEY `mobile` (`mobile`);

--
-- Indexes for table `enrolment`
--
ALTER TABLE `enrolment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enrolment_id_UNIQUE` (`enrolment_id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `payer_id` (`payer_id`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `class` (`class_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guardian_id_UNIQUE` (`guardian_id`),
  ADD KEY `guardian_id` (`guardian_id`),
  ADD KEY `primary_guardian` (`type`),
  ADD KEY `allow_pickup` (`pickup`),
  ADD KEY `mail_list` (`mail`),
  ADD KEY `payer` (`payer`),
  ADD KEY `cell` (`cell`);

--
-- Indexes for table `ib_doc_rel`
--
ALTER TABLE `ib_doc_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `immunization`
--
ALTER TABLE `immunization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_id_UNIQUE` (`invoice_id`),
  ADD KEY `i_payer_id` (`i_payer_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `medical_condition`
--
ALTER TABLE `medical_condition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `condition` (`condition`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `notes` (`notes`);

--
-- Indexes for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `date` (`date`),
  ADD KEY `amount` (`amount`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `reminder` (`reminder`),
  ADD KEY `reminder_head` (`remind_head`);

--
-- Indexes for table `security_deposite`
--
ALTER TABLE `security_deposite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `security_amount` (`security_amount`),
  ADD KEY `current_amount` (`current_amount`);

--
-- Indexes for table `sess_mg`
--
ALTER TABLE `sess_mg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rid_UNIQUE` (`rid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `special_req`
--
ALTER TABLE `special_req`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`);

--
-- Indexes for table `staff_allergies`
--
ALTER TABLE `staff_allergies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `epison` (`epison`),
  ADD KEY `allergy` (`allergy`);

--
-- Indexes for table `staff_attachment`
--
ALTER TABLE `staff_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_contact`
--
ALTER TABLE `staff_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `staff_doctors`
--
ALTER TABLE `staff_doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `create_date` (`create_date`),
  ADD KEY `dr_name` (`dr_name`),
  ADD KEY `mobile` (`mobile`);

--
-- Indexes for table `staff_medical_condition`
--
ALTER TABLE `staff_medical_condition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `condition` (`condition`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `staff_notes`
--
ALTER TABLE `staff_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `notes` (`notes`);

--
-- Indexes for table `staff_reminder`
--
ALTER TABLE `staff_reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `reminder` (`reminder`),
  ADD KEY `reminder_head` (`remind_head`);

--
-- Indexes for table `staff_special_req`
--
ALTER TABLE `staff_special_req`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`staff_id`);

--
-- Indexes for table `staff_vacation`
--
ALTER TABLE `staff_vacation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`staff_id`),
  ADD KEY `discount` (`discount`),
  ADD KEY `end_date` (`end_date`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_activity`
--
ALTER TABLE `sys_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_api`
--
ALTER TABLE `sys_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_cats`
--
ALTER TABLE `sys_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_companies`
--
ALTER TABLE `sys_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_currencies`
--
ALTER TABLE `sys_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_documents`
--
ALTER TABLE `sys_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  ADD PRIMARY KEY (`id`,`language_id`),
  ADD KEY `tplname` (`tplname`(32));

--
-- Indexes for table `sys_events`
--
ALTER TABLE `sys_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indexes for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`(3));

--
-- Indexes for table `sys_items`
--
ALTER TABLE `sys_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_leads`
--
ALTER TABLE `sys_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_logs`
--
ALTER TABLE `sys_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_orders`
--
ALTER TABLE `sys_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_permissions`
--
ALTER TABLE `sys_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_pg`
--
ALTER TABLE `sys_pg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gateway_setting` (`name`(32),`processor`(32)),
  ADD KEY `setting_value` (`processor`(32),`ins`(32));

--
-- Indexes for table `sys_pl`
--
ALTER TABLE `sys_pl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_quotes`
--
ALTER TABLE `sys_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_roles`
--
ALTER TABLE `sys_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sales`
--
ALTER TABLE `sys_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_schedule`
--
ALTER TABLE `sys_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_staffpermissions`
--
ALTER TABLE `sys_staffpermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tags`
--
ALTER TABLE `sys_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tasks`
--
ALTER TABLE `sys_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tax`
--
ALTER TABLE `sys_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_country` (`state`(32),`country`(2));

--
-- Indexes for table `sys_transactions`
--
ALTER TABLE `sys_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacation`
--
ALTER TABLE `vacation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `discount` (`discount`),
  ADD KEY `end_date` (`end_date`);

--
-- Indexes for table `waitlist`
--
ALTER TABLE `waitlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enrolment_id_UNIQUE` (`enrolment_id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `class` (`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account_payment`
--
ALTER TABLE `account_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `add_camp`
--
ALTER TABLE `add_camp`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `add_child`
--
ALTER TABLE `add_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `add_class`
--
ALTER TABLE `add_class`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `add_staff`
--
ALTER TABLE `add_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `allergies`
--
ALTER TABLE `allergies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `camp_shedule`
--
ALTER TABLE `camp_shedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `class_shedule`
--
ALTER TABLE `class_shedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `credit`
--
ALTER TABLE `credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1014;
--
-- AUTO_INCREMENT for table `crm_customfields`
--
ALTER TABLE `crm_customfields`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crm_groups`
--
ALTER TABLE `crm_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `enrolment`
--
ALTER TABLE `enrolment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ib_doc_rel`
--
ALTER TABLE `ib_doc_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `immunization`
--
ALTER TABLE `immunization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `medical_condition`
--
ALTER TABLE `medical_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nutrition`
--
ALTER TABLE `nutrition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `security_deposite`
--
ALTER TABLE `security_deposite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sess_mg`
--
ALTER TABLE `sess_mg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `special_req`
--
ALTER TABLE `special_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff_allergies`
--
ALTER TABLE `staff_allergies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `staff_attachment`
--
ALTER TABLE `staff_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `staff_contact`
--
ALTER TABLE `staff_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `staff_doctors`
--
ALTER TABLE `staff_doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `staff_medical_condition`
--
ALTER TABLE `staff_medical_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `staff_notes`
--
ALTER TABLE `staff_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `staff_reminder`
--
ALTER TABLE `staff_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `staff_special_req`
--
ALTER TABLE `staff_special_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `staff_vacation`
--
ALTER TABLE `staff_vacation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_activity`
--
ALTER TABLE `sys_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_api`
--
ALTER TABLE `sys_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `sys_cats`
--
ALTER TABLE `sys_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `sys_companies`
--
ALTER TABLE `sys_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_currencies`
--
ALTER TABLE `sys_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sys_documents`
--
ALTER TABLE `sys_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `sys_events`
--
ALTER TABLE `sys_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1191;
--
-- AUTO_INCREMENT for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;
--
-- AUTO_INCREMENT for table `sys_items`
--
ALTER TABLE `sys_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_leads`
--
ALTER TABLE `sys_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_logs`
--
ALTER TABLE `sys_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sys_orders`
--
ALTER TABLE `sys_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_permissions`
--
ALTER TABLE `sys_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `sys_pg`
--
ALTER TABLE `sys_pg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sys_pl`
--
ALTER TABLE `sys_pl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_quotes`
--
ALTER TABLE `sys_quotes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_roles`
--
ALTER TABLE `sys_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sys_sales`
--
ALTER TABLE `sys_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_schedule`
--
ALTER TABLE `sys_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sys_staffpermissions`
--
ALTER TABLE `sys_staffpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_tags`
--
ALTER TABLE `sys_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_tasks`
--
ALTER TABLE `sys_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_tax`
--
ALTER TABLE `sys_tax`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sys_transactions`
--
ALTER TABLE `sys_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vacation`
--
ALTER TABLE `vacation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `waitlist`
--
ALTER TABLE `waitlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
