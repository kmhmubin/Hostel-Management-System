-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 11:42 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `serial` int(11) NOT NULL,
  `userId` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `isAbsence` varchar(3) NOT NULL,
  `isLeave` varchar(3) NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`serial`, `userId`, `date`, `isAbsence`, `isLeave`, `remark`) VALUES
(0, 'U002', '2019-04-24', 'No', 'No', 'Self'),
(0, 'U003', '2019-04-24', 'No', 'No', 'self'),
(0, 'U001', '2019-04-24', 'NO', 'No', 'SELF');

-- --------------------------------------------------------

--
-- Table structure for table `auto_id`
--

CREATE TABLE `auto_id` (
  `serial` int(11) NOT NULL,
  `prefix` varchar(10) NOT NULL,
  `number` int(11) NOT NULL,
  `description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auto_id`
--

INSERT INTO `auto_id` (`serial`, `prefix`, `number`, `description`) VALUES
(1, 'UG', 1, 'User Group Id'),
(2, 'U', 12, 'User Id'),
(3, 'EMP', 5, 'Employee Id'),
(4, 'BL', 6, 'Block Id'),
(5, 'RM', 7, 'Room Number'),
(6, 'BIL', 10, 'Billing Id');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billId` varchar(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `billTo` varchar(80) NOT NULL,
  `billingDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billId`, `type`, `amount`, `billTo`, `billingDate`) VALUES
('BIL001', 'Wifi', '1000.00', 'U008', '2019-04-24'),
('BIL001', 'Meal Cost Aprill', '2000.00', 'U009', '2019-04-24'),
('BIL001', 'Rent', '7500.00', 'U009', '2019-04-24'),
('BIL001', 'tv disc bill', '200.00', 'U009', '2019-04-24'),
('BIL001', 'Paper', '90.00', 'U009', '2019-04-24'),
('BIL001', 'Boishak Clelabration', '450.00', 'U001', '2019-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `blockId` varchar(10) NOT NULL,
  `blockNo` varchar(10) NOT NULL,
  `blockName` varchar(30) NOT NULL,
  `description` varchar(80) NOT NULL,
  `isActive` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`blockId`, `blockNo`, `blockName`, `description`, `isActive`) VALUES
('', 'BL-01', 'First Block', 'East Side', 'Y'),
('2', 'BL-02', 'Second Block', 'West Side', 'Y'),
('3', 'BL-03', 'Third Block', 'North Side', 'Y'),
('4', 'BL-04', 'Fourth Block', 'South Side', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `serial` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`serial`, `type`, `amount`, `date`, `description`) VALUES
(6, 'Grocery ', '500.00', '2019-04-23', 'Items of food sold in a grocery or supermarket.'),
(7, 'Internet Bill', '5000.00', '2019-04-23', 'Full Hostel Net Bill'),
(8, 'TV ', '1000.00', '2019-04-23', 'Monthly Full Hostel Dish BIll');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `serial` int(11) NOT NULL,
  `userId` varchar(10) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `depositDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`serial`, `userId`, `amount`, `depositDate`) VALUES
(1, 'U001', '16000.00', '2019-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `serial` int(11) NOT NULL,
  `empId` varchar(10) NOT NULL,
  `userGroupId` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `empType` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `cellNo` varchar(15) NOT NULL,
  `address` varchar(150) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `salary` decimal(18,2) NOT NULL,
  `blockNo` varchar(10) NOT NULL,
  `isActive` varchar(1) NOT NULL,
  `perPhoto` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`serial`, `empId`, `userGroupId`, `name`, `empType`, `gender`, `dob`, `cellNo`, `address`, `doj`, `designation`, `salary`, `blockNo`, `isActive`, `perPhoto`) VALUES
