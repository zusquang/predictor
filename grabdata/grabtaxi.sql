-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2014 at 01:43 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `grabtaxi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NUMBER_PLATE` varchar(16) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NUMBER_PLATE` (`NUMBER_PLATE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`ID`, `NUMBER_PLATE`, `TYPE`, `ACTIVE`) VALUES
(1, '55X2-3844', 7, 'Y'),
(2, '52X8-4413', 4, 'Y'),
(3, '52X8-3113', 4, 'Y'),
(4, '52X8-3413', 4, 'Y'),
(5, '52X8-9843', 4, 'Y'),
(6, '52X8-3844', 4, 'Y'),
(7, '52X8-4613', 4, 'Y'),
(8, '52X8-6413', 4, 'Y'),
(9, '52X8-6723', 4, 'Y'),
(10, '52X8-5653', 4, 'Y'),
(11, '52X8-4111', 4, 'Y'),
(12, '52X8-8415', 4, 'Y'),
(13, '52X8-3147', 4, 'Y'),
(14, '52X8-4423', 4, 'Y'),
(15, '52X8-6483', 4, 'Y'),
(16, '52X8-6722', 4, 'Y'),
(17, '52X8-1123', 4, 'Y'),
(18, '52X8-5794', 4, 'Y'),
(19, '52X8-1571', 4, 'Y'),
(20, '52X8 -6111', 4, 'Y'),
(21, '52X8-9415', 4, 'Y'),
(22, '52X8-9147', 4, 'Y'),
(23, '52X8-1423', 4, 'Y'),
(24, '52X8-7483', 4, 'Y'),
(25, '52X8-1722', 4, 'Y'),
(26, '52X8-1823', 4, 'Y'),
(27, '52X8-5694', 4, 'Y'),
(28, '52X8-1871', 4, 'Y'),
(29, '52X8-9117', 4, 'Y'),
(30, '52X8-1473', 4, 'Y'),
(31, '52X8-7493', 4, 'Y'),
(32, '52X8-1712', 4, 'Y'),
(33, '52X8-1863', 4, 'Y'),
(34, '52X8-5604', 4, 'Y'),
(35, '52X8-1801', 4, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE IF NOT EXISTS `drivers` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(256) NOT NULL,
  `CAR_ID` int(10) NOT NULL,
  `CURRENT_LOCATION` int(10) NOT NULL,
  `CURRENT_STATUS` int(1) NOT NULL DEFAULT '1' COMMENT '1: FREE     2: BOOKED',
  `ACTIVE` varchar(1) NOT NULL DEFAULT 'Y' COMMENT 'The status of driver.',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`ID`, `NAME`, `CAR_ID`, `CURRENT_LOCATION`, `CURRENT_STATUS`, `ACTIVE`) VALUES
