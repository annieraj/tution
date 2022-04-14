-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2020 at 09:10 AM
-- Server version: 10.4.10-MariaDB
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
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '6686');

-- --------------------------------------------------------

--
-- Table structure for table `apply_job_post`
--

DROP TABLE IF EXISTS `apply_job_post`;
CREATE TABLE IF NOT EXISTS `apply_job_post` (
  `id_apply` int(11) NOT NULL AUTO_INCREMENT,
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_apply`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_job_post`
--

INSERT INTO `apply_job_post` (`id_apply`, `id_jobpost`, `id_company`, `id_user`) VALUES
(1, 17, 6, 14),
(2, 16, 6, 14),
(3, 15, 6, 17),
(4, 15, 6, 20),
(5, 18, 6, 17),
(6, 19, 3, 17),
(7, 19, 3, 37),
(8, 15, 6, 39),
(9, 19, 3, 40),
(10, 15, 6, 64),
(11, 27, 21, 65),
(12, 15, 6, 65),
(13, 17, 6, 65),
(14, 20, 18, 65),
(15, 18, 6, 65),
(16, 19, 3, 65),
(17, 45, 31, 67),
(18, 15, 6, 67),
(19, 43, 23, 68),
(20, 45, 31, 68),
(21, 42, 23, 68),
(22, 46, 31, 69),
(23, 46, 31, 68),
(24, 46, 31, 67),
(25, 45, 31, 69),
(26, 46, 31, 70);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id_company` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) NOT NULL,
  `headofficecity` varchar(255) NOT NULL,
  `contactno` int(11) NOT NULL,
  `website` varchar(255) NOT NULL,
  `companytype` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` int(11) NOT NULL DEFAULT 2,
  PRIMARY KEY (`id_company`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `companyname`, `headofficecity`, `contactno`, `website`, `companytype`, `email`, `password`, `createAt`, `active`) VALUES
(1, 'sigtech', 'ernakulam', 2147483647, 'www.sightech.co.in', 'software solutions', 'sigtech@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-04-05 04:26:58', 2),
(2, 'abc', 'kollam', 1234556789, 'www.abc.com', 'innovation', 'abc@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-04-11 05:50:58', 2),
(3, 'immco', 'ernakulam', 123456789, 'www.immco.co.in', 'it solutions', 'immco@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-04-11 06:26:09', 2),
(4, 'ghfghg', 'fdgfhghg', 2147483647, 'ghgjhj', 'jhggjh', 'qwwe@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-04-12 19:16:11', 1),
(5, 'mvmmbn', 'fdgfhghg', 2147483647, 'ghgjhj', 'jhggjh', 'bfgg@gmail.com', 'ZmQwZGUzNDVjZTAzODNlYTczNzJjZWVhOTc5MWZlOGE=', '2018-04-12 19:16:55', 1),
(6, 'abcd', 'kollam', 123456789, 'www.abcd.com', 'software solutions', 'abcd@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-04-13 06:59:08', 0),
(7, 'Quest', 'trivandrum', 996856982, 'www.quest.com', 'innovative solutions', 'www.quest@Gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-04-13 07:02:47', 0),
(8, 'volke', 'trivandrum', 968695234, 'www.volk.com', 'innovative solutions', 'www.volk@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-04-13 07:04:04', 0),
(9, 'abcde', 'kollam', 2147483647, 'www.abcd.com', 'electrical', 'abcd123@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-05-07 10:19:36', 1),
(10, 'immco', 'ernakulam', 2147483647, 'www.immco.co.in', 'itsolutions', 'www.immco@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-05-07 10:21:50', 0),
(11, 'ults', 'kollam', 1234567895, 'www.ults.com', 'itsolutions', 'ults@gmail.com', 'YmJlNjc1MGVmYjdmZmQ2NWFjYzdmYmQ3NDY2Yzg1NDE=', '2018-05-07 10:25:44', 0),
(12, 'gnhggjh', 'ghghg', 12345678, 'www.abcd.com', 'jbkgh', 'abcde@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-05-07 10:45:53', 0),
(13, 'abc', 'kollam', 56898879, 'www.ab.com', 'it', 'ab@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-11-02 16:39:49', 0),
(14, 'dream media', 'kottarakkarra', 952677522, 'www.dreams.com', 'photo', 'dreams@gmail.com', 'NTJmMjlhYmRkNDc3YjE5NjQ3MGIxMGNiMzI1MGYxODU=', '2018-11-21 14:59:54', 0),
(15, 'abcd', 'kollam', 123456, 'www.ab.com', 'media', 'akus@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2018-11-21 15:05:13', 1),
(16, 'abcd', 'kollam', 123456, 'www.ab.com', 'media', 'ak@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '2018-11-21 15:06:22', 1),
(17, 'mnc', 'kollam', 123456789, 'www.mnc.com', 'it', 'mns@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '2019-08-22 07:05:34', 1),
(18, 'mno', 'kollam', 1234567, 'www.mni.com', 'it', 'mno@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2019-08-22 07:09:18', 1),
(19, 'amaljothi', 'kottaa', 2147483647, 'abc@/gma', '', 'amal@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2019-08-24 17:03:16', 2),
(20, 'ewew', 'ewwwwwww', 1111111111, 'ssssssssssss', 'dddddddd', 'ds@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '2019-10-03 16:55:41', 0),
(21, 'immco', 'kollam', 12345, 'www.immco.com', 'it', 'immco1@gmail.com', 'ZGE3MGMzMTdkNjdjNDY0ZmEwMDRhYTM4MmRhNTVkNTI=', '2019-10-09 12:54:13', 1),
(23, 'Quist', 'tvm', 2147483647, 'www.quist.ac.in', 'innovation', 'quist@gmail.com', 'MjBiYmVlYTlkNGZlYzAwMWMzYjI5YzU4YzA1MWY3M2Y=', '2019-11-11 17:01:03', 1),
(24, 'techsoft', 'ernakulam', 2147483647, 'www.techsoft.com', 'IT', 'techsoft@gmail.com', 'ZTY1MjJkNjUwZTZhYWQ5Mjc5NWVkMjY5NjhjNTc0MWI=', '2019-11-12 10:13:29', 1),
(25, 'vcv', 'c', 2147483647, 'x', 'fd', 'lachu@gmail.com', 'YjMwYWZhYWI5YjMwNjUzNzE5ZGFkYjA5M2JhM2Q0YjU=', '2020-01-16 04:12:06', 1),
(26, 'abcd', 'kollam', 1234567890, 'wwdfsdf', 'it', 'abc1@gmail.com', 'NTI3MThkM2NmM2FmMjNhMWIyNWY5ODIyN2Y4Njk1OGU=', '2020-01-16 04:41:48', 1),
(27, 'sniq', 'tvm', 556655, 'sni@rd.com', 'it', 'dfs@fytgj.com', 'NTUwZGUzMTM4ZGJkNjMwMDJjZDQwZDI1YmRiOWNkMTg=', '2020-02-03 10:05:04', 2),
(28, 'sniqsys', 'tvm', 457764, 'www.sn.com', 'cs', 'sn@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2020-02-03 10:14:10', 2),
(29, 'aaaaaaaaaaaa', 'aaaaaaaaaaaaaa', 258762555, 'kjdhfchshcj', 'lksjcf', 'a@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2020-02-03 10:17:05', 2),
(30, 'hj', 'bhjnmk', 5212, 'gvbhnm', 'hjk', 'dfsgg@fhgjh.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', '2020-02-03 15:04:53', 2),
(31, 'Sniqsys', 'TVM', 12457896, 'www.sniq.com', 'IT', 'sniq@gmail.com', 'YmM3NmJmNzU5ZjBhZjA2OGIxMjQ5MTRjNWM4ZTM3ZTk=', '2020-02-05 05:55:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
CREATE TABLE IF NOT EXISTS `interview` (
  `id_inter` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NOT NULL,
  `id_company` int(100) NOT NULL,
  `place` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id_inter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview_details`
--

DROP TABLE IF EXISTS `interview_details`;
CREATE TABLE IF NOT EXISTS `interview_details` (
  `int_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `int_date` date NOT NULL,
  `int_time` time NOT NULL DEFAULT current_timestamp(),
  `venue` varchar(100) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`int_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview_details`
--

INSERT INTO `interview_details` (`int_id`, `user_id`, `int_date`, `int_time`, `venue`, `job_id`) VALUES
(1, 0, '2020-02-11', '09:50:00', 'tvm', NULL),
(6, 0, '2020-03-20', '10:00:00', 'tvm', 45),
(7, 31, '2020-02-03', '09:10:00', 'arnd', 45),
(8, 31, '2020-02-25', '14:02:00', 'as', 45),
(9, 31, '2020-02-13', '10:34:00', 'jhgfgdrstfgyg', 45),
(10, 67, '2020-02-25', '10:10:00', 'erkm', 45),
(11, 69, '2020-02-26', '12:12:00', 'asd', 46),
(12, 68, '2020-02-18', '13:15:00', 'tvpm', 45),
(13, 68, '2020-02-18', '13:23:00', 'sasds', 46),
(14, 67, '2020-02-29', '10:10:00', 'asdf', 46),
(15, 69, '2020-02-26', '07:50:00', 'poi', 45),
(16, 70, '2020-02-29', '10:20:00', 'Sreekaryam', 46);

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

DROP TABLE IF EXISTS `job_post`;
CREATE TABLE IF NOT EXISTS `job_post` (
  `id_jobpost` int(11) NOT NULL AUTO_INCREMENT,
  `id_company` int(11) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimumsalary` varchar(255) NOT NULL,
  `maximumsalary` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastdate` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_jobpost`),
  KEY `id_company` (`id_company`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id_jobpost`, `id_company`, `jobtitle`, `description`, `minimumsalary`, `maximumsalary`, `experience`, `qualification`, `createdat`, `lastdate`, `status`) VALUES
(15, 6, 'Php developer', 'PHP is a fast and feature-rich open source scripting language used to develop Web Applications or Internet / Intranet Applications.', '15000', '20000', '0-1 year', 'graduate', '2018-04-13 07:13:49', '0000-00-00', 1),
(17, 6, 'web desgner', 'Web Design encompasses many different skills and disciplines in the production and maintenance of websites', '15000', '25000', '1-4 year', 'MCA', '2018-04-13 07:17:24', '0000-00-00', 1),
(18, 6, 'software developer', 'A software developer is a person concerned with facets of the software development process, including the research, design, programming, and testing of computer software', '25000', '50000', '3-5 year', 'M.tech', '2018-04-13 07:19:55', '0000-00-00', 1),
(19, 3, 'java developer', '3 year experience \r\ngood understanding to coding\r\nbasic idea of c, c++\r\n', '15000', '25000', '3 year', 'degree', '2018-11-21 15:11:15', '0000-00-00', 1),
(22, 21, 'php developer', 'PHP developers write effective, scalable code that drives web applications. In this role, PHP developers tend to work with server-side and backend components of web applications.', '10000', '150000', '2 year', 'degree', '2019-10-10 06:32:14', '0000-00-00', 1),
(41, 23, 'ffd', 'gfhg', 'gfh', 'gfhf', 'hffh', 'bvcv', '2019-11-12 05:28:40', '0000-00-00', 0),
(42, 23, 'fdg', 'fgfgd', '10000', 'fgfdgf', 'hffh', 'plustwo', '2019-11-12 05:38:21', '0000-00-00', 0),
(43, 23, 'gff', 'fgddfdfdfd', '65656', '54436', 'gdfgdfg', 'plustgfdg', '2019-11-12 07:47:08', '0000-00-00', 0),
(44, 24, 'javadevelooer', 'sssdsss', '50000', '100000', '1 year', 'MCA', '2019-11-12 10:20:00', '0000-00-00', 0),
(45, 31, 'java developer', 'java developer', '20000', '30000', '8 years', 'mca', '2020-02-05 06:02:18', '2020-03-03', 0),
(46, 31, 'python', 'python', '10000', '50000', '1 year', 'bsc', '2020-02-05 16:23:53', '2020-09-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(255) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `stream` varchar(255) NOT NULL,
  `passingyear` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `state`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`, `status`) VALUES
(47, 'abcd', 'abcd', 'abcd@gmail.com', 'ZmE3NjQ3YzE5OGYzNmY1MGFkODczMGZhNWRjNWQ5MWU=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(48, 'appu', '123', 'appu@gmail.com', 'YTJkYzc1ZDVjOGY2NWVmOWI5OWYwYWUxMTI1NmY3MmE=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(52, 'haritha', 'NH', 'haritha@gmaiil.com', 'MWViMDdlODNlMzBlZjVjY2FmOTI1MjYyY2M3Zjk5YmE=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(53, 'bency', 'babu', 'bencybabu980@gmail.com', 'MWViMDdlODNlMzBlZjVjY2FmOTI1MjYyY2M3Zjk5YmE=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(54, 'spark', 'inno', 'spark@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(55, 'amal', 'm', 'amal@gmail.com', 'MmMyY2U3ZTQ4YTQ5MmIyZmUyNzVlNzE0ODY3ZmEzMzI=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(56, '44', '5555', 'be@gmai.com', 'ZDBlNjliOTdjYTJiMzcxNjljZDcyZDE3ZmM4YjI5Nzg=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(57, '', '', '', 'ZTcyNDhmY2U4OTkwMDg5ZTQwMmIwMGY4OWRjOGQxNGQ=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(58, 'AMMU', 'MS', 'ammu@gmail.com', 'ODI1MDY1MDU1OTA1MmI1M2YzMDY2M2U4MzNiNjk4OWE=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(59, 'Chinchu', 'anilkumar', 'chinchu123@gmail.com', 'YTc2MTNjMzRhMDk5YmEzMzQ4OThjNmY2ZWY1ZjRlNzQ=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(60, 'anil', 'kumar', 'anil@gmai.com', 'MGVlZWVkNTc0NTE5ZTJkNzFmYjRlMDRjYWI1NzNlMWE=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(61, ' hj hj jhj', 'ghjhgvb', 'a@gmail.com', 'ZTFhM2JjMWYyNzFhMTI3ZGRlNzg5MDU2MDg5YjRiZTE=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(62, 'xvcb', 'fbgf', 'asd@GMAIL.COM', 'MzJiYzEzMWZmZDliMGNjNDM3YTEyMmFmMGY2ZGMxMDE=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(63, 'bency', 'babu', 'bency12@gmail.com', 'ZmQyMDYwMDJiNGI2ZjM2MTNiOTU3YjljMTNkYmViNjA=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(64, 'Niya', 'soji', 'niya@gmail.com', 'ZmQyMDYwMDJiNGI2ZjM2MTNiOTU3YjljMTNkYmViNjA=', NULL, '', '', '', '', '', '', '', '', '', '5db92e510e0eb.pdf', 0),
(65, 'abc', 'bcd', 'abc@gmail.com', 'MjBiYmVlYTlkNGZlYzAwMWMzYjI5YzU4YzA1MWY3M2Y=', NULL, '', '', '', '', '', '', '', '', '', '5dca8a789666d.pdf', 0),
(66, 'lachu', 'ghdfdgsf', 'lachu@gmail.com', 'YjMwYWZhYWI5YjMwNjUzNzE5ZGFkYjA5M2JhM2Q0YjU=', NULL, '', '', '', '', '', '', '', '', '', NULL, 0),
(67, 'AAnnie', 'w', 'annie@gmail.com', 'YzFkYmJhN2UzZDdkMTkyNGZkMGVmM2QxMGEwMTgxMmE=', 'Ak', 'tvm', 'kl', '634313.2', 'diploma', 'cs', '2019', '2020-02-20', '20', 's/w enginer', NULL, 0),
(68, 'athira', 'a', 'athira@yahoo.com', 'YTdlNDFmZjVlMzM2YTQ0M2QxZDI5NmRhZjZmZGM4ZWI=', 'klm', 'klm', 'tmnd', '100', '1', 'jhhghfdrar', '1998', '1985-01-04', '55', 'CEO', NULL, 0),
(69, 'gopika', 'g s', 'gopika@gmail.com', 'ZjU5NmZkOTNkMjlkZTA3Y2Q3YzIyMTM5OWQwMmZjN2Y=', 'tvm', 'tvm', 'kerala', '985674555', 'diploma', 'cs', '2019', '2000-06-03', '20', 's/w enginer', NULL, 0),
(70, 'meenu', 's v', 'meenu@gmail.com', 'ZjkxMDg5OTBiNTA0MmExOGJlODRjMTdiZGNmYTMwYjQ=', 'klm', 'klm', 'kerala', '968577121', 'B Tech', 'cs', '2020', '2003-01-15', '18', 's/w enginer', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_job`
--

DROP TABLE IF EXISTS `user_job`;
CREATE TABLE IF NOT EXISTS `user_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_job`
--

INSERT INTO `user_job` (`id`, `user_id`, `job_id`) VALUES
(1, 68, 15),
(2, 68, 17),
(3, 68, 15),
(4, 67, 17),
(5, 67, 17),
(6, 67, 18),
(7, 67, 41),
(8, 68, 41);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_post`
--
ALTER TABLE `job_post`
  ADD CONSTRAINT `job_post_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `company` (`id_company`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
