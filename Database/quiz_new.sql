-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2022 at 07:32 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `id` int(11) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(2, 'prothama', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(42, 8, 'What is DLD', 'Digital Logic Design', 'Digital System Design', 'Digital  Design', 'None', 1),
(43, 8, 'If the inputs are 1 and 1,what is the output of OR gate?', '1', '0', '11', '00', 1),
(44, 8, 'If the inputs are 1 and 1,what is the output of AND gate?', '1', '111', '00', '0', 1),
(45, 8, 'What is the complement of 0?', '1', '0', '2', 'none', 1),
(46, 8, 'what is the complement of 1?', '1', '0', '11', '00', 2),
(47, 13, 'What is SRS?', 'Software Requirement Specification', 'Software System Design', 'Software Requirement', 'System Research Specification', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('raj', 8, '0000-00-00', 3),
('raj', 9, '0000-00-00', 3),
('raj', 8, '0000-00-00', 1),
('ashish', 10, '0000-00-00', 3),
('ashish', 9, '0000-00-00', 2),
('ashish', 10, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('ankur', 11, '0000-00-00', 0),
('raj', 8, '0000-00-00', 1),
('a', 8, '0000-00-00', 1),
('a', 8, '0000-00-00', 1),
('a', 8, '0000-00-00', 3),
('a', 8, '0000-00-00', 4),
('a', 8, '0000-00-00', 5),
('a', 8, '0000-00-00', 4),
('a', 8, '0000-00-00', 4),
('a', 8, '0000-00-00', 5),
('a', 8, '0000-00-00', 3),
('a', 8, '0000-00-00', 4),
('z', 8, '0000-00-00', 4),
('8', 8, '0000-00-00', 5),
('a', 13, '0000-00-00', 1),
('a', 13, '0000-00-00', 1),
('a', 8, '0000-00-00', 4),
('a', 8, '0000-00-00', 1),
('a', 8, '0000-00-00', 2),
('a', 8, '0000-00-00', 3),
('a', 8, '0000-00-00', 2),
('p', 8, '0000-00-00', 4),
('p', 8, '0000-00-00', 5),
('p', 8, '0000-00-00', 4),
('b', 8, '0000-00-00', 5),
('b', 13, '0000-00-00', 1),
('s', 13, '0000-00-00', 1),
('proma', 13, '0000-00-00', 1),
('proma', 13, '0000-00-00', 1),
('s', 13, '0000-00-00', 1),
('s', 13, '0000-00-00', 1),
('s', 8, '0000-00-00', 4),
('s', 8, '0000-00-00', 4),
('s', 8, '0000-00-00', 5),
('s', 13, '0000-00-00', 1),
('q', 8, '0000-00-00', 5),
('o', 8, '0000-00-00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'DLD'),
(8, 'software'),
(10, 'Web Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(8, 1, 'DLD Basic', '5'),
(13, 8, 'first exam', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(26, 'b', '123456', 'Prothama Sardar', 'khulna', 'Khulna', 1705094641, 'prothama.just.cse@gmail.com'),
(27, 's', '123', 'prothama', 'khulna', 'Khulna', 1705094641, 's@gmail.com'),
(28, 'c', '123456', 'chinmoy', 'khulna', 'Khulna', 1705094641, 'c@gmail.com'),
(31, 'proma', '123456', 'prothama', 'khulna', 'Khulna', 1705094641, 'prothama.just.cse@gmail.com'),
(32, 'q', '123', 'prothama', 'khulna', 'Khulna', 1705094641, 'q@gmail.com'),
(33, 'o', '12345', 'oishi', 'Jashore', 'Jashore', 1705094641, 'oishi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('rqjisr1p6gjs7q0v9gaeb0103q', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 3),
('rqjisr1p6gjs7q0v9gaeb0103q', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 2),
('rqjisr1p6gjs7q0v9gaeb0103q', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('d65lt9l8qvdpq2u7a08erohfia', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('d65lt9l8qvdpq2u7a08erohfia', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 1),
('d65lt9l8qvdpq2u7a08erohfia', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 1),
('d65lt9l8qvdpq2u7a08erohfia', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('d65lt9l8qvdpq2u7a08erohfia', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('d65lt9l8qvdpq2u7a08erohfia', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 2),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 2),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'What is your name?', 'Prothama', 'Sardar', 'Prothama Sardar', 'None', 3, 3),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 2),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 1),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'What is your name?', 'Prothama', 'Sardar', 'Prothama Sardar', 'None', 3, 3),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'What is DLD', 'Digital Logic Design', 'Digital System Design', 'Digital  Design', 'None', 1, 1),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'If the inputs are 1 and 1,what is the output of OR gate?', '1', '0', '11', '00', 1, 1),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'If the inputs are 1 and 1,what is the output of AND gate?', '1', '111', '00', '0', 1, 1),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'What is the complement of 0?', '1', '0', '2', 'none', 1, 1),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'what is the complement of 1?', '1', '0', '11', '00', 2, 2),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'What is DLD', 'Digital Logic Design', 'Digital System Design', 'Digital  Design', 'None', 1, 1),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'If the inputs are 1 and 1,what is the output of OR gate?', '1', '0', '11', '00', 1, 1),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'If the inputs are 1 and 1,what is the output of AND gate?', '1', '111', '00', '0', 1, 1),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'What is the complement of 0?', '1', '0', '2', 'none', 1, 1),
('98u7b66e61cmdl63d4b57ehlcp', 8, 'what is the complement of 1?', '1', '0', '11', '00', 2, 1),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'What is DLD', 'Digital Logic Design', 'Digital System Design', 'Digital  Design', 'None', 1, 1),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'If the inputs are 1 and 1,what is the output of OR gate?', '1', '0', '11', '00', 1, 1),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'If the inputs are 1 and 1,what is the output of AND gate?', '1', '111', '00', '0', 1, 1),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'What is the complement of 0?', '1', '0', '2', 'none', 1, 2),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'what is the complement of 1?', '1', '0', '11', '00', 2, 2),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'What is DLD', 'Digital Logic Design', 'Digital System Design', 'Digital  Design', 'None', 1, 1),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'If the inputs are 1 and 1,what is the output of OR gate?', '1', '0', '11', '00', 1, 1),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'If the inputs are 1 and 1,what is the output of AND gate?', '1', '111', '00', '0', 1, 1),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'What is the complement of 0?', '1', '0', '2', 'none', 1, 1),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'what is the complement of 1?', '1', '0', '11', '00', 2, 2),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'What is DLD', 'Digital Logic Design', 'Digital System Design', 'Digital  Design', 'None', 1, 1),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'If the inputs are 1 and 1,what is the output of OR gate?', '1', '0', '11', '00', 1, 2),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'If the inputs are 1 and 1,what is the output of AND gate?', '1', '111', '00', '0', 1, 2),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'What is the complement of 0?', '1', '0', '2', 'none', 1, 1),
('gmv0hc4s34g5nn50o4sllj9pkk', 8, 'what is the complement of 1?', '1', '0', '11', '00', 2, 2),
('k8n1s9odaurit13v0j5nptj8co', 8, 'What is DLD', 'Digital Logic Design', 'Digital System Design', 'Digital  Design', 'None', 1, 1),
('k8n1s9odaurit13v0j5nptj8co', 8, 'If the inputs are 1 and 1,what is the output of OR gate?', '1', '0', '11', '00', 1, 1),
('k8n1s9odaurit13v0j5nptj8co', 8, 'If the inputs are 1 and 1,what is the output of AND gate?', '1', '111', '00', '0', 1, 4),
('k8n1s9odaurit13v0j5nptj8co', 8, 'What is the complement of 0?', '1', '0', '2', 'none', 1, 1),
('k8n1s9odaurit13v0j5nptj8co', 8, 'what is the complement of 1?', '1', '0', '11', '00', 2, 2),
('8k5nr9erf7mm39h4rsdsoncvcs', 8, 'What is DLD', 'Digital Logic Design', 'Digital System Design', 'Digital  Design', 'None', 1, 1),
('8k5nr9erf7mm39h4rsdsoncvcs', 8, 'If the inputs are 1 and 1,what is the output of OR gate?', '1', '0', '11', '00', 1, 1),
('8k5nr9erf7mm39h4rsdsoncvcs', 8, 'If the inputs are 1 and 1,what is the output of AND gate?', '1', '111', '00', '0', 1, 4),
('8k5nr9erf7mm39h4rsdsoncvcs', 8, 'What is the complement of 0?', '1', '0', '2', 'none', 1, 1),
('8k5nr9erf7mm39h4rsdsoncvcs', 8, 'what is the complement of 1?', '1', '0', '11', '00', 2, 2),
('km75c46cv5s1fc0peldg504np5', 8, 'What is DLD', 'Digital Logic Design', 'Digital System Design', 'Digital  Design', 'None', 1, 1),
('km75c46cv5s1fc0peldg504np5', 8, 'If the inputs are 1 and 1,what is the output of OR gate?', '1', '0', '11', '00', 1, 1),
('km75c46cv5s1fc0peldg504np5', 8, 'If the inputs are 1 and 1,what is the output of AND gate?', '1', '111', '00', '0', 1, 1),
('km75c46cv5s1fc0peldg504np5', 8, 'What is the complement of 0?', '1', '0', '2', 'none', 1, 1),
('km75c46cv5s1fc0peldg504np5', 8, 'what is the complement of 1?', '1', '0', '11', '00', 2, 2),
('km75c46cv5s1fc0peldg504np5', 13, 'What is SRS?', 'Software Requirement Specification', 'Software System Design', 'Software Requirement', 'System Research Specification', 1, 1),
('9lmm40q1g3lu5haabl5966jb47', 13, 'What is SRS?', 'Software Requirement Specification', 'Software System Design', 'Software Requirement', 'System Research Specification', 1, 1),
('cihcnjmcesin5uipfkv71ld3tg', 8, 'What is DLD', 'Digital Logic Design', 'Digital System Design', 'Digital  Design', 'None', 1, 1),
('cihcnjmcesin5uipfkv71ld3tg', 8, 'If the inputs are 1 and 1,what is the output of OR gate?', '1', '0', '11', '00', 1, 1),
('cihcnjmcesin5uipfkv71ld3tg', 8, 'If the inputs are 1 and 1,what is the output of AND gate?', '1', '111', '00', '0', 1, 2),
('cihcnjmcesin5uipfkv71ld3tg', 8, 'What is the complement of 0?', '1', '0', '2', 'none', 1, 1),
('cihcnjmcesin5uipfkv71ld3tg', 8, 'what is the complement of 1?', '1', '0', '11', '00', 2, 3),
('cihcnjmcesin5uipfkv71ld3tg', 8, 'What is DLD', 'Digital Logic Design', 'Digital System Design', 'Digital  Design', 'None', 1, 1),
('cihcnjmcesin5uipfkv71ld3tg', 8, 'If the inputs are 1 and 1,what is the output of OR gate?', '1', '0', '11', '00', 1, 3),
('cihcnjmcesin5uipfkv71ld3tg', 8, 'If the inputs are 1 and 1,what is the output of AND gate?', '1', '111', '00', '0', 1, 1),
('cihcnjmcesin5uipfkv71ld3tg', 8, 'What is the complement of 0?', '1', '0', '2', 'none', 1, 3),
('cihcnjmcesin5uipfkv71ld3tg', 8, 'what is the complement of 1?', '1', '0', '11', '00', 2, 1),
('32daatocf9kn1vj8fakroaka4f', 13, 'What is SRS?', 'Software Requirement Specification', 'Software System Design', 'Software Requirement', 'System Research Specification', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_admin`
--
ALTER TABLE `mst_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
  MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
