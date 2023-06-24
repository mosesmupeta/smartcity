-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 24, 2023 at 10:43 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysmartcity`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 973204432, 'mupetaspence@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-06-23 12:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblbin`
--

DROP TABLE IF EXISTS `tblbin`;
CREATE TABLE IF NOT EXISTS `tblbin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BinID` varchar(50) DEFAULT NULL,
  `Area` varchar(250) DEFAULT NULL,
  `Locality` varchar(250) DEFAULT NULL,
  `Landmark` varchar(250) DEFAULT NULL,
  `LoadType` varchar(100) DEFAULT NULL,
  `CyclePeriod` varchar(100) DEFAULT NULL,
  `Address` mediumtext,
  `DriverAssignee` varchar(150) DEFAULT NULL,
  `AssignDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbin`
--

INSERT INTO `tblbin` (`ID`, `BinID`, `Area`, `Locality`, `Landmark`, `LoadType`, `CyclePeriod`, `Address`, `DriverAssignee`, `AssignDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 'Bin-123', 'Amarpalii Sadan', 'Hazirpur', 'near gomti river', 'Medium', 'Alternate', 'hjkhjkdhjkbvuit\r\nyivrtyiureyruvityiuy', 'vams123', '2022-07-18 11:05:10', 'Garbage collected', 'Completed', '2022-07-27 06:30:00'),
(2, 'B-123', 'gjhg', 'jhghj', 'jhgjhg', 'High', 'Daily', 'jkhkj', 'vams123', '2022-07-18 11:06:27', 'completed', 'Completed', '2022-07-27 10:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomtracking`
--

DROP TABLE IF EXISTS `tblcomtracking`;
CREATE TABLE IF NOT EXISTS `tblcomtracking` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ComplainNumber` int DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomtracking`
--

INSERT INTO `tblcomtracking` (`ID`, `ComplainNumber`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, 526529361, 'Assign to driver', 'Approved', '2022-07-25 14:03:07'),
(2, 526529361, 'Driver is on the way', 'On the way', '2022-07-26 11:57:34'),
(3, 526529361, 'On the way', 'On the way', '2022-07-26 12:06:36'),
(4, 526529361, 'Completed', 'Completed', '2022-07-26 12:10:31'),
(5, 699612318, 'your complain hass been approved', 'Approved', '2022-07-27 10:42:01'),
(6, 699612318, 'On the way for collecting the garbage', 'On the way', '2022-08-14 06:18:28'),
(7, 792381847, 'Assign to driver', 'Approved', '2022-08-14 12:21:18'),
(8, 792381847, 'On the way for pickup garbage', 'On the way', '2022-08-14 12:22:54'),
(9, 792381847, 'Completed', 'Completed', '2022-08-14 12:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbldriver`
--

DROP TABLE IF EXISTS `tbldriver`;
CREATE TABLE IF NOT EXISTS `tbldriver` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DriverID` varchar(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbldriver`
--

INSERT INTO `tbldriver` (`ID`, `DriverID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`) VALUES
(1, 'vams123', 'TEST', 4654654654, 'rahul123@gmail.com', 'J-234, near reliance mayur vihar new delhi', 'f925916e2754e5e03f75dd58a5733251', '2022-07-01 13:29:39'),
(2, 'vams124', 'Test', 9879879879, 'kai@gmail.com', 'H-987, Hari Nagar Delhi', '202cb962ac59075b964b07152d234b70', '2022-07-01 05:57:02'),
(4, 'vams125', 'Mahesh Kumar', 9879789799, 'mahesh@gmail.com', 'hkjhjkhkjhuyifhkjwehfk\r\njkljkljrkawteae5t', '202cb962ac59075b964b07152d234b70', '2022-07-05 05:19:18'),
(6, 'test123', 'John Dore', 1234567890, 'johndoe@gmail.com', 'New Delhi 110001', 'f925916e2754e5e03f75dd58a5733251', '2022-07-19 17:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbllodgedcomplain`
--

DROP TABLE IF EXISTS `tbllodgedcomplain`;
CREATE TABLE IF NOT EXISTS `tbllodgedcomplain` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `ComplainNumber` int DEFAULT NULL,
  `Area` varchar(250) DEFAULT NULL,
  `Locality` varchar(250) DEFAULT NULL,
  `Landmark` varchar(250) DEFAULT NULL,
  `Address` mediumtext,
  `Photo` varchar(250) DEFAULT NULL,
  `Note` mediumtext,
  `ComplainDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `AssignTo` varchar(100) DEFAULT NULL,
  `AssignDate` date DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllodgedcomplain`
--

INSERT INTO `tbllodgedcomplain` (`ID`, `UserID`, `ComplainNumber`, `Area`, `Locality`, `Landmark`, `Address`, `Photo`, `Note`, `ComplainDate`, `Remark`, `Status`, `AssignTo`, `AssignDate`, `UpdationDate`) VALUES
(1, 1, 526529361, 'Mayur Vihar Phase 3', 'Hari Kunj', 'near relaince fresh', 'Urvarshi Apartment\r\nJ&J-806\r\nmayur vihar ph-3', '07c17b1eaf2560b85252e48de9ba4efd1658493045.jpg', NULL, '2022-07-22 12:30:45', 'Completed', 'Completed', 'vams123', '2022-07-26', '2022-07-27 10:43:11'),
(2, 2, 699612318, 'Kalyanpuri', 'jgjhghjgjhg', 'nera oppulent mall', 'K-0890, fghy,\r\nuytu,New Delhi', '006d51ca52039abf7231ba02bba35d681658493414.jpg', 'There is more than one week no one come to pic this garbage', '2022-07-22 12:36:54', 'On the way for collecting the garbage', 'On the way', 'vams123', '2022-07-27', '2022-08-14 06:18:28'),
(3, 2, 526529312, 'Mayur Vihar Phase 3', 'Hari Kunj', 'near relaince fresh', 'Urvarshi Apartment\r\nJ&J-806\r\nmayur vihar ph-3', '07c17b1eaf2560b85252e48de9ba4efd1658493045.jpg', NULL, '2022-07-22 12:30:45', 'Completed', 'Completed', 'vams123', '2022-07-26', '2022-07-27 10:43:16'),
(4, 3, 792381847, 'XYZ Street', 'ABC Locality', 'NA', 'A1232 Secor 5 Noida', '2c9e7ec0fc8c2cfbb3828177e70dfe1a1660479585.png', 'NA', '2022-08-14 12:19:45', 'Completed', 'Completed', 'vams123', '2022-08-14', '2022-08-14 12:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;color:black;mso-color-alt:=\"\" windowtext;mso-fareast-language:#2000;font-style:normal\"=\"\">\"Waste Management\r\nSystem \"&nbsp;</span><span style=\"font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;mso-fareast-language:#2000;=\"\" font-style:normal\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;color:black;mso-color-alt:=\"\" windowtext;mso-fareast-language:#2000;font-style:normal\"=\"\">My Smartcity is a\r\nwaste management app, designed to streamline your waste disposal process and\r\npromote sustainability. Packed with a range of useful features, our app aims to\r\nmake waste management easier and more efficient than ever before</span><span style=\"font-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-theme-font:minor-bidi;mso-fareast-language:#2000;font-style:normal\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;=\"\" mso-hansi-theme-font:minor-latin;mso-bidi-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-theme-font:minor-bidi;font-style:normal\"=\"\">&nbsp;</span></p></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'Plot 20, Woodlands\r\nLusaka, Zambia.', 'mupetaspence@gmail.com', 973204432, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

DROP TABLE IF EXISTS `tbltracking`;
CREATE TABLE IF NOT EXISTS `tbltracking` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BinID` varchar(250) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `BinID`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 'Bin-123', 'on the way', 'On The Way', '2022-07-27 10:54:01'),
(2, 'Bin-123', 'Garbage collected', 'Completed', '2022-07-27 10:53:56'),
(3, 'B-123', 'otw', 'On The Way', '2022-07-27 10:53:22'),
(4, 'B-123', 'completed', 'Completed', '2022-07-27 10:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(250) DEFAULT NULL,
  `UserName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `UserName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(3, 'user 1', 'user', 1231231230, 'user@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-08-14 12:18:44');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
