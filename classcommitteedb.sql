-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 04:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classcommitteedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `sem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch`, `sem`) VALUES
(57, 'BCA Regular', 6),
(58, 'BCA DataScience', 6);

-- --------------------------------------------------------

--
-- Table structure for table `cc_chair`
--

CREATE TABLE `cc_chair` (
  `chair_id` int(110) NOT NULL,
  `fac_id` varchar(50) NOT NULL,
  `group_id` int(100) NOT NULL,
  `doj` date NOT NULL,
  `dol` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cc_chair`
--

INSERT INTO `cc_chair` (`chair_id`, `fac_id`, `group_id`, `doj`, `dol`) VALUES
(54, '11', 116, '2023-06-07', '2023-06-08'),
(55, '22', 117, '2023-06-07', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `class_instructors`
--

CREATE TABLE `class_instructors` (
  `group_id` int(11) NOT NULL,
  `fac_id` varchar(50) NOT NULL,
  `course_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_instructors`
--

INSERT INTO `class_instructors` (`group_id`, `fac_id`, `course_id`) VALUES
(117, '11', '18CSA006'),
(117, '22', '18CSA007'),
(117, '53', '18CSA008');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(50) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `credit` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `sem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `credit`, `batch_id`, `sem`) VALUES
('18CSA001', 'Python Programing', 4, 57, 2),
('18CSA002', 'Java Programing', 4, 57, 1),
('18CSA003', 'Operating System', 4, 57, 1),
('18CSA004', 'Graphics', 3, 57, 2),
('18CSA005', 'Data Mining', 4, 57, 1),
('18CSA006', 'AI', 4, 58, 1),
('18CSA007', 'Networking', 4, 58, 2),
('18CSA008', 'Database Management', 3, 58, 2);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fac_id` varchar(110) NOT NULL,
  `fac_name` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fac_id`, `fac_name`, `dept`, `password`, `email`) VALUES
