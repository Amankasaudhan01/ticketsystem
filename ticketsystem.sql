-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 06:01 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust`
--

CREATE TABLE `cust` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cust`
--

INSERT INTO `cust` (`id`, `name`, `city`) VALUES
(1, 'Ankur', 'Noida1'),
(2, 'Ankur', 'Noida');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `empid` int(4) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(10) NOT NULL,
  `department` varchar(10) NOT NULL,
  `system` int(4) NOT NULL,
  `designation` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`empid`, `name`, `department`, `system`, `designation`) VALUES
(0001, 'ankur', 'tecg', 1, 'supervisor'),
(0002, 'devendra', 'technical', 2, 'superviser'),
(0003, 'aman', 'technical', 5, 'employe'),
(0004, 'priyanshi', 'technical', 10, 'employe');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `empid` int(4) UNSIGNED ZEROFILL NOT NULL,
  `password` varchar(10) NOT NULL,
  `designation` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`empid`, `password`, `designation`) VALUES
(0001, '123', 'supervisor'),
(0002, '123', 'superviser'),
(0003, '123', 'employe'),
(0004, '123', 'superviser');

-- --------------------------------------------------------

--
-- Table structure for table `logtable`
--

CREATE TABLE `logtable` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `ticketid` int(5) UNSIGNED ZEROFILL NOT NULL,
  `issue` varchar(10) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `assignedgrp` varchar(10) DEFAULT NULL,
  `assignedofficer` varchar(10) DEFAULT NULL,
  `remarks` varchar(25) NOT NULL,
  `updatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logtable`
--

INSERT INTO `logtable` (`id`, `ticketid`, `issue`, `priority`, `status`, `assignedgrp`, `assignedofficer`, `remarks`, `updatetime`) VALUES
(000001, 00001, '', '1-sever', 'new', '', '', '', '0000-00-00 00:00:00'),
(000002, 00001, 'Hardware', '4-low', 'in progres', 'hardware t', 'dev', 'officer has been assigned', '2009-02-23 03:09:56'),
(000003, 00008, 'Hardware', '4-low', 'in progres', 'hardware t', 'dev', 'officer has been assigned', '2009-02-23 03:13:01'),
(000004, 00009, 'software', '2', 'new', 'vgj', 'vj,.j', 'hndj', '2009-02-23 04:24:27'),
(000005, 00009, 'software', '2', 'new', 'vgj', 'vj,.j', 'hckfh', '2009-02-23 04:25:56'),
(000006, 00009, 'software', '2', 'inprocess', 'vgj', 'vj,.j', 'llm', '2009-02-23 04:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticketid` int(5) UNSIGNED ZEROFILL NOT NULL,
  `empid` int(4) UNSIGNED ZEROFILL NOT NULL,
  `issue` varchar(10) DEFAULT NULL,
  `description` varchar(25) DEFAULT NULL,
  `priority` int(11) DEFAULT 1,
  `status` varchar(10) DEFAULT NULL,
  `assignedgrp` varchar(10) DEFAULT NULL,
  `assignedofficer` varchar(10) DEFAULT NULL,
  `created on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticketid`, `empid`, `issue`, `description`, `priority`, `status`, `assignedgrp`, `assignedofficer`, `created on`) VALUES
(00001, 0001, 'Hardware', 'keyboard not working', 4, 'in progres', 'hardware t', 'dev', '2023-02-09 15:09:56'),
(00002, 0001, 'software', 'sutting down', 1, 'new', '', '', NULL),
(00003, 0001, 'harware', 'nned pendrive', 3, 'new', ' ', '', '2023-02-07 00:00:00'),
(00007, 0001, 'hardware', '	', 1, 'new', '', '', '2007-02-23 04:14:18'),
(00008, 0003, 'Hardware', 'mouse not working', 4, 'in progres', 'hardware t', 'dev', '2023-02-09 15:13:01'),
(00009, 0004, 'software', 'unable to log in', 2, 'inprocess', 'vgj', 'vj,.j', '2009-02-23 03:51:36'),
(00010, 0004, 'hardware', 'vjvhj', 4, 'new', '', '', '2009-02-23 04:01:56'),
(00011, 0004, 'hardware', 'gvjg', 4, 'new', '', '', '2023-02-09 16:08:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust`
--
ALTER TABLE `cust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `logtable`
--
ALTER TABLE `logtable`
  ADD PRIMARY KEY (`id`,`ticketid`),
  ADD KEY `ForeignKey1` (`ticketid`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketid`,`empid`),
  ADD KEY `empid` (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust`
--
ALTER TABLE `cust`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `empid` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logtable`
--
ALTER TABLE `logtable`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticketid` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `ForeignKey` FOREIGN KEY (`empid`) REFERENCES `employe` (`empid`);

--
-- Constraints for table `logtable`
--
ALTER TABLE `logtable`
  ADD CONSTRAINT `ForeignKey1` FOREIGN KEY (`ticketid`) REFERENCES `ticket` (`ticketid`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `login` (`empid`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`empid`) REFERENCES `employe` (`empid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
