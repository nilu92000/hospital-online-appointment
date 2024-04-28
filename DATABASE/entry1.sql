-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2021 at 05:05 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entry1`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `ticId` varchar(10) NOT NULL,
  `visId` varchar(10) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `empId` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `aptTime` time DEFAULT NULL,
  `inTime` time DEFAULT NULL,
  `outTime` time DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`ticId`, `visId`, `purpose`, `empId`, `date`, `aptTime`, `inTime`, `outTime`, `status`) VALUES
('T1882', 'V9171', 'Training', 'E002', '2021-04-29', '15:52:16', '00:00:00', '00:00:00', 'Approved'),
('T1923', 'tgabbard', 'Coaching', 'E003', '2021-05-13', '12:00:00', '00:00:00', '00:00:00', 'Pending'),
('T1953', 'V5347', 'Training', 'E002', '2021-04-29', '15:55:42', '00:00:00', '00:00:00', 'Pending'),
('T2012', 'V001', 'Visit', 'E001', '2021-04-30', '12:30:00', '10:55:20', '13:00:00', 'Complete'),
('T2048', 'V001', 'Consulting', 'E003', '2021-04-20', '12:00:00', '15:37:26', '12:00:00', 'Complete'),
('T2591', 'E12', 'Regular checkup', 'E001', '2021-07-25', '16:00:00', '00:00:00', '00:00:00', 'Pending'),
('T2884', 'E12', 'Regular checkup', 'E004', '2021-07-23', '17:59:00', '00:00:00', '00:00:00', 'Pending'),
('T2956', 'V6192', 'Purchase', 'E003', '2021-04-24', '20:50:31', '00:00:00', '00:00:00', 'Pending'),
('T5010', 'E12', 'Regular checkup', 'E002', '2021-07-25', '16:00:00', '16:08:04', '00:00:00', 'Ongoing'),
('T5561', 'V001', 'Visit', 'E001', '2021-05-12', '12:00:00', '00:00:00', '00:00:00', 'Pending'),
('T5563', 'V3400', 'Regular checkup', 'E002', '2021-07-22', '16:07:46', '00:00:00', '00:00:00', 'Pending'),
('T5817', 'E143', 'Time Pass', 'E003', '2021-08-04', '11:00:00', '20:49:47', '04:00:00', 'Complete'),
('T5851', 'E12', 'Regular checkup', 'E003', '2021-07-30', '21:00:00', '00:00:00', '00:00:00', 'Pending'),
('T6109', 'V326', 'Training', 'E002', '2021-04-29', '11:49:38', '00:00:00', '00:00:00', 'Pending'),
('T6265', 'V5020', 'Training', 'E002', '2021-05-01', '10:21:44', '00:00:00', '00:00:00', 'Pending'),
('T6864', 'V9154', 'Training', 'E002', '2021-05-01', '10:21:44', '00:00:00', '00:00:00', 'Pending'),
('T6927', 'V3777', 'Visit', 'E002', '2021-04-27', '10:42:29', '00:00:00', '00:00:00', 'Pending'),
('T7984', 'V001', 'Visit', 'E001', '2021-05-12', '12:00:00', '00:00:00', '00:00:00', 'Approved'),
('T9111', 'V7962', 'Consultancy', 'E002', '2021-05-01', '16:13:40', '00:00:00', '00:00:00', 'Pending'),
('T9345', 'V001', 'Visit', 'E002', '2021-04-30', '12:30:00', '00:00:00', '00:00:00', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `id` varchar(6) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`id`, `name`) VALUES
('000', 'Surgery'),
('001', 'Dentistry'),
('002', 'Cardiology'),
('003', 'Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` varchar(6) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `job` varchar(10) DEFAULT NULL,
  `deptId` varchar(6) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `name`, `job`, `deptId`, `password`) VALUES