('11', 'Beena', 'CSA', '', 'beena@gmail.com'),
('22', 'Athulya', 'CSA', '123', 'paaru@gmail.com'),
('53', 'Parvathy vijayan', 'CSA', '', 'paaru@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `sch_date` datetime NOT NULL,
  `fac_id` varchar(50) NOT NULL,
  `course_id` varchar(60) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `file_name` varchar(110) NOT NULL,
  `mode` varchar(10) NOT NULL,
  `classcommittee` varchar(100) NOT NULL,
  `issue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `title`, `date`, `sch_date`, `fac_id`, `course_id`, `group_id`, `status`, `file_name`, `mode`, `classcommittee`, `issue`) VALUES
(28, 'aums mark report', '2023-06-08 08:53:46', '2023-06-09 09:53:00', '22', '18CSA007', 117, 'y', 'internal.xlsx', 'y', 'Midterm', 'no issues'),
(30, 'attendance shortage report', '2023-06-08 08:53:46', '2023-06-09 09:53:00', '53', '18CSA008', 117, 'n', '', 'y', 'Midterm', ''),
(31, 'aums mark report', '2023-06-08 08:53:46', '2023-06-09 09:53:00', '53', '18CSA008', 117, 'n', '', 'y', 'Midterm', ''),
(32, 'obe file', '2023-06-08 08:53:46', '2023-06-09 09:53:00', '53', '18CSA008', 117, 'n', '', 'y', 'Midterm', ''),
(33, 'course plan', '2023-06-08 10:53:44', '2023-06-08 10:53:00', '11', '18CSA006', 117, 'n', '', 'y', 'Zeroth', ''),
(34, 'evalution policy', '2023-06-08 10:53:44', '2023-06-08 10:53:00', '11', '18CSA006', 117, 'n', '', 'y', 'Zeroth', ''),
(35, 'course plan', '2023-06-08 10:53:44', '2023-06-08 10:53:00', '22', '18CSA007', 117, 'n', '', 'y', 'Zeroth', ''),
(36, 'evalution policy', '2023-06-08 10:53:44', '2023-06-08 10:53:00', '22', '18CSA007', 117, 'n', '', 'y', 'Zeroth', ''),
(37, 'course plan', '2023-06-08 10:53:44', '2023-06-08 10:53:00', '53', '18CSA008', 117, 'n', '', 'y', 'Zeroth', ''),
(38, 'evalution policy', '2023-06-08 10:53:44', '2023-06-08 10:53:00', '53', '18CSA008', 117, 'n', '', 'y', 'Zeroth', '');

-- --------------------------------------------------------

--
-- Table structure for table `grade_finalizationcc`
--

CREATE TABLE `grade_finalizationcc` (
  `id` int(11) NOT NULL,
  `fac_id` varchar(40) NOT NULL,
  `course_id` varchar(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `tentative_grade_report` varchar(40) NOT NULL,
  `o` varchar(40) NOT NULL,
  `ap` varchar(40) NOT NULL,
  `a` varchar(40) NOT NULL,
  `bp` varchar(40) NOT NULL,
  `b` varchar(40) NOT NULL,
  `c` varchar(40) NOT NULL,
  `d` varchar(40) NOT NULL,
  `f` varchar(40) NOT NULL,
  `fa` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade_finalizationcc`
--

INSERT INTO `grade_finalizationcc` (`id`, `fac_id`, `course_id`, `group_id`, `tentative_grade_report`, `o`, `ap`, `a`, `bp`, `b`, `c`, `d`, `f`, `fa`) VALUES
(13, '22', '18CSA007', 117, 'internal.xlsx', '91', '81', '71', '61', '51', '41', '31', '30', '75');

-- --------------------------------------------------------

--
-- Table structure for table `graph`
--

CREATE TABLE `graph` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `fac_id` varchar(100) NOT NULL,
  `totalmark` float NOT NULL,
  `count` int(11) NOT NULL,
  `outof` int(11) NOT NULL,
  `group_id` int(20) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `marksheet` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `graph`
--

INSERT INTO `graph` (`id`, `title`, `course_id`, `fac_id`, `totalmark`, `count`, `outof`, `group_id`, `batch_id`, `marksheet`) VALUES
(3, 'graph1', '18CSA007', '22', 190, 5, 100, 117, 58, '');

-- --------------------------------------------------------

--
-- Table structure for table `group_details`
--

CREATE TABLE `group_details` (
  `group_id` int(100) NOT NULL,
  `name` varchar(60) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_details`
--

INSERT INTO `group_details` (`group_id`, `name`, `batch_id`, `year`) VALUES
(116, 'BCA REG 2023', 57, 2023),
(117, 'BCA DS 2023', 58, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`id`, `name`, `password`, `dept`, `email`) VALUES
(1, 'Ani', 'ani@123', 'CSA', 'ani@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `id` int(11) NOT NULL,
  `group_id` int(100) NOT NULL,
  `chair` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `link` varchar(100) NOT NULL,
  `mode` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`id`, `group_id`, `chair`, `title`, `description`, `start_datetime`, `end_datetime`, `link`, `mode`) VALUES
(21, 117, 55, 'Zeroth class committee meeting', '', '2023-06-09 09:28:00', '2023-06-08 09:28:00', 'https://meet.google.com/tas-trfd-fbj', 'n'),
(22, 117, 55, 'Grading finalization class committee meeting', '', '2023-06-07 08:33:00', '2023-06-08 09:33:00', 'https://meet.google.com/tas-trfd-fbj', 'n'),
(23, 117, 55, 'Midterm class committee meeting', '', '2023-05-09 09:53:00', '2023-05-09 01:53:00', 'https://meet.google.com/tas-trfd-fbj', 'n'),
(24, 117, 55, 'Zeroth class committee meeting', 'dd', '2023-06-08 10:53:00', '2023-06-09 12:55:00', 'https://meet.google.com/tas-trfd-fbj', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `non_instructors`
--

CREATE TABLE `non_instructors` (
  `group_id` int(11) NOT NULL,
  `fac_id` varchar(50) NOT NULL,
  `sem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver_id` varchar(200) NOT NULL,
  `readmsg` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `group_id` int(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `batch` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `access` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `name`, `group_id`, `password`, `email`, `batch`, `year`, `access`) VALUES
('12', 'Athulya', 117, '123', 'athulya@gmail.com', 58, 2023, 'allow');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_chair`
--
ALTER TABLE `cc_chair`
  ADD PRIMARY KEY (`chair_id`),
  ADD KEY `cc_chair_ibfk_2` (`group_id`),
  ADD KEY `fac_id` (`fac_id`);

--
-- Indexes for table `class_instructors`
--
ALTER TABLE `class_instructors`
  ADD PRIMARY KEY (`group_id`,`fac_id`,`course_id`),
  ADD KEY `fac_id` (`fac_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fac_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `fac_id` (`fac_id`);

--
-- Indexes for table `grade_finalizationcc`
--
ALTER TABLE `grade_finalizationcc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `fac_id` (`fac_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `graph`
--
ALTER TABLE `graph`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fac_id` (`fac_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indexes for table `group_details`
--
ALTER TABLE `group_details`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `chair` (`chair`);

--
-- Indexes for table `non_instructors`
--
ALTER TABLE `non_instructors`
  ADD PRIMARY KEY (`group_id`,`fac_id`),
  ADD KEY `fac_id` (`fac_id`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `batch` (`batch`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `cc_chair`
--
ALTER TABLE `cc_chair`
  MODIFY `chair_id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `grade_finalizationcc`
--
ALTER TABLE `grade_finalizationcc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `graph`
--
ALTER TABLE `graph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `group_details`
--
ALTER TABLE `group_details`
  MODIFY `group_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `hod`
--
ALTER TABLE `hod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cc_chair`
--
ALTER TABLE `cc_chair`
  ADD CONSTRAINT `cc_chair_ibfk_3` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cc_chair_ibfk_4` FOREIGN KEY (`group_id`) REFERENCES `group_details` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `class_instructors`
--
ALTER TABLE `class_instructors`
  ADD CONSTRAINT `class_instructors_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_details` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_instructors_ibfk_2` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_instructors_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_details` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `file_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `file_ibfk_3` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grade_finalizationcc`
--
ALTER TABLE `grade_finalizationcc`
  ADD CONSTRAINT `grade_finalizationcc_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grade_finalizationcc_ibfk_2` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grade_finalizationcc_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `group_details` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `graph`
--
ALTER TABLE `graph`
  ADD CONSTRAINT `graph_ibfk_1` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `graph_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `graph_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `group_details` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `graph_ibfk_4` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `group_details`
--
ALTER TABLE `group_details`
  ADD CONSTRAINT `group_details_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meeting`
--
ALTER TABLE `meeting`
  ADD CONSTRAINT `meeting_ibfk_1` FOREIGN KEY (`chair`) REFERENCES `cc_chair` (`chair_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meeting_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `group_details` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `non_instructors`
--
ALTER TABLE `non_instructors`
  ADD CONSTRAINT `non_instructors_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_details` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `non_instructors_ibfk_2` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`fac_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_details` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`batch`) REFERENCES `batch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
