-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2020 at 07:36 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `veternary_pharma`
--
CREATE DATABASE IF NOT EXISTS `veternary_pharma` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `veternary_pharma`;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `bill_id` int(20) NOT NULL AUTO_INCREMENT,
  `bill_date` varchar(30) NOT NULL,
  `reg_id` int(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `bill_date`, `reg_id`, `status`) VALUES
(1, '2020-02-29', 29, 'paid'),
(2, '29-02-2020', 0, ''),
(3, '29-02-2020', 0, 'pending'),
(4, '01-03-2020', 0, 'pending'),
(5, '01-03-2020', 29, 'paid'),
(6, '08-03-2020', 29, 'paid'),
(7, '08-03-2020', 29, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE IF NOT EXISTS `bill_details` (
  `bd_id` int(20) NOT NULL AUTO_INCREMENT,
  `bill_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `price` varchar(50) NOT NULL,
  `qty` int(30) NOT NULL,
  `cgst` int(20) NOT NULL,
  `sgst` int(20) NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`bd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`bd_id`, `bill_id`, `product_id`, `price`, `qty`, `cgst`, `sgst`, `total`) VALUES
(1, 0, 1, '200', 10, 8, 8, 2320),
(2, 1, 1, '200', 10, 8, 8, 2320),
(3, 1, 1, '200', 10, 8, 8, 2320),
(4, 1, 1, '200', 10, 8, 8, 2320),
(5, 5, 1, '200', 20, 8, 8, 4640);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `d_id` int(10) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(100) NOT NULL,
  `d_contact` bigint(30) NOT NULL,
  `d_email` varchar(50) NOT NULL,
  `d_address` varchar(200) NOT NULL,
  `d_hospital` varchar(200) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_id`, `d_name`, `d_contact`, `d_email`, `d_address`, `d_hospital`) VALUES
(1, 'Kishore', 0, '9036147848', 'kish@gmail.com', 'ABC'),
(2, 'AAAA', 9876543210, 'aa@gmail.com', 'dwd ', 'dwd'),
(3, 'Mahesh', 9871235867, 'mahesh@gmail.com', 'Dharwad ', 'SDM'),
(4, 'Umesh', 9743320840, 'umesh@gmail.com', 'Dharwad ', 'KLE');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(20) NOT NULL AUTO_INCREMENT,
  `request_id` int(25) NOT NULL,
  `feedback` varchar(1000) NOT NULL,
  `feedback_date` varchar(14) NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `request_id`, `feedback`, `feedback_date`) VALUES
(43, 0, '', ''),
(14, 1234, 'vbbfvcddd', '2016/05/07'),
(50, 20, 'h.llllllllllllll', '2010/12/03'),
(34, 0, '', '2010/12/03'),
(35, 0, '', '2010/12/03'),
(36, 123, 'qqqqq', '2011-10-10'),
(39, 0, '', ''),
(40, 0, '', ''),
(44, 0, '', 'jkjk'),
(42, 0, '', ''),
(49, 21, 'ghjf', '2011-10-10'),
(53, 17, 'gkiy', '2014/09/12'),
(52, 21, 'hlknh', '2010/12/03'),
(54, 14, 'qwqwqwqw', '2201-10-10'),
(55, 20, 'dddddddddfffffdddd', '2011-10-11'),
(58, 4, 'ffffffffffffggggg', '22/02/1999');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `uname` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `utype` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `pwd`, `utype`) VALUES
('deepa', '123456', 'admin'),
('vidya', '1234', 'customer'),
('mahesh@gmail.com', '9871235867', 'doctor'),
('asif.bvb@gmail.com', 'qwerty123', 'customer'),
('basu@gmail.com', '9900882211', 'vendor'),
('umesh@gmail.com', '9743320840', 'doctor'),
('ganesh@gmail.com', '9743320840', 'vendor');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `pay_id` int(20) NOT NULL AUTO_INCREMENT,
  `bill_id` int(20) NOT NULL,
  `reg_id` int(20) NOT NULL,
  `card_name` varchar(200) NOT NULL,
  `card_no` varchar(50) NOT NULL,
  `cvv` int(20) NOT NULL,
  `mon` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `otp` bigint(30) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `bill_id`, `reg_id`, `card_name`, `card_no`, `cvv`, `mon`, `year`, `otp`, `status`) VALUES
(15, 5, 29, 'Pratik', '12339877', 4567, '6', '2021', 24771, 'paid'),
(16, 1, 29, 'Asif Koujaganur', '123456781234', 2345, '6', '2020', 19133, 'paid'),
(17, 6, 29, 'Asif', '876543210', 2345, '6', '2020', 5040, 'paid'),
(18, 7, 29, 'AAA', '1234', 3333, '6', '2020', 26596, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(1000) NOT NULL,
  `composition` varchar(1000) NOT NULL,
  `benefits` varchar(1000) NOT NULL,
  `price` int(50) NOT NULL,
  `cgst` double NOT NULL,
  `sgst` double NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(20) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `composition`, `benefits`, `price`, `cgst`, `sgst`, `image`, `stock`) VALUES
(1, 'qq', 'qqq', 'wwww', 200, 8, 8, 'vadm2.png', 20),
(2, 'Walking Belts', '-', 'For controlling animals', 300, 5, 5, 'rr dairy.jpg', 25);

-- --------------------------------------------------------

--
-- Table structure for table `pur_details`
--

CREATE TABLE IF NOT EXISTS `pur_details` (
  `pdid` int(20) NOT NULL AUTO_INCREMENT,
  `poid` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `rqty` int(20) NOT NULL,
  PRIMARY KEY (`pdid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pur_details`
--

INSERT INTO `pur_details` (`pdid`, `poid`, `product_id`, `qty`, `status`, `rqty`) VALUES
(1, 5, 1, 20, 'sent', 0),
(2, 5, 1, 20, 'sent', 0),
(3, 6, 1, 10, 'received', 9),
(4, 6, 1, 20, 'received', 15),
(5, 7, 2, 30, 'received', 25),
(6, 7, 1, 10, 'received', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pur_order`
--

CREATE TABLE IF NOT EXISTS `pur_order` (
  `poid` int(20) NOT NULL AUTO_INCREMENT,
  `pdate` varchar(30) NOT NULL,
  `v_id` int(20) NOT NULL,
  PRIMARY KEY (`poid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pur_order`
--

INSERT INTO `pur_order` (`poid`, `pdate`, `v_id`) VALUES
(3, '2020-02-05', 1),
(4, '2020-02-04', 1),
(5, '2020-02-04', 1),
(6, '2020-02-28', 1),
(7, '08-03-2020', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` int(100) NOT NULL AUTO_INCREMENT,
  `reg_id` int(20) NOT NULL,
  `product_id` int(100) NOT NULL,
  `rating` varchar(1000) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `reg_id`, `product_id`, `rating`) VALUES
(24, 1, 21, '67'),
(23, 0, 0, '5uo'),
(21, 355, 567, '123'),
(25, 0, 0, 'vvvvvvvvvvvvvh'),
(26, 0, 0, 'jvvvvvvvvlomkkjjjjjjjj'),
(27, 0, 21, 'vkjmmmmmmmmmmmmmm'),
(28, 0, 13, 'aaaaaaaaaaaaaaaa'),
(33, 0, 0, ''),
(32, 7, 22, '2999911111111111');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `reg_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`reg_id`, `name`, `address`, `contact_no`, `email_id`, `pwd`) VALUES
(1, 'deepa', 'haveri', '2147483647', 'vidya@gmail.com', '984508'),
(26, 'eder', 'fgf6565', '1234567890', 'aaa@gmail.com', '12345'),
(7, 'aa', 'gayuf', '1872987786', 'gmv99@gmail.com', '1214323'),
(8, 'vvvMMMM', 'mmm', '1872987786', 'vidya@gmail.com', 'hgffdd'),
(15, 'kk', 'bnn', '55677899', 'gffff@gmail.com', '556677'),
(16, 'we', 'are', '214745', 'vidya@gmail.com', 'www'),
(18, 'aaaattt', 'd', '2147423456', 'sgggg@gmail.com', 'aaaa'),
(21, 'maitri', 'ddddd', '9481729732', 'maitri@gmIL.OM', 'DJKFSJ'),
(25, 'aaaaa', 'sssssss', '5678904321', 'SaDdafasF@gmail.com', 'nnn'),
(27, 'deepa', 'haveri', '6666666222', 'deepadeepu@gmail.com', '1234'),
(29, 'Asif K', 'c/o N.R.Koujaganur, Garag building, behind sanmati hostel', '9743320840', 'asif.bvb@gmail.com', 'qwerty123');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `request_id` int(20) NOT NULL AUTO_INCREMENT,
  `reg_id` int(20) NOT NULL,
  `req_date` date NOT NULL,
  `req_details` varchar(2000) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `reg_id`, `req_date`, `req_details`) VALUES
(1, 1, '2020-02-04', 'wwhhhh'),
(2, 0, '0000-00-00', ''),
(3, 29, '2020-03-08', 'My dog is suffering from fever, plz ');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `v_id` int(10) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(100) NOT NULL,
  `v_address` varchar(200) NOT NULL,
  `v_contact` bigint(30) NOT NULL,
  `owner_name` varchar(30) NOT NULL,
  `v_email` varchar(30) NOT NULL,
  `gst_no` varchar(50) NOT NULL,
  `license_no` varchar(50) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`v_id`, `v_name`, `v_address`, `v_contact`, `owner_name`, `v_email`, `gst_no`, `license_no`) VALUES
(1, 'Asif K', 'c/o N.R.Koujaganur, Garag building, behind sanmati hostel\r\nMahishi road', 9743320840, 'www', 'asif.bvb@gmail.com', '12345', '54321'),
(2, 'Basavaraj Suppliers', 'Hubli ', 9900882211, 'Basavaraj', 'basu@gmail.com', '12345', '665544'),
(3, 'Ganesh Co', 'Dharwad ', 9743320840, 'Ganesh', 'ganesh@gmail.com', '27890345', '12345');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