('E001', 'Amit', 'Sales', '001', 'password'),
('E002', 'Tushar', 'HOD', '002', 'password'),
('E003', 'Prakash', 'DevOps', '001', 'password'),
('E004', 'Mithun', 'Guard', '000', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `photo` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `photo`, `password`) VALUES
('E12', 'Rahul', 'phpBE0A.png', 'password'),
('E143', 'Tash', 'phpAAD5.jpg', 'password'),
('tgabbard', 'Tulsi', 'php1432.jpg', 'test'),
('V001', 'Suraj', 'image.jpg', 'password'),
('V002', 'Roshan', 'image2.jpg', 'password'),
('V003', 'Vivek', 'image3.jpg', 'password'),
('V2878', 'Suraj', 'image4.jpg', 'password'),
('V326', 'Michael', 'image5.jpg', 'password'),
('V3400', 'Rahul', 'php63F3.png', 'password'),
('V3777', 'Vijay', 'image6.jpg', 'password'),
('V5020', 'Cyrus', 'image6.jpg', 'password'),
('V5347', 'Suraj', 'image6.jpg', 'password'),
('V6192', 'Vijay', 'image6.jpg', 'password'),
('V7962', 'Ken', 'php6352.jpg', 'password'),
('V9154', 'Cyrus', 'image6.jpg', 'password'),
('V9171', 'Suraj', 'image6.jpg', 'password');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwapt`
-- (See below for the actual view)
--
CREATE TABLE `vwapt` (
`ticId` varchar(10)
,`visId` varchar(10)
,`vname` varchar(20)
,`photo` varchar(20)
,`purpose` varchar(50)
,`ename` varchar(30)
,`dname` varchar(30)
,`date` date
,`aptTime` time
,`status` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwaptall`
-- (See below for the actual view)
--
CREATE TABLE `vwaptall` (
`ticId` varchar(10)
,`visId` varchar(10)
,`vname` varchar(20)
,`photo` varchar(20)
,`purpose` varchar(50)
,`ename` varchar(30)
,`dname` varchar(30)
,`date` date
,`aptTime` time
,`inTime` time
,`outTime` time
,`status` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwaptin`
-- (See below for the actual view)
--
CREATE TABLE `vwaptin` (
`ticId` varchar(10)
,`visId` varchar(10)
,`vname` varchar(20)
,`photo` varchar(20)
,`purpose` varchar(50)
,`ename` varchar(30)
,`dname` varchar(30)
,`date` date
,`aptTime` time
,`inTime` time
,`status` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwempall`
-- (See below for the actual view)
--
CREATE TABLE `vwempall` (
`id` varchar(6)
,`name` varchar(30)
,`allAppoint` bigint(21)
,`Pending` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `vwapt`
--
DROP TABLE IF EXISTS `vwapt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwapt`  AS SELECT `a`.`ticId` AS `ticId`, `a`.`visId` AS `visId`, `r`.`name` AS `vname`, `r`.`photo` AS `photo`, `a`.`purpose` AS `purpose`, `e`.`name` AS `ename`, `d`.`name` AS `dname`, `a`.`date` AS `date`, `a`.`aptTime` AS `aptTime`, `a`.`status` AS `status` FROM (((`appointment` `a` join `register` `r` on(`a`.`visId` = `r`.`id`)) join `emp` `e` on(`a`.`empId` = `e`.`id`)) join `dept` `d` on(`e`.`deptId` = `d`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vwaptall`
--
DROP TABLE IF EXISTS `vwaptall`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwaptall`  AS SELECT `a`.`ticId` AS `ticId`, `a`.`visId` AS `visId`, `r`.`name` AS `vname`, `r`.`photo` AS `photo`, `a`.`purpose` AS `purpose`, `e`.`name` AS `ename`, `d`.`name` AS `dname`, `a`.`date` AS `date`, `a`.`aptTime` AS `aptTime`, `a`.`inTime` AS `inTime`, `a`.`outTime` AS `outTime`, `a`.`status` AS `status` FROM (((`appointment` `a` join `register` `r` on(`a`.`visId` = `r`.`id`)) join `emp` `e` on(`a`.`empId` = `e`.`id`)) join `dept` `d` on(`e`.`deptId` = `d`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vwaptin`
--
DROP TABLE IF EXISTS `vwaptin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwaptin`  AS SELECT `a`.`ticId` AS `ticId`, `a`.`visId` AS `visId`, `r`.`name` AS `vname`, `r`.`photo` AS `photo`, `a`.`purpose` AS `purpose`, `e`.`name` AS `ename`, `d`.`name` AS `dname`, `a`.`date` AS `date`, `a`.`aptTime` AS `aptTime`, `a`.`inTime` AS `inTime`, `a`.`status` AS `status` FROM (((`appointment` `a` join `register` `r` on(`a`.`visId` = `r`.`id`)) join `emp` `e` on(`a`.`empId` = `e`.`id`)) join `dept` `d` on(`e`.`deptId` = `d`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vwempall`
--
DROP TABLE IF EXISTS `vwempall`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwempall`  AS SELECT `e`.`id` AS `id`, `e`.`name` AS `name`, count(distinct `a`.`ticId`) AS `allAppoint`, count(if(`a`.`status` = 'Pending',1,NULL)) AS `Pending` FROM (`emp` `e` left join `appointment` `a` on(`e`.`id` = `a`.`empId`)) GROUP BY `e`.`id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`ticId`),
  ADD KEY `visId` (`visId`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deptid` (`deptId`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`visId`) REFERENCES `register` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
