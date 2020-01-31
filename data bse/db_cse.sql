-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2016 at 03:54 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, '123456', 'ariful');

-- --------------------------------------------------------

--
-- Table structure for table `course_in`
--

CREATE TABLE `course_in` (
  `id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `day` varchar(12) NOT NULL,
  `time` varchar(20) NOT NULL,
  `room_no` int(6) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_in`
--

INSERT INTO `course_in` (`id`, `course_name`, `day`, `time`, `room_no`, `semester`) VALUES
(98, 'Compiler Design', 'Saturday', '8:00-8:50', 210, '3-2'),
(99, 'Computer Graphics & Animation', 'Saturday', '8:00-8:50', 210, '4-2'),
(100, 'Algorithm Design & Analysis', 'Wednesday', '4:00-4:50', 210, '2-2');

-- --------------------------------------------------------

--
-- Table structure for table `course_registration`
--

CREATE TABLE `course_registration` (
  `id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_short_name` varchar(10) NOT NULL,
  `course_code` varchar(8) NOT NULL,
  `course_type` varchar(10) NOT NULL,
  `credit` varchar(7) NOT NULL,
  `teacher_name` varchar(30) NOT NULL,
  `teacher_short_name` varchar(10) NOT NULL,
  `teacher_id` varchar(15) NOT NULL,
  `class_per_week` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_registration`
--

INSERT INTO `course_registration` (`id`, `course_name`, `course_short_name`, `course_code`, `course_type`, `credit`, `teacher_name`, `teacher_short_name`, `teacher_id`, `class_per_week`) VALUES
(21, 'Data Structure', 'ds', 'CSE2103', 'Theory', '3.00', 'Mostafa Kamal Nasir', 'MKN', '102', '3'),
(22, 'Data Structure Lab ', 'dsl', 'CSE2104', 'Lab', '1.50', 'Mostafa Kamal Nasir', 'MKN', '102', '2'),
(23, 'Digital Electronics', 'DL', 'CSE2105', 'Theory', '3.00', 'Mahbuba Begum', 'MB', '108', '3'),
(24, 'Digital Electronics Lab', 'DLL', 'CSE2106', 'Lab', '1.00', 'Mahbuba Begum', 'MB', '108', '2'),
(25, 'Mathematics III', 'Math', 'CSE2107', 'Theory', '3.00', 'Mohammad Babul Hassain', 'MBH', '201', '3'),
(26, 'Algorithm Design & Analysis', 'ADA', 'CSE2201', 'Theory', '3.00', 'Md. Mahfuz Reza', 'MR', '106', '3'),
(27, 'Algorithm Design & Analysis Lab', 'ADAL', 'CSE2202', 'Lab', '1.00', 'Md. Mahfuz Reza', 'MR', '107', '2'),
(28, 'Computer Based Numerical Methods', 'CBNM', 'CSE2205', 'Theory', '2.00', 'Dr. Mohammad Motiur Rahman', 'MMR', '101', '2'),
(29, 'Computer Based Numerical Methods Labs', 'CBNML', 'CSE2206', 'Lab', '.50', 'Dr. Mohammad Motiur Rahman', 'MMR', '101', '1'),
(30, 'Digital System Design', 'DSD', 'CSE2209', 'Theory', '2.00', 'Mahbuba Begum', 'MB', '108', '2'),
(31, 'Digital System Design Lab', 'DSDL', 'CSE2210', 'Lab', '.50', 'Mahbuba Begum', 'MB', '108', '1'),
(32, 'Visual Programming Lab-II', 'VPL-2', 'CSE2216', 'Lab', '1.00', 'Mehedi Hasan Talukder', 'MHT', '106', '2'),
(33, 'Compiler Design', 'CD', 'CSE3201', 'Theory', '3.00', 'Abu Sayem Mohammad Delowar Hos', 'ASMDH', '104', '3'),
(34, 'Compiler Design Lab', 'CDL', 'CSE3202', 'Lab', '1', 'Abu Sayem Mohammad Delowar Hos', 'ASMDH', '104', '2'),
(35, 'Computer Network', 'CN', 'CSE3203	', 'Theory', '3.00', 'Mostafa Kamal Nasir', 'MKN', '102', '3'),
(36, 'Computer Network Lab', 'CNL', 'CSE3204', 'Lab', '1.00', 'Mostafa Kamal Nasir', 'MKN', '102', '2'),
(37, 'Relational Database Management System Lab', 'RDMSL', 'CSE3208', 'Lab', '1.00', 'Md. Mahfuz Reza', 'MR', '106', '2'),
(38, 'Multimedia & Web Engineering', 'MWE', 'CSE3209', 'Theory', '2.00', 'Dr. Mohammad Motiur Rahman', 'MMR', '101', '2'),
(39, 'Multimedia & Web Engineering Lab', 'MWEL', 'CSE3210', 'Lab', '1.00', 'Dr. Mohammad Motiur Rahman', 'MMR', '101', '2'),
(40, 'Communication Engineering', 'CE', 'CSE3211', 'Theory', '2.00', 'Mehedi Hasan Talukder', 'MHT', '105', '2'),
(41, 'Computer Graphics & Animation', 'CGA', 'CSE4201', 'Theory', '3.00', 'Mehedi Hasan Talukder', 'MHT', '105', '3'),
(42, 'Computer Graphics & Animation Lab', 'CGAL', 'CSE4202', 'Lab', '1.00', 'Mehedi Hasan Talukder', 'MHT', '105', '2'),
(43, 'Neural Networks & Fuzzy System', 'NNFS', 'CSE4203', 'Theory', '3.00', 'Mostafa Kamal Nasir', 'MKN', '102', '3'),
(44, 'Neural Networks & Fuzzy System Lab', 'NNFSL', 'CSE4204', 'Lab', '1.00', 'Mostafa Kamal Nasir', 'MKN', '102', '2'),
(45, 'Distributed Operating System', 'DOS', 'CSE4205', 'Theory', '3.00', 'Abu Sayem Mohammad Delowar Hos', 'ASMDH', '104', '3'),
(46, 'Distributed Operating System Lab', 'DOSL', 'CSE4206', 'Lab', '1.00', 'Abu Sayem Mohammad Delowar Hos', 'ASMDH', '104', '2'),
(47, 'Data Mining', 'DM', 'CSE4207', 'Theory', '3.00', 'Md. Mahfuz Reza', 'MR', '106', '3'),
(48, 'computer ', 'com', '123', 'Theory', '3.00', 'asdf', 'asd', '678', '3');

-- --------------------------------------------------------

--
-- Table structure for table `cse_student`
--

CREATE TABLE `cse_student` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `Year` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_student`
--

INSERT INTO `cse_student` (`id`, `Name`, `student_id`, `Year`, `Email`, `Phone`) VALUES
(9, 'Md. Suzauddin Badhsa', 'CE13002', '3-2', 'mdbadsha92@gmail.com', '01746406837'),
(12, 'Md suza', 'CE13002', '3-2', 'mdsuza101@gmail.com', '01746406837'),
(13, 'Partha Saha', 'CE-13006', '3-2', 'parthasaha152@gmail.com', '01717693967');

-- --------------------------------------------------------

--
-- Table structure for table `td_name`
--

CREATE TABLE `td_name` (
  `first_name` varchar(12) NOT NULL,
  `last_name` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `td_name`
--

INSERT INTO `td_name` (`first_name`, `last_name`, `email`) VALUES
('Md Suzauddin', 'Badsha', 'mdbadsha92@gmail.com'),
('Md Nobin', 'Biswas', 'mdnobin420@gmail.com'),
('md', '', 'jkbjhvghcfhc');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `teacher_name` varchar(25) NOT NULL,
  `teacher_id` varchar(10) NOT NULL,
  `course_name` varchar(25) NOT NULL,
  `teacher_short_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `teacher_name`, `teacher_id`, `course_name`, `teacher_short_name`) VALUES
(1, 'Mahfuz Reza', '1', 'Operating System', 'suvo'),
(2, 'Mahfuz Reza', '3213', 'Data base', 'MR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_in`
--
ALTER TABLE `course_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_registration`
--
ALTER TABLE `course_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_student`
--
ALTER TABLE `cse_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `course_in`
--
ALTER TABLE `course_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `course_registration`
--
ALTER TABLE `course_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `cse_student`
--
ALTER TABLE `cse_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