(1, 'Trần Văn Tài', 1, 1, 1, 'Y'),
(2, 'Lê Văn Phụng', 2, 4, 1, 'Y'),
(3, 'Nguyễn Xuân Bách', 3, 7, 1, 'Y'),
(4, 'Trần Hữu Dư', 4, 15, 1, 'Y'),
(5, 'Nguyễn Văn Tùng', 5, 13, 1, 'Y'),
(6, 'Lê Hũu Hưng', 6, 1, 1, 'Y'),
(7, 'Tống Văn Tư', 7, 1, 1, 'Y'),
(8, 'Nguyễn Xuân', 8, 4, 1, 'Y'),
(9, 'Lê Thành Phát', 9, 5, 1, 'Y'),
(10, 'Trần Văn Banh', 10, 4, 1, 'Y'),
(11, 'Nguyễn Văn Phát', 11, 13, 1, 'Y'),
(12, 'Lê Hũu Hưng', 12, 1, 1, 'Y'),
(13, 'Tống Văn Tư', 13, 1, 1, 'Y'),
(14, 'Nguyễn Xuân', 14, 4, 1, 'Y'),
(15, 'Lê Thành Phát', 15, 5, 1, 'Y'),
(16, 'Trần Văn Banh', 16, 4, 1, 'Y'),
(17, 'Lê Hũu Hưng Phát', 17, 1, 1, 'Y'),
(18, 'Tống Văn Thành', 18, 1, 1, 'Y'),
(19, 'Nguyễn Xuân Hùng', 19, 4, 1, 'Y'),
(20, 'Lê Thành Hưng', 20, 5, 1, 'Y'),
(21, 'Trần Văn Lôi', 21, 4, 1, 'Y'),
(22, 'Nguyễn Văn Tế', 22, 13, 1, 'Y'),
(23, 'Lê Hũu Hưng', 23, 1, 1, 'Y'),
(24, 'Trần Văn Lý', 24, 1, 1, 'Y'),
(25, 'Nguyễn Xuân Tư', 25, 4, 1, 'Y'),
(26, 'Lê Thanh Hùng', 26, 5, 1, 'Y'),
(27, 'Trần Chí Thành', 27, 4, 1, 'Y'),
(28, 'Lê Thành Nghĩa', 28, 5, 1, 'Y'),
(29, 'Trần Văn Tấn', 29, 4, 1, 'Y'),
(30, 'Nguyễn Văn Cao', 30, 13, 1, 'Y'),
(31, 'Lê Hũu Thành', 31, 1, 1, 'Y'),
(32, 'Tống Văn Phứoc', 32, 1, 1, 'Y'),
(33, 'Nguyễn Xuân Phong', 33, 4, 1, 'Y'),
(34, 'Lê Thành Phú', 34, 5, 1, 'Y'),
(35, 'Trần Văn Ba', 35, 4, 1, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `driver_logs`
--

CREATE TABLE IF NOT EXISTS `driver_logs` (
  `ID` int(16) NOT NULL AUTO_INCREMENT,
  `DRIVER_ID` int(10) NOT NULL,
  `PASSENGER_ID` int(10) NOT NULL,
  `PICKUP_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `driver_logs`
--

INSERT INTO `driver_logs` (`ID`, `DRIVER_ID`, `PASSENGER_ID`, `PICKUP_AT`) VALUES
(1, 6, 1, '2014-06-19 09:05:03'),
(2, 2, 2, '2014-06-19 11:25:03'),
(3, 17, 3, '2014-06-19 09:05:03'),
(4, 8, 4, '2014-06-19 09:30:03'),
(5, 15, 5, '2014-06-19 06:25:03'),
(6, 4, 6, '2014-06-19 08:02:03'),
(7, 4, 7, '2014-06-19 00:19:03'),
(8, 9, 8, '2014-06-19 09:05:03'),
(9, 11, 9, '2014-06-19 07:06:03'),
(10, 5, 10, '2014-06-19 01:02:03'),
(11, 5, 11, '2014-06-19 09:07:03'),
(12, 9, 12, '2014-06-19 04:42:03'),
(13, 8, 13, '2014-06-19 02:30:00'),
(14, 7, 14, '2014-06-19 14:52:03'),
(15, 30, 15, '2014-06-19 14:52:03'),
(16, 31, 16, '2014-06-19 14:52:03'),
(17, 3, 17, '2014-06-19 04:30:03'),
(18, 10, 18, '2014-06-19 04:32:03'),
(19, 6, 19, '2014-06-19 04:35:03'),
(20, 11, 20, '2014-06-19 12:02:03'),
(21, 17, 21, '2014-06-19 04:19:03'),
(22, 14, 22, '2014-06-19 04:30:00'),
(23, 7, 23, '2014-06-19 04:10:00'),
(24, 5, 24, '2014-06-19 04:08:00'),
(25, 4, 25, '2014-06-19 04:10:00'),
(26, 8, 26, '2014-06-19 04:13:00'),
(27, 2, 27, '2014-06-19 04:17:00'),
(28, 17, 28, '2014-06-19 00:13:00'),
(29, 1, 29, '2014-06-19 04:30:00'),
(30, 1, 30, '2014-06-19 09:47:00'),
(31, 12, 31, '2014-06-19 02:30:00'),
(32, 7, 32, '2014-06-18 22:30:00'),
(33, 31, 33, '2014-06-19 04:30:03'),
(34, 30, 34, '2014-06-19 04:30:00'),
(35, 12, 35, '2014-06-19 04:30:03'),
(36, 17, 36, '2014-06-19 02:13:00'),
(37, 13, 37, '2014-06-19 03:13:03'),
(38, 6, 38, '2014-06-19 02:13:00'),
(39, 30, 39, '2014-06-19 10:30:03'),
(40, 31, 40, '2014-06-19 11:14:00'),
(41, 16, 41, '2014-06-19 11:40:03'),
(42, 20, 42, '2014-06-19 11:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AREA` varchar(256) NOT NULL,
  `ADDRESS` varchar(512) NOT NULL COMMENT 'The address for this area',
  `NOD` int(5) NOT NULL COMMENT 'The driver number as default',
  `ACTIVE` varchar(1) NOT NULL DEFAULT 'Y' COMMENT 'The status for area',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`ID`, `AREA`, `ADDRESS`, `NOD`, `ACTIVE`) VALUES
(1, 'Sân bay Tân Sân Nhất', '', 120, 'Y'),
(2, 'Nhà thờ Đức Bà', '', 30, 'Y'),
(3, 'Ga Sài Gòn', '', 40, 'Y'),
(4, 'Bệnh viện Chợ Rẫy', '', 120, 'Y'),
(5, 'Bệnh viện Nguyễn Trãi', '', 25, 'Y'),
(6, 'Công viên nuớc Đầm Sen', '', 50, 'Y'),
(7, 'Khu du lịch Suối Tiên', '', 30, 'Y'),
(8, 'Nhà hát TPHCM', '', 10, 'Y'),
(9, 'Bến Bạch Đằng', '', 20, 'Y'),
(10, 'Cầu Khánh Hội', '', 30, 'Y'),
(11, 'Bệnh viện Nhi Đồng I', '', 60, 'Y'),
(12, 'Bệnh viện Nhi Đồng II', '', 60, 'Y'),
(13, 'Trừong ĐH Sư Phạm Kỹ Thuật TPHCM', '', 60, 'Y'),
(14, 'Toà nhà Vincom TPHCM', '', 10, 'Y'),
(15, 'Diamond Plaza', '', 20, 'Y'),
(16, 'Hùng Vương Plaza', '', 30, 'Y'),
(17, 'Công viên Thỏ Trắng – Lê Thị Riêng', '', 10, 'Y'),
(18, 'Dinh Thống Nhất', '', 10, 'Y'),
(19, 'Rex Hotel', '', 10, 'Y'),
(20, 'Chợ Bến Thành', '', 30, 'Y'),
(21, 'Chợ Bà Chiểu', '', 10, 'Y'),
(22, 'White Restaurant', '', 5, 'Y'),
(23, 'Trừong ĐH Nông Lâm', '', 10, 'Y'),
(24, 'Tokyo Deli Restaurant', '', 2, 'Y'),
(25, 'Công viên 3/2', '', 8, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE IF NOT EXISTS `passengers` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(256) NOT NULL,
  `PHONE` varchar(16) NOT NULL COMMENT 'The passenger phone number',
  `LOCATION` int(10) NOT NULL,
  `DESTINATION` int(10) NOT NULL,
  `BOOK_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CURRENT_STATUS` int(1) NOT NULL COMMENT '1: BOOKING   2: BE SERVICED',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`ID`, `NAME`, `PHONE`, `LOCATION`, `DESTINATION`, `BOOK_TIME`, `CURRENT_STATUS`) VALUES
(1, 'Trần Văn Sơn', '', 2, 16, '2014-06-19 08:48:00', 2),
(2, 'Trần Văn Út', '', 2, 14, '2014-06-19 11:19:03', 2),
(3, 'Trần Văn Tân', '', 7, 12, '2014-06-19 09:00:00', 2),
(4, 'Trần Sơn Thành', '', 4, 15, '2014-06-19 09:20:00', 2),
(5, 'Lê Văn Sơn', '', 2, 15, '2014-06-19 06:20:00', 2),
(6, 'Cao Sơn Tùng', '', 1, 15, '2014-06-19 07:48:00', 2),
(7, 'Trần Hoàng', '', 8, 11, '2014-06-19 00:00:00', 2),
(8, 'Nguyễn Thư', '', 8, 12, '2014-06-19 09:00:00', 2),
(9, 'Võ Văn Tư', '', 4, 25, '2014-06-19 07:00:00', 2),
(10, 'Trần Văn Quý', '', 2, 22, '2014-06-19 00:45:00', 2),
(11, 'Trần Văn Hòa', '', 2, 19, '2014-06-19 08:00:00', 2),
(12, 'Trần Văn Tiêu', '', 4, 18, '2014-06-19 04:30:00', 2),
(13, 'Trần Văn Luân', '', 5, 18, '2014-06-19 02:16:00', 2),
(14, 'Trần Văn Tân', '', 1, 15, '2014-06-19 14:45:03', 2),
(15, 'Trần Văn Lâm', '', 1, 12, '2014-06-19 14:45:03', 2),
(16, 'Trần Văn Tuyến', '', 2, 15, '2014-06-19 14:45:03', 2),
(17, 'Trần Văn Thi', '', 1, 13, '2014-06-19 04:23:03', 2),
(18, 'Trần Văn Tế', '', 2, 16, '2014-06-19 04:22:03', 2),
(19, 'Lê Văn Út', '', 2, 14, '2014-06-19 04:27:03', 2),
(20, 'Phạm Văn Tân', '', 7, 12, '2014-06-19 11:45:03', 2),
(21, 'Tống Sơn Thành', '', 4, 15, '2014-06-19 04:15:03', 2),
(22, 'Nguyễn Văn Sơn', '', 2, 15, '2014-06-19 04:05:03', 2),
(23, 'Cao Thanh Tùng', '', 1, 15, '2014-06-19 04:05:03', 2),
(24, 'Nguyễn Hoàng', '', 8, 11, '2014-06-19 04:05:03', 2),
(25, 'Nguyễn Thư Thanh', '', 8, 12, '2014-06-19 04:05:03', 2),
(26, 'Lê Văn Tư', '', 4, 25, '2014-06-19 04:05:03', 2),
(27, 'Cao Văn Quý', '', 2, 22, '2014-06-19 04:05:03', 2),
(28, 'Trần Văn Hòa', '', 2, 19, '2014-06-19 00:05:03', 2),
(29, 'Phạm Văn Tiêu', '', 4, 18, '2014-06-19 04:15:03', 2),
(30, 'Cao Văn Luân', '', 5, 18, '2014-06-19 09:30:03', 2),
(31, 'Lê Văn Tân', '', 1, 15, '2014-06-19 02:20:00', 2),
(32, 'Võ Văn Lâm', '', 1, 12, '2014-06-18 22:20:00', 2),
(33, 'Ngô Văn Tuyến', '', 2, 15, '2014-06-19 04:20:03', 2),
(34, 'Phạm Văn Thi', '', 1, 13, '2014-06-19 04:20:00', 2),
(35, 'Cao Thanh Mai', '', 1, 15, '2014-06-19 04:15:03', 2),
(36, 'Nguyễn Hoàng Nhân', '', 8, 11, '2014-06-19 02:05:03', 2),
(37, 'Nguyễn Thư  Tuyền', '', 8, 12, '2014-06-19 03:05:03', 2),
(38, 'Lê Văn Lanh', '', 4, 25, '2014-06-19 02:05:03', 2),
(39, 'Cao Văn Lầu', '', 2, 22, '2014-06-19 10:15:03', 2),
(40, 'Trần Văn Xuân', '', 2, 19, '2014-06-19 11:05:03', 2),
(41, 'Phạm Văn Tiến', '', 4, 18, '2014-06-19 11:30:03', 2),
(42, 'Cao Văn Phạm', '', 5, 18, '2014-06-19 11:15:03', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