(1, 'EMP001', 'UG001', 'Mr. Fun', 'Care Taker', 'Male', '1995-06-20', '01710123456', ' Dhanmoni,Dahaka-1207', '2019-04-24', 'Asistant Care', '9000.00', 'BL-01', 'Y', 'EMP001.png'),
(2, 'EMP002', 'UG002', 'Mr. Funta ', 'Cook', 'Male', '1994-06-14', '01720123456', ' Shukrabad-1207', '2019-04-24', 'Cook', '7000.00', 'BL-01', 'Y', 'EMP002.png');

-- --------------------------------------------------------

--
-- Table structure for table `feesinfo`
--

CREATE TABLE `feesinfo` (
  `serial` int(11) NOT NULL,
  `type` varchar(80) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `amount` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feesinfo`
--

INSERT INTO `feesinfo` (`serial`, `type`, `description`, `amount`) VALUES
(12, 'Wi-FI', 'Internet ', '1000.00'),
(13, 'TV', 'Dish Bill', '300.00'),
(14, 'Newspaper', 'Daily Newspaper Monthly Bill', '90.00');

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

CREATE TABLE `meal` (
  `serial` int(11) NOT NULL,
  `userId` varchar(10) NOT NULL,
  `noOfMeal` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`serial`, `userId`, `noOfMeal`, `date`) VALUES
(1, 'U001', 3, '2019-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `mealrate`
--

CREATE TABLE `mealrate` (
  `rate` decimal(18,2) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mealrate`
--

INSERT INTO `mealrate` (`rate`, `note`) VALUES
('1200.00', 'April Meal Bill');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `serial` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`serial`, `title`, `description`, `createdDate`) VALUES
(8, 'Pohela Boishak Celebration', 'Pohela Boishak Celebration, panta vat, mala,etc', '2019-04-23 22:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `serial` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `paymentTo` varchar(100) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `paymentBy` varchar(50) NOT NULL,
  `paymentDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`serial`, `description`, `paymentTo`, `amount`, `paymentBy`, `paymentDate`) VALUES
(2, 'Hostel Equipment(TV)', 'Mr.PI', '4000.00', 'Cash', '2019-04-24'),
(3, 'Paper Bill', 'Mr.ANSI', '5500.00', 'Cash', '2019-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `roomId` varchar(10) NOT NULL,
  `roomNo` varchar(20) NOT NULL,
  `blockId` varchar(10) NOT NULL,
  `noOfSeat` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `isActive` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`roomId`, `roomNo`, `blockId`, `noOfSeat`, `description`, `isActive`) VALUES
('1', 'RM-01', 'BL-01', 4, 'Four beds with a varanda', 'Y'),
('10', 'RM-10', 'BL-04', 1, 'Single Bed with AC', 'Y'),
('2', 'RM-02', 'BL-01', 4, '4 beds with a varanda', 'Y'),
('3', 'RM-03', 'BL-01', 4, '4 beds with a varanda', 'Y'),
('4', 'RM-04', 'BL-01', 4, '4 beds with a varanda', 'Y'),
('5', 'RM-05', 'BL-02', 2, '2 beds', 'Y'),
('6', 'RM-06', 'BL-02', 2, '2 beds', 'Y'),
('7', 'RM-07', 'BL-03', 3, '3 beds with open window', 'Y'),
('8', 'RM-08', 'BL-03', 3, '3 beds with open window', 'y'),
('9', 'RM-09', 'BL-04', 1, 'Single Bed with AC', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `serial` int(11) NOT NULL,
  `empId` varchar(10) NOT NULL,
  `monthYear` varchar(30) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `addedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`serial`, `empId`, `monthYear`, `amount`, `addedDate`) VALUES
(1, 'EMP001', 'January-2019', '9000.00', '2019-02-27'),
(2, 'EMP002', 'January-2019', '7000.00', '2019-02-27'),
(3, 'EMP001', 'February-2019', '9000.00', '2019-02-27'),
(4, 'EMP002', 'February-2019', '7000.00', '2019-02-27');

-- --------------------------------------------------------

--
-- Table structure for table `seataloc`
--

CREATE TABLE `seataloc` (
  `userId` varchar(10) NOT NULL,
  `roomNo` varchar(10) NOT NULL,
  `blockNo` varchar(30) NOT NULL,
  `monthlyRent` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seataloc`
--

INSERT INTO `seataloc` (`userId`, `roomNo`, `blockNo`, `monthlyRent`) VALUES
('U001', 'RM-01', 'BL-01', '7500.00');

-- --------------------------------------------------------

--
-- Table structure for table `stdpayment`
--

CREATE TABLE `stdpayment` (
  `serial` int(11) NOT NULL,
  `userId` varchar(10) NOT NULL,
  `paymentBy` varchar(50) NOT NULL,
  `transNo` varchar(50) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `transDate` date NOT NULL,
  `remark` varchar(50) NOT NULL,
  `isApprove` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stdpayment`
--

INSERT INTO `stdpayment` (`serial`, `userId`, `paymentBy`, `transNo`, `amount`, `transDate`, `remark`, `isApprove`) VALUES
(1, 'U001', 'DBBL', '+8801755305154', '6000.00', '2019-02-26', 'Feb,2019 Bill', 'Yes'),
(2, 'U001', 'Bank', 'DD-4556', '5500.00', '2019-02-27', 'test', 'Yes'),
(3, 'U001', 'Bkash', '0185236974', '16000.00', '2019-04-17', 'all cost rent meal,net,tv', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `serial` int(11) NOT NULL,
  `userId` varchar(10) NOT NULL,
  `userGroupId` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `studentId` varchar(15) NOT NULL,
  `cellNo` varchar(15) NOT NULL,
  `email` varchar(80) NOT NULL,
  `nameOfInst` varchar(100) NOT NULL,
  `program` varchar(80) NOT NULL,
  `batchNo` varchar(10) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `dob` date NOT NULL,
  `bloodGroup` varchar(5) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `nationalId` varchar(20) DEFAULT NULL,
  `passportNo` varchar(20) DEFAULT NULL,
  `fatherName` varchar(50) NOT NULL,
  `motherName` varchar(50) NOT NULL,
  `fatherCellNo` varchar(15) NOT NULL,
  `motherCellNo` varchar(15) NOT NULL,
  `localGuardian` varchar(50) NOT NULL,
  `localGuardianCell` varchar(15) NOT NULL,
  `presentAddress` varchar(150) NOT NULL,
  `parmanentAddress` varchar(150) NOT NULL,
  `perPhoto` varchar(20) NOT NULL,
  `admitDate` date NOT NULL,
  `isActive` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`serial`, `userId`, `userGroupId`, `name`, `studentId`, `cellNo`, `email`, `nameOfInst`, `program`, `batchNo`, `gender`, `dob`, `bloodGroup`, `nationality`, `nationalId`, `passportNo`, `fatherName`, `motherName`, `fatherCellNo`, `motherCellNo`, `localGuardian`, `localGuardianCell`, `presentAddress`, `parmanentAddress`, `perPhoto`, `admitDate`, `isActive`) VALUES
(10, '', 'UG004', 'Iron Man', '191111', '017899464', 'ironman@hotmail.com', 'Faltu College', 'Undergraduate', '2019', 'Male', '1998-03-12', 'A(+)', 'Bangladeshi', '99631646431456316341', '6546476464794641945', 'Iron Man Senior', 'Iron Woman', '018746164644', '014966166644', 'Javis', '1346649416', 'Uttara,Dhaka', 'UK', '.jpg', '2019-04-23', 'Y'),
(2, 'U002', 'UG004', 'Bat Man', '151-15-1155', '+8801755000002', 'rasel@gmail.com', 'Faul University', 'CSE', '34', 'Male', '1994-06-14', 'AB(+)', 'Bangladeshi', 'N/A', 'N/A', 'Mr. Father', '+8801722000000', 'Mst. Mother', '+8801722000005', 'Mr. Local Boy', '+8801722000001', ' Uttara ', 'Dhanmondi,Dhaka-1207', 'ST002.jpg', '2019-04-24', 'Y'),
(3, 'U003', 'UG004', 'Robin Hood', '151-15-1122', '+881722545660', 'zahidul@gmail.com', 'DIU', 'CSE', '34', 'Male', '2005-07-13', 'O(+)', 'Bangladeshi', 'N/A', 'N/A', 'Mr. Father', 'Mst Mother', '+8801710565958', '+8801710565958', 'Mr Local boy', '+8801710565960', ' Uttara', ' MOhakali', 'ST003.jpg', '2019-04-24', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `timeset`
--

CREATE TABLE `timeset` (
  `inTime` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `outTime` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timeset`
--

INSERT INTO `timeset` (`inTime`, `outTime`) VALUES
('06:00 AM', '06:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

CREATE TABLE `usergroup` (
  `serial` int(11) NOT NULL,
  `id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usergroup`
--

INSERT INTO `usergroup` (`serial`, `id`, `name`, `description`) VALUES
(1, 'UG001', 'Admin', 'System Admin'),
(2, 'UG002', 'Supervisor', 'Hostel Supervisor'),
(3, 'UG003', 'Employee', 'Group of Employees'),
(4, 'UG004', 'Student', 'Students Group');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `serial` int(11) NOT NULL,
  `userId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `userGroupId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `loginId` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `verifyCode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `expireDate` date NOT NULL,
  `isVerifed` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`serial`, `userId`, `userGroupId`, `name`, `loginId`, `password`, `verifyCode`, `expireDate`, `isVerifed`) VALUES
(1, 'U001', 'UG001', 'System Admin', 'Admin', '5f4dcc3b5aa765d61d8327deb882cf99', 'hello nigg', '2999-12-12', 'y'),
(2, 'U002', 'UG002', 'SuperMan', 'Supervisor', '09348c20a019be0318387c08df7a783d', 'yo nigga', '2022-12-13', 'y'),
(3, 'U003', 'UG003', 'Holy Man', 'Employee', 'fa5473530e4d1a5a1e1eb53d2fedb10c', 'holy nigga', '2024-01-03', 'y'),
(4, 'U004', 'UG004', 'Lord of the Jinx', 'Student', 'cd73502828457d15655bbd7a63fb0bc8', 'lord nigga', '2021-07-15', 'y'),
(16, '', 'UG004', 'Iron Man', '191111', '0d94d92e3dc096f64213a5b34fa9d098', 'lord nigga', '2021-07-15', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_id`
--
ALTER TABLE `auto_id`
  ADD UNIQUE KEY `serial` (`serial`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`blockId`),
  ADD UNIQUE KEY `blockId` (`blockId`);

--
-- Indexes for table `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empId`),
  ADD UNIQUE KEY `serial` (`serial`),
  ADD UNIQUE KEY `cellNo` (`cellNo`);

--
-- Indexes for table `feesinfo`
--
ALTER TABLE `feesinfo`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`serial`),
  ADD UNIQUE KEY `serial` (`serial`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`roomId`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `seataloc`
--
ALTER TABLE `seataloc`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `stdpayment`
--
ALTER TABLE `stdpayment`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `studentinfo`
--
ALTER TABLE `studentinfo`
  ADD PRIMARY KEY (`userId`,`serial`),
  ADD UNIQUE KEY `serial` (`serial`),
  ADD UNIQUE KEY `userId` (`userId`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cellNo` (`cellNo`);

--
-- Indexes for table `usergroup`
--
ALTER TABLE `usergroup`
  ADD UNIQUE KEY `serial` (`serial`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`serial`),
  ADD UNIQUE KEY `serial` (`serial`),
  ADD UNIQUE KEY `serial_2` (`serial`),
  ADD UNIQUE KEY `serial_3` (`serial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_id`
--
ALTER TABLE `auto_id`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cost`
--
ALTER TABLE `cost`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feesinfo`
--
ALTER TABLE `feesinfo`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `meal`
--
ALTER TABLE `meal`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stdpayment`
--
ALTER TABLE `stdpayment`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `studentinfo`
--
ALTER TABLE `studentinfo`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
