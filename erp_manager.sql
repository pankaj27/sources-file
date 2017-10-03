-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2017 at 02:04 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountsgroup`
--

CREATE TABLE `accountsgroup` (
  `id` int(11) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `crtd` varchar(255) NOT NULL DEFAULT 'admin',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountsgroup`
--

INSERT INTO `accountsgroup` (`id`, `groupname`, `crtd`, `status`) VALUES
(1, 'Current Assets', 'admin', 0),
(2, 'Inventory Assets', 'admin', 0),
(4, 'Capital Assets', 'admin', 0),
(5, 'Current Liabilities', 'admin', 0),
(6, 'Long Term Liabilities', 'admin', 0),
(7, 'Share Capital', 'admin', 0),
(8, 'Retained Earnings', 'admin', 0),
(9, 'Sales Revenue', 'admin', 0),
(10, 'Other Revenue', 'admin', 0),
(11, 'Cost of Goods Sold', 'admin', 0),
(12, 'Payroll Expenses', 'admin', 0),
(13, 'General & Administrative expenses', 'admin', 0),
(14, 'Direct Expence', 'admin', 0),
(15, 'Indirect Expence', 'admin', 0),
(16, 'Indirect Income', 'admin', 0),
(17, 'Fixed Assets', 'admin', 0),
(18, 'Sales Account', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `acctyp`
--

CREATE TABLE `acctyp` (
  `id` int(11) NOT NULL,
  `acctyp` varchar(255) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acctyp`
--

INSERT INTO `acctyp` (`id`, `acctyp`, `crtd`, `status`) VALUES
(1, 'Savings A/C', 'admin', 0),
(2, 'Current A/C', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `allspareparts`
--

CREATE TABLE `allspareparts` (
  `id` int(11) NOT NULL,
  `modelname` varchar(255) NOT NULL,
  `partsname` varchar(255) NOT NULL,
  `unit` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allspareparts`
--

INSERT INTO `allspareparts` (`id`, `modelname`, `partsname`, `unit`, `status`) VALUES
(3, 'G5', 'BACK SET BOX', 1, 0),
(4, 'G5', 'BOX COVER', 1, 0),
(5, 'G5', 'BAG', 1, 0),
(6, 'G5', 'BASKET BOX', 1, 0),
(7, 'G5', 'CHARGER', 1, 0),
(8, 'G5', 'CHASSIS', 1, 0),
(9, 'G5', 'CLAMP SET', 1, 0),
(10, 'G5', 'COVER SET', 1, 0),
(11, 'G5', 'DIFFENTIAL', 1, 0),
(12, 'G5', 'DRIVER SEAT BOX', 1, 0),
(13, 'G5', 'FASTAID BOX', 1, 0),
(14, 'G5', 'FOOT MAT', 2, 0),
(15, 'G5', 'GLASS SET', 1, 0),
(16, 'G5', 'KAMANI', 2, 0),
(17, 'G5', 'LEG GURD', 1, 0),
(18, 'G5', 'MIDDLE FOOT REST SHEET/ALUMUNIM SET', 2, 0),
(19, 'G5', 'MIDDLE SEAT BOX', 1, 0),
(20, 'G5', 'MOTOR', 1, 0),
(21, 'G5', 'RIM', 4, 0),
(22, 'G5', 'ROOF ', 1, 0),
(23, 'G5', 'ROOF STAKCHER', 1, 0),
(24, 'G5', 'SEAT SET', 1, 0),
(25, 'G5', 'SOUND PLATE STAND', 1, 0),
(26, 'G5', 'STAPNY COVER', 1, 0),
(27, 'G5', 'STICKER', 1, 0),
(28, 'G5', 'TYRE', 4, 0),
(29, 'G5', 'TOTO COVER', 1, 0),
(30, 'G5', 'HADE LIGHT', 1, 0),
(31, 'G5', 'TUBE', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bankinformation`
--

CREATE TABLE `bankinformation` (
  `id` int(11) NOT NULL,
  `accname` varchar(255) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `accno` int(50) NOT NULL,
  `acctyp` varchar(255) NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `ifsc` varchar(50) NOT NULL,
  `swiftcode` varchar(50) NOT NULL,
  `crtd` varchar(50) NOT NULL,
  `doe` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankinformation`
--

INSERT INTO `bankinformation` (`id`, `accname`, `bankname`, `branchname`, `accno`, `acctyp`, `balance`, `ifsc`, `swiftcode`, `crtd`, `doe`, `status`) VALUES
(1, 'GAUTAM BASU ', 'STATE BANK OF INDIA', 'SERAMPORE', 123456, 'Current A/C', '2311905.59', '546321', '32561', 'admin', '2017-01-23 03:51:30 PM', 0),
(2, 'GK RICKSHAW PVT LTD', 'ICICI BANK ', 'HOWRAH', 54321, 'Savings A/C', '13347889.12', '12345', '89546', 'admin', '2017-01-23 03:51:16 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `banklist`
--

CREATE TABLE `banklist` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banklist`
--

INSERT INTO `banklist` (`id`, `bank_name`) VALUES
(1, 'State Bank of India'),
(2, 'Allahabad Bank'),
(4, 'Bank of India'),
(5, 'Bank of Baroda'),
(7, 'Canara Bank'),
(8, 'Central Bank of India'),
(10, 'Dena Bank'),
(11, 'Indian Bank'),
(12, 'Indian Overseas Bank'),
(14, 'Punjab National Bank'),
(15, 'Syndicate Bank'),
(16, 'UCO Bank'),
(17, 'Union Bank of India'),
(18, 'United Bank of India'),
(20, ' ICICI Bank'),
(21, ' Bandhan Bank'),
(27, ' HDFC Bank'),
(30, ' IndusInd Bank'),
(33, ' Kotak Mahindra Bank'),
(38, ' Yes Bank'),
(39, ' Axis Bank');

-- --------------------------------------------------------

--
-- Table structure for table `banktransaction`
--

CREATE TABLE `banktransaction` (
  `id` int(11) NOT NULL,
  `accno` varchar(20) NOT NULL,
  `invoiceno` varchar(255) NOT NULL,
  `debit` decimal(20,2) NOT NULL,
  `credit` decimal(20,2) NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `remark` text NOT NULL,
  `doe` varchar(50) NOT NULL,
  `chequeno` varchar(10) NOT NULL,
  `txnno` varchar(20) NOT NULL,
  `crtd` varchar(50) NOT NULL,
  `cdoe` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banktransaction`
--

INSERT INTO `banktransaction` (`id`, `accno`, `invoiceno`, `debit`, `credit`, `balance`, `remark`, `doe`, `chequeno`, `txnno`, `crtd`, `cdoe`, `status`) VALUES
(1, '123455', '', '2500.00', '0.00', '2500.00', '', '2017-01-12', '254136', 'TXNGK000001', 'admin', '2017-01-12 01:21:49 PM', 0),
(2, '1321313', '', '2500.00', '0.00', '2500.00', '', '2017-01-12', '254136', 'TXNGK000001', 'admin', '2017-01-12 01:22:29 PM', 0),
(3, '13456', '', '12540.00', '0.00', '12540.00', '', '2017-01-12', '254136', 'TXNGK000001', 'admin', '2017-01-12 01:30:27 PM', 0),
(4, '54321', '', '2500.00', '0.00', '252500.00', '', '2017-01-12', '254136', 'TXNGK000001', 'admin', '2017-01-12 03:50:08 PM', 0),
(5, '54321', '', '2500.00', '0.00', '255000.00', '', '2017-01-12', '254136', 'TXNGK000001', 'admin', '2017-01-12 03:52:34 PM', 0),
(6, '54321', '', '2500.00', '0.00', '257500.00', '', '2017-01-12', '254136', 'TXNGK000001', 'admin', '2017-01-12 03:53:42 PM', 0),
(7, '54321', '', '2500.00', '0.00', '260000.00', '', '2017-01-12', '254136', 'TXNGK000001', 'admin', '2017-01-12 03:54:45 PM', 0),
(8, '54321', '', '2500.00', '0.00', '262500.00', '', '2017-01-12', '254136', 'TXNGK000002', 'admin', '2017-01-12 03:56:18 PM', 0),
(9, '54321', '', '2500.00', '0.00', '265000.00', '', '2017-01-12', '254136', 'TXNGK000002', 'admin', '2017-01-12 04:49:09 PM', 0),
(10, '54321', '', '2500.00', '0.00', '267500.00', '', '2017-01-12', '254136', 'TXNGK000002', 'admin', '2017-01-12 05:08:19 PM', 0),
(11, '123456', '', '50000.00', '0.00', '300000.00', '', '2017-01-19', '254136', 'TXNGK000002', 'admin', '2017-01-19 09:11:11 PM', 0),
(12, '54321', '', '14500.00', '0.00', '282000.00', '', '2017-01-19', '254136', 'TXNGK000002', 'admin', '2017-01-19 10:31:33 PM', 0),
(14, '54321', '', '0.00', '1096.00', '280904.00', '', '2017-01-20', '254136', 'TXNGK000003', 'admin', '', 0),
(15, '54321', '', '0.00', '540.00', '281460.00', '', '2017-01-20', '254136', 'TXNGK000003', 'admin', '', 0),
(16, '54321', '', '0.00', '1096.00', '280364.00', '', '2017-01-20', '254136', 'TXNGK000004', 'admin', '2017-01-20 04:04:40 PM', 0),
(17, '54321', '32134', '0.00', '1.00', '281459.00', '', '2017-01-25', '254136', 'TXNGK000004', 'admin', '2017-01-25 01:20:05 AM', 0),
(18, '54321', '', '0.00', '2700.00', '297300.00', '', '2017-01-26', '254136', 'TXNGK000003', 'admin', '2017-01-26 12:39:30 PM', 0),
(19, '54321', '', '0.00', '54000.00', '227459.00', 'Driving Allawonce', '2017-01-26', '254136', 'TXNGK000004', 'admin', '2017-01-26 07:27:04 PM', 0),
(20, '123456', '', '0.00', '5000.00', '295000.00', 'For TDS return', '2017-01-27', '254136', 'TXNGK000005', 'admin', '2017-01-27 01:11:32 AM', 0),
(21, '54321', '', '0.00', '2970.00', '224489.00', 'For TDS return', '2017-01-27', '254136', 'TXNGK000006', 'admin', '2017-01-27 01:29:18 AM', 0),
(22, '54321', '', '0.00', '2970.00', '221519.00', 'For TDS return', '2017-01-27', '254136', 'TXNGK000007', 'admin', '2017-01-27 01:39:46 AM', 0),
(23, '54321', '', '0.00', '5000.00', '292300.00', 'For TDS return', '2017-01-27', '254136', 'TXNGK000008', 'admin', '2017-01-27 01:40:50 AM', 0),
(24, '54321', '', '540000.00', '0.00', '113519.00', '', '2017-01-27', '254136', 'TXNGK000002', 'admin', '2017-01-27 01:28:35 PM', 0),
(25, '54321', '', '5400000.00', '0.00', '5513519.00', 'ADVANCE PAYMENT', '2017-01-27', '254136', 'TXNGK2', 'admin', '2017-01-27 01:39:53 PM', 0),
(26, '123456', '547321', '100000.00', '0.00', '392300.00', 'ADVANCE PAYMENT', '2017-01-27', '254136', 'TXNGK000002', 'admin', '2017-01-27 01:55:33 PM', 0),
(27, '54321', '2548963', '5487000.00', '0.00', '11000519.00', 'ADVANCE PAYMENT', '2017-01-27', '254136', 'TXNGK000003', 'admin', '2017-01-27 02:10:43 PM', 0),
(28, '0', '', '0.00', '500.00', '-500.00', 'For TDS return', '2017-01-31', '', 'TXNGK000004', 'admin', '2017-01-31 06:46:33 PM', 0),
(29, '123456', '', '0.00', '5400.00', '386900.00', 'For TDS return', '2017-01-31', '44454', 'TXNGK000005', 'admin', '2017-01-31 06:51:06 PM', 0),
(30, '123456', '', '500000.00', '0.00', '886900.00', 'SECURITY', '2017-01-31', '112121', 'TXNGK000006', 'admin', '2017-01-31 07:50:48 PM', 0),
(31, '54321', '', '0.00', '1378.00', '885522.00', '', '2017-01-31', '', 'TXNGK000007', 'admin', '2017-01-31 08:23:36 PM', 0),
(32, '54321', '', '0.00', '4240.00', '882660.00', '', '2017-01-31', '', 'TXNGK000007', 'admin', '2017-01-31 08:32:33 PM', 0),
(33, '123456', '', '0.00', '7800.00', '879100.00', '', '2017-01-31', '', 'TXNGK000007', 'admin', '2017-01-31 08:38:56 PM', 0),
(34, '123456', '', '0.00', '1000.00', '878100.00', 'For TDS return', '2017-01-31', '', 'TXNGK000008', 'admin', '2017-01-31 08:45:47 PM', 0),
(37, '123456', '542136', '0.00', '508.00', '877592.00', 'Purchase goods', '2017-02-06', '123123', '', 'admin', '2017-02-06', 0),
(38, '54321', '542136', '0.00', '508.00', '882152.00', 'Purchase goods', '2017-02-06', '5478963', '', 'admin', '2017-02-06', 0),
(39, '54321', '542136', '0.00', '508.00', '881644.00', 'Purchase goods', '2017-02-06', '878979', '', 'admin', '2017-02-06', 0),
(40, '123456', '', '0.00', '19747.00', '857845.00', '', '2017-02-06', '', 'TXNGK000001', 'admin', '2017-02-06 07:26:30 PM', 0),
(41, '123456', '', '0.00', '1377.00', '856468.00', '', '2017-02-06', '', 'TXNGK000002', 'admin', '2017-02-06 08:03:12 PM', 0),
(42, '123456', '', '0.00', '804.10', '855663.90', 'curent Liabilities paid with interest(10)', '2017-02-06', '', 'TXNGK000003', 'admin', '2017-02-06 08:07:53 PM', 0),
(43, '123456', '542136', '0.00', '508.00', '855155.90', 'Purchase goods', '2017-02-06', '213213', '', 'admin', '2017-02-06', 0),
(44, '54321', '542136', '0.00', '508.00', '881136.00', 'Purchase goods', '2017-02-07', '12345', '', 'admin', '2017-02-07', 0),
(45, '54321', '121212', '0.00', '5297.88', '875838.12', 'Purchase goods', '2017-02-07', '125469', '', 'admin', '2017-02-07', 0),
(46, '54321', '', '0.00', '5400.00', '870438.12', 'Drawee', '2017-02-07', '54321456', 'TXNGK000001', 'admin', '2017-02-07 01:13:05 PM', 0),
(47, '123456', '', '0.00', '5130.00', '850025.90', 'cst return', '2017-02-07', '54231', 'TXNGK000002', 'admin', '2017-02-07 01:42:24 PM', 0),
(48, '54321', '', '0.00', '270.00', '870168.12', 'For TDS return', '2017-02-07', '251463', 'TXNGK000003', 'admin', '2017-02-07 01:42:49 PM', 0),
(49, '54321', '', '0.00', '5130.00', '865038.12', 'Couriour Charge', '2017-02-07', '123456', 'TXNGK000004', 'admin', '2017-02-07 05:33:34 PM', 0),
(50, '54321', '', '0.00', '47500.00', '817538.12', 'Electric Bill', '2017-02-07', '123456', 'TXNGK000005', 'admin', '2017-02-07 06:36:26 PM', 0),
(51, '54321', '', '0.00', '1500.00', '816038.12', 'Bank Charge', '2017-02-07', '542136', 'TXNGK000006', 'admin', '2017-02-07 08:30:24 PM', 0),
(52, '54321', '', '0.00', '2500.00', '813538.12', 'Bank Charge', '2017-02-07', '547632', 'TXNGK000007', 'admin', '2017-02-07 08:35:58 PM', 0),
(53, '123456', '125463', '0.00', '4000.00', '846025.90', 'Purchase goods', '2017-02-08', '4245', '', 'admin', '2017-02-08', 0),
(54, '54321', '547896', '0.00', '75000.00', '738538.12', 'Purchase goods', '2017-02-08', '', '', 'admin', '2017-02-08', 0),
(55, '123456', '542163', '0.00', '6400.00', '839625.90', 'Purchase goods', '2017-02-08', '5432145', '', 'admin', '2017-02-08', 0),
(56, '123456', '47896', '0.00', '2302.31', '837323.59', 'Purchase goods', '2017-02-08', '547893', '', 'admin', '2017-02-08', 0),
(57, '54321', 'GKSLSBK70052', '450000.00', '0.00', '11305889.12', 'PAY BOOKING AMOUNT', '2017-02-09', '32', 'TXNGK000001', 'admin', '2017-02-09 12:56:09 PM', 0),
(58, '54321', 'GKSLSBK70053', '45000.00', '0.00', '11350889.12', 'PAY BOOKING AMOUNT', '2017-02-09', '547896', 'TXNGK000002', 'admin', '2017-02-09 01:28:26 PM', 0),
(59, '54321', 'GKSLSBK70054', '300000.00', '0.00', '11650889.12', 'PAY BOOKING AMOUNT', '2017-02-10', 'adadf', 'TXNGK000003', 'admin', '2017-02-10 07:59:36 PM', 0),
(60, '54321', 'GKSLSBK70055', '500000.00', '0.00', '12150889.12', 'PAY BOOKING AMOUNT', '2017-02-10', 'assad', 'TXNGK000004', 'admin', '2017-02-10 08:08:13 PM', 0),
(61, '54321', '54321', '0.00', '3000.00', '12147889.12', '', '2017-02-11', '', 'TXNGK00005', 'admin', '2017-02-11 12:53:30 AM', 0),
(62, '123456', 'GKSLSBK70057', '1500000.00', '0.00', '2311905.59', 'PAY BOOKING AMOUNT', '2017-02-13', '125463', 'TXNGK000001', 'admin', '2017-02-13 11:51:17 PM', 0),
(63, '54321', 'GKSLSBK70058', '700000.00', '0.00', '12847889.12', 'PAY BOOKING AMOUNT', '2017-02-14', 'asdas', 'TXNGK000002', 'admin', '2017-02-14 12:08:42 AM', 0),
(64, '54321', '', '500000.00', '0.00', '13347889.12', 'SECURITY', '2017-02-14', '1254563', 'TXNGK000003', 'admin', '2017-02-14 05:28:06 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookingorder`
--

CREATE TABLE `bookingorder` (
  `id` int(11) NOT NULL,
  `bokingid` varchar(50) NOT NULL,
  `custid` varchar(50) NOT NULL,
  `doe` varchar(50) NOT NULL,
  `expectdoe` varchar(50) NOT NULL,
  `particulars` varchar(255) NOT NULL,
  `cate` varchar(255) NOT NULL,
  `qnty` int(11) NOT NULL,
  `unitpr` decimal(20,2) NOT NULL,
  `total` decimal(20,2) NOT NULL,
  `color` text NOT NULL,
  `tax` varchar(50) NOT NULL,
  `taxpercent` varchar(11) NOT NULL,
  `taxamount` decimal(20,2) NOT NULL,
  `excise1` varchar(11) NOT NULL,
  `exciseamount` decimal(20,2) NOT NULL,
  `grand` decimal(20,2) NOT NULL,
  `sid` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `getpassstatus` int(11) NOT NULL DEFAULT '0',
  `paymentstatus` int(11) NOT NULL DEFAULT '0',
  `stockstatus` int(11) NOT NULL DEFAULT '0',
  `processstatus` int(11) NOT NULL DEFAULT '0',
  `warehouse_cod` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingorder`
--

INSERT INTO `bookingorder` (`id`, `bokingid`, `custid`, `doe`, `expectdoe`, `particulars`, `cate`, `qnty`, `unitpr`, `total`, `color`, `tax`, `taxpercent`, `taxamount`, `excise1`, `exciseamount`, `grand`, `sid`, `uid`, `sname`, `status`, `getpassstatus`, `paymentstatus`, `stockstatus`, `processstatus`, `warehouse_cod`) VALUES
(6, 'GKSLSBK00002', 'GKCLNT1600004', '2016-12-03 06:21:30 AM', '', 'K9', 'with battery & charger', 45, '2500.00', '112500.00', '', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(7, 'GKSLSBK00003', 'GKCLNT1600004', '2016-12-03 06:27:27 AM', '', 'K9', 'with battery & charger', 45, '2500.00', '112500.00', '', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(8, 'GKSLSBK00003', 'GKCLNT1600004', '2016-12-03 06:27:27 AM', '', 'ACCELERATOR', 'XFFSG', 58, '2500.00', '145000.00', '', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(9, 'GKSLSBK00004', 'GKCLNT1600004', '2016-12-03 07:02:19 AM', '', 'K9', 'without Battery & charger', 100, '1000.00', '100000.00', '', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(10, 'GKSLSBK00004', 'GKCLNT1600004', '2016-12-03 07:02:19 AM', '', 'G5', 'with battery & charger', 250, '75000.00', '18750000.00', '', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(11, 'GKSLSBK00004', 'GKCLNT1600004', '2016-12-03 07:02:19 AM', '', 'ACCELERATOR', 'ABCDEF', 50, '2500.00', '125000.00', '', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(12, 'GKSLSBK00005', 'GKCLNT1600004', '2016-12-08 04:41:45 PM', '', 'K9', 'with battery & charger', 20, '2500.00', '50000.00', '', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(13, 'GKSLSBK00006', 'GKCLNT1600004', '2016-12-08 04:44:32 PM', '', 'K9', 'with battery & charger', 50, '2500.00', '125000.00', '10->1#10->2#10->3#20->4#', '', '0', '0.00', '0.00', '0.00', '125000.00', 4, '0', 'dsfdsfds', 1, 0, 0, 0, 0, 0),
(14, 'GKSLSBK00007', '', '2016-12-08 04:47:07 PM', '', 'K9', 'without Battery & charger', 25, '1000.00', '25000.00', '25->1#', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(15, 'GKSLSBK00008', 'GKCLNT1600004', '2016-12-08 04:48:20 PM', '', 'K9', 'without Battery & charger', 25, '1000.00', '25000.00', '25->1#', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(16, 'GKSLSBK00009', 'GKCLNT1600004', '2016-12-08 04:49:54 PM', '', 'K9', 'without Battery & charger', 25, '1000.00', '25000.00', '25->1#', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(17, 'GKSLSBK00010', 'GKCLNT1600004', '2016-12-08 04:51:36 PM', '', 'K9', 'with battery & charger', 25, '2500.00', '62500.00', '15->1#10->2#', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(18, 'GKSLSBK00010', 'GKCLNT1600004', '2016-12-08 04:51:36 PM', '', 'ACCELERATOR', 'FRED', 45, '2500.00', '112500.00', '', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(19, 'GKSLSBK00010', 'GKCLNT1600004', '2016-12-08 04:51:36 PM', '', 'LEFT-RIGHT ASO SWITCH', 'ASAFADF', 96, '100.00', '9600.00', '', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(20, 'GKSLSBK00010', 'GKCLNT1600004', '2016-12-08 04:51:36 PM', '', 'TYRE', '', 144, '14.00', '2016.00', '', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(21, 'GKSLSBK00011', '', '2016-12-08 06:32:51 PM', '', 'K9', 'with battery & charger', 25, '2500.00', '62500.00', '25->1#', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(22, 'GKSLSBK00011', '', '2016-12-08 06:32:51 PM', '', 'ACCELERATOR', 'FGFDGFDG', 25, '2500.00', '62500.00', '', '', '0', '0.00', '0.00', '0.00', '0.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(23, 'GKSLSBK00012', '', '2016-12-08 07:02:27 PM', '', 'K9', 'with battery & charger', 50, '2500.00', '125000.00', '50->1#', 'cst', '5.00%', '0.00', '1', '0.00', '139125.00', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(24, 'GKSLSBK00013', 'GKCLNT1600004', '2016-12-08 07:11:32 PM', '', 'K9', 'with battery & charger', 25, '2500.00', '62500.00', '25->1#', 'cst', '5.00%', '3125.00', '1', '3937.50', '69562.50', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(25, 'GKSLSBK00014', 'GKCLNT1600004', '2016-12-08 07:48:22 PM', '', 'K9', 'with battery & charger', 25, '2500.00', '62500.00', '20->1#5->2#', 'cst', '5.00%', '3125.00', '1', '3937.50', '69562.50', 4, '0', 'dsfdsfds', 0, 0, 0, 0, 0, 0),
(26, 'GKSLSBK00015', 'GKCLNT1600005', '2016-12-09 10:35:16 AM', '', 'K9', 'with battery & charger', 25, '2500.00', '62500.00', '25->1#', 'vat', '10.00%', '43750.00', '3', '0.00', '481250.00', 4, '0', 'dsfdsfds', 1, 0, 0, 0, 0, 0),
(27, 'GKSLSBK00015', 'GKCLNT1600005', '2016-12-09 10:35:16 AM', '', 'ACCELERATOR', 'DEF', 100, '2500.00', '250000.00', '', 'vat', '10.00%', '43750.00', '3', '0.00', '481250.00', 4, '0', 'dsfdsfds', 1, 0, 0, 0, 0, 0),
(28, 'GKSLSBK00015', 'GKCLNT1600005', '2016-12-09 10:35:16 AM', '', 'HEAD LIGHT', 'DFDSAF', 50, '2500.00', '125000.00', '', 'vat', '10.00%', '43750.00', '3', '0.00', '481250.00', 4, '0', 'dsfdsfds', 1, 0, 0, 0, 0, 0),
(29, 'GKSLSBK00016', 'GKCLNT1600004', '2016-12-15 12:24:47 PM', '', 'G5', 'without Battery & charger', 40, '55000.00', '2200000.00', '5->1#10->2#20->3#5->4#', 'cst', '4.00%', '88000.00', '1', '68640.00', '2356640.00', 4, '0', 'dsfdsfds', 1, 0, 0, 0, 0, 0),
(30, 'GKSLSBK00017', 'GKCLNT1600004', '2016-12-15 12:48:12 PM', '', 'G5', 'with battery & charger', 25, '42000.00', '1050000.00', '20->1#5->2#', 'cst', '4.00%', '42000.00', '1', '32760.00', '1124760.00', 4, '0', 'dsfdsfds', 1, 0, 0, 0, 0, 0),
(31, 'GKSLSBK00018', 'GKCLNT1600013', '2016-12-15 06:25:48 PM', '', 'G5', 'with battery & charger', 25, '42000.00', '1050000.00', '20->1#5->2#', 'cst', '4.00%', '42000.00', '1', '32760.00', '1124760.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(32, 'GKSLSBK00019', 'GKCLNT1600013', '2016-12-16 02:54:44 PM', '', 'G5', 'without battery & charger', 25, '2000.00', '50000.00', '25->1#', 'cst', '4.00%', '2040.00', '', '1000.00', '53040.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(33, 'GKSLSBK00020', 'GKCLNT1600013', '2016-12-16 02:55:33 PM', '', 'G5', 'without battery & charger', 15, '2000.00', '30000.00', '15->1#', '', '', '0.00', '', '600.00', '30600.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(34, 'GKSLSBK00021', 'GKCLNT1600013', '2016-12-16 03:20:52 PM', '', 'G5', 'with Battery', 25, '2100.00', '52500.00', '25->1#', '', '', '0.00', '2', '1050.00', '53550.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(35, 'GKSLSBK00022', 'GKCLNT1600013', '2016-12-16 07:05:41 PM', '', 'BREAK', '', 50, '12500.00', '625000.00', '', 'cst', '4.00%', '63000.00', '', '0.00', '1638000.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(36, 'GKSLSBK00022', 'GKCLNT1600013', '2016-12-16 07:05:41 PM', '', 'EXIDE-BATTERY', '', 100, '5000.00', '500000.00', '', 'cst', '4.00%', '63000.00', '', '0.00', '1638000.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(37, 'GKSLSBK00022', 'GKCLNT1600013', '2016-12-16 07:05:41 PM', '', 'SF-SONIC BATTERY', '', 100, '4500.00', '450000.00', '', 'cst', '4.00%', '63000.00', '', '0.00', '1638000.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(38, 'GKSLSBK00023', 'GKCLNT1600013', '2016-12-16 07:20:22 PM', '', 'BREAK', '', 50, '12500.00', '625000.00', '', 'cst', '4.00%', '92900.00', '', '0.00', '2415400.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(39, 'GKSLSBK00023', 'GKCLNT1600013', '2016-12-16 07:20:22 PM', '', 'EXIDE-BATTERY', '', 100, '5000.00', '500000.00', '', 'cst', '4.00%', '92900.00', '', '0.00', '2415400.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(40, 'GKSLSBK00023', 'GKCLNT1600013', '2016-12-16 07:20:22 PM', '', 'SF-SONIC BATTERY', '', 100, '4500.00', '450000.00', '', 'cst', '4.00%', '92900.00', '', '0.00', '2415400.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(41, 'GKSLSBK00023', 'GKCLNT1600013', '2016-12-16 07:20:22 PM', '', 'AMARON BATTERY', '', 100, '3500.00', '350000.00', '', 'cst', '4.00%', '92900.00', '', '0.00', '2415400.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(42, 'GKSLSBK00023', 'GKCLNT1600013', '2016-12-16 07:20:22 PM', '', 'CHARGER', '', 25, '5400.00', '135000.00', '', 'cst', '4.00%', '92900.00', '', '0.00', '2415400.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(43, 'GKSLSBK00023', 'GKCLNT1600013', '2016-12-16 07:20:22 PM', '', 'CHARGER 2', '', 25, '6000.00', '150000.00', '', 'cst', '4.00%', '92900.00', '', '0.00', '2415400.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(44, 'GKSLSBK00023', 'GKCLNT1600013', '2016-12-16 07:20:23 PM', '', 'CHARGER 3', '', 25, '4500.00', '112500.00', '', 'cst', '4.00%', '92900.00', '', '0.00', '2415400.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(45, 'GKSLSBK00024', 'GKCLNT1600013', '2016-12-16 07:26:23 PM', '', 'BREAK', '', 50, '12500.00', '625000.00', '', 'cst', '4.00%', '55500.00', '', '0.00', '1443000.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(46, 'GKSLSBK00024', 'GKCLNT1600013', '2016-12-16 07:26:23 PM', '', 'EXIDE-BATTERY', '', 100, '5000.00', '500000.00', '', 'cst', '4.00%', '55500.00', '', '0.00', '1443000.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(47, 'GKSLSBK00024', 'GKCLNT1600013', '2016-12-16 07:26:23 PM', '', 'CHARGER 2', '', 25, '6000.00', '150000.00', '', 'cst', '4.00%', '55500.00', '', '0.00', '1443000.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(48, 'GKSLSBK00024', 'GKCLNT1600013', '2016-12-16 07:26:23 PM', '', 'CHARGER 3', '', 25, '4500.00', '112500.00', '', 'cst', '4.00%', '55500.00', '', '0.00', '1443000.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(49, 'GKSLSBK00025', 'GKCLNT1600016', '2016-12-17 02:09:21 PM', '', 'G5', 'with Battery & Charger', 25, '2150.00', '53750.00', '20->1#5->2#', 'cst', '4.00%', '2193.00', '2', '1075.00', '57018.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(50, 'GKSLSBK00026', 'GKCLNT1600016', '2016-12-17 02:17:00 PM', '', 'BREAK', '', 50, '12500.00', '625000.00', '', 'cst', '4.00%', '51000.00', '', '0.00', '1326000.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(51, 'GKSLSBK00026', 'GKCLNT1600016', '2016-12-17 02:17:00 PM', '', 'EXIDE-BATTERY', '', 100, '5000.00', '500000.00', '', 'cst', '4.00%', '51000.00', '', '0.00', '1326000.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(52, 'GKSLSBK00026', 'GKCLNT1600016', '2016-12-17 02:17:00 PM', '', 'CHARGER 2', '', 25, '6000.00', '150000.00', '', 'cst', '4.00%', '51000.00', '', '0.00', '1326000.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(53, 'GKSLSBK00027', 'GKCLNT1600007', '2017-01-06 11:22:21 AM', '', 'ER INDIA K-9', 'with Battery', 10, '1000.00', '10000.00', '10->1#', 'cst', '2.00%', '204.00', '2', '200.00', '10404.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(54, 'GKSLSBK00028', 'GKCLNT1600013', '2017-01-06 12:02:50 PM', '', 'ER INDIA G-7S', 'without battery & charger', 10, '2000.00', '20000.00', '10->1#', 'cst', '2.00%', '408.00', '2', '400.00', '20808.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(55, 'GKSLSBK00029', 'DGKCLNT1700018', '2017-01-06 12:06:43 PM', '', 'CHASSIS', '', 10, '0.00', '0.00', '', 'cst', '2.00%', '0.00', '', '0.00', '0.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(56, 'GKSLSBK00029', 'DGKCLNT1700018', '2017-01-06 12:06:43 PM', '', 'BACK BOX', '', 10, '0.00', '0.00', '', 'cst', '2.00%', '0.00', '', '0.00', '0.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(57, 'GKSLSBK00030', 'GKCLNT1600015', '2017-01-06 12:40:51 PM', '', 'BACK SET BOX', '', 12, '500.00', '6000.00', '', 'cst', '2.00%', '120.00', '', '0.00', '6120.00', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(58, 'GKSLSBK00031', 'GKCLNT1600007', '2017-01-12 12:28:23 PM', '', 'ER INDIA G-7S', 'with Battery & Charger', 45, '89189.00', '4013505.00', '12->1#20->2#13->3#', 'cst', '2.00%', '81875.50', '2', '80270.10', '4175650.60', 5, '0', 'Sougata Dalapati', 0, 0, 0, 0, 0, 0),
(59, 'GKINV1770038', 'TGKCLNT1700025', '2017-01-13 03:46:35 PM', '2017-01-18', 'E-Rickshaw(ER INDIA G-7S)', '(with  charger)', 5, '1089188.00', '5445940.00', '5->1#', 'cast', '2', '124167.43', '14', '762431.60', '6332539.03', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(60, 'GKSLSBK70039', 'GKCLNT1600007', '2017-01-13 06:14:30 PM', '', 'ER INDIA G-7S', 'without battery & charger', 20, '2000.00', '40000.00', '20->1#', 'cst', '0.00%', '0.00', '2', '800.00', '40800.00', 0, '', '', 1, 0, 0, 0, 0, 0),
(61, 'GKSLSBK70040', 'GKCLNT1600007', '2017-01-13 06:15:46 PM', '', 'ER INDIA K-9', 'without battery & charger', 20, '2000.00', '40000.00', '20->1#', 'cst', '0.00%', '0.00', '2', '800.00', '40800.00', 0, '', '', 1, 0, 0, 0, 0, 0),
(62, 'GKSLSBK70041', 'TGKCLNT1700021', '2017-01-14 03:08:04 AM', '2017-01-10', 'BACK SET BOX(ER INDIA G-7)', '', 10, '500.00', '5000.00', '', 'cst', '2', '1100.00', '', '0.00', '56100.00', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(63, 'GKSLSBK70041', 'TGKCLNT1700021', '2017-01-14 03:08:04 AM', '2017-01-10', 'CHARGER(ER INDIA G-7)', '', 10, '5000.00', '50000.00', '', 'cst', '2', '1100.00', '', '0.00', '56100.00', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(64, 'GKSLSBK70042', 'TGKCLNT1700022', '2017-01-16 02:07:19 AM', '2017-01-19', 'E-Rickshaw(ER INDIA G-7S)', '(with  charger)', 5, '1089188.00', '5445940.00', '20->1#', 'cst', '2', '124167.43', '14', '762431.60', '6332539.03', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(65, 'GKSLSBK70043', 'CGKCLNT1700028', '2017-01-17 10:47:36 AM', '', 'E-Rickshaw(ER INDIA G-7)', 'without battery & charger', 15, '84684.00', '1270260.00', '15->1#', 'cst', '2.00%', '25913.30', '2', '25405.20', '1321578.50', 6, '', 'gautam basu', 1, 0, 0, 0, 0, 0),
(66, 'GKSLSBK70044', 'CGKCLNT1700028', '2017-01-31 03:04:07 PM', '', 'ER INDIA K-9', 'without battery & charger', 2, '2000.00', '4000.00', '2->1#', 'vat', '0.00%', '0.00', '2', '80.00', '4080.00', 6, '', 'gautam basu', 1, 0, 0, 0, 0, 0),
(67, 'GKSLSBK70045', 'CGKCLNT1700028', '2017-01-31 03:19:48 PM', '2017-01-30', 'E-Rickshaw(ER INDIA K-9)', '(without battery & charger)', 2, '50000.00', '100000.00', '2->1#', 'cst', '2', '2280.00', '14', '14000.00', '116280.00', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(68, 'GKSLSBK70046', 'CGKCLNT1700028', '2017-01-31 05:06:56 PM', '2017-01-18', 'E-Rickshaw(ER INDIA G-7S)', '(with battery & charger)', 2, '89189.00', '178378.00', '2->1#', 'cst', '2', '4067.02', '14', '24972.92', '207417.94', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(69, 'GKSLSBK70047', 'CGKCLNT1700028', '2017-01-31 05:07:47 PM', '2017-01-18', 'E-Rickshaw(ER INDIA G-7S)', '(with battery & charger)', 2, '89189.00', '178378.00', '2->1#', 'cst', '2', '4067.02', '14', '24972.92', '207417.94', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(70, 'GKSLSBK70048', 'DGKCLNT1700018', '2017-01-31 05:36:55 PM', '2017-01-31', 'E-Rickshaw(ER INDIA G-7S)', '(with battery & charger)', 2, '89189.00', '178378.00', '2->1#', 'cst', '2', '4067.02', '14', '24972.92', '207417.94', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(71, 'GKSLSBK70049', 'DGKCLNT1700018', '2017-01-31 06:08:24 PM', '2017-01-17', 'E-Rickshaw(ER INDIA K-9)', '(with battery & charger)', 5, '50000.00', '250000.00', '5->1#', 'cst', '2', '11400.00', '14', '70000.00', '581400.00', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(72, 'GKSLSBK70049', 'DGKCLNT1700018', '2017-01-31 06:08:24 PM', '2017-01-17', 'E-Rickshaw(ER INDIA K-9)', '(with battery & charger)', 5, '50000.00', '250000.00', '5->1#', 'cst', '2', '11400.00', '14', '70000.00', '581400.00', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(73, 'GKSLSBK70050', 'DGKCLNT1700018', '2017-01-31 06:29:24 PM', '2017-01-31', 'E-Rickshaw(ER INDIA G-7S)', '(with battery & charger)', 2, '89189.00', '178378.00', '2->1#', 'cst', '2', '4067.02', '14', '24972.92', '207417.94', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(74, 'GKSLSBK70051', 'DGKCLNT1700030', '2017-01-31 08:08:22 PM', '2017-01-31', 'E-Rickshaw(ER INDIA G-7S)', '(with battery & charger)', 1, '89189.00', '89189.00', '1->1#', 'cst', '2', '2033.51', '14', '12486.46', '103708.97', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(75, 'GKSLSBK70052', 'CGKCLNT1700028', '2017-02-09 11:46:57 AM', '2017-02-01', 'E-Rickshaw(ER INDIA G-7S)', '(with battery & charger)', 2, '89189.00', '891890.00', '10->1#', 'vat', '23', '233853.56', '14', '124864.60', '1250608.16', 0, 'admin', '', 1, 1, 1, 1, 2, 7),
(76, 'GKSLSBK70053', 'TGKCLNT1700023', '2017-02-09 01:24:28 PM', '2017-02-10', 'BACK SET BOX(ER INDIA G-7)', '', 10, '500.00', '5000.00', '', 'vat', '23', '12650.00', '', '0.00', '67650.00', 0, 'admin', '', 1, 1, 1, 1, 2, 7),
(77, 'GKSLSBK70053', 'TGKCLNT1700023', '2017-02-09 01:24:28 PM', '2017-02-10', 'CHARGER(ER INDIA G-7)', '', 10, '5000.00', '50000.00', '', 'vat', '23', '12650.00', '', '0.00', '67650.00', 0, 'admin', '', 1, 1, 1, 1, 2, 7),
(78, 'GKSLSBK70054', 'TGKCLNT1700023', '2017-02-09 04:08:41 PM', '2017-02-01', 'E-Rickshaw(ER INDIA G-7S)', '(with battery )', 10, '89189.00', '891890.00', '10->1#3->2#1->3#1->4#', 'cst', '2', '50837.73', '14', '312161.50', '2592724.23', 0, 'admin', '', 1, 0, 1, 1, 2, 9),
(79, 'GKSLSBK70054', 'TGKCLNT1700023', '2017-02-09 04:08:41 PM', '2017-02-01', 'E-Rickshaw(ER INDIA G-7S)', '(with battery )', 15, '89189.00', '1337835.00', '10->1#3->2#1->3#1->4#', 'cst', '2', '50837.73', '14', '312161.50', '2592724.23', 0, 'admin', '', 1, 0, 1, 1, 2, 8),
(80, 'GKSLSBK70055', 'DGKCLNT1700030', '2017-02-10 08:06:01 PM', '2017-02-14', 'E-Rickshaw(ER INDIA G-7)', '(with  charger)', 20, '89684.00', '1793680.00', '10->1#10->2#', 'vat', '23', '470302.90', '14', '251115.20', '2515098.10', 0, 'admin', '', 1, 0, 1, 1, 2, 8),
(81, 'GKSLSBK70056', 'TGKCLNT1700023', '2017-02-13 11:29:28 PM', '2017-02-10', 'BACK SET BOX(ER INDIA G-7)', '', 5, '500.00', '2500.00', '', 'vat', '23', '575.00', '', '0.00', '3075.00', 0, 'admin', '', 1, 0, 0, 0, 0, 0),
(82, 'GKSLSBK70057', 'CGKCLNT1700028', '2017-02-13 11:48:46 PM', '2017-02-16', 'E-Rickshaw(ER INDIA G-7S)', '(with battery & charger)', 10, '89189.00', '891890.00', '5->1#5->2#', 'vat', '23', '233853.56', '14', '124864.60', '1250608.16', 0, 'admin', '', 1, 1, 1, 1, 2, 7),
(83, 'GKSLSBK70058', 'CGKCLNT1700028', '2017-02-14 12:04:58 AM', '2017-02-10', 'E-Rickshaw(ER INDIA G-7)', '(without battery & charger)', 2, '84684.00', '169368.00', '2->1#', 'vat', '23', '44408.29', '14', '23711.52', '237487.81', 0, 'admin', '', 1, 0, 1, 1, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `boxstock`
--

CREATE TABLE `boxstock` (
  `id` int(11) NOT NULL,
  `boxcode` varchar(55) NOT NULL,
  `boxname` varchar(255) NOT NULL,
  `modelname` varchar(255) NOT NULL,
  `partsname` varchar(255) NOT NULL,
  `partsid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `boxqty` int(11) NOT NULL,
  `sellqty` int(11) NOT NULL,
  `lstupdt` varchar(255) NOT NULL,
  `godowncode` varchar(50) NOT NULL,
  `doe` varchar(50) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `tempstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxstock`
--

INSERT INTO `boxstock` (`id`, `boxcode`, `boxname`, `modelname`, `partsname`, `partsid`, `qty`, `boxqty`, `sellqty`, `lstupdt`, `godowncode`, `doe`, `crtd`, `status`, `tempstatus`) VALUES
(1, 'BOXCODE0001', 'BOX1', 'ER INDIA G-7', 'BACK HOREN', 121, 20, 20, 28, '2017-02-14 12:59:10 AM', '7', '2017-01-09', 'admin', 0, 0),
(2, 'BOXCODE0001', 'BOX1', 'ER INDIA G-7', 'BASKET BOX', 6, 45, 20, 20, '2017-02-14 12:22:00 AM', '7', '2017-01-09', 'admin', 0, 0),
(3, 'BOXCODE0002', 'BOX2', 'ER INDIA G-7S', 'BACK BOX', 66, 50, 20, 0, '', '9', '2017-01-09', 'admin', 0, 0),
(4, 'BOXCODE0002', 'BOX2', 'ER INDIA G-7S', 'BACK HOREN', 244, 58, 20, 0, '', '9', '2017-01-09', 'admin', 0, 0),
(5, 'BOXCODE0003', 'box3', 'ER INDIA G-7S', 'BACK BOX', 66, 25, 5, 0, '', '7', '2017-01-09', 'admin', 0, 0),
(6, 'BOXCODE0003', 'box3', 'ER INDIA G-7S', 'BACK HOREN', 244, 14, 5, 0, '', '7', '2017-01-09', 'admin', 0, 0),
(7, 'BOXCODE0004', 'box8', 'ER INDIA G-7S', 'BACK BOX', 66, 55, 5, 20, '2017-02-13 11:52:29 PM', '7', '2017-01-09', 'admin', 0, 0),
(8, 'BOXCODE0004', 'box8', 'ER INDIA G-7S', 'BACK HOREN', 244, 10, 5, 20, '2017-02-13 11:52:30 PM', '7', '2017-01-09', 'admin', 0, 0),
(9, 'BOXCODE0005', 'box10', 'ER INDIA G-7S', 'BACK BOX', 66, 55, 5, 0, '', '8', '2017-01-09', 'admin', 0, 0),
(10, 'BOXCODE0005', 'box10', 'ER INDIA G-7S', 'BOX COVER', 68, 45, 5, 0, '', '8', '2017-01-09', 'admin', 0, 0),
(11, 'BOXCODE0006', 'BOX 12', 'ER INDIA G-7S', 'BACK BOX', 66, 50, 2, 0, '', '9', '2017-01-09', 'admin', 0, 0),
(12, '', '', 'ER INDIA G-7', 'BAG', 5, 40, 40, 26, '2017-02-14 12:59:10 AM', '7', '2017-01-09', 'admin', 0, 0),
(13, 'BOXCODE0001', '', 'ER INDIA G-7S', 'BACK BOX', 66, 20, 20, 0, '', '7', '2017-02-14', 'admin', 0, 0),
(14, 'BOXCODE0001', '', 'ER INDIA G-7S', 'BACK HOREN', 244, 10, 10, 0, '', '7', '2017-02-14', 'admin', 0, 0),
(15, 'BOXCODE0002', '', 'ER INDIA K-9', 'BACK BOX', 31, 20, 20, 0, '', '7', '2017-02-14', 'admin', 0, 0),
(16, 'BOXCODE0003', '', 'ER INDIA K-9', 'BACK HOREN', 205, 10, 10, 0, '', '7', '2017-02-14', 'admin', 0, 0),
(17, 'BOXCODE0004', 'boxtre', 'ER INDIA G-7S', 'BACK BOX', 66, 20, 10, 0, '', '8', '2017-02-14', 'admin', 0, 0),
(18, 'BOXCODE0004', 'boxtre', 'ER INDIA G-7S', 'BATTERY', 281, 10, 10, 0, '', '8', '2017-02-14', 'admin', 0, 0),
(19, 'BOXCODE0004', 'boxtre', 'ER INDIA G-7S', 'BATTERY CLAM', 104, 20, 10, 0, '', '8', '2017-02-14', 'admin', 0, 0),
(20, 'BOXCODE0005', 'brfge', 'ER INDIA G-7', '', 3, 20, 10, 0, '', '8', '2017-02-14', 'admin', 0, 0),
(21, 'BOXCODE0005', 'brfge', 'ER INDIA G-7', '', 4, 20, 10, 0, '', '8', '2017-02-14', 'admin', 0, 0),
(22, 'BOXCODE0005', 'brfge', 'ER INDIA G-7', '', 5, 20, 10, 0, '', '8', '2017-02-14', 'admin', 0, 0),
(23, 'BOXCODE0006', '', 'ER INDIA G-7', '', 5, 4, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(24, 'BOXCODE0007', '', 'ER INDIA G-7', '', 6, 2, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(25, 'BOXCODE0008', '', 'ER INDIA G-7', '', 121, 2, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(26, 'BOXCODE0009', '', 'ER INDIA G-7', '', 5, 4, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(27, 'BOXCODE0010', '', 'ER INDIA G-7', '', 6, 2, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(28, 'BOXCODE0011', '', 'ER INDIA G-7', '', 121, 2, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(29, 'BOXCODE0012', '', 'ER INDIA G-7', '', 5, 4, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(30, 'BOXCODE0013', '', 'ER INDIA G-7', '', 6, 2, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(31, 'BOXCODE0014', '', 'ER INDIA G-7', '', 121, 2, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(32, 'BOXCODE0015', '', 'ER INDIA G-7', '', 5, 4, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(33, 'BOXCODE0016', '', 'ER INDIA G-7', '', 6, 2, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(34, 'BOXCODE0017', '', 'ER INDIA G-7', '', 121, 2, 0, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(35, 'BOXCODE0018', 'asdasd', 'ER INDIA G-7', '', 3, 20, 20, 0, '', '8', '2017-02-14', 'admin', 0, 0),
(36, 'BOXCODE0018', 'asdasd', 'ER INDIA G-7', '', 4, 20, 20, 0, '', '8', '2017-02-14', 'admin', 0, 0),
(37, 'BOXCODE0018', 'asdasd', 'ER INDIA G-7', '', 5, 20, 20, 0, '', '8', '2017-02-14', 'admin', 0, 0),
(38, 'BOXCODE0018', 'asdasd', 'ER INDIA G-7', '', 121, 20, 20, 0, '', '8', '2017-02-14', 'admin', 0, 0),
(39, 'BOXCODE0019', 'saasd', 'ER INDIA G-7', '', 3, 20, 20, 0, '', '7', '2017-02-14', 'admin', 0, 0),
(40, 'BOXCODE0019', 'saasd', 'ER INDIA G-7', '', 4, 20, 20, 0, '', '7', '2017-02-14', 'admin', 0, 0),
(41, 'BOXCODE0019', 'saasd', 'ER INDIA G-7', '', 5, 20, 20, 0, '', '7', '2017-02-14', 'admin', 0, 0),
(42, 'BOXCODE0019', 'saasd', 'ER INDIA G-7', '', 6, 20, 20, 0, '', '7', '2017-02-14', 'admin', 0, 0),
(43, 'BOXCODE0019', 'saasd', 'ER INDIA G-7', '', 121, 20, 20, 0, '', '7', '2017-02-14', 'admin', 0, 0),
(44, 'BOXCODE0020', 'mnbg', 'ER INDIA G-7', '', 3, 10, 10, 0, '', '9', '2017-02-14', 'admin', 0, 0),
(45, 'BOXCODE0021', '', 'ER INDIA G-7', 'BAG', 5, 20, 20, 0, '', '8', '2017-02-15', 'admin', 0, 0),
(46, 'BOXCODE0022', '', 'ER INDIA G-7', 'BOX COVER', 4, 20, 20, 0, '', '9', '2017-02-15', 'admin', 0, 0),
(47, 'BOXCODE0023', '', 'ER INDIA G-7', 'BAG', 5, 10, 10, 0, '', '7', '2017-02-15', 'admin', 0, 0),
(48, 'BOXCODE0024', '', 'ER INDIA G-7', 'BASKET BOX', 6, 20, 20, 0, '', '9', '2017-02-15', 'admin', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cashinhand`
--

CREATE TABLE `cashinhand` (
  `id` int(11) NOT NULL,
  `openbal` decimal(20,2) NOT NULL,
  `closebal` decimal(20,2) NOT NULL,
  `dos` varchar(55) NOT NULL,
  `status` int(11) NOT NULL,
  `crtdby` varchar(255) NOT NULL,
  `doe` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashinhand`
--

INSERT INTO `cashinhand` (`id`, `openbal`, `closebal`, `dos`, `status`, `crtdby`, `doe`) VALUES
(1, '2844450.00', '2825200.00', '2017-01-31', 0, 'admin', '2017-02-07 01:02:36 PM');

-- --------------------------------------------------------

--
-- Table structure for table `cashinhandtransaction`
--

CREATE TABLE `cashinhandtransaction` (
  `id` int(11) NOT NULL,
  `invoiceno` varchar(255) NOT NULL,
  `debit` decimal(20,2) NOT NULL,
  `credit` decimal(20,2) NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `remark` text NOT NULL,
  `doe` varchar(50) NOT NULL,
  `txnno` varchar(20) NOT NULL,
  `crtd` varchar(50) NOT NULL,
  `cdoe` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashinhandtransaction`
--

INSERT INTO `cashinhandtransaction` (`id`, `invoiceno`, `debit`, `credit`, `balance`, `remark`, `doe`, `txnno`, `crtd`, `cdoe`, `status`) VALUES
(1, '', '500000.00', '0.00', '500000.00', 'ADVANCE PAYMENT', '2017-01-26', 'TXNGK000001', 'admin', '2017-01-26 06:18:39 PM', 0),
(2, '', '1000000.00', '0.00', '1500000.00', 'SECURITY', '2017-01-27', 'TXNGK2', 'admin', '2017-01-27 06:20:43 PM', 0),
(3, '', '0.00', '13500.00', '1486500.00', 'Rent', '2017-01-28', 'TXNGK00001', 'admin', '2017-01-28 06:21:53 PM', 0),
(4, '', '50000.00', '0.00', '1536500.00', 'SECURITY', '2017-01-31', 'TXNGK1', 'admin', '2017-01-31 12:07:40 PM', 0),
(5, '', '1000000.00', '0.00', '2536500.00', 'ADVANCE PAYMENT', '2017-01-31', 'TXNGK1', 'admin', '2017-01-31 05:36:48 PM', 0),
(6, '', '0.00', '9500.00', '2527000.00', 'Misscle.', '2017-01-31', 'TXNGK00001', 'admin', '2017-01-31 06:40:58 PM', 0),
(7, '', '0.00', '500.00', '2526500.00', '', '2017-01-31', '', 'admin', '2017-01-31 07:21:36 PM', 0),
(8, '', '0.00', '500.00', '2526000.00', 'For tds return ', '2017-01-31', '', 'admin', '2017-01-31 07:25:05 PM', 0),
(9, '', '0.00', '11560.00', '2514440.00', '', '2017-01-31', 'TXNGK000001', 'admin', '2017-01-31 07:26:33 PM', 0),
(12, '', '50000.00', '0.00', '2564440.00', 'SECURITY', '2017-01-31', 'TXNGK2', 'admin', '2017-01-31 08:06:46 PM', 0),
(13, '', '100000.00', '0.00', '2664440.00', 'ADVANCE PAYMENT', '2017-01-31', 'TXNGK1', 'admin', '2017-01-31 08:07:57 PM', 0),
(14, '', '0.00', '3900.00', '2660540.00', '', '2017-01-31', 'TXNGK000001', 'admin', '2017-01-31 08:23:09 PM', 0),
(15, '', '0.00', '9000.00', '2651540.00', 'Misscle.', '2017-01-31', 'TXNGK00002', 'admin', '2017-01-31 08:42:51 PM', 0),
(16, '', '0.00', '190.00', '2651350.00', 'Electric Bill', '2017-02-07', 'TXNGK00003', 'admin', '2017-02-07 12:36:27 PM', 0),
(17, '', '0.00', '5400.00', '2645950.00', 'Electric Bill', '2017-02-07', 'TXNGK00004', 'admin', '2017-02-07 12:42:39 PM', 0),
(18, '', '0.00', '500.00', '2645450.00', 'Commission Paid', '2017-02-07', 'TXNGK00005', 'admin', '2017-02-07 12:47:28 PM', 0),
(19, '', '0.00', '1000.00', '2644450.00', 'Fitting Chrg', '2017-02-07', 'TXNGK00006', 'admin', '2017-02-07 12:49:18 PM', 0),
(20, '', '0.00', '14250.00', '2630200.00', 'tds return', '2017-02-07', 'TXNGK00007', 'admin', '2017-02-07 01:02:36 PM', 0),
(21, '', '0.00', '5400.00', '2624800.00', 'xxxcx', '2017-02-07', '', 'admin', '2017-02-07 02:03:26 PM', 0),
(22, '', '0.00', '500.00', '2624300.00', 'ddsf', '2017-02-07', '', 'admin', '2017-02-07 04:15:55 PM', 0),
(23, '', '0.00', '1500.00', '2622800.00', 'asd', '2017-02-07', '', 'admin', '2017-02-07 04:16:05 PM', 0),
(24, '', '0.00', '2500.00', '2620300.00', '54jhkh', '2017-02-07', '', 'admin', '2017-02-07 05:40:59 PM', 0),
(25, '', '0.00', '5000.00', '2615300.00', 'aasas', '2017-02-07', '', 'admin', '2017-02-07 05:57:17 PM', 0),
(26, '', '0.00', '1500.00', '2613800.00', 'sfddffdfg', '2017-02-07', '', 'admin', '2017-02-07 06:30:24 PM', 0),
(27, '', '0.00', '5400.00', '2608400.00', 'FSGFGFDG', '2017-02-07', '', 'admin', '2017-02-07 07:54:18 PM', 0),
(28, '', '0.00', '2540.00', '2605860.00', 'AASA', '2017-02-07', '', 'admin', '2017-02-07 08:04:31 PM', 0),
(29, '', '0.00', '5000.00', '2600860.00', 'bjhj', '2017-02-07', '', 'admin', '2017-02-07 08:27:34 PM', 0),
(30, '', '0.00', '1500.00', '2599360.00', 'drrtt', '2017-02-07', '', 'admin', '2017-02-07 08:53:31 PM', 0),
(31, '', '0.00', '2500.00', '2596860.00', 'fggfgfg', '2017-02-07', '', 'admin', '2017-02-07 09:00:06 PM', 0),
(32, '', '0.00', '5000.00', '2591860.00', 'zdsdfsg', '2017-02-07', '', 'admin', '2017-02-07 09:01:16 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chasismntcode`
--

CREATE TABLE `chasismntcode` (
  `id` int(11) NOT NULL,
  `mnthno` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chasismntcode`
--

INSERT INTO `chasismntcode` (`id`, `mnthno`, `code`, `status`) VALUES
(1, 1, 'F', 0),
(2, 2, 'G', 0),
(3, 3, 'H', 0),
(4, 4, 'J', 0),
(5, 5, 'K', 0),
(6, 6, 'L', 0),
(7, 7, 'M', 0),
(8, 8, 'N', 0),
(9, 9, 'P', 0),
(10, 10, 'R', 0),
(11, 11, 'S', 0),
(12, 12, 'T', 0);

-- --------------------------------------------------------

--
-- Table structure for table `checking_stock`
--

CREATE TABLE `checking_stock` (
  `id` int(11) NOT NULL,
  `orderno` varchar(255) NOT NULL,
  `warehousecode` int(11) NOT NULL,
  `pono` varchar(255) NOT NULL,
  `model` varchar(11) NOT NULL,
  `trnstype` varchar(255) NOT NULL,
  `boxno` varchar(255) NOT NULL,
  `boxqty` int(11) NOT NULL,
  `partsid` varchar(255) NOT NULL,
  `partsqty` int(11) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL,
  `shortage` int(11) NOT NULL DEFAULT '0',
  `updtby` varchar(50) NOT NULL,
  `chk1` int(11) NOT NULL DEFAULT '0',
  `chk2` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checking_stock`
--

INSERT INTO `checking_stock` (`id`, `orderno`, `warehousecode`, `pono`, `model`, `trnstype`, `boxno`, `boxqty`, `partsid`, `partsqty`, `doe`, `crtd`, `tot`, `shortage`, `updtby`, `chk1`, `chk2`, `status`) VALUES
(1, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '37', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 1, 1, '', 0, 0, 0),
(2, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '66', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(3, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '67', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(4, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '68', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(5, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '69', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(6, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '70', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(7, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '71', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(8, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '72', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 1, 1, '', 0, 0, 0),
(9, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '73', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(10, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '74', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(11, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '75', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(12, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '76', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(13, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '77', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(14, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '78', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(15, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '79', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(16, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '80', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(17, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '81', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(18, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '82', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(19, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '83', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(20, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '84', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(21, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '85', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(22, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '86', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(23, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '87', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(24, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '88', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(25, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '89', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(26, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '90', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(27, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '91', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(28, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '92', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(29, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '93', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(30, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '94', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(31, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '95', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(32, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '97', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(33, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '98', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(34, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '99', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(35, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '100', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(36, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '101', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(37, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '102', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(38, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '103', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(39, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '104', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(40, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '105', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(41, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '225', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(42, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '226', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(43, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '227', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(44, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '228', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(45, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '229', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(46, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '230', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(47, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '231', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(48, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '232', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(49, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '236', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(50, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '237', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(51, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '238', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(52, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '239', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(53, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '240', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(54, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '241', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(55, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '242', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(56, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '243', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(57, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '244', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(58, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '246', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(59, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '247', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(60, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '250', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(61, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '251', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(62, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '252', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(63, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '255', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(64, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '257', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(65, 'GKSLSBK70052', 0, 'GKPONO17021100042', '3', 'manufaterer', 'BX-1', 2, '258', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 2, 0, '', 0, 0, 0),
(66, 'GKSLSBK70055', 0, '', '1', 'manufaterer', 'BOX1', 20, '6', 20, '2017-02-13 10:34:55 PM', 'warehouse1', 20, 0, '', 0, 0, 0),
(67, 'GKSLSBK70055', 0, '', '1', 'manufaterer', 'BOX1', 20, '121', 20, '2017-02-13 10:34:55 PM', 'warehouse1', 20, 0, '', 0, 0, 0),
(68, 'GKSLSBK70055', 0, '', '1', 'manufaterer', '', 0, '5', 20, '2017-02-13 10:35:36 PM', 'warehouse1', 20, 0, '', 0, 0, 0),
(69, 'GKSLSBK70057', 0, '', '3', 'manufaterer', 'box8', 5, '66', 10, '2017-02-13 11:52:29 PM', 'warehouse1', 10, 0, '', 0, 0, 0),
(70, 'GKSLSBK70057', 0, '', '3', 'manufaterer', 'box8', 5, '244', 10, '2017-02-13 11:52:29 PM', 'warehouse1', 10, 0, '', 0, 0, 0),
(71, 'GKSLSBK70057', 0, '', '3', 'manufaterer', 'box8', 5, '66', 10, '2017-02-13 11:52:29 PM', 'warehouse1', 10, 0, '', 0, 0, 0),
(72, 'GKSLSBK70057', 0, '', '3', 'manufaterer', 'box8', 5, '244', 10, '2017-02-13 11:52:30 PM', 'warehouse1', 10, 0, '', 0, 0, 0),
(73, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '6', 2, '2017-02-14 12:14:20 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(74, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '121', 2, '2017-02-14 12:14:20 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(75, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '6', 2, '2017-02-14 12:15:06 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(76, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '121', 2, '2017-02-14 12:15:06 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(77, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '6', 2, '2017-02-14 12:17:18 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(78, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '121', 2, '2017-02-14 12:17:18 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(79, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '6', 2, '2017-02-14 12:18:03 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(80, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '121', 2, '2017-02-14 12:18:04 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(81, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '6', 2, '2017-02-14 12:18:53 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(82, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '121', 2, '2017-02-14 12:18:53 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(83, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '6', 2, '2017-02-14 12:19:38 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(84, 'GKSLSBK70058', 0, '', '1', 'logistics', 'BOX1', 20, '121', 2, '2017-02-14 12:19:39 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(85, 'GKSLSBK70058', 0, '', '1', 'logistics', '', 0, '5', 2, '2017-02-14 12:22:00 AM', 'warehouse1', 2, 0, '', 0, 0, 0),
(86, 'GKSLSBK70053', 0, '', '1', 'logistics', '', 0, '5', 10, '2017-02-14 12:59:10 AM', 'warehouse1', 10, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `clientmaster`
--

CREATE TABLE `clientmaster` (
  `id` int(11) NOT NULL,
  `clientid` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `custtype` varchar(255) NOT NULL,
  `cnf` varchar(255) NOT NULL,
  `dealer` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `compname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `add1` varchar(255) NOT NULL,
  `add2` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `acno1` varchar(255) NOT NULL,
  `bank1` varchar(255) NOT NULL,
  `branch1` varchar(255) NOT NULL,
  `ifsc1` varchar(255) NOT NULL,
  `acno2` varchar(255) NOT NULL,
  `bank2` varchar(255) NOT NULL,
  `branch2` varchar(255) NOT NULL,
  `ifsc2` varchar(255) NOT NULL,
  `tin_vat` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `cst` varchar(255) NOT NULL,
  `excise` varchar(255) NOT NULL,
  `factory1` varchar(255) NOT NULL,
  `factory2` varchar(255) NOT NULL,
  `factory3` varchar(255) NOT NULL,
  `showroom1` varchar(255) NOT NULL,
  `showroom2` varchar(255) NOT NULL,
  `showroom3` varchar(255) NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `phno2` varchar(20) NOT NULL,
  `email2` varchar(255) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `openbal` decimal(20,2) NOT NULL,
  `agreemnt_validity` varchar(255) NOT NULL,
  `agvalunit` varchar(50) NOT NULL,
  `securityamountpaid` decimal(20,2) NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `acname1` varchar(255) NOT NULL,
  `acname2` varchar(255) NOT NULL,
  `swift1` varchar(50) NOT NULL,
  `swift2` varchar(50) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `trns_crtd` varchar(255) NOT NULL,
  `trns_doe_updt` varchar(255) NOT NULL,
  `mailsentstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientmaster`
--

INSERT INTO `clientmaster` (`id`, `clientid`, `name`, `custtype`, `cnf`, `dealer`, `image`, `compname`, `phone`, `email`, `add1`, `add2`, `country`, `state`, `district`, `area`, `pin`, `pan`, `acno1`, `bank1`, `branch1`, `ifsc1`, `acno2`, `bank2`, `branch2`, `ifsc2`, `tin_vat`, `vat`, `cst`, `excise`, `factory1`, `factory2`, `factory3`, `showroom1`, `showroom2`, `showroom3`, `balance`, `phno2`, `email2`, `pass`, `openbal`, `agreemnt_validity`, `agvalunit`, `securityamountpaid`, `interest`, `acname1`, `acname2`, `swift1`, `swift2`, `doe`, `sid`, `sname`, `status`, `trns_crtd`, `trns_doe_updt`, `mailsentstatus`) VALUES
(2, 'GKCLNT161700002', '', '', '', '', '', 'MAA TOTO CENTRE', '', 'pankaj.patra.87.16@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '58401.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '', 0, '', 0, '', '', 0),
(3, 'GKCLNT1600003', 'asasdads', 'DEALER', 'ABC pvt ltd', '', '1480363956_G_7_3.jpg', 'asdasd', '', 'pankaj@crystalplanetweb.com', 'asasd', 'asdsa', 'Bahrain', 'assad', 'asdas', '', 'ddfd', 'ddfd', '', '', '', '', '', '', '', '', 'dsfdsf', 'sdfds', 'dsfsdf', 'sdfdsf', 'sdfsd', 'dsds', 'dsfsd', 'dsfds', 'dsfds', '', '0.00', '', '', '', '45000.00', '', '', '0.00', '0.00', '', '', '', '', '2016-11-29 01:42:36 AM', 4, 'dsfdsfds', 0, '', '', 0),
(4, 'GKCLNT1600004', 'abhi', 'CNF', '', '', '1480676524_GM_lg22.jpg', 'ABC pvt ltd', '9876543210', 'pankaj@crystalplanetweb.com', 'asfdfaf', 'safasdf', 'India', 'West Bengal', '24pgs(s)', '', '123456789', '123456789', '', '', '', '', '', '', '', '', '12345678', '1234567', '12345', '123456', 'sadsdaf', 'sadfsad', '', '', '', '', '0.00', '', '', '123456', '0.00', '', '', '2500.00', '0.00', '', '', '', '', '2016-12-02 04:32:04 PM', 4, 'dsfdsfds', 0, 'admin', '2017-01-11 12:51:11 PM', 1),
(5, 'GKCLNT1600005', 'aaa', 'DEALER', 'assaddsa', '', '1481183475_Penguins.jpg', 'aaa', '9876543210', 'dolui.abhishek@gmail.com', 'aaa', 'aaa', 'Bangladesh', 'aaa', 'aaa', '', '700064', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2016-12-08 01:21:16 PM', 4, 'dsfdsfds', 0, '', '', 0),
(6, 'GKCLNT1600006', 'zxczx', 'CNF', '', '', '1481534158_GM_lg22.jpg', 'zxc', '1231', 'p1@gmail.com', 'asas', 'asdasd', '', '', '', 'asdasd', '1231', 'asdasd', 'asdasd', 'asasdas', 'asdads', 'asdasd', '', '', '', '', 'asdasd', '', 'asdads', 'asdas', 'asdasd', '', '', 'asdasd', '', '', '0.00', '12232323', '', '12546', '15400.00', '', '', '0.00', '0.00', 'asdasd', '', 'asdas', '', '2016-12-12 02:45:58 PM', 0, '', 0, '', '', 0),
(7, 'GKCLNT1600007', 'zxczx', 'SUB-DEALER', '', '', '1481534559_logo_460_460.png', 'zxc', '1231', 'p@gmail.com', 'asas', 'asdasd', 'zcxv', '', 'cxxcv', 'asdasd', '1231', 'asdasd', 'asdasd', 'asasdas', 'asdads', 'asdasd', '', '', '', '', 'asdasd', '', 'asdads', 'asdas', 'asdasd', '', '', 'asdasd', '', '', '0.00', '12232323', '', '54321', '15400.00', '', '', '0.00', '0.00', 'asdasd', '', 'asdas', '', '2016-12-12 02:52:39 PM', 0, '', 0, '', '', 0),
(8, 'TGKCLNT1600008', 'asdsad', 'RETAILER', '', '', '1481537898_greetingscard.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'Azerbaijan', 'asasd', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfds', '', '', 'dsdfs', '', '', '0.00', '123456', '', '123456', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-12 03:48:18 PM', 0, '', 0, '', '', 0),
(9, 'GKCLNT1600009', 'asdsad', 'CNF', '', '', '1481537955_greetingscard.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'Algeria', 'asa', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfds', '', '', 'dsdfs', '', '', '100000.00', '123456', '', '1212', '250000.00', '10', 'years', '1200000.00', '10.00', 'asdasd', '', 'asasd', '', '2016-12-12 03:49:16 PM', 0, '', 0, '', '', 0),
(10, 'GKCLNT1600010', 'asdsad', 'RETAILER/DIRECT', '', '', '1481539595_greetingscard.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'Bahrain', 'zxzc', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfds', '', '', 'dsdfs', '', '', '0.00', '123456', '', '54321', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-12 04:16:35 PM', 0, '', 0, '', '', 0),
(11, 'GKCLNT1600011', 'asdsad', 'SUB-DEALER', '', '', '1481539654_greetingscard.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'Albania', 'ssds', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfds', '', '', 'dsdfs', '', '', '0.00', '123456', '', '12456', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-12 04:17:34 PM', 0, '', 0, '', '', 0),
(12, 'GKCLNT1600012', 'asdsad', 'SUB-DEALER', '', '', '1481575106_GM_lg22.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'India', 'Kerala', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfdsdssfsf', '', '', 'dsdfscvdfg', '', '', '0.00', '123456', '', '123455', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-13 02:09:25 AM', 0, '', 0, '', '', 0),
(13, 'GKCLNT1600013', 'Abedef', 'DEALER', '', '', '1483644228_homefav_11.png', 'abedef', '12456789', 'pankaj.patra.87.16@gmail.com', 'aaads', 'asddsa', 'Bangladesh', 'asdsa', 'asdsa', 'asdsa', '123456', '32324', '132', 'fdssfda', 'sdfsf', '234234', '', '', '', '', 'sdfsdfd', '', '32123', '1251456', 'sddsf', 'sdfdsf', 'sdfdsf', 'sdfdsf', 'dsfdsf', 'dsfds', '0.00', '', '', '123456', '540000.00', '5', 'year', '12540.00', '5.00', '', '', '', '', '2017-01-06 12:53:49 AM', 5, 'Sougata Dalapati', 0, 'admin', '2017-01-12 01:30:27 PM', 0),
(14, 'GKCLNT1600014', 'Swapan Samanta', 'DEALER', '', '', '1481860141_Thankyou_Lg5.jpg', 'samanta eRickshaw', '985412563', 'pankaj.patra.87.16@gmail.com', '', '', 'Belgium', 's', 'sd', 'ssd', '123456', '123456', '21654', 'dfd', 'sdsd', '234', '', '', '', '', 'sdfsd', '', 'dsf', 'dsfds', 'asdas', 'asdsa', '', 'asdads', 'asd', '', '0.00', '', '', '12345', '254000.00', '', '', '0.00', '0.00', '', '', '', '', '2016-12-16 09:19:01 AM', 5, 'Sougata Dalapati', 0, '', '', 0),
(15, 'GKCLNT1600015', 'Samaresh Mallick', 'DEALER', '', '', '1481860377_greetingscard.jpg', 'Samararesh Toto Center', '9854712563', 'pankaj@crystalplanetweb.com', '', '', 'Bangladesh', 'ere', 'sd', 'ssd', '123456', '123456', '21654', 'dfd', 'sdsd', '234', '', '', '', '', 'sdfsd', '', 'dsf', 'dsfds', 'asdas', 'asdsa', '', 'asdads', 'asd', '', '2000.00', '', '', '', '254000.00', '', '', '25000.00', '0.00', '', '', '', '', '2016-12-16 09:22:57 AM', 5, 'Sougata Dalapati', 0, 'admin', '2017-01-12 05:08:19 PM', 1),
(16, 'GKCLNT1600016', 'gfddfg', 'DEALER', '', '', '1481963591_greetingscard.jpg', 'asdfdffd', 'fgfdgf', 'pankaj@ssd.com', 'addaf', 'sffg', 'India', 'West Bengal', 'adfdsf', 'fdgdfg', '12456', 'ss21125', '1213', 'werwe', 'dsfds', '13131', '', '', '', '', '123', '', '12213', '123', 'dfgdfg', '', '', 'sdsdfsd', '', '', '0.00', '', '', '12345', '500000.00', '', '', '0.00', '0.00', '', '', '', '', '2016-12-17 02:03:11 PM', 5, 'Sougata Dalapati', 0, '', '', 0),
(17, 'CGKCLNT1700017', 'ffdg', 'CNF', '', '', '1483620239_1.jpg', 'fdgdsg', '1131', 'sdfdsf@gmail.com', 'asdasd', 'asdas', 'India', '', 'aasd', 'asdas', '2134', '1231', 'asdas', 'asdas', 'asdas', 'asdas', '', '', '', '', '1231231', '', '1113', '1231', '12213', '1231', '123', 'dfsdf', 'sdfsd', 'sdf', '1636000.00', '231321', 'asda@gmail.com', '123454', '540000.00', '', '', '1080000.00', '0.00', 'asdas', '', 'asdas', '', '2017-01-05 06:13:59 PM', 0, '', 0, 'admin', '2017-01-27 04:48:41 PM', 0),
(18, 'DGKCLNT1700018', 'sadsadas', 'DEALER', '', '', '', 'sasad', '12345698', 'asd@gmail.com', 'asdsad', 'asdas', 'Barbados', 'sdsad', 'asdsa', 'sadas', '2134', '', 'assad', 'asdsad', 'sadasd', 'asdas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '11748527.84', '', '', '123456', '25400.00', '25', 'days', '1050000.00', '5.00', '', '', '', '', '2017-01-05 07:50:38 PM', 5, 'Sougata Dalapati', 0, 'admin', '2017-01-31 12:07:40 PM', 0),
(19, 'TGKCLNT1700019', 'asdads', 'RETAILER', '', '', '', '', '', '', 'asdsa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'asdasd', '', 'asdsad', '', '', '', '', '', '', '', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-01-10 06:09:51 PM', 0, '', 0, '', '', 0),
(20, 'TGKCLNT1700020', 'ssa', 'RETAILER', '', '', '', '', '', '', 'sdfds', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'sddsf', '', 'dsfdsf', '', '', '', '', '', '', '', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-01-10 06:19:52 PM', 0, '', 0, '', '', 0),
(21, 'TGKCLNT1700021', 'assad', 'RETAILER', '', '', '', '', '', '', 'sadas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'asdasd', '', 'asasd', '', '', '', '', '', '', '', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-01-10 06:36:37 PM', 0, '', 0, '', '', 0),
(22, 'TGKCLNT1700022', 'dghfgh', 'RETAILER', '', '', '', '', '', '', 'sdfdsf    ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'sddsf', '', 'sdfsdf', '', '', '', '', '', '', '', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-01-16 03:46:42 AM', 0, '', 0, '', '', 0),
(23, 'TGKCLNT1700023', 'pankaj patra', 'RETAILER', '', '', '', '', '', '', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', 'tamluk', '', '', '', '', '123456', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '-15900.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-02-14 03:17:12 AM', 0, '', 0, 'admin', '2017-02-10 07:59:36 PM', 0),
(24, 'TGKCLNT1700024', 'sdwew', 'RETAILER', '', '', '', '', '125478', '', 'sds', 'sds', '', '', '', '', '123456', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-01-13 11:09:51 AM', 0, '', 0, '', '', 0),
(25, 'TGKCLNT1700025', 'pankja', 'RETAILER', '', '', '', '', '1646', '', 'ssd', 'sdsd', '', '', '', '', '2154', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-01-13 11:17:33 AM', 0, '', 0, '', '', 0),
(26, 'TGKCLNT1700021', 'assad', 'RETAILER', '', '', '', '', '146', '', 'sadas,,,,,,', '0.00', '', '', '', '', '123456', '', '', '', '', '', '', '', '', '', '', '', 'cst@2', '', '', '', '', '', '', '', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-01-13 10:38:30 PM', 0, '', 0, '', '', 0),
(27, 'TGKCLNT1700022', 'dghfgh', 'RETAILER', '', '', '', '', '1234678', '', 'sdfdsf    ', 'er', '', '', '', '', '3324', '', '', '', '', '', '', '', '', '', 'sddsf', '', 'sdfsdf', '', '', '', '', '', '', '', '54000.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-01-16 03:46:42 AM', 0, '', 0, '', '', 0),
(29, 'CGKCLNT1700028', 'ABCDEF', 'SUB-DEALER', '', '', '', '', '123465479', 'aa@gmail.com', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123', '0.00', '', '', '', '', '1254789', 'ssdefgfgf', '', '', '', '', '', '', '', '', 'ssds', '', 'caddafdas', '', '', '', '', '', '', '', '3516681.57', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-01-31 10:51:13 AM', 0, '', 0, 'admin', '2017-02-14 12:08:42 AM', 0),
(30, 'DGKCLNT1700030', 'abhishek', 'DEALER', '', '', '', 'abvdef', '123456', 'p@gmail.com', 'dsdf', 'dfd', 'India', 'West Bengal', 'ssd', 'dfddf', '12121', 'sdfsd', '121', 'dsds', 'sdsd', 'sds', '', '', '', '', 'dasdf', '', 'sdfsdf', 'sdfdsf', 'sdfds', '', '', 'dsfds', '', '', '360224.52', '254632', '', '1234', '500000.00', '5', '', '50000.00', '5.00', 'sdsd', '', 'sds', '', '2017-01-31 07:48:28 PM', 0, '', 0, 'admin', '2017-02-10 08:08:13 PM', 0),
(31, 'TGKCLNT1700023', 'pankaj patra', 'RETAILER', '', '', '', '', '', '', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '-15900.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-02-14 03:17:12 AM', 0, '', 0, '', '', 0),
(32, 'TGKCLNT1700023', 'pankaj patra', 'RETAILER', '', '', '', '', '', '', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '-15900.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-02-14 03:17:12 AM', 0, '', 0, '', '', 0),
(33, 'TGKCLNT1700023', 'pankaj patra', 'RETAILER', '', '', '', '', '', '', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '-15900.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-02-14 03:17:12 AM', 0, '', 0, '', '', 0),
(34, 'TGKCLNT1700023', 'pankaj patra', 'RETAILER', '', '', '', '', '', '', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '-15900.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-02-14 03:17:12 AM', 0, '', 0, '', '', 0),
(35, 'TGKCLNT1700023', 'pankaj patra', 'RETAILER', '', '', '', '', '', '', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '-15900.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-02-14 03:17:12 AM', 0, '', 0, '', '', 0),
(36, 'TGKCLNT1700023', 'pankaj patra', 'RETAILER', '', '', '', '', '', '', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '-15900.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-02-14 03:17:12 AM', 0, '', 0, '', '', 0),
(37, 'TGKCLNT1700023', 'pankaj patra', 'RETAILER', '', '', '', '', '', '', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '-15900.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-02-14 03:17:12 AM', 0, '', 0, '', '', 0),
(38, 'TGKCLNT1700023', 'pankaj patra', 'RETAILER', '', '', '', '', '', '', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '-15900.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-02-14 03:17:12 AM', 0, '', 0, '', '', 0),
(39, 'TGKCLNT1700023', 'pankaj patra', 'RETAILER', '', '', '', '', '', '', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '-15900.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-02-14 03:17:12 AM', 0, '', 0, '', '', 0),
(40, 'TGKCLNT1700023', 'pankaj patra', 'RETAILER', '', '', '', '', '', '', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cast@2', '', '', '', '', '', '', '', '-15900.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2017-02-14 03:17:12 AM', 0, '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clientmaster06012017`
--

CREATE TABLE `clientmaster06012017` (
  `id` int(11) NOT NULL,
  `clientid` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `custtype` varchar(255) NOT NULL,
  `cnf` varchar(255) NOT NULL,
  `dealer` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `compname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `add1` varchar(255) NOT NULL,
  `add2` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `acno1` varchar(255) NOT NULL,
  `bank1` varchar(255) NOT NULL,
  `branch1` varchar(255) NOT NULL,
  `ifsc1` varchar(255) NOT NULL,
  `acno2` varchar(255) NOT NULL,
  `bank2` varchar(255) NOT NULL,
  `branch2` varchar(255) NOT NULL,
  `ifsc2` varchar(255) NOT NULL,
  `tin_vat` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `cst` varchar(255) NOT NULL,
  `excise` varchar(255) NOT NULL,
  `factory1` varchar(255) NOT NULL,
  `factory2` varchar(255) NOT NULL,
  `factory3` varchar(255) NOT NULL,
  `showroom1` varchar(255) NOT NULL,
  `showroom2` varchar(255) NOT NULL,
  `showroom3` varchar(255) NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `phno2` varchar(20) NOT NULL,
  `email2` varchar(255) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `openbal` decimal(20,2) NOT NULL,
  `agreemnt_validity` varchar(255) NOT NULL,
  `agvalunit` varchar(50) NOT NULL,
  `securityamountpaid` decimal(20,2) NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `acname1` varchar(255) NOT NULL,
  `acname2` varchar(255) NOT NULL,
  `swift1` varchar(50) NOT NULL,
  `swift2` varchar(50) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientmaster06012017`
--

INSERT INTO `clientmaster06012017` (`id`, `clientid`, `name`, `custtype`, `cnf`, `dealer`, `image`, `compname`, `phone`, `email`, `add1`, `add2`, `country`, `state`, `district`, `area`, `pin`, `pan`, `acno1`, `bank1`, `branch1`, `ifsc1`, `acno2`, `bank2`, `branch2`, `ifsc2`, `tin_vat`, `vat`, `cst`, `excise`, `factory1`, `factory2`, `factory3`, `showroom1`, `showroom2`, `showroom3`, `balance`, `phno2`, `email2`, `pass`, `openbal`, `agreemnt_validity`, `agvalunit`, `securityamountpaid`, `interest`, `acname1`, `acname2`, `swift1`, `swift2`, `doe`, `sid`, `sname`, `status`) VALUES
(1, 'GKCLNT161700001', '', 'RETAILER/DIRECT', '', '', '', 'DURGA TOTO CENTRE', '', 'pankaj@crystalplanetweb.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2541600.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '', 0, '', 0),
(2, 'GKCLNT161700002', '', '', '', '', '', 'MAA TOTO CENTRE', '', 'pankaj.patra.87.16@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '58401.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '', 0, '', 0),
(3, 'GKCLNT1600003', 'asasdads', 'DEALER', 'ABC pvt ltd', '', '1480363956_G_7_3.jpg', 'asdasd', '', 'dolui.abhishek@gmail.com', 'asasd', 'asdsa', 'Bahrain', 'assad', 'asdas', '', 'ddfd', 'ddfd', '', '', '', '', '', '', '', '', 'dsfdsf', 'sdfds', 'dsfsdf', 'sdfdsf', 'sdfsd', 'dsds', 'dsfsd', 'dsfds', 'dsfds', '', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2016-11-29 01:42:36 AM', 4, 'dsfdsfds', 0),
(4, 'GKCLNT1600004', 'abhi', 'CNF', '', '', '1480676524_GM_lg22.jpg', 'ABC pvt ltd', '9876543210', 'pankaj@crystalplanetweb.com', 'asfdfaf', 'safasdf', 'India', 'West Bengal', '24pgs(s)', '', '123456789', '123456789', '', '', '', '', '', '', '', '', '12345678', '1234567', '12345', '123456', 'sadsdaf', 'sadfsad', '', '', '', '', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2016-12-02 04:32:04 PM', 4, 'dsfdsfds', 0),
(5, 'GKCLNT1600005', 'aaa', 'DEALER', 'assaddsa', '', '1481183475_Penguins.jpg', 'aaa', '9876543210', 'dolui.abhishek@gmail.com', 'aaa', 'aaa', 'Bangladesh', 'aaa', 'aaa', '', '700064', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2016-12-08 01:21:16 PM', 4, 'dsfdsfds', 0),
(6, 'GKCLNT1600006', 'zxczx', 'CNF', '', '', '1481534158_GM_lg22.jpg', 'zxc', '1231', 'p1@gmail.com', 'asas', 'asdasd', '', '', '', 'asdasd', '1231', 'asdasd', 'asdasd', 'asasdas', 'asdads', 'asdasd', '', '', '', '', 'asdasd', '', 'asdads', 'asdas', 'asdasd', '', '', 'asdasd', '', '', '0.00', '12232323', '', '12546', '15400.00', '', '', '0.00', '0.00', 'asdasd', '', 'asdas', '', '2016-12-12 02:45:58 PM', 7, '', 0),
(7, 'GKCLNT1600007', 'zxczx', 'SUB-DEALER', '', '', '1481534559_logo_460_460.png', 'zxc', '1231', 'p@gmail.com', 'asas', 'asdasd', 'zcxv', '', 'cxxcv', 'asdasd', '1231', 'asdasd', 'asdasd', 'asasdas', 'asdads', 'asdasd', '', '', '', '', 'asdasd', '', 'asdads', 'asdas', 'asdasd', '', '', 'asdasd', '', '', '0.00', '12232323', '', '54321', '15400.00', '', '', '0.00', '0.00', 'asdasd', '', 'asdas', '', '2016-12-12 02:52:39 PM', 7, '', 0),
(8, 'GKCLNT1600008', 'asdsad', 'RETAILER/DIRECT', '', '', '1481537898_greetingscard.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'Azerbaijan', 'asasd', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfds', '', '', 'dsdfs', '', '', '0.00', '123456', '', '123456', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-12 03:48:18 PM', 8, '', 0),
(9, 'GKCLNT1600009', 'asdsad', 'CNF', '', '', '1481537955_greetingscard.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'Algeria', 'asa', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfds', '', '', 'dsdfs', '', '', '0.00', '123456', '', '1212', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-12 03:49:16 PM', 8, '', 0),
(10, 'GKCLNT1600010', 'asdsad', 'RETAILER/DIRECT', '', '', '1481539595_greetingscard.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'Bahrain', 'zxzc', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfds', '', '', 'dsdfs', '', '', '0.00', '123456', '', '54321', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-12 04:16:35 PM', 6, '', 0),
(11, 'GKCLNT1600011', 'asdsad', 'SUB-DEALER', '', '', '1481539654_greetingscard.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'Albania', 'ssds', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfds', '', '', 'dsdfs', '', '', '0.00', '123456', '', '12456', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-12 04:17:34 PM', 6, '', 0),
(12, 'GKCLNT1600012', 'asdsad', 'SUB-DEALER', '', '', '1481575106_GM_lg22.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'India', 'Kerala', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfdsdssfsf', '', '', 'dsdfscvdfg', '', '', '0.00', '123456', '', '123455', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-13 02:09:25 AM', 6, '', 0),
(13, 'GKCLNT1600013', 'Abedef', '', '', '', '1481800256_greetingscard.jpg', 'abedef', '12456789', 'pankaj.patra.87.16@gmail.com', 'aaads', 'asddsa', 'Bangladesh', 'asdsa', 'asdsa', 'asdsa', '123456', '32324', '132', 'fdssfda', 'sdfsf', '234234', '', '', '', '', 'sdfsdfd', '', '32123', '1251456', 'sddsf', 'sdfdsf', 'sdfdsf', 'sdfdsf', 'dsfdsf', 'dsfds', '0.00', '', '', '', '0.00', '', '', '0.00', '0.00', '', '', '', '', '2016-12-15 04:40:57 PM', 5, 'Sougata Dalapati', 0),
(14, 'GKCLNT1600014', 'Swapan Samanta', 'DEALER', '', '', '1481860141_Thankyou_Lg5.jpg', 'samanta eRickshaw', '985412563', 'pankaj.patra.87.16@gmail.com', '', '', 'Belgium', 's', 'sd', 'ssd', '123456', '123456', '21654', 'dfd', 'sdsd', '234', '', '', '', '', 'sdfsd', '', 'dsf', 'dsfds', 'asdas', 'asdsa', '', 'asdads', 'asd', '', '0.00', '', '', '12345', '254000.00', '', '', '0.00', '0.00', '', '', '', '', '2016-12-16 09:19:01 AM', 5, 'Sougata Dalapati', 0),
(15, 'GKCLNT1600015', 'Samaresh Mallick', 'DEALER', '', '', '1481860377_greetingscard.jpg', 'Samararesh Toto Center', '9854712563', 'pankaj@crystalplanetweb.com', '', '', 'Bangladesh', 'ere', 'sd', 'ssd', '123456', '123456', '21654', 'dfd', 'sdsd', '234', '', '', '', '', 'sdfsd', '', 'dsf', 'dsfds', 'asdas', 'asdsa', '', 'asdads', 'asd', '', '0.00', '', '', '', '254000.00', '', '', '0.00', '0.00', '', '', '', '', '2016-12-16 09:22:57 AM', 5, 'Sougata Dalapati', 0),
(16, 'GKCLNT1600016', 'gfddfg', 'DEALER', '', '', '1481963591_greetingscard.jpg', 'asdfdffd', 'fgfdgf', 'pankaj@ssd.com', 'addaf', 'sffg', 'India', 'West Bengal', 'adfdsf', 'fdgdfg', '12456', 'ss21125', '1213', 'werwe', 'dsfds', '13131', '', '', '', '', '123', '', '12213', '123', 'dfgdfg', '', '', 'sdsdfsd', '', '', '0.00', '', '', '12345', '500000.00', '', '', '0.00', '0.00', '', '', '', '', '2016-12-17 02:03:11 PM', 5, 'Sougata Dalapati', 0),
(17, 'GKCLNT1600012', 'asdsad', 'SUB-DEALER', '', '', '1481575106_GM_lg22.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'India', 'Kerala', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfdsdssfsf', '', '', 'dsdfscvdfg', '', '', '0.00', '123456', '', '123455', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-13 02:09:25 AM', 9, '', 0),
(18, 'GKCLNT1600012', 'asdsad', 'SUB-DEALER', '', '', '1481575106_GM_lg22.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'India', 'Kerala', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfdsdssfsf', '', '', 'dsdfscvdfg', '', '', '0.00', '123456', '', '123455', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-13 02:09:25 AM', 9, '', 0),
(19, 'GKCLNT1600012', 'asdsad', 'SUB-DEALER', '', '', '1481575106_GM_lg22.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'India', 'Kerala', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfdsdssfsf', '', '', 'dsdfscvdfg', '', '', '0.00', '123456', '', '123455', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-13 02:09:25 AM', 10, '', 0),
(20, 'GKCLNT1600012', 'asdsad', 'SUB-DEALER', '', '', '1481575106_GM_lg22.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'India', 'Kerala', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfdsdssfsf', '', '', 'dsdfscvdfg', '', '', '0.00', '123456', '', '123455', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-13 02:09:25 AM', 10, '', 0),
(21, 'GKCLNT1600012', 'asdsad', 'SUB-DEALER', '', '', '1481575106_GM_lg22.jpg', 'assaddsa', '231213', 'panmkaj@crystalplanetweb.com', 'asdasd', 'asdads', 'India', 'Kerala', 'asdasd', 'asdasd', '21231', 'dsfsdf', '123456', 'asdsa', 'saddasd', 'asdasd', '', '', '', '', 'sdfdsf', '', 'sdfds', 'sddsf', 'sdfdsdssfsf', '', '', 'dsdfscvdfg', '', '', '0.00', '123456', '', '123455', '250000.00', '', '', '0.00', '0.00', 'asdasd', '', 'asasd', '', '2016-12-13 02:09:25 AM', 10, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clientmaster9122016`
--

CREATE TABLE `clientmaster9122016` (
  `id` int(11) NOT NULL,
  `clientid` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `compname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `add1` varchar(255) NOT NULL,
  `add2` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `acno1` varchar(255) NOT NULL,
  `bank1` varchar(255) NOT NULL,
  `branch1` varchar(255) NOT NULL,
  `ifsc1` varchar(255) NOT NULL,
  `acno2` varchar(255) NOT NULL,
  `bank2` varchar(255) NOT NULL,
  `branch2` varchar(255) NOT NULL,
  `ifsc2` varchar(255) NOT NULL,
  `tin` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `cst` varchar(255) NOT NULL,
  `excise` varchar(255) NOT NULL,
  `factory1` varchar(255) NOT NULL,
  `factory2` varchar(255) NOT NULL,
  `factory3` varchar(255) NOT NULL,
  `showroom1` varchar(255) NOT NULL,
  `showroom2` varchar(255) NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientmaster9122016`
--

INSERT INTO `clientmaster9122016` (`id`, `clientid`, `name`, `image`, `compname`, `phone`, `email`, `add1`, `add2`, `country`, `state`, `district`, `pin`, `pan`, `acno1`, `bank1`, `branch1`, `ifsc1`, `acno2`, `bank2`, `branch2`, `ifsc2`, `tin`, `vat`, `cst`, `excise`, `factory1`, `factory2`, `factory3`, `showroom1`, `showroom2`, `balance`, `doe`, `sid`, `sname`, `status`) VALUES
(1, 'GKCLNT161700001', '', '', 'DURGA TOTO CENTRE', '', 'pankaj@crystalplanetweb.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2541600.00', '', 0, '', 0),
(2, 'GKCLNT161700002', '', '', 'MAA TOTO CENTRE', '', 'pankaj.patra.87.16@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '58401.00', '', 0, '', 0),
(3, 'GKCLNT1600003', 'asasdads', '1480363956_G_7_3.jpg', 'asdasd', '', 'asasd@gmail.com', 'asasd', 'asdsa', 'Bahrain', 'assad', 'asdas', 'ddfd', 'ddfd', '', '', '', '', '', '', '', '', 'dsfdsf', 'sdfds', 'dsfsdf', 'sdfdsf', 'sdfsd', 'dsds', 'dsfsd', 'dsfds', 'dsfds', '0.00', '2016-11-29 01:42:36 AM', 4, 'dsfdsfds', 0),
(4, 'GKCLNT1600004', 'abhi', '1480676524_GM_lg22.jpg', 'ABC pvt ltd', '9876543210', 'pankaj@crystalplanetweb.com', 'asfdfaf', 'safasdf', 'India', 'West Bengal', '24pgs(s)', '123456789', '123456789', '', '', '', '', '', '', '', '', '12345678', '1234567', '12345', '123456', 'sadsdaf', 'sadfsad', '', '', '', '0.00', '2016-12-02 04:32:04 PM', 4, 'dsfdsfds', 0),
(5, 'GKCLNT1600005', 'SHREE GANESH TRADE LINK', '1481259708_logo_460_460.png', 'SHREE GANESH TRADE LINK', '009779801400527', 'PANKAJ@CRYSTALPLANETWEB.COM', 'BIRTAMORE', '7 JHAPA MECHI', 'Nepal', 'ASDERT', '', '254789', '254789', '', '', '', '', '', '', '', '', '07480359593', '254789', '', '47896', 'ABCDEF', '', '', 'ASAS', '', '0.00', '2016-12-09 10:31:48 AM', 4, 'dsfdsfds', 0);

-- --------------------------------------------------------

--
-- Table structure for table `color_code`
--

CREATE TABLE `color_code` (
  `codeid` int(11) NOT NULL,
  `code_hex` varchar(20) NOT NULL,
  `rgb_code` varchar(255) NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color_code`
--

INSERT INTO `color_code` (`codeid`, `code_hex`, `rgb_code`, `color_name`, `status`, `id`) VALUES
(1, '#FF1956', '255,25,86', 'adsdff', 0, 1),
(2, '#FF4D94', '255,77,148', 'Cheree', 0, 2),
(3, '#0313FF', '3,19,255', 'Blue', 0, 3),
(4, '#30C9AB', '48,201,171', 'Sea Green', 0, 4),
(5, '#F836FF', '248,54,255', 'Pink', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `color_code1`
--

CREATE TABLE `color_code1` (
  `id` int(11) NOT NULL,
  `code_hex` varchar(20) NOT NULL,
  `rgb_code` varchar(255) NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color_code1`
--

INSERT INTO `color_code1` (`id`, `code_hex`, `rgb_code`, `color_name`, `status`) VALUES
(2, '#0000FF', '0,0,255', 'Blue', 0),
(3, '#0000A0', '0,0,139', 'DarkBlue', 0),
(4, '#86FF29', '134,255,41', 'Green2', 0),
(5, '#FFC08A', '255,192,138', 'asas', 0),
(6, '#BDFF83', '189,255,131', 'hgfvhf', 0),
(20, '#FF0000', '255,0,0', 'Red', 0);

-- --------------------------------------------------------

--
-- Table structure for table `color_code_final`
--

CREATE TABLE `color_code_final` (
  `id` int(11) NOT NULL,
  `code_hex` varchar(20) NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color_code_final`
--

INSERT INTO `color_code_final` (`id`, `code_hex`, `color_name`, `status`) VALUES
(1, '#FF0000', 'Red', 0),
(2, '#00FFFF', 'Cyan', 0),
(3, '#0000FF', 'Blue', 0),
(4, '#0000A0', 'DarkBlue', 0),
(5, '#ADD8E6', 'LightBlue', 0),
(6, '#800080', 'Purple', 0),
(7, '#FFFF00', 'Yellow', 0),
(8, '#00FF00', 'Lime', 0),
(9, '#FF00FF', 'Magenta', 0),
(10, '#FFFFFF', 'White', 0),
(11, '#C0C0C0', 'Silver', 0),
(12, '#808080', 'Gray or Grey', 0),
(13, '#000000', 'Black', 0),
(14, '#FFA500', 'Orange', 0),
(15, '#A52A2A', 'Brown', 0),
(16, '#800000', 'Maroon', 0),
(17, '#008000', 'Green', 0),
(18, '#808000', 'Olive', 0);

-- --------------------------------------------------------

--
-- Table structure for table `countrylist`
--

CREATE TABLE `countrylist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countrylist`
--

INSERT INTO `countrylist` (`id`, `name`) VALUES
(2, 'Afghanistan'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Antigua and Barbuda'),
(8, 'Argentina'),
(9, 'Armenia'),
(10, 'Australia'),
(11, 'Austria'),
(12, 'Azerbaijan'),
(13, 'Bahamas'),
(14, 'Bahrain'),
(15, 'Bangladesh'),
(16, 'Barbados'),
(17, 'Belarus'),
(18, 'Belgium'),
(19, 'Belize'),
(20, 'Benin'),
(21, 'Bhutan'),
(22, 'Bolivia'),
(23, 'Bosnia and Herzegovina'),
(24, 'Botswana'),
(25, 'Brazil'),
(26, 'Brunei'),
(27, 'Bulgaria'),
(28, 'Burkina Faso'),
(29, 'Burundi'),
(30, 'Cabo Verde'),
(31, 'Cambodia'),
(32, 'Cameroon'),
(33, 'Canada'),
(34, 'Central African Republic (CAR)'),
(35, 'Chad'),
(36, 'Chile'),
(37, 'China'),
(38, 'Colombia'),
(39, 'Comoros'),
(40, 'Democratic Republic of the Congo'),
(41, 'Republic of the Congo'),
(42, 'Costa Rica'),
(43, 'Cote d''Ivoire'),
(44, 'Croatia'),
(45, 'Cuba'),
(46, 'Cyprus'),
(47, 'Czech Republic'),
(48, 'Denmark'),
(49, 'Djibouti'),
(50, 'Dominica'),
(51, 'Dominican Republic'),
(52, 'Ecuador'),
(53, 'Egypt'),
(54, 'El Salvador'),
(55, 'Equatorial Guinea'),
(56, 'Eritrea'),
(57, 'Estonia'),
(58, 'Ethiopia'),
(59, 'Fiji'),
(60, 'Finland'),
(61, 'France'),
(62, 'Gabon'),
(63, 'Gambia'),
(64, 'Georgia'),
(65, 'Germany'),
(66, 'Ghana'),
(67, 'Greece'),
(68, 'Grenada'),
(69, 'Guatemala'),
(70, 'Guinea'),
(71, 'Guinea-Bissau'),
(72, 'Guyana'),
(73, 'Haiti'),
(74, 'Honduras'),
(75, 'Hungary'),
(76, 'Iceland'),
(77, 'India'),
(78, 'Indonesia'),
(79, 'Iran'),
(80, 'Iraq'),
(81, 'Ireland'),
(82, 'Israel'),
(83, 'Italy'),
(84, 'Jamaica'),
(85, 'Japan'),
(86, 'Jordan'),
(87, 'Kazakhstan'),
(88, 'Kenya'),
(89, 'Kiribati'),
(90, 'Kosovo'),
(91, 'Kuwait'),
(92, 'Kyrgyzstan'),
(93, 'Laos'),
(94, 'Latvia'),
(95, 'Lebanon'),
(96, 'Lesotho'),
(97, 'Liberia'),
(98, 'Libya'),
(99, 'Liechtenstein'),
(100, 'Lithuania'),
(101, 'Luxembourg'),
(102, 'Macedonia'),
(103, 'Madagascar'),
(104, 'Malawi'),
(105, 'Malaysia'),
(106, 'Maldives'),
(107, 'Mali'),
(108, 'Malta'),
(109, 'Marshall Islands'),
(110, 'Mauritania'),
(111, 'Mauritius'),
(112, 'Mexico'),
(113, 'Micronesia'),
(114, 'Moldova'),
(115, 'Monaco'),
(116, 'Mongolia'),
(117, 'Montenegro'),
(118, 'Morocco'),
(119, 'Mozambique'),
(120, 'Myanmar (Burma)'),
(121, 'Namibia'),
(122, 'Nauru'),
(123, 'Nepal'),
(124, 'Netherlands'),
(125, 'New Zealand'),
(126, 'Nicaragua'),
(127, 'Niger'),
(128, 'Nigeria'),
(129, 'North Korea'),
(130, 'Norway'),
(131, 'Oman'),
(132, 'Pakistan'),
(133, 'Palau'),
(134, 'Palestine'),
(135, 'Panama'),
(136, 'Papua New Guinea'),
(137, 'Paraguay'),
(138, 'Peru'),
(139, 'Philippines'),
(140, 'Poland'),
(141, 'Portugal'),
(142, 'Qatar'),
(143, 'Romania'),
(144, 'Russia'),
(145, 'Rwanda'),
(146, 'Saint Kitts and Nevis'),
(147, 'Saint Lucia'),
(148, 'Saint Vincent and the Grenadines'),
(149, 'Samoa'),
(150, 'San Marino'),
(151, 'Sao Tome and Principe'),
(152, 'Saudi Arabia'),
(153, 'Senegal'),
(154, 'Serbia'),
(155, 'Seychelles'),
(156, 'Sierra Leone'),
(157, 'Singapore'),
(158, 'Slovakia'),
(159, 'Slovenia'),
(160, 'Solomon Islands'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'South Korea'),
(164, 'South Sudan'),
(165, 'Spain'),
(166, 'Sri Lanka'),
(167, 'Sudan'),
(168, 'Suriname'),
(169, 'Swaziland'),
(170, 'Sweden'),
(171, 'Switzerland'),
(172, 'Syria'),
(173, 'Taiwan'),
(174, 'Tajikistan'),
(175, 'Tanzania'),
(176, 'Thailand'),
(177, 'Timor-Leste'),
(178, 'Togo'),
(179, 'Tonga'),
(180, 'Trinidad and Tobago'),
(181, 'Tunisia'),
(182, 'Turkey'),
(183, 'Turkmenistan'),
(184, 'Tuvalu'),
(185, 'Uganda'),
(186, 'Ukraine'),
(187, 'United Arab Emirates (UAE)'),
(188, 'United Kingdom (UK)'),
(189, 'United States of America (USA)'),
(190, 'Uruguay'),
(191, 'Uzbekistan'),
(192, 'Vanuatu'),
(193, 'Vatican City (Holy See)'),
(194, 'Venezuela'),
(195, 'Vietnam'),
(196, 'Yemen'),
(197, 'Zambia'),
(198, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `customertype`
--

CREATE TABLE `customertype` (
  `id` int(11) NOT NULL,
  `custtyp` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customertype`
--

INSERT INTO `customertype` (`id`, `custtyp`, `status`) VALUES
(1, 'CNF', 0),
(2, 'DEALER', 0),
(3, 'SUB-DEALER', 0),
(4, 'RETAILER', 0);

-- --------------------------------------------------------

--
-- Table structure for table `custtransaction`
--

CREATE TABLE `custtransaction` (
  `id` int(11) NOT NULL,
  `custid` varchar(255) NOT NULL,
  `invoiceno` varchar(255) NOT NULL,
  `doe` varchar(55) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `remark` text NOT NULL,
  `accno` varchar(255) NOT NULL,
  `debit` decimal(20,2) NOT NULL,
  `credit` decimal(20,2) NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `dos` varchar(255) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `crtdid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custtransaction`
--

INSERT INTO `custtransaction` (`id`, `custid`, `invoiceno`, `doe`, `purpose`, `remark`, `accno`, `debit`, `credit`, `balance`, `dos`, `crtd`, `crtdid`, `status`) VALUES
(1, 'DGKCLNT1700018', '', '31-01-2017', 'SECURITY', 'SECURITY Deposit Purpose', 'DGKCLNT1700018', '50000.00', '0.00', '50000.00', '2017-01-31 12:07:40 PM', 'admin', 1, 0),
(2, 'DGKCLNT1700018', '', '31-01-2017', 'ADVANCE PAYMENT', 'ADVANCE PAYMENT Deposit Purpose', 'DGKCLNT1700018', '1000000.00', '0.00', '1000000.00', '2017-01-31 05:36:48 PM', 'admin', 1, 0),
(3, 'DGKCLNT1700018', 'GKINV1770042', '31-01-2017', 'Purchase E-Rickshaw', 'E-Rickshaw(ER INDIA G-7S)', 'DGKCLNT1700018', '0.00', '140558.04', '859441.96', '2017-01-31 01:12:59 PM', 'admin', 1, 0),
(4, 'DGKCLNT1700018', 'GKINV1770043', '31-01-2017', 'Purchase E-Rickshaw', 'E-Rickshaw(ER INDIA G-7S)(2)', 'DGKCLNT1700018', '0.00', '140558.04', '718883.92', '2017-01-31 01:16:24 PM', 'admin', 1, 0),
(5, 'DGKCLNT1700018', 'GKINV1770045', '31-01-2017', 'Purchase E-Rickshaw', 'E-Rickshaw(ER INDIA K-9)(5)#GKINV1770045', 'DGKCLNT1700018', '0.00', '216240.00', '502643.92', '2017-01-31 01:41:55 PM', 'admin', 1, 0),
(11, 'DGKCLNT1700030', 'GKINV1770047', '31-01-2017', 'Purchase E-Rickshaw', 'E-Rickshaw(ER INDIA G-7S)(1)#GKINV1770047', 'DGKCLNT1700030', '0.00', '70279.02', '29720.98', '2017-01-31 03:50:55 PM', 'admin', 1, 0),
(10, 'DGKCLNT1700030', '', '31-01-2017', 'ADVANCE PAYMENT', 'ADVANCE PAYMENT Deposit Purpose', 'DGKCLNT1700030', '100000.00', '0.00', '100000.00', '2017-01-31 08:07:57 PM', 'admin', 1, 0),
(9, 'DGKCLNT1700030', '', '31-01-2017', 'SECURITY', 'SECURITY Deposit Purpose', 'DGKCLNT1700030', '50000.00', '0.00', '50000.00', '2017-01-31 08:06:46 PM', 'admin', 1, 0),
(12, 'DGKCLNT1700030', 'GKINV1770048', '06-02-2017', 'Purchase E-Rickshaw', 'E-Rickshaw(ER INDIA G-7S)(1)#GKINV1770048', 'DGKCLNT1700030', '0.00', '84748.23', '-55027.25', '2017-02-06 02:46:26 PM', 'admin', 1, 0),
(13, 'DGKCLNT1700030', 'GKINV1770049', '06-02-2017', 'Purchase E-Rickshaw', 'E-Rickshaw(ER INDIA G-7S)(1)#GKINV1770049', 'DGKCLNT1700030', '0.00', '84748.23', '-139775.48', '2017-02-06 02:57:42 PM', 'admin', 1, 0),
(14, '', '542136', '06-02-2017', 'Purchase purpose', 'Purchase goods purpose', '', '508.00', '0.00', '508.00', '2017-02-06 10:32:21 PM', 'admin', 1, 0),
(15, 'GKSUP00003', '542136', '07-02-2017', 'Purchase purpose', 'Purchase goods purpose', 'GKSUP00003', '508.00', '0.00', '508.00', '2017-02-07 04:46:08 AM', 'admin', 1, 0),
(16, 'GKSUP00001', '121212', '07-02-2017', 'Purchase purpose', 'Purchase goods purpose', 'GKSUP00001', '5297.88', '0.00', '5297.88', '2017-02-07 07:12:56 AM', 'admin', 1, 0),
(17, 'GKSUP00004', '125463', '08-02-2017', 'Purchase purpose', 'Purchase goods purpose', 'GKSUP00004', '4000.00', '0.00', '4000.00', '2017-02-08 09:55:32 AM', 'admin', 1, 0),
(18, 'GKSUP00003', '547896', '08-02-2017', 'Purchase purpose', 'Purchase goods purpose', 'GKSUP00003', '75508.00', '0.00', '75508.00', '2017-02-08 10:13:23 AM', 'admin', 1, 0),
(19, 'GKSUP00001', '542163', '08-02-2017', 'Purchase purpose', 'Purchase goods purpose', 'GKSUP00001', '11697.88', '0.00', '11697.88', '2017-02-08 11:01:10 AM', 'admin', 1, 0),
(20, 'GKSUP00002', '47896', '08-02-2017', 'Purchase purpose', 'Purchase goods purpose', 'GKSUP00002', '2302.31', '0.00', '2302.31', '2017-02-08 11:27:31 AM', 'admin', 1, 0),
(21, 'CGKCLNT1700028', 'GKSLSBK70052', '09-02-2017', 'PAY BOOKING AMOUNT', 'PAY BOOKING AMOUNT Deposit Purpose', 'CGKCLNT1700028', '450000.00', '0.00', '450000.00', '2017-02-09 12:56:09 PM', 'admin', 1, 0),
(22, 'TGKCLNT1700023', 'GKSLSBK70053', '09-02-2017', 'PAY BOOKING AMOUNT', 'PAY BOOKING AMOUNT Deposit Purpose', 'TGKCLNT1700023', '45000.00', '0.00', '45000.00', '2017-02-09 01:28:27 PM', 'admin', 1, 0),
(23, 'TGKCLNT1700023', 'GKSLSBK70054', '10-02-2017', 'PAY BOOKING AMOUNT', 'PAY BOOKING AMOUNT Deposit Purpose', 'TGKCLNT1700023', '300000.00', '0.00', '345000.00', '2017-02-10 07:59:36 PM', 'admin', 1, 0),
(24, 'DGKCLNT1700030', 'GKSLSBK70055', '10-02-2017', 'PAY BOOKING AMOUNT', 'PAY BOOKING AMOUNT Deposit Purpose', 'DGKCLNT1700030', '500000.00', '0.00', '360224.52', '2017-02-10 08:08:13 PM', 'admin', 1, 0),
(25, 'GKSUP00002', '54321', '11-02-2017', 'purchase', 'Purchase perpose', 'GKSUP00002', '3000.00', '0.00', '5302.31', '2017-02-11 12:53:31 AM', 'admin', 1, 0),
(26, 'CGKCLNT1700028', 'GKINV1770050', '12-02-2017', 'Purchase E-Rickshaw', 'E-Rickshaw(ER INDIA G-7S)(2)#GKINV1770050', 'CGKCLNT1700028', '0.00', '153537.67', '296462.33', '2017-02-12 12:03:58 AM', 'admin', 1, 0),
(27, 'CGKCLNT1700028', 'GKSLSBK70057', '13-02-2017', 'PAY BOOKING AMOUNT', 'PAY BOOKING AMOUNT Deposit Purpose', 'CGKCLNT1700028', '1500000.00', '0.00', '1796462.33', '2017-02-13 11:51:17 PM', 'admin', 1, 0),
(28, 'CGKCLNT1700028', 'GKINV1770051', '13-02-2017', 'Purchase E-Rickshaw', 'E-Rickshaw(ER INDIA G-7S)(10)#GKINV1770051', 'CGKCLNT1700028', '0.00', '925741.85', '870720.48', '2017-02-13 07:27:14 PM', 'admin', 1, 0),
(29, 'CGKCLNT1700028', 'GKSLSBK70058', '14-02-2017', 'PAY BOOKING AMOUNT', 'PAY BOOKING AMOUNT Deposit Purpose', 'CGKCLNT1700028', '700000.00', '0.00', '1570720.48', '2017-02-14 12:08:42 AM', 'admin', 1, 0),
(30, 'TGKCLNT1700023', 'GKINV70052', '13-02-2017', 'Purchase E-Rickshaw', 'CHARGER(ER INDIA G-7)()(2)#GKINV70052', 'TGKCLNT1700023', '0.00', '0.00', '345000.00', '2017-02-13 10:17:21 PM', 'admin', 1, 0),
(31, 'TGKCLNT1700023', 'GKINV70052', '13-02-2017', 'Purchase E-Rickshaw', 'CHARGER(ER INDIA G-7)()(2)#GKINV70052', 'TGKCLNT1700023', '0.00', '0.00', '345000.00', '2017-02-13 10:34:02 PM', 'admin', 1, 0),
(32, 'TGKCLNT1700023', 'GKINV70052', '13-02-2017', 'Purchase E-Rickshaw', 'CHARGER(ER INDIA G-7)()(2)#GKINV70052', 'TGKCLNT1700023', '0.00', '0.00', '345000.00', '2017-02-13 10:35:09 PM', 'admin', 1, 0),
(33, 'TGKCLNT1700023', 'GKINV70052', '13-02-2017', 'Purchase E-Rickshaw', 'CHARGER(ER INDIA G-7)()(2)#GKINV70052', 'TGKCLNT1700023', '0.00', '0.00', '345000.00', '2017-02-13 10:36:10 PM', 'admin', 1, 0),
(34, 'TGKCLNT1700023', 'GKINV70052', '13-02-2017', 'Purchase E-Rickshaw', 'CHARGER(ER INDIA G-7)()(2)#GKINV70052', 'TGKCLNT1700023', '0.00', '0.00', '345000.00', '2017-02-13 10:37:39 PM', 'admin', 1, 0),
(35, 'TGKCLNT1700023', 'GKINV70053', '13-02-2017', 'Purchase E-Rickshaw', 'CHARGER(ER INDIA G-7)()(2)#GKINV70053', 'TGKCLNT1700023', '0.00', '5300.00', '339700.00', '2017-02-13 10:39:33 PM', 'admin', 1, 0),
(36, 'TGKCLNT1700023', 'GKINV70053', '13-02-2017', 'Purchase E-Rickshaw', 'CHARGER(ER INDIA G-7)()(2)#GKINV70053', 'TGKCLNT1700023', '0.00', '5300.00', '334400.00', '2017-02-13 10:39:54 PM', 'admin', 1, 0),
(37, 'TGKCLNT1700023', 'GKINV70054', '13-02-2017', 'Purchase E-Rickshaw', 'CHARGER(ER INDIA G-7)()(2)#GKINV70054', 'TGKCLNT1700023', '0.00', '5300.00', '329100.00', '2017-02-13 10:47:55 PM', 'admin', 1, 0),
(38, 'CGKCLNT1700028', 'GKINV70056', '03-10-2017', 'Purchase E-Rickshaw', 'E-Rickshaw(ER INDIA G-7S)(10)#GKINV70056', 'CGKCLNT1700028', '0.00', '752636.00', '818084.48', '2017-10-03 11:50:15 AM', 'admin', 1, 0),
(39, 'CGKCLNT1700028', 'GKINV70057', '03-10-2017', 'Purchase E-Rickshaw', 'E-Rickshaw(ER INDIA G-7S)(2)#GKINV70057', 'CGKCLNT1700028', '0.00', '2701402.91', '-1883318.43', '2017-10-03 11:57:54 AM', 'admin', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custtransaction31012017`
--

CREATE TABLE `custtransaction31012017` (
  `id` int(11) NOT NULL,
  `custid` varchar(255) NOT NULL,
  `invoiceno` varchar(255) NOT NULL,
  `doe` varchar(55) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `remark` text NOT NULL,
  `accno` varchar(255) NOT NULL,
  `debit` decimal(20,2) NOT NULL,
  `credit` decimal(20,2) NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `dos` varchar(255) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `crtdid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custtransaction31012017`
--

INSERT INTO `custtransaction31012017` (`id`, `custid`, `invoiceno`, `doe`, `purpose`, `remark`, `accno`, `debit`, `credit`, `balance`, `dos`, `crtd`, `crtdid`, `status`) VALUES
(1, 'GKCLNT1600009', '', '01-01-2017', 'Security', 'Security Deposit', 'GKCLNT1600009', '0.00', '1000000.00', '1000000.00', '2017-01-01 12:15:40pm', 'admin', 1, 0),
(2, 'GKCLNT1600009', '', '22-01-2017', 'Security', 'security Deposit', 'GKCLNT1600009', '0.00', '400000.00', '1200000.00', '2017-01-22 12:15:40pm', 'admin', 1, 0),
(3, 'GKCLNT1600009', '', '22-01-2017', 'Balance', 'Openning Balance', 'GKCLNT1600009', '0.00', '1000000.00', '1000000.00', '2017-01-23 12:15:40pm', 'admin', 1, 0),
(4, 'GKCLNT1600009', '', '07-01-2017', 'Security', 'Security Adjust', 'GKCLNT1600009', '200000.00', '0.00', '800000.00', '2017-01-07 12:15:40pm', 'admin', 1, 0),
(5, 'GKSUP201610035', '123456', '12-01-2017', 'purchase', 'Purchase purpose', 'GKSUP201610035', '0.00', '1000000.00', '1000000.00', '2017-01-12 12:15:40pm', 'admin', 1, 0),
(6, 'GKSUP00004', '54321', '25-01-2017', 'purchase', 'Purchase perpose', 'GKSUP00004', '12.00', '0.00', '12.00', '2017-01-25 12:45:33 AM', 'admin', 1, 0),
(7, 'GKSUP00004', '32134', '25-01-2017', 'purchase', 'Purchase perpose', 'GKSUP00004', '1.00', '0.00', '13.00', '2017-01-25 01:20:05 AM', 'admin', 1, 0),
(8, 'CGKCLNT1700017', '546321', '27-01-2017', 'SECURITY', 'SECURITY Deposit Purpose', 'CGKCLNT1700017', '540000.00', '0.00', '540013.00', '2017-01-27 04:15:29 PM', 'admin', 1, 0),
(9, 'CGKCLNT1700017', '546321', '27-01-2017', 'SECURITY', 'SECURITY Deposit Purpose', 'CGKCLNT1700017', '540000.00', '0.00', '540000.00', '2017-01-27 04:23:28 PM', 'admin', 1, 0),
(10, 'CGKCLNT1700017', '546321', '27-01-2017', 'SECURITY', 'SECURITY Deposit Purpose', 'CGKCLNT1700017', '540000.00', '0.00', '540000.00', '2017-01-27 04:29:18 PM', 'admin', 1, 0),
(11, 'CGKCLNT1700017', '546321', '27-01-2017', 'SECURITY', 'SECURITY Deposit Purpose', 'CGKCLNT1700017', '540000.00', '0.00', '1080000.00', '2017-01-27 04:48:42 PM', 'admin', 1, 0),
(12, 'CGKCLNT1700017', '', '27-01-2017', 'ADVANCE PAYMENT', 'ADVANCE PAYMENT Deposit Purpose', 'CGKCLNT1700017', '5000.00', '0.00', '5000.00', '2017-01-27 04:53:41 PM', 'admin', 1, 0),
(13, 'CGKCLNT1700017', '54321456', '27-01-2017', 'ADVANCE PAYMENT', 'ADVANCE PAYMENT Deposit Purpose', 'CGKCLNT1700017', '51000.00', '0.00', '56000.00', '2017-01-27 05:28:59 PM', 'admin', 1, 0),
(14, 'CGKCLNT1700017', '', '27-01-2017', 'ADVANCE PAYMENT', 'ADVANCE PAYMENT Deposit Purpose', 'CGKCLNT1700017', '500000.00', '0.00', '556000.00', '2017-01-27 06:18:39 PM', 'admin', 1, 0),
(15, 'DGKCLNT1700018', '', '27-01-2017', 'SECURITY', 'SECURITY Deposit Purpose', 'DGKCLNT1700018', '1000000.00', '0.00', '1000000.00', '2017-01-27 06:20:43 PM', 'admin', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cust_order`
--

CREATE TABLE `cust_order` (
  `id` int(11) NOT NULL,
  `piorderno` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `custid` varchar(255) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `models` longtext NOT NULL,
  `spareparts` longtext NOT NULL,
  `doe` varchar(50) NOT NULL,
  `sid` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daybydayplan`
--

CREATE TABLE `daybydayplan` (
  `id` int(11) NOT NULL,
  `salesmanid` varchar(50) NOT NULL,
  `dte` varchar(25) NOT NULL,
  `formloc` varchar(255) NOT NULL,
  `toloca` varchar(255) NOT NULL,
  `mnthcode` varchar(20) NOT NULL,
  `yrcode` varchar(20) NOT NULL,
  `custname` varchar(255) NOT NULL,
  `contactinfo` varchar(50) NOT NULL,
  `remarks` text NOT NULL,
  `dailyexpen` decimal(10,2) NOT NULL,
  `crtdby` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daybydayplan`
--

INSERT INTO `daybydayplan` (`id`, `salesmanid`, `dte`, `formloc`, `toloca`, `mnthcode`, `yrcode`, `custname`, `contactinfo`, `remarks`, `dailyexpen`, `crtdby`, `userid`, `status`) VALUES
(1, 'GKSLS0006', '2017-01-17', 'dsfds', 'sdfsdf', '01', '2017', 'sdf', '', 'jjdae', '1542.00', 'gautam basu', 6, 0),
(2, 'GKSLS0006', '2017-01-16', 'dsfds', 'sdfsdf', '01', '2017', 'sdf', '', 'jjdae', '1542.00', 'gautam basu', 6, 0),
(3, 'GKSLS0006', '2017-01-17', 'dvdb', 'ghhyj', '01', '2017', 'yjk', '21445', 'ettytytu', '100.00', 'gautam basu', 6, 0),
(4, 'GKSLS0006', '2017-01-17', 'dfgdgf', 'dgdfg', '01', '2017', 'dfgdg', '2332', 'aadadf', '414.00', 'gautam basu', 6, 0),
(5, 'GKSLS0006', '2017-01-17', 'fdfdg', 'dfgd', '01', '2017', 'dfgd', '', 'dfgd', '13.00', 'gautam basu', 6, 0),
(6, 'GKSLS0006', '2017-01-17', 'sdf', 'sdfsd', '01', '2017', 'sdfsdf', '34324', 'sdfdsf', '121.00', 'gautam basu', 6, 0),
(7, 'GKSLS0006', '2017-01-15', 'dsfds', 'sdfsdf', '01', '2017', 'sdf', '', 'jjdae', '1542.00', 'gautam basu', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `code`, `name`, `status`) VALUES
(1, 'DP001', 'Accountsw', 0),
(2, 'DP002', 'HR', 0),
(3, 'DP003', 'Purchasing', 0),
(4, 'DP004', 'Customer Relationship Manager', 0),
(5, 'DP005', 'Warehouse', 0),
(6, 'DP006', 'Inventory', 0),
(7, 'DP007', 'Service Manager', 0),
(10, 'DP008', 'SALES ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `desigcode` varchar(55) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `departments` varchar(255) NOT NULL,
  `basicsalary` decimal(20,2) NOT NULL,
  `ptax` decimal(20,2) NOT NULL,
  `tds` decimal(20,2) NOT NULL,
  `pf` decimal(10,2) NOT NULL,
  `esi` decimal(10,2) NOT NULL,
  `increment` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `reportto` varchar(255) NOT NULL,
  `crtdby` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `doe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `desigcode`, `designation`, `departments`, `basicsalary`, `ptax`, `tds`, `pf`, `esi`, `increment`, `duration`, `reportto`, `crtdby`, `status`, `doe`) VALUES
(1, 'DSG001', 'NBGDER', 'ACCOUNTSW', '25400.00', '0.00', '10.00', '5.00', '10.00', '', '', '', 'admin', 0, '2017-02-04 11:58:17 AM'),
(2, 'DSG002', 'ASDDSA', 'HR', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', 0, ''),
(3, 'DSG003', 'SALES HEAD', 'SALES ', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', '', '', 0, ''),
(4, 'DSG004', 'SALES EXECUTIVE', 'SALES ', '10000.00', '0.00', '0.00', '5.00', '2.00', '1000', '1', '', 'admin', 0, '2017-02-17 08:11:13 AM');

-- --------------------------------------------------------

--
-- Table structure for table `distributer_list`
--

CREATE TABLE `distributer_list` (
  `id` int(11) NOT NULL,
  `dist_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phno` varchar(255) NOT NULL,
  `add1` varchar(255) NOT NULL,
  `add2` varchar(255) NOT NULL,
  `add3` varchar(255) NOT NULL,
  `add4` varchar(255) NOT NULL,
  `pin` int(11) NOT NULL,
  `area` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `depositamount` decimal(20,2) NOT NULL,
  `interes` decimal(10,2) NOT NULL,
  `contactperson` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `doe` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributer_list`
--

INSERT INTO `distributer_list` (`id`, `dist_id`, `name`, `email`, `phno`, `add1`, `add2`, `add3`, `add4`, `pin`, `area`, `state`, `depositamount`, `interes`, `contactperson`, `remarks`, `doe`, `status`) VALUES
(1, 'GK/20160927/1', 'PANKAJ', 'patrapankaj36@gmail.com', '9800743629', 'abcdef', 'abcdef', 'abcdef', 'abcdef', 721648, 'abcdesg', 'EQUIPMENT', '2500.00', '5.00', 'abcdef', '  sdsdsdsds\nsdsdsdsdsdsd\nsdsdsdsdsd', '20160927 03:40:26 PM', 0),
(2, 'GK/20160927/2', 'Bibadi', 'patrapankaj36@gmail.com', '9800743629', 'abcdef', 'abcdef', 'abcdef', 'abcdef', 721648, 'abcdesg', 'EQUIPMENT', '2500.00', '5.00', 'abcdef', '  sdsdsdsds\r\nsdsdsdsdsdsd\r\nsdsdsdsdsd', '20160927 03:40:26 PM', 0),
(3, 'GK/20160927/3', 'ADFDF', 'dsfdsf', '365241', 'dsfds', 'sdfdsf', 'sdfdsf', 'sdfsd', 123456789, 'dsfdsf', 'ASSAM', '365400.00', '6.25', 'asdasdsd', '  asdasd', '20160927 10:01:33 PM', 0),
(4, 'GK/20160930/4', 'SDFDS', 'dfs@gmail.com', '7878', 'dfg', 'dfgf', 'dfgd', 'dfgd', 12312, 'sdfd', 'Prop.', '0.00', '2131.00', '231', '  123212312', '20160930 02:21:17 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `compname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(255) NOT NULL,
  `dist` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `dat` varchar(255) NOT NULL,
  `rating` int(20) NOT NULL,
  `remark1` text NOT NULL,
  `date2` varchar(255) NOT NULL,
  `remark2` text NOT NULL,
  `date3` varchar(255) NOT NULL,
  `remark3` text NOT NULL,
  `user` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `compname`, `phone`, `email`, `address`, `state`, `dist`, `location`, `dat`, `rating`, `remark1`, `date2`, `remark2`, `date3`, `remark3`, `user`, `user_id`, `status`) VALUES
(2, 'Abhishek Dolui', '', '9876543210', 'dolui.abhishek@gmail.com', 'BE-183, saltlake', '', '', '', '0000-00-00', 0, 'Hello.....', '', '', '', '', 'dsfdsfds', 0, 0),
(3, 'Shantanu Ghoshal', '', '9876543210', 'ghoshal@gmail.com', 'Saltlake, kolkata-700064', '', '', '', '0000-00-00', 0, 'Testing. 1', '12/07/2016', 'sdfsfdsfsdfdsf', '', '', 'dsfdsfds', 0, 0),
(4, 'aaaa22', '', '987654321022', 'bbbbbb222', 'ccccccc22', 'Andhra Pradesh', 'dddddd222', 'eeeeee222', '0000-00-00', 0, 'fffffffff222', '', '', '', '', 'dsfdsfds', 0, 0),
(5, 'z1', '', '99999999999999', 'z2', 'z3', 'Lakshadweep', 'z4', 'z5', '0000-00-00', 0, 'z6', '', '', '', '', 'dsfdsfds', 0, 0),
(6, 'sfasdfgas', '', '321312312312', 'vxvxzvzcvx', 'vxzvxzvxvxzv', 'Jammu and Kashmir', 'xzvxzcvxz', 'xzvxzvxzv', '12/09/2016', 0, 'xzcvzxvxvxz', '12/12/2016', 'Test', '', '', 'dsfdsfds', 0, 0),
(7, 'zdfdsfs', '', '2154', 'asdasd@gmail.com', 'asdsad', 'Andaman and Nicobar Islands', 'asdasd', 'asdas', '12/03/2016', 3, 'asdasda', '', '', '12/09/2016', 'hjljoiuoi', 'dsfdsfds', 0, 0),
(8, 'pankaj patra', '', '9800743629', 'oankaj@crystalplanetweb.com', 'asdads', 'Chandigarh', 'sdds', 'sdfds', '2016-12-09', 5, 'xffdgfdfdg', '12/24/2016', 'ffsdgfdg', '12/28/2016', 'asasd', 'dsfdsfds', 0, 0),
(9, 'Abhishek Dolui', '', '98745698', 'pankaj@crystalplanetweb.com', 'asddadf', 'Himachal Pradesh', 'sdsdf', 'sdfsdf', '2016-12-09', 5, 'fggfdfg', '12/16/2016', 'fgfdgdfgdfg', '01/04/2017', 'adadfdsfdsf', 'dsfdsfds', 0, 0),
(10, 'pankaj patra', '', '9800743629', 'pankaj@crystalpl;anetweb.com', 'assaddas', 'Haryana', 'adsasd', 'asdsa', '12/15/2016', 3, 'sdfsfsdfsd', '12/22/2016', '', '', '', 'dsfdsfds', 0, 0),
(11, 'sdfsd', '', '1212', 'dsdf@gmail.com', 'ddsf', 'Karnataka', 'dsffds', 'sdfsd', '12/20/2016', 5, 'adfsdfsdfdsfdsfsddsfd', '12/14/2016', '', '', '', 'Sougata Dalapati', 0, 0),
(12, 'ZzX', '', '122365', 'asdsa@gmail.com', 'sdfdsf', 'Andhra Pradesh', 'asasd', 'asasdads', '12/28/2016', 3, 'nbnjbj', '12/30/2016', '', '', '', 'Sougata Dalapati', 0, 0),
(13, 'abhheshikdfdfd', '', '586975489', 'pnakj@crystalplanmetweb.com', 'addf', 'West Bengal', 'ffff', 'gfhgh', '12/22/2016', 4, 'sdfsdfsdfsdsdfsdfsdfsdfdsfdsdsfdsdsfds', '12/21/2016', '', '', '', 'Sougata Dalapati', 0, 0),
(14, 'sdsdf', '', 'sdfds', 'sdfds@gmail.com', 'zsdfsd', 'Jharkhand', 'aasd', 'asdas', '01/26/2017', 3, 'sdfs', '01/25/2017', '', '', '', 'gautam basu', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry8122016`
--

CREATE TABLE `enquiry8122016` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `remark1` text NOT NULL,
  `remark2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry8122016`
--

INSERT INTO `enquiry8122016` (`id`, `name`, `phone`, `email`, `address`, `remark1`, `remark2`) VALUES
(2, 'Abhishek Dolui', '9876543210', 'dolui.abhishek@gmail.com', 'BE-183, saltlake', 'Hello.....', ''),
(3, 'Shantanu Ghoshal', '9876543210', 'ghoshal@gmail.com', 'Saltlake, kolkata-700064', 'Testing. 1', 'Testing. 2');

-- --------------------------------------------------------

--
-- Table structure for table `finalorder`
--

CREATE TABLE `finalorder` (
  `id` int(11) NOT NULL,
  `foid` varchar(255) NOT NULL,
  `venid` varchar(255) NOT NULL,
  `poid` varchar(255) NOT NULL,
  `parts` text NOT NULL,
  `model` text NOT NULL,
  `fpmnt` decimal(10,2) NOT NULL,
  `spmnt` decimal(10,2) NOT NULL,
  `thpmnt` decimal(10,2) NOT NULL,
  `fstpmnt` decimal(12,2) NOT NULL,
  `ndpmnt` decimal(12,2) NOT NULL,
  `thrdpmnt` decimal(12,2) NOT NULL,
  `frthamnt` decimal(12,2) NOT NULL,
  `restamnt` decimal(12,2) NOT NULL,
  `rstfst` decimal(12,2) NOT NULL,
  `rstsnd` decimal(12,2) NOT NULL,
  `rstthrd` decimal(12,2) NOT NULL,
  `rstfrth` decimal(12,2) NOT NULL,
  `cashmnt` varchar(255) NOT NULL,
  `procdate` varchar(255) NOT NULL,
  `disdate` varchar(255) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `currencytyp` varchar(50) NOT NULL,
  `tax` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finalorder`
--

INSERT INTO `finalorder` (`id`, `foid`, `venid`, `poid`, `parts`, `model`, `fpmnt`, `spmnt`, `thpmnt`, `fstpmnt`, `ndpmnt`, `thrdpmnt`, `frthamnt`, `restamnt`, `rstfst`, `rstsnd`, `rstthrd`, `rstfrth`, `cashmnt`, `procdate`, `disdate`, `total`, `currencytyp`, `tax`, `file`, `doe`, `status`) VALUES
(58, 'GK/F/16/121316033732', 'GK/201610035', 'GK/16/17/00001', 'GK/PC/16-17/3;ER-INDIA-G7;50;100;100;5000.00', 'ER-INDIA-G7;100;GK/PC/16-17/1;9999;200;120;120;24000.00,ER-INDIA-G7;100;GK/PC/16-17/2;1;200;100;100;20000.00,ER-INDIA-G7;100;GK/PC/16-17/3;9999;200;100;100;20000.00,ER-INDIA-G7;100;GK/PC/16-17/4;9999;500;250;250;125000.00,ER-INDIA-G7;100;GK/PC/16-17/5;9999;400;200;200;80000.00,ER-INDIA-G7;100;GK/PC/16-17/6;9999;400;250;250;100000.00,ER-INDIA-G7;100;GK/PC/16-17/7;9999;300;250;250;75000.00,ER-INDIA-G7;100;GK/PC/16-17/8;2;300;200;200;60000.00', '559900.00', '0.00', '0.00', '550.00', '0.00', '0.00', '0.00', '550.00', '9.00', '0.00', '0.00', '0.00', '9,900.00', '12/15/2016', '12/22/2016', '559900.00', 'inr', 'sales tax;10;50900.00', '', '2016-12-13 03:37:32', 0),
(59, 'GK/F/16/121316071950', 'GK/201610035', 'GK/16/17/00031', 'GK/PC/16-17/7;ER-INDIA-G7;150;250;250;37500.00', '', '43312.50', '0.00', '0.00', '40.00', '0.00', '0.00', '0.00', '40.00', '3.00', '0.00', '0.00', '0.00', '3,312.50', '12/22/2016', '12/31/2016', '43312.50', 'inr', 'sdsds;5;1875.00,mnbjghb;10;3937.50', '', '2016-12-13 07:19:50', 0),
(60, 'GK/F/16/121416065215', 'GK/201610035', 'GK/16/17/00031', 'GK/PC/16-17/7;ER-INDIA-G7;150;250;250;37500.00', '', '43312.50', '0.00', '0.00', '25.00', '0.00', '0.00', '0.00', '25.00', '18.00', '0.00', '0.00', '0.00', '18,312.50', '12/22/2016', '12/31/2016', '43312.50', 'inr', 'sdsds;5;1875.00,mnbjghb;10;3937.50', '', '2016-12-14 06:52:15', 0),
(61, 'GK/F/16/121516082708', 'GK/201610035', 'GK/16/17/00032', '', 'G5;250;GK/PC/16-17/1;9999;500;120;120;60000.00', '67098.00', '0.00', '0.00', '67.00', '0.00', '0.00', '0.00', '67.00', '0.00', '0.00', '0.00', '0.00', '0.00', '12/16/2016', '12/24/2016', '67098.00', 'inr', 'SALES;5;3300.00,ROAD;6;3798.00', '', '2016-12-15 08:27:08', 0),
(62, 'GK/F/16/122116123625', 'GK/201610035', 'GK/16/17/00033', '', 'G5;25;GK/PC/16-17/1;9999;750;100;100;75000.00', '83250.00', '0.00', '0.00', '83.00', '0.00', '0.00', '0.00', '83.00', '0.00', '0.00', '0.00', '0.00', '0.00', '12/22/2016', '12/17/2016', '83250.00', 'inr', 'sales;10;8250.00', '', '2016-12-21 12:36:25', 0),
(63, 'GK/F/16/122316093450', 'GK/201610035', 'GK/16/17/00033', '', 'G5;25;GK/PC/16-17/1;9999;750;100;100;75000.00', '83250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '12/22/2016', '12/17/2016', '83250.00', 'inr', 'sales;10;8250.00', '', '2016-12-23 09:34:50', 0),
(64, 'GK/F/16/122316093723', 'GK/201610035', 'GK/16/17/00033', '', 'G5;25;GK/PC/16-17/1;9999;750;100;100;75000.00', '83250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '12/22/2016', '12/17/2016', '83250.00', 'inr', 'sales;10;8250.00', '', '2016-12-23 09:37:23', 0),
(65, 'GK/F/16/122316094225', 'GK/201610035', 'GK/16/17/00033', '', 'G5;25;GK/PC/16-17/1;9999;750;100;100;75000.00', '83250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '12/22/2016', '12/17/2016', '83250.00', 'inr', 'sales;10;8250.00', '', '2016-12-23 09:42:25', 0),
(66, 'GK/F/16/122316094333', 'GK/201610035', 'GK/16/17/00033', '', 'G5;25;GK/PC/16-17/1;9999;750;100;100;75000.00', '83250.00', '0.00', '0.00', '83.00', '0.00', '0.00', '0.00', '83.00', '0.00', '0.00', '0.00', '0.00', '0.00', '12/22/2016', '12/17/2016', '83250.00', 'inr', 'sales;10;8250.00', '', '2016-12-23 09:43:33', 0),
(67, 'GK/F/16/122316095712', 'GK/201610035', 'GK/16/17/00033', '', 'G5;25;GK/PC/16-17/1;9999;750;100;100;75000.00', '83250.00', '0.00', '0.00', '83.00', '0.00', '0.00', '0.00', '83.00', '0.00', '0.00', '0.00', '0.00', '0.00', '12/22/2016', '12/17/2016', '83250.00', 'inr', 'sales;10;8250.00', '', '2016-12-23 09:57:12', 0),
(68, 'GK/F/16/122316095759', 'GK/201610035', 'GK/16/17/00033', '', 'G5;25;GK/PC/16-17/1;9999;750;100;100;75000.00', '83250.00', '0.00', '0.00', '83.00', '0.00', '0.00', '0.00', '83.00', '0.00', '0.00', '0.00', '0.00', '0.00', '12/22/2016', '12/17/2016', '83250.00', 'inr', 'sales;10;8250.00', '', '2016-12-23 09:57:59', 0),
(69, 'GK/F/16/122316101121', 'GK/201610035', 'GK/16/17/00033', '', 'G5;25;GK/PC/16-17/1;9999;750;100;100;75000.00', '83250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '12/22/2016', '12/17/2016', '83250.00', 'inr', 'sales;10;8250.00', '', '2016-12-23 10:11:21', 0),
(70, 'GK/F/16/122316101325', 'GK/201610035', 'GK/16/17/00033', '', 'G5;25;GK/PC/16-17/1;9999;750;100;100;75000.00', '83250.00', '0.00', '0.00', '20.00', '5.00', '0.00', '0.00', '25.00', '58.00', '250.00', '0.00', '0.00', '58,250.00', '12/22/2016', '12/17/2016', '83250.00', 'inr', 'sales;10;8250.00', '', '2016-12-23 10:13:25', 0),
(71, 'GK/F/16/122416070357', 'GK/201610035', 'GK/16/17/00033', '', 'G5;25;GK/PC/16-17/1;9999;750;100;10;7500.00', '83250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '12/22/2016', '12/17/2016', '8250.00', 'inr', 'sales;10;750.00', '', '2016-12-24 07:03:57', 0),
(72, 'GK/F/17/012317024208', 'GK/201610035', 'GK/17/18/00035', '', 'ER INDIA G-7;5;GK/PC/16-17/1;14;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/4;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/5;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/6;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/7;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/8;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/9;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/10;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/11;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/12;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/13;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/14;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/15;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/16;9999;10;2;2;20.00,ER INDIA G-7;5;GK/PC/16-17/17;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/18;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/19;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/20;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/21;1;20;1;1;20.00,ER INDIA G-7;5;GK/PC/16-17/22;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/23;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/24;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/25;3;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/26;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/27;7;5;1;1;,ER INDIA G-7;5;GK/PC/16-17/28;9999;20;1;1;20.00,ER INDIA G-7;5;GK/PC/16-17/29;9;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/30;10;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/108;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/109;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/110;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/111;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/112;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/113;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/114;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/115;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/116;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/117;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/118;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/119;9999;40;1;1;40.00,ER INDIA G-7;5;GK/PC/16-17/120;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/121;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/122;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/123;9999;20;1;1;20.00,ER INDIA G-7;5;GK/PC/16-17/124;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/125;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/126;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/127;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/128;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/129;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/130;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/131;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/132;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/133;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/134;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/135;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/136;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/137;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/138;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/139;9999;20;1;1;20.00,ER INDIA G-7;5;GK/PC/16-17/140;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/141;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/142;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/143;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/144;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/145;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/146;9999;20;1;1;20.00,ER INDIA G-7;5;GK/PC/16-17/147;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/148;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/149;9999;20;1;1;20.00,ER INDIA G-7;5;GK/PC/16-17/150;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/151;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/152;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/153;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/154;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/155;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/156;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/157;9999;10;1;1;10.00,ER INDIA G-7;5;GK/PC/16-17/158;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/159;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/160;9999;5;1;1;5.00,ER INDIA G-7;5;GK/PC/16-17/161;9999;10;1;1;10.00', '50.00', '5.16', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '01/25/2017', '01/26/2017', '55.16', 'inr', 'fdgf;2;1.00,dfgd;3;1.53,dfg;5;2.63', '', '2017-01-23 02:42:08', 0),
(74, 'GKFNL17012400037', 'GKSUP00004', 'GKPONO17012400037', '', 'ER INDIA G-7;2;GKPC00001;9999;2;2;2;4.00,ER INDIA G-7;2;GKPC00002;9999;2;2;2;4.00,ER INDIA G-7;2;GKPC00003;9999;2;3;3;6.00,ER INDIA G-7;2;GKPC00004;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00005;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00006;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00007;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00008;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00009;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00010;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00011;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00012;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00013;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00014;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00015;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00016;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00017;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00018;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00019;9999;8;1;1;8.00,ER INDIA G-7;2;GKPC00020;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00021;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00022;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00023;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00024;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00025;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00026;9999;8;1;1;8.00,ER INDIA G-7;2;GKPC00027;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00028;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00106;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00107;9999;2;11;11;22.00,ER INDIA G-7;2;GKPC00108;9999;2;1;1;0.00,ER INDIA G-7;2;GKPC00109;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00110;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00111;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00112;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00113;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00114;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00115;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00116;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00117;9999;16;1;1;16.00,ER INDIA G-7;2;GKPC00118;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00119;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00120;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00121;9999;8;1;1;8.00,ER INDIA G-7;2;GKPC00122;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00123;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00124;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00125;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00126;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00127;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00128;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00129;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00130;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00131;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00132;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00133;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00134;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00135;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00136;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00137;9999;8;1;1;8.00,ER INDIA G-7;2;GKPC00138;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00139;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00140;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00141;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00142;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00143;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00144;9999;8;1;1;8.00,ER INDIA G-7;2;GKPC00145;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00146;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00147;9999;8;1;1;8.00,ER INDIA G-7;2;GKPC00148;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00149;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00150;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00151;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00152;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00153;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00154;9999;2;11;11;22.00,ER INDIA G-7;2;GKPC00155;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00156;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00157;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00158;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00159;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00160;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00161;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00162;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00163;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00164;9999;2;1;1;2.00,ER INDIA G-7;2;GKPC00165;9999;4;1;1;4.00,ER INDIA G-7;2;GKPC00166;9999;8;1;1;8.00', '20.64', '12.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '01/25/2017', '01/26/2017', '33.64', 'inr', 'qqw;5;1.40,qww;4;1.18,ssd;10;3.06', '', '2017-01-24 10:24:13', 0),
(75, 'GKFNL17021000041', 'GKSUP00002', 'GKPONO17021000041', '', 'ER INDIA G-7;20;GKPC00001;9999;20;10;10;200.00,ER INDIA G-7;20;GKPC00002;9999;20;10;10;200.00,ER INDIA G-7;20;GKPC00003;9999;20;10;10;200.00,ER INDIA G-7;20;GKPC00004;9999;20;10;10;200.00,ER INDIA G-7;20;GKPC00005;9999;20;10;10;200.00,ER INDIA G-7;20;GKPC00006;9999;20;10;10;200.00,ER INDIA G-7;20;GKPC00007;9999;20;10;10;200.00,ER INDIA G-7;20;GKPC00008;9999;20;10;10;200.00,ER INDIA G-7;20;GKPC00009;9999;20;10;10;200.00,ER INDIA G-7;20;GKPC00010;9999;20;1;1;20.00,ER INDIA G-7;20;GKPC00011;9999;20;1;1;20.00,ER INDIA G-7;20;GKPC00012;9999;40;1;1;40.00,ER INDIA G-7;20;GKPC00013;9999;20;1;1;20.00,ER INDIA G-7;20;GKPC00014;9999;40;1;1;40.00,ER INDIA G-7;20;GKPC00015;9999;20;1;1;20.00,ER INDIA G-7;20;GKPC00016;9999;40;1;1;40.00,ER INDIA G-7;20;GKPC00017;9999;20;1;1;20.00,ER INDIA G-7;20;GKPC00018;9999;20;1;1;20.00,ER INDIA G-7;20;GKPC00019;9999;80;2;2;160.00,ER INDIA G-7;20;GKPC00020;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00021;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00022;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00023;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00024;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00025;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00026;9999;80;2;2;160.00,ER INDIA G-7;20;GKPC00027;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00028;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00106;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00107;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00108;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00109;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00110;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00111;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00112;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00113;9999;40;2;2;80.00,ER INDIA G-7;20;GKPC00114;9999;40;2;2;80.00,ER INDIA G-7;20;GKPC00115;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00116;9999;40;2;2;80.00,ER INDIA G-7;20;GKPC00117;9999;160;2;2;320.00,ER INDIA G-7;20;GKPC00118;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00119;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00120;9999;20;22;22;440.00,ER INDIA G-7;20;GKPC00121;9999;80;2;2;0.00,ER INDIA G-7;20;GKPC00122;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00123;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00124;9999;40;2;2;80.00,ER INDIA G-7;20;GKPC00125;9999;40;2;2;80.00,ER INDIA G-7;20;GKPC00126;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00127;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00128;9999;20;22;22;440.00,ER INDIA G-7;20;GKPC00129;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00130;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00131;9999;40;2;2;80.00,ER INDIA G-7;20;GKPC00132;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00133;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00134;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00135;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00136;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00137;9999;80;2;2;160.00,ER INDIA G-7;20;GKPC00138;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00139;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00140;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00141;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00142;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00143;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00144;9999;80;2;2;160.00,ER INDIA G-7;20;GKPC00145;9999;40;2;2;80.00,ER INDIA G-7;20;GKPC00146;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00147;9999;80;2;2;160.00,ER INDIA G-7;20;GKPC00148;9999;40;2;2;80.00,ER INDIA G-7;20;GKPC00149;9999;40;2;2;80.00,ER INDIA G-7;20;GKPC00150;9999;40;2;2;80.00,ER INDIA G-7;20;GKPC00151;9999;20;22;22;440.00,ER INDIA G-7;20;GKPC00152;9999;20;2;2;40.00,ER INDIA G-7;20;GKPC00153;9999;40;2;2;80.00,ER INDIA G-7;20;GKPC00154;9999;20;22;22;440.00,ER INDIA G-7;20;GKPC00155;9999;40;2;2;0.00,ER INDIA G-7;20;GKPC00156;9999;20;2;2;0.00,ER INDIA G-7;20;GKPC00157;9999;20;22;22;440.00,ER INDIA G-7;20;GKPC00158;9999;20;22;22;440.00,ER INDIA G-7;20;GKPC00159;9999;40;22;22;880.00,ER INDIA G-7;20;GKPC00160;9999;20;22;22;440.00,ER INDIA G-7;20;GKPC00161;9999;20;22;22;440.00,ER INDIA G-7;20;GKPC00162;9999;40;22;22;880.00,ER INDIA G-7;20;GKPC00163;9999;40;22;22;880.00,ER INDIA G-7;20;GKPC00164;9999;20;22;22;440.00,ER INDIA G-7;20;GKPC00165;9999;40;22;22;880.00,ER INDIA G-7;20;GKPC00166;9999;80;22;22;1760.00', '3000.00', '153.70', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '02/01/2017', '02/09/2017', '3153.70', 'inr', ';52;946.40,;14;387.30', '', '2017-02-10 08:21:52', 0),
(76, 'GKFNL17021300043', 'GKSUP00002', 'GKPONO17021300043', 'GKPC00117;ER INDIA G-7;80;20;20;1600.00,GKPC00026;ER INDIA G-7;40;20;20;800.00', '', '2400.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '', '', '2400.00', 'inr', '', '', '2017-02-13 09:10:37', 0),
(77, 'GKFNL17021400045', 'GKSUP00002', 'GKPONO17021400045', '', 'ER INDIA G-7;5;GKPC00001;9999;5;10;10;50.00,ER INDIA G-7;5;GKPC00002;9999;5;10;10;50.00,ER INDIA G-7;5;GKPC00003;9999;5;10;10;50.00,ER INDIA G-7;5;GKPC00004;9999;5;10;10;50.00,ER INDIA G-7;5;GKPC00119;9999;5;10;10;50.00', '274.96', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '02/16/2017', '02/24/2017', '274.96', 'inr', 'sales;5;13.85,ex;4;11.11', '', '2017-02-14 01:38:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gdownstock`
--

CREATE TABLE `gdownstock` (
  `id` int(11) NOT NULL,
  `partsid` varchar(255) NOT NULL,
  `mnme` varchar(255) NOT NULL,
  `spefcid` varchar(255) NOT NULL,
  `gdownid` varchar(255) NOT NULL,
  `openqty` int(20) NOT NULL,
  `closestock` int(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crted` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gdownstock`
--

INSERT INTO `gdownstock` (`id`, `partsid`, `mnme`, `spefcid`, `gdownid`, `openqty`, `closestock`, `qty`, `doe`, `status`, `crted`) VALUES
(1, '66', 'ER INDIA G-7S', '', '9', 0, 0, 100, '2017-01-09', 0, 'admin'),
(2, '67', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(3, '68', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(4, '69', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(5, '70', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(6, '71', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(7, '72', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(8, '73', 'ER INDIA G-7S', '', '9', 0, 207, 207, '2017-01-07', 0, 'admin'),
(9, '74', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(10, '75', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(11, '76', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(12, '77', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(13, '78', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(14, '79', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(15, '80', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(16, '81', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(17, '82', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(18, '83', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(19, '84', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(20, '85', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(21, '86', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(22, '87', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(23, '88', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(24, '89', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(25, '90', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(26, '91', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(27, '92', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(28, '93', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(29, '94', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(30, '95', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(31, '96', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(32, '97', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(33, '98', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(34, '99', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(35, '100', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(36, '101', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(37, '102', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(38, '103', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(39, '104', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(40, '105', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(41, '3', 'ER INDIA G-7', '', '8', 59, 0, 59, '2016-12-30', 0, 'admin'),
(42, '4', 'ER INDIA G-7', '', '8', 68, 0, 68, '2016-12-30', 0, 'admin'),
(43, '5', 'ER INDIA G-7', '', '8', 110, 0, 110, '2017-02-15', 0, 'admin'),
(44, '6', 'ER INDIA G-7', '', '8', 69, 0, 69, '2016-12-30', 0, 'admin'),
(45, '7', 'ER INDIA G-7', '', '8', 0, 0, 0, '2016-12-30', 0, 'admin'),
(46, '8', 'ER INDIA G-7', '', '8', 69, 0, 69, '2016-12-30', 0, 'admin'),
(47, '9', 'ER INDIA G-7', '', '8', 69, 0, 69, '2016-12-30', 0, 'admin'),
(48, '10', 'ER INDIA G-7', '', '8', 0, 0, 0, '2016-12-30', 0, 'admin'),
(49, '11', 'ER INDIA G-7', '', '8', 69, 0, 69, '2016-12-30', 0, 'admin'),
(50, '12', 'ER INDIA G-7', '', '8', 69, 0, 69, '2016-12-30', 0, 'admin'),
(51, '13', 'ER INDIA G-7', '', '8', 0, 0, 0, '2016-12-30', 0, 'admin'),
(52, '14', 'ER INDIA G-7', '', '8', 138, 0, 138, '2016-12-30', 0, 'admin'),
(53, '15', 'ER INDIA G-7', '', '8', 68, 0, 68, '2016-12-30', 0, 'admin'),
(54, '16', 'ER INDIA G-7', '', '8', 138, 0, 138, '2016-12-30', 0, 'admin'),
(55, '17', 'ER INDIA G-7', '', '8', 69, 0, 69, '2016-12-30', 0, 'admin'),
(56, '18', 'ER INDIA G-7', '', '8', 138, 0, 138, '2016-12-30', 0, 'admin'),
(57, '19', 'ER INDIA G-7', '', '8', 69, 0, 69, '2016-12-30', 0, 'admin'),
(58, '20', 'ER INDIA G-7', '', '8', 69, 0, 69, '2016-12-30', 0, 'admin'),
(59, '22', 'ER INDIA G-7', '', '8', 71, 0, 71, '2016-12-30', 0, 'admin'),
(60, '23', 'ER INDIA G-7', '', '8', 69, 0, 69, '2016-12-30', 0, 'admin'),
(61, '24', 'ER INDIA G-7', '', '8', 69, 0, 69, '2016-12-30', 0, 'admin'),
(62, '26', 'ER INDIA G-7', '', '8', 0, 0, 0, '2016-12-30', 0, 'admin'),
(63, '28', 'ER INDIA G-7', '', '8', 0, 0, 0, '2016-12-30', 0, 'admin'),
(64, '21', 'ER INDIA G-7', '1', '8', 276, 0, 276, '2016-12-30', 0, 'admin'),
(65, '25', 'ER INDIA G-7', '3', '8', 69, 0, 69, '2016-12-30', 0, 'admin'),
(66, '31', 'ER INDIA K-9', '', '8', 256, 0, 256, '2016-12-28', 0, 'admin'),
(67, '32', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(68, '33', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(69, '34', 'ER INDIA K-9', '', '8', 0, 512, 512, '2016-12-28', 0, 'admin'),
(70, '35', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(71, '36', 'ER INDIA K-9', '', '8', 0, 512, 512, '2016-12-28', 0, 'admin'),
(72, '37', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(73, '38', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(74, '39', 'ER INDIA K-9', '', '8', 0, 0, 0, '2016-12-28', 0, 'admin'),
(75, '40', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(76, '41', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(77, '42', 'ER INDIA K-9', '', '8', 0, 0, 0, '2016-12-28', 0, 'admin'),
(78, '43', 'ER INDIA K-9', '', '8', 0, 512, 512, '2016-12-28', 0, 'admin'),
(79, '44', 'ER INDIA K-9', '', '8', 0, 228, 228, '2016-12-28', 0, 'admin'),
(80, '45', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(81, '46', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(82, '47', 'ER INDIA K-9', '', '8', 0, 512, 512, '2016-12-28', 0, 'admin'),
(83, '48', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(84, '49', 'ER INDIA K-9', '', '8', 0, 512, 512, '2016-12-28', 0, 'admin'),
(85, '50', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(86, '51', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(87, '52', 'ER INDIA K-9', '', '8', 0, 268, 268, '2016-12-28', 0, 'admin'),
(88, '53', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(89, '54', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(90, '55', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(91, '56', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(92, '57', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(93, '58', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(94, '59', 'ER INDIA K-9', '', '8', 0, 0, 0, '2016-12-28', 0, 'admin'),
(95, '60', 'ER INDIA K-9', '', '8', 0, 512, 512, '2016-12-28', 0, 'admin'),
(96, '61', 'ER INDIA K-9', '', '8', 0, 512, 512, '2016-12-28', 0, 'admin'),
(97, '62', 'ER INDIA K-9', '', '8', 0, 512, 512, '2016-12-28', 0, 'admin'),
(98, '63', 'ER INDIA K-9', '', '8', 0, 256, 256, '2016-12-28', 0, 'admin'),
(99, '64', 'ER INDIA K-9', '', '8', 0, 0, 0, '2016-12-28', 0, 'admin'),
(100, '65', 'ER INDIA K-9', '', '8', 0, 0, 0, '2016-12-28', 0, 'admin'),
(101, '106', 'ER INDIA K-9', '', '8', 0, 0, 0, '2016-12-28', 0, 'admin'),
(102, '107', 'ER INDIA K-9', '', '8', 0, 80, 80, '2016-12-28', 0, 'admin'),
(103, '66', 'ER INDIA G-7S', '', '7', 10, -20, 10, '2017-02-14', 0, 'admin'),
(104, '67', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(105, '68', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(106, '69', 'ER INDIA G-7S', '', '7', 414, 0, 414, '2017-01-05', 0, 'admin'),
(107, '70', 'ER INDIA G-7S', '', '7', 414, 0, 414, '2017-01-05', 0, 'admin'),
(108, '71', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(109, '72', 'ER INDIA G-7S', '', '7', 414, 0, 414, '2017-01-05', 0, 'admin'),
(110, '73', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(111, '74', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(112, '75', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(113, '76', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(114, '77', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(115, '78', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(116, '79', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(117, '80', 'ER INDIA G-7S', '', '7', 414, 0, 414, '2017-01-05', 0, 'admin'),
(118, '81', 'ER INDIA G-7S', '', '7', 192, 0, 192, '2017-01-05', 0, 'admin'),
(119, '82', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(120, '83', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(121, '84', 'ER INDIA G-7S', '', '7', 414, 0, 414, '2017-01-05', 0, 'admin'),
(122, '85', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(123, '86', 'ER INDIA G-7S', '', '7', 414, 0, 414, '2017-01-05', 0, 'admin'),
(124, '87', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(125, '88', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(126, '89', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(127, '90', 'ER INDIA G-7S', '', '7', 414, 0, 414, '2017-01-05', 0, 'admin'),
(128, '91', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(129, '92', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(130, '93', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(131, '94', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(132, '95', 'ER INDIA G-7S', '', '7', 187, 0, 187, '2017-01-05', 0, 'admin'),
(133, '96', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(134, '97', 'ER INDIA G-7S', '', '7', 1035, 0, 1035, '2017-01-05', 0, 'admin'),
(135, '98', 'ER INDIA G-7S', '', '7', 414, 0, 414, '2017-01-05', 0, 'admin'),
(136, '99', 'ER INDIA G-7S', '', '7', 301, 0, 301, '2017-01-05', 0, 'admin'),
(137, '100', 'ER INDIA G-7S', '', '7', 366, 0, 366, '2017-01-05', 0, 'admin'),
(138, '101', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(139, '102', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(140, '103', 'ER INDIA G-7S', '', '7', 828, 0, 828, '2017-01-05', 0, 'admin'),
(141, '104', 'ER INDIA G-7S', '', '7', 406, 0, 406, '2017-01-05', 0, 'admin'),
(142, '105', 'ER INDIA G-7S', '', '7', 207, 0, 207, '2017-01-05', 0, 'admin'),
(143, '27', 'ER INDIA G-7', '', '8', 20, 0, 20, '2016-12-30', 0, 'admin'),
(144, '29', 'ER INDIA G-7', '', '8', 30, 0, 30, '2016-12-30', 0, 'admin'),
(145, '30', 'ER INDIA G-7', '', '8', 40, 0, 40, '2016-12-30', 0, 'admin'),
(147, '108', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(148, '109', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(149, '110', 'ER INDIA G-7', '10042', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(150, '111', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(151, '112', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(152, '113', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(153, '114', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(154, '115', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(155, '116', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(156, '117', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(157, '118', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(158, '119', 'ER INDIA G-7', '', '8', 0, 552, 552, '2016-12-30', 0, 'admin'),
(159, '120', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(160, '121', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(161, '122', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(162, '123', 'ER INDIA G-7', '', '8', 0, 276, 276, '2016-12-30', 0, 'admin'),
(163, '124', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(164, '125', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(165, '126', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(166, '127', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(167, '128', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(168, '129', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(169, '130', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(170, '131', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(171, '132', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(172, '133', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(173, '134', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(174, '135', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(175, '136', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(176, '137', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(177, '138', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(178, '139', 'ER INDIA G-7', '', '8', 0, 276, 276, '2016-12-30', 0, 'admin'),
(179, '140', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(180, '141', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(181, '142', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(182, '143', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(183, '144', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(184, '145', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(185, '146', 'ER INDIA G-7', '', '8', 0, 276, 276, '2016-12-30', 0, 'admin'),
(186, '147', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(187, '148', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(188, '149', 'ER INDIA G-7', '', '8', 0, 276, 276, '2016-12-30', 0, 'admin'),
(189, '150', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(190, '151', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(191, '152', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(192, '153', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(193, '154', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(194, '155', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(195, '156', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(196, '157', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(197, '158', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(198, '159', 'ER INDIA G-7', '10043', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(199, '160', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(200, '161', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(201, '162', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(202, '163', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(203, '164', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(204, '165', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(205, '166', 'ER INDIA G-7', '', '8', 0, 69, 69, '2016-12-30', 0, 'admin'),
(206, '167', 'ER INDIA G-7', '', '8', 0, 138, 138, '2016-12-30', 0, 'admin'),
(207, '168', 'ER INDIA G-7', '', '8', 0, 276, 276, '2016-12-30', 0, 'admin'),
(208, '3', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(209, '4', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(210, '5', 'ER INDIA G-7', '', '7', 20, 628, 30, '2017-02-15', 0, 'admin'),
(211, '6', 'ER INDIA G-7', '', '7', 626, 624, 2, '2017-02-14', 0, 'warehouse1'),
(212, '7', 'ER INDIA G-7', '', '7', 55, 0, 55, '2017-01-06', 0, 'admin'),
(213, '8', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(214, '9', 'ER INDIA G-7', '', '7', 0, 207, 207, '2017-01-06', 0, 'admin'),
(215, '10', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(216, '11', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(217, '12', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(218, '13', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(219, '14', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(220, '15', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(221, '16', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(222, '17', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(223, '18', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(224, '19', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(225, '20', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(226, '21', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-02', 0, 'admin'),
(227, '22', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(228, '23', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(229, '24', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(230, '25', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-02', 0, 'admin'),
(231, '26', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(232, '27', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-02', 0, 'admin'),
(233, '28', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(234, '29', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-02', 0, 'admin'),
(235, '30', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-02', 0, 'admin'),
(236, '108', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(237, '109', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(238, '111', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(239, '112', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(240, '113', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(241, '114', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(242, '115', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(243, '116', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(244, '117', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(245, '118', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(246, '119', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(247, '120', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(248, '121', 'ER INDIA G-7', '', '7', 624, 614, 10, '2017-02-14', 0, 'warehouse1'),
(249, '122', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(250, '123', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(251, '124', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(252, '125', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(253, '126', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(254, '127', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(255, '128', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(256, '129', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(257, '130', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(258, '131', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(259, '132', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(260, '133', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(261, '134', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(262, '135', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(263, '136', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(264, '137', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(265, '138', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(266, '139', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(267, '140', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(268, '141', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(269, '142', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(270, '143', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(271, '144', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(272, '145', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(273, '146', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(274, '147', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(275, '148', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(276, '149', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(277, '150', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(278, '151', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(279, '152', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(280, '153', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(281, '154', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(282, '155', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(283, '156', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(284, '157', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(285, '158', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(286, '160', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(287, '161', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(288, '162', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(289, '163', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(290, '164', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(291, '165', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(292, '166', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(293, '167', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(294, '168', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(295, '225', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(296, '226', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(297, '227', 'ER INDIA G-7S', '', '7', 0, 227, 227, '2017-01-05', 0, 'admin'),
(298, '228', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(299, '229', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(300, '230', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(301, '231', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(302, '232', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(303, '233', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(304, '234', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(305, '235', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(306, '236', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(307, '237', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(308, '238', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(309, '239', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(310, '240', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(311, '241', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(312, '242', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(313, '243', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(314, '244', 'ER INDIA G-7S', '', '7', 10, -20, 10, '2017-02-14', 0, 'admin'),
(315, '245', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(316, '246', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(317, '247', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(318, '248', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(319, '249', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(320, '250', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(321, '251', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(322, '252', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(323, '253', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(324, '254', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(325, '255', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(326, '256', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(327, '257', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(328, '258', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(329, '259', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(330, '260', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(331, '261', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(332, '262', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(333, '263', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(334, '264', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(335, '265', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(336, '266', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(337, '267', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(338, '268', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(339, '269', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(340, '270', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(341, '271', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(342, '272', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(343, '273', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(344, '274', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(345, '275', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(346, '276', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(347, '277', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(348, '278', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(349, '279', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(350, '280', 'ER INDIA G-7S', '', '7', 0, 0, 0, '2017-01-05', 0, 'admin'),
(351, '110', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(352, '159', 'ER INDIA G-7', '', '7', 0, 0, 0, '2017-01-06', 0, 'admin'),
(353, '225', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(354, '226', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(355, '227', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(356, '228', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(357, '229', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(358, '230', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(359, '231', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(360, '232', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(361, '233', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(362, '234', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(363, '235', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(364, '236', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(365, '237', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(366, '238', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(367, '239', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(368, '240', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(369, '241', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(370, '242', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(371, '243', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(372, '244', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(373, '245', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(374, '246', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(375, '247', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(376, '248', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(377, '249', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(378, '250', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(379, '251', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(380, '252', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(381, '253', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(382, '254', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(383, '255', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(384, '256', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(385, '257', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(386, '258', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(387, '259', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(388, '260', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(389, '261', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(390, '262', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(391, '263', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(392, '264', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(393, '265', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(394, '266', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(395, '267', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(396, '268', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(397, '269', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(398, '270', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(399, '271', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(400, '272', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(401, '273', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(402, '274', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(403, '275', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(404, '276', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(405, '277', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(406, '278', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(407, '279', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(408, '280', 'ER INDIA G-7S', '', '9', 0, 0, 0, '2017-01-07', 0, 'admin'),
(410, '244', 'ER INDIA G-7S', '', '7', 10, -20, 10, '2017-02-14', 0, 'admin'),
(411, '66', 'ER INDIA G-7S', '', '8', 275, 0, 475, '2017-02-14', 0, 'admin'),
(412, '68', 'ER INDIA G-7S', '', '8', 225, 0, 225, '2017-01-09', 0, 'admin'),
(413, '3', 'ER INDIA G-7', '2', '8', 0, 0, 110, '2017-02-14', 0, 'admin'),
(414, '5', 'ER INDIA G-7', '2', '8', 110, 0, 110, '2017-02-15', 0, 'admin'),
(415, '4', 'ER INDIA G-7', '2', '8', 0, 0, 80, '2017-02-14', 0, 'admin'),
(416, '6', 'ER INDIA G-7', '2', '8', 0, 0, 60, '2017-02-10', 0, 'admin'),
(417, '8', 'ER INDIA G-7', '2', '8', 0, 0, 60, '2017-02-10', 0, 'admin'),
(418, '4', 'ER INDIA G-7', '1', '8', 0, 0, 40, '2017-02-10', 0, 'admin'),
(419, '7', 'ER INDIA G-7', '2', '8', 0, 0, 40, '2017-02-10', 0, 'admin'),
(420, '9', 'ER INDIA G-7', '2', '8', 0, 0, 40, '2017-02-10', 0, 'admin'),
(421, '10', 'ER INDIA G-7', '2', '8', 0, 0, 40, '2017-02-10', 0, 'admin'),
(422, '11', 'ER INDIA G-7', '2', '8', 0, 0, 20, '2017-02-10', 0, 'admin'),
(423, '14', 'ER INDIA G-7', '10', '8', 0, 0, 51, '2017-02-10', 0, 'admin'),
(424, '15', 'ER INDIA G-7', '10', '8', 0, 0, 25, '2017-02-10', 0, 'admin'),
(425, '16', 'ER INDIA G-7', '10', '8', 0, 0, 30, '2017-02-10', 0, 'admin'),
(426, '17', 'ER INDIA G-7', '10', '8', 0, 0, 40, '2017-02-10', 0, 'admin'),
(427, '21', 'ER INDIA G-7', '10', '8', 0, 0, 2, '2017-02-10', 0, 'admin'),
(428, '20', 'ER INDIA G-7', '10', '8', 0, 0, 2, '2017-02-10', 0, 'admin'),
(429, '19', 'ER INDIA G-7', '10', '8', 0, 0, 2, '2017-02-10', 0, 'admin'),
(430, '18', 'ER INDIA G-7', '10', '8', 0, 0, 2, '2017-02-10', 0, 'admin'),
(431, '119', 'ER INDIA G-7', '10', '7', 0, 0, 10, '2017-02-10', 0, 'admin'),
(432, '37', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(433, '66', 'ER INDIA G-7S', '2', '7', 10, -20, 10, '2017-02-14', 0, 'admin'),
(434, '67', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(435, '68', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(436, '69', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(437, '70', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(438, '71', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(439, '72', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(440, '73', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(441, '74', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(442, '75', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(443, '76', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(444, '77', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(445, '78', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(446, '79', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(447, '80', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(448, '81', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(449, '82', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(450, '83', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(451, '84', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(452, '85', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(453, '86', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(454, '87', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(455, '88', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(456, '89', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(457, '90', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(458, '91', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(459, '92', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(460, '93', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(461, '94', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(462, '95', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(463, '97', 'ER INDIA G-7S', '1', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(464, '98', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(465, '99', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(466, '100', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(467, '101', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(468, '102', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(469, '103', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(470, '104', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(471, '105', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(472, '225', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(473, '226', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(474, '227', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(475, '228', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(476, '229', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(477, '230', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(478, '231', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(479, '232', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(480, '236', 'ER INDIA G-7S', '1', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(481, '237', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(482, '238', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(483, '239', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(484, '240', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(485, '241', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(486, '242', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(487, '243', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(488, '244', 'ER INDIA G-7S', '2', '7', 10, -20, 10, '2017-02-14', 0, 'admin'),
(489, '246', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(490, '247', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(491, '250', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(492, '251', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(493, '252', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(494, '255', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(495, '257', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(496, '258', 'ER INDIA G-7S', '2', '7', 0, 0, 3, '2017-02-11', 0, 'admin'),
(497, '31', 'ER INDIA K-9', '1', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(498, '32', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(499, '33', 'ER INDIA K-9', '1', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(500, '34', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(501, '35', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(502, '36', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(503, '38', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(504, '40', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(505, '41', 'ER INDIA K-9', '', '9', 0, 0, 0, '2017-02-11', 0, 'admin'),
(506, '42', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(507, '43', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(508, '44', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(509, '45', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(510, '46', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(511, '47', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(512, '48', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(513, '49', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(514, '50', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(515, '52', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(516, '54', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(517, '55', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(518, '56', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(519, '57', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(520, '58', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(521, '59', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(522, '61', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(523, '62', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(524, '63', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(525, '64', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(526, '65', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(527, '106', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(528, '107', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(529, '169', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(530, '170', 'ER INDIA K-9', '2', '9', 0, 0, 3, '2017-02-11', 0, 'admin'),
(531, '3', 'ER INDIA G-7', '20', '9', 0, 0, 40, '2017-02-13', 0, 'admin'),
(532, '4', 'ER INDIA G-7', '20', '9', 40, 0, 60, '2017-02-15', 0, 'admin'),
(533, '5', 'ER INDIA G-7', '20', '9', 0, 0, 60, '2017-02-13', 0, 'admin'),
(534, '6', 'ER INDIA G-7', '', '9', 8, 28, 20, '2017-02-15', 0, 'admin'),
(535, '119', 'ER INDIA G-7', '20', '8', 0, 0, 4, '2017-02-13', 0, 'admin'),
(536, '28', 'ER INDIA G-7', '20', '8', 0, 0, 4, '2017-02-13', 0, 'admin'),
(537, '31', 'ER INDIA K-9', '', '7', 0, 0, 0, '2017-02-14', 0, 'admin'),
(538, '205', 'ER INDIA K-9', '', '7', 0, 0, 0, '2017-02-14', 0, 'admin'),
(539, '281', 'ER INDIA G-7S', '', '8', 100, 0, 100, '2017-02-14', 0, 'admin'),
(540, '104', 'ER INDIA G-7S', '', '8', 200, 0, 200, '2017-02-14', 0, 'admin'),
(541, '5', 'ER INDIA G-7', '20', '9', 0, 0, 20, '2017-02-14', 0, 'admin'),
(542, '6', 'ER INDIA G-7', '40', '9', 8, 28, 20, '2017-02-15', 0, 'admin'),
(543, '121', 'ER INDIA G-7', '20', '9', 0, 0, 8, '2017-02-14', 0, 'admin'),
(544, '121', 'ER INDIA G-7', '2', '8', 0, 0, 20, '2017-02-14', 0, 'admin'),
(545, '3', 'ER INDIA G-7', '2', '7', 0, 0, 20, '2017-02-14', 0, 'admin'),
(546, '4', 'ER INDIA G-7', '2', '7', 0, 0, 20, '2017-02-14', 0, 'admin'),
(547, '5', 'ER INDIA G-7', '1', '7', 20, 0, 30, '2017-02-15', 0, 'admin'),
(548, '6', 'ER INDIA G-7', '2', '7', 0, 0, 20, '2017-02-14', 0, 'admin'),
(549, '121', 'ER INDIA G-7', '2', '7', 0, 0, 20, '2017-02-14', 0, 'admin'),
(550, '3', 'ER INDIA G-7', '2', '9', 0, 0, 10, '2017-02-14', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `gdownstock02012017`
--

CREATE TABLE `gdownstock02012017` (
  `id` int(11) NOT NULL,
  `partsid` varchar(255) NOT NULL,
  `mnme` varchar(255) NOT NULL,
  `spefcid` varchar(255) NOT NULL,
  `gdownid` varchar(255) NOT NULL,
  `openqty` int(20) NOT NULL,
  `closestock` int(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crted` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gdownstock02012017`
--

INSERT INTO `gdownstock02012017` (`id`, `partsid`, `mnme`, `spefcid`, `gdownid`, `openqty`, `closestock`, `qty`, `doe`, `status`, `crted`) VALUES
(31, '1', 'G5', '10016', '1', 750, 150, 900, '2016-12-28', 0, 'admin'),
(32, '1', 'G5', '10017', '1', 376, 25, 401, '2016-12-28', 0, 'admin'),
(33, '1', 'G5', '10014', '1', 250, 400, 650, '2016-12-28', 0, 'admin'),
(34, '1', 'G5', '10015', '1', 205, 100, 305, '2016-12-28', 0, 'admin'),
(35, '1', 'G5', '10021', '1', 150, 25, 175, '2016-12-28', 0, 'admin'),
(36, '1', 'G5', '10022', '1', 100, 50, 150, '2016-12-28', 0, 'admin'),
(48, '5', 'G5', '', '1', 152, 56, 208, '2016-12-28', 0, 'admin'),
(47, '4', 'G5', '', '1', 152, 56, 208, '2016-12-28', 0, 'admin'),
(46, '3', 'G5', '10020', '1', 152, 56, 208, '2016-12-28', 0, 'admin'),
(45, '3', 'G5', '10019', '1', 100, 48, 148, '2016-12-28', 0, 'admin'),
(44, '2', 'G5', '', '1', 750, 150, 900, '2016-12-28', 0, 'admin'),
(49, '6', 'G5', '', '1', 152, 56, 208, '2016-12-28', 0, 'admin'),
(50, '7', 'G5', '', '1', 152, 56, 208, '2016-12-28', 0, 'admin'),
(51, '8', 'K9', '', '1', 0, 100, 100, '2016-12-28', 0, 'admin'),
(52, '9', 'K9', '', '1', 0, 200, 200, '2016-12-28', 0, 'admin'),
(53, '10', 'K9', '', '1', 0, 200, 200, '2016-12-28', 0, 'admin'),
(54, '11', 'K9', '', '1', 0, 100, 100, '2016-12-28', 0, 'admin'),
(55, '12', 'K9', '', '1', 0, 0, 0, '2016-12-28', 0, 'admin'),
(56, '13', 'K9', '', '1', 0, 0, 0, '2016-12-28', 0, 'admin'),
(57, '14', 'K9', '', '1', 0, 0, 0, '2016-12-28', 0, 'admin'),
(58, '1', 'G5', '10014', '3', 70, 25, 95, '2016-12-28', 0, 'admin'),
(59, '1', 'G5', '10015', '3', 70, 25, 95, '2016-12-28', 0, 'admin'),
(60, '2', 'G5', '', '3', 150, 25, 175, '2016-12-28', 0, 'admin'),
(61, '4', 'G5', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(62, '5', 'G5', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(63, '6', 'G5', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(64, '7', 'G5', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(65, '1', 'G5', '10016', '3', 20, 25, 45, '2016-12-28', 0, 'admin'),
(66, '1', 'G5', '10017', '3', 20, 252, 272, '2016-12-28', 0, 'admin'),
(67, '1', 'G5', '10021', '3', 20, 52, 72, '2016-12-28', 0, 'admin'),
(68, '1', 'G5', '10022', '3', 20, 52, 72, '2016-12-28', 0, 'admin'),
(69, '3', 'G5', '10019', '3', 0, 100, 100, '2016-12-28', 0, 'admin'),
(70, '3', 'G5', '10020', '3', 0, 100, 100, '2016-12-28', 0, 'admin'),
(71, '8', 'K9', '', '2', 0, 200, 200, '2016-12-28', 0, 'admin'),
(72, '9', 'K9', '', '2', 0, 300, 300, '2016-12-28', 0, 'admin'),
(73, '10', 'K9', '', '2', 0, 400, 400, '2016-12-28', 0, 'admin'),
(74, '11', 'K9', '', '2', 0, 500, 500, '2016-12-28', 0, 'admin'),
(75, '12', 'K9', '', '2', 50, 100, 150, '2016-12-28', 0, 'admin'),
(76, '13', 'K9', '', '2', 60, 250, 310, '2016-12-28', 0, 'admin'),
(77, '14', 'K9', '', '2', 70, 300, 370, '2016-12-28', 0, 'admin'),
(78, '3', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(79, '4', 'ER INDIA G-7', '', '3', 0, 50, 50, '2016-12-28', 0, 'admin'),
(80, '5', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(81, '6', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(82, '7', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(83, '8', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(84, '9', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(85, '10', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(86, '11', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(87, '12', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(88, '13', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(89, '14', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(90, '15', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(91, '16', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(92, '17', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(93, '18', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(94, '19', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(95, '20', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(96, '22', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(97, '23', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(98, '24', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(99, '26', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(100, '28', 'ER INDIA G-7', '', '3', 0, 0, 0, '2016-12-28', 0, 'admin'),
(101, '66', 'K-9S', '', '2', 20, 0, 20, '2017-01-02', 0, 'admin'),
(102, '67', 'K-9S', '', '2', 20, 0, 20, '2017-01-02', 0, 'admin'),
(103, '68', 'K-9S', '', '2', 20, 0, 20, '2017-01-02', 0, 'admin'),
(104, '69', 'K-9S', '', '2', 20, 0, 20, '2017-01-02', 0, 'admin'),
(105, '70', 'K-9S', '', '2', 20, 0, 20, '2017-01-02', 0, 'admin'),
(106, '71', 'K-9S', '', '2', 20, 0, 20, '2017-01-02', 0, 'admin'),
(107, '72', 'K-9S', '', '2', 20, 0, 20, '2017-01-02', 0, 'admin'),
(108, '73', 'K-9S', '', '2', 30, 0, 30, '2017-01-02', 0, 'admin'),
(109, '74', 'K-9S', '', '2', 20, 0, 20, '2017-01-02', 0, 'admin'),
(110, '75', 'K-9S', '', '2', 30, 0, 30, '2017-01-02', 0, 'admin'),
(111, '76', 'K-9S', '', '2', 50, 0, 50, '2017-01-02', 0, 'admin'),
(112, '77', 'K-9S', '', '2', 50, 0, 50, '2017-01-02', 0, 'admin'),
(113, '78', 'K-9S', '', '2', 60, 0, 60, '2017-01-02', 0, 'admin'),
(114, '79', 'K-9S', '', '2', 70, 0, 70, '2017-01-02', 0, 'admin'),
(115, '80', 'K-9S', '', '2', 80, 0, 80, '2017-01-02', 0, 'admin'),
(116, '81', 'K-9S', '', '2', 90, 0, 90, '2017-01-02', 0, 'admin'),
(117, '82', 'K-9S', '', '2', 90, 0, 90, '2017-01-02', 0, 'admin'),
(118, '83', 'K-9S', '', '2', 90, 0, 90, '2017-01-02', 0, 'admin'),
(119, '84', 'K-9S', '', '2', 90, 0, 90, '2017-01-02', 0, 'admin'),
(120, '85', 'K-9S', '', '2', 90, 0, 90, '2017-01-02', 0, 'admin'),
(121, '86', 'K-9S', '', '2', 90, 0, 90, '2017-01-02', 0, 'admin'),
(122, '87', 'K-9S', '', '2', 90, 0, 90, '2017-01-02', 0, 'admin'),
(123, '88', 'K-9S', '', '2', 50, 0, 50, '2017-01-02', 0, 'admin'),
(124, '89', 'K-9S', '', '2', 50, 0, 50, '2017-01-02', 0, 'admin'),
(125, '90', 'K-9S', '', '2', 50, 0, 50, '2017-01-02', 0, 'admin'),
(126, '91', 'K-9S', '', '2', 50, 0, 50, '2017-01-02', 0, 'admin'),
(127, '92', 'K-9S', '', '2', 60, 0, 60, '2017-01-02', 0, 'admin'),
(128, '93', 'K-9S', '', '2', 70, 0, 70, '2017-01-02', 0, 'admin'),
(129, '94', 'K-9S', '', '2', 80, 0, 80, '2017-01-02', 0, 'admin'),
(130, '95', 'K-9S', '', '2', 90, 0, 90, '2017-01-02', 0, 'admin'),
(131, '96', 'K-9S', '', '2', 50, 0, 50, '2017-01-02', 0, 'admin'),
(132, '97', 'K-9S', '', '2', 70, 0, 70, '2017-01-02', 0, 'admin'),
(133, '98', 'K-9S', '', '2', 50, 0, 50, '2017-01-02', 0, 'admin'),
(134, '99', 'K-9S', '', '2', 80, 0, 80, '2017-01-02', 0, 'admin'),
(135, '100', 'K-9S', '', '2', 90, 0, 90, '2017-01-02', 0, 'admin'),
(136, '101', 'K-9S', '', '2', 15, 0, 15, '2017-01-02', 0, 'admin'),
(137, '102', 'K-9S', '', '2', 15, 0, 15, '2017-01-02', 0, 'admin'),
(138, '103', 'K-9S', '', '2', 10, 0, 10, '2017-01-02', 0, 'admin'),
(139, '104', 'K-9S', '', '2', 10, 0, 10, '2017-01-02', 0, 'admin'),
(140, '105', 'K-9S', '', '2', 25, 0, 25, '2017-01-02', 0, 'admin'),
(141, '31', 'K-9', '12', '', 0, 250, 250, '2016-12-30', 0, 'admin'),
(142, '32', 'K-9', '10003', '', 300, 200, 500, '2016-12-30', 0, 'admin'),
(143, '49', 'K-9', '', '', 0, 0, 0, '2016-12-30', 0, 'admin'),
(144, '106', 'K-9', '', '', 0, 0, 0, '2016-12-30', 0, 'admin'),
(145, '107', 'K-9', '', '', 0, 0, 0, '2016-12-30', 0, 'admin'),
(146, '225', 'K-9S', '', '2', 280, 0, 280, '2017-01-02', 0, 'admin'),
(147, '226', 'K-9S', '', '2', 0, 207, 207, '2017-01-02', 0, 'admin'),
(148, '227', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(149, '228', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(150, '229', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(151, '230', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(152, '231', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(153, '232', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(154, '233', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(155, '234', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(156, '235', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(157, '236', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(158, '237', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(159, '238', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(160, '239', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(161, '240', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(162, '241', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(163, '242', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(164, '243', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(165, '244', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(166, '245', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(167, '246', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(168, '247', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(169, '248', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(170, '249', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(171, '250', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(172, '251', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(173, '252', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(174, '253', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(175, '254', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(176, '255', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(177, '256', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(178, '257', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(179, '258', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(180, '259', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(181, '260', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(182, '261', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(183, '262', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(184, '263', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(185, '264', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(186, '265', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(187, '266', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(188, '267', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(189, '268', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(190, '269', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(191, '270', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(192, '271', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(193, '272', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(194, '273', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(195, '274', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(196, '275', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(197, '276', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(198, '277', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(199, '278', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(200, '279', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(201, '280', 'K-9S', '', '2', 0, 0, 0, '2017-01-02', 0, 'admin'),
(202, '66', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(203, '67', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(204, '68', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(205, '69', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(206, '70', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(207, '71', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(208, '72', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(209, '73', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(210, '74', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(211, '75', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(212, '76', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(213, '77', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(214, '78', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(215, '79', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(216, '80', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(217, '81', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(218, '82', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(219, '83', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(220, '84', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(221, '85', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(222, '86', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(223, '87', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(224, '88', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(225, '89', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(226, '90', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(227, '91', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(228, '92', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(229, '93', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(230, '94', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(231, '95', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(232, '96', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(233, '97', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(234, '98', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(235, '99', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(236, '100', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(237, '101', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(238, '102', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(239, '103', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(240, '104', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(241, '105', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(242, '225', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(243, '226', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(244, '227', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(245, '228', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(246, '229', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(247, '230', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(248, '231', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(249, '232', 'K-9S', '', '1', 0, 207, 207, '2017-01-02', 0, 'admin'),
(250, '233', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(251, '234', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(252, '235', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(253, '236', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(254, '237', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(255, '238', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(256, '239', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(257, '240', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(258, '241', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(259, '242', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(260, '243', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(261, '244', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(262, '245', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(263, '246', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(264, '247', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(265, '248', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(266, '249', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(267, '250', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(268, '251', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(269, '252', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(270, '253', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(271, '254', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(272, '255', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(273, '256', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(274, '257', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(275, '258', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(276, '259', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(277, '260', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(278, '261', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(279, '262', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(280, '263', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(281, '264', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(282, '265', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(283, '266', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(284, '267', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(285, '268', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(286, '269', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(287, '270', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(288, '271', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(289, '272', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(290, '273', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(291, '274', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(292, '275', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(293, '276', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(294, '277', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(295, '278', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(296, '279', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin'),
(297, '280', 'K-9S', '', '1', 0, 0, 0, '2017-01-02', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `gdownstock23`
--

CREATE TABLE `gdownstock23` (
  `id` int(11) NOT NULL,
  `partsid` varchar(255) NOT NULL,
  `mnme` varchar(255) NOT NULL,
  `spefcid` varchar(255) NOT NULL,
  `gdownid` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crted` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gdownstock23`
--

INSERT INTO `gdownstock23` (`id`, `partsid`, `mnme`, `spefcid`, `gdownid`, `qty`, `doe`, `status`, `crted`) VALUES
(1, '2', 'G5', '1', '1', 20, '', 0, ''),
(2, '2', 'G5', '2', '1', 10, '', 0, ''),
(3, '7', 'G5', '16', '2', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `getpassorder`
--

CREATE TABLE `getpassorder` (
  `id` int(11) NOT NULL,
  `orderno` varchar(255) NOT NULL,
  `pono` varchar(255) NOT NULL,
  `model` varchar(11) NOT NULL,
  `trackno` varchar(255) NOT NULL,
  `trackcontact` varchar(255) NOT NULL,
  `driver` varchar(255) NOT NULL,
  `trnstype` varchar(255) NOT NULL,
  `partyname` varchar(255) NOT NULL,
  `boxno` varchar(255) NOT NULL,
  `boxqty` int(11) NOT NULL,
  `partsid` varchar(255) NOT NULL,
  `partsqty` int(11) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL,
  `shortage` int(11) NOT NULL DEFAULT '0',
  `updtby` varchar(50) NOT NULL,
  `chk1` int(11) NOT NULL DEFAULT '0',
  `chk2` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `getpassorder`
--

INSERT INTO `getpassorder` (`id`, `orderno`, `pono`, `model`, `trackno`, `trackcontact`, `driver`, `trnstype`, `partyname`, `boxno`, `boxqty`, `partsid`, `partsqty`, `doe`, `crtd`, `tot`, `shortage`, `updtby`, `chk1`, `chk2`, `status`) VALUES
(91, 'GKORD/17-18/125', 'GK/17/18/00035', 'ER INDIA G-', '', '', '', 'manf', '', '2fdfd', 5, '3', 5, '2017-01-23 02:45:14 PM', 'admin', 5, 0, '', 0, 0, 0),
(92, 'GKORD/17-18/125', 'GK/17/18/00035', 'ER INDIA G-', '', '', '', 'manf', '', '2fdfd', 5, '5', 5, '2017-01-23 02:45:14 PM', 'admin', 5, 0, '', 0, 0, 0),
(90, 'GKORD/16-17/122', 'GK/16/17/00032', 'G5', '', '', '', 'sales', 'ABC pvt ltd', 'BOX1', 25, '1', 50, '2016-12-15 08:36:26 AM', 'admin', 50, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `godown`
--

CREATE TABLE `godown` (
  `id` int(11) NOT NULL,
  `gdname` varchar(255) NOT NULL,
  `gdowncode` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `doe` varchar(255) NOT NULL,
  `crtd` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `godown`
--

INSERT INTO `godown` (`id`, `gdname`, `gdowncode`, `area`, `address`, `status`, `doe`, `crtd`) VALUES
(8, 'NANDA', 'GKWREHSE002', '6500 SQ. FT.', 'P.O- NANDA, P.S- SINGHUR, DIST - HOOGHLY', 0, '2016-12-27 01:12:28 AM', 'admin'),
(7, 'KAMDEBPUR', 'GKWREHSE001', '21084 SQ. FT.', 'ERENGE, KAMDEBPUR, P.S- POLBA, P.O- SUGANDHYA, CHINSURAH, DIST - HOOGHLY.', 0, '2016-12-27 01:14:18 AM', 'admin'),
(9, 'BIGHATI', 'GKWREHSE003', '', 'BHADRESWAR, DELHI ROAD, BIGHATI MORE, HOOGHLY, WEST BENGAL 712124', 0, '2016-12-27 01:47:34 AM', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `incentive`
--

CREATE TABLE `incentive` (
  `id` int(11) NOT NULL,
  `min_length` int(11) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `incentive`
--

INSERT INTO `incentive` (`id`, `min_length`, `max_length`, `price`) VALUES
(1, 51, 70, '20.00'),
(2, 71, 90, '25.00'),
(3, 91, 110, '30.00'),
(4, 111, 130, '35.00'),
(5, 131, 150, '40.00'),
(6, 151, 170, '45.00'),
(7, 171, 190, '50.00'),
(8, 191, 210, '55.00'),
(9, 211, 230, '60.00'),
(10, 231, 250, '65.01'),
(11, 251, 270, '70.00'),
(12, 271, 290, '75.00'),
(13, 291, 310, '80.00'),
(14, 311, 330, '85.00'),
(15, 331, 350, '90.00'),
(16, 351, 370, '95.00'),
(17, 371, 390, '100.00'),
(18, 391, 410, '105.00'),
(19, 411, 430, '110.00'),
(20, 431, 450, '115.00'),
(21, 451, 470, '120.00'),
(22, 471, 490, '125.00'),
(23, 491, 510, '130.00');

-- --------------------------------------------------------

--
-- Table structure for table `invoicegenerate`
--

CREATE TABLE `invoicegenerate` (
  `id` int(50) NOT NULL,
  `invoiceno` varchar(50) NOT NULL,
  `particulars` varchar(255) NOT NULL,
  `classficno` varchar(255) NOT NULL,
  `orderno` varchar(50) NOT NULL,
  `orderdate` varchar(100) NOT NULL,
  `custid` varchar(255) NOT NULL,
  `custtyp` varchar(255) NOT NULL,
  `custname` varchar(255) NOT NULL,
  `custadd` text NOT NULL,
  `custvat` varchar(255) NOT NULL,
  `custtin` varchar(255) NOT NULL,
  `consigname` varchar(255) NOT NULL,
  `consigneeadd` text NOT NULL,
  `consigneevat` varchar(255) NOT NULL,
  `consigneetin` varchar(255) NOT NULL,
  `doissue` varchar(100) NOT NULL,
  `dateofremo` varchar(100) NOT NULL,
  `chasisno` varchar(255) NOT NULL,
  `motorno` varchar(255) NOT NULL,
  `chargerno` varchar(255) NOT NULL,
  `batteryno` text NOT NULL,
  `qty` int(11) NOT NULL,
  `unitprice` decimal(20,2) NOT NULL,
  `distext` text NOT NULL,
  `discountper` decimal(20,2) NOT NULL,
  `discountamnt` decimal(20,2) NOT NULL,
  `total` decimal(20,2) NOT NULL,
  `excisetx` decimal(20,2) NOT NULL,
  `exciseamnt` decimal(20,2) NOT NULL,
  `afterexcise` decimal(20,2) NOT NULL,
  `csttax` decimal(20,2) NOT NULL,
  `csttext` varchar(255) NOT NULL,
  `cstamnt` decimal(20,2) NOT NULL,
  `afercstamnt` decimal(20,2) NOT NULL,
  `gtotal` decimal(20,2) NOT NULL,
  `coloqty` text NOT NULL,
  `transportmanner` varchar(255) NOT NULL,
  `transportname` varchar(255) NOT NULL,
  `vehicleno` varchar(255) NOT NULL,
  `transporteraddress` text NOT NULL,
  `mannertransport` varchar(255) NOT NULL,
  `serialno` varchar(255) NOT NULL,
  `prglrno` varchar(255) NOT NULL,
  `despt` varchar(255) NOT NULL,
  `dte` varchar(255) NOT NULL,
  `drivername` varchar(255) NOT NULL,
  `drivercontact` varchar(50) NOT NULL,
  `despatched` varchar(100) NOT NULL,
  `crtdby` varchar(255) NOT NULL,
  `mnthcd` varchar(255) NOT NULL,
  `yrcode` varchar(255) NOT NULL,
  `sid` varchar(11) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '11',
  `cformreturn` int(11) NOT NULL DEFAULT '0',
  `excisestatus` int(11) NOT NULL DEFAULT '0',
  `cstvatstatus` int(11) NOT NULL DEFAULT '0',
  `taxstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicegenerate`
--

INSERT INTO `invoicegenerate` (`id`, `invoiceno`, `particulars`, `classficno`, `orderno`, `orderdate`, `custid`, `custtyp`, `custname`, `custadd`, `custvat`, `custtin`, `consigname`, `consigneeadd`, `consigneevat`, `consigneetin`, `doissue`, `dateofremo`, `chasisno`, `motorno`, `chargerno`, `batteryno`, `qty`, `unitprice`, `distext`, `discountper`, `discountamnt`, `total`, `excisetx`, `exciseamnt`, `afterexcise`, `csttax`, `csttext`, `cstamnt`, `afercstamnt`, `gtotal`, `coloqty`, `transportmanner`, `transportname`, `vehicleno`, `transporteraddress`, `mannertransport`, `serialno`, `prglrno`, `despt`, `dte`, `drivername`, `drivercontact`, `despatched`, `crtdby`, `mnthcd`, `yrcode`, `sid`, `doe`, `status`, `cformreturn`, `excisestatus`, `cstvatstatus`, `taxstatus`) VALUES
(3, 'GKINV1770001', 'E-Rickshaw(ER INDIA G-7)', '87039010', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdasasdasd,sdfdsf', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 07:25:28 PM', '', 'asddas', 'asdas', 'asdas', 'asdsa,asdsa,asdas,asdsa', 1, '5000.00', 'Discount @ 10.00%', '10.00', '1500.00', '5000.00', '6.00', '810.00', '14310.00', '0.00', '2.00_cst', '286.20', '14596.20', '14596.20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 1, 1, 1),
(4, 'GKINV1770001', 'E-Rickshaw(ER INDIA G-7)', '87039010', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 07:25:28 PM', '', 'asdsa', 'asd', 'sa', 'asdas,asdas,asdsa,asdas', 1, '5000.00', 'Discount @ 10.00%', '10.00', '1500.00', '5000.00', '6.00', '810.00', '14310.00', '0.00', '2.00_cst', '286.20', '14596.20', '14596.20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 1, 1, 1),
(5, 'GKINV1770001', 'E-Rickshaw(ER INDIA G-7)', '87039010', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 07:25:28 PM', '', 'asdas', 'asdsa', 'asdsa', 'asdas,asdasd,asdas,asdsa', 1, '5000.00', 'Discount @ 10.00%', '10.00', '1500.00', '5000.00', '6.00', '810.00', '14310.00', '0.00', '2.00_cst', '286.20', '14596.20', '14596.20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', 11, 0, 1, 1, 1),
(6, 'GKINV1770002', 'E-Rickshaw(ER INDIA G-7)', '87039010', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 07:55:14 PM', '', 'ssdsda', 'asddsa', '', 'asdas,asdas,asdas,sadas', 1, '5000.00', 'Discount @ 10.00%', '10.00', '2500.00', '5000.00', '6.00', '1350.00', '23850.00', '0.00', '2.00_cst', '477.00', '24327.00', '24327.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 1, 1, 1),
(7, 'GKINV1770002', 'E-Rickshaw(ER INDIA G-7)', '87039010', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 07:55:14 PM', '', 'asdsa', 'asdas', '', 'asdsa,asdas,asdas,asd', 1, '5000.00', 'Discount @ 10.00%', '10.00', '2500.00', '5000.00', '6.00', '1350.00', '23850.00', '0.00', '2.00_cst', '477.00', '24327.00', '24327.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 1, 1, 1),
(8, 'GKINV1770002', 'E-Rickshaw(ER INDIA G-7)', '87039010', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 07:55:14 PM', '', 'asdas', 'asdas', '', 'asdas,asdas,asdas,asd', 1, '5000.00', 'Discount @ 10.00%', '10.00', '2500.00', '5000.00', '6.00', '1350.00', '23850.00', '0.00', '2.00_cst', '477.00', '24327.00', '24327.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 1, 1, 1),
(9, 'GKINV1770002', 'E-Rickshaw(ER INDIA G-7)', '87039010', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 07:55:14 PM', '', 'asddas', 'asdsa', '', 'asdas,asd,asasd,asasdas', 1, '5000.00', 'Discount @ 10.00%', '10.00', '2500.00', '5000.00', '6.00', '1350.00', '23850.00', '0.00', '2.00_cst', '477.00', '24327.00', '24327.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 1, 1, 1),
(10, 'GKINV1770002', 'E-Rickshaw(ER INDIA G-7)', '87039010', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdasadadfdsf,dafdf,dsfds,dsfds', '123456789', '2547893', 'assadassad,asdas,asdsa,asdsa', 'asdas', '123456789', '2547893', '2017-01-04 07:55:14 PM', '', 'asdas', 'asdsa', '', 'd,asdsa,asdsa,asdsa', 1, '5000.00', 'Discount @ 10.00%', '10.00', '2500.00', '5000.00', '6.00', '1350.00', '23850.00', '0.00', '2.00_cst', '477.00', '24327.00', '24327.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 1, 1, 1),
(11, 'GKINV1770003', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 10:10:26 PM', '', 'sadsad', 'asd', '', 'asdasd,asdas,das,dasd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(12, 'GKINV1770003', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 10:10:26 PM', '', 'asdasd', 'asdas', '', 'dasd,asdas,dasd,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(13, 'GKINV1770003', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 10:10:26 PM', '', 'asdas', 'dasd', '', 'asdsa,dasd,asdsa,dasdsa', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(14, 'GKINV1770003', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 10:10:26 PM', '', 'asdads', 'asdas', '', 'dasda,sdasd,asdas,asdsa', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(15, 'GKINV1770003', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 10:10:26 PM', '', 'asdsa', 'dasd', '', 'asdas,dasd,asdsad,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(16, 'GKINV1770004', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 10:11:48 PM', '', 'asdas', 'asdas', '', 'asdas,asdas,asdas,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(17, 'GKINV1770004', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 10:11:48 PM', '', 'asdas', 'asdsa', '', 'asdsa,sadsa,asdas,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(18, 'GKINV1770004', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 10:11:48 PM', '', 'asdas', 'asdas', '', 'asdas,asdsa,asdsad,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(19, 'GKINV1770005', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 11:26:12 PM', 'fgf', 'dsdsf', 'sdfds', 'dsfd', 'sddf,sdfsd,sddsf,sdfsd', 1, '5000.00', 'Discount @ 10.00%', '10.00', '2500.00', '5000.00', '6.00', '1350.00', '23850.00', '0.00', '2.00_cst', '477.00', '24327.00', '24327.00', '', '', 'fg', 'ffgg', '', 'ffg', 'df', 'dd', 'fgf', 'fg', '', 'fgf', '', 'admin', '', '', '', '', 11, 0, 1, 0, 0),
(20, 'GKINV1770005', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 11:26:12 PM', 'fgf', 'dsdsf', 'sdfsd', 'sdfsd', 'sdfsd,sdfsd,sdfsd,sdfsd', 1, '5000.00', 'Discount @ 10.00%', '10.00', '2500.00', '5000.00', '6.00', '1350.00', '23850.00', '0.00', '2.00_cst', '477.00', '24327.00', '24327.00', '', '', 'fg', 'ffgg', '', 'ffg', 'df', 'dd', 'fgf', 'fg', '', 'fgf', '', 'admin', '', '', '', '', 11, 0, 1, 0, 0),
(21, 'GKINV1770005', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 11:26:12 PM', 'fgf', 'dsfds', 'sdfds', 'sdfsd', 'sdfds,sdfds,sdsf,sdsfd', 1, '5000.00', 'Discount @ 10.00%', '10.00', '2500.00', '5000.00', '6.00', '1350.00', '23850.00', '0.00', '2.00_cst', '477.00', '24327.00', '24327.00', '', '', 'fg', 'ffgg', '', 'ffg', 'df', 'dd', 'fgf', 'fg', '', 'fgf', '', 'admin', '', '', '', '', 11, 0, 1, 0, 0),
(22, 'GKINV1770005', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 11:26:12 PM', 'fgf', 'sddfs', 'sdfsfd', 'dsfds', 'dsfsd,sdfsd,sdfsd,sdfds', 1, '5000.00', 'Discount @ 10.00%', '10.00', '2500.00', '5000.00', '6.00', '1350.00', '23850.00', '0.00', '2.00_cst', '477.00', '24327.00', '24327.00', '', '', 'fg', 'ffgg', '', 'ffg', 'df', 'dd', 'fgf', 'fg', '', 'fgf', '', 'admin', '', '', '', '', 11, 0, 1, 0, 0),
(23, 'GKINV1770005', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-04 11:26:12 PM', 'fgf', 'sdfds', 'sdfds', 'sdfds', 'dsfs,sdfsd,sdfds,dsfds', 1, '5000.00', 'Discount @ 10.00%', '10.00', '2500.00', '5000.00', '6.00', '1350.00', '23850.00', '0.00', '2.00_cst', '477.00', '24327.00', '24327.00', '', '', 'fg', 'ffgg', '', 'ffg', 'df', 'dd', 'fgf', 'fg', '', 'fgf', '', 'admin', '', '', '', '', 11, 0, 1, 0, 0),
(24, 'GKINV1770006', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 12:39:04 AM', '', 'zads', 'dasfdsf', '', 'dssdfsd,sdfsdds,dsfds,dsfsd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(25, 'GKINV1770006', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 12:39:04 AM', '', 'sdfds', 'dsfds', '', 'sdfdsf,dsfds,sdfsd,sdfsd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(26, 'GKINV1770006', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 12:39:04 AM', '', 'sdfsd', 'sdfds', '', 'dsfds,sdfsd,sdfsd,sdfsd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(27, 'GKINV1770006', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 12:39:04 AM', '', 'sdfds', 'sdfds', '', 'fsdf,sdfsdf,sdfs,sdfsd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(28, 'GKINV1770006', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 12:39:04 AM', '', 'sdfds', 'sdfsd', '', 'sdfds,sdfds,sdfsd,sdf', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(29, 'GKINV1770007', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:10:13 AM', '', 'ddf', 'dsf', '', 'dsdsfsdf,sdf,sdfds,sdfds', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(30, 'GKINV1770007', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:10:13 AM', '', 'sdfds', 'sdfsd', '', 'sdfsd,sdf,sdfsd,sdfsd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(31, 'GKINV1770007', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:10:13 AM', '', 'sdfdsf', 'sdfd', '', 'sdfds,fsfds,sdfsd,sdfsd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(32, 'GKINV1770007', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:10:13 AM', '', 'sdfs', 'sdsd', '', 'sdfds,sdfsd,sdfs,sdfsd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(33, 'GKINV1770007', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:10:13 AM', '', 'sdfds', 'sdfds', '', 'sdfds,sdfsd,sdfsd,sdfsd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(34, 'GKINV1770008', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:13:05 AM', '', 'adasd', 'asdas', '', 'asdas,asdas,asdas,asd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(35, 'GKINV1770009', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:15:29 AM', '', 'asasd', 'asdas', '', '', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(36, 'GKINV1770010', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:22:20 AM', '', 'adsf', 'dsfdsf', '', '', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(37, 'GKINV1770010', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:22:20 AM', '', 'dsfds', 'dsfds', '', '', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(38, 'GKINV1770011', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:24:04 AM', '', 'asda', 'asd', '', 'asdas,asd,asdas,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(39, 'GKINV1770011', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:24:04 AM', '', 'asdas', 'asd', '', 'asd,asd,asd,asd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(40, 'GKINV1770012', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:43:32 AM', '', 'asad', 'asdas', '', 'asdas,asdas,asdas,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(41, 'GKINV1770012', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:43:32 AM', '', 'asdas', 'asdas', '', 'asdas,dasda,asdas,asd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(42, 'GKINV1770013', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:49:33 AM', '', 'ssad', 'asdas', '', 'asdda,asdas,asdas,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(43, 'GKINV1770013', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:49:33 AM', '', 'asdsa', 'asdas', '', 'asdas,asdas,asdas,asd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(44, 'GKINV1770014', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:51:23 AM', '', 'asdad', 'asdas', '', 'asdas,asdas,asdas,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(45, 'GKINV1770014', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:51:24 AM', '', 'asdas', 'asdas', '', 'asdas,asdas,asd,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(46, 'GKINV1770014', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:51:24 AM', '', 'asdsa', 'asdas', '', 'asdas,asd,asdas,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(47, 'GKINV1770015', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:54:35 AM', '', 'dfdf', 'dsfsdf', '', 'sdfsdf,asdasd,asdasd,sdsad', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(48, 'GKINV1770015', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:54:35 AM', '', 'dsd', 'dasd', '', 'daswd,sdsa,sadsa,ed', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(49, 'GKINV1770015', 'E-Rickshaw', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', '', '', 'assad', 'asdas', '123456789', '2547893', 'assad', 'asdas', '123456789', '2547893', '2017-01-05 01:54:35 AM', '', 'sadas', 'dasd', '', 'dsad,dad,d,asdsad', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(50, 'GKINV1770016', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00027', '', '', '', 'asasd', 'asdads', 'asdsad', 'asdsa', 'asasd', 'asdads', 'asdsad', 'asdsa', '2017-01-05 01:57:49 AM', '05-01-2017 12.00pm', 'dsafdf', 'sdfsd', '', 'sdfs,dsdfsd,sdf,sdsdf', 1, '5000.00', 'Discount @', '10.00', '1500.00', '5000.00', '6.00', '810.00', '14310.00', '0.00', '2.00_cst', '286.20', '14596.20', '14596.20', '', '', 'dsfsdf', 'sdfdsf', '', 'dsfsdf', 'dfd', 'dsfdsfd', 'sdfsd', '12-12-2014', '', 'sdfsdf', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(51, 'GKINV1770016', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00027', '', '', '', 'asasd', 'asdads', 'asdsad', 'asdsa', 'asasd', 'asdads', 'asdsad', 'asdsa', '2017-01-05 01:57:49 AM', '05-01-2017 12.00pm', 'sdfds', 'sdf', '', 'sd,sdfsd,dsfsd,dsfsd', 1, '5000.00', 'Discount @', '10.00', '1500.00', '5000.00', '6.00', '810.00', '14310.00', '0.00', '2.00_cst', '286.20', '14596.20', '14596.20', '', '', 'dsfsdf', 'sdfdsf', '', 'dsfsdf', 'dfd', 'dsfdsfd', 'sdfsd', '12-12-2014', '', 'sdfsdf', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(52, 'GKINV1770016', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00027', '', '', '', 'asasd', 'asdads', 'asdsad', 'asdsa', 'asasd', 'asdads', 'asdsad', 'asdsa', '2017-01-05 01:57:49 AM', '05-01-2017 12.00pm', 'sdf', 'sdf', '', 'sdf,dssdf,sdfds,sdf', 1, '5000.00', 'Discount @', '10.00', '1500.00', '5000.00', '6.00', '810.00', '14310.00', '0.00', '2.00_cst', '286.20', '14596.20', '14596.20', '', '', 'dsfsdf', 'sdfdsf', '', 'dsfsdf', 'dfd', 'dsfdsfd', 'sdfsd', '12-12-2014', '', 'sdfsdf', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(53, 'GKINV1770017', 'E-Rickshaw', '', 'GKSLSBK00027', '', '', '', 'asasd', 'asdads', 'asdsad', 'asdsa', 'asasd', 'asdads', 'asdsad', 'asdsa', '2017-01-05 02:14:01 AM', '', 'asas', 'sdsad', '', 'asdasd,asdasd,asdas,dasdasdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(54, 'GKINV1770017', 'E-Rickshaw', '', 'GKSLSBK00027', '', '', '', 'asasd', 'asdads', 'asdsad', 'asdsa', 'asasd', 'asdads', 'asdsad', 'asdsa', '2017-01-05 02:14:01 AM', '', 'asda', 'sasd', '', 'asasd,asasdas,asdas,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(55, 'GKINV1770017', 'E-Rickshaw', '', 'GKSLSBK00027', '', '', '', 'asasd', 'asdads', 'asdsad', 'asdsa', 'asasd', 'asdads', 'asdsad', 'asdsa', '2017-01-05 02:14:01 AM', '', 'asda', 'asdas', '', 'das,dasas,dassa,d', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(56, 'GKINV1770018', 'E-Rickshaw', '', 'GKSLSBK00027', '', '', '', 'asasd', 'asdads', 'asdsad', 'asdsa', 'asasd', 'asdads', 'asdsad', 'asdsa', '2017-01-05 02:17:28 AM', '', 'eerw', 're', '', 'werw,ewr,ewr,wer', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(57, 'GKINV1770018', 'E-Rickshaw', '', 'GKSLSBK00027', '', '', '', 'asasd', 'asdads', 'asdsad', 'asdsa', 'asasd', 'asdads', 'asdsad', 'asdsa', '2017-01-05 02:17:28 AM', '', 'fdfs', 'sdf', '', 'sdf,sdfsd,sdffsd,sdfsd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(58, 'GKINV1770018', 'E-Rickshaw', '', 'GKSLSBK00027', '', '', '', 'asasd', 'asdads', 'asdsad', 'asdsa', 'asasd', 'asdads', 'asdsad', 'asdsa', '2017-01-05 02:17:28 AM', '', 'sdf', 'sdfsdf', '', 'sdf,sdf,sdf,sdfs', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(59, 'GKINV1770019', 'E-Rickshaw', '', 'GKSLSBK00027', 'asdasd', '', '', 'sdsad', 'adsasd', 'asdas', 'asdas', 'sdsad', 'adsasd', 'asdas', 'asdas', '2017-01-05 02:18:59 AM', '', 'asda', 'sasd', '', 'aasdas,asdas,asdas,asd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(60, 'GKINV1770019', 'E-Rickshaw', '', 'GKSLSBK00027', 'asdasd', '', '', 'sdsad', 'adsasd', 'asdas', 'asdas', 'sdsad', 'adsasd', 'asdas', 'asdas', '2017-01-05 02:18:59 AM', '', 'asda', 'asdas', '', 'asdas,das,asdas,asd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(61, 'GKINV1770020', 'E-Rickshaw', '', 'GKSLSBK00027', 'asdasd', '', '', 'sdsad', 'adsasd', 'asdas', 'asdas', 'sdsad', 'adsasd', 'asdas', 'asdas', '2017-01-05 02:19:40 AM', '', 'asd', 'asdas', '', 'asdas,asdas,asdas,as', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(62, 'GKINV1770020', 'E-Rickshaw', '', 'GKSLSBK00027', 'asdasd', '', '', 'sdsad', 'adsasd', 'asdas', 'asdas', 'sdsad', 'adsasd', 'asdas', 'asdas', '2017-01-05 02:19:40 AM', '', 'asdas', 'asdas', '', 'dasda,asd,asdasd,asasd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(63, 'GKINV1770020', 'E-Rickshaw', '', 'GKSLSBK00027', 'asdasd', '', '', 'sdsad', 'adsasd', 'asdas', 'asdas', 'sdsad', 'adsasd', 'asdas', 'asdas', '2017-01-05 02:19:40 AM', '', 'asdas', 'asdas', '', 'dsad,asdasd,asdasd,as', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(64, 'GKINV1770021', 'E-Rickshaw', '', 'GKSLSBK00027', 'asdasd', '', '', 'sdsad', 'adsasd', 'asdas', 'asdas', 'sdsad', 'adsasd', 'asdas', 'asdas', '2017-01-05 03:05:11 AM', '', 'sdfds', 'sdfsd', '', 'sdfsd,sdfsd,sdfsd,sdfsd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(65, 'GKINV1770021', 'E-Rickshaw', '', 'GKSLSBK00027', 'asdasd', '', '', 'sdsad', 'adsasd', 'asdas', 'asdas', 'sdsad', 'adsasd', 'asdas', 'asdas', '2017-01-05 03:05:11 AM', '', 'sdfds', 'sdfsd', '', 'sdfsd,sdfsd,sdfsd,sdsf', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(66, 'GKINV1770022', 'E-Rickshaw', '', 'GKSLSBK00027', 'asdasd', '', '', 'sdsad', 'adsasd', 'asdas', 'asdas', 'sdsad', 'adsasd', 'asdas', 'asdas', '2017-01-05 03:08:39 AM', '', 'asdasd', 'asd', '', 'asdasd,assad,asdas,dsa', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(67, 'GKINV1770022', 'E-Rickshaw', '', 'GKSLSBK00027', 'asdasd', '', '', 'sdsad', 'adsasd', 'asdas', 'asdas', 'sdsad', 'adsasd', 'asdas', 'asdas', '2017-01-05 03:08:40 AM', '', 'asdsa', 'sadas', '', 'dasd,asdsa,dsa,das', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(68, 'GKINV1770023', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', 'TGKCLNT1700001', 'RETAILER', 'asdsds', 'sdsds', 'adfdfds', 'sdfsd', 'asdsds', 'sdsds', 'adfdfds', 'sdfsd', '2017-01-05 10:52:45 AM', '2017-01-25', 'asada', 'asd', 'asdas', 'asdas,asdas,asdas,asdas', 1, '5000.00', 'Special discount @', '10.00', '1500.00', '5000.00', '6.00', '810.00', '14310.00', '0.00', '2.00_cst', '286.20', '14596.20', '14596.20', '', '', 'zxczx', 'dsdf', '', 'zxcz', 'xcx', 'zxczx', 'sdfsfd', '', '', 'sdfdsf', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(69, 'GKINV1770023', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', 'TGKCLNT1700001', 'RETAILER', 'asdsds', 'sdsds', 'adfdfds', 'sdfsd', 'asdsds', 'sdsds', 'adfdfds', 'sdfsd', '2017-01-05 10:52:45 AM', '2017-01-25', 'asdsa', 'asdas', 'asdas', 'asdas,asddas,asdas,asdsa', 1, '5000.00', 'Special discount @', '10.00', '1500.00', '5000.00', '6.00', '810.00', '14310.00', '0.00', '2.00_cst', '286.20', '14596.20', '14596.20', '', '', 'zxczx', 'dsdf', '', 'zxcz', 'xcx', 'zxczx', 'sdfsfd', '', '', 'sdfdsf', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(70, 'GKINV1770023', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00026', '2016-12-17 02:17:00 PM', 'TGKCLNT1700001', 'RETAILER', 'asdsds', 'sdsds', 'adfdfds', 'sdfsd', 'asdsds', 'sdsds', 'adfdfds', 'sdfsd', '2017-01-05 10:52:45 AM', '2017-01-25', 'asdas', 'asdas', 'asd', 'asasd,asdas,asdas,asd', 1, '5000.00', 'Special discount @', '10.00', '1500.00', '5000.00', '6.00', '810.00', '14310.00', '0.00', '2.00_cst', '286.20', '14596.20', '14596.20', '', '', 'zxczx', 'dsdf', '', 'zxcz', 'xcx', 'zxczx', 'sdfsfd', '', '', 'sdfdsf', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(71, 'GKINV1770024', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'TGKCLNT1700017', 'RETAILER', 'pankaj patra', 'tamluk,e.midnapur', '5478963', '123456789', 'pankaj patra', 'tamluk,e.midnapur', '5478963', '123456789', '2017-01-05 01:29:57 PM', '2017-01-05', '123456789', '547893', '25555', '255558,255558,255558,255558', 1, '5000.00', 'Discount @', '0.00', '0.00', '5000.00', '6.00', '1500.00', '26500.00', '0.00', '2.00_cst', '530.00', '27030.00', '27030.00', '', '', 'sdfsd', 'sdfds', '', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsd', '', '', 'sdfds', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(72, 'GKINV1770024', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'TGKCLNT1700017', 'RETAILER', 'pankaj patra', 'tamluk,e.midnapur', '5478963', '123456789', 'pankaj patra', 'tamluk,e.midnapur', '5478963', '123456789', '2017-01-05 01:29:57 PM', '2017-01-05', '25555', '123456789', '547893', '255558,255558,255558,255558', 1, '5000.00', 'Discount @', '0.00', '0.00', '5000.00', '6.00', '1500.00', '26500.00', '0.00', '2.00_cst', '530.00', '27030.00', '27030.00', '', '', 'sdfsd', 'sdfds', '', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsd', '', '', 'sdfds', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(73, 'GKINV1770024', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'TGKCLNT1700017', 'RETAILER', 'pankaj patra', 'tamluk,e.midnapur', '5478963', '123456789', 'pankaj patra', 'tamluk,e.midnapur', '5478963', '123456789', '2017-01-05 01:29:57 PM', '2017-01-05', '255558', '255558', '123456789', '25555,547893,255558,255558', 1, '5000.00', 'Discount @', '0.00', '0.00', '5000.00', '6.00', '1500.00', '26500.00', '0.00', '2.00_cst', '530.00', '27030.00', '27030.00', '', '', 'sdfsd', 'sdfds', '', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsd', '', '', 'sdfds', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(74, 'GKINV1770024', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'TGKCLNT1700017', 'RETAILER', 'pankaj patra', 'tamluk,e.midnapur', '5478963', '123456789', 'pankaj patra', 'tamluk,e.midnapur', '5478963', '123456789', '2017-01-05 01:29:57 PM', '2017-01-05', '255558', '255558', '255558', '123456789,25555,547893,255558', 1, '5000.00', 'Discount @', '0.00', '0.00', '5000.00', '6.00', '1500.00', '26500.00', '0.00', '2.00_cst', '530.00', '27030.00', '27030.00', '', '', 'sdfsd', 'sdfds', '', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsd', '', '', 'sdfds', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(75, 'GKINV1770024', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'TGKCLNT1700017', 'RETAILER', 'pankaj patra', 'tamluk,e.midnapur', '5478963', '123456789', 'pankaj patra', 'tamluk,e.midnapur', '5478963', '123456789', '2017-01-05 01:29:57 PM', '2017-01-05', '255558', '255558', '255558', '255558,123456789,25555,547893', 1, '5000.00', 'Discount @', '0.00', '0.00', '5000.00', '6.00', '1500.00', '26500.00', '0.00', '2.00_cst', '530.00', '27030.00', '27030.00', '', '', 'sdfsd', 'sdfds', '', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsd', '', '', 'sdfds', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(76, 'GKINV1770025', 'E-Rickshaw', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'GKCLNT1600015', 'DEALER', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', '2017-01-05 01:35:31 PM', '', 'adsadsf', 'dsfdf', '', 'sdfsd,dsfds,dfdfs,sfsf', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(77, 'GKINV1770025', 'E-Rickshaw', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'GKCLNT1600015', 'DEALER', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', '2017-01-05 01:35:31 PM', '', '12345', '54321', '', '67895,12345c,12345C,47893', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(78, 'GKINV1770025', 'E-Rickshaw', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'GKCLNT1600015', 'DEALER', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', '2017-01-05 01:35:31 PM', '', '12345C', 'werw33', '', '54321,89654,47893,dfdf13', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(79, 'GKINV1770025', 'E-Rickshaw', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'GKCLNT1600015', 'DEALER', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', '2017-01-05 01:35:31 PM', '', '54321ere', '67895', '', '89654,54321,47893,121sdfds', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(80, 'GKINV1770025', 'E-Rickshaw', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'GKCLNT1600015', 'DEALER', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', '2017-01-05 01:35:31 PM', '', '47893', '89654', '', '12345,89654,54321,asdfsd6', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(81, 'GKINV1770026', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'GKCLNT1600015', 'DEALER', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', '2017-01-05 01:37:30 PM', '2017-01-27', 'asdas', '2342', '', 'sdfsf23423,sdsdfs242,sdfsd234,sdfds', 1, '5000.00', 'Discount @ ', '10.00', '1000.00', '5000.00', '6.00', '540.00', '9540.00', '0.00', '2.00_cst', '190.80', '9730.80', '9730.80', '', '', 'sdfsd', 'sdsd', '', 'sdfsd', 'sdfs', 'dsdfsd', 'sdfs', '', '', 'sdsd', '', 'admin', '', '', '', '', 11, 0, 1, 1, 1),
(82, 'GKINV1770026', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00025', '2016-12-17 02:09:21 PM', 'GKCLNT1600015', 'DEALER', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', '2017-01-05 01:37:30 PM', '2017-01-27', 'sdfds3243', 'sdfsd24345', '', 'fddg34,dffd5456,dggfh,dfhg45645', 1, '5000.00', 'Discount @ ', '10.00', '1000.00', '5000.00', '6.00', '540.00', '9540.00', '0.00', '2.00_cst', '190.80', '9730.80', '9730.80', '', '', 'sdfsd', 'sdsd', '', 'sdfsd', 'sdfs', 'dsdfsd', 'sdfs', '', '', 'sdsd', '', 'admin', '', '', '', '', 11, 0, 1, 1, 1),
(83, 'GKINV1770027', 'E-Rickshaw', '', 'GKSLSBK00031', '12-12-2017', 'TGKCLNT1700019', 'RETAILER', 'asdads', 'asdsa', 'asdasd', 'asdsad', 'asdads', 'asdsa', 'asdasd', 'asdsad', '2017-01-10 06:09:51 PM', '', 'dssdf', 'sdfsdf', 'sdfsdf', '', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(84, 'GKINV1770027', 'E-Rickshaw', '', 'GKSLSBK00031', '12-12-2017', 'TGKCLNT1700019', 'RETAILER', 'asdads', 'asdsa', 'asdasd', 'asdsad', 'asdads', 'asdsa', 'asdasd', 'asdsad', '2017-01-10 06:09:51 PM', '', 'sdfdsf', 'sdfsdf', 'dsf', '', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(85, 'GKINV1770028', 'E-Rickshaw', '', 'GKSLSBK00031', '', 'TGKCLNT1700020', 'RETAILER', 'ssa', 'sdfds', 'sddsf', 'dsfdsf', 'ssa', 'sdfds', 'sddsf', 'dsfdsf', '2017-01-10 06:17:03 PM', '', 'sddsf', 'sdfsdf', 'sdfsd', ',,,', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(86, 'GKINV1770028', 'E-Rickshaw', '', 'GKSLSBK00031', '', 'TGKCLNT1700020', 'RETAILER', 'ssa', 'sdfds', 'sddsf', 'dsfdsf', 'ssa', 'sdfds', 'sddsf', 'dsfdsf', '2017-01-10 06:17:03 PM', '', 'sdfds', 'sdfsd', 'sdfsd', ',,,', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(87, 'GKINV1770029', 'E-Rickshaw', '', 'GKSLSBK00031', '', 'TGKCLNT1700020', 'RETAILER', 'ssa', 'sdfds', 'sddsf', 'dsfdsf', 'ssa', 'sdfds', 'sddsf', 'dsfdsf', '2017-01-10 06:18:45 PM', '', 'asd', 'sadsad', 'asdasd', ',,,', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11, 0, 0, 0, 0),
(88, 'GKINV1770030', 'E-Rickshaw', '', 'GKSLSBK00031', '', 'TGKCLNT1700020', 'RETAILER', 'ssa', 'sdfds', 'sddsf', 'dsfdsf', 'ssa', 'sdfds', 'sddsf', 'dsfdsf', '2017-01-10 06:19:52 PM', '', 'sad', 'asdasd', 'asdsa', ',,,', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '7', '', 11, 0, 0, 0, 0),
(89, 'GKINV1770031', 'E-Rickshaw', '', 'GKSLSBK00031', '', 'TGKCLNT1700021', 'RETAILER', 'assad', 'sadas', 'asdasd', 'asasd', 'assad', 'sadas', 'asdasd', 'asasd', '2017-01-10 06:22:36 PM', '', 'adadf', 'dfdsf', 'dsdsf', ',,,', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '8', '', 11, 0, 0, 0, 0),
(90, 'GKINV1770031', 'E-Rickshaw', '', 'GKSLSBK00031', '', 'TGKCLNT1700021', 'RETAILER', 'assad', 'sadas', 'asdasd', 'asasd', 'assad', 'sadas', 'asdasd', 'asasd', '2017-01-10 06:22:36 PM', '', 'dsdsf', 'dsfdsf', 'sdfds', ',,,', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '8', '', 11, 0, 0, 0, 0),
(91, 'GKINV1770032', 'E-Rickshaw', '', 'GKSLSBK00031', '', 'TGKCLNT1700021', 'RETAILER', 'assad', 'sadas', 'asdasd', 'asasd', 'assad', 'sadas', 'asdasd', 'asasd', '2017-01-10 06:36:37 PM', '', 'assd', 'asdasd', '', '', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '8', '', 11, 0, 0, 0, 0),
(92, 'GKINV1770033', 'E-Rickshaw', '', 'GKSLSBK00031', '', 'TGKCLNT1700022', 'RETAILER', 'dghfgh', 'sdfdsf', 'sddsf', 'sdfsdf', 'dghfgh', 'sdfdsf', 'sddsf', 'sdfsdf', '2017-01-10 06:37:36 PM', '', 'asdas', 'dasdasd', '', '', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '6', '', 11, 0, 0, 0, 0),
(93, 'GKINV1770034', 'E-Rickshaw', '', 'GKSLSBK00031', '', 'TGKCLNT1700022', 'RETAILER', 'dghfgh', 'sdfdsf', 'sddsf', 'sdfsdf', 'dghfgh', 'sdfdsf', 'sddsf', 'sdfsdf', '2017-01-10 06:38:11 PM', '', 'asd', 'asasdasd', '', 'asdasd,asdasd,asdas,dsad', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '6', '', 11, 0, 0, 0, 0),
(94, 'GKINV1770035', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00031', '', 'TGKCLNT1700022', 'RETAILER', 'dghfgh', 'sdfdsf', 'sddsf', 'sdfsdf', 'dghfgh', 'sdfdsf', 'sddsf', 'sdfsdf', '2017-01-10 06:38:38 PM', '2017-01-21', 'asdasd', 'asdasd', 'asdas', ',,,', 1, '89684.00', 'Discount @ ', '0.00', '0.00', '89684.00', '6.00', '5381.04', '95065.04', '0.00', '2.00_cst', '1901.30', '96966.34', '96966.34', '', '', 'sdfsdf', 'sdfsdf', '', 'dssdfsd', 'sdfds', 'fdsf', 'sdfds', '', '', 'sdfds', '', 'admin', '', '', '', '', 11, 0, 0, 0, 0),
(95, 'GKINV1770036', 'E-Rickshaw', '', 'GKSLSBK00031', '10-10-2016', 'GKCLNT1600015', 'DEALER', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', '2017-01-11 08:25:51 PM', '', 'sdfds', 'sdfdsf', 'sdfsdf', 'sdfsd,sdfsd,sdfsd,sdf', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '', '', 11, 0, 0, 0, 0),
(96, 'GKINV1770036', 'E-Rickshaw', '', 'GKSLSBK00031', '10-10-2016', 'GKCLNT1600015', 'DEALER', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', '2017-01-11 08:25:51 PM', '', 'sdds', 'dsfds', 'sdfdsf', 'sdfds,dsf,sdfds,sdf', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '', '', 11, 0, 0, 0, 0),
(97, 'GKINV1770037', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00031', '10-10-2016', 'GKCLNT1600015', 'DEALER', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', '2017-01-11 08:26:26 PM', '2017-01-20', 'add', 'fdsf', 'sdfsdf', 'sdfsd,fsdf,dsfdsf,sdfds', 1, '89684.00', 'Discount @ ', '27.97', '50169.00', '89684.00', '6.00', '7751.93', '136950.70', '0.00', '2.00_cst', '2739.01', '139689.71', '139689.71', '', '', 'asdasd', 'asas', '', 'asdasd', 'asdas', 'asdas', 'asdas', '', '', 'asdasd', '', 'admin', '01', '2017', '', '', 11, 0, 0, 0, 0),
(98, 'GKINV1770037', 'E-Rickshaw(ER INDIA G-7)', '', 'GKSLSBK00031', '10-10-2016', 'GKCLNT1600015', 'DEALER', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', 'GKCLNT1600015', ',,sd,,ere,Bangladesh,123456', 'sdfsd', 'dsf', '2017-01-11 08:26:26 PM', '2017-01-20', 'sdfds', 'sdf', 'sdfsdf', 'sdfds,fdsf,sdfsd,dsf', 1, '89684.00', 'Discount @ ', '27.97', '50169.00', '89684.00', '6.00', '7751.93', '136950.70', '0.00', '2.00_cst', '2739.01', '139689.71', '139689.71', '', '', 'asdasd', 'asas', '', 'asdasd', 'asdas', 'asdas', 'asdas', '', '', 'asdasd', '', 'admin', '01', '2017', '', '', 11, 0, 0, 0, 0),
(99, 'GKINV1770038', 'E-Rickshaw', '', 'GKSLSBK70042', '2017-01-16 02:07:19 AM', 'TGKCLNT1700022', 'RETAILER', 'dghfgh', 'sdfdsf    ', 'sddsf', 'sdfsdf', '', '', '', '', '2017-01-16 03:46:42 AM', '', '', '', '', ',,,', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '', '', 11, 0, 0, 0, 0),
(100, 'GKINV1770038', 'E-Rickshaw', '', 'GKSLSBK70042', '2017-01-16 02:07:19 AM', 'TGKCLNT1700022', 'RETAILER', 'dghfgh', 'sdfdsf    ', 'sddsf', 'sdfsdf', '', '', '', '', '2017-01-16 03:46:42 AM', '', '', '', '', ',,,', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '', '', 11, 0, 0, 0, 0),
(101, 'GKINV1770038', 'E-Rickshaw', '', 'GKSLSBK70042', '2017-01-16 02:07:19 AM', 'TGKCLNT1700022', 'RETAILER', 'dghfgh', 'sdfdsf    ', 'sddsf', 'sdfsdf', '', '', '', '', '2017-01-16 03:46:42 AM', '', '', '', '', ',,,', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '', '', 11, 0, 0, 0, 0),
(102, 'GKINV1770038', 'E-Rickshaw', '', 'GKSLSBK70042', '2017-01-16 02:07:19 AM', 'TGKCLNT1700022', 'RETAILER', 'dghfgh', 'sdfdsf    ', 'sddsf', 'sdfsdf', '', '', '', '', '2017-01-16 03:46:42 AM', '', '', '', '', ',,,', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '', '', 11, 0, 0, 0, 0),
(103, 'GKINV1770038', 'E-Rickshaw', '', 'GKSLSBK70042', '2017-01-16 02:07:19 AM', 'TGKCLNT1700022', 'RETAILER', 'dghfgh', 'sdfdsf    ', 'sddsf', 'sdfsdf', '', '', '', '', '2017-01-16 03:46:43 AM', '', '', '', '', ',,,', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '', '', 11, 0, 0, 0, 0),
(104, 'GKINV1770039', 'E-Rickshaw(ER INDIA K-9)', '', 'GKSLSBK70045', '2017-01-31 03:19:48 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '', '', '', '', '', '', '2017-01-31 03:23:37 PM', '2017-01-24', '1', '1', '', '1,1,1,1', 1, '149999.00', 'Discount @ ', '10.00', '30000.00', '149999.00', '6.00', '16199.89', '286198.09', '0.00', '2.00_cst', '5723.96', '291922.05', '291922.05', '', '', 'sadsa', 'sads', '', 'asdsa', 'sadsad', 'asdsa', 'dfgf', '', '', 'sads', '', 'admin', '01', '2017', '0', '', 11, 0, 0, 0, 0),
(105, 'GKINV1770039', 'E-Rickshaw(ER INDIA K-9)', '', 'GKSLSBK70045', '2017-01-31 03:19:48 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '', '', '', '', '', '', '2017-01-31 03:23:37 PM', '2017-01-24', '1', '1', '', ',1,1,', 1, '149999.00', 'Discount @ ', '10.00', '30000.00', '149999.00', '6.00', '16199.89', '286198.09', '0.00', '2.00_cst', '5723.96', '291922.05', '291922.05', '', '', 'sadsa', 'sads', '', 'asdsa', 'sadsad', 'asdsa', 'dfgf', '', '', 'sads', '', 'admin', '01', '2017', '0', '', 11, 0, 0, 0, 0),
(106, 'GKINV1770040', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70047', '2017-01-31 05:07:47 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '12546', '54236', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '12546', '54236', '2017-01-31 05:09:02 PM', '2017-01-24', 'fdfg', 'dfg', '', 'dfgdf,gdfgdf,gdfg,fd', 1, '89189.00', 'Discount @ ', '20.39', '36371.00', '89189.00', '6.00', '8520.40', '150527.13', '0.00', '2.00_cst', '3010.54', '153537.67', '153537.67', '', '', 'fsdfsdfsd', 'sdfs', '', 'sdfsdfsd', 'sdsd', 'dfsdf', 'sdf', '', '', 'dfsdf', '', 'admin', '01', '2017', '0', '', 11, 0, 0, 0, 0);
INSERT INTO `invoicegenerate` (`id`, `invoiceno`, `particulars`, `classficno`, `orderno`, `orderdate`, `custid`, `custtyp`, `custname`, `custadd`, `custvat`, `custtin`, `consigname`, `consigneeadd`, `consigneevat`, `consigneetin`, `doissue`, `dateofremo`, `chasisno`, `motorno`, `chargerno`, `batteryno`, `qty`, `unitprice`, `distext`, `discountper`, `discountamnt`, `total`, `excisetx`, `exciseamnt`, `afterexcise`, `csttax`, `csttext`, `cstamnt`, `afercstamnt`, `gtotal`, `coloqty`, `transportmanner`, `transportname`, `vehicleno`, `transporteraddress`, `mannertransport`, `serialno`, `prglrno`, `despt`, `dte`, `drivername`, `drivercontact`, `despatched`, `crtdby`, `mnthcd`, `yrcode`, `sid`, `doe`, `status`, `cformreturn`, `excisestatus`, `cstvatstatus`, `taxstatus`) VALUES
(107, 'GKINV1770040', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70047', '2017-01-31 05:07:47 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '12546', '54236', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '12546', '54236', '2017-01-31 05:09:02 PM', '2017-01-24', 'dfgfd', 'dfg', '', 'dfgdf,dfgdf,fg,fdg', 1, '89189.00', 'Discount @ ', '20.39', '36371.00', '89189.00', '6.00', '8520.40', '150527.13', '0.00', '2.00_cst', '3010.54', '153537.67', '153537.67', '', '', 'fsdfsdfsd', 'sdfs', '', 'sdfsdfsd', 'sdsd', 'dfsdf', 'sdf', '', '', 'dfsdf', '', 'admin', '01', '2017', '0', '', 11, 0, 0, 0, 0),
(108, 'GKINV1770041', 'E-Rickshaw', '', 'GKSLSBK70047', '2017-01-31 05:07:47 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '', '', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '', '', '2017-01-31 05:16:53 PM', '', 'ss', 'ssd', 'sds', 'dsd,sdsd,sds,dsd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '', '', 11, 0, 0, 0, 0),
(109, 'GKINV1770041', 'E-Rickshaw', '', 'GKSLSBK70047', '2017-01-31 05:07:47 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '', '', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '', '', '2017-01-31 05:16:53 PM', '', 'sds', 'dsds', 'sd', 'sd,dsd,sds,d', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '', '', 11, 0, 0, 0, 0),
(110, 'GKINV1770042', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70048', '2017-01-31 05:36:55 PM', 'DGKCLNT1700018', 'DEALER', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ssd', 'sdsd', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ssd', 'sdsd', '2017-01-31 05:38:08 PM', '2017-01-25', 'ssd', 'sds', 'sd', 'dsd,d,sds,d', 1, '89189.00', 'Discount @ ', '27.12', '48376.00', '89189.00', '6.00', '7800.11', '137802.00', '0.00', '2.00_cst', '2756.04', '140558.04', '140558.04', '', '', 'dsfsdf', 'dsfdsf', '', 'dsfdsf', 'daadf', 'dfdsf', 'sdfds', '', '', 'dsfdsf', '', 'admin', '01', '2017', '5', '', 11, 0, 0, 0, 0),
(111, 'GKINV1770042', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70048', '2017-01-31 05:36:55 PM', 'DGKCLNT1700018', 'DEALER', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ssd', 'sdsd', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ssd', 'sdsd', '2017-01-31 05:38:08 PM', '2017-01-25', 'sdsd', 'sds', 'ds', 'dsd,sds,sd,ds', 1, '89189.00', 'Discount @ ', '27.12', '48376.00', '89189.00', '6.00', '7800.11', '137802.00', '0.00', '2.00_cst', '2756.04', '140558.04', '140558.04', '', '', 'dsfsdf', 'dsfdsf', '', 'dsfdsf', 'daadf', 'dfdsf', 'sdfds', '', '', 'dsfdsf', '', 'admin', '01', '2017', '5', '', 11, 0, 0, 0, 0),
(112, 'GKINV1770043', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70048', '2017-01-31 05:36:55 PM', 'DGKCLNT1700018', 'DEALER', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'dfd', 'dffd', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'dfdf', 'dfd', '2017-01-31 05:45:58 PM', '2017-01-19', 'dff', 'dfdf', 'dfdf', 'dfd,fdfdf,df,dfdf', 1, '89189.00', 'Discount @ ', '27.12', '48376.00', '89189.00', '6.00', '7800.11', '137802.00', '0.00', '2.00_cst', '2756.04', '140558.04', '140558.04', '', '', 'dsdsd', 'sdsd', '', 'sdssdsdsds', 'sdsd', 'sdsd', 'sdsd', '', '', 'sdsdsds', '', 'admin', '01', '2017', '5', '', 11, 0, 1, 0, 0),
(113, 'GKINV1770043', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70048', '2017-01-31 05:36:55 PM', 'DGKCLNT1700018', 'DEALER', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'dfd', 'dffd', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'dfdf', 'dfd', '2017-01-31 05:45:59 PM', '2017-01-19', 'dfd', 'fdf', 'df', 'dfdfdf,dfdf,df,f', 1, '89189.00', 'Discount @ ', '27.12', '48376.00', '89189.00', '6.00', '7800.11', '137802.00', '0.00', '2.00_cst', '2756.04', '140558.04', '140558.04', '', '', 'dsdsd', 'sdsd', '', 'sdssdsdsds', 'sdsd', 'sdsd', 'sdsd', '', '', 'sdsdsds', '', 'admin', '01', '2017', '5', '', 11, 0, 1, 0, 0),
(114, 'GKINV1770044', 'E-Rickshaw', '', 'GKSLSBK70048', '2017-01-31 05:36:55 PM', 'DGKCLNT1700018', 'DEALER', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', '', '', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', '', '', '2017-01-31 05:56:07 PM', '', 'cfd', 'd', 'dd', 'dfdf,df,dfdf,dfd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '5', '', 11, 0, 0, 0, 0),
(115, 'GKINV1770044', 'E-Rickshaw', '', 'GKSLSBK70048', '2017-01-31 05:36:55 PM', 'DGKCLNT1700018', 'DEALER', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', '', '', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', '', '', '2017-01-31 05:56:07 PM', '', 'dfd', 'fdfd', 'fd', 'fdf,dfd,fdf,dfd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '01', '2017', '5', '', 11, 0, 0, 0, 0),
(116, 'GKINV1770045', 'E-Rickshaw(ER INDIA K-9)', '', 'GKSLSBK70049', '2017-01-31 06:08:24 PM', 'DGKCLNT1700018', 'DEALER', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ccv', 'cvv', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ccv', 'cvv', '2017-01-31 06:11:14 PM', '2017-01-25', 'fsfd', 'sfdsd', 'fsdfs', 'dfsdfsdf,sdfsdf,sdf,dsdsf', 1, '50000.00', 'Discount @ ', '20.00', '50000.00', '50000.00', '6.00', '12000.00', '212000.00', '0.00', '2.00_cst', '4240.00', '216240.00', '216240.00', '', '', 'cvxcv', '123', '', 'cxvxc', 'ddsf', 'dfdsf', 'dsfdsf', '', '', 'dsfsdf', '', 'admin', '01', '2017', '5', '', 11, 0, 1, 1, 1),
(117, 'GKINV1770045', 'E-Rickshaw(ER INDIA K-9)', '', 'GKSLSBK70049', '2017-01-31 06:08:24 PM', 'DGKCLNT1700018', 'DEALER', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ccv', 'cvv', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ccv', 'cvv', '2017-01-31 06:11:14 PM', '2017-01-25', 'sdfsd', 'fsdf', 'sdfsdf', 'sddsf,sdfdsf,sdfdsf,dsf', 1, '50000.00', 'Discount @ ', '20.00', '50000.00', '50000.00', '6.00', '12000.00', '212000.00', '0.00', '2.00_cst', '4240.00', '216240.00', '216240.00', '', '', 'cvxcv', '123', '', 'cxvxc', 'ddsf', 'dfdsf', 'dsfdsf', '', '', 'dsfsdf', '', 'admin', '01', '2017', '5', '', 11, 0, 1, 1, 1),
(118, 'GKINV1770045', 'E-Rickshaw(ER INDIA K-9)', '', 'GKSLSBK70049', '2017-01-31 06:08:24 PM', 'DGKCLNT1700018', 'DEALER', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ccv', 'cvv', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ccv', 'cvv', '2017-01-31 06:11:14 PM', '2017-01-25', 'dsfds', 'fsdfsd', 'fsdfsd', 'dsfdsf,dsf,sdfsd,fsdfdsf', 1, '50000.00', 'Discount @ ', '20.00', '50000.00', '50000.00', '6.00', '12000.00', '212000.00', '0.00', '2.00_cst', '4240.00', '216240.00', '216240.00', '', '', 'cvxcv', '123', '', 'cxvxc', 'ddsf', 'dfdsf', 'dsfdsf', '', '', 'dsfsdf', '', 'admin', '01', '2017', '5', '', 11, 0, 1, 1, 1),
(119, 'GKINV1770045', 'E-Rickshaw(ER INDIA K-9)', '', 'GKSLSBK70049', '2017-01-31 06:08:24 PM', 'DGKCLNT1700018', 'DEALER', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ccv', 'cvv', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ccv', 'cvv', '2017-01-31 06:11:14 PM', '2017-01-25', 'sdfds', 'fsdf', 'dsfdsf', 'sdf,dsfdsf,dsfds,fdsf', 1, '50000.00', 'Discount @ ', '20.00', '50000.00', '50000.00', '6.00', '12000.00', '212000.00', '0.00', '2.00_cst', '4240.00', '216240.00', '216240.00', '', '', 'cvxcv', '123', '', 'cxvxc', 'ddsf', 'dfdsf', 'dsfdsf', '', '', 'dsfsdf', '', 'admin', '01', '2017', '5', '', 11, 0, 1, 1, 1),
(120, 'GKINV1770045', 'E-Rickshaw(ER INDIA K-9)', '', 'GKSLSBK70049', '2017-01-31 06:08:24 PM', 'DGKCLNT1700018', 'DEALER', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ccv', 'cvv', 'sadsadas', 'asdsad asdas asdsa sdsad 2134', 'ccv', 'cvv', '2017-01-31 06:11:14 PM', '2017-01-25', 'sdf', 'dsfds', 'fdsfds', 'dsf,dsfds,fdsfdsf,sdfds', 1, '50000.00', 'Discount @ ', '20.00', '50000.00', '50000.00', '6.00', '12000.00', '212000.00', '0.00', '2.00_cst', '4240.00', '216240.00', '216240.00', '', '', 'cvxcv', '123', '', 'cxvxc', 'ddsf', 'dfdsf', 'dsfdsf', '', '', 'dsfsdf', '', 'admin', '01', '2017', '5', '', 11, 0, 1, 1, 1),
(121, 'GKINV1770046', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70047', '2017-01-31 05:07:47 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '', '', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '', '', '2017-01-31 06:34:04 PM', '', '2333', '333', '33', '33,33,33,33', 1, '89411.00', 'Discount @ ', '20.39', '36462.00', '89411.00', '6.00', '8541.61', '150901.81', '0.00', '2.00_cst', '3018.04', '153919.84', '153919.84', '', '', 'dddd', 'ddd', '', 'ddd', 'qwew', 'wee', 'dd', '', '', 'dd', '', 'admin', '01', '2017', '0', '', 11, 0, 1, 1, 1),
(122, 'GKINV1770046', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70047', '2017-01-31 05:07:47 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '', '', 'adfdfds', 'dasffd sddsf sdfds sdfds 123', '', '', '2017-01-31 06:34:04 PM', '', '1111', '1111', '222', '222,222,222,22', 1, '89411.00', 'Discount @ ', '20.39', '36462.00', '89411.00', '6.00', '8541.61', '150901.81', '0.00', '2.00_cst', '3018.04', '153919.84', '153919.84', '', '', 'dddd', 'ddd', '', 'ddd', 'qwew', 'wee', 'dd', '', '', 'dd', '', 'admin', '01', '2017', '0', '', 11, 0, 1, 1, 1),
(123, 'GKINV1770047', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70051', '2017-01-31 08:08:22 PM', 'DGKCLNT1700030', 'DEALER', 'abhishek', 'dsdf dfd ssd West Bengal 12121', 'dasdf', 'sdfsdf', 'abhishek', 'dsdf dfd ssd West Bengal 12121', 'dasdf', 'sdfsdf', '2017-01-31 08:20:15 PM', '2017-01-31', 'sdfsdf', 'sdfsdf', 'sdfsd', 'fsdfsd,fsdfsd,sdfsd,f', 1, '89189.00', 'Discount @ ', '27.12', '24188.00', '89189.00', '6.00', '3900.06', '68901.00', '0.00', '2.00_cst', '1378.02', '70279.02', '70279.02', '', '', 'asdsa', 'asdasd', '', 'asdas', 'asas', 'asdasd', 'asdsa', '', '', 'asdas', '', 'admin', '01', '2017', '0', '', 11, 0, 1, 1, 1),
(124, 'GKINV1770048', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70051', '2017-01-31 08:08:22 PM', 'DGKCLNT1700030', 'DEALER', 'abhishek', 'dsdf dfd ssd West Bengal 12121', 'dasdf', 'sdfsdf', 'abhishek', 'dsdf dfd ssd West Bengal 12121', 'dasdf', 'sdfsdf', '2017-02-06 07:16:07 PM', '2017-02-28', 'assd', 'sad', 'sadsadsa', 'dasd,asdasd,asd,asdsad', 1, '89189.00', 'Discount @ ', '27.12', '24188.00', '89189.00', '6.00', '3900.06', '68901.00', '0.00', '23.00_vat', '15847.23', '84748.23', '84748.23', '', '', 'sdfd', 'sdfds', '', 'dsfdsf', 'asdaed', 'asdadf', 'sdfds', '', '', 'sdfds', '', 'admin', '02', '2017', '0', '', 11, 0, 1, 1, 1),
(125, 'GKINV1770049', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70051', '2017-01-31 08:08:22 PM', 'DGKCLNT1700030', 'DEALER', 'abhishek', 'dsdf dfd ssd West Bengal 12121', 'dasdf', 'sdfsdf', 'abhishek', 'dsdf dfd ssd West Bengal 12121', 'dasdf', 'sdfsdf', '2017-02-06 07:27:21 PM', '2017-02-22', 'sasd', 'sds', 'sdds', 'sdsd,sdds,sds,sd', 1, '89189.00', 'Discount @ ', '27.12', '24188.00', '89189.00', '6.00', '3900.06', '68901.00', '0.00', '23.00_vat', '15847.23', '84748.23', '84748.23', '', '', 'fdgf', 'dfgd', '', 'dfg', 'dsffgg', 'dfgd', 'fdgfd', '', '', 'dfgf', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(126, 'GKINV1770050', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70052', '2017-02-09 11:46:57 AM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '', '', '', '', '2017-02-12 04:33:08 AM', '2017-02-25', 'M6REP3085G17B0001', 'assad', '', 'asdasd,asdasd,asdas,dasd', 1, '89189.00', 'Discount @ ', '20.39', '36371.00', '89189.00', '6.00', '8520.40', '150527.13', '0.00', '2.00_cst', '3010.54', '153537.67', '153537.67', '', '', 'dfdf', 'dffd', '', 'dfdf', 'ffg', 'dfdfg', 'dfdf', '', '', 'dfdfg', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(127, 'GKINV1770050', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70052', '2017-02-09 11:46:57 AM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '', '', '', '', '2017-02-12 04:33:08 AM', '2017-02-25', 'M6REP3085G17B0002', 'asdas', '', 'dasd,asdasd,asdasd,as', 1, '89189.00', 'Discount @ ', '20.39', '36371.00', '89189.00', '6.00', '8520.40', '150527.13', '0.00', '2.00_cst', '3010.54', '153537.67', '153537.67', '', '', 'dfdf', 'dffd', '', 'dfdf', 'ffg', 'dfdfg', 'dfdf', '', '', 'dfdfg', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(128, 'GKINV1770051', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-02-13 11:56:34 PM', '2017-02-23', 'M6REP3085G17B0003', 'asasd', '', 'asdasd,asdasd,sadasd,asdas', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '23.00_vat', '173106.20', '925741.85', '925741.85', '', '', 'sdfsdf', 'sdfsdf', '', 'sdfsdf', 'sdsdf', 'sdfsdf', 'sd', '', '', 'sdfsdf', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(129, 'GKINV1770051', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-02-13 11:56:34 PM', '2017-02-23', 'M6REP3085G17B0004', 'asdasd', '', 'sadas,asdasd,asdasd,asdas', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '23.00_vat', '173106.20', '925741.85', '925741.85', '', '', 'sdfsdf', 'sdfsdf', '', 'sdfsdf', 'sdsdf', 'sdfsdf', 'sd', '', '', 'sdfsdf', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(130, 'GKINV1770051', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-02-13 11:56:34 PM', '2017-02-23', 'M6REP3085G17B0005', 'asdas', '', 'asdasd,asdasd,asd,asdas', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '23.00_vat', '173106.20', '925741.85', '925741.85', '', '', 'sdfsdf', 'sdfsdf', '', 'sdfsdf', 'sdsdf', 'sdfsdf', 'sd', '', '', 'sdfsdf', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(131, 'GKINV1770051', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-02-13 11:56:34 PM', '2017-02-23', 'M6REP3085G17B0006', 'asdas', '', 'asdasd,asdas,dsa,das', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '23.00_vat', '173106.20', '925741.85', '925741.85', '', '', 'sdfsdf', 'sdfsdf', '', 'sdfsdf', 'sdsdf', 'sdfsdf', 'sd', '', '', 'sdfsdf', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(132, 'GKINV1770051', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-02-13 11:56:34 PM', '2017-02-23', 'M6REP3085G17B0007', 'asdasd', '', 'dasd,asdas,sad,asdasd', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '23.00_vat', '173106.20', '925741.85', '925741.85', '', '', 'sdfsdf', 'sdfsdf', '', 'sdfsdf', 'sdsdf', 'sdfsdf', 'sd', '', '', 'sdfsdf', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(133, 'GKINV1770051', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-02-13 11:56:34 PM', '2017-02-23', 'M6REP3085G17B0008', 'asdasd', '', 'sdsad,asdasd,asdas,d', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '23.00_vat', '173106.20', '925741.85', '925741.85', '', '', 'sdfsdf', 'sdfsdf', '', 'sdfsdf', 'sdsdf', 'sdfsdf', 'sd', '', '', 'sdfsdf', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(134, 'GKINV1770051', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-02-13 11:56:34 PM', '2017-02-23', 'M6REP3085G17B0009', 'das', '', 'asdas,dasd,asdasd,asdsa', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '23.00_vat', '173106.20', '925741.85', '925741.85', '', '', 'sdfsdf', 'sdfsdf', '', 'sdfsdf', 'sdsdf', 'sdfsdf', 'sd', '', '', 'sdfsdf', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(135, 'GKINV1770051', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-02-13 11:56:34 PM', '2017-02-23', 'M6REP3085G17B0010', 'asda', '', 'dsad,asd,asdasd,asdasd', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '23.00_vat', '173106.20', '925741.85', '925741.85', '', '', 'sdfsdf', 'sdfsdf', '', 'sdfsdf', 'sdsdf', 'sdfsdf', 'sd', '', '', 'sdfsdf', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(136, 'GKINV1770051', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-02-13 11:56:34 PM', '2017-02-23', 'M6REP3085G17B0011', 'asdasd', '', 'asdasd,asdas,a,sdas', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '23.00_vat', '173106.20', '925741.85', '925741.85', '', '', 'sdfsdf', 'sdfsdf', '', 'sdfsdf', 'sdsdf', 'sdfsdf', 'sd', '', '', 'sdfsdf', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(137, 'GKINV1770051', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-02-13 11:56:35 PM', '2017-02-23', 'M6REP3085G17B0012', 'asdasd', '', 'dasd,asdasd,asdas,d', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '23.00_vat', '173106.20', '925741.85', '925741.85', '', '', 'sdfsdf', 'sdfsdf', '', 'sdfsdf', 'sdsdf', 'sdfsdf', 'sd', '', '', 'sdfsdf', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(166, 'GKINV70054', 'BACK SET BOX(ER INDIA G-7)()', '', 'GKSLSBK70053', '2017-02-09 01:24:28 PM', 'TGKCLNT1700023', 'RETAILER', 'pankaj patra', 'tamluk tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456 tamluk   123456', '', 'cast@2', '', '', '', '', '2017-02-14 03:17:12 AM', '2017-02-15', '', '', '', '', 10, '500.00', 'Discount @ ', '0.00', '0.00', '5000.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '5300.00', '', '', 'asdasd', 'asdasd', '', 'asdasd', 'sdsad', 'asdasd', 'asdasd', '', '', 'asdasd', '', 'admin', '02', '2017', '0', '', 11, 0, 0, 0, 0),
(167, 'GKINV70055', 'E-Rickshaw', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:17:15 PM', '', 'M6REP3085G17B0003', 'asasd', '', 'asdasd,asdasd,sadasd,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '2017', '', '', 11, 0, 0, 0, 0),
(168, 'GKINV70055', 'E-Rickshaw', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:17:15 PM', '', 'M6REP3085G17B0004', 'asdasd', '', 'sadas,asdasd,asdasd,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '2017', '', '', 11, 0, 0, 0, 0),
(169, 'GKINV70055', 'E-Rickshaw', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:17:15 PM', '', 'M6REP3085G17B0005', 'asdas', '', 'asdasd,asdasd,asd,asdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '2017', '', '', 11, 0, 0, 0, 0),
(170, 'GKINV70055', 'E-Rickshaw', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:17:15 PM', '', 'M6REP3085G17B0006', 'asdas', '', 'asdasd,asdas,dsa,das', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '2017', '', '', 11, 0, 0, 0, 0),
(171, 'GKINV70055', 'E-Rickshaw', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:17:16 PM', '', 'M6REP3085G17B0007', 'asdasd', '', 'dasd,asdas,sad,asdasd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '2017', '', '', 11, 0, 0, 0, 0),
(172, 'GKINV70055', 'E-Rickshaw', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:17:16 PM', '', 'M6REP3085G17B0008', 'asdasd', '', 'sdsad,asdasd,asdas,d', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '2017', '', '', 11, 0, 0, 0, 0),
(173, 'GKINV70055', 'E-Rickshaw', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:17:16 PM', '', 'M6REP3085G17B0009', 'das', '', 'asdas,dasd,asdasd,asdsa', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '2017', '', '', 11, 0, 0, 0, 0),
(174, 'GKINV70055', 'E-Rickshaw', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:17:16 PM', '', 'M6REP3085G17B0010', 'asda', '', 'dsad,asd,asdasd,asdasd', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '2017', '', '', 11, 0, 0, 0, 0),
(175, 'GKINV70055', 'E-Rickshaw', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:17:16 PM', '', 'M6REP3085G17B0011', 'asdasd', '', 'asdasd,asdas,a,sdas', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '2017', '', '', 11, 0, 0, 0, 0),
(176, 'GKINV70055', 'E-Rickshaw', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:17:16 PM', '', 'M6REP3085G17B0012', 'asdasd', '', 'dasd,asdasd,asdas,d', 0, '0.00', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '2017', '', '', 11, 0, 0, 0, 0),
(177, 'GKINV70056', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:18:35 PM', '2017-10-28', 'M6REP3085G17B0003', 'asasd', '', 'asdasd,asdasd,sadasd,asdas', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '0', '0.00', '0.00', '752636.00', '', '', 'dsafds', 'wb 12-4587', '', '', 'ass', 'asas', 'car', '', '', '98521463', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0),
(178, 'GKINV70056', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:18:36 PM', '2017-10-28', 'M6REP3085G17B0004', 'asdasd', '', 'sadas,asdasd,asdasd,asdas', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '0', '0.00', '0.00', '752636.00', '', '', 'dsafds', 'wb 12-4587', '', '', 'ass', 'asas', 'car', '', '', '98521463', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0),
(179, 'GKINV70056', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:18:36 PM', '2017-10-28', 'M6REP3085G17B0005', 'asdas', '', 'asdasd,asdasd,asd,asdas', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '0', '0.00', '0.00', '752636.00', '', '', 'dsafds', 'wb 12-4587', '', '', 'ass', 'asas', 'car', '', '', '98521463', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0),
(180, 'GKINV70056', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:18:36 PM', '2017-10-28', 'M6REP3085G17B0006', 'asdas', '', 'asdasd,asdas,dsa,das', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '0', '0.00', '0.00', '752636.00', '', '', 'dsafds', 'wb 12-4587', '', '', 'ass', 'asas', 'car', '', '', '98521463', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0),
(181, 'GKINV70056', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:18:36 PM', '2017-10-28', 'M6REP3085G17B0007', 'asdasd', '', 'dasd,asdas,sad,asdasd', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '0', '0.00', '0.00', '752636.00', '', '', 'dsafds', 'wb 12-4587', '', '', 'ass', 'asas', 'car', '', '', '98521463', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0),
(182, 'GKINV70056', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:18:36 PM', '2017-10-28', 'M6REP3085G17B0008', 'asdasd', '', 'sdsad,asdasd,asdas,d', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '0', '0.00', '0.00', '752636.00', '', '', 'dsafds', 'wb 12-4587', '', '', 'ass', 'asas', 'car', '', '', '98521463', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0),
(183, 'GKINV70056', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:18:36 PM', '2017-10-28', 'M6REP3085G17B0009', 'das', '', 'asdas,dasd,asdasd,asdsa', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '0', '0.00', '0.00', '752636.00', '', '', 'dsafds', 'wb 12-4587', '', '', 'ass', 'asas', 'car', '', '', '98521463', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0),
(184, 'GKINV70056', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:18:36 PM', '2017-10-28', 'M6REP3085G17B0010', 'asda', '', 'dsad,asd,asdasd,asdasd', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '0', '0.00', '0.00', '752636.00', '', '', 'dsafds', 'wb 12-4587', '', '', 'ass', 'asas', 'car', '', '', '98521463', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0),
(185, 'GKINV70056', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:18:36 PM', '2017-10-28', 'M6REP3085G17B0011', 'asdasd', '', 'asdasd,asdas,a,sdas', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '0', '0.00', '0.00', '752636.00', '', '', 'dsafds', 'wb 12-4587', '', '', 'ass', 'asas', 'car', '', '', '98521463', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0),
(186, 'GKINV70056', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70057', '2017-02-13 11:48:46 PM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:18:36 PM', '2017-10-28', 'M6REP3085G17B0012', 'asdasd', '', 'dasd,asdasd,asdas,d', 1, '89189.00', 'Discount @ ', '20.39', '181856.00', '89189.00', '6.00', '42602.02', '752635.65', '0.00', '0', '0.00', '0.00', '752636.00', '', '', 'dsafds', 'wb 12-4587', '', '', 'ass', 'asas', 'car', '', '', '98521463', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0),
(187, 'GKINV70057', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70052', '2017-02-09 11:46:57 AM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:27:01 PM', '2017-06-14', 'M6REP3085G17B0001', 'assad', '1212121', 'asdasd,asdasd,asdas,dasd', 1, '1301310.00', 'Discount @ ', '20.39', '530674.00', '1301310.00', '6.00', '124316.75', '2196262.53', '0.00', '23.00_vat', '505140.38', '2701402.91', '2701402.91', '', '', 'asdasd', 'asdad', '', 'asdads', 'asasd', 'asdads', '', '', '', '213123', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0),
(188, 'GKINV70057', 'E-Rickshaw(ER INDIA G-7S)', '', 'GKSLSBK70052', '2017-02-09 11:46:57 AM', 'CGKCLNT1700028', 'SUB-DEALER', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', 'ABCDEF', 'dasffd,sddsf,sdfds,,sdfds,Bangladesh,123 0.00   1254789', 'ssds', 'caddafdas', '2017-10-03 03:27:01 PM', '2017-06-14', 'M6REP3085G17B0002', 'asdas', '1212121', 'dasd,asdasd,asdasd,as', 1, '1301310.00', 'Discount @ ', '20.39', '530674.00', '1301310.00', '6.00', '124316.75', '2196262.53', '0.00', '23.00_vat', '505140.38', '2701402.91', '2701402.91', '', '', 'asdasd', 'asdad', '', 'asdads', 'asasd', 'asdads', '', '', '', '213123', '', 'admin', '10', '2017', '0', '', 11, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_master_vhc_div`
--

CREATE TABLE `item_master_vhc_div` (
  `id` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL,
  `modelName` varchar(255) NOT NULL,
  `modelCode` varchar(255) NOT NULL,
  `modelSL` varchar(255) NOT NULL,
  `batteryPower` varchar(255) NOT NULL,
  `batteryModel` varchar(255) NOT NULL,
  `classofmodel` varchar(255) NOT NULL,
  `varient` varchar(255) NOT NULL,
  `openQty` int(50) NOT NULL,
  `manfCost` decimal(20,2) NOT NULL,
  `distributerPriceEx` decimal(25,2) DEFAULT NULL,
  `distributerPriceIn` decimal(25,2) DEFAULT NULL,
  `distributertosubEx` decimal(25,2) DEFAULT NULL,
  `distributertosubIn` decimal(25,2) DEFAULT NULL,
  `subdistributertoretailEx` decimal(25,2) DEFAULT NULL,
  `subdistributertoretailIn` decimal(25,2) DEFAULT NULL,
  `servicePaid` varchar(255) NOT NULL,
  `servicefromdays` varchar(30) NOT NULL,
  `motorPower` varchar(255) NOT NULL,
  `seatCapacity` int(20) NOT NULL,
  `grossvhclwt` varchar(255) NOT NULL,
  `typeBody` varchar(255) NOT NULL,
  `fuelused` varchar(255) NOT NULL,
  `mfgYear` varchar(20) NOT NULL,
  `unloadnWt` varchar(255) NOT NULL,
  `octraino` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_master_vhc_div`
--

INSERT INTO `item_master_vhc_div` (`id`, `brandName`, `modelName`, `modelCode`, `modelSL`, `batteryPower`, `batteryModel`, `classofmodel`, `varient`, `openQty`, `manfCost`, `distributerPriceEx`, `distributerPriceIn`, `distributertosubEx`, `distributertosubIn`, `subdistributertoretailEx`, `subdistributertoretailIn`, `servicePaid`, `servicefromdays`, `motorPower`, `seatCapacity`, `grossvhclwt`, `typeBody`, `fuelused`, `mfgYear`, `unloadnWt`, `octraino`, `status`) VALUES
(11, 'item1', 'ddasf', 'ddasf', 'as', '11', '134324', '45435', '432435', 435, '345.00', '1212.00', '12312.00', '12312.00', '12312.00', '213.00', '12312.00', '12312', '2132', '2132', 12213, '123', 'ewew', '12312', '12312', '123', '1232', 0),
(10, 'item1', 'ddasf', 'asdas', 'as', '11', '134324', '45435', '432435', 435, '345.00', '1212.00', '12312.00', '12312.00', '12312.00', '213.00', '12312.00', '12312', '2132', '2132', 12213, '123', 'ewew', '12312', '12312', '123', '1232', 0),
(9, 'item1', 'sddf', 'sdfdsfsd', 'fdf', '121323', '12132', '12132', '123', 12312, '1212.00', '1234.00', '23324.00', '23234.00', '3123124.00', '1323.00', '3123.00', '2334', '23432', '23432', 324, '23432', '324', 'fuelused', '3234', '234324', '234342', 0),
(8, 'item1', 'ffdgf', 'gdhgfh', 'z zcx', '1234', 'xxcdd', 'd', 'fd', 1211, '212.00', '1212.00', '121.00', '121.00', '12.00', '121.00', '1212.00', '23232', '2323', '2323', 323, '323', 'dfdf2', 'fuelused', '2232', '23', '232', 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufact`
--

CREATE TABLE `manufact` (
  `id` int(11) NOT NULL,
  `orderno` varchar(255) NOT NULL,
  `monthcode` varchar(5) NOT NULL,
  `yearcode` int(11) NOT NULL,
  `manfYr` int(11) NOT NULL,
  `chasisno` varchar(100) NOT NULL,
  `motorno` varchar(100) NOT NULL,
  `controlerno` varchar(100) NOT NULL,
  `batteryno1` varchar(100) NOT NULL,
  `batteryno2` varchar(55) NOT NULL,
  `batteryno3` varchar(55) NOT NULL,
  `batteryno4` varchar(55) NOT NULL,
  `color` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `doe` varchar(255) NOT NULL,
  `model` varchar(12) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crtd` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufact`
--

INSERT INTO `manufact` (`id`, `orderno`, `monthcode`, `yearcode`, `manfYr`, `chasisno`, `motorno`, `controlerno`, `batteryno1`, `batteryno2`, `batteryno3`, `batteryno4`, `color`, `date`, `doe`, `model`, `qty`, `status`, `crtd`) VALUES
(4, 'GKSLSBK70057', 'G', 17, 2017, 'M6REP3085G17B0003', 'asasd', 'asdasd', 'asdasd', 'asdasd', 'sadasd', 'asdas', '', '2017-02-13 18:25:01', '2017-02-13', '3', 1, 0, 'admin'),
(2, 'GKSLSBK70052', 'G', 17, 2017, 'M6REP3085G17B0001', 'assad', 'asdasd', 'asdasd', 'asdasd', 'asdas', 'dasd', '', '2017-02-11 16:41:56', '2017-02-11', '3', 1, 0, 'admin'),
(3, 'GKSLSBK70052', 'G', 17, 2017, 'M6REP3085G17B0002', 'asdas', 'dasdas', 'dasd', 'asdasd', 'asdasd', 'as', '', '2017-02-11 16:41:57', '2017-02-11', '3', 1, 0, 'admin'),
(5, 'GKSLSBK70057', 'G', 17, 2017, 'M6REP3085G17B0004', 'asdasd', 'asdasd', 'sadas', 'asdasd', 'asdasd', 'asdas', '', '2017-02-13 18:25:01', '2017-02-13', '3', 1, 0, 'admin'),
(6, 'GKSLSBK70057', 'G', 17, 2017, 'M6REP3085G17B0005', 'asdas', 'asd', 'asdasd', 'asdasd', 'asd', 'asdas', '', '2017-02-13 18:25:01', '2017-02-13', '3', 1, 0, 'admin'),
(7, 'GKSLSBK70057', 'G', 17, 2017, 'M6REP3085G17B0006', 'asdas', 'dasd', 'asdasd', 'asdas', 'dsa', 'das', '', '2017-02-13 18:25:01', '2017-02-13', '3', 1, 0, 'admin'),
(8, 'GKSLSBK70057', 'G', 17, 2017, 'M6REP3085G17B0007', 'asdasd', 'asdas', 'dasd', 'asdas', 'sad', 'asdasd', '', '2017-02-13 18:25:01', '2017-02-13', '3', 1, 0, 'admin'),
(9, 'GKSLSBK70057', 'G', 17, 2017, 'M6REP3085G17B0008', 'asdasd', 'asdasd', 'sdsad', 'asdasd', 'asdas', 'd', '', '2017-02-13 18:25:01', '2017-02-13', '3', 1, 0, 'admin'),
(10, 'GKSLSBK70057', 'G', 17, 2017, 'M6REP3085G17B0009', 'das', 'dasd', 'asdas', 'dasd', 'asdasd', 'asdsa', '', '2017-02-13 18:25:01', '2017-02-13', '3', 1, 0, 'admin'),
(11, 'GKSLSBK70057', 'G', 17, 2017, 'M6REP3085G17B0010', 'asda', 'sdasdas', 'dsad', 'asd', 'asdasd', 'asdasd', '', '2017-02-13 18:25:01', '2017-02-13', '3', 1, 0, 'admin'),
(12, 'GKSLSBK70057', 'G', 17, 2017, 'M6REP3085G17B0011', 'asdasd', 'asd', 'asdasd', 'asdas', 'a', 'sdas', '', '2017-02-13 18:25:01', '2017-02-13', '3', 1, 0, 'admin'),
(13, 'GKSLSBK70057', 'G', 17, 2017, 'M6REP3085G17B0012', 'asdasd', 'asdas', 'dasd', 'asdasd', 'asdas', 'd', '', '2017-02-13 18:25:01', '2017-02-13', '3', 1, 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `manufactre_req`
--

CREATE TABLE `manufactre_req` (
  `id` int(11) NOT NULL,
  `orderno` varchar(55) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `model` varchar(55) NOT NULL,
  `qnty` int(11) NOT NULL,
  `dos` varchar(255) NOT NULL,
  `crtdby` varchar(255) NOT NULL,
  `manfactid` varchar(55) NOT NULL,
  `warehousecode` varchar(55) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `manfact_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufactre_req`
--

INSERT INTO `manufactre_req` (`id`, `orderno`, `doe`, `model`, `qnty`, `dos`, `crtdby`, `manfactid`, `warehousecode`, `status`, `manfact_status`) VALUES
(8, 'GKSLSBK70052', '2017-02-11', '3', 2, '2017-02-11 03:09:44 PM', 'warehouse1', 'MNFC00001', 'GKWREHSE001', 1, 0),
(15, 'GKSLSBK70055', '2017-02-13', '1', 20, '2017-02-13 08:34:19 PM', 'warehouse1', 'MNFC00002', 'GKWREHSE001', 0, 0),
(16, 'GKSLSBK70055', '2017-02-13', '1', 20, '2017-02-13 08:40:52 PM', 'warehouse1', 'MNFC00003', 'GKWREHSE001', 0, 0),
(17, 'GKSLSBK70055', '2017-02-13', '1', 20, '2017-02-13 10:23:20 PM', 'warehouse1', 'MNFC00004', 'GKWREHSE001', 0, 0),
(18, 'GKSLSBK70055', '2017-02-13', '1', 20, '2017-02-13 10:23:43 PM', 'warehouse1', 'MNFC00005', 'GKWREHSE001', 0, 0),
(19, 'GKSLSBK70055', '2017-02-13', '1', 20, '2017-02-13 10:25:59 PM', 'warehouse1', 'MNFC00006', 'GKWREHSE001', 0, 0),
(20, 'GKSLSBK70055', '2017-02-13', '1', 20, '2017-02-13 10:34:54 PM', 'warehouse1', 'MNFC00007', 'GKWREHSE001', 0, 0),
(21, 'GKSLSBK70055', '2017-02-13', '1', 20, '2017-02-13 10:35:35 PM', 'warehouse1', 'MNFC00008', 'GKWREHSE001', 0, 0),
(22, 'GKSLSBK70057', '2017-02-13', '3', 10, '2017-02-13 11:52:28 PM', 'warehouse1', 'MNFC00009', 'GKWREHSE001', 1, 0),
(23, 'GKSLSBK70057', '2017-02-13', '3', 10, '2017-02-13 11:52:29 PM', 'warehouse1', 'MNFC00009', 'GKWREHSE001', 1, 0),
(24, 'GKSLSBK70058', '2017-02-14', '1', 2, '2017-02-14 12:13:41 AM', 'warehouse1', 'MNFC00010', 'GKWREHSE001', 0, 0),
(25, 'GKSLSBK70058', '2017-02-14', '1', 2, '2017-02-14 12:14:20 AM', 'warehouse1', 'MNFC00011', 'GKWREHSE001', 0, 0),
(26, 'GKSLSBK70058', '2017-02-14', '1', 2, '2017-02-14 12:15:05 AM', 'warehouse1', 'MNFC00012', 'GKWREHSE001', 0, 0),
(27, 'GKSLSBK70058', '2017-02-14', '1', 2, '2017-02-14 12:17:17 AM', 'warehouse1', 'MNFC00013', 'GKWREHSE001', 0, 0),
(28, 'GKSLSBK70058', '2017-02-14', '1', 2, '2017-02-14 12:18:03 AM', 'warehouse1', 'MNFC00014', 'GKWREHSE001', 0, 0),
(29, 'GKSLSBK70058', '2017-02-14', '1', 2, '2017-02-14 12:18:52 AM', 'warehouse1', 'MNFC00015', 'GKWREHSE001', 0, 0),
(30, 'GKSLSBK70058', '2017-02-14', '1', 2, '2017-02-14 12:19:38 AM', 'warehouse1', 'MNFC00016', 'GKWREHSE001', 0, 0),
(31, 'GKSLSBK70058', '2017-02-14', '1', 2, '2017-02-14 12:20:45 AM', 'warehouse1', 'MNFC00017', 'GKWREHSE001', 0, 0),
(32, 'GKSLSBK70058', '2017-02-14', '1', 2, '2017-02-14 12:21:59 AM', 'warehouse1', 'MNFC00018', 'GKWREHSE001', 0, 0),
(33, 'GKSLSBK70053', '2017-02-14', '1', 10, '2017-02-14 12:59:10 AM', 'warehouse1', 'MNFC00019', 'GKWREHSE001', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufactstock`
--

CREATE TABLE `manufactstock` (
  `id` int(11) NOT NULL,
  `partsid` varchar(255) NOT NULL,
  `mnme` varchar(255) NOT NULL,
  `spefcid` varchar(255) NOT NULL,
  `gdownid` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crted` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufactstock`
--

INSERT INTO `manufactstock` (`id`, `partsid`, `mnme`, `spefcid`, `gdownid`, `qty`, `doe`, `status`, `crted`) VALUES
(1, '2', 'G5', '1', '3', 300, '2016-11-10', 0, 'admin'),
(2, '3', 'G5', '2', '3', 100, '2016-11-10', 0, 'admin'),
(3, '4', 'G5', '2', '3', 200, '2016-11-10', 0, 'admin'),
(4, '5', 'G5', '2', '3', 300, '2016-11-10', 0, 'admin'),
(5, '6', 'G5', '3', '3', 150, '2016-11-10', 0, 'admin'),
(6, '7', 'G5', '2', '3', 100, '2016-11-10', 0, 'admin'),
(7, '15', 'G5', '1', '3', 300, '2016-11-10', 0, 'admin'),
(8, '3', 'G5', '1', '3', 50, '2016-11-10', 0, 'admin'),
(9, '4', 'G5', '1', '3', 100, '2016-11-10', 0, 'admin'),
(10, '7', 'G5', '1', '3', 50, '2016-11-10', 0, 'admin'),
(11, '15', 'G5', '2', '3', 150, '2016-11-10', 0, 'admin'),
(12, '2', 'G5', '1', '1', 100, '2016-11-10', 0, 'admin'),
(13, '3', 'G5', '2', '1', 50, '2016-11-10', 0, 'admin'),
(14, '4', 'G5', '2', '1', 100, '2016-11-10', 0, 'admin'),
(15, '5', 'G5', '1', '1', 100, '2016-11-10', 0, 'admin'),
(16, '6', 'G5', '2', '1', 50, '2016-11-10', 0, 'admin'),
(17, '7', 'G5', '1', '1', 50, '2016-11-10', 0, 'admin'),
(18, '15', 'G5', '2', '1', 150, '2016-11-10', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `materiel_master`
--

CREATE TABLE `materiel_master` (
  `id` int(11) NOT NULL,
  `materiel_id` varchar(255) NOT NULL,
  `materialname` varchar(255) NOT NULL,
  `wt` varchar(255) NOT NULL,
  `buypr` decimal(11,2) NOT NULL,
  `salespr` decimal(11,2) NOT NULL,
  `buyprcrnt` decimal(20,2) NOT NULL,
  `buyprprev` decimal(20,2) NOT NULL,
  `cnfpr` decimal(20,2) NOT NULL,
  `cnfprper` decimal(20,2) NOT NULL,
  `distpr` decimal(20,2) NOT NULL,
  `distprper` decimal(20,2) NOT NULL,
  `subdistpr` decimal(20,2) NOT NULL,
  `subdistprper` decimal(20,2) NOT NULL,
  `retailpr` decimal(20,2) NOT NULL,
  `retailprper` decimal(20,2) NOT NULL,
  `reorderlevel` int(11) NOT NULL,
  `qnty` int(20) NOT NULL,
  `openQnty` int(20) NOT NULL,
  `unit` int(20) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `lastentry` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `mName` varchar(255) NOT NULL,
  `partsName` varchar(255) NOT NULL,
  `partsCode` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `vat` float NOT NULL,
  `Sales` float NOT NULL,
  `Road` float NOT NULL,
  `cst` float NOT NULL,
  `excise` float NOT NULL,
  `custom` float NOT NULL,
  `sellerpr` decimal(20,2) NOT NULL,
  `taxinfo` text NOT NULL,
  `others` decimal(20,2) NOT NULL,
  `pono` varchar(255) NOT NULL,
  `purchaseupdte` varchar(255) NOT NULL,
  `tax` decimal(20,2) NOT NULL,
  `purchsecrtd` varchar(255) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `reOrdering` varchar(255) NOT NULL,
  `minStk` int(20) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `lastupdt` varchar(255) NOT NULL,
  `stockentryupdt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materiel_master`
--

INSERT INTO `materiel_master` (`id`, `materiel_id`, `materialname`, `wt`, `buypr`, `salespr`, `buyprcrnt`, `buyprprev`, `cnfpr`, `cnfprper`, `distpr`, `distprper`, `subdistpr`, `subdistprper`, `retailpr`, `retailprper`, `reorderlevel`, `qnty`, `openQnty`, `unit`, `doe`, `lastentry`, `status`, `mName`, `partsName`, `partsCode`, `description`, `vat`, `Sales`, `Road`, `cst`, `excise`, `custom`, `sellerpr`, `taxinfo`, `others`, `pono`, `purchaseupdte`, `tax`, `purchsecrtd`, `specification`, `reOrdering`, `minStk`, `crtd`, `lastupdt`, `stockentryupdt`) VALUES
(3, 'GKPC00001', 'BACK SET BOX', '', '0.00', '0.00', '500.00', '0.00', '470.00', '6.00', '490.00', '2.00', '485.00', '3.00', '500.00', '0.00', 500, 239, 229, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', 'admin#2017-01-10 05:31:09 PM', '', '', 59, 'admin', '1/6/2017 23:39', ''),
(4, 'GKPC00002', 'BOX COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 248, 268, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 68, 'admin', '1/6/2017 23:39', 'admin'),
(5, 'GKPC00003', 'BAG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 716, 726, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '2017-02-14 12:59:11 AM', 'admin'),
(6, 'GKPC00004', 'BASKET BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 652, 672, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '2017-02-14 12:22:00 AM', 'admin'),
(7, 'GKPC00005', 'CHARGER', '', '0.00', '0.00', '5000.00', '0.00', '4700.00', '6.00', '4900.00', '2.00', '4850.00', '3.00', '5000.00', '0.00', 500, 95, 55, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', 'admin#2017-01-10 05:31:09 PM', '', '', 0, 'admin', '1/6/2017 23:39', ''),
(8, 'GKPC00006', 'CHASSIS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 129, 109, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(9, 'GKPC00007', 'CLAMP SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 316, 276, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(10, 'GKPC00008', 'COVER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 40, 0, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/6/2017 23:39', ''),
(11, 'GKPC00009', 'DIFFENTIAL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 89, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(12, 'GKPC00010', 'DRIVER SET BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 109, 89, 1, '', '', 0, 'ER INDIA G-7-2', '', '', 'FRONT BREAK DAM, FRONT BREAK DAM COVER,  MAIN WIRING, DIGITAL MITER,  HAND BREAK SET, PACKING BREAK, ', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(13, 'GKPC00011', 'FASTAID BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/6/2017 23:39', ''),
(14, 'GKPC00012', 'FOOT MAT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 291, 240, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(15, 'GKPC00013', 'GLASS SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 93, 68, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 68, 'admin', '1/6/2017 23:39', ''),
(16, 'GKPC00014', 'KAMANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 168, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(17, 'GKPC00015', 'LEG GURD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 109, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(18, 'GKPC00016', 'MIDDLE FOOT REST SHEET / ALUMUNIM SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 140, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(19, 'GKPC00017', 'MIDDLE SET BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 71, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(20, 'GKPC00018', 'MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 71, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(21, 'GKPC00019', 'RIM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 278, 276, 4, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 276, 'admin', '1/6/2017 23:39', ''),
(22, 'GKPC00020', 'ROOF', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 71, 71, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 71, 'admin', '1/6/2017 23:39', ''),
(23, 'GKPC00021', 'ROOF STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(24, 'GKPC00022', 'SEAT SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(25, 'GKPC00023', 'SOUND PLATE STAND', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(26, 'GKPC00024', 'STAPNY COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/6/2017 23:39', ''),
(27, 'GKPC00025', 'STICKER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 20, 20, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/6/2017 23:39', ''),
(28, 'GKPC00026', 'TYRE TUBE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 4, 0, 4, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/6/2017 23:39', ''),
(29, 'GKPC00027', 'TOTO COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 30, 30, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/6/2017 23:39', ''),
(30, 'GKPC00028', 'HEAD LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 40, 40, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/6/2017 23:39', ''),
(31, 'GKPC00029', 'BACK BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 259, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', 'admin'),
(32, 'GKPC00030', 'BOX COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(33, 'GKPC00031', 'BOX PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(34, 'GKPC00032', 'BREAK ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 515, 512, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(35, 'GKPC00033', 'BUMPER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(36, 'GKPC00034', 'BASKET & NET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 515, 512, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(37, 'GKPC00035', 'CHASSIS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(38, 'GKPC00036', 'CHARGER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(39, 'GKPC00037', 'COVER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(40, 'GKPC00038', 'DIFFENTIAL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(41, 'GKPC00039', 'DRIVER BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(42, 'GKPC00040', 'FIRSTAID BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(43, 'GKPC00041', 'FOOT MAT (RIGHT + LEFT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 515, 512, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(44, 'GKPC00042', 'GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 231, 228, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(45, 'GKPC00043', 'GLASS STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(46, 'GKPC00044', 'GLASS STAND', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(47, 'GKPC00045', 'KAMANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 515, 512, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(48, 'GKPC00046', 'LEG GUARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(49, 'GKPC00047', 'METALICK COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 515, 512, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(50, 'GKPC00048', 'MIDDLE BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(51, 'GKPC00049', 'MIDDLE BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(52, 'GKPC00050', 'MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 271, 268, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(53, 'GKPC00051', 'REAR BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(54, 'GKPC00052', 'ROOF', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(55, 'GKPC00053', 'ROOF STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(56, 'GKPC00054', 'RUBBER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(57, 'GKPC00055', 'SEAT CLAMP BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(58, 'GKPC00056', 'SEAT CLAMP SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(59, 'GKPC00057', 'SEAT SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2500, 3, 0, 5, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(60, 'GKPC00058', 'SHOKER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(61, 'GKPC00059', 'SIDE STAND BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 515, 512, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(62, 'GKPC00060', 'SIDE STAND SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 515, 512, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(63, 'GKPC00061', 'STEPY COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 259, 256, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(64, 'GKPC00062', 'TUBE / TYRE / RIM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 3, 0, 4, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(65, 'GKPC00063', 'BAG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(66, 'GKPC00064', 'BACK BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 190, 390, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '2017-02-13 11:52:30 PM', 'admin'),
(67, 'GKPC00065', 'BAG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(68, 'GKPC00066', 'BOX COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(69, 'GKPC00067', 'DRIVER HANDEL (LEFT + RIGHT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 417, 414, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(70, 'GKPC00068', 'BREAK ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 417, 414, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(71, 'GKPC00069', 'BUMPER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(72, 'GKPC00070', 'BUSCATE & NET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 417, 414, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(73, 'GKPC00071', 'BUSH FOR CLAMP', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 210, 207, 4, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(74, 'GKPC00072', 'CHASSIS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(75, 'GKPC00073', 'CHARGER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(76, 'GKPC00074', 'COVER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 3, 0, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(77, 'GKPC00075', 'DIFFENTIAL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(78, 'GKPC00076', 'DRIVER BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(79, 'GKPC00077', 'FIRSTAID BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(80, 'GKPC00078', 'FOOT MAT (FRONT + BACK)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 417, 414, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(81, 'GKPC00079', 'GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 195, 192, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(82, 'GKPC00080', 'GLASS STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(83, 'GKPC00081', 'GLASS STAND', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(84, 'GKPC00082', 'KAMANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 417, 414, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(85, 'GKPC00083', 'LEG GUARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(86, 'GKPC00084', 'METALICK COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 417, 414, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(87, 'GKPC00085', 'MIDDLE BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(88, 'GKPC00086', 'MIDLE BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(89, 'GKPC00087', 'MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(90, 'GKPC00088', 'FOOT PLATE (RIGHT + LEFT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 417, 414, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(91, 'GKPC00089', 'REAR BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(92, 'GKPC00090', 'ROOF', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(93, 'GKPC00091', 'ROOF STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(94, 'GKPC00092', 'RUBBER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(95, 'GKPC00093', 'SEAT CLAMP BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 190, 187, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(96, 'GKPC00094', 'SEAT CLAMP SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(97, 'GKPC00095', 'SEAT SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2500, 1038, 1035, 5, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(98, 'GKPC00096', 'SHOKAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 417, 414, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(99, 'GKPC00097', 'SIDE STAND BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 304, 301, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(100, 'GKPC00098', 'SIDE STAND SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 369, 366, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(101, 'GKPC00099', 'STPNY COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(102, 'GKPC00100', 'PADANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(103, 'GKPC00101', 'TUBE / TYRE / RIM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 831, 828, 4, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(104, 'GKPC00102', 'BATTERY CLAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 409, 609, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', 'admin'),
(105, 'GKPC00103', 'LEG GUARD SUPORT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 207, 'admin', '1/7/2017 0:12', ''),
(106, 'GKPC00104', 'BUSH FOR CLAMP', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 3, 0, 4, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(107, 'GKPC00105', 'REAR SHOCKER (SMALL)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 83, 80, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '12/28/2016 15:56', ''),
(108, 'GKPC00106', 'FRONT BREAK DAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(109, 'GKPC00107', 'FRONT BREAK DAM COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(110, 'GKPC00108', 'MAIN WIRING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(111, 'GKPC00109', 'DIGITAL MITER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(112, 'GKPC00110', 'HAND BREAK SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(113, 'GKPC00111', 'PARKING BREAK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(114, 'GKPC00112', 'HAIDALIC CAN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(115, 'GKPC00113', 'NUMBER PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(116, 'GKPC00114', 'LOOKING GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(117, 'GKPC00115', 'CONTOLAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(118, 'GKPC00116', 'INDICATOR COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(119, 'GKPC00117', 'LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 4000, 566, 562, 8, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 552, 'admin', '1/6/2017 23:39', ''),
(120, 'GKPC00118', 'BOTTLE CAP ', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(121, 'GKPC00119', 'BACK HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 662, 642, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '2017-02-14 12:59:10 AM', 'warehouse1'),
(122, 'GKPC00120', 'SENSOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(123, 'GKPC00121', 'PASSENGER HANDEL ', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 276, 'admin', '1/6/2017 23:39', ''),
(124, 'GKPC00122', 'EXCELETER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(125, 'GKPC00123', 'RIGHT & LEFT SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(126, 'GKPC00124', 'KEY LOCK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(127, 'GKPC00125', 'KEY', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(128, 'GKPC00126', 'NUMBER PLATE LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(129, 'GKPC00127', 'CONVERTER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(130, 'GKPC00128', 'MCP', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(131, 'GKPC00129', 'HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(132, 'GKPC00130', 'HOREN COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(133, 'GKPC00131', 'ROPF LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(134, 'GKPC00132', 'ROPF LIGHT SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(135, 'GKPC00133', 'HANDEL LOCK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(136, 'GKPC00134', 'CHARGER SOKET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(137, 'GKPC00135', 'FLASHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(138, 'GKPC00136', 'YELLOW JUNCTION BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(139, 'GKPC00137', 'BATTERY CLAM STICK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 276, 'admin', '1/6/2017 23:39', ''),
(140, 'GKPC00138', 'WIRING COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(141, 'GKPC00139', 'BREAK PADEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(142, 'GKPC00140', 'HANDEL COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(143, 'GKPC00141', 'BREAK SPRING BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(144, 'GKPC00142', 'BREAK SPRING SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(145, 'GKPC00143', 'BREAK SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(146, 'GKPC00144', 'BLANCING ROD CLAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 276, 'admin', '1/6/2017 23:39', ''),
(147, 'GKPC00145', 'SOUND SYSTEM SPEAKER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(148, 'GKPC00146', 'SOUND SYSTEM MACHINE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(149, 'GKPC00147', 'U - BOLT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 276, 'admin', '1/6/2017 23:39', ''),
(150, 'GKPC00148', 'U - BOLT PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(151, 'GKPC00149', 'U - BOLT JURLA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(152, 'GKPC00150', 'SOCAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(153, 'GKPC00151', 'HANDEL TEE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(154, 'GKPC00152', 'HANDEL PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(155, 'GKPC00153', 'BALANCING ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(156, 'GKPC00154', 'HANDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(157, 'GKPC00155', 'HANDEL ROD BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(158, 'GKPC00156', 'HANDEL ROD SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(159, 'GKPC00157', 'WIPER MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(160, 'GKPC00158', 'WIPER SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(161, 'GKPC00159', 'BACK LIGHT COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(162, 'GKPC00160', 'FRONT MOTGARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(163, 'GKPC00161', 'FRONT EXCEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(164, 'GKPC00162', 'HANDEL COVER BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(165, 'GKPC00163', 'HANDEL COVER SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(166, 'GKPC00164', 'HANDEL TEE COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 69, 'admin', '1/6/2017 23:39', ''),
(167, 'GKPC00165', 'WATER GARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 138, 'admin', '1/6/2017 23:39', ''),
(168, 'GKPC00166', 'DRIVER HANDEL COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7-2', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 276, 'admin', '1/6/2017 23:39', ''),
(169, 'GKPC00167', 'WIPER STICK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(170, 'GKPC00168', 'DIGITAL MITER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(171, 'GKPC00169', 'CONTOLAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', '');
INSERT INTO `materiel_master` (`id`, `materiel_id`, `materialname`, `wt`, `buypr`, `salespr`, `buyprcrnt`, `buyprprev`, `cnfpr`, `cnfprper`, `distpr`, `distprper`, `subdistpr`, `subdistprper`, `retailpr`, `retailprper`, `reorderlevel`, `qnty`, `openQnty`, `unit`, `doe`, `lastentry`, `status`, `mName`, `partsName`, `partsCode`, `description`, `vat`, `Sales`, `Road`, `cst`, `excise`, `custom`, `sellerpr`, `taxinfo`, `others`, `pono`, `purchaseupdte`, `tax`, `purchsecrtd`, `specification`, `reOrdering`, `minStk`, `crtd`, `lastupdt`, `stockentryupdt`) VALUES
(172, 'GKPC00170', 'CONVERTER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(173, 'GKPC00171', 'HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(174, 'GKPC00172', 'MAIN WIRING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(175, 'GKPC00173', 'MUSIC SYSTEM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(176, 'GKPC00174', 'HAND BREAK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(177, 'GKPC00175', 'STARING HANDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(178, 'GKPC00176', 'BACK LIGHT COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(179, 'GKPC00177', 'FRONT LIGHT COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(180, 'GKPC00178', 'HANDEL TEE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(181, 'GKPC00179', 'HANDEL TEE PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(182, 'GKPC00180', 'BREAK PADDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(183, 'GKPC00181', 'FRONT ALOY DAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(184, 'GKPC00182', 'HEAD LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(185, 'GKPC00183', 'SMALL BREAK ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(186, 'GKPC00184', 'FRONT AXCEL ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(187, 'GKPC00185', 'SENSOR LOCK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(188, 'GKPC00186', 'PASSENGER HANDEL ', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(189, 'GKPC00187', 'PARKING BREAK WIRE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(190, 'GKPC00188', 'U - BOLT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(191, 'GKPC00189', 'U - BOLT PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(192, 'GKPC00190', 'JHOLLA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(193, 'GKPC00191', 'KAMANI JHOLLA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(194, 'GKPC00192', 'EXSELLETER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(195, 'GKPC00193', 'MOTHA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(196, 'GKPC00194', 'BREAK SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(197, 'GKPC00195', 'FRONT HANDEL LOOKING GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(198, 'GKPC00196', 'WIPER MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(199, 'GKPC00197', 'HANDEL COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(200, 'GKPC00198', 'BREAK PADDEL PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(201, 'GKPC00199', 'YELLOW JANSON BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(202, 'GKPC00200', 'BACK INDICATOR SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 3000, 0, 0, 6, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(203, 'GKPC00201', 'FRONT INDICATOR SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(204, 'GKPC00202', 'LEFT + RIGHT AS A SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(205, 'GKPC00203', 'BACK HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', 'admin'),
(206, 'GKPC00204', 'ROOF LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(207, 'GKPC00205', 'FRONT BASKET CLAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(208, 'GKPC00206', 'SOCAR GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(209, 'GKPC00207', 'MOTGARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(210, 'GKPC00208', 'DRIVER HANDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(211, 'GKPC00209', 'WATER GARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(212, 'GKPC00210', 'CHARGER SOKET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(213, 'GKPC00211', 'HANDEL BEARING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(214, 'GKPC00212', 'KEY SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(215, 'GKPC00213', 'DRIVER SIT SUPORT WIRE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(216, 'GKPC00214', 'BACK SOCAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(217, 'GKPC00215', 'KAMANI BOUSH SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 6000, 0, 0, 12, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(218, 'GKPC00216', 'NUT BOLT KIT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(219, 'GKPC00217', 'HANDEL BEARING COLOUR NUT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(220, 'GKPC00218', 'BREAK SWITCH SPRING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(221, 'GKPC00219', 'BREAK LEAVER GUTKKA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(222, 'GKPC00220', 'FLASHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(223, 'GKPC00221', 'SIT CLAM BUSH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(224, 'GKPC00222', 'ROOF LIGHT SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, '', '', ''),
(225, 'GKPC00223', 'WIPER STRICK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(226, 'GKPC00224', 'WIPER MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 210, 207, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(227, 'GKPC00225', 'FRONT BREAK SHOUSE PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 230, 227, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(228, 'GKPC00226', 'NUMBER PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 517, 514, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(229, 'GKPC00227', 'FRONT BREAK WIRE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(230, 'GKPC00228', 'HANDEL BEARING COLOUR NUT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(231, 'GKPC00229', 'BREAK LIVER GUTKA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(232, 'GKPC00230', 'FLASHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(233, 'GKPC00231', 'SIT CLAM BUSH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(234, 'GKPC00232', 'ROOF LIGHT SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(235, 'GKPC00233', 'EXSELLETER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(236, 'GKPC00234', 'MOTHA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(237, 'GKPC00235', 'BREAK SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 3, 0, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(238, 'GKPC00236', 'FRONT HANDEL LOOKING GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 3, 0, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(239, 'GKPC00237', 'BREAK PADDEL PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(240, 'GKPC00238', 'YELLOW JANSON BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(241, 'GKPC00239', 'BACK INDICATOR SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 3000, 3, 0, 6, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(242, 'GKPC00240', 'FRONT INDICATOR SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 3, 0, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(243, 'GKPC00241', 'LEFT + RIGHT AS A SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 3, 0, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(244, 'GKPC00242', 'BACK HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, -17, -17, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '2017-02-13 11:52:30 PM', 'admin'),
(245, 'GKPC00243', 'ROOF LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(246, 'GKPC00244', 'FRONT BASKET CLAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(247, 'GKPC00245', 'SOCAR GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(248, 'GKPC00246', 'MOTGARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(249, 'GKPC00247', 'DRIVER HANDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(250, 'GKPC00248', 'WATER GARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(251, 'GKPC00249', 'CHARGER SOKET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(252, 'GKPC00250', 'HANDEL BEARING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 3, 0, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(253, 'GKPC00251', 'KEY SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(254, 'GKPC00252', 'DRIVER SIT SUPORT WIRE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(255, 'GKPC00253', 'BACK SOCAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(256, 'GKPC00254', 'KAMANI BOUSH SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 6000, 0, 0, 12, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(257, 'GKPC00255', 'NUT BOLT KIT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(258, 'GKPC00256', 'DIGITAL MITER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 3, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(259, 'GKPC00257', 'CONTOLAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(260, 'GKPC00258', 'CONVERTER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(261, 'GKPC00259', 'HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(262, 'GKPC00260', 'MAIN WIRING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(263, 'GKPC00261', 'MUSIC SYSTEM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(264, 'GKPC00262', 'HAND BREAK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(265, 'GKPC00263', 'STARING HANDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(266, 'GKPC00264', 'BACK LIGHT COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(267, 'GKPC00265', 'HANDEL TEE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(268, 'GKPC00266', 'HANDEL TEE PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(269, 'GKPC00267', 'BREAK PADDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(270, 'GKPC00268', 'FRONT ALOY DAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(271, 'GKPC00269', 'HEAD LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(272, 'GKPC00270', 'BREAK ROD SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(273, 'GKPC00271', 'FRONT AXCEL ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(274, 'GKPC00272', 'SENSOR LOCK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(275, 'GKPC00273', 'PASSENGER HANDEL ', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(276, 'GKPC00274', 'PARKING BREAK WIRE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(277, 'GKPC00275', 'U - BOLT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(278, 'GKPC00276', 'U - BOLT PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(279, 'GKPC00277', 'KAMANI JHOLLA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(280, 'GKPC00278', 'HANDEL COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', ''),
(281, 'GKPC00279', 'BATTERY', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 406, 506, 2, '', '', 0, 'ER INDIA G-7S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', 'admin'),
(282, 'GKPC00280', 'BATTERY', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 406, 406, 2, '', '', 0, 'ER INDIA K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '', '', '0.00', '', '', '', 0, 'admin', '1/7/2017 0:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `materiel_master02012017`
--

CREATE TABLE `materiel_master02012017` (
  `id` int(11) NOT NULL,
  `materiel_id` varchar(255) NOT NULL,
  `materialname` varchar(255) NOT NULL,
  `wt` varchar(255) NOT NULL,
  `buypr` decimal(11,2) NOT NULL,
  `salespr` decimal(11,2) NOT NULL,
  `buyprcrnt` decimal(20,2) NOT NULL,
  `buyprprev` decimal(20,2) NOT NULL,
  `cnfpr` decimal(20,2) NOT NULL,
  `cnfprper` decimal(20,2) NOT NULL,
  `distpr` decimal(20,2) NOT NULL,
  `distprper` decimal(20,2) NOT NULL,
  `subdistpr` decimal(20,2) NOT NULL,
  `subdistprper` decimal(20,2) NOT NULL,
  `retailpr` decimal(20,2) NOT NULL,
  `retailprper` decimal(20,2) NOT NULL,
  `reorderlevel` int(11) NOT NULL,
  `qnty` int(20) NOT NULL,
  `openQnty` int(20) NOT NULL,
  `unit` int(20) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `lastentry` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `mName` varchar(255) NOT NULL,
  `partsName` varchar(255) NOT NULL,
  `partsCode` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `vat` float NOT NULL,
  `Sales` float NOT NULL,
  `Road` float NOT NULL,
  `cst` float NOT NULL,
  `excise` float NOT NULL,
  `custom` float NOT NULL,
  `specification` varchar(255) NOT NULL,
  `reOrdering` varchar(255) NOT NULL,
  `minStk` int(20) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `lastupdt` varchar(255) NOT NULL,
  `stockentryupdt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materiel_master02012017`
--

INSERT INTO `materiel_master02012017` (`id`, `materiel_id`, `materialname`, `wt`, `buypr`, `salespr`, `buyprcrnt`, `buyprprev`, `cnfpr`, `cnfprper`, `distpr`, `distprper`, `subdistpr`, `subdistprper`, `retailpr`, `retailprper`, `reorderlevel`, `qnty`, `openQnty`, `unit`, `doe`, `lastentry`, `status`, `mName`, `partsName`, `partsCode`, `description`, `vat`, `Sales`, `Road`, `cst`, `excise`, `custom`, `specification`, `reOrdering`, `minStk`, `crtd`, `lastupdt`, `stockentryupdt`) VALUES
(3, 'GK/PC/16-17/1', 'BACK SET BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 59, 59, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 59, 'admin', '2016-12-29 12:23:03 PM', ''),
(4, 'GK/PC/16-17/4', 'BOX COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 68, 68, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 68, 'admin', '2016-12-29 12:23:03 PM', ''),
(5, 'GK/PC/16-17/5', 'BAG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(6, 'GK/PC/16-17/6', 'BASKET BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(7, 'GK/PC/16-17/7', 'CHARGER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(8, 'GK/PC/16-17/8', 'CHASSIS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(9, 'GK/PC/16-17/9', 'CLAMP SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(10, 'GK/PC/16-17/10', 'COVER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(11, 'GK/PC/16-17/11', 'DIFFENTIAL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(12, 'GK/PC/16-17/12', 'DRIVER SET BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', 'FRONT BREAK DAM, FRONT BREAK DAM COVER,  MAIN WIRING, DIGITAL MITER,  HAND BREAK SET, PACKING BREAK, ', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(13, 'GK/PC/16-17/13', 'FASTAID BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(14, 'GK/PC/16-17/14', 'FOOT MAT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2016-12-29 12:23:03 PM', ''),
(15, 'GK/PC/16-17/15', 'GLASS SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 68, 68, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 68, 'admin', '2016-12-29 12:23:03 PM', ''),
(16, 'GK/PC/16-17/16', 'KAMANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2016-12-29 12:23:03 PM', ''),
(17, 'GK/PC/16-17/17', 'LEG GURD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(18, 'GK/PC/16-17/18', 'MIDDLE FOOT REST SHEET / ALUMUNIM SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2016-12-29 12:23:03 PM', ''),
(19, 'GK/PC/16-17/19', 'MIDDLE SET BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(20, 'GK/PC/16-17/20', 'MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(21, 'GK/PC/16-17/21', 'RIM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 276, 'admin', '2016-12-29 12:23:03 PM', ''),
(22, 'GK/PC/16-17/22', 'ROOF', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 71, 71, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 71, 'admin', '2016-12-29 12:23:03 PM', ''),
(23, 'GK/PC/16-17/23', 'ROOF STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(24, 'GK/PC/16-17/24', 'SEAT SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(25, 'GK/PC/16-17/25', 'SOUND PLATE STAND', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(26, 'GK/PC/16-17/26', 'STAPNY COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(27, 'GK/PC/16-17/27', 'STICKER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 20, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(28, 'GK/PC/16-17/28', 'TYRE TUBE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(29, 'GK/PC/16-17/29', 'TOTO COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 30, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(30, 'GK/PC/16-17/30', 'HEAD LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 40, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(31, 'GK/PC/16-17/31', 'BACK BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 506, 506, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:30 PM', ''),
(32, 'GK/PC/16-17/32', 'BOX COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 756, 556, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:30 PM', ''),
(33, 'GK/PC/16-17/33', 'BOX PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:30 PM', ''),
(34, 'GK/PC/16-17/34', 'BREAK ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-30 02:37:31 PM', ''),
(35, 'GK/PC/16-17/35', 'BUMPER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(36, 'GK/PC/16-17/36', 'BASKET & NET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-30 02:37:31 PM', ''),
(37, 'GK/PC/16-17/37', 'CHACHISE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(38, 'GK/PC/16-17/38', 'CHARGER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(39, 'GK/PC/16-17/39', 'COVER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-30 02:37:31 PM', ''),
(40, 'GK/PC/16-17/40', 'DIFFENTIAL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(41, 'GK/PC/16-17/41', 'DRIVER BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(42, 'GK/PC/16-17/42', 'FIRSTAID BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-30 02:37:31 PM', ''),
(43, 'GK/PC/16-17/43', 'FOOT MAT (RIGHT + LEFT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-30 02:37:31 PM', ''),
(44, 'GK/PC/16-17/44', 'GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 228, 228, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 228, 'admin', '2016-12-30 02:37:31 PM', ''),
(45, 'GK/PC/16-17/45', 'GLASS STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(46, 'GK/PC/16-17/46', 'GLASS STAND', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(47, 'GK/PC/16-17/47', 'KAMANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-30 02:37:31 PM', ''),
(48, 'GK/PC/16-17/48', 'LEG GUARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(49, 'GK/PC/16-17/49', 'METALICK COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-30 02:37:31 PM', ''),
(50, 'GK/PC/16-17/50', 'MIDDLE BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(51, 'GK/PC/16-17/51', 'MIDDLE BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(52, 'GK/PC/16-17/52', 'MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 268, 268, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 268, 'admin', '2016-12-30 02:37:31 PM', ''),
(53, 'GK/PC/16-17/53', 'REAR BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(54, 'GK/PC/16-17/54', 'ROOF', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(55, 'GK/PC/16-17/55', 'ROOF STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(56, 'GK/PC/16-17/56', 'RUBBER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(57, 'GK/PC/16-17/57', 'SEAT CLAMP BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(58, 'GK/PC/16-17/58', 'SEAT CLAMP SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:32 PM', ''),
(59, 'GK/PC/16-17/59', 'SEAT SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2500, 0, 0, 5, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 1280, 'admin', '2016-12-30 02:37:32 PM', ''),
(60, 'GK/PC/16-17/60', 'SHOKER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-30 02:37:32 PM', ''),
(61, 'GK/PC/16-17/61', 'SIDE STAND BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-30 02:37:32 PM', ''),
(62, 'GK/PC/16-17/62', 'SIDE STAND SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-30 02:37:32 PM', ''),
(63, 'GK/PC/16-17/63', 'STEPY COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-30 02:37:32 PM', ''),
(64, 'GK/PC/16-17/64', 'TUBE / TYRE / RIM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 2488, 'admin', '2016-12-30 02:37:32 PM', ''),
(65, 'GK/PC/16-17/65', 'BAG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-30 02:37:32 PM', ''),
(66, 'GK/PC/16-17/66', 'BACK BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 227, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:00 PM', ''),
(67, 'GK/PC/16-17/67', 'BAG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 20, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 04:49:00 PM', ''),
(68, 'GK/PC/16-17/68', 'BOX COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 227, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:00 PM', ''),
(69, 'GK/PC/16-17/69', 'DRIVER HANDEL (LEFT + RIGHT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 434, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2016-12-29 04:49:00 PM', ''),
(70, 'GK/PC/16-17/70', 'BREAK ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 434, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2016-12-29 04:49:00 PM', ''),
(71, 'GK/PC/16-17/71', 'BUMPER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 227, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:01 PM', ''),
(72, 'GK/PC/16-17/72', 'BUSCATE & NET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 434, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2016-12-29 04:49:01 PM', ''),
(73, 'GK/PC/16-17/73', 'BUSH FOR CLAMP', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 30, 0, 4, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 04:49:01 PM', ''),
(74, 'GK/PC/16-17/74', 'CHACHISES', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 227, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:01 PM', ''),
(75, 'GK/PC/16-17/75', 'CHARGER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 237, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:01 PM', ''),
(76, 'GK/PC/16-17/76', 'COVER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 50, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 04:49:01 PM', ''),
(77, 'GK/PC/16-17/77', 'DIFFENTIAL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 257, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 206, 'admin', '2016-12-29 04:49:01 PM', ''),
(78, 'GK/PC/16-17/78', 'DRIVER BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 267, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:01 PM', ''),
(79, 'GK/PC/16-17/79', 'FIRSTAID BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 70, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-29 04:49:01 PM', ''),
(80, 'GK/PC/16-17/80', 'FOOT MAT (FRONT + BACK)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 494, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2016-12-29 04:49:01 PM', ''),
(81, 'GK/PC/16-17/81', 'GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 282, 192, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 192, 'admin', '2016-12-29 04:49:01 PM', ''),
(82, 'GK/PC/16-17/82', 'GLASS STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 297, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:02 PM', ''),
(83, 'GK/PC/16-17/83', 'GLASS STAND', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 297, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:02 PM', ''),
(84, 'GK/PC/16-17/84', 'KAMANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 504, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2016-12-29 04:49:02 PM', ''),
(85, 'GK/PC/16-17/85', 'LEG GUARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 297, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:02 PM', ''),
(86, 'GK/PC/16-17/86', 'METALICK COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 504, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2016-12-29 04:49:02 PM', ''),
(87, 'GK/PC/16-17/87', 'MIDDLE BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 297, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:02 PM', ''),
(88, 'GK/PC/16-17/88', 'MIDLE BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 257, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(89, 'GK/PC/16-17/89', 'MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 257, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(90, 'GK/PC/16-17/90', 'FOOT PLATE (RIGHT + LEFT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 464, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2016-12-29 04:49:03 PM', ''),
(91, 'GK/PC/16-17/91', 'REAR BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 257, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(92, 'GK/PC/16-17/92', 'ROOF', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 267, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(93, 'GK/PC/16-17/93', 'ROOF STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 277, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(94, 'GK/PC/16-17/94', 'RUBBER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 287, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(95, 'GK/PC/16-17/95', 'SEAT CLAMP BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 277, 187, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 187, 'admin', '2016-12-29 04:49:03 PM', ''),
(96, 'GK/PC/16-17/96', 'SEAT CLAMP SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 257, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(97, 'GK/PC/16-17/97', 'SEAT SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2500, 1105, 1035, 5, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 828, 'admin', '2016-12-29 04:49:03 PM', ''),
(98, 'GK/PC/16-17/98', 'SHOKAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 464, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2016-12-29 04:49:03 PM', ''),
(99, 'GK/PC/16-17/99', 'SIDE STAND BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 381, 301, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 602, 'admin', '2016-12-29 04:49:03 PM', ''),
(100, 'GK/PC/16-17/100', 'SIDE STAND SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 456, 366, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 732, 'admin', '2016-12-29 04:49:03 PM', ''),
(101, 'GK/PC/16-17/101', 'STPNY COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 222, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(102, 'GK/PC/16-17/102', 'PADANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 15, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 215, 'admin', '2016-12-29 04:49:03 PM', ''),
(103, 'GK/PC/16-17/103', 'TUBE / TYRE / RIM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 838, 828, 4, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 828, 'admin', '2016-12-29 04:49:04 PM', ''),
(104, 'GK/PC/16-17/104', 'BATTERY CLAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 416, 406, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 406, 'admin', '2016-12-29 04:49:04 PM', ''),
(105, 'GK/PC/16-17/105', 'LEG GUARD SUPORT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 232, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2016-12-29 04:49:04 PM', ''),
(106, 'GK/PC/16-17/106', 'BUSH FOR CLAMP', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-30 02:37:32 PM', ''),
(107, 'GK/PC/16-17/107', 'REAR SHOCKER (SMALL)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 80, 80, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 80, 'admin', '2016-12-30 02:37:32 PM', ''),
(108, 'GK/PC/16-17/2', 'BACK SET BOX2', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 59, 59, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 59, 'admin', '2016-12-29 12:23:03 PM', ''),
(109, 'GK/PC/16-17/3', 'HANDLE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 59, 59, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 59, 'admin', '2016-12-29 12:23:03 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `materiel_master02012017online`
--

CREATE TABLE `materiel_master02012017online` (
  `id` int(11) NOT NULL,
  `materiel_id` varchar(255) NOT NULL,
  `materialname` varchar(255) NOT NULL,
  `wt` varchar(255) NOT NULL,
  `buypr` decimal(11,2) NOT NULL,
  `salespr` decimal(11,2) NOT NULL,
  `buyprcrnt` decimal(20,2) NOT NULL,
  `buyprprev` decimal(20,2) NOT NULL,
  `cnfpr` decimal(20,2) NOT NULL,
  `cnfprper` decimal(20,2) NOT NULL,
  `distpr` decimal(20,2) NOT NULL,
  `distprper` decimal(20,2) NOT NULL,
  `subdistpr` decimal(20,2) NOT NULL,
  `subdistprper` decimal(20,2) NOT NULL,
  `retailpr` decimal(20,2) NOT NULL,
  `retailprper` decimal(20,2) NOT NULL,
  `reorderlevel` int(11) NOT NULL,
  `qnty` int(20) NOT NULL,
  `openQnty` int(20) NOT NULL,
  `unit` int(20) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `lastentry` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `mName` varchar(255) NOT NULL,
  `partsName` varchar(255) NOT NULL,
  `partsCode` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `vat` float NOT NULL,
  `Sales` float NOT NULL,
  `Road` float NOT NULL,
  `cst` float NOT NULL,
  `excise` float NOT NULL,
  `custom` float NOT NULL,
  `specification` varchar(255) NOT NULL,
  `reOrdering` varchar(255) NOT NULL,
  `minStk` int(20) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `lastupdt` varchar(255) NOT NULL,
  `stockentryupdt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materiel_master02012017online`
--

INSERT INTO `materiel_master02012017online` (`id`, `materiel_id`, `materialname`, `wt`, `buypr`, `salespr`, `buyprcrnt`, `buyprprev`, `cnfpr`, `cnfprper`, `distpr`, `distprper`, `subdistpr`, `subdistprper`, `retailpr`, `retailprper`, `reorderlevel`, `qnty`, `openQnty`, `unit`, `doe`, `lastentry`, `status`, `mName`, `partsName`, `partsCode`, `description`, `vat`, `Sales`, `Road`, `cst`, `excise`, `custom`, `specification`, `reOrdering`, `minStk`, `crtd`, `lastupdt`, `stockentryupdt`) VALUES
(3, 'GK/PC/16-17/1', 'BACK SET BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 59, 59, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 59, 'admin', '2017-01-02 04:27:10 PM', ''),
(4, 'GK/PC/16-17/4', 'BOX COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 68, 68, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 68, 'admin', '2017-01-02 04:27:10 PM', ''),
(5, 'GK/PC/16-17/5', 'BAG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 55, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:27:10 PM', ''),
(6, 'GK/PC/16-17/6', 'BASKET BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:10 PM', ''),
(7, 'GK/PC/16-17/7', 'CHARGER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:27:10 PM', ''),
(8, 'GK/PC/16-17/8', 'CHASSIS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:10 PM', ''),
(9, 'GK/PC/16-17/9', 'CLAMP SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:10 PM', ''),
(10, 'GK/PC/16-17/10', 'COVER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:27:10 PM', ''),
(11, 'GK/PC/16-17/11', 'DIFFENTIAL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:10 PM', ''),
(12, 'GK/PC/16-17/12', 'DRIVER SET BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', 'FRONT BREAK DAM, FRONT BREAK DAM COVER,  MAIN WIRING, DIGITAL MITER,  HAND BREAK SET, PACKING BREAK, ', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:10 PM', ''),
(13, 'GK/PC/16-17/13', 'FASTAID BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:27:10 PM', ''),
(14, 'GK/PC/16-17/14', 'FOOT MAT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:10 PM', ''),
(15, 'GK/PC/16-17/15', 'GLASS SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 68, 68, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 68, 'admin', '2017-01-02 04:27:10 PM', ''),
(16, 'GK/PC/16-17/16', 'KAMANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:10 PM', ''),
(17, 'GK/PC/16-17/17', 'LEG GURD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:10 PM', ''),
(18, 'GK/PC/16-17/18', 'MIDDLE FOOT REST SHEET / ALUMUNIM SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:10 PM', ''),
(19, 'GK/PC/16-17/19', 'MIDDLE SET BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:10 PM', ''),
(20, 'GK/PC/16-17/20', 'MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:10 PM', ''),
(21, 'GK/PC/16-17/21', 'RIM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 276, 'admin', '2017-01-02 04:27:10 PM', ''),
(22, 'GK/PC/16-17/22', 'ROOF', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 71, 71, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 71, 'admin', '2017-01-02 04:27:10 PM', ''),
(23, 'GK/PC/16-17/23', 'ROOF STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:10 PM', ''),
(24, 'GK/PC/16-17/24', 'SEAT SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:10 PM', ''),
(25, 'GK/PC/16-17/25', 'SOUND PLATE STAND', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:10 PM', ''),
(26, 'GK/PC/16-17/26', 'STAPNY COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:27:10 PM', ''),
(27, 'GK/PC/16-17/27', 'STICKER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 20, 20, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:27:10 PM', ''),
(28, 'GK/PC/16-17/28', 'TYRE TUBE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:27:11 PM', ''),
(29, 'GK/PC/16-17/29', 'TOTO COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 30, 30, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:27:11 PM', ''),
(30, 'GK/PC/16-17/30', 'HEAD LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 40, 40, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:27:11 PM', ''),
(31, 'GK/PC/16-17/31', 'BACK BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(32, 'GK/PC/16-17/32', 'BOX COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(33, 'GK/PC/16-17/33', 'BOX PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(34, 'GK/PC/16-17/34', 'BREAK ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-28 03:56:23 PM', ''),
(35, 'GK/PC/16-17/35', 'BUMPER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(36, 'GK/PC/16-17/36', 'BASKET & NET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-28 03:56:23 PM', ''),
(37, 'GK/PC/16-17/37', 'CHACHISE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(38, 'GK/PC/16-17/38', 'CHARGER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(39, 'GK/PC/16-17/39', 'COVER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-28 03:56:23 PM', ''),
(40, 'GK/PC/16-17/40', 'DIFFENTIAL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(41, 'GK/PC/16-17/41', 'DRIVER BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(42, 'GK/PC/16-17/42', 'FIRSTAID BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-28 03:56:23 PM', ''),
(43, 'GK/PC/16-17/43', 'FOOT MAT (RIGHT + LEFT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-28 03:56:23 PM', ''),
(44, 'GK/PC/16-17/44', 'GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 228, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 228, 'admin', '2016-12-28 03:56:23 PM', ''),
(45, 'GK/PC/16-17/45', 'GLASS STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(46, 'GK/PC/16-17/46', 'GLASS STAND', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(47, 'GK/PC/16-17/47', 'KAMANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-28 03:56:23 PM', ''),
(48, 'GK/PC/16-17/48', 'LEG GUARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(49, 'GK/PC/16-17/49', 'METALICK COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-28 03:56:23 PM', ''),
(50, 'GK/PC/16-17/50', 'MIDDLE BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(51, 'GK/PC/16-17/51', 'MIDDLE BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(52, 'GK/PC/16-17/52', 'MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 268, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 268, 'admin', '2016-12-28 03:56:23 PM', ''),
(53, 'GK/PC/16-17/53', 'REAR BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(54, 'GK/PC/16-17/54', 'ROOF', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:23 PM', ''),
(55, 'GK/PC/16-17/55', 'ROOF STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:24 PM', ''),
(56, 'GK/PC/16-17/56', 'RUBBER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:24 PM', ''),
(57, 'GK/PC/16-17/57', 'SEAT CLAMP BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:24 PM', ''),
(58, 'GK/PC/16-17/58', 'SEAT CLAMP SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:24 PM', ''),
(59, 'GK/PC/16-17/59', 'SEAT SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2500, 0, 0, 5, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 1280, 'admin', '2016-12-28 03:56:24 PM', ''),
(60, 'GK/PC/16-17/60', 'SHOKER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-28 03:56:24 PM', ''),
(61, 'GK/PC/16-17/61', 'SIDE STAND BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-28 03:56:24 PM', ''),
(62, 'GK/PC/16-17/62', 'SIDE STAND SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, 'admin', '2016-12-28 03:56:24 PM', ''),
(63, 'GK/PC/16-17/63', 'STEPY COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, 'admin', '2016-12-28 03:56:24 PM', ''),
(64, 'GK/PC/16-17/64', 'TUBE / TYRE / RIM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 2488, 'admin', '2016-12-28 03:56:24 PM', ''),
(65, 'GK/PC/16-17/65', 'BAG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-28 03:56:24 PM', ''),
(66, 'GK/PC/16-17/66', 'BACK BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:02:59 PM', ''),
(67, 'GK/PC/16-17/67', 'BAG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:02:59 PM', ''),
(68, 'GK/PC/16-17/68', 'BOX COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:02:59 PM', ''),
(69, 'GK/PC/16-17/69', 'DRIVER HANDEL (LEFT + RIGHT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 414, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2017-01-02 04:02:59 PM', ''),
(70, 'GK/PC/16-17/70', 'BREAK ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 414, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2017-01-02 04:02:59 PM', ''),
(71, 'GK/PC/16-17/71', 'BUMPER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:02:59 PM', ''),
(72, 'GK/PC/16-17/72', 'BUSCATE & NET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 414, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2017-01-02 04:02:59 PM', ''),
(73, 'GK/PC/16-17/73', 'BUSH FOR CLAMP', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:02:59 PM', ''),
(74, 'GK/PC/16-17/74', 'CHACHISES', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:02:59 PM', ''),
(75, 'GK/PC/16-17/75', 'CHARGER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:00 PM', ''),
(76, 'GK/PC/16-17/76', 'COVER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:00 PM', ''),
(77, 'GK/PC/16-17/77', 'DIFFENTIAL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 206, 'admin', '2017-01-02 04:03:00 PM', ''),
(78, 'GK/PC/16-17/78', 'DRIVER BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:00 PM', ''),
(79, 'GK/PC/16-17/79', 'FIRSTAID BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:00 PM', ''),
(80, 'GK/PC/16-17/80', 'FOOT MAT (FRONT + BACK)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 414, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2017-01-02 04:03:00 PM', ''),
(81, 'GK/PC/16-17/81', 'GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 192, 192, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 192, 'admin', '2017-01-02 04:03:00 PM', ''),
(82, 'GK/PC/16-17/82', 'GLASS STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:00 PM', ''),
(83, 'GK/PC/16-17/83', 'GLASS STAND', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:00 PM', ''),
(84, 'GK/PC/16-17/84', 'KAMANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 414, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2017-01-02 04:03:00 PM', ''),
(85, 'GK/PC/16-17/85', 'LEG GUARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:00 PM', ''),
(86, 'GK/PC/16-17/86', 'METALICK COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 414, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2017-01-02 04:03:00 PM', ''),
(87, 'GK/PC/16-17/87', 'MIDDLE BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:00 PM', ''),
(88, 'GK/PC/16-17/88', 'MIDLE BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:00 PM', ''),
(89, 'GK/PC/16-17/89', 'MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:00 PM', ''),
(90, 'GK/PC/16-17/90', 'FOOT PLATE (RIGHT + LEFT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 414, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2017-01-02 04:03:00 PM', ''),
(91, 'GK/PC/16-17/91', 'REAR BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:01 PM', ''),
(92, 'GK/PC/16-17/92', 'ROOF', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:01 PM', ''),
(93, 'GK/PC/16-17/93', 'ROOF STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:01 PM', ''),
(94, 'GK/PC/16-17/94', 'RUBBER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:01 PM', ''),
(95, 'GK/PC/16-17/95', 'SEAT CLAMP BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 187, 187, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 187, 'admin', '2017-01-02 04:03:01 PM', ''),
(96, 'GK/PC/16-17/96', 'SEAT CLAMP SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:01 PM', ''),
(97, 'GK/PC/16-17/97', 'SEAT SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2500, 1035, 1035, 5, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 828, 'admin', '2017-01-02 04:03:01 PM', ''),
(98, 'GK/PC/16-17/98', 'SHOKAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 414, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 414, 'admin', '2017-01-02 04:03:01 PM', ''),
(99, 'GK/PC/16-17/99', 'SIDE STAND BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 301, 301, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 602, 'admin', '2017-01-02 04:03:01 PM', ''),
(100, 'GK/PC/16-17/100', 'SIDE STAND SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 366, 366, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 732, 'admin', '2017-01-02 04:03:01 PM', ''),
(101, 'GK/PC/16-17/101', 'STPNY COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:01 PM', ''),
(102, 'GK/PC/16-17/102', 'PADANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 215, 'admin', '2017-01-02 04:03:01 PM', ''),
(103, 'GK/PC/16-17/103', 'TUBE / TYRE / RIM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 828, 828, 4, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 828, 'admin', '2017-01-02 04:03:01 PM', ''),
(104, 'GK/PC/16-17/104', 'BATTERY CLAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 406, 406, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 406, 'admin', '2017-01-02 04:03:01 PM', ''),
(105, 'GK/PC/16-17/105', 'LEG GUARD SUPORT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 207, 'admin', '2017-01-02 04:03:01 PM', ''),
(106, 'GK/PC/16-17/106', 'BUSH FOR CLAMP', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2016-12-28 03:56:24 PM', ''),
(107, 'GK/PC/16-17/107', 'REAR SHOCKER (SMALL)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 80, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 80, 'admin', '2016-12-28 03:56:24 PM', ''),
(108, 'GK/PC/16-17/108', 'FRONT BREAK DAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(109, 'GK/PC/16-17/109', 'FRONT BREAK DAM COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(110, 'GK/PC/16-17/110', 'MAIN WIRING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(111, 'GK/PC/16-17/111', 'DIGITAL MITER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(112, 'GK/PC/16-17/112', 'HAND BREAK SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(113, 'GK/PC/16-17/113', 'PARKING BREAK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(114, 'GK/PC/16-17/114', 'HAIDALIC CAN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(115, 'GK/PC/16-17/115', 'NUMBER PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:11 PM', ''),
(116, 'GK/PC/16-17/116', 'LOOKING GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:11 PM', ''),
(117, 'GK/PC/16-17/117', 'CONTOLAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(118, 'GK/PC/16-17/118', 'INDICATOR COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:11 PM', ''),
(119, 'GK/PC/16-17/119', 'LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 4000, 552, 552, 8, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 552, 'admin', '2017-01-02 04:27:11 PM', ''),
(120, 'GK/PC/16-17/120', 'BOTTLE CAP ', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(121, 'GK/PC/16-17/121', 'BACK HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(122, 'GK/PC/16-17/122', 'SENSOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(123, 'GK/PC/16-17/123', 'PASSENGER HANDEL ', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 276, 'admin', '2017-01-02 04:27:11 PM', ''),
(124, 'GK/PC/16-17/124', 'EXCELETER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(125, 'GK/PC/16-17/125', 'RIGHT & LEFT SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(126, 'GK/PC/16-17/126', 'KEY LOCK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:11 PM', ''),
(127, 'GK/PC/16-17/127', 'KEY', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:11 PM', ''),
(128, 'GK/PC/16-17/128', 'NUMBER PLATE LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(129, 'GK/PC/16-17/129', 'CONVERTER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(130, 'GK/PC/16-17/130', 'MCP', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(131, 'GK/PC/16-17/131', 'HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(132, 'GK/PC/16-17/132', 'HOREN COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:11 PM', ''),
(133, 'GK/PC/16-17/133', 'ROPF LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:11 PM', ''),
(134, 'GK/PC/16-17/134', 'ROPF LIGHT SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(135, 'GK/PC/16-17/135', 'HANDEL LOCK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(136, 'GK/PC/16-17/136', 'CHARGER SOKET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(137, 'GK/PC/16-17/137', 'FLASHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(138, 'GK/PC/16-17/138', 'YELLOW JUNCTION BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(139, 'GK/PC/16-17/139', 'BATTERY CLAM STICK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 276, 'admin', '2017-01-02 04:27:12 PM', ''),
(140, 'GK/PC/16-17/140', 'WIRING COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(141, 'GK/PC/16-17/141', 'BREAK PADEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(142, 'GK/PC/16-17/142', 'HANDEL COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(143, 'GK/PC/16-17/143', 'BREAK SPRING BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(144, 'GK/PC/16-17/144', 'BREAK SPRING SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(145, 'GK/PC/16-17/145', 'BREAK SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(146, 'GK/PC/16-17/146', 'BLANCING ROD CLAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 276, 'admin', '2017-01-02 04:27:12 PM', ''),
(147, 'GK/PC/16-17/147', 'SOUND SYSTEM SPEAKER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:12 PM', ''),
(148, 'GK/PC/16-17/148', 'SOUND SYSTEM MACHINE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(149, 'GK/PC/16-17/149', 'U - BOLT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 276, 'admin', '2017-01-02 04:27:12 PM', ''),
(150, 'GK/PC/16-17/150', 'U - BOLT PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:12 PM', ''),
(151, 'GK/PC/16-17/151', 'U - BOLT JURLA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:12 PM', ''),
(152, 'GK/PC/16-17/152', 'SOCAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:12 PM', ''),
(153, 'GK/PC/16-17/153', 'HANDEL TEE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(154, 'GK/PC/16-17/154', 'HANDEL PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(155, 'GK/PC/16-17/155', 'BALANCING ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:12 PM', ''),
(156, 'GK/PC/16-17/156', 'HANDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(157, 'GK/PC/16-17/157', 'HANDEL ROD BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:12 PM', ''),
(158, 'GK/PC/16-17/158', 'HANDEL ROD SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(159, 'GK/PC/16-17/159', 'WIPER MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(160, 'GK/PC/16-17/160', 'WIPER SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(161, 'GK/PC/16-17/161', 'BACK LIGHT COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:12 PM', ''),
(162, 'GK/PC/16-17/162', 'FRONT MOTGARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:12 PM', ''),
(163, 'GK/PC/16-17/163', 'FRONT EXCEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:13 PM', ''),
(164, 'GK/PC/16-17/164', 'HANDEL COVER BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:13 PM', ''),
(165, 'GK/PC/16-17/165', 'HANDEL COVER SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:13 PM', ''),
(166, 'GK/PC/16-17/166', 'HANDEL TEE COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 69, 'admin', '2017-01-02 04:27:13 PM', ''),
(167, 'GK/PC/16-17/167', 'WATER GARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 138, 'admin', '2017-01-02 04:27:13 PM', ''),
(168, 'GK/PC/16-17/168', 'DRIVER HANDEL COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 276, 'admin', '2017-01-02 04:27:13 PM', ''),
(169, 'GK/PC/16-17/169', 'WIPER STICK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(170, 'GK/PC/16-17/170', 'DIGITAL MITER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(171, 'GK/PC/16-17/171', 'CONTOLAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(172, 'GK/PC/16-17/172', 'CONVERTER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(173, 'GK/PC/16-17/173', 'HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(174, 'GK/PC/16-17/174', 'MAIN WIRING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(175, 'GK/PC/16-17/175', 'MUSIC SYSTEM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(176, 'GK/PC/16-17/176', 'HAND BREAK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(177, 'GK/PC/16-17/177', 'STARING HANDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(178, 'GK/PC/16-17/178', 'BACK LIGHT COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(179, 'GK/PC/16-17/179', 'FRONT LIGHT COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(180, 'GK/PC/16-17/180', 'HANDEL TEE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(181, 'GK/PC/16-17/181', 'HANDEL TEE PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(182, 'GK/PC/16-17/182', 'BREAK PADDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(183, 'GK/PC/16-17/183', 'FRONT ALOY DAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(184, 'GK/PC/16-17/184', 'HEAD LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(185, 'GK/PC/16-17/185', 'SMALL BREAK ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(186, 'GK/PC/16-17/186', 'FRONT AXCEL ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(187, 'GK/PC/16-17/187', 'SENSOR LOCK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(188, 'GK/PC/16-17/188', 'PASSENGER HANDEL ', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 1024, '', '', ''),
(189, 'GK/PC/16-17/189', 'PARKING BREAK WIRE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(190, 'GK/PC/16-17/190', 'U - BOLT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 1024, '', '', ''),
(191, 'GK/PC/16-17/191', 'U - BOLT PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(192, 'GK/PC/16-17/192', 'JHOLLA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(193, 'GK/PC/16-17/193', 'KAMANI JHOLLA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(194, 'GK/PC/16-17/194', 'EXSELLETER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(195, 'GK/PC/16-17/195', 'MOTHA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', '');
INSERT INTO `materiel_master02012017online` (`id`, `materiel_id`, `materialname`, `wt`, `buypr`, `salespr`, `buyprcrnt`, `buyprprev`, `cnfpr`, `cnfprper`, `distpr`, `distprper`, `subdistpr`, `subdistprper`, `retailpr`, `retailprper`, `reorderlevel`, `qnty`, `openQnty`, `unit`, `doe`, `lastentry`, `status`, `mName`, `partsName`, `partsCode`, `description`, `vat`, `Sales`, `Road`, `cst`, `excise`, `custom`, `specification`, `reOrdering`, `minStk`, `crtd`, `lastupdt`, `stockentryupdt`) VALUES
(196, 'GK/PC/16-17/196', 'BREAK SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(197, 'GK/PC/16-17/197', 'FRONT HANDEL LOOKING GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(198, 'GK/PC/16-17/198', 'WIPER MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(199, 'GK/PC/16-17/199', 'HANDEL COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(200, 'GK/PC/16-17/200', 'BREAK PADDEL PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(201, 'GK/PC/16-17/201', 'YELLOW JANSON BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(202, 'GK/PC/16-17/202', 'BACK INDICATOR SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 3000, 0, 0, 6, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 1536, '', '', ''),
(203, 'GK/PC/16-17/203', 'FRONT INDICATOR SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 1024, '', '', ''),
(204, 'GK/PC/16-17/204', 'LEFT + RIGHT AS A SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(205, 'GK/PC/16-17/205', 'BACK HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(206, 'GK/PC/16-17/206', 'ROOF LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(207, 'GK/PC/16-17/207', 'FRONT BASKET CLAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(208, 'GK/PC/16-17/208', 'SOCAR GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(209, 'GK/PC/16-17/209', 'MOTGARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(210, 'GK/PC/16-17/210', 'DRIVER HANDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(211, 'GK/PC/16-17/211', 'WATER GARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(212, 'GK/PC/16-17/212', 'CHARGER SOKET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(213, 'GK/PC/16-17/213', 'HANDEL BEARING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(214, 'GK/PC/16-17/214', 'KEY SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(215, 'GK/PC/16-17/215', 'DRIVER SIT SUPORT WIRE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(216, 'GK/PC/16-17/216', 'BACK SOCAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(217, 'GK/PC/16-17/217', 'KAMANI BOUSH SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 6000, 0, 0, 12, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 3072, '', '', ''),
(218, 'GK/PC/16-17/218', 'NUT BOLT KIT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(219, 'GK/PC/16-17/219', 'HANDEL BEARING COLOUR NUT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(220, 'GK/PC/16-17/220', 'BREAK SWITCH SPRING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 512, '', '', ''),
(221, 'GK/PC/16-17/221', 'BREAK LEAVER GUTKKA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(222, 'GK/PC/16-17/222', 'FLASHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 256, '', '', ''),
(223, 'GK/PC/16-17/223', 'SIT CLAM BUSH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 1024, '', '', ''),
(224, 'GK/PC/16-17/224', 'ROOF LIGHT SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, '', '', ''),
(225, 'GK/PC/16-17/225', 'WIPER STRICK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 280, 280, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:01 PM', ''),
(226, 'GK/PC/16-17/226', 'WIPER MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:01 PM', ''),
(227, 'GK/PC/16-17/227', 'FRONT BREAK SHOUSE PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:01 PM', ''),
(228, 'GK/PC/16-17/228', 'NUMBER PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:01 PM', ''),
(229, 'GK/PC/16-17/229', 'FRONT BREAK WIRE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:01 PM', ''),
(230, 'GK/PC/16-17/230', 'HANDEL BEARING COLOUR NUT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:01 PM', ''),
(231, 'GK/PC/16-17/231', 'BREAK LIVER GUTKA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:01 PM', ''),
(232, 'GK/PC/16-17/232', 'FLASHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 207, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:01 PM', ''),
(233, 'GK/PC/16-17/233', 'SIT CLAM BUSH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:01 PM', ''),
(234, 'GK/PC/16-17/234', 'ROOF LIGHT SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:01 PM', ''),
(235, 'GK/PC/16-17/235', 'EXSELLETER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(236, 'GK/PC/16-17/236', 'MOTHA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(237, 'GK/PC/16-17/237', 'BREAK SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(238, 'GK/PC/16-17/238', 'FRONT HANDEL LOOKING GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(239, 'GK/PC/16-17/239', 'BREAK PADDEL PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(240, 'GK/PC/16-17/240', 'YELLOW JANSON BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(241, 'GK/PC/16-17/241', 'BACK INDICATOR SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 3000, 0, 0, 6, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(242, 'GK/PC/16-17/242', 'FRONT INDICATOR SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(243, 'GK/PC/16-17/243', 'LEFT + RIGHT AS A SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(244, 'GK/PC/16-17/244', 'BACK HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(245, 'GK/PC/16-17/245', 'ROOF LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(246, 'GK/PC/16-17/246', 'FRONT BASKET CLAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(247, 'GK/PC/16-17/247', 'SOCAR GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(248, 'GK/PC/16-17/248', 'MOTGARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(249, 'GK/PC/16-17/249', 'DRIVER HANDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(250, 'GK/PC/16-17/250', 'WATER GARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(251, 'GK/PC/16-17/251', 'CHARGER SOKET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(252, 'GK/PC/16-17/252', 'HANDEL BEARING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(253, 'GK/PC/16-17/253', 'KEY SWITCH', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(254, 'GK/PC/16-17/254', 'DRIVER SIT SUPORT WIRE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(255, 'GK/PC/16-17/255', 'BACK SOCAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(256, 'GK/PC/16-17/256', 'KAMANI BOUSH SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 6000, 0, 0, 12, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(257, 'GK/PC/16-17/257', 'NUT BOLT KIT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(258, 'GK/PC/16-17/258', 'DIGITAL MITER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(259, 'GK/PC/16-17/259', 'CONTOLAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(260, 'GK/PC/16-17/260', 'CONVERTER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(261, 'GK/PC/16-17/261', 'HOREN', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(262, 'GK/PC/16-17/262', 'MAIN WIRING', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(263, 'GK/PC/16-17/263', 'MUSIC SYSTEM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(264, 'GK/PC/16-17/264', 'HAND BREAK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(265, 'GK/PC/16-17/265', 'STARING HANDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(266, 'GK/PC/16-17/266', 'BACK LIGHT COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(267, 'GK/PC/16-17/267', 'HANDEL TEE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(268, 'GK/PC/16-17/268', 'HANDEL TEE PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(269, 'GK/PC/16-17/269', 'BREAK PADDEL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(270, 'GK/PC/16-17/270', 'FRONT ALOY DAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:02 PM', ''),
(271, 'GK/PC/16-17/271', 'HEAD LIGHT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:03 PM', ''),
(272, 'GK/PC/16-17/272', 'BREAK ROD SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:03 PM', ''),
(273, 'GK/PC/16-17/273', 'FRONT AXCEL ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:03 PM', ''),
(274, 'GK/PC/16-17/274', 'SENSOR LOCK', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:03 PM', ''),
(275, 'GK/PC/16-17/275', 'PASSENGER HANDEL ', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:03 PM', ''),
(276, 'GK/PC/16-17/276', 'PARKING BREAK WIRE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:03 PM', ''),
(277, 'GK/PC/16-17/277', 'U - BOLT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:03 PM', ''),
(278, 'GK/PC/16-17/278', 'U - BOLT PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:03 PM', ''),
(279, 'GK/PC/16-17/279', 'KAMANI JHOLLA', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:03 PM', ''),
(280, 'GK/PC/16-17/280', 'HANDEL COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '', '', 0, 'admin', '2017-01-02 04:03:03 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `materiel_master05012017`
--

CREATE TABLE `materiel_master05012017` (
  `id` int(11) NOT NULL,
  `materiel_id` varchar(255) NOT NULL,
  `materialname` varchar(255) NOT NULL,
  `wt` varchar(255) NOT NULL,
  `buypr` decimal(11,2) NOT NULL,
  `salespr` decimal(11,2) NOT NULL,
  `buyprcrnt` decimal(20,2) NOT NULL,
  `buyprprev` decimal(20,2) NOT NULL,
  `cnfpr` decimal(20,2) NOT NULL,
  `cnfprper` decimal(20,2) NOT NULL,
  `distpr` decimal(20,2) NOT NULL,
  `distprper` decimal(20,2) NOT NULL,
  `subdistpr` decimal(20,2) NOT NULL,
  `subdistprper` decimal(20,2) NOT NULL,
  `retailpr` decimal(20,2) NOT NULL,
  `retailprper` decimal(20,2) NOT NULL,
  `reorderlevel` int(11) NOT NULL,
  `qnty` int(20) NOT NULL,
  `openQnty` int(20) NOT NULL,
  `unit` int(20) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `lastentry` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `mName` varchar(255) NOT NULL,
  `partsName` varchar(255) NOT NULL,
  `partsCode` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `vat` float NOT NULL,
  `Sales` float NOT NULL,
  `Road` float NOT NULL,
  `cst` float NOT NULL,
  `excise` float NOT NULL,
  `custom` float NOT NULL,
  `sellerpr` decimal(20,2) NOT NULL,
  `taxinfo` text NOT NULL,
  `tax` decimal(20,2) NOT NULL,
  `others` decimal(20,2) NOT NULL,
  `pono` varchar(255) NOT NULL,
  `purchseupdte` varchar(255) NOT NULL,
  `purchsecrtd` varchar(255) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `reOrdering` varchar(255) NOT NULL,
  `minStk` int(20) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `lastupdt` varchar(255) NOT NULL,
  `stockentryupdt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materiel_master05012017`
--

INSERT INTO `materiel_master05012017` (`id`, `materiel_id`, `materialname`, `wt`, `buypr`, `salespr`, `buyprcrnt`, `buyprprev`, `cnfpr`, `cnfprper`, `distpr`, `distprper`, `subdistpr`, `subdistprper`, `retailpr`, `retailprper`, `reorderlevel`, `qnty`, `openQnty`, `unit`, `doe`, `lastentry`, `status`, `mName`, `partsName`, `partsCode`, `description`, `vat`, `Sales`, `Road`, `cst`, `excise`, `custom`, `sellerpr`, `taxinfo`, `tax`, `others`, `pono`, `purchseupdte`, `purchsecrtd`, `specification`, `reOrdering`, `minStk`, `crtd`, `lastupdt`, `stockentryupdt`) VALUES
(3, 'GK/PC/16-17/1', 'BACK SET BOX', '', '111.86', '0.00', '2000.00', '0.00', '1800.00', '10.00', '1840.00', '8.00', '1860.00', '7.00', '2000.00', '5000.00', 500, 59, 59, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '100.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:32 AM', 'admin#2017-01-03 05:29:30 PM', '', '', 59, 'admin', '2016-12-29 12:23:03 PM', ''),
(4, 'GK/PC/16-17/4', 'BOX COVER', '', '264.86', '0.00', '2500.00', '0.00', '2250.00', '10.00', '2300.00', '8.00', '2325.00', '7.00', '2500.00', '2500.00', 500, 68, 68, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '253.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin#2017-01-03 05:29:30 PM', '', '', 68, 'admin', '2016-12-29 12:23:03 PM', ''),
(5, 'GK/PC/16-17/5', 'BAG', '', '261.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '250.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:32 AM', 'admin', '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(6, 'GK/PC/16-17/6', 'BASKET BOX', '', '261.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '250.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(7, 'GK/PC/16-17/7', 'CHARGER', '', '141.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '130.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(8, 'GK/PC/16-17/8', 'CHASSIS', '', '216.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '205.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(9, 'GK/PC/16-17/9', 'CLAMP SET', '', '261.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '250.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(10, 'GK/PC/16-17/10', 'COVER SET', '', '371.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '360.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(11, 'GK/PC/16-17/11', 'DIFFENTIAL', '', '531.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '520.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(12, 'GK/PC/16-17/12', 'DRIVER SET BOX', '', '31.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', 'FRONT BREAK DAM, FRONT BREAK DAM COVER,  MAIN WIRING, DIGITAL MITER,  HAND BREAK SET, PACKING BREAK, ', 0, 0, 0, 0, 0, 0, '20.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(13, 'GK/PC/16-17/13', 'FASTAID BOX', '', '21.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '10.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(14, 'GK/PC/16-17/14', 'FOOT MAT', '', '21.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '10.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 138, 'admin', '2016-12-29 12:23:03 PM', ''),
(15, 'GK/PC/16-17/15', 'GLASS SET', '', '36.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 68, 68, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '25.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 68, 'admin', '2016-12-29 12:23:03 PM', ''),
(16, 'GK/PC/16-17/16', 'KAMANI', '', '25.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '14.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 138, 'admin', '2016-12-29 12:23:03 PM', ''),
(17, 'GK/PC/16-17/17', 'LEG GURD', '', '21.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '10.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(18, 'GK/PC/16-17/18', 'MIDDLE FOOT REST SHEET / ALUMUNIM SET', '', '47.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 138, 138, 2, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '36.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 138, 'admin', '2016-12-29 12:23:03 PM', ''),
(19, 'GK/PC/16-17/19', 'MIDDLE SET BOX', '', '31.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '20.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(20, 'GK/PC/16-17/20', 'MOTOR', '', '63.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '52.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(21, 'GK/PC/16-17/21', 'RIM', '', '36.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 276, 276, 4, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '25.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 276, 'admin', '2016-12-29 12:23:03 PM', ''),
(22, 'GK/PC/16-17/22', 'ROOF', '', '36.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 71, 71, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '25.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 71, 'admin', '2016-12-29 12:23:03 PM', ''),
(23, 'GK/PC/16-17/23', 'ROOF STAKCHER', '', '36.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '25.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(24, 'GK/PC/16-17/24', 'SEAT SET', '', '36.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '25.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(25, 'GK/PC/16-17/25', 'SOUND PLATE STAND', '', '47.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 69, 69, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '36.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 69, 'admin', '2016-12-29 12:23:03 PM', ''),
(26, 'GK/PC/16-17/26', 'STAPNY COVER', '', '36.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '25.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(27, 'GK/PC/16-17/27', 'STICKER', '', '31.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 20, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '20.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(28, 'GK/PC/16-17/28', 'TYRE TUBE', '', '41.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '30.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(29, 'GK/PC/16-17/29', 'TOTO COVER', '', '37.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 30, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '26.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(30, 'GK/PC/16-17/30', 'HEAD LIGHT', '', '36.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 40, 0, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '25.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 0, 'admin', '2016-12-29 12:23:03 PM', ''),
(31, 'GK/PC/16-17/31', 'BACK BOX', '', '0.00', '0.00', '200.00', '0.00', '180.00', '10.00', '176.00', '12.00', '190.00', '5.00', '200.00', '0.00', 500, 506, 506, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', 'admin#2017-01-03 10:57:22 AM', '', '', 256, 'admin', '2016-12-30 02:37:30 PM', ''),
(32, 'GK/PC/16-17/32', 'BOX COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 756, 556, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:30 PM', ''),
(33, 'GK/PC/16-17/33', 'BOX PLATE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:30 PM', ''),
(34, 'GK/PC/16-17/34', 'BREAK ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 512, 'admin', '2016-12-30 02:37:31 PM', ''),
(35, 'GK/PC/16-17/35', 'BUMPER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(36, 'GK/PC/16-17/36', 'BASKET & NET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 512, 'admin', '2016-12-30 02:37:31 PM', ''),
(37, 'GK/PC/16-17/37', 'CHACHISE', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(38, 'GK/PC/16-17/38', 'CHARGER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(39, 'GK/PC/16-17/39', 'COVER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 0, 0, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 0, 'admin', '2016-12-30 02:37:31 PM', ''),
(40, 'GK/PC/16-17/40', 'DIFFENTIAL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(41, 'GK/PC/16-17/41', 'DRIVER BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(42, 'GK/PC/16-17/42', 'FIRSTAID BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 0, 'admin', '2016-12-30 02:37:31 PM', ''),
(43, 'GK/PC/16-17/43', 'FOOT MAT (RIGHT + LEFT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 512, 'admin', '2016-12-30 02:37:31 PM', ''),
(44, 'GK/PC/16-17/44', 'GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 228, 228, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 228, 'admin', '2016-12-30 02:37:31 PM', ''),
(45, 'GK/PC/16-17/45', 'GLASS STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(46, 'GK/PC/16-17/46', 'GLASS STAND', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(47, 'GK/PC/16-17/47', 'KAMANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 512, 'admin', '2016-12-30 02:37:31 PM', ''),
(48, 'GK/PC/16-17/48', 'LEG GUARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(49, 'GK/PC/16-17/49', 'METALICK COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 512, 'admin', '2016-12-30 02:37:31 PM', ''),
(50, 'GK/PC/16-17/50', 'MIDDLE BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(51, 'GK/PC/16-17/51', 'MIDDLE BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(52, 'GK/PC/16-17/52', 'MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 268, 268, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 268, 'admin', '2016-12-30 02:37:31 PM', ''),
(53, 'GK/PC/16-17/53', 'REAR BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(54, 'GK/PC/16-17/54', 'ROOF', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(55, 'GK/PC/16-17/55', 'ROOF STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(56, 'GK/PC/16-17/56', 'RUBBER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(57, 'GK/PC/16-17/57', 'SEAT CLAMP BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:31 PM', ''),
(58, 'GK/PC/16-17/58', 'SEAT CLAMP SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:32 PM', ''),
(59, 'GK/PC/16-17/59', 'SEAT SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2500, 0, 0, 5, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 1280, 'admin', '2016-12-30 02:37:32 PM', ''),
(60, 'GK/PC/16-17/60', 'SHOKER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 512, 'admin', '2016-12-30 02:37:32 PM', ''),
(61, 'GK/PC/16-17/61', 'SIDE STAND BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 512, 'admin', '2016-12-30 02:37:32 PM', ''),
(62, 'GK/PC/16-17/62', 'SIDE STAND SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 512, 512, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 512, 'admin', '2016-12-30 02:37:32 PM', ''),
(63, 'GK/PC/16-17/63', 'STEPY COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 256, 256, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 256, 'admin', '2016-12-30 02:37:32 PM', ''),
(64, 'GK/PC/16-17/64', 'TUBE / TYRE / RIM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 2488, 'admin', '2016-12-30 02:37:32 PM', ''),
(65, 'GK/PC/16-17/65', 'BAG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 0, 0, 1, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 0, 'admin', '2016-12-30 02:37:32 PM', ''),
(66, 'GK/PC/16-17/66', 'BACK BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 227, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:00 PM', ''),
(67, 'GK/PC/16-17/67', 'BAG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 20, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 0, 'admin', '2016-12-29 04:49:00 PM', ''),
(68, 'GK/PC/16-17/68', 'BOX COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 227, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:00 PM', ''),
(69, 'GK/PC/16-17/69', 'DRIVER HANDEL (LEFT + RIGHT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 434, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 414, 'admin', '2016-12-29 04:49:00 PM', ''),
(70, 'GK/PC/16-17/70', 'BREAK ROD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 434, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 414, 'admin', '2016-12-29 04:49:00 PM', ''),
(71, 'GK/PC/16-17/71', 'BUMPER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 227, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:01 PM', ''),
(72, 'GK/PC/16-17/72', 'BUSCATE & NET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 434, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 414, 'admin', '2016-12-29 04:49:01 PM', ''),
(73, 'GK/PC/16-17/73', 'BUSH FOR CLAMP', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 30, 0, 4, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 0, 'admin', '2016-12-29 04:49:01 PM', ''),
(74, 'GK/PC/16-17/74', 'CHACHISES', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 227, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:01 PM', ''),
(75, 'GK/PC/16-17/75', 'CHARGER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 237, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:01 PM', ''),
(76, 'GK/PC/16-17/76', 'COVER SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 50, 0, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 0, 'admin', '2016-12-29 04:49:01 PM', ''),
(77, 'GK/PC/16-17/77', 'DIFFENTIAL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 257, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 206, 'admin', '2016-12-29 04:49:01 PM', ''),
(78, 'GK/PC/16-17/78', 'DRIVER BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 267, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:01 PM', ''),
(79, 'GK/PC/16-17/79', 'FIRSTAID BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 70, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 0, 'admin', '2016-12-29 04:49:01 PM', ''),
(80, 'GK/PC/16-17/80', 'FOOT MAT (FRONT + BACK)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 494, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 414, 'admin', '2016-12-29 04:49:01 PM', ''),
(81, 'GK/PC/16-17/81', 'GLASS', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 282, 192, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 192, 'admin', '2016-12-29 04:49:01 PM', ''),
(82, 'GK/PC/16-17/82', 'GLASS STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 297, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:02 PM', ''),
(83, 'GK/PC/16-17/83', 'GLASS STAND', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 297, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:02 PM', ''),
(84, 'GK/PC/16-17/84', 'KAMANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 504, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 414, 'admin', '2016-12-29 04:49:02 PM', ''),
(85, 'GK/PC/16-17/85', 'LEG GUARD', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 297, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:02 PM', ''),
(86, 'GK/PC/16-17/86', 'METALICK COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 504, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 414, 'admin', '2016-12-29 04:49:02 PM', ''),
(87, 'GK/PC/16-17/87', 'MIDDLE BOX', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 297, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:02 PM', ''),
(88, 'GK/PC/16-17/88', 'MIDLE BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 257, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(89, 'GK/PC/16-17/89', 'MOTOR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 257, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(90, 'GK/PC/16-17/90', 'FOOT PLATE (RIGHT + LEFT)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 464, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 414, 'admin', '2016-12-29 04:49:03 PM', ''),
(91, 'GK/PC/16-17/91', 'REAR BACK REST', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 257, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(92, 'GK/PC/16-17/92', 'ROOF', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 267, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(93, 'GK/PC/16-17/93', 'ROOF STAKCHER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 277, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(94, 'GK/PC/16-17/94', 'RUBBER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 287, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(95, 'GK/PC/16-17/95', 'SEAT CLAMP BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 277, 187, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 187, 'admin', '2016-12-29 04:49:03 PM', ''),
(96, 'GK/PC/16-17/96', 'SEAT CLAMP SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 257, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(97, 'GK/PC/16-17/97', 'SEAT SET', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2500, 1105, 1035, 5, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 828, 'admin', '2016-12-29 04:49:03 PM', ''),
(98, 'GK/PC/16-17/98', 'SHOKAR', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 464, 414, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 414, 'admin', '2016-12-29 04:49:03 PM', ''),
(99, 'GK/PC/16-17/99', 'SIDE STAND BIG', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 381, 301, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 602, 'admin', '2016-12-29 04:49:03 PM', ''),
(100, 'GK/PC/16-17/100', 'SIDE STAND SMALL', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 456, 366, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 732, 'admin', '2016-12-29 04:49:03 PM', ''),
(101, 'GK/PC/16-17/101', 'STPNY COVER', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 222, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:03 PM', ''),
(102, 'GK/PC/16-17/102', 'PADANI', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 15, 0, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 215, 'admin', '2016-12-29 04:49:03 PM', ''),
(103, 'GK/PC/16-17/103', 'TUBE / TYRE / RIM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 838, 828, 4, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 828, 'admin', '2016-12-29 04:49:04 PM', ''),
(104, 'GK/PC/16-17/104', 'BATTERY CLAM', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 416, 406, 2, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 406, 'admin', '2016-12-29 04:49:04 PM', ''),
(105, 'GK/PC/16-17/105', 'LEG GUARD SUPORT', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 232, 207, 1, '', '', 0, 'K-9S', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 207, 'admin', '2016-12-29 04:49:04 PM', ''),
(106, 'GK/PC/16-17/106', 'BUSH FOR CLAMP', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2000, 0, 0, 4, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 0, 'admin', '2016-12-30 02:37:32 PM', ''),
(107, 'GK/PC/16-17/107', 'REAR SHOCKER (SMALL)', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 1000, 80, 80, 2, '', '', 0, 'K-9', '', '', '', 0, 0, 0, 0, 0, 0, '0.00', '', '0.00', '0.00', '', '', '', '', '', 80, 'admin', '2016-12-30 02:37:32 PM', ''),
(108, 'GK/PC/16-17/2', 'BACK SET BOX2', '', '113.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 59, 59, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '102.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:32 AM', 'admin', '', '', 59, 'admin', '2016-12-29 12:23:03 PM', ''),
(109, 'GK/PC/16-17/3', 'HANDLE', '', '36.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 59, 59, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '25.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 59, 'admin', '2016-12-29 12:23:03 PM', ''),
(110, 'GK/PC/16-17/120', 'BATTERY', '', '261.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 500, 59, 59, 1, '', '', 0, 'ER INDIA G-7', '', '', '', 0, 0, 0, 0, 0, 0, '250.00', 'asad;200,ddf;250,dfdsfd;2500', '0.79', '11.07', 'asdef1212', '2016-12-16 02:57:33 AM', 'admin', '', '', 59, 'admin', '2016-12-29 12:23:03 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `materiel_master9122016`
--

CREATE TABLE `materiel_master9122016` (
  `id` int(11) NOT NULL,
  `materiel_id` varchar(255) NOT NULL,
  `materialname` varchar(255) NOT NULL,
  `buypr` decimal(11,2) NOT NULL,
  `salespr` decimal(11,2) NOT NULL,
  `reorderlevel` int(11) NOT NULL,
  `qnty` int(20) NOT NULL,
  `openQnty` int(20) NOT NULL,
  `unit` int(20) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `lastentry` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `mName` varchar(255) NOT NULL,
  `partsName` varchar(255) NOT NULL,
  `partsCode` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `dispr` decimal(20,2) NOT NULL,
  `disPric_incld` float NOT NULL,
  `subdspr` decimal(20,2) NOT NULL,
  `dis2subPric_incld` float NOT NULL,
  `custpr` decimal(20,2) NOT NULL,
  `sub2dis_incld` float NOT NULL,
  `vat` float NOT NULL,
  `Sales` float NOT NULL,
  `Road` float NOT NULL,
  `cst` float NOT NULL,
  `excise` decimal(20,0) NOT NULL,
  `custom` decimal(20,0) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `reOrdering` varchar(255) NOT NULL,
  `minStk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materiel_master9122016`
--

INSERT INTO `materiel_master9122016` (`id`, `materiel_id`, `materialname`, `buypr`, `salespr`, `reorderlevel`, `qnty`, `openQnty`, `unit`, `doe`, `lastentry`, `status`, `mName`, `partsName`, `partsCode`, `description`, `dispr`, `disPric_incld`, `subdspr`, `dis2subPric_incld`, `custpr`, `sub2dis_incld`, `vat`, `Sales`, `Road`, `cst`, `excise`, `custom`, `specification`, `reOrdering`, `minStk`) VALUES
(2, 'GK/PC/16-17/1', 'BREAK', '0.00', '0.00', 10, 400, 300, 2, '', '', 0, 'G5', '', '', 'HNGCJHC', '1450.00', 0, '2500.00', 0, '1400.00', 0, 10, 10, 10, 10, '10', '10', '', '', 150),
(3, 'GK/PC/16-17/3', 'ACCELERATOR', '0.00', '0.00', 15, 200, 150, 1, '', '', 0, 'G5', '', '', 'ASASD', '2500.00', 0, '1400.00', 0, '3600.00', 0, 5, 5, 5, 5, '5', '5', '', '', 400),
(4, 'GK/PC/16-17/4', 'SIDE MIRROR', '0.00', '0.00', 15, 400, 300, 2, '', '', 0, 'G5', '', '', 'ZDSDDS', '250.00', 0, '300.00', 0, '350.00', 0, 5, 5, 5, 5, '5', '5', '', '', 250),
(5, 'GK/PC/16-17/5', 'LEFT-RIGHT ASO SWITCH', '0.00', '0.00', 20, 400, 300, 2, '', '', 0, 'G5', '', '', 'ZDDF', '100.00', 0, '540.00', 0, '300.00', 0, 10, 10, 10, 10, '10', '10', '', '', 250),
(6, 'GK/PC/16-17/6', 'WHEEL CAP', '0.00', '0.00', 14, 200, 150, 1, '', '', 0, 'G5', '', '', 'DFDSF', '250.00', 0, '300.00', 0, '350.00', 0, 5, 5, 5, 5, '5', '5', '', '', 250),
(7, 'GK/PC/16-17/7', 'HEAD LIGHT', '0.00', '0.00', 14, 200, 150, 1, '', '', 0, 'G5', '', '', 'AASDFASD', '2500.00', 0, '3000.00', 0, '3500.00', 0, 2, 2, 2, 2, '2', '2', '', '', 250),
(8, 'GK/PC/16-17/8', 'BREAK', '0.00', '0.00', 20, 0, 0, 2, '', '', 0, 'K9', '', '', 'ADDF', '2500.00', 0, '213.00', 0, '2231.00', 0, 2, 2, 2, 2, '2', '2', '', '', 150),
(9, 'GK/PC/16-17/9', 'ACCELERATOR', '0.00', '0.00', 25, 0, 0, 1, '', '', 0, 'K9', '', '', 'ASSD', '2500.00', 0, '2540.00', 0, '2700.00', 0, 5, 5, 5, 5, '5', '5', '', '', 140),
(10, 'GK/PC/16-17/10', 'LEFT-RIGHT ASO SWITCH', '0.00', '0.00', 15, 0, 0, 2, '', '', 0, 'K9', '', '', 'ADDSF', '2500.00', 0, '3000.00', 0, '3500.00', 0, 0, 0, 0, 0, '0', '0', '', '', 150),
(11, 'GK/PC/16-17/11', 'SIDE MIRROR', '0.00', '0.00', 10, 0, 0, 2, '', '', 0, 'K9', '', '', 'ASDASDAS', '2500.00', 0, '3600.00', 0, '4000.00', 0, 2, 2, 2, 2, '2', '2', '', '', 250),
(12, 'GK/PC/16-17/12', 'asdasdfds', '0.00', '0.00', 20, 0, 0, 3, '', '', 0, 'K9', '', '', 'dfsdfs', '15400.00', 0, '25000.00', 0, '140000.00', 0, 5, 5, 5, 5, '5', '5', '', '', 150),
(13, 'GK/PC/16-17/13', 'Handle', '0.00', '0.00', 20, 0, 0, 1, '', '', 0, 'K9', '', '', 'ffdg', '100.00', 0, '0.00', 0, '100.00', 0, 10, 2, 5, 5, '5', '5', '', '', 100),
(15, 'GK/PC/16-17/14', 'TYRE', '0.00', '0.00', 30, 600, 450, 3, '', '', 0, 'G5', '', '', 'DERG', '14.00', 0, '0.00', 0, '0.00', 0, 5, 0, 5, 5, '5', '5', '', '', 150),
(16, 'GK/PC/16-17/16', 'TYRE', '0.00', '0.00', 15, 0, 0, 3, '', '', 0, 'K9', '', '', 'TYRE', '7800.00', 0, '0.00', 0, '0.00', 0, 5, 5, 5, 5, '5', '5', '', '', 150),
(17, 'GK/PC/16-17/17', 'TUBE', '0.00', '0.00', 25, 0, 0, 3, '', '', 0, 'K9', '', '', 'TUBE', '800.00', 0, '0.00', 0, '0.00', 0, 5, 5, 5, 5, '5', '5', '', '', 150),
(18, 'GK/PC/16-17/18', 'RIM', '0.00', '0.00', 25, 0, 0, 3, '', '', 0, 'K9', '', '', 'TUBE', '8700.00', 0, '0.00', 0, '0.00', 0, 5, 5, 5, 5, '5', '5', '', '', 500);

-- --------------------------------------------------------

--
-- Table structure for table `materiel_master14102016`
--

CREATE TABLE `materiel_master14102016` (
  `id` int(11) NOT NULL,
  `materiel_id` varchar(255) NOT NULL,
  `materialname` varchar(255) NOT NULL,
  `buypr` decimal(11,2) NOT NULL,
  `salespr` decimal(11,2) NOT NULL,
  `reorderlevel` int(11) NOT NULL,
  `qnty` int(20) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `lastentry` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materiel_master14102016`
--

INSERT INTO `materiel_master14102016` (`id`, `materiel_id`, `materialname`, `buypr`, `salespr`, `reorderlevel`, `qnty`, `doe`, `lastentry`, `status`) VALUES
(1, 'GK/16-17/1', 'LEFT-RIGHT ASO SWITCH', '0.00', '0.00', 25, 15, '', '', 0),
(2, 'GK/16-17/2', 'ACCELERATOR', '0.00', '0.00', 20, 36, '', '', 0),
(3, 'GK/16-17/3', 'TAIL LAMP', '0.00', '0.00', 45, 100, '', '', 0),
(4, 'GK/16-17/4', 'SIDE MIRROR', '0.00', '0.00', 50, 100, '', '', 0),
(5, 'GK/16-17/5', 'WHEEL CAP', '0.00', '0.00', 50, 100, '', '', 0),
(6, 'GK/16-17/6', 'WATER GUARD', '0.00', '0.00', 50, 100, '', '', 0),
(7, 'GK/16-17/7', 'RUBBER', '0.00', '0.00', 50, 100, '', '', 0),
(8, 'GK/16-17/8', 'LEG GUARD TUBE', '0.00', '0.00', 50, 100, '', '', 0),
(9, 'GK/16-17/9', 'CHARGER SOCKET', '0.00', '0.00', 20, 100, '', '', 0),
(10, 'GK/16-17/10', 'ROOF SUPPORT', '0.00', '0.00', 20, 100, '', '', 0),
(11, 'GK/16-17/11', 'GLASS STAND', '0.00', '0.00', 20, 100, '', '', 0),
(12, 'GK/16-17/12', 'GLASS STAND SUPPORT', '0.00', '0.00', 20, 100, '', '', 0),
(13, 'GK/16-17/13', 'BATTERY CONNECTOR WIRE', '0.00', '0.00', 20, 100, '', '', 0),
(14, 'GK/16-17/14', 'JHULA', '0.00', '0.00', 20, 25, '', '', 0),
(15, 'GK/16-17/15', 'KAMANI', '0.00', '0.00', 20, 25, '', '', 0),
(16, 'GK/16-17/16', 'ROOF LIGHT WEARING', '0.00', '0.00', 20, 25, '', '', 0),
(17, 'GK/16-17/17', 'INDICATOR', '0.00', '0.00', 20, 25, '', '', 0),
(18, 'GK/16-17/18', 'FLASHER', '0.00', '0.00', 20, 25, '', '', 0),
(19, 'GK/16-17/19', 'BREAK SPRING', '0.00', '0.00', 20, 25, '', '', 0),
(20, 'GK/16-17/20', 'SEAT', '0.00', '0.00', 20, 25, '', '', 0),
(21, 'GK/16-17/21', 'DRIVERS REST HANDLE', '0.00', '0.00', 35, 25, '', '', 0),
(22, 'GK/16-17/22', 'BACK HORN', '0.00', '0.00', 35, 80, '', '', 0),
(23, 'GK/16-17/23', 'CONVERTER', '0.00', '0.00', 35, 80, '', '', 0),
(24, 'GK/16-17/24', 'DIFFERENTIAL', '0.00', '0.00', 35, 80, '', '', 0),
(25, 'GK/16-17/25', 'ALLOY WHEEL', '0.00', '0.00', 35, 80, '', '', 0),
(26, 'GK/16-17/26', 'DIGITAL METER', '0.00', '0.00', 35, 80, '', '', 0),
(27, 'GK/16-17/27', 'HANDLE BARRING', '0.00', '0.00', 35, 80, '', '', 0),
(28, 'GK/16-17/28', 'HANDLE T', '0.00', '0.00', 35, 80, '', '', 0),
(29, 'GK/16-17/29', 'HEAD LIGHT', '0.00', '0.00', 35, 80, '', '', 0),
(30, 'GK/16-17/30', 'HORN', '0.00', '0.00', 35, 80, '', '', 0),
(31, 'GK/16-17/31', 'MCB', '0.00', '0.00', 35, 80, '', '', 0),
(32, 'GK/16-17/32', 'MOTOR', '0.00', '0.00', 45, 80, '', '', 0),
(33, 'GK/16-17/33', 'ROOF LIGHT', '0.00', '0.00', 50, 80, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `materiel_master27122016`
--

CREATE TABLE `materiel_master27122016` (
  `id` int(11) NOT NULL,
  `materiel_id` varchar(255) NOT NULL,
  `materialname` varchar(255) NOT NULL,
  `mainpr` decimal(20,2) NOT NULL,
  `cnfpr` decimal(20,2) NOT NULL,
  `cnfpercentage` decimal(20,2) NOT NULL,
  `distpr` decimal(20,2) NOT NULL,
  `distpercentage` decimal(20,2) NOT NULL,
  `subdistpr` decimal(20,2) NOT NULL,
  `subdistpecentage` decimal(20,2) NOT NULL,
  `retailpr` decimal(20,2) NOT NULL,
  `retailpercentage` decimal(20,2) NOT NULL,
  `buypr` decimal(11,2) NOT NULL,
  `salespr` decimal(11,2) NOT NULL,
  `reorderlevel` int(11) NOT NULL,
  `qnty` int(20) NOT NULL,
  `openQnty` int(20) NOT NULL,
  `unit` int(20) NOT NULL,
  `wt` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `lastentry` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `mName` varchar(255) NOT NULL,
  `partsName` varchar(255) NOT NULL,
  `partsCode` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sub2dis_incld` float NOT NULL,
  `vat` float NOT NULL,
  `Sales` float NOT NULL,
  `Road` float NOT NULL,
  `cst` float NOT NULL,
  `excise` decimal(20,0) NOT NULL,
  `custom` decimal(20,0) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `reOrdering` varchar(255) NOT NULL,
  `minStk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materiel_master27122016`
--

INSERT INTO `materiel_master27122016` (`id`, `materiel_id`, `materialname`, `mainpr`, `cnfpr`, `cnfpercentage`, `distpr`, `distpercentage`, `subdistpr`, `subdistpecentage`, `retailpr`, `retailpercentage`, `buypr`, `salespr`, `reorderlevel`, `qnty`, `openQnty`, `unit`, `wt`, `doe`, `lastentry`, `status`, `mName`, `partsName`, `partsCode`, `description`, `sub2dis_incld`, `vat`, `Sales`, `Road`, `cst`, `excise`, `custom`, `specification`, `reOrdering`, `minStk`) VALUES
(1, 'GK/PC/16-17/1', 'BREAK', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 20, 500, 0, 2, '', '', '', 0, 'G5', '', '', '', 0, 5, 6, 2, 1, '2', '2', '', '', 10),
(2, 'GK/PC/16-17/2', 'EXIDE-BATTERY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 10, 0, 0, 4, '', '', '', 0, 'G5', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100),
(3, 'GK/PC/16-17/3', 'SF-SONIC BATTERY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 4, 0, 0, 4, '', '', '', 0, 'G5', '', '', 'ASDS', 0, 0, 0, 0, 0, '0', '0', '', '', 100),
(4, 'GK/PC/16-17/4', 'AMARON BATTERY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 4, 0, 0, 4, '', '', '', 0, 'G5', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100),
(5, 'GK/PC/16-17/5', 'CHARGER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 5, 0, 0, 1, '', '', '', 0, 'G5', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100),
(6, 'GK/PC/16-17/6', 'CHARGER 2', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 5, 0, 0, 1, '', '', '', 0, 'G5', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100),
(7, 'GK/PC/16-17/7', 'CHARGER 3', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 5, 0, 0, 1, '', '', '', 0, 'G5', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100);

-- --------------------------------------------------------

--
-- Table structure for table `materiel_masterbypkp21102016`
--

CREATE TABLE `materiel_masterbypkp21102016` (
  `id` int(11) NOT NULL,
  `materiel_id` varchar(255) NOT NULL,
  `materialname` varchar(255) NOT NULL,
  `buypr` decimal(11,2) NOT NULL,
  `salespr` decimal(11,2) NOT NULL,
  `reorderlevel` int(11) NOT NULL,
  `qnty` int(20) NOT NULL,
  `openQnty` int(20) NOT NULL,
  `unit` int(20) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `lastentry` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `mName` varchar(255) NOT NULL,
  `partsName` varchar(255) NOT NULL,
  `partsCode` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `disPric_excld` float NOT NULL,
  `disPric_incld` float NOT NULL,
  `dis2subPric_excld` float NOT NULL,
  `dis2subPric_incld` float NOT NULL,
  `sub2dis_excld` float NOT NULL,
  `sub2dis_incld` float NOT NULL,
  `vat` float NOT NULL,
  `Sales` float NOT NULL,
  `Road` float NOT NULL,
  `cst` float NOT NULL,
  `specification` varchar(255) NOT NULL,
  `reOrdering` varchar(255) NOT NULL,
  `minStk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materiel_masterbypkp21102016`
--

INSERT INTO `materiel_masterbypkp21102016` (`id`, `materiel_id`, `materialname`, `buypr`, `salespr`, `reorderlevel`, `qnty`, `openQnty`, `unit`, `doe`, `lastentry`, `status`, `mName`, `partsName`, `partsCode`, `description`, `disPric_excld`, `disPric_incld`, `dis2subPric_excld`, `dis2subPric_incld`, `sub2dis_excld`, `sub2dis_incld`, `vat`, `Sales`, `Road`, `cst`, `specification`, `reOrdering`, `minStk`) VALUES
(1, 'GK/PC/16-17/1', 'Break', '0.00', '0.00', 10, 1920, 1720, 2, '2016-10-19 04:14:25 PM', '', 0, 'G5', '', '', 'black', 12.12, 10.2, 9.2, 10.2, 9.2, 10.2, 10.2, 12, 12.3, 10.3, '', '', 120),
(2, 'GK/PC/16-17/2', 'ACCELERATOR', '0.00', '0.00', 10, 650, 550, 1, '2016-10-19 04:14:25 PM', '', 0, 'G5', '', '', 'abc', 10.2, 10.2, 10.2, 10.2, 10.2, 10.2, 10.2, 10.2, 10.2, 10.2, '', '', 120),
(4, 'GK/PC/16-17/3', 'Break', '0.00', '0.00', 10, 1920, 1720, 2, '2016-10-19 04:14:25 PM', '', 0, 'K9', '', '', 'black', 12.12, 10.2, 9.2, 10.2, 9.2, 10.2, 10.2, 12, 12.3, 10.3, '', '', 120);

-- --------------------------------------------------------

--
-- Table structure for table `materiel_mastercopy`
--

CREATE TABLE `materiel_mastercopy` (
  `id` int(11) NOT NULL,
  `materiel_id` varchar(255) NOT NULL,
  `materialname` varchar(255) NOT NULL,
  `mainpr` decimal(20,2) NOT NULL,
  `cnfpr` decimal(20,2) NOT NULL,
  `cnfpercentage` decimal(20,2) NOT NULL,
  `distpr` decimal(20,2) NOT NULL,
  `distpercentage` decimal(20,2) NOT NULL,
  `subdistpr` decimal(20,2) NOT NULL,
  `subdistpecentage` decimal(20,2) NOT NULL,
  `retailpr` decimal(20,2) NOT NULL,
  `retailpercentage` decimal(20,2) NOT NULL,
  `buypr` decimal(11,2) NOT NULL,
  `salespr` decimal(11,2) NOT NULL,
  `reorderlevel` int(11) NOT NULL,
  `qnty` int(20) NOT NULL,
  `openQnty` int(20) NOT NULL,
  `unit` int(20) NOT NULL,
  `wt` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `lastentry` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `mName` varchar(255) NOT NULL,
  `partsName` varchar(255) NOT NULL,
  `partsCode` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sub2dis_incld` float NOT NULL,
  `vat` float NOT NULL,
  `Sales` float NOT NULL,
  `Road` float NOT NULL,
  `cst` float NOT NULL,
  `excise` decimal(20,0) NOT NULL,
  `custom` decimal(20,0) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `reOrdering` varchar(255) NOT NULL,
  `minStk` int(20) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `lastupdt` varchar(255) NOT NULL,
  `stockentryupdt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materiel_mastercopy`
--

INSERT INTO `materiel_mastercopy` (`id`, `materiel_id`, `materialname`, `mainpr`, `cnfpr`, `cnfpercentage`, `distpr`, `distpercentage`, `subdistpr`, `subdistpecentage`, `retailpr`, `retailpercentage`, `buypr`, `salespr`, `reorderlevel`, `qnty`, `openQnty`, `unit`, `wt`, `doe`, `lastentry`, `status`, `mName`, `partsName`, `partsCode`, `description`, `sub2dis_incld`, `vat`, `Sales`, `Road`, `cst`, `excise`, `custom`, `specification`, `reOrdering`, `minStk`, `crtd`, `lastupdt`, `stockentryupdt`) VALUES
(1, 'GK/PC/16-17/1', 'BREAK', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '0.00', 30, 3431, 3000, 2, '25', '', '', 0, 'G5', '', '', '', 0, 5, 6, 2, 1, '2', '2', '', '', 10, 'admin', '2016-12-28 03:23:41 AM', ''),
(2, 'GK/PC/16-17/2', 'EXIDE-BATTERY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '400.00', '0.00', 36, 306, 281, 4, '45', '', '', 0, 'G5', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:23:41 AM', ''),
(3, 'GK/PC/16-17/3', 'SF-SONIC BATTERY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '250.00', '0.00', 58, 404, 204, 4, '25', '', '', 0, 'G5', '', '', 'ASDS', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:23:41 AM', ''),
(4, 'GK/PC/16-17/4', 'AMARON BATTERY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '154.00', '0.00', 0, 45, 45, 4, '', '', '', 0, 'G5', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:23:41 AM', ''),
(5, 'GK/PC/16-17/5', 'CHARGER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '480.00', '0.00', 0, 45, 45, 1, '', '', '', 0, 'G5', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:23:41 AM', ''),
(6, 'GK/PC/16-17/6', 'CHARGER 2', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '362.00', '0.00', 0, 36, 36, 1, '', '', '', 0, 'G5', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:23:41 AM', ''),
(7, 'GK/PC/16-17/7', 'CHARGER 3', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '150.00', '0.00', 0, 250, 250, 1, '', '', '', 0, 'G5', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:23:41 AM', ''),
(8, 'GK/PC/16-17/8', 'BREAK', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '453.00', '0.00', 0, 300, 100, 1, '', '', '', 0, 'K9', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:28:54 AM', ''),
(9, 'GK/PC/16-17/9', 'EXIDE-BATTERY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '140.00', '0.00', 0, 500, 200, 1, '', '', '', 0, 'K9', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:28:54 AM', ''),
(10, 'GK/PC/16-17/10', 'SF-SONIC BATTERY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '363.00', '0.00', 0, 600, 200, 1, '', '', '', 0, 'K9', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:28:54 AM', ''),
(11, 'GK/PC/16-17/11', 'AMARON BATTERY', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '478.00', '0.00', 0, 600, 100, 1, '', '', '', 0, 'K9', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:28:54 AM', ''),
(12, 'GK/PC/16-17/12', 'CHARGER', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '0.00', 0, 150, 50, 1, '', '', '', 0, 'K9', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:28:54 AM', ''),
(13, 'GK/PC/16-17/13', 'CHARGER 2', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '98.00', '0.00', 0, 310, 60, 1, '', '', '', 0, 'K9', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:28:54 AM', ''),
(14, 'GK/PC/16-17/14', 'CHARGER 3', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '150.00', '0.00', 0, 370, 70, 1, '', '', '', 0, 'K9', '', '', '', 0, 0, 0, 0, 0, '0', '0', '', '', 100, 'admin', '2016-12-28 03:28:54 AM', '');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `previelegename` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crtd` varchar(255) NOT NULL DEFAULT 'admin',
  `doe` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `previelegename`, `status`, `crtd`, `doe`) VALUES
(1, 'inventory', 0, 'admin', '2017-02-10 11:03:15'),
(2, 'purchase', 0, 'admin', '2017-02-10 11:03:15'),
(3, 'sales', 0, 'admin', '2017-02-10 11:03:15'),
(4, 'accounts', 0, 'admin', '2017-02-10 11:03:15'),
(5, 'warehouse', 0, 'admin', '2017-02-10 11:03:15'),
(6, 'stock', 0, 'admin', '2017-02-10 11:04:23'),
(7, 'hr', 0, 'admin', '2017-02-10 11:04:23'),
(8, 'manufacterer', 0, 'admin', '2017-02-10 11:07:54'),
(9, 'booking', 0, 'admin', '2017-02-10 11:07:54'),
(10, 'cashier', 0, 'admin', '2017-02-10 11:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `uniid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `uniid`, `title`, `link`, `date`, `status`) VALUES
(8, 'Quotation Form', 'Quotation from XYZ for Quotation No:-GK/16/17/00031', 'Purchase_controller/viewquotation', '2016-12-13 11:48:17 PM', 1),
(9, 'Quotation Form', 'Quotation from XYZ for Quotation No:-GK/16/17/00032', 'Purchase_controller/viewquotation', '2016-12-15 12:54:30 PM', 1),
(10, 'Quotation Form', 'Quotation from XYZ for Quotation No:-GK/16/17/00033', 'Purchase_controller/viewquotation', '2016-12-15 06:56:20 PM', 1),
(11, 'Customer Open', 'One customer Registered for DEALER by Sougata Dalapati', 'Manage_distributer', '2016-12-16 09:22:57 AM', 1),
(12, 'Customer Open', 'One user wants to  Registered for DEALER by Sougata Dalapati', 'Manage_distributer', '2016-12-17 02:03:11 PM', 1),
(13, 'Customer Open', 'One user wants to  Registered for DEALER by Sougata Dalapati', 'Manage_distributer', '2017-01-05 07:50:38 PM', 1),
(14, 'Customer Open', 'One user wants to  Registered for CNF by gautam basu', 'Manage_distributer', '2017-01-17 10:24:37 AM', 1),
(15, 'Quotation Form', 'Quotation from XYZ for Quotation No:-GK/17/18/00035', 'Purchase_controller/viewquotation', '2017-01-23 07:11:29 PM', 1),
(16, 'Quotation Form', 'Quotation from  for Quotation No:-GK/17/18/00036', 'Purchase_controller/viewquotation', '2017-01-24 12:22:32 PM', 1),
(17, 'Quotation Form', 'Quotation from  for Quotation No:-GKPONO17012400037', 'Purchase_controller/viewquotation', '2017-01-24 02:18:50 PM', 1),
(18, 'Quotation Form', 'Quotation from  for Quotation No:-GKPONO17012400039', 'Purchase_controller/viewquotation', '2017-01-25 01:28:13 AM', 1),
(19, 'Quotation Form', 'Quotation from  for Quotation No:-GKPONO17012400038', 'Purchase_controller/viewquotation', '2017-01-25 01:29:33 AM', 1),
(20, 'Quotation Form', 'Quotation from  for Quotation No:-GKPONO17021000041', 'Purchase_controller/viewquotation', '2017-02-11 12:44:42 AM', 1),
(21, 'Quotation Form', 'Quotation from  for Quotation No:-GKPONO17021100042', 'Purchase_controller/viewquotation', '2017-02-11 10:06:26 AM', 1),
(22, 'Quotation Form', 'Quotation from  for Quotation No:-GKPONO17021300043', 'Purchase_controller/viewquotation', '2017-02-13 01:40:00 PM', 1),
(23, 'Quotation Form', 'Quotation from  for Quotation No:-GKPONO17021400045', 'Purchase_controller/viewquotation', '2017-02-14 06:08:11 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ofer_letter`
--

CREATE TABLE `ofer_letter` (
  `id` int(11) NOT NULL,
  `temp_id` varchar(55) NOT NULL,
  `vcode` varchar(55) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `desig` varchar(255) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `dob` varchar(55) NOT NULL,
  `gender` varchar(55) NOT NULL,
  `salary` int(11) NOT NULL,
  `prob` varchar(255) NOT NULL,
  `jod` varchar(55) NOT NULL,
  `board1` varchar(255) NOT NULL,
  `year1` varchar(255) NOT NULL,
  `qual1` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `ex_p` text NOT NULL,
  `adhar` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `voter` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crtd` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `doet` varchar(55) NOT NULL,
  `mailsent` int(11) NOT NULL DEFAULT '0',
  `mailsenddt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ofer_letter`
--

INSERT INTO `ofer_letter` (`id`, `temp_id`, `vcode`, `name`, `address`, `email`, `department`, `desig`, `phone`, `dob`, `gender`, `salary`, `prob`, `jod`, `board1`, `year1`, `qual1`, `grade`, `ex_p`, `adhar`, `pan`, `voter`, `image`, `status`, `crtd`, `doe`, `doet`, `mailsent`, `mailsenddt`) VALUES
(2, 'EMPTEMPID0001', '', 'aadads', 'asasdd,dfdf', 'patrapankaj36@gmail.com', 'Accountsw', '1', '23154', '1999-03-09', 'female', 25000, '4years', '2017-02-16', 'asdasd', '2001', 'sdsad', 'A', 'sadsadbvhvgh', '', '', '', '', 0, 'admin', '2017-02-15 04:23:11 PM', '2017-03-17', 1, '2017-02-15'),
(3, 'EMPTEMPID0002', '', 'asdads', 'asdsad', 'pankaj@crystalpalnetweb.com', 'Accountsw', '1', '265', '2017-02-01', 'female', 12000, '', '2017-02-16', 'asddsa', '2014', 'sadsa', 'A', '', 'asasd', 'rre', 'retret', '', 0, 'admin', '2017-02-15 06:57:51 PM', '2017-03-17', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `outgoingtax`
--

CREATE TABLE `outgoingtax` (
  `id` int(11) NOT NULL,
  `invoiceno` varchar(255) NOT NULL,
  `taxname` varchar(255) NOT NULL,
  `taxper` decimal(20,2) NOT NULL,
  `taxamnt` decimal(20,2) NOT NULL,
  `gtotal` decimal(20,2) NOT NULL,
  `doe` varchar(55) NOT NULL,
  `crtdby` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outgoingtax`
--

INSERT INTO `outgoingtax` (`id`, `invoiceno`, `taxname`, `taxper`, `taxamnt`, `gtotal`, `doe`, `crtdby`, `status`) VALUES
(1, '542136', 'cst', '2.00', '8.00', '508.00', '2017-02-06 09:11:54 AM', 'admin', 1),
(2, '121212', 'Excise', '6.00', '294.00', '5297.88', '2017-02-07 05:38:18 AM', 'admin', 1),
(3, '121212', 'cst', '2.00', '103.88', '5297.88', '2017-02-07 05:38:18 AM', 'admin', 1),
(4, '54789', 'Excise', '5.00', '5.00', '1647.10', '2017-02-08 09:18:27 AM', 'admin', 0),
(5, '54789', 'cst', '2.00', '2.10', '1647.10', '2017-02-08 09:18:27 AM', 'admin', 0),
(6, '47896', 'Excise', '5.00', '95.75', '2302.31', '2017-02-08 11:26:52 AM', 'admin', 1),
(7, '47896', 'vat', '14.50', '291.56', '2302.31', '2017-02-08 11:26:52 AM', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paymentpurpose`
--

CREATE TABLE `paymentpurpose` (
  `id` int(11) NOT NULL,
  `purpose` varchar(254) NOT NULL,
  `crtd` varchar(254) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentpurpose`
--

INSERT INTO `paymentpurpose` (`id`, `purpose`, `crtd`, `status`) VALUES
(1, 'SECURITY', 'admin', 0),
(2, 'advance payment', 'admin', 0),
(3, 'purchase refund', 'admin', 0),
(4, 'vat return', 'admin', 0),
(5, 'cst return', 'admin', 0),
(6, 'tds return', 'admin', 0),
(7, 'service', 'admin', 0),
(10, 'Entrainment Expenc.', 'admin', 0),
(11, 'Printing & Statinory', 'admin', 0),
(12, 'Rent Paid', 'admin', 0),
(13, 'Tax & Licence', 'admin', 0),
(14, 'Advertisement Exp.', 'admin', 0),
(15, 'Bank Charge', 'admin', 0),
(16, 'Commission Paid', 'admin', 0),
(17, 'Consultancy Paid', 'admin', 0),
(18, 'Couriour Charge', 'admin', 0),
(19, 'Discount Allowed', 'admin', 0),
(20, 'Donetion Subscription', 'admin', 0),
(21, 'Electric Bill', 'admin', 0),
(22, 'Entertenment Exp.', 'admin', 0),
(23, 'Entry Tax', 'admin', 0),
(24, 'Fitting Chrg', 'admin', 0),
(25, 'Fooding Exp.', 'admin', 0),
(26, 'Fuel Exp.', 'admin', 0),
(27, 'General Exp.', 'admin', 0),
(28, 'Interest on Entry Tax', 'admin', 0),
(29, 'Interest paid On Cst', 'admin', 0),
(30, 'Interest paid on VAT', 'admin', 0),
(31, 'Leagal exp.', 'admin', 0),
(32, 'Loading & Unloading Charge', 'admin', 0),
(33, 'Mobile & Telephone Exp.', 'admin', 0),
(34, 'Office Exp.', 'admin', 0),
(35, 'Postage & Courrier', 'admin', 0),
(36, 'Office Exp.', 'admin', 0),
(37, 'Postage & Currier', 'admin', 0),
(38, 'Printing & Stationary', 'admin', 0),
(39, 'Publicity Exp.', 'admin', 0),
(40, 'Puja Exp.', 'admin', 0),
(42, 'Repair & Maintanance', 'admin', 0),
(44, 'Transport Charge', 'admin', 0),
(45, 'Travelling Expence.', 'admin', 0),
(46, 'vat Penalty', 'admin', 0),
(47, 'weighment chrg', 'admin', 0),
(48, 'Driving Allawonce', 'admin', 0),
(49, 'Misscle.', 'admin', 0),
(50, 'Travel Allowance', 'admin', 0),
(51, 'Tea & Other', 'admin', 0),
(52, 'Drawee', 'admin', 0),
(53, 'Rent', 'admin', 0),
(54, 'Salary', 'admin', 0),
(55, 'C-Form refund', 'admin', 0),
(56, 'Sales Return', 'admin', 0),
(57, 'Discount Received', 'admin', 0),
(58, 'Interest Received', 'admin', 0),
(59, 'Pay Booking Amount', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_purpose`
--

CREATE TABLE `payment_purpose` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(254) NOT NULL,
  `crtd` varchar(254) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_purpose`
--

INSERT INTO `payment_purpose` (`id`, `payment_type`, `crtd`, `status`) VALUES
(1, 'SECURITY', 'admin', 0),
(2, 'advance payment', 'admin', 0),
(3, 'purchase refund', 'admin', 0),
(4, 'vat return', 'admin', 0),
(5, 'cst return', 'admin', 0),
(6, 'tds return', 'admin', 0),
(7, 'service', 'admin', 0),
(8, 'c form', 'admin', 0),
(9, 'Advertisement Expence', 'admin', 0),
(10, 'Entrainment Expenc.', 'admin', 0),
(11, 'Printing & Statinory', 'admin', 0),
(12, 'Rent Paid', 'admin', 0),
(13, 'Tax & Licence', 'admin', 0),
(14, 'Advertisement Exp.', 'admin', 0),
(15, 'Bank Charge', 'admin', 0),
(16, 'Commission Paid', 'admin', 0),
(17, 'Consultancy Paid', 'admin', 0),
(18, 'Couriour Charge', 'admin', 0),
(19, 'Discount Allowed', 'admin', 0),
(20, 'Donetion Subscription', 'admin', 0),
(21, 'Electric Bill', 'admin', 0),
(22, 'Entertenment Exp.', 'admin', 0),
(23, 'Entry Tax', 'admin', 0),
(24, 'Fitting Chrg', 'admin', 0),
(25, 'Fooding Exp.', 'admin', 0),
(26, 'Fuel Exp.', 'admin', 0),
(27, 'General Exp.', 'admin', 0),
(28, 'Interest on Entry Tax', 'admin', 0),
(29, 'Interest paid On Cst', 'admin', 0),
(30, 'Interest paid on VAT', 'admin', 0),
(31, 'Leagal exp.', 'admin', 0),
(32, 'Loading & Unloading Charge', 'admin', 0),
(33, 'Mobile & Telephone Exp.', 'admin', 0),
(34, 'Office Exp.', 'admin', 0),
(35, 'Postage & Courrier', 'admin', 0),
(36, 'Office Exp.', 'admin', 0),
(37, 'Postage & Currier', 'admin', 0),
(38, 'Printing & Stationary', 'admin', 0),
(39, 'Publicity Exp.', 'admin', 0),
(40, 'Puja Exp.', 'admin', 0),
(42, 'Repair & Maintanance', 'admin', 0),
(43, 'Tour & Travells', 'admin', 0),
(44, 'Transport Charge', 'admin', 0),
(45, 'Travelling Expence.', 'admin', 0),
(46, 'vat Penalty', 'admin', 0),
(47, 'weighment chrg', 'admin', 0),
(48, 'Discount Received', 'admin', 0),
(49, 'Interest Received ', '', 0),
(50, 'Pay Booking Amount', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payslip_generate`
--

CREATE TABLE `payslip_generate` (
  `id` int(11) NOT NULL,
  `empid` varchar(255) NOT NULL,
  `basicsal` decimal(20,2) NOT NULL,
  `incentive` decimal(20,2) NOT NULL,
  `pf` decimal(20,2) NOT NULL,
  `esi` decimal(20,2) NOT NULL,
  `ptax` decimal(20,2) NOT NULL,
  `ta` decimal(20,2) NOT NULL,
  `da` decimal(20,2) NOT NULL,
  `otheralwn` decimal(20,2) NOT NULL,
  `gross` decimal(20,2) NOT NULL,
  `mnthcode` varchar(20) NOT NULL,
  `yrcode` varchar(20) NOT NULL,
  `otherdeduct` decimal(20,2) NOT NULL,
  `workingdays` int(22) NOT NULL,
  `holiday` int(22) NOT NULL,
  `tot_leave` int(22) NOT NULL,
  `crtdby` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `dos` varchar(55) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `paystatus` int(11) NOT NULL DEFAULT '0',
  `paidon` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payslip_generate`
--

INSERT INTO `payslip_generate` (`id`, `empid`, `basicsal`, `incentive`, `pf`, `esi`, `ptax`, `ta`, `da`, `otheralwn`, `gross`, `mnthcode`, `yrcode`, `otherdeduct`, `workingdays`, `holiday`, `tot_leave`, `crtdby`, `doe`, `dos`, `status`, `paystatus`, `paidon`) VALUES
(5, '1', '10000.00', '0.00', '5.00', '2.00', '0.00', '0.00', '0.00', '0.00', '9300.00', '1', '2017', '0.00', 0, 0, 0, 'admin', '2017-02-17 02:06:24 PM', '2017-02-17', 0, 0, ''),
(6, '3', '15000.00', '0.00', '5.00', '2.00', '0.00', '0.00', '0.00', '0.00', '13950.00', '1', '2017', '0.00', 25, 6, 3, 'admin', '2017-02-18 06:31:23 AM', '2017-02-18', 0, 0, ''),
(7, '1', '10000.00', '0.00', '5.00', '2.00', '0.00', '0.00', '0.00', '0.00', '9300.00', '2', '2017', '0.00', 0, 0, 0, 'admin', '2017-10-03 12:22:39 PM', '2017-10-03', 0, 0, ''),
(8, '3', '10000.00', '0.00', '5.00', '2.00', '0.00', '0.00', '0.00', '0.00', '9300.00', '2', '2017', '0.00', 0, 0, 0, 'admin', '2017-10-03 12:21:27 PM', '2017-10-03', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `pi_invoice`
--

CREATE TABLE `pi_invoice` (
  `id` int(11) NOT NULL,
  `invoiceno` varchar(255) NOT NULL,
  `pono` varchar(255) NOT NULL,
  `venid` varchar(255) NOT NULL,
  `paymentyp` varchar(255) NOT NULL,
  `paymentno` int(11) NOT NULL,
  `amount` int(255) NOT NULL,
  `currencytype` varchar(255) NOT NULL,
  `total` int(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `cheque` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `accno` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pi_invoice`
--

INSERT INTO `pi_invoice` (`id`, `invoiceno`, `pono`, `venid`, `paymentyp`, `paymentno`, `amount`, `currencytype`, `total`, `bank`, `cheque`, `branch`, `accno`, `doe`, `status`) VALUES
(1, '123456', 'GK/17/18/00035', '', 'cash', 1, 50, '', 0, 'aaddf', ' 4561', 'dsfsf', '', '2017-01-24 07: 28: 40', 0),
(2, '54321', 'GK/17/18/00035', '', 'cash', 2, 5, '', 0, '', ' ', '', '', '2017-01-24 07: 29: 51', 0),
(7, '123456', 'GKPONO17012400037', 'GKSUP00004', 'cash', 1, 21, '', 0, 'ICICI BANK ', ' ', 'HOWRAH', '', '2017-01-24 07: 44: 31', 0),
(8, '54321', 'GKPONO17012400037', 'GKSUP00004', 'cash', 2, 12, '', 0, 'STATE BANK OF INDIA', ' ', 'SERAMPORE', '', '2017-01-25 12: 45: 33', 0),
(9, '32134', 'GKPONO17012400037', 'GKSUP00004', 'cheque', 3, 1, '', 0, 'ICICI BANK ', ' 123456', 'HOWRAH', '', '2017-01-25 01: 20: 05', 0),
(10, '54321', 'GKPONO17021000041', 'GKSUP00002', 'cheque', 1, 3000, '', 0, 'ICICI BANK ', ' 12345', 'HOWRAH', '', '2017-02-11 12: 53: 30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `productmaster`
--

CREATE TABLE `productmaster` (
  `id` int(11) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `modeltyp` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `cnfprice` decimal(20,2) NOT NULL,
  `cnfpercentage` decimal(20,2) NOT NULL,
  `distprice` decimal(20,2) NOT NULL,
  `distpercentage` decimal(20,2) NOT NULL,
  `subdistprice` decimal(20,2) NOT NULL,
  `subdistpercentage` decimal(20,2) NOT NULL,
  `retailerprice` decimal(20,2) NOT NULL,
  `retailerpercentage` decimal(20,2) NOT NULL,
  `mainpr` decimal(20,2) NOT NULL,
  `batteryPower` varchar(255) NOT NULL DEFAULT '0',
  `batteryModel` varchar(255) NOT NULL,
  `clsModel` varchar(255) NOT NULL,
  `vat` decimal(20,2) NOT NULL,
  `Sales` decimal(20,2) NOT NULL,
  `Road` decimal(20,2) NOT NULL,
  `custom` decimal(20,2) NOT NULL,
  `cst` decimal(20,2) NOT NULL,
  `excise` decimal(20,2) NOT NULL,
  `servpaid` varchar(255) NOT NULL,
  `servday` varchar(255) NOT NULL,
  `motorPower` varchar(255) NOT NULL,
  `seatcap` varchar(255) NOT NULL,
  `grossvhc` varchar(255) NOT NULL,
  `bodyType` varchar(255) NOT NULL,
  `fuelUsed` varchar(255) NOT NULL,
  `mfgYear` varchar(255) NOT NULL,
  `unLoadwt` varchar(255) NOT NULL,
  `octrail` varchar(255) NOT NULL,
  `productqty` int(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productmaster`
--

INSERT INTO `productmaster` (`id`, `productid`, `brand`, `modeltyp`, `productname`, `cnfprice`, `cnfpercentage`, `distprice`, `distpercentage`, `subdistprice`, `subdistpercentage`, `retailerprice`, `retailerpercentage`, `mainpr`, `batteryPower`, `batteryModel`, `clsModel`, `vat`, `Sales`, `Road`, `custom`, `cst`, `excise`, `servpaid`, `servday`, `motorPower`, `seatcap`, `grossvhc`, `bodyType`, `fuelUsed`, `mfgYear`, `unLoadwt`, `octrail`, `productqty`, `status`) VALUES
(1, 'GKPR00001', 'GK', 'I-CAT Approve', 'ER INDIA G-7', '56000.00', '33.87', '61000.00', '27.97', '67000.00', '20.88', '84684.00', '0.00', '84684.00', '100 mph (48 v)', 'E - RIDE', 'exide', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3 nos', '90 days', '850 w', '4+1 person', '360', 'iron', '', '2016', '', '', 0, 0),
(2, 'GKPR00002', 'GK', 'I-CAT Approve', 'ER INDIA K-9', '36000.00', '28.00', '40000.00', '20.00', '45000.00', '10.00', '50000.00', '42.86', '50000.00', '100 mph (48 v)', 'E-RIDE', 'exide', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3 nos', '90 days', '850 w', '4+1 person', '365', 'iron', '', '2016', '', '', 0, 0),
(3, 'GKPR00003', 'GK', 'NON I-CAT ', 'ER INDIA G-7S', '60000.00', '32.73', '65000.00', '27.12', '71000.00', '20.39', '89189.00', '10.00', '89189.00', '100 mph (48 v)', 'E-RIDE', 'exide', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3 nos', '90 days', '850 w', '4+1 person', '372', 'iron', '', '2016', '', '', 0, 0),
(4, 'GKPR00004', 'GK', '', 'P5', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100', '200', '140', '5.00', '5.00', '0.00', '5.00', '5.00', '5.00', '50', '300', '200', '5', '1', '5', '', '2017', '', '', 0, 0),
(5, 'GKPR00005', 'GK', '', 'P1', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1400', 'saas', 'asas', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'asasd', 'asdasd', 'asd', 'asdas', 'dasd', 'asdasd', '', '2017', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productmaster05012017`
--

CREATE TABLE `productmaster05012017` (
  `id` int(11) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `cnfprice` decimal(20,2) NOT NULL,
  `cnfpercentage` decimal(20,2) NOT NULL,
  `distprice` decimal(20,2) NOT NULL,
  `distpercentage` decimal(20,2) NOT NULL,
  `subdistprice` decimal(20,2) NOT NULL,
  `subdistpercentage` decimal(20,2) NOT NULL,
  `retailerprice` decimal(20,2) NOT NULL,
  `retailerpercentage` decimal(20,2) NOT NULL,
  `mainpr` decimal(20,2) NOT NULL,
  `batteryPower` varchar(255) NOT NULL DEFAULT '0',
  `batteryModel` varchar(255) NOT NULL,
  `clsModel` varchar(255) NOT NULL,
  `vat` decimal(20,2) NOT NULL,
  `Sales` decimal(20,2) NOT NULL,
  `Road` decimal(20,2) NOT NULL,
  `custom` decimal(20,2) NOT NULL,
  `cst` decimal(20,2) NOT NULL,
  `excise` decimal(20,2) NOT NULL,
  `servpaid` varchar(255) NOT NULL,
  `servday` varchar(255) NOT NULL,
  `motorPower` varchar(255) NOT NULL,
  `seatcap` varchar(255) NOT NULL,
  `grossvhc` varchar(255) NOT NULL,
  `bodyType` varchar(255) NOT NULL,
  `fuelUsed` varchar(255) NOT NULL,
  `mfgYear` varchar(255) NOT NULL,
  `unLoadwt` varchar(255) NOT NULL,
  `octrail` varchar(255) NOT NULL,
  `productqty` int(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productmaster05012017`
--

INSERT INTO `productmaster05012017` (`id`, `productid`, `brand`, `productname`, `cnfprice`, `cnfpercentage`, `distprice`, `distpercentage`, `subdistprice`, `subdistpercentage`, `retailerprice`, `retailerpercentage`, `mainpr`, `batteryPower`, `batteryModel`, `clsModel`, `vat`, `Sales`, `Road`, `custom`, `cst`, `excise`, `servpaid`, `servday`, `motorPower`, `seatcap`, `grossvhc`, `bodyType`, `fuelUsed`, `mfgYear`, `unLoadwt`, `octrail`, `productqty`, `status`) VALUES
(1, 'GK/PR/16-17/1', 'GK', 'ER INDIA G-7', '4250.00', '15.00', '4500.00', '10.00', '4750.00', '5.00', '5000.00', '0.00', '5000.00', '100 mph (48 v)', 'E - RIDE', 'exide', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3 nos', '90 days', '850 w', '4+1 person', '360', 'iron', '', '2016', '', '', 0, 0),
(2, 'GK/PR/16-17/2', 'GK', 'K-9', '2125.00', '15.00', '2200.00', '12.00', '2250.00', '10.00', '2500.00', '20.00', '2500.00', '100 mph (48 v)', 'E-RIDE', 'exide', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3 nos', '90 days', '850 w', '4+1 person', '365', 'iron', '', '2016', '', '', 0, 0),
(3, 'GK/PR/16-17/3', 'GK', 'K-9S', '8000.00', '20.00', '8500.00', '15.00', '8800.00', '12.00', '10000.00', '20.00', '10000.00', '100 mph (48 v)', 'E-RIDE', 'exide', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3 nos', '90 days', '850 w', '4+1 person', '372', 'iron', '', '2016', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productmaster9122016`
--

CREATE TABLE `productmaster9122016` (
  `id` int(11) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `batteryPower` varchar(255) NOT NULL DEFAULT '0',
  `batteryModel` varchar(255) NOT NULL,
  `clsModel` varchar(255) NOT NULL,
  `dis_excld` decimal(20,2) NOT NULL,
  `dis_incld` decimal(20,2) NOT NULL,
  `sub_disincld` decimal(20,2) NOT NULL,
  `sub_disexcld` decimal(20,2) NOT NULL,
  `cus_inclde` decimal(20,2) NOT NULL,
  `cus_exclde` decimal(20,2) NOT NULL,
  `vat` decimal(20,2) NOT NULL,
  `Sales` decimal(20,2) NOT NULL,
  `Road` decimal(20,2) NOT NULL,
  `custom` varchar(255) NOT NULL,
  `cst` decimal(20,2) NOT NULL,
  `excise` decimal(10,2) NOT NULL,
  `servpaid` varchar(255) NOT NULL,
  `servday` varchar(255) NOT NULL,
  `motorPower` varchar(255) NOT NULL,
  `seatcap` varchar(255) NOT NULL,
  `grossvhc` varchar(255) NOT NULL,
  `bodyType` varchar(255) NOT NULL,
  `fuelUsed` varchar(255) NOT NULL,
  `mfgYear` varchar(255) NOT NULL,
  `unLoadwt` varchar(255) NOT NULL,
  `octrail` varchar(255) NOT NULL,
  `productqty` int(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productmaster9122016`
--

INSERT INTO `productmaster9122016` (`id`, `productid`, `brand`, `productname`, `batteryPower`, `batteryModel`, `clsModel`, `dis_excld`, `dis_incld`, `sub_disincld`, `sub_disexcld`, `cus_inclde`, `cus_exclde`, `vat`, `Sales`, `Road`, `custom`, `cst`, `excise`, `servpaid`, `servday`, `motorPower`, `seatcap`, `grossvhc`, `bodyType`, `fuelUsed`, `mfgYear`, `unLoadwt`, `octrail`, `productqty`, `status`) VALUES
(1, 'GK/PR/16-17/1', 'GK', 'G5', '1500', '25QAASA', 'FGGD', '75000.00', '75400.00', '85000.00', '90000.00', '100000.00', '100500.00', '10.00', '10.00', '10.00', '32', '5.00', '6.00', 'ABCED', '2500', '1400', '4+1', '15400KG', 'METAL', '', '2016', '', '', 120, 0),
(2, 'GK/PR/16-17/2', 'GK', 'K9', '2000MH', 'BND21400', 'ASAS', '2500.00', '1000.00', '3600.00', '25000.00', '14500.00', '25000.00', '10.00', '10.00', '10.00', '10', '10.00', '6.00', 'ASADF', '2500', '3600', '4+1', '2500', 'IRON', '', '2016', '', '', 230, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productmaster14102016`
--

CREATE TABLE `productmaster14102016` (
  `id` int(11) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `productqty` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productmaster14102016`
--

INSERT INTO `productmaster14102016` (`id`, `productid`, `productname`, `productqty`, `status`) VALUES
(1, 'GK/PR/16-17/1', 'G5', 100, 0),
(2, 'GK/PR/16-17/2', 'K9', 150, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productmasterbypkp21102016`
--

CREATE TABLE `productmasterbypkp21102016` (
  `id` int(11) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `batteryPower` varchar(255) NOT NULL DEFAULT '0',
  `batteryModel` varchar(255) NOT NULL,
  `clsModel` varchar(255) NOT NULL,
  `disPric_excld` decimal(20,2) NOT NULL,
  `disPric_incld` decimal(20,2) NOT NULL,
  `dis2subPric_excld` decimal(20,2) NOT NULL,
  `dis2subPric_incld` decimal(20,2) NOT NULL,
  `sub2dis_excld` decimal(20,2) NOT NULL,
  `sub2dis_incld` decimal(20,2) NOT NULL,
  `vat` decimal(20,2) NOT NULL,
  `Sales` decimal(20,2) NOT NULL,
  `Road` decimal(20,2) NOT NULL,
  `custom` varchar(255) NOT NULL,
  `cst` decimal(20,2) NOT NULL,
  `servpaid` varchar(255) NOT NULL,
  `servday` varchar(255) NOT NULL,
  `motorPower` varchar(255) NOT NULL,
  `seatcap` varchar(255) NOT NULL,
  `grossvhc` varchar(255) NOT NULL,
  `bodyType` varchar(255) NOT NULL,
  `fuelUsed` varchar(255) NOT NULL,
  `mfgYear` varchar(255) NOT NULL,
  `unLoadwt` varchar(255) NOT NULL,
  `octrail` varchar(255) NOT NULL,
  `productqty` int(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productmasterbypkp21102016`
--

INSERT INTO `productmasterbypkp21102016` (`id`, `productid`, `brand`, `productname`, `batteryPower`, `batteryModel`, `clsModel`, `disPric_excld`, `disPric_incld`, `dis2subPric_excld`, `dis2subPric_incld`, `sub2dis_excld`, `sub2dis_incld`, `vat`, `Sales`, `Road`, `custom`, `cst`, `servpaid`, `servday`, `motorPower`, `seatcap`, `grossvhc`, `bodyType`, `fuelUsed`, `mfgYear`, `unLoadwt`, `octrail`, `productqty`, `status`) VALUES
(2, 'GK/PR/16/17/2', 'GK', 'K9', '1400kw', 'K302', 'asd', '12.00', '13.00', '12.00', '13.00', '12.00', '13.00', '12.00', '12.00', '12.00', '', '12.00', '10', '4.00', '25000rpm', '4+1', '210kg', 'Steel', '210lt', '20/08/2016', '150kg', '12', 100, 0),
(3, 'GK/PR/16-17/3', 'GK', 'G5', '1400kw', 'kjh', 'asd', '1203.00', '1235.00', '123.00', '1254.00', '1365.00', '1632.00', '10.20', '12.00', '12.30', '', '125.00', '10', '25', '1254rpm', '4+1', '250', 'asd', '125lt', '20/08/2016', '150', '10', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productmastervopy`
--

CREATE TABLE `productmastervopy` (
  `id` int(11) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `cnfprice` decimal(20,2) NOT NULL,
  `cnfpercentage` decimal(20,2) NOT NULL,
  `distprice` decimal(20,2) NOT NULL,
  `distpercentage` decimal(20,2) NOT NULL,
  `subdistprice` decimal(20,2) NOT NULL,
  `subdistpercentage` decimal(20,2) NOT NULL,
  `retailerprice` decimal(20,2) NOT NULL,
  `retailerpercentage` decimal(20,2) NOT NULL,
  `mainpr` decimal(20,2) NOT NULL,
  `batteryPower` varchar(255) NOT NULL DEFAULT '0',
  `batteryModel` varchar(255) NOT NULL,
  `clsModel` varchar(255) NOT NULL,
  `vat` decimal(20,2) NOT NULL,
  `Sales` decimal(20,2) NOT NULL,
  `Road` decimal(20,2) NOT NULL,
  `custom` varchar(255) NOT NULL,
  `cst` decimal(20,2) NOT NULL,
  `excise` decimal(10,2) NOT NULL,
  `servpaid` varchar(255) NOT NULL,
  `servday` varchar(255) NOT NULL,
  `motorPower` varchar(255) NOT NULL,
  `seatcap` varchar(255) NOT NULL,
  `grossvhc` varchar(255) NOT NULL,
  `bodyType` varchar(255) NOT NULL,
  `fuelUsed` varchar(255) NOT NULL,
  `mfgYear` varchar(255) NOT NULL,
  `unLoadwt` varchar(255) NOT NULL,
  `octrail` varchar(255) NOT NULL,
  `productqty` int(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productmastervopy`
--

INSERT INTO `productmastervopy` (`id`, `productid`, `brand`, `productname`, `cnfprice`, `cnfpercentage`, `distprice`, `distpercentage`, `subdistprice`, `subdistpercentage`, `retailerprice`, `retailerpercentage`, `mainpr`, `batteryPower`, `batteryModel`, `clsModel`, `vat`, `Sales`, `Road`, `custom`, `cst`, `excise`, `servpaid`, `servday`, `motorPower`, `seatcap`, `grossvhc`, `bodyType`, `fuelUsed`, `mfgYear`, `unLoadwt`, `octrail`, `productqty`, `status`) VALUES
(2, 'GK/PR/16-17/1', 'GK', 'G5', '2550.00', '2.00', '2700.00', '8.00', '2800.00', '12.00', '3000.00', '20.00', '2500.00', '1', '2', '3', '1.00', '2.00', '0.00', '5', '4.00', '3.00', '1', '2', '3', '4', '5', '6', '', '2016', '', '', 0, 0),
(3, 'GK/PR/16-17/2', 'GK', 'K9', '2550.00', '2.00', '2700.00', '8.00', '2800.00', '12.00', '3000.00', '20.00', '2500.00', '1', '2', '3', '1.00', '2.00', '0.00', '5', '4.00', '3.00', '1', '2', '3', '4', '5', '6', '', '2016', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_specification`
--

CREATE TABLE `product_specification` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `specification` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_specification`
--

INSERT INTO `product_specification` (`id`, `productid`, `specification`, `image`, `doe`, `status`) VALUES
(1, 1, 'Motor 1000W 48V', '', '5102016', 0),
(2, 1, 'Controller 24 Tube', '', '5102016', 0),
(3, 1, 'Tyre 3.40/12', '', '5102016', 0),
(4, 1, 'Weight 220KG (Approx)', '', '5102016', 0),
(5, 1, 'Spring Leaves 6 Leaves', '', '5102016', 0),
(6, 1, 'Breaks Break Drum', '', '5102016', 0),
(7, 1, 'Roof ABS', '', '5102016', 0),
(8, 1, 'Shocker Spring', '', '5102016', 0),
(9, 1, 'Seating Capacity 4+1', '', '5102016', 0),
(10, 1, 'Body Dimension 2750*950*1200 MM', '', '5102016', 0),
(11, 1, 'Charger 15AH / 48V', '', '5102016', 0),
(12, 1, 'Battery 12V*4 Pices (100AH)', '', '5102016', 0),
(13, 1, 'Rim 12 Alloy', '', '5102016', 0),
(14, 1, 'Head Light 12V LED', '', '5102016', 0),
(15, 1, 'Converter 12V', '', '5102016', 0),
(16, 1, 'Side Cover Full Body Leather Finish', '', '5102016', 0),
(17, 1, 'Wiper Motor System Auto Wiper', '', '5102016', 0),
(18, 1, 'Accessories Stenny Cover, Roof Light,Foot Mat Conductor Bag, Key Ring', '', '5102016', 0),
(19, 2, 'Motor 850W 48V', '', '5102016', 0),
(20, 2, 'Controller 24 Tube', '', '5102016', 0),
(21, 2, 'Tyre 3.40/12', '', '5102016', 0),
(22, 2, 'Weight 220KG (Approx)', '', '5102016', 0),
(23, 2, 'Spring Leaves 6 Leaves', '', '5102016', 0),
(24, 2, 'Breaks Break Drum', '', '5102016', 0),
(25, 2, 'Roof ABS', '', '5102016', 0),
(26, 2, 'Shocker Oil', '', '5102016', 0),
(27, 2, 'Seating Capacity 4+1', '', '5102016', 0),
(28, 2, 'Body Dimension 2750*950*1200 MM', '', '5102016', 0),
(29, 2, 'Charger 15AH / 48V', '', '5102016', 0),
(30, 2, 'Battery 12V*4 Pices (100AH)', '', '5102016', 0),
(31, 2, 'Rim 12?"? ALLOY', '', '5102016', 0),
(32, 2, 'Head Light 12V Led', '', '5102016', 0),
(33, 2, 'Converter 12V', '', '5102016', 0),
(34, 2, 'Side Cover Full Body Leather Finnish', '', '5102016', 0),
(35, 2, 'Meter Digital', '', '5102016', 0),
(36, 2, 'Key Sensor', '', '5102016', 0),
(37, 1, 'black', '', '', 0),
(38, 1, 'blue', '', '', 0),
(39, 1, 'BLACK', '', '', 0),
(40, 1, 'BLUE', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchasematerial`
--

CREATE TABLE `purchasematerial` (
  `id` int(11) NOT NULL,
  `invoiceno` varchar(255) NOT NULL,
  `supplierid` varchar(255) NOT NULL,
  `orderdate` varchar(55) NOT NULL,
  `delivrydate` varchar(55) NOT NULL,
  `refno` varchar(55) NOT NULL,
  `model` varchar(255) NOT NULL,
  `particulars` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `unitprice` decimal(20,2) NOT NULL,
  `totalprice` decimal(20,2) NOT NULL,
  `tax1` varchar(255) NOT NULL,
  `tax1per` decimal(20,2) NOT NULL,
  `tax1amnt` decimal(20,2) NOT NULL,
  `tax2` varchar(255) NOT NULL,
  `tax2per` decimal(20,2) NOT NULL,
  `tax2amnt` decimal(20,2) NOT NULL,
  `tax3` varchar(255) NOT NULL,
  `tax3per` decimal(20,2) NOT NULL,
  `tax3amnt` decimal(20,2) NOT NULL,
  `miss` decimal(20,2) NOT NULL,
  `gtotal` decimal(20,2) NOT NULL,
  `crtdby` varchar(255) NOT NULL,
  `doe` varchar(55) NOT NULL,
  `crtdid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasematerial`
--

INSERT INTO `purchasematerial` (`id`, `invoiceno`, `supplierid`, `orderdate`, `delivrydate`, `refno`, `model`, `particulars`, `qty`, `unitprice`, `totalprice`, `tax1`, `tax1per`, `tax1amnt`, `tax2`, `tax2per`, `tax2amnt`, `tax3`, `tax3per`, `tax3amnt`, `miss`, `gtotal`, `crtdby`, `doe`, `crtdid`, `status`) VALUES
(1, '542136', 'GKSUP00003', '2017-02-01', '2017-02-17', '121212', 'ER INDIA G-7', '3', 20, '20.00', '400.00', 'EXCISE', '2.00', '8.00', '', '0.00', '0.00', '', '0.00', '0.00', '100.00', '508.00', 'admin', '2017-02-06 09:11:54 AM', 1, 1),
(2, '121212', 'GKSUP00001', '2017-02-28', '2017-02-24', '1232', 'ER INDIA K-9', '196', 20, '20.00', '400.00', 'Excise', '6.00', '294.00', 'cst', '2.00', '103.88', '', '0.00', '0.00', '0.00', '5297.88', 'admin', '2017-02-07 05:38:17 AM', 1, 1),
(3, '121212', 'GKSUP00001', '2017-02-28', '2017-02-24', '1232', 'ER INDIA G-7S', '244', 450, '10.00', '4500.00', 'Excise', '6.00', '294.00', 'cst', '2.00', '103.88', '', '0.00', '0.00', '0.00', '5297.88', 'admin', '2017-02-07 05:38:17 AM', 1, 1),
(4, '125463', 'GKSUP00004', '2017-02-01', '2017-02-09', '23164', 'ER INDIA G-7', '117', 20, '200.00', '4000.00', 'Excise', '0.00', '0.00', '', '0.00', '0.00', '', '0.00', '0.00', '0.00', '4000.00', 'admin', '2017-02-08 08:43:58 AM', 1, 1),
(5, '54789', 'GKSUP00002', '2017-02-09', '2017-02-09', 'qqw', 'ER INDIA K-9', '106', 10, '10.00', '100.00', 'Excise', '5.00', '5.00', 'cst', '2.00', '2.10', '', '0.00', '0.00', '1540.00', '1647.10', 'admin', '2017-02-08 09:18:27 AM', 1, 0),
(6, '547896', 'GKSUP00003', '2017-02-02', '2017-02-09', '123456', 'ER INDIA G-7S', '281', 20, '2000.00', '40000.00', '', '0.00', '0.00', '', '0.00', '0.00', '', '0.00', '0.00', '0.00', '75000.00', 'admin', '2017-02-08 10:10:51 AM', 1, 1),
(7, '547896', 'GKSUP00003', '2017-02-02', '2017-02-09', '123456', 'ER INDIA G-7S', '68', 14, '2500.00', '35000.00', '', '0.00', '0.00', '', '0.00', '0.00', '', '0.00', '0.00', '0.00', '75000.00', 'admin', '2017-02-08 10:10:51 AM', 1, 1),
(8, '542163', 'GKSUP00001', '2017-02-02', '2017-02-10', '1254789', 'ER INDIA G-7', '8', 20, '20.00', '400.00', '', '0.00', '0.00', '', '0.00', '0.00', '', '0.00', '0.00', '0.00', '6400.00', 'admin', '2017-02-08 11:00:22 AM', 1, 1),
(9, '542163', 'GKSUP00001', '2017-02-02', '2017-02-10', '1254789', 'ER INDIA G-7', '5', 20, '250.00', '5000.00', '', '0.00', '0.00', '', '0.00', '0.00', '', '0.00', '0.00', '0.00', '6400.00', 'admin', '2017-02-08 11:00:22 AM', 1, 1),
(10, '542163', 'GKSUP00001', '2017-02-02', '2017-02-10', '1254789', 'ER INDIA G-7S', '73', 50, '20.00', '1000.00', '', '0.00', '0.00', '', '0.00', '0.00', '', '0.00', '0.00', '0.00', '6400.00', 'admin', '2017-02-08 11:00:22 AM', 1, 1),
(11, '47896', 'GKSUP00002', '2017-02-02', '2017-02-10', '47896', 'ER INDIA K-9', '34', 20, '20.00', '400.00', 'Excise', '5.00', '95.75', 'vat', '14.50', '291.56', '', '0.00', '0.00', '0.00', '2302.31', 'admin', '2017-02-08 11:26:52 AM', 1, 1),
(12, '47896', 'GKSUP00002', '2017-02-02', '2017-02-10', '47896', 'ER INDIA G-7S', '269', 30, '30.00', '900.00', 'Excise', '5.00', '95.75', 'vat', '14.50', '291.56', '', '0.00', '0.00', '0.00', '2302.31', 'admin', '2017-02-08 11:26:52 AM', 1, 1),
(13, '47896', 'GKSUP00002', '2017-02-02', '2017-02-10', '47896', 'ER INDIA G-7', '121', 41, '15.00', '615.00', 'Excise', '5.00', '95.75', 'vat', '14.50', '291.56', '', '0.00', '0.00', '0.00', '2302.31', 'admin', '2017-02-08 11:26:52 AM', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `id` int(11) NOT NULL,
  `poid` varchar(50) NOT NULL,
  `doe` varchar(25) NOT NULL,
  `refno` varchar(50) NOT NULL,
  `spareparts` text NOT NULL,
  `modelcode` text NOT NULL,
  `specification` text NOT NULL,
  `vendors` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`id`, `poid`, `doe`, `refno`, `spareparts`, `modelcode`, `specification`, `vendors`, `status`) VALUES
(29, 'GK/16/17/00001', '2016-12-13', 'REF/GK/16/17/00001', 'GK/PC/16-17/3;ER-INDIA-G7;50;9999\r\n											 	', 'GK/PR/16-17/1;ER-INDIA-G7;100;GK/PC/16-17/1_9999@200||GK/PC/16-17/2_1@200||GK/PC/16-17/3_9999@200||GK/PC/16-17/4_9999@500||GK/PC/16-17/5_9999@400||GK/PC/16-17/6_9999@400||GK/PC/16-17/7_9999@300||GK/PC/16-17/8_2@300||;25->1#25->2#25->3#25->4#', '', 'GK/201610035', 0),
(30, 'GK/16/17/00030', '2016-12-13', 'REF/GK/16/17/00030', 'GK/PC/16-17/7;ER-INDIA-G7;150;9999\r\n											 	', 'GK/PR/16-17/1;ER-INDIA-G7;55;GK/PC/16-17/1_9999@110||GK/PC/16-17/2_1@110||GK/PC/16-17/3_9999@110||GK/PC/16-17/4_9999@275||GK/PC/16-17/5_9999@220||GK/PC/16-17/6_9999@220||GK/PC/16-17/7_9999@165||GK/PC/16-17/8_2@165||;5->1#5->2#5->3#5->4#5->5#5->6#25->7#', '', 'GK/201610035', 0),
(31, 'GK/16/17/00031', '2016-12-13', 'REF/GK/16/17/00031', 'GK/PC/16-17/7;ER-INDIA-G7;150;9999\r\n											 	', '', '', 'GK/201610035', 0),
(32, 'GK/16/17/00032', '2016-12-15', 'REF/GK/16/17/00032', '', 'GK/PR/16-17/1;G5;250;GK/PC/16-17/1_9999@500||;250->1#', '', 'GK/201610035', 0),
(33, 'GK/16/17/00033', '2016-12-15', 'REF/GK/16/17/00033', '', 'GK/PR/16-17/1;G5;25;GK/PC/16-17/1_9999@750||;25->1#', '', 'GK/201610035', 0),
(34, 'GK/16/17/00034', '2016-12-30', 'REF/GK/16/17/00034', '', 'GK/PR/16-17/1;ER INDIA G-7;150;GK/PC/16-17/1_13@150||GK/PC/16-17/4_9999@150||GK/PC/16-17/5_9999@150||GK/PC/16-17/6_9999@150||GK/PC/16-17/7_9999@150||GK/PC/16-17/8_9999@150||GK/PC/16-17/9_9999@150||GK/PC/16-17/10_9999@150||GK/PC/16-17/11_9999@150||GK/PC/16-17/12_9999@150||GK/PC/16-17/13_9999@150||GK/PC/16-17/14_9999@300||GK/PC/16-17/15_9999@150||GK/PC/16-17/16_9999@300||GK/PC/16-17/17_9999@150||GK/PC/16-17/18_9999@300||GK/PC/16-17/19_9999@150||GK/PC/16-17/20_9999@150||GK/PC/16-17/21_1@600||GK/PC/16-17/22_9999@150||GK/PC/16-17/23_9999@150||GK/PC/16-17/24_9999@150||GK/PC/16-17/25_3@150||GK/PC/16-17/26_9999@150||GK/PC/16-17/27_7@150||GK/PC/16-17/28_9999@600||GK/PC/16-17/29_9@150||GK/PC/16-17/30_10@150||;50->1#100->2#', '', 'GK/201610035', 0),
(35, 'GK/17/18/00035', '2017-01-23', 'REF/GK/17/18/00035', '', 'GK/PR/16-17/1;ER INDIA G-7;5;GK/PC/16-17/1_14@5||GK/PC/16-17/4_9999@5||GK/PC/16-17/5_9999@5||GK/PC/16-17/6_9999@5||GK/PC/16-17/7_9999@5||GK/PC/16-17/8_9999@5||GK/PC/16-17/9_9999@5||GK/PC/16-17/10_9999@5||GK/PC/16-17/11_9999@5||GK/PC/16-17/12_9999@5||GK/PC/16-17/13_9999@5||GK/PC/16-17/14_9999@10||GK/PC/16-17/15_9999@5||GK/PC/16-17/16_9999@10||GK/PC/16-17/17_9999@5||GK/PC/16-17/18_9999@10||GK/PC/16-17/19_9999@5||GK/PC/16-17/20_9999@5||GK/PC/16-17/21_1@20||GK/PC/16-17/22_9999@5||GK/PC/16-17/23_9999@5||GK/PC/16-17/24_9999@5||GK/PC/16-17/25_3@5||GK/PC/16-17/26_9999@5||GK/PC/16-17/27_7@5||GK/PC/16-17/28_9999@20||GK/PC/16-17/29_9@5||GK/PC/16-17/30_10@5||GK/PC/16-17/108_9999@5||GK/PC/16-17/109_9999@5||GK/PC/16-17/110_9999@5||GK/PC/16-17/111_9999@5||GK/PC/16-17/112_9999@5||GK/PC/16-17/113_9999@5||GK/PC/16-17/114_9999@5||GK/PC/16-17/115_9999@10||GK/PC/16-17/116_9999@10||GK/PC/16-17/117_9999@5||GK/PC/16-17/118_9999@10||GK/PC/16-17/119_9999@40||GK/PC/16-17/120_9999@5||GK/PC/16-17/121_9999@5||GK/PC/16-17/122_9999@5||GK/PC/16-17/123_9999@20||GK/PC/16-17/124_9999@5||GK/PC/16-17/125_9999@5||GK/PC/16-17/126_9999@10||GK/PC/16-17/127_9999@10||GK/PC/16-17/128_9999@5||GK/PC/16-17/129_9999@5||GK/PC/16-17/130_9999@5||GK/PC/16-17/131_9999@5||GK/PC/16-17/132_9999@5||GK/PC/16-17/133_9999@10||GK/PC/16-17/134_9999@5||GK/PC/16-17/135_9999@5||GK/PC/16-17/136_9999@5||GK/PC/16-17/137_9999@5||GK/PC/16-17/138_9999@5||GK/PC/16-17/139_9999@20||GK/PC/16-17/140_9999@5||GK/PC/16-17/141_9999@5||GK/PC/16-17/142_9999@5||GK/PC/16-17/143_9999@5||GK/PC/16-17/144_9999@5||GK/PC/16-17/145_9999@5||GK/PC/16-17/146_9999@20||GK/PC/16-17/147_9999@10||GK/PC/16-17/148_9999@5||GK/PC/16-17/149_9999@20||GK/PC/16-17/150_9999@10||GK/PC/16-17/151_9999@10||GK/PC/16-17/152_9999@10||GK/PC/16-17/153_9999@5||GK/PC/16-17/154_9999@5||GK/PC/16-17/155_9999@10||GK/PC/16-17/156_9999@5||GK/PC/16-17/157_9999@10||GK/PC/16-17/158_9999@5||GK/PC/16-17/159_9999@5||GK/PC/16-17/160_9999@5||GK/PC/16-17/161_9999@10||;5->1#', '', 'GK/201610035', 0),
(36, 'GKPONO17012200036', '2017-01-24', 'REFGK17012200036', '', 'GKPR00001;ER INDIA G-7;10;GK/PC/16-17/1_13@10||GK/PC/16-17/4_9999@10||GK/PC/16-17/5_9999@10||GK/PC/16-17/6_9999@10||GK/PC/16-17/7_9999@10||GK/PC/16-17/8_9999@10||GK/PC/16-17/9_9999@10||GK/PC/16-17/10_9999@10||GK/PC/16-17/11_9999@10||GK/PC/16-17/12_9999@10||GK/PC/16-17/13_9999@10||GK/PC/16-17/14_9999@20||GK/PC/16-17/15_9999@10||GK/PC/16-17/16_9999@20||GK/PC/16-17/17_9999@10||GK/PC/16-17/18_9999@20||GK/PC/16-17/19_9999@10||GK/PC/16-17/20_9999@10||GK/PC/16-17/108_9999@10||GK/PC/16-17/109_9999@10||GK/PC/16-17/110_9999@10||GK/PC/16-17/111_9999@10||GK/PC/16-17/112_9999@10||GK/PC/16-17/113_9999@10||GK/PC/16-17/114_9999@10||GK/PC/16-17/115_9999@20||GK/PC/16-17/116_9999@20||GK/PC/16-17/117_9999@10||GK/PC/16-17/118_9999@20||GK/PC/16-17/119_9999@80||GK/PC/16-17/120_9999@10||GK/PC/16-17/121_9999@10||GK/PC/16-17/122_9999@10||GK/PC/16-17/123_9999@40||GK/PC/16-17/124_9999@10||GK/PC/16-17/125_9999@10||GK/PC/16-17/126_9999@20||GK/PC/16-17/127_9999@20||GK/PC/16-17/128_9999@10||GK/PC/16-17/129_9999@10||GK/PC/16-17/130_9999@10||GK/PC/16-17/131_9999@10||GK/PC/16-17/132_9999@10||GK/PC/16-17/133_9999@20||GK/PC/16-17/134_9999@10||GK/PC/16-17/135_9999@10||GK/PC/16-17/136_9999@10||GK/PC/16-17/137_9999@10||GK/PC/16-17/138_9999@10||GK/PC/16-17/139_9999@40||GK/PC/16-17/140_9999@10||GK/PC/16-17/141_9999@10||GK/PC/16-17/142_9999@10||GK/PC/16-17/143_9999@10||GK/PC/16-17/144_9999@10||GK/PC/16-17/145_9999@10||GK/PC/16-17/146_9999@40||GK/PC/16-17/147_9999@20||GK/PC/16-17/148_9999@10||GK/PC/16-17/149_9999@40||GK/PC/16-17/150_9999@20||GK/PC/16-17/151_9999@20||GK/PC/16-17/152_9999@20||GK/PC/16-17/153_9999@10||GK/PC/16-17/154_9999@10||GK/PC/16-17/155_9999@20||GK/PC/16-17/156_9999@10||GK/PC/16-17/157_9999@20||GK/PC/16-17/158_9999@10||GK/PC/16-17/159_9999@10||GK/PC/16-17/160_9999@10||GK/PC/16-17/161_9999@20||GK/PC/16-17/162_9999@10||GK/PC/16-17/163_9999@10||GK/PC/16-17/164_9999@20||GK/PC/16-17/165_9999@20||GK/PC/16-17/166_9999@10||GK/PC/16-17/167_9999@20||GK/PC/16-17/168_9999@40||;', '', 'GKSUP00004', 0),
(37, 'GKPONO17012400037', '2017-01-24', 'REFGK17012400037', '', 'GKPR00001;ER INDIA G-7;2;GKPC00001_9999@2||GKPC00002_9999@2||GKPC00003_9999@2||GKPC00004_9999@2||GKPC00005_9999@2||GKPC00006_9999@2||GKPC00007_9999@2||GKPC00008_9999@2||GKPC00009_9999@2||GKPC00010_9999@2||GKPC00011_9999@2||GKPC00012_9999@4||GKPC00013_9999@2||GKPC00014_9999@4||GKPC00015_9999@2||GKPC00016_9999@4||GKPC00017_9999@2||GKPC00018_9999@2||GKPC00019_9999@8||GKPC00020_9999@2||GKPC00021_9999@2||GKPC00022_9999@2||GKPC00023_9999@2||GKPC00024_9999@2||GKPC00025_9999@2||GKPC00026_9999@8||GKPC00027_9999@2||GKPC00028_9999@2||GKPC00106_9999@2||GKPC00107_9999@2||GKPC00108_9999@2||GKPC00109_9999@2||GKPC00110_9999@2||GKPC00111_9999@2||GKPC00112_9999@2||GKPC00113_9999@4||GKPC00114_9999@4||GKPC00115_9999@2||GKPC00116_9999@4||GKPC00117_9999@16||GKPC00118_9999@2||GKPC00119_9999@2||GKPC00120_9999@2||GKPC00121_9999@8||GKPC00122_9999@2||GKPC00123_9999@2||GKPC00124_9999@4||GKPC00125_9999@4||GKPC00126_9999@2||GKPC00127_9999@2||GKPC00128_9999@2||GKPC00129_9999@2||GKPC00130_9999@2||GKPC00131_9999@4||GKPC00132_9999@2||GKPC00133_9999@2||GKPC00134_9999@2||GKPC00135_9999@2||GKPC00136_9999@2||GKPC00137_9999@8||GKPC00138_9999@2||GKPC00139_9999@2||GKPC00140_9999@2||GKPC00141_9999@2||GKPC00142_9999@2||GKPC00143_9999@2||GKPC00144_9999@8||GKPC00145_9999@4||GKPC00146_9999@2||GKPC00147_9999@8||GKPC00148_9999@4||GKPC00149_9999@4||GKPC00150_9999@4||GKPC00151_9999@2||GKPC00152_9999@2||GKPC00153_9999@4||GKPC00154_9999@2||GKPC00155_9999@4||GKPC00156_9999@2||GKPC00157_9999@2||GKPC00158_9999@2||GKPC00159_9999@4||GKPC00160_9999@2||GKPC00161_9999@2||GKPC00162_9999@4||GKPC00163_9999@4||GKPC00164_9999@2||GKPC00165_9999@4||GKPC00166_9999@8||;2->1#', '', 'GKSUP00004', 0),
(38, 'GKPONO17012400038', '2017-01-24', 'REFGK17012400038', 'GKPC00117;ER INDIA G-7;400;9999\r\n											 	,GKPC00026;ER INDIA G-7;200;9999\r\n											 	,GKPC00019;ER INDIA G-7;200;9999\r\n											 	', '', '', 'GKSUP00004', 0),
(39, 'GKPONO17012400039', '2017-01-24', 'REFGK17012400039', 'GKPC00117;ER INDIA G-7;400;9999\r\n											 	,GKPC00026;ER INDIA G-7;160;9999\r\n											 	,GKPC00147;ER INDIA G-7;80;9999\r\n											 	', '', '', 'GKSUP00004,GKSUP00002', 0),
(40, 'GKPONO17021000040', '2017-02-10', 'REFGK17021000040', 'GKPC00254;ER INDIA G-7S;600;9999\r\n											 	,GKPC00231;ER INDIA G-7S;200;9999\r\n											 	,GKPC00095;ER INDIA G-7S;500;9999\r\n											 	', '', '', 'GKSUP00002', 0),
(41, 'GKPONO17021000041', '2017-02-10', 'REFGK17021000041', '', 'GKPR00001;ER INDIA G-7;20;GKPC00001_9999@20||GKPC00002_9999@20||GKPC00003_9999@20||GKPC00004_9999@20||GKPC00005_9999@20||GKPC00006_9999@20||GKPC00007_9999@20||GKPC00008_9999@20||GKPC00009_9999@20||GKPC00010_9999@20||GKPC00011_9999@20||GKPC00012_9999@40||GKPC00013_9999@20||GKPC00014_9999@40||GKPC00015_9999@20||GKPC00016_9999@40||GKPC00017_9999@20||GKPC00018_9999@20||GKPC00019_9999@80||GKPC00020_9999@20||GKPC00021_9999@20||GKPC00022_9999@20||GKPC00023_9999@20||GKPC00024_9999@20||GKPC00025_9999@20||GKPC00026_9999@80||GKPC00027_9999@20||GKPC00028_9999@20||GKPC00106_9999@20||GKPC00107_9999@20||GKPC00108_9999@20||GKPC00109_9999@20||GKPC00110_9999@20||GKPC00111_9999@20||GKPC00112_9999@20||GKPC00113_9999@40||GKPC00114_9999@40||GKPC00115_9999@20||GKPC00116_9999@40||GKPC00117_9999@160||GKPC00118_9999@20||GKPC00119_9999@20||GKPC00120_9999@20||GKPC00121_9999@80||GKPC00122_9999@20||GKPC00123_9999@20||GKPC00124_9999@40||GKPC00125_9999@40||GKPC00126_9999@20||GKPC00127_9999@20||GKPC00128_9999@20||GKPC00129_9999@20||GKPC00130_9999@20||GKPC00131_9999@40||GKPC00132_9999@20||GKPC00133_9999@20||GKPC00134_9999@20||GKPC00135_9999@20||GKPC00136_9999@20||GKPC00137_9999@80||GKPC00138_9999@20||GKPC00139_9999@20||GKPC00140_9999@20||GKPC00141_9999@20||GKPC00142_9999@20||GKPC00143_9999@20||GKPC00144_9999@80||GKPC00145_9999@40||GKPC00146_9999@20||GKPC00147_9999@80||GKPC00148_9999@40||GKPC00149_9999@40||GKPC00150_9999@40||GKPC00151_9999@20||GKPC00152_9999@20||GKPC00153_9999@40||GKPC00154_9999@20||GKPC00155_9999@40||GKPC00156_9999@20||GKPC00157_9999@20||GKPC00158_9999@20||GKPC00159_9999@40||GKPC00160_9999@20||GKPC00161_9999@20||GKPC00162_9999@40||GKPC00163_9999@40||GKPC00164_9999@20||GKPC00165_9999@40||GKPC00166_9999@80||;10->1#10->2#', '', 'GKSUP00002', 0),
(42, 'GKPONO17021100042', '2017-02-11', 'REFGK17021100042', '', 'GKPR00001;ER INDIA G-7;50;GKPC00001_9999@50||GKPC00002_9999@50||GKPC00003_9999@50||GKPC00004_9999@50||GKPC00005_9999@50||GKPC00006_9999@50||GKPC00007_9999@50||GKPC00008_9999@50||GKPC00009_9999@50||GKPC00010_9999@50||GKPC00011_9999@50||GKPC00012_9999@100||GKPC00013_9999@50||GKPC00014_9999@100||GKPC00015_9999@50||GKPC00016_9999@100||GKPC00017_9999@50||GKPC00018_9999@50||GKPC00019_9999@200||GKPC00020_9999@50||GKPC00021_9999@50||GKPC00022_9999@50||GKPC00023_9999@50||GKPC00024_9999@50||GKPC00025_9999@50||GKPC00026_9999@200||GKPC00027_9999@50||GKPC00028_9999@50||GKPC00106_9999@50||GKPC00107_9999@50||GKPC00108_9999@50||GKPC00109_9999@50||GKPC00110_9999@50||GKPC00111_9999@50||GKPC00112_9999@50||GKPC00113_9999@100||GKPC00114_9999@100||GKPC00115_9999@50||GKPC00116_9999@100||GKPC00117_9999@400||GKPC00118_9999@50||GKPC00119_9999@50||GKPC00120_9999@50||GKPC00121_9999@200||GKPC00122_9999@50||GKPC00123_9999@50||GKPC00124_9999@100||GKPC00125_9999@100||GKPC00126_9999@50||GKPC00127_9999@50||GKPC00128_9999@50||GKPC00129_9999@50||GKPC00130_9999@50||GKPC00131_9999@100||GKPC00132_9999@50||GKPC00133_9999@50||GKPC00134_9999@50||GKPC00135_9999@50||GKPC00136_9999@50||GKPC00137_9999@200||GKPC00138_9999@50||GKPC00139_9999@50||GKPC00140_9999@50||GKPC00141_9999@50||GKPC00142_9999@50||GKPC00143_9999@50||GKPC00144_9999@200||GKPC00145_9999@100||GKPC00146_9999@50||GKPC00147_9999@200||GKPC00148_9999@100||GKPC00149_9999@100||GKPC00150_9999@100||GKPC00151_9999@50||GKPC00152_9999@50||GKPC00153_9999@100||GKPC00154_9999@50||GKPC00155_9999@100||GKPC00156_9999@50||GKPC00157_9999@50||GKPC00158_9999@50||GKPC00159_9999@100||GKPC00160_9999@50||GKPC00161_9999@50||GKPC00162_9999@100||GKPC00163_9999@100||GKPC00164_9999@50||GKPC00165_9999@100||GKPC00166_9999@200||;10->1#10->2#10->3#10->4#10->5#,GKPR00002;ER INDIA K-9;50;GKPC00029_9999@50||GKPC00030_9999@50||GKPC00031_9999@50||GKPC00032_9999@100||GKPC00033_9999@50||GKPC00034_9999@100||GKPC00036_9999@50||GKPC00037_9999@100||GKPC00038_9999@50||GKPC00039_9999@50||GKPC00040_9999@50||GKPC00041_9999@100||GKPC00042_9999@50||GKPC00043_9999@50||GKPC00044_9999@50||GKPC00045_9999@100||GKPC00046_9999@50||GKPC00047_9999@100||GKPC00048_9999@50||GKPC00049_9999@50||GKPC00050_9999@50||GKPC00051_9999@50||GKPC00052_9999@50||GKPC00053_9999@50||GKPC00054_9999@50||GKPC00055_9999@50||GKPC00056_9999@50||GKPC00057_9999@250||GKPC00058_9999@100||GKPC00059_9999@100||GKPC00060_9999@100||GKPC00061_9999@50||GKPC00062_9999@200||GKPC00063_9999@50||GKPC00104_9999@200||GKPC00105_9999@100||GKPC00167_9999@50||GKPC00168_9999@50||GKPC00169_9999@50||GKPC00170_9999@50||GKPC00171_9999@50||GKPC00172_9999@50||GKPC00173_9999@50||GKPC00174_9999@50||GKPC00175_9999@50||GKPC00176_9999@100||GKPC00177_9999@100||GKPC00178_9999@50||GKPC00179_9999@50||GKPC00180_9999@50||GKPC00181_9999@50||GKPC00182_9999@50||GKPC00183_9999@50||GKPC00184_9999@50||GKPC00185_9999@50||GKPC00186_9999@200||GKPC00187_9999@50||GKPC00188_9999@200||GKPC00189_9999@100||GKPC00190_9999@100||GKPC00191_9999@100||GKPC00192_9999@50||GKPC00193_9999@50||GKPC00194_9999@100||GKPC00195_9999@100||GKPC00196_9999@50||GKPC00197_9999@50||GKPC00198_9999@50||GKPC00199_9999@50||GKPC00200_9999@300||GKPC00201_9999@200||GKPC00202_9999@100||GKPC00203_9999@50||GKPC00204_9999@100||GKPC00205_9999@50||GKPC00206_9999@50||GKPC00207_9999@50||GKPC00208_9999@100||GKPC00209_9999@50||GKPC00210_9999@50||GKPC00211_9999@100||GKPC00212_9999@50||GKPC00213_9999@50||GKPC00214_9999@100||GKPC00215_9999@600||GKPC00216_9999@50||GKPC00217_9999@50||GKPC00218_9999@100||GKPC00219_9999@50||;10->1#10->2#10->3#10->4#10->5#,GKPR00003;ER INDIA G-7S;50;GKPC00035_9999@50||GKPC00064_9999@50||GKPC00065_9999@50||GKPC00066_9999@50||GKPC00067_9999@100||GKPC00068_9999@100||GKPC00069_9999@50||GKPC00070_9999@100||GKPC00071_9999@200||GKPC00072_9999@50||GKPC00073_9999@50||GKPC00074_9999@100||GKPC00075_9999@50||GKPC00076_9999@50||GKPC00077_9999@50||GKPC00078_9999@100||GKPC00079_9999@50||GKPC00080_9999@50||GKPC00081_9999@50||GKPC00082_9999@100||GKPC00083_9999@50||GKPC00084_9999@100||GKPC00085_9999@50||GKPC00086_9999@50||GKPC00087_9999@50||GKPC00088_9999@100||GKPC00089_9999@50||GKPC00090_9999@50||GKPC00091_9999@50||GKPC00092_9999@50||GKPC00093_9999@50||GKPC00094_9999@50||GKPC00095_9999@250||GKPC00096_9999@100||GKPC00097_9999@100||GKPC00098_9999@100||GKPC00099_9999@50||GKPC00100_9999@50||GKPC00101_9999@200||GKPC00102_9999@100||GKPC00103_9999@50||GKPC00223_9999@50||GKPC00224_9999@50||GKPC00225_9999@50||GKPC00226_9999@100||GKPC00227_9999@50||GKPC00228_9999@50||GKPC00229_9999@50||GKPC00230_9999@50||GKPC00231_9999@200||GKPC00232_9999@50||GKPC00233_9999@50||GKPC00234_9999@50||GKPC00235_9999@100||GKPC00236_9999@100||GKPC00237_9999@50||GKPC00238_9999@50||GKPC00239_9999@300||GKPC00240_9999@100||GKPC00241_9999@100||GKPC00242_9999@50||GKPC00243_9999@100||GKPC00244_9999@50||GKPC00245_9999@50||GKPC00246_9999@50||GKPC00247_9999@50||GKPC00248_9999@50||GKPC00249_9999@50||GKPC00250_9999@100||GKPC00251_9999@50||GKPC00252_9999@50||GKPC00253_9999@50||GKPC00254_9999@600||GKPC00255_9999@50||GKPC00256_9999@50||GKPC00257_9999@50||GKPC00258_9999@50||GKPC00259_9999@50||GKPC00260_9999@50||GKPC00261_9999@50||GKPC00262_9999@50||GKPC00263_9999@50||GKPC00264_9999@100||GKPC00265_9999@50||GKPC00266_9999@50||GKPC00267_9999@50||GKPC00268_9999@50||GKPC00269_9999@50||GKPC00270_9999@50||;10->1#10->2#10->3#10->4#10->5#', '', 'GKSUP00002', 0),
(43, 'GKPONO17021300043', '2017-02-13', 'REFGK17021300043', 'GKPC00117;ER INDIA G-7;80;9999\r\n											 	,GKPC00026;ER INDIA G-7;40;9999\r\n											 	', '', '', 'GKSUP00002', 0),
(44, 'GKPONO17021400044', '2017-02-14', 'REFGK17021400044', 'GKPC00001;ER INDIA G-7;20;9999\r\n											 	', '', '', 'GKSUP00002', 0),
(45, 'GKPONO17021400045', '2017-02-14', 'REFGK17021400045', '', 'GKPR00001;ER INDIA G-7;5;GKPC00001_9999@5||GKPC00002_9999@5||GKPC00003_9999@5||GKPC00004_9999@5||GKPC00119_9999@5||;5->1#', '', 'GKSUP00002', 0),
(46, 'GKPONO17021400045', '2017-02-14', 'REFGK17021400045', '', 'GKPR00001;ER INDIA G-7;5;GKPC00001_9999@5||GKPC00002_9999@5||GKPC00003_9999@5||GKPC00004_9999@5||GKPC00119_9999@5||;5->1#', '', 'GKSUP00002', 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseprice`
--

CREATE TABLE `purchaseprice` (
  `id` int(11) NOT NULL,
  `pono` varchar(255) NOT NULL,
  `venid` varchar(255) NOT NULL,
  `dop` varchar(55) NOT NULL,
  `allpr` longtext NOT NULL,
  `tax` text NOT NULL,
  `custom` decimal(20,2) NOT NULL,
  `clrg` decimal(20,2) NOT NULL,
  `lbchr` decimal(20,2) NOT NULL,
  `transport` decimal(20,2) NOT NULL,
  `qty` int(20) NOT NULL,
  `transportnae` varchar(255) NOT NULL,
  `tottransport` decimal(20,2) NOT NULL,
  `othex1` text NOT NULL,
  `doe` varchar(55) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crtd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseprice`
--

INSERT INTO `purchaseprice` (`id`, `pono`, `venid`, `dop`, `allpr`, `tax`, `custom`, `clrg`, `lbchr`, `transport`, `qty`, `transportnae`, `tottransport`, `othex1`, `doe`, `status`, `crtd`) VALUES
(1, 'GK/16/17/00033', 'GK/201610035', '2016-12-15', 'G5;GK/PC/16-17/1;BACK SET BOX;7500.00;10;7500.00;40.661333333333', 'sales(10%);750', '6.67', '3.33', '3.33', '0.00', 0, '', '0.00', ';16.16,;0.16', '2016-12-15 09:39:59 PM', 0, 'admin'),
(2, 'GK/16/17/00001', 'GK/201610035', '2016-12-15', 'ER-INDIA-G7;GK/PC/16-17/1;BACK SET BOX;24000.00;120;24000.00;148.19607843137,ER-INDIA-G7;GK/PC/16-17/2;BACK SET BOX2;20000.00;100;20000.00;128.19607843137,ER-INDIA-G7;GK/PC/16-17/3;HANDLE;20000.00;100;20000.00;128.19607843137,ER-INDIA-G7;GK/PC/16-17/4;BOX COVER;125000.00;250;125000.00;278.19607843137,ER-INDIA-G7;GK/PC/16-17/5;BAG;80000.00;200;80000.00;228.19607843137,ER-INDIA-G7;GK/PC/16-17/6;BASKET BOX;100000.00;250;100000.00;278.19607843137,ER-INDIA-G7;GK/PC/16-17/7;CHARGER;75000.00;250;75000.00;278.19607843137,ER-INDIA-G7;GK/PC/16-17/8;CHASSIS;60000.00;200;60000.00;228.19607843137,ER-INDIA-G7;GK/PC/16-17/3;HANDLE;5000.00;100;5000.00;128.19607843137', 'sales tax(10%);50900', '0.98', '1.96', '1.96', '0.00', 0, '', '0.00', 'SADF;1.37,SDSAD;1.96', '2016-12-15 04:52:26 PM', 0, 'admin'),
(3, 'GK/PC/16-17/0014', '', '2016-12-16', 'ER INDIA G-7;GK/PC/16-17/1;BACK SET BOX;25;250;6250.00;3452.380952381,ER INDIA G-7;GK/PC/16-17/8;CHASSIS;59;20000;1180000.00;23202.380952381', 'asad(5%);25000,sdfsdf(10%);14000', '535.71', '595.24', '595.24', '416.67', 84, 'adada', '417.00', 'ffdg;595.24', '2016-12-16 01:30:32 AM', 0, 'admin'),
(4, 'asdef1212', '', '2016-12-16', 'ER INDIA G-7;GK/PC/16-17/1;BACK SET BOX;30;100;3000.00;111.85965848453,ER INDIA G-7;GK/PC/16-17/2;BACK SET BOX2;25;102;2550.00;113.85965848453,ER INDIA G-7;GK/PC/16-17/5;BAG;20;250;5000.00;261.85965848453,ER INDIA G-7;GK/PC/16-17/6;BASKET BOX;40;250;10000.00;261.85965848453,ER INDIA G-7;GK/PC/16-17/120;BATTERY;15;250;3750.00;261.85965848453,ER INDIA G-7;GK/PC/16-17/4;BOX COVER;15;253;3795.00;264.85965848453,ER INDIA G-7;GK/PC/16-17/7;CHARGER;36;130;4680.00;141.85965848453,ER INDIA G-7;GK/PC/16-17/8;CHASSIS;45;205;9225.00;216.85965848453,ER INDIA G-7;GK/PC/16-17/9;CLAMP SET;48;250;12000.00;261.85965848453,ER INDIA G-7;GK/PC/16-17/10;COVER SET;120;360;43200.00;371.85965848453,ER INDIA G-7;GK/PC/16-17/11;DIFFENTIAL;14;520;7280.00;531.85965848453,ER INDIA G-7;GK/PC/16-17/12;DRIVER SET BOX;256;20;5120.00;31.859658484525,ER INDIA G-7;GK/PC/16-17/13;FASTAID BOX;140;10;1400.00;21.859658484525,ER INDIA G-7;GK/PC/16-17/14;FOOT MAT;1500;10;15000.00;21.859658484525,ER INDIA G-7;GK/PC/16-17/15;GLASS SET;525;25;13125.00;36.859658484525,ER INDIA G-7;GK/PC/16-17/3;HANDLE;145;25;3625.00;36.859658484525,ER INDIA G-7;GK/PC/16-17/30;HEAD LIGHT;360;25;9000.00;36.859658484525,ER INDIA G-7;GK/PC/16-17/16;KAMANI;25;14;350.00;25.859658484525,ER INDIA G-7;GK/PC/16-17/17;LEG GURD;15;10;150.00;21.859658484525,ER INDIA G-7;GK/PC/16-17/18;MIDDLE FOOT REST SHEET / ALUMUNIM SET;25;36;900.00;47.859658484525,ER INDIA G-7;GK/PC/16-17/19;MIDDLE SET BOX;45;20;900.00;31.859658484525,ER INDIA G-7;GK/PC/16-17/20;MOTOR;52;52;2704.00;63.859658484525,ER INDIA G-7;GK/PC/16-17/21;RIM;52;25;1300.00;36.859658484525,ER INDIA G-7;GK/PC/16-17/22;ROOF;25;25;625.00;36.859658484525,ER INDIA G-7;GK/PC/16-17/23;ROOF STAKCHER;14;25;350.00;36.859658484525,ER INDIA G-7;GK/PC/16-17/24;SEAT SET;36;25;900.00;36.859658484525,ER INDIA G-7;GK/PC/16-17/25;SOUND PLATE STAND;25;36;900.00;47.859658484525,ER INDIA G-7;GK/PC/16-17/26;STAPNY COVER;35;25;875.00;36.859658484525,ER INDIA G-7;GK/PC/16-17/27;STICKER;20;20;400.00;31.859658484525,ER INDIA G-7;GK/PC/16-17/29;TOTO COVER;25;26;650.00;37.859658484525,ER INDIA G-7;GK/PC/16-17/28;TYRE TUBE;20;30;600.00;41.859658484525', 'asad;200,ddf;250,dfdsfd;2500', '1.33', '2.67', '2.67', '4.00', 3748, 'ssddsa', '4.00', 'SDSAD;0.40', '2016-12-16 02:57:33 AM', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseqatation`
--

CREATE TABLE `purchaseqatation` (
  `id` int(11) NOT NULL,
  `venderid` varchar(255) NOT NULL,
  `qatationno` varchar(255) NOT NULL,
  `purchaseorderno` varchar(255) NOT NULL,
  `purchasedate` varchar(25) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchasetax`
--

CREATE TABLE `purchasetax` (
  `id` int(11) NOT NULL,
  `taxhead` varchar(255) NOT NULL,
  `taxper` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasetax`
--

INSERT INTO `purchasetax` (`id`, `taxhead`, `taxper`, `status`) VALUES
(1, 'Excise', '6.00', 0),
(2, 'Vat', '5.00', 0),
(3, 'Cst', '2.00', 0),
(4, 'Custom Duty', '10.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pvoucher`
--

CREATE TABLE `pvoucher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pan` varchar(55) NOT NULL,
  `invoiceno` varchar(255) NOT NULL,
  `payby` varchar(255) NOT NULL,
  `amnt` decimal(20,2) NOT NULL,
  `tdsamnt` decimal(20,2) NOT NULL,
  `interest` decimal(20,2) NOT NULL,
  `intrestamnt` decimal(20,2) NOT NULL,
  `chqno` varchar(255) NOT NULL,
  `acno` varchar(255) NOT NULL,
  `doe` varchar(55) NOT NULL,
  `dos` varchar(55) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `accountgroup` varchar(255) NOT NULL,
  `clgdte` varchar(255) NOT NULL,
  `apprvby` varchar(255) NOT NULL,
  `remarkapprve` text NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `tdsid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pvoucher`
--

INSERT INTO `pvoucher` (`id`, `name`, `pan`, `invoiceno`, `payby`, `amnt`, `tdsamnt`, `interest`, `intrestamnt`, `chqno`, `acno`, `doe`, `dos`, `purpose`, `accountgroup`, `clgdte`, `apprvby`, `remarkapprve`, `crtd`, `status`, `tdsid`) VALUES
(2, 'pankaj patra', 'pankaj patra', '54321', '', '5400.00', '270.00', '0.00', '0.00', '123456', '54321', '2017-01-26', '2017-01-26 10:18:47 AM', 'Rent', '', '', '', '', 'admin', 0, ''),
(3, 'pankaj patra', 'pankaj patra', '54321', '', '54000.00', '2700.00', '0.00', '0.00', '123456', '54321', '2017-01-26', '2017-01-26 10:27:36 AM', 'Rent', '', '', '', '', 'admin', 0, ''),
(6, 'TDS PAYEE', '', '', 'CASH', '5000.00', '0.00', '0.00', '0.00', '', '', '2017-01-27', '2017-01-27 01:26:57 AM', 'For TDS return', '', '2017-01-30', 'admin', 'asdads', 'admin', 1, '1'),
(7, 'TDS PAYEE', '', '', 'CHEQUE', '2970.00', '0.00', '0.00', '0.00', '2547893', '54321', '2017-01-27', '2017-01-27 01:27:16 AM', 'For TDS return', '', '2017-01-30', 'admin', 'fssfs', 'admin', 1, '2,3'),
(8, 'abhijit sanyal', 'sfdsf1221', '', '', '48600.00', '5400.00', '0.00', '0.00', '1121', '54321', '2017-01-27', '2017-01-27 11:53:59 AM', 'Misscle.', '', '', '', '', 'admin', 0, ''),
(9, 'TDS PAYEE', '', '', 'CASH', '500.00', '0.00', '0.00', '0.00', '', '', '2017-01-31', '2017-01-31 06:46:07 PM', 'For TDS return', '', '', 'admin', 'For tds return ', 'admin', 1, '7'),
(10, 'TDS PAYEE', '', '', 'CHEQUE', '5400.00', '0.00', '0.00', '0.00', '44454', '123456', '2017-01-31', '2017-01-31 06:50:25 PM', 'For TDS return', '', '2017-01-24', 'admin', 'ggh', 'admin', 1, '5'),
(11, 'TDS PAYEE', '', '', 'CHEQUE', '1000.00', '0.00', '0.00', '0.00', '', '123456', '2017-01-31', '2017-01-31 08:44:46 PM', 'For TDS return', '', '2017-01-31', 'admin', 'dfdf', 'admin', 1, '8'),
(12, 'TDS PAYEE', '', '', 'CHEQUE', '1500.00', '0.00', '500.00', '2000.00', '54236', '123456', '2017-02-06', '2017-02-06 08:58:48 PM', 'For TDS return', '', '', '', '', 'admin', 0, '6'),
(13, 'pankaj patra', '', '', '', '5400.00', '0.00', '0.00', '0.00', '54321456', '54321', '2017-02-07', '2017-02-07 01:11:34 PM', 'Drawee', '', '2017-02-15', 'admin', '', 'admin', 1, ''),
(20, 'samaresh club', '', '', 'CASH', '2500.00', '0.00', '0.00', '0.00', '', '', '2017-02-07', '2017-02-07 05:40:38 PM', 'Publicity Exp.', '15', '2017-02-07', 'admin', '54jhkh', 'admin', 1, ''),
(21, 'abc pvt ltd', '', '', 'CASH', '5000.00', '0.00', '0.00', '0.00', '', '', '2017-02-07', '2017-02-07 05:56:59 PM', 'Driving Allawonce', '14', '2017-02-08', 'admin', 'aasas', 'admin', 1, ''),
(22, 'srbadaya puja cometee', '', '', 'CASH', '1500.00', '0.00', '0.00', '0.00', '', '', '2017-02-07', '2017-02-07 06:30:02 PM', 'Puja Exp.', '15', '2017-02-07', 'admin', 'sfddffdfg', 'admin', 1, ''),
(23, 'nABADAY SANGHA', '123546', '', 'CHEQUE', '47500.00', '2500.00', '0.00', '0.00', '123456', '54321', '2017-02-07', '2017-02-07 06:36:06 PM', 'Electric Bill', '14', '2017-02-08', 'admin', 'ERRETE', 'admin', 1, ''),
(24, 'DEFGHIJKLM ', '', '', 'CASH', '5400.00', '0.00', '0.00', '0.00', '', '', '2017-02-07', '2017-02-07 07:54:01 PM', 'Mobile & Telephone Exp.', '15', '2017-02-08', 'admin', 'FSGFGFDG', 'admin', 1, ''),
(25, 'BGSGSDSD', '', '', 'CASH', '2540.00', '0.00', '0.00', '0.00', '', '', '2017-02-07', '2017-02-07 08:04:13 PM', 'Mobile & Telephone Exp.', '15', '2017-02-08', 'admin', 'AASA', 'admin', 1, ''),
(26, 'sssdsd', '', '', 'CASH', '5000.00', '0.00', '0.00', '0.00', '', '', '2017-02-07', '2017-02-07 08:27:17 PM', 'Bank Charge', '14', '2017-02-08', 'admin', 'bjhj', 'admin', 1, ''),
(27, 'Shantanu Ghoshal', '', '', 'CHEQUE', '1500.00', '0.00', '0.00', '0.00', '542136', '54321', '2017-02-07', '2017-02-07 08:30:06 PM', 'Bank Charge', '14', '2017-02-08', 'admin', 'aasa', 'admin', 1, ''),
(28, 'ssdsd', '', '', 'CHEQUE', '2500.00', '0.00', '0.00', '0.00', '547632', '54321', '2017-02-07', '2017-02-07 08:35:35 PM', 'Bank Charge', '14', '2017-02-08', 'admin', 'ssdsdsd', 'admin', 1, ''),
(29, 'sdfdsf', '', '', 'CASH', '1500.00', '0.00', '0.00', '0.00', '', '', '2017-02-07', '2017-02-07 08:51:41 PM', 'Publicity Exp.', '14', '2017-02-08', 'admin', 'drrtt', 'admin', 1, ''),
(30, 'dffdgdf', '', '', 'CASH', '2500.00', '0.00', '0.00', '0.00', '', '', '2017-02-07', '2017-02-07 08:54:44 PM', 'Bank Charge', '14', '2017-02-08', 'admin', 'fggfgfg', 'admin', 1, ''),
(31, 'dfgdfgdg', '', '', 'CASH', '5000.00', '0.00', '0.00', '0.00', '', '', '2017-02-07', '2017-02-07 09:00:57 PM', 'Consultancy Paid', '14', '2017-02-08', 'admin', 'zdsdfsg', 'admin', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(11) NOT NULL,
  `qtid` varchar(255) NOT NULL,
  `venid` varchar(255) NOT NULL,
  `poid` varchar(255) NOT NULL,
  `parts` text NOT NULL,
  `model` text NOT NULL,
  `fstpmnt` varchar(255) NOT NULL,
  `ndpmnt` varchar(255) NOT NULL,
  `thrdpmnt` varchar(255) NOT NULL,
  `contc` varchar(255) NOT NULL,
  `noc` int(20) NOT NULL,
  `trnsportnme` varchar(255) NOT NULL,
  `trnsprtphno` varchar(255) NOT NULL,
  `trnsprtemail` varchar(255) NOT NULL,
  `insurance` varchar(255) NOT NULL,
  `procdate` varchar(255) NOT NULL,
  `disdate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `currencytyp` varchar(20) NOT NULL,
  `tax` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`id`, `qtid`, `venid`, `poid`, `parts`, `model`, `fstpmnt`, `ndpmnt`, `thrdpmnt`, `contc`, `noc`, `trnsportnme`, `trnsprtphno`, `trnsprtemail`, `insurance`, `procdate`, `disdate`, `total`, `currencytyp`, `tax`, `file`, `doe`, `status`) VALUES
(12, 'GK/16/17/00001', 'GK/201610035', 'GK/16/17/00001', 'GK/PC/16-17/3;ER-INDIA-G7;50;100;5000.00;25', 'ER-INDIA-G7;100;GK/PC/16-17/1;9999;200;120;24000.00;25,ER-INDIA-G7;100;GK/PC/16-17/2;1;200;100;20000.00;25,ER-INDIA-G7;100;GK/PC/16-17/3;9999;200;100;20000.00;25,ER-INDIA-G7;100;GK/PC/16-17/4;9999;500;250;125000.00;52,ER-INDIA-G7;100;GK/PC/16-17/5;9999;400;200;80000.00;62,ER-INDIA-G7;100;GK/PC/16-17/6;9999;400;250;100000.00;6,ER-INDIA-G7;100;GK/PC/16-17/7;9999;300;250;75000.00;69,ER-INDIA-G7;100;GK/PC/16-17/8;2;300;200;60000.00;58', '559900', '', '', 'Contain', 20, 'asas', '123456', '', '', '12/15/2016', '12/22/2016', '559900.00', 'inr', 'sales tax;10;50900.00', '', '2016-12-13', 0),
(13, 'GK/16/17/00031', 'GK/201610035', 'GK/16/17/00031', 'GK/PC/16-17/7;ER-INDIA-G7;150;250;37500.00;25', '', '43312.50', '', '', 'Contain', 20, 'awe', '1212321', 'ddf@gmail.com', 'srert', '12/22/2016', '12/31/2016', '43312.50', 'inr', 'sdsds;5;1875.00,mnbjghb;10;3937.50', '', '2016-12-13', 0),
(14, 'GK/16/17/00032', 'GK/201610035', 'GK/16/17/00032', '', 'G5;250;GK/PC/16-17/1;9999;500;120;60000.00;25', '67098', '', '', 'Contain', 20, 'ASASA', '12121', 'AADR@GMAIL.COM', 'AEDWEW', '12/16/2016', '12/24/2016', '67098.00', 'inr', 'SALES;5;3300.00,ROAD;6;3798.00', '', '2016-12-15', 0),
(15, 'GK/16/17/00033', 'GK/201610035', 'GK/16/17/00033', '', 'G5;25;GK/PC/16-17/1;9999;750;100;75000.00;25', '83250', '', '', 'Contain', 20, 'ffd', '231', 'sdffds@gmail.com', 'dfg', '12/22/2016', '12/17/2016', '83250.00', 'inr', 'sales;10;8250.00', '', '2016-12-15', 0),
(16, 'GK/17/18/00035', 'GK/201610035', 'GK/17/18/00035', '', 'ER INDIA G-7;5;GK/PC/16-17/1;14;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/4;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/5;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/6;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/7;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/8;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/9;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/10;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/11;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/12;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/13;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/14;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/15;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/16;9999;10;2;20.00;,ER INDIA G-7;5;GK/PC/16-17/17;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/18;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/19;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/20;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/21;1;20;1;20.00;,ER INDIA G-7;5;GK/PC/16-17/22;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/23;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/24;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/25;3;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/26;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/27;7;5;1;;,ER INDIA G-7;5;GK/PC/16-17/28;9999;20;1;20.00;,ER INDIA G-7;5;GK/PC/16-17/29;9;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/30;10;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/108;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/109;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/110;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/111;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/112;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/113;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/114;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/115;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/116;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/117;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/118;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/119;9999;40;1;40.00;,ER INDIA G-7;5;GK/PC/16-17/120;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/121;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/122;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/123;9999;20;1;20.00;,ER INDIA G-7;5;GK/PC/16-17/124;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/125;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/126;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/127;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/128;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/129;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/130;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/131;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/132;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/133;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/134;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/135;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/136;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/137;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/138;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/139;9999;20;1;20.00;,ER INDIA G-7;5;GK/PC/16-17/140;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/141;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/142;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/143;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/144;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/145;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/146;9999;20;1;20.00;,ER INDIA G-7;5;GK/PC/16-17/147;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/148;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/149;9999;20;1;20.00;,ER INDIA G-7;5;GK/PC/16-17/150;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/151;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/152;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/153;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/154;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/155;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/156;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/157;9999;10;1;10.00;,ER INDIA G-7;5;GK/PC/16-17/158;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/159;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/160;9999;5;1;5.00;,ER INDIA G-7;5;GK/PC/16-17/161;9999;10;1;10.00;', '50', '5.16', '', 'Contain', 10, 'ds', '455', 'sdfs@gmail.com', '', '01/25/2017', '01/26/2017', '55.16', 'inr', 'fdgf;2;1.00,dfgd;3;1.53,dfg;5;2.63', '', '2017-01-23', 0),
(17, 'GK/17/18/00036', 'GKSUP00004', 'GK/17/18/00036', '', 'ER INDIA G-7;10;GK/PC/16-17/1;13;10;2;;,ER INDIA G-7;10;GK/PC/16-17/4;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/5;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/6;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/7;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/8;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/9;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/10;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/11;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/12;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/13;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/14;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/15;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/16;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/17;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/18;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/19;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/20;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/108;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/109;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/110;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/111;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/112;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/113;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/114;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/115;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/116;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/117;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/118;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/119;9999;80;;;,ER INDIA G-7;10;GK/PC/16-17/120;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/121;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/122;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/123;9999;40;;;,ER INDIA G-7;10;GK/PC/16-17/124;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/125;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/126;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/127;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/128;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/129;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/130;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/131;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/132;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/133;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/134;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/135;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/136;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/137;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/138;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/139;9999;40;;;,ER INDIA G-7;10;GK/PC/16-17/140;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/141;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/142;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/143;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/144;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/145;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/146;9999;40;;;,ER INDIA G-7;10;GK/PC/16-17/147;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/148;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/149;9999;40;;;,ER INDIA G-7;10;GK/PC/16-17/150;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/151;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/152;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/153;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/154;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/155;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/156;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/157;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/158;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/159;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/160;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/161;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/162;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/163;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/164;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/165;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/166;9999;10;;;,ER INDIA G-7;10;GK/PC/16-17/167;9999;20;;;,ER INDIA G-7;10;GK/PC/16-17/168;9999;40;;;', '', '', '', '', 0, '', '', '', '', '', '', '', 'inr', '', '', '2017-01-24', 0),
(18, 'GKPONO17012400037', 'GKSUP00004', 'GKPONO17012400037', '', 'ER INDIA G-7;2;GKPC00001;9999;2;2;4.00;,ER INDIA G-7;2;GKPC00002;9999;2;2;4.00;,ER INDIA G-7;2;GKPC00003;9999;2;3;6.00;,ER INDIA G-7;2;GKPC00004;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00005;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00006;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00007;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00008;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00009;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00010;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00011;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00012;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00013;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00014;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00015;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00016;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00017;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00018;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00019;9999;8;1;8.00;,ER INDIA G-7;2;GKPC00020;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00021;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00022;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00023;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00024;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00025;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00026;9999;8;1;8.00;,ER INDIA G-7;2;GKPC00027;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00028;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00106;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00107;9999;2;11;22.00;,ER INDIA G-7;2;GKPC00108;9999;2;1;0.00;,ER INDIA G-7;2;GKPC00109;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00110;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00111;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00112;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00113;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00114;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00115;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00116;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00117;9999;16;1;16.00;,ER INDIA G-7;2;GKPC00118;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00119;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00120;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00121;9999;8;1;8.00;,ER INDIA G-7;2;GKPC00122;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00123;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00124;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00125;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00126;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00127;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00128;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00129;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00130;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00131;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00132;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00133;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00134;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00135;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00136;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00137;9999;8;1;8.00;,ER INDIA G-7;2;GKPC00138;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00139;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00140;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00141;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00142;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00143;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00144;9999;8;1;8.00;,ER INDIA G-7;2;GKPC00145;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00146;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00147;9999;8;1;8.00;,ER INDIA G-7;2;GKPC00148;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00149;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00150;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00151;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00152;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00153;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00154;9999;2;11;22.00;,ER INDIA G-7;2;GKPC00155;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00156;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00157;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00158;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00159;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00160;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00161;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00162;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00163;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00164;9999;2;1;2.00;,ER INDIA G-7;2;GKPC00165;9999;4;1;4.00;,ER INDIA G-7;2;GKPC00166;9999;8;1;8.00;', '20.64', '12.00', '1.00', 'Contain', 10, 'sasad', '21354', 'sd@gmail.com', 'ddf', '01/25/2017', '01/26/2017', '33.64', 'inr', 'qqw;5;1.40,qww;4;1.18,ssd;10;3.06', '', '2017-01-24', 0),
(19, 'GKPONO17012400039', 'GKSUP00002', 'GKPONO17012400039', 'GKPC00117;ER INDIA G-7;400;2;800.00;,GKPC00026;ER INDIA G-7;160;2;320.00;,GKPC00147;ER INDIA G-7;80;3;240.00;', '', '1000', '500', '44.38', 'Contain', 20, 'fgfg', '321345', 'fdg@gmail.com', 'dfdf', '01/27/2017', '01/27/2017', '1544.38', 'inr', 'asa;5;68.00,asas;3;42.84,as;5;73.54', '', '2017-01-25', 0),
(20, 'GKPONO17012400038', 'GKSUP00004', 'GKPONO17012400038', 'GKPC00117;ER INDIA G-7;400;5;2000.00;,GKPC00026;ER INDIA G-7;200;5;1000.00;,GKPC00019;ER INDIA G-7;200;5;1000.00;', '', '4000', '300', '28.47', 'Logistc', 15, 'sdds', '3465', 'sd@gmail.com', 'ssd', '01/27/2017', '01/28/2017', '4328.47', 'inr', 'asas;3;120.00,ass;3;123.60,as;2;84.87', '', '2017-01-25', 0),
(21, 'GKPONO17021000041', 'GKSUP00002', 'GKPONO17021000041', '', 'ER INDIA G-7;20;GKPC00001;9999;20;10;200.00;10,ER INDIA G-7;20;GKPC00002;9999;20;10;200.00;,ER INDIA G-7;20;GKPC00003;9999;20;10;200.00;,ER INDIA G-7;20;GKPC00004;9999;20;10;200.00;,ER INDIA G-7;20;GKPC00005;9999;20;10;200.00;,ER INDIA G-7;20;GKPC00006;9999;20;10;200.00;,ER INDIA G-7;20;GKPC00007;9999;20;10;200.00;,ER INDIA G-7;20;GKPC00008;9999;20;10;200.00;1,ER INDIA G-7;20;GKPC00009;9999;20;10;200.00;,ER INDIA G-7;20;GKPC00010;9999;20;1;20.00;,ER INDIA G-7;20;GKPC00011;9999;20;1;20.00;,ER INDIA G-7;20;GKPC00012;9999;40;1;40.00;,ER INDIA G-7;20;GKPC00013;9999;20;1;20.00;,ER INDIA G-7;20;GKPC00014;9999;40;1;40.00;,ER INDIA G-7;20;GKPC00015;9999;20;1;20.00;,ER INDIA G-7;20;GKPC00016;9999;40;1;40.00;,ER INDIA G-7;20;GKPC00017;9999;20;1;20.00;,ER INDIA G-7;20;GKPC00018;9999;20;1;20.00;,ER INDIA G-7;20;GKPC00019;9999;80;2;160.00;,ER INDIA G-7;20;GKPC00020;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00021;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00022;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00023;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00024;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00025;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00026;9999;80;2;160.00;,ER INDIA G-7;20;GKPC00027;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00028;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00106;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00107;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00108;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00109;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00110;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00111;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00112;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00113;9999;40;2;80.00;,ER INDIA G-7;20;GKPC00114;9999;40;2;80.00;,ER INDIA G-7;20;GKPC00115;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00116;9999;40;2;80.00;,ER INDIA G-7;20;GKPC00117;9999;160;2;320.00;,ER INDIA G-7;20;GKPC00118;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00119;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00120;9999;20;22;440.00;,ER INDIA G-7;20;GKPC00121;9999;80;2;0.00;,ER INDIA G-7;20;GKPC00122;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00123;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00124;9999;40;2;80.00;,ER INDIA G-7;20;GKPC00125;9999;40;2;80.00;,ER INDIA G-7;20;GKPC00126;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00127;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00128;9999;20;22;440.00;,ER INDIA G-7;20;GKPC00129;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00130;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00131;9999;40;2;80.00;,ER INDIA G-7;20;GKPC00132;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00133;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00134;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00135;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00136;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00137;9999;80;2;160.00;,ER INDIA G-7;20;GKPC00138;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00139;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00140;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00141;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00142;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00143;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00144;9999;80;2;160.00;,ER INDIA G-7;20;GKPC00145;9999;40;2;80.00;,ER INDIA G-7;20;GKPC00146;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00147;9999;80;2;160.00;,ER INDIA G-7;20;GKPC00148;9999;40;2;80.00;,ER INDIA G-7;20;GKPC00149;9999;40;2;80.00;,ER INDIA G-7;20;GKPC00150;9999;40;2;80.00;,ER INDIA G-7;20;GKPC00151;9999;20;22;440.00;,ER INDIA G-7;20;GKPC00152;9999;20;2;40.00;,ER INDIA G-7;20;GKPC00153;9999;40;2;80.00;,ER INDIA G-7;20;GKPC00154;9999;20;22;440.00;,ER INDIA G-7;20;GKPC00155;9999;40;2;0.00;,ER INDIA G-7;20;GKPC00156;9999;20;2;0.00;,ER INDIA G-7;20;GKPC00157;9999;20;22;440.00;,ER INDIA G-7;20;GKPC00158;9999;20;22;440.00;,ER INDIA G-7;20;GKPC00159;9999;40;22;880.00;,ER INDIA G-7;20;GKPC00160;9999;20;22;440.00;,ER INDIA G-7;20;GKPC00161;9999;20;22;440.00;,ER INDIA G-7;20;GKPC00162;9999;40;22;880.00;,ER INDIA G-7;20;GKPC00163;9999;40;22;880.00;,ER INDIA G-7;20;GKPC00164;9999;20;22;440.00;,ER INDIA G-7;20;GKPC00165;9999;40;22;880.00;,ER INDIA G-7;20;GKPC00166;9999;80;22;1760.00;', '3000', '153.70', '', 'Logistc', 20, 'aa', '21354', 'abc@gmail.com', 'fgdfg', '02/01/2017', '02/09/2017', '3153.70', 'inr', ';52;946.40,;14;387.30', '', '2017-02-11', 0),
(22, 'GKPONO17021100042', 'GKSUP00002', 'GKPONO17021100042', '', 'ER INDIA G-7;50;GKPC00001;9999;50;11;550.00;,ER INDIA G-7;50;GKPC00002;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00003;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00004;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00005;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00006;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00007;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00008;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00009;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00010;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00011;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00012;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00013;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00014;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00015;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00016;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00017;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00018;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00019;9999;200;1;200.00;,ER INDIA G-7;50;GKPC00020;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00021;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00022;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00023;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00024;9999;50;11;550.00;,ER INDIA G-7;50;GKPC00025;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00026;9999;200;1;200.00;,ER INDIA G-7;50;GKPC00027;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00028;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00106;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00107;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00108;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00109;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00110;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00111;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00112;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00113;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00114;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00115;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00116;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00117;9999;400;1;400.00;,ER INDIA G-7;50;GKPC00118;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00119;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00120;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00121;9999;200;1;200.00;,ER INDIA G-7;50;GKPC00122;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00123;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00124;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00125;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00126;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00127;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00128;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00129;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00130;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00131;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00132;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00133;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00134;9999;50;11;550.00;,ER INDIA G-7;50;GKPC00135;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00136;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00137;9999;200;1;200.00;,ER INDIA G-7;50;GKPC00138;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00139;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00140;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00141;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00142;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00143;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00144;9999;200;1;200.00;,ER INDIA G-7;50;GKPC00145;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00146;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00147;9999;200;1;200.00;,ER INDIA G-7;50;GKPC00148;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00149;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00150;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00151;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00152;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00153;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00154;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00155;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00156;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00157;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00158;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00159;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00160;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00161;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00162;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00163;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00164;9999;50;1;50.00;,ER INDIA G-7;50;GKPC00165;9999;100;1;100.00;,ER INDIA G-7;50;GKPC00166;9999;200;1;200.00;,ER INDIA K-9;50;GKPC00029;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00030;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00031;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00032;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00033;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00034;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00036;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00037;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00038;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00039;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00040;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00041;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00042;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00043;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00044;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00045;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00046;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00047;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00048;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00049;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00050;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00051;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00052;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00053;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00054;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00055;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00056;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00057;9999;250;1;250.00;,ER INDIA K-9;50;GKPC00058;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00059;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00060;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00061;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00062;9999;200;1;200.00;,ER INDIA K-9;50;GKPC00063;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00104;9999;200;1;200.00;,ER INDIA K-9;50;GKPC00105;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00167;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00168;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00169;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00170;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00171;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00172;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00173;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00174;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00175;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00176;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00177;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00178;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00179;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00180;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00181;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00182;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00183;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00184;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00185;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00186;9999;200;1;200.00;,ER INDIA K-9;50;GKPC00187;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00188;9999;200;1;200.00;,ER INDIA K-9;50;GKPC00189;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00190;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00191;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00192;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00193;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00194;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00195;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00196;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00197;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00198;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00199;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00200;9999;300;1;300.00;,ER INDIA K-9;50;GKPC00201;9999;200;1;200.00;,ER INDIA K-9;50;GKPC00202;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00203;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00204;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00205;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00206;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00207;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00208;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00209;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00210;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00211;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00212;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00213;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00214;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00215;9999;600;1;600.00;,ER INDIA K-9;50;GKPC00216;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00217;9999;50;1;50.00;,ER INDIA K-9;50;GKPC00218;9999;100;1;100.00;,ER INDIA K-9;50;GKPC00219;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00035;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00064;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00065;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00066;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00067;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00068;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00069;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00070;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00071;9999;200;1;200.00;,ER INDIA G-7S;50;GKPC00072;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00073;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00074;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00075;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00076;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00077;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00078;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00079;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00080;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00081;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00082;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00083;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00084;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00085;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00086;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00087;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00088;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00089;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00090;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00091;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00092;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00093;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00094;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00095;9999;250;1;250.00;,ER INDIA G-7S;50;GKPC00096;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00097;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00098;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00099;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00100;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00101;9999;200;1;200.00;,ER INDIA G-7S;50;GKPC00102;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00103;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00223;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00224;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00225;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00226;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00227;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00228;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00229;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00230;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00231;9999;200;1;200.00;,ER INDIA G-7S;50;GKPC00232;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00233;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00234;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00235;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00236;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00237;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00238;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00239;9999;300;1;300.00;,ER INDIA G-7S;50;GKPC00240;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00241;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00242;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00243;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00244;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00245;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00246;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00247;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00248;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00249;9999;50;11;550.00;,ER INDIA G-7S;50;GKPC00250;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00251;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00252;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00253;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00254;9999;600;1;600.00;,ER INDIA G-7S;50;GKPC00255;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00256;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00257;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00258;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00259;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00260;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00261;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00262;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00263;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00264;9999;100;1;100.00;,ER INDIA G-7S;50;GKPC00265;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00266;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00267;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00268;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00269;9999;50;1;50.00;,ER INDIA G-7S;50;GKPC00270;9999;50;1;50.00;', '1000', '243.73', '', 'Logistc', 20, 'aad', '3216345', 'asd@gmail.com', 'asasd', '02/12/2017', '02/13/2017', '1243.73', 'inr', ';5;57.50,;3;36.23', '', '2017-02-11', 0),
(23, 'GKPONO17021300043', 'GKSUP00002', 'GKPONO17021300043', 'GKPC00117;ER INDIA G-7;80;20;1600.00;,GKPC00026;ER INDIA G-7;40;20;800.00;', '', '2400', '', '', '', 0, '', '', '', '', '', '', '2400.00', 'inr', '', '', '2017-02-13', 0),
(24, 'GKPONO17021400045', 'GKSUP00002', 'GKPONO17021400045', '', 'ER INDIA G-7;5;GKPC00001;9999;5;10;50.00;,ER INDIA G-7;5;GKPC00002;9999;5;10;50.00;,ER INDIA G-7;5;GKPC00003;9999;5;10;50.00;,ER INDIA G-7;5;GKPC00004;9999;5;10;50.00;,ER INDIA G-7;5;GKPC00119;9999;5;10;50.00;', '274.96', '', '', 'Contain', 10, 'aa', '2134', 'asasd@gmail.com', 'asasd', '02/16/2017', '02/24/2017', '274.96', 'inr', 'sales;5;13.85,ex;4;11.11', '', '2017-02-14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quotation27102016`
--

CREATE TABLE `quotation27102016` (
  `id` int(11) NOT NULL,
  `qtid` varchar(255) NOT NULL,
  `venid` varchar(255) NOT NULL,
  `poid` varchar(255) NOT NULL,
  `parts` text NOT NULL,
  `model` text NOT NULL,
  `fstpmnt` varchar(255) NOT NULL,
  `ndpmnt` varchar(255) NOT NULL,
  `thrdpmnt` varchar(255) NOT NULL,
  `procdate` varchar(255) NOT NULL,
  `disdate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `currencytyp` varchar(20) NOT NULL,
  `tax` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation27102016`
--

INSERT INTO `quotation27102016` (`id`, `qtid`, `venid`, `poid`, `parts`, `model`, `fstpmnt`, `ndpmnt`, `thrdpmnt`, `procdate`, `disdate`, `total`, `currencytyp`, `tax`, `file`, `doe`, `status`) VALUES
(1, 'GK/16/17/00002', 'GK/201610035', 'GK/16/17/00002', '', 'GK/PR/16-17/1;G5;300;200;60000.00', '40000', '30000', '9860', '10/18/2016', '10/28/2016', '79860.00', 'inr', 'assd;10;6000.00,asdasd;10;6600.00,asdsda;10;7260.00', 'venderslist.sql', '2016-10-22', 0),
(2, 'GK/16/17/00003', 'GK/201610035', 'GK/16/17/00003', 'GK/PC/16-17/8;K9;250;250;62500.00,GK/PC/16-17/11;K9;450;300;135000.00,GK/PC/16-17/9;K9;300;400;120000.00,GK/PC/16-17/3;G5;400;500;200000.00,GK/PC/16-17/7;G5;500;600;300000.00', 'GK/PR/16-17/1;G5;400;700;280000.00,GK/PR/16-17/2;K9;500;150;75000.00', '1770000', '9000', '855', '10/12/2016', '10/28/2016', '1779855.00', 'dollar', 'SALKES TAX;10;117250.00,ROAD TAX;15;193462.50,IEC TAX;20;296642.50', 'erp_manager (2).sql', '2016-10-22', 0),
(3, 'GK/16/17/00005', 'GK/201610035', 'GK/16/17/00005', 'GK/PC/16-17/8;K9;350;100;35000.00,GK/PC/16-17/10;K9;100;100;10000.00', 'G5;300;GK/PC/16-17/1;1;600;100;60000.00,G5;300;GK/PC/16-17/3;4;300;200;60000.00,G5;300;GK/PC/16-17/4;7;600;200;120000.00,K9;500;GK/PC/16-17/11;32;1000;200;200000.00,K9;500;GK/PC/16-17/12;36;1500;200;300000.00', '540000', '400000.25', '30142', '10/18/2016', '10/29/2016', '970142.25', 'dollar', 'asas;10;78500.00,ddsfdfs;5;43175.00,mhbjh;7;63467.25', 'jquery.colorpanel.css', '2016-10-24', 0),
(5, 'GK/16/17/00012', 'GK/201610035', 'GK/16/17/00012', 'GK/PC/16-17/5;G5;250;200;50000.00,GK/PC/16-17/3;G5;450;300;135000.00,GK/PC/16-17/6;G5;450;;,GK/PC/16-17/6;G5;1000;300;300000.00,GK/PC/16-17/6;G5;500;200;100000.00,GK/PC/16-17/6;G5;1000;200;200000.00,GK/PC/16-17/6;G5;1000;100;100000.00,GK/PC/16-17/6;G5;500;200;100000.00,GK/PC/16-17/6;G5;500;;,GK/PC/16-17/6;K9;400;100;40000.00,GK/PC/16-17/6;K9;200;100;20000.00,GK/PC/16-17/6;K9;400;100;40000.00,GK/PC/16-17/6;K9;400;100;40000.00,GK/PC/16-17/6;K9;600;100;60000.00', 'G5;500;GK/PC/16-17/1;1;1000;300;300000.00,G5;500;GK/PC/16-17/3;5;500;200;100000.00,G5;500;GK/PC/16-17/4;9;1000;200;200000.00,G5;500;GK/PC/16-17/5;11;1000;100;100000.00,G5;500;GK/PC/16-17/6;14;500;200;100000.00,G5;500;GK/PC/16-17/7;17;500;;,K9;200;GK/PC/16-17/8;20;400;100;40000.00,K9;200;GK/PC/16-17/9;24;200;100;20000.00,K9;200;GK/PC/16-17/10;26;400;100;40000.00,K9;200;GK/PC/16-17/11;31;400;100;40000.00,K9;200;GK/PC/16-17/12;36;600;100;60000.00', '100000', '1477000', '235', '10/18/2016', '10/28/2016', '1577235.00', 'dollar', 'zxc;10;118500.00,sadasd;10;130350.00,sdsad;10;143385.00', 'jquery.colorpanel.css', '2016-10-25', 0),
(6, 'GK/16/17/00013', 'GK/201610035', 'GK/16/17/00013', 'GK/PC/16-17/8;K9;45;100;4500.00,GK/PC/16-17/4;G5;50;200;10000.00,GK/PC/16-17/13;K9;45;400;18000.00,GK/PC/16-17/13;G5;100;100;10000.00,GK/PC/16-17/13;G5;50;250;12500.00,GK/PC/16-17/13;G5;100;250;25000.00,GK/PC/16-17/13;G5;100;100;10000.00', 'G5;50;GK/PC/16-17/1;;100;100;10000.00,G5;50;GK/PC/16-17/3;5;50;250;12500.00,G5;50;GK/PC/16-17/4;7;100;250;25000.00,G5;50;GK/PC/16-17/5;1;100;100;10000.00', '30000', '35000', '30172', '10/27/2016', '10/29/2016', '95172.00', 'dollar', 'Road TaX;10;8000.00,SALES tAX;5;4400.00,ABCED;3;2772.00', 'LICENSE', '2016-10-25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `requiredparts`
--

CREATE TABLE `requiredparts` (
  `id` int(11) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `orderno` varchar(255) NOT NULL,
  `boxname` varchar(255) NOT NULL,
  `boxcode` varchar(255) NOT NULL,
  `partsid` varchar(55) NOT NULL,
  `partsqty` int(11) NOT NULL,
  `dos` varchar(55) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `boxqty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requiredparts`
--

INSERT INTO `requiredparts` (`id`, `doe`, `orderno`, `boxname`, `boxcode`, `partsid`, `partsqty`, `dos`, `crtd`, `status`, `boxqty`) VALUES
(1, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '6', 20, '2017-02-13 07:28:56 PM', 'warehouse1', 0, 0),
(2, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '121', 20, '2017-02-13 07:28:56 PM', 'warehouse1', 0, 0),
(3, '2017-02-13', 'GKSLSBK70055', '', '', '5', 20, '2017-02-13 07:28:56 PM', 'warehouse1', 0, 0),
(4, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '6', 20, '2017-02-13 07:32:54 PM', 'warehouse1', 0, 0),
(5, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '121', 20, '2017-02-13 07:32:54 PM', 'warehouse1', 0, 0),
(6, '2017-02-13', 'GKSLSBK70055', '', '', '5', 20, '2017-02-13 07:32:55 PM', 'warehouse1', 0, 0),
(7, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '6', 20, '2017-02-13 07:33:45 PM', 'warehouse1', 0, 20),
(8, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '121', 20, '2017-02-13 07:33:45 PM', 'warehouse1', 0, 20),
(9, '2017-02-13', 'GKSLSBK70055', '', '', '5', 20, '2017-02-13 07:33:45 PM', 'warehouse1', 0, 0),
(10, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '6', 20, '2017-02-13 08:24:31 PM', 'warehouse1', 0, 20),
(11, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '6', 20, '2017-02-13 08:25:17 PM', 'warehouse1', 0, 20),
(12, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '6', 20, '2017-02-13 08:25:51 PM', 'warehouse1', 0, 20),
(13, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '121', 20, '2017-02-13 08:25:51 PM', 'warehouse1', 0, 20),
(14, '2017-02-13', 'GKSLSBK70055', '', '', '5', 20, '2017-02-13 08:25:51 PM', 'warehouse1', 0, 0),
(15, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '6', 20, '2017-02-13 08:34:19 PM', 'warehouse1', 0, 20),
(16, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '121', 20, '2017-02-13 08:34:19 PM', 'warehouse1', 0, 20),
(17, '2017-02-13', 'GKSLSBK70055', '', '', '5', 20, '2017-02-13 08:34:19 PM', 'warehouse1', 0, 0),
(18, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '6', 20, '2017-02-13 08:40:52 PM', 'warehouse1', 0, 20),
(19, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '121', 20, '2017-02-13 08:40:52 PM', 'warehouse1', 0, 20),
(20, '2017-02-13', 'GKSLSBK70055', '', '', '5', 20, '2017-02-13 08:40:52 PM', 'warehouse1', 0, 0),
(21, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '6', 20, '2017-02-13 10:23:20 PM', 'warehouse1', 0, 20),
(22, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '6', 20, '2017-02-13 10:23:43 PM', 'warehouse1', 0, 20),
(23, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '121', 20, '2017-02-13 10:26:00 PM', 'warehouse1', 0, 20),
(24, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '6', 20, '2017-02-13 10:34:55 PM', 'warehouse1', 0, 20),
(25, '2017-02-13', 'GKSLSBK70055', 'BOX1', 'BOXCODE0001', '121', 20, '2017-02-13 10:34:55 PM', 'warehouse1', 0, 20),
(26, '2017-02-13', 'GKSLSBK70055', '', '', '5', 20, '2017-02-13 10:34:55 PM', 'warehouse1', 0, 0),
(27, '2017-02-13', 'GKSLSBK70055', '', '', '5', 20, '2017-02-13 10:35:36 PM', 'warehouse1', 0, 0),
(28, '2017-02-13', 'GKSLSBK70057', 'box8', 'BOXCODE0004', '66', 10, '2017-02-13 11:52:29 PM', 'warehouse1', 0, 5),
(29, '2017-02-13', 'GKSLSBK70057', 'box8', 'BOXCODE0004', '244', 10, '2017-02-13 11:52:29 PM', 'warehouse1', 0, 5),
(30, '2017-02-13', 'GKSLSBK70057', 'box8', 'BOXCODE0004', '66', 10, '2017-02-13 11:52:29 PM', 'warehouse1', 0, 5),
(31, '2017-02-13', 'GKSLSBK70057', 'box8', 'BOXCODE0004', '244', 10, '2017-02-13 11:52:30 PM', 'warehouse1', 0, 5),
(32, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '6', 2, '2017-02-14 12:13:41 AM', 'warehouse1', 0, 20),
(33, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '6', 2, '2017-02-14 12:14:20 AM', 'warehouse1', 0, 20),
(34, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '121', 2, '2017-02-14 12:14:20 AM', 'warehouse1', 0, 20),
(35, '2017-02-14', 'GKSLSBK70058', '', '', '5', 2, '2017-02-14 12:14:20 AM', 'warehouse1', 0, 0),
(36, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '6', 2, '2017-02-14 12:15:06 AM', 'warehouse1', 0, 20),
(37, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '121', 2, '2017-02-14 12:15:06 AM', 'warehouse1', 0, 20),
(38, '2017-02-14', 'GKSLSBK70058', '', '', '5', 2, '2017-02-14 12:15:06 AM', 'warehouse1', 0, 0),
(39, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '6', 2, '2017-02-14 12:17:18 AM', 'warehouse1', 0, 20),
(40, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '121', 2, '2017-02-14 12:17:18 AM', 'warehouse1', 0, 20),
(41, '2017-02-14', 'GKSLSBK70058', '', '', '5', 2, '2017-02-14 12:17:18 AM', 'warehouse1', 0, 0),
(42, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '6', 2, '2017-02-14 12:18:03 AM', 'warehouse1', 0, 20),
(43, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '121', 2, '2017-02-14 12:18:04 AM', 'warehouse1', 0, 20),
(44, '2017-02-14', 'GKSLSBK70058', '', '', '5', 2, '2017-02-14 12:18:04 AM', 'warehouse1', 0, 0),
(45, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '6', 2, '2017-02-14 12:18:52 AM', 'warehouse1', 0, 20),
(46, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '121', 2, '2017-02-14 12:18:53 AM', 'warehouse1', 0, 20),
(47, '2017-02-14', 'GKSLSBK70058', '', '', '5', 2, '2017-02-14 12:18:53 AM', 'warehouse1', 0, 0),
(48, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '6', 2, '2017-02-14 12:19:38 AM', 'warehouse1', 0, 20),
(49, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '121', 2, '2017-02-14 12:19:38 AM', 'warehouse1', 0, 20),
(50, '2017-02-14', 'GKSLSBK70058', '', '', '5', 2, '2017-02-14 12:19:39 AM', 'warehouse1', 0, 0),
(51, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '6', 2, '2017-02-14 12:20:45 AM', 'warehouse1', 0, 20),
(52, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '121', 2, '2017-02-14 12:20:46 AM', 'warehouse1', 0, 20),
(53, '2017-02-14', 'GKSLSBK70058', '', '', '5', 2, '2017-02-14 12:20:47 AM', 'warehouse1', 0, 0),
(54, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '6', 2, '2017-02-14 12:22:00 AM', 'warehouse1', 0, 20),
(55, '2017-02-14', 'GKSLSBK70058', 'BOX1', 'BOXCODE0001', '121', 2, '2017-02-14 12:22:00 AM', 'warehouse1', 0, 20),
(56, '2017-02-14', 'GKSLSBK70058', '', '', '5', 2, '2017-02-14 12:22:00 AM', 'warehouse1', 0, 0),
(57, '2017-02-14', 'GKSLSBK70053', 'BOX1', 'BOXCODE0001', '121', 10, '2017-02-14 12:59:10 AM', 'warehouse1', 0, 20),
(58, '2017-02-14', 'GKSLSBK70053', '', '', '5', 10, '2017-02-14 12:59:10 AM', 'warehouse1', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

CREATE TABLE `salesman` (
  `id` int(11) NOT NULL,
  `salesmanid` varchar(255) NOT NULL,
  `hod` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `aboutme` longtext NOT NULL,
  `phno` int(13) NOT NULL,
  `whatsapp` int(12) NOT NULL,
  `deprts` varchar(255) NOT NULL,
  `desig` varchar(255) NOT NULL,
  `passwod` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `area` text NOT NULL,
  `voterid` varchar(255) NOT NULL,
  `voterimg` varchar(255) NOT NULL,
  `panno` varchar(255) NOT NULL,
  `panimg` varchar(255) NOT NULL,
  `adharno` varchar(255) NOT NULL,
  `adharimg` varchar(255) NOT NULL,
  `salary` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `doe` varchar(255) NOT NULL,
  `crtd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`id`, `salesmanid`, `hod`, `name`, `email`, `address`, `aboutme`, `phno`, `whatsapp`, `deprts`, `desig`, `passwod`, `image`, `area`, `voterid`, `voterimg`, `panno`, `panimg`, `adharno`, `adharimg`, `salary`, `status`, `doe`, `crtd`) VALUES
(1, 'GKSLS0001', 0, 'PALASH ROY', 'palashroy729@gmail.com', 'CHHINAMORE,PO-CHHINAMORE,PS-SINGUR,DIST,HOOGHLY,STATE-WEST BENGAL,PIN-712223', 'My Name is Palash Roy', 2147483647, 2147483647, 'Sales', 'SALES EXECUTIVE', '12345', '1484123533_BOB_8898.JPG', '', 'KJK22237675', '', 'ARIPR3756P', '', '955375077933', '', '10000.00', 1, '2017-01-11 01:32:16 AM', 'admin'),
(3, 'GKSLS0003', 8, 'SUDIPTA KASHARI', 'gksudipta@gmail.com', 'SHIVPUR HAZARAPUR, P.O- TRIBENI, P.S - MOGRA, DIST - HOOGHLY, STATE - WEST BENGAL, PIN - 712503.', '', 2147483647, 2147483647, 'Sales', 'SALES EXECUTIVE', 'SUDIPTA123', '1484123348_BOB_9046.JPG', '', 'THQ1231976', '', 'EILPK8624M', '', '397134341209', '', '10000.00', 0, '2017-01-11 01:29:09 AM', 'admin'),
(4, 'GKSLS0004', 0, 'MANNA DEBASISH CHANCHAL', 'debasishmanna93@gmail.com', 'TETUANLATALA LEN, BHADRASWAR, BHADRASWAR, DIST - HOOGHLY, STATE - WEST BENGAL, PIN - 712139', '', 2147483647, 2147483647, 'Sales', '2', 'MANNA123', '1484123190_BOB_8893.JPG', '', 'ZSG1686989', '', 'AZIPM5333P', '', '', '', '10000.00', 0, '2017-01-11 01:26:34 AM', 'admin'),
(5, 'GKSLS0005', 0, 'SUKESH PAUL', 'paulgkrickshaw@gmail.com', 'MANKUNDU PAL PARA, N.S. ROAD, P.O.- M.G. COLONY, DIST - HOOGHLY, PIN - 712139', '', 2147483647, 2147483647, 'Sales', 'SALES EXCUTIVE', 'SUKESH123', '1483877706_DSC_7912.JPG', '', 'ZSG1155589', '', '', '', '', '', '10000.00', 0, '2017-01-08 05:15:06 AM', 'admin'),
(6, 'GKSLS0006', 0, 'gautam basu', 'basu@gkrickshow.com', 'baidyabati , hooghly 712222', 'asasdasdaasdasdasasd\n																																																																							', 2147483647, 2147483647, 'Sales', 'sales', '1232', '1484125713_BOB_8865.JPG', '', '1235', '', '1236', '', '12358', '', '10000.00', 1, '2017-01-11 02:17:16 AM', 'admin'),
(7, 'GKSLS0007', 0, 'pankaj kumar patra', 'pkp@gmail.com', 'aasas', '', 1234565789, 25469823, 'Accountsw', '1', '123456', '1486208886_homefav_10.png', '', 'xzxc', '1486208886_homefav_14.png', 'zxczxc', '', 'zczxc', '', '0.00', 0, '2017-02-04 12:48:06 PM', 'admin'),
(8, 'EMPID0008', 0, 'PANKJ KUMAR PATRA', 'pankaj@crystalplanetweb.com', 'ssd,sdsd,sds,d', '', 123456, 1235, 'SALES ', 'SALES HEAD', '1232', '', '', 'asas', '', 'asasd', '', 'sadasd', '', '0.00', 1, '2017-02-16 07:07:08 AM', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `salesman06012017`
--

CREATE TABLE `salesman06012017` (
  `id` int(11) NOT NULL,
  `salesmanid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phno` int(13) NOT NULL,
  `whatsapp` int(12) NOT NULL,
  `deprts` varchar(255) NOT NULL,
  `desig` varchar(255) NOT NULL,
  `passwod` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `area` text NOT NULL,
  `voterid` varchar(255) NOT NULL,
  `voterimg` varchar(255) NOT NULL,
  `panno` varchar(255) NOT NULL,
  `panimg` varchar(255) NOT NULL,
  `adharno` varchar(255) NOT NULL,
  `adharimg` varchar(255) NOT NULL,
  `salary` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `doe` varchar(255) NOT NULL,
  `crtd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesman06012017`
--

INSERT INTO `salesman06012017` (`id`, `salesmanid`, `name`, `email`, `address`, `phno`, `whatsapp`, `deprts`, `desig`, `passwod`, `image`, `area`, `voterid`, `voterimg`, `panno`, `panimg`, `adharno`, `adharimg`, `salary`, `status`, `doe`, `crtd`) VALUES
(4, 'GKSLS0001', 'Pankaj patra', 'pankaj.patra.87.16@gmail.com', 'dsfdsfds', 23154, 3216354, 'sdfdsf', 'sdfdsf', '12345', '1480152139_7.png', 'dsfdsf', '', '', '', '', '', '', '0.00', 0, '2016-11-26 10:22:19 AM', 'admin'),
(5, 'GKSLS0004', 'Sougata Dalapati', 'pankaj@crystalplanetweb.com', 'ASASDSAD', 354165, 215, 'ACCOUNTS', 'ASDDSFDSF', '12345', '1480315100_2.jpg', 'khidirpur', '12547SDFDS', '', 'SDFDS3324', '', 'DSDSF4234', '', '50000.00', 0, '2016-11-28 07:38:21 AM', 'admin'),
(6, 'GKSLS0006', 'GKSLS0006', 'sfg@gmail.com', 'dsdf,dfdfg,fdfdgfd', 3216, 2156, 'dfdfg', 'xcxcv', 'ffdsg', '1480315593_3.jpg', '', 'dsfsf', '', 'sddsf', '', 'sdfsdf', '', '1651.00', 0, '2016-11-28 07:46:33 AM', 'admin'),
(7, 'GKSLS0007', 'GKSLS0007', 'sddfs@gmail.com', 'dffdg', 2315, 3215, 'fgf', 'dfg', 'dsasdf', '1480316050_anonymous_man.png', '', 'dffdg', '', 'sdfdsf', '', 'sdf', '', '35468.00', 0, '2016-11-28 07:54:10 AM', 'admin'),
(8, 'GKSLS0008', 'GKSLS0008', 'sdf@gmail.com', 'sdfdsf', 54546, 5465, 'ddsf', 'sdfds', '45546', '1480316843_6.jpg', '', 'sdfs', '', '', '', '', '', '45646.00', 0, '2016-11-28 08:07:23 AM', 'admin'),
(9, 'GKSLS0009', 'GKSLS0009', 'sdf@gmail.com', 'sdfdsf', 54546, 5465, 'ddsf', 'sdfds', '4524', '1480316886_6.jpg', '', 'sdfs', '', '', '', '', '', '45646.00', 0, '2016-11-28 08:08:06 AM', 'admin'),
(10, 'GKSLS0010', 'GKSLS0010', 'fdfdg@gmail.com', 'sdsdf', 231356, 32165, 'dsdf', 'sdfdsf', '352164', '1480317058_5.jpg', '', 'sdfsf', '', '', '', '', '', '3546.00', 0, '2016-11-28 08:10:58 AM', 'admin'),
(11, 'GKSLS0011', 'GKSLS0011', 'asd@gmail.com', 'dfgfg,fdfg', 231654, 321654, 'sdf', 'ddg', 'dsadsf', '1480319436_6.jpg', '', 'asdasd', '', 'asda', '', 'asdas', '', '3216.00', 0, '2016-11-28 08:50:36 AM', 'admin'),
(12, 'GKSLS0012', 'GKSLS0012', 'asd@gmail.com', 'dfgfg,fdfg', 231654, 321654, 'sdf', 'ddg', 'sdfdsf', '1480320080_6.jpg', '', 'asdasd', '1480320080_5.jpg', 'asda', '1480320080_4.jpg', 'asdas', '1480320080_3.jpg', '3216.00', 0, '2016-11-28 09:01:20 AM', 'admin'),
(13, 'GKSLS0013', 'GKSLS0013', 'xsddddddd@gmail.com', 'asdasd', 324165, 2345, 'asdas', 'asdasd', '35465', '1480321814_2.jpg', '', 'asads', '1480321814_6.jpg', 'asdas', '1480321814_12.jpg', 'asasd', '1480321814_9.jpg', '32165.00', 0, '2016-11-28 09:30:14 AM', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sales_terget`
--

CREATE TABLE `sales_terget` (
  `id` int(11) NOT NULL,
  `salesmanid` varchar(255) NOT NULL,
  `monthcode` varchar(255) NOT NULL,
  `yearcode` int(11) NOT NULL,
  `terget` int(11) NOT NULL,
  `mintarget` int(11) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_terget`
--

INSERT INTO `sales_terget` (`id`, `salesmanid`, `monthcode`, `yearcode`, `terget`, `mintarget`, `createdBy`, `status`) VALUES
(1, 'GKSLS0001', 'January', 2017, 150, 51, '', 0),
(2, 'GKSLS0003', 'January', 2017, 200, 51, '', 0),
(3, 'GKSLS0004', 'January', 2017, 100, 51, '', 0),
(4, 'GKSLS0005', 'January', 2017, 40, 51, '', 0),
(5, 'GKSLS0006', 'January', 2017, 58, 71, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_terget06012017`
--

CREATE TABLE `sales_terget06012017` (
  `id` int(11) NOT NULL,
  `salesmanid` varchar(255) NOT NULL,
  `monthcode` varchar(255) NOT NULL,
  `yearcode` int(11) NOT NULL,
  `terget` int(11) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_terget06012017`
--

INSERT INTO `sales_terget06012017` (`id`, `salesmanid`, `monthcode`, `yearcode`, `terget`, `createdBy`, `status`) VALUES
(12, 'GKSLS0015', 'October', 2017, 1212, '', 0),
(13, 'GKSLS0001', 'February', 2017, 222, '', 0),
(14, 'GKSLS0004', 'January', 2017, 34, '', 0),
(15, 'GKSLS0004', 'February', 2017, 11, '', 0),
(16, 'GKSLS0004', 'Decembor', 2016, 23, '', 0),
(17, 'GKSLS0001', 'Decembor', 2016, 0, '', 0),
(18, 'GKSLS0007', 'January', 2017, 20, '', 0),
(19, 'GKSLS0006', 'January', 2017, 15, '', 0),
(20, 'GKSLS0008', 'January', 2017, 24, '', 0),
(21, 'GKSLS0009', 'January', 2017, 12, '', 0),
(22, 'GKSLS0010', 'January', 2017, 8, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spareparts`
--

CREATE TABLE `spareparts` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `group1` varchar(255) NOT NULL,
  `partsno` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `mrp` decimal(11,2) NOT NULL,
  `vat` decimal(11,2) NOT NULL,
  `latestpurchaseprice` decimal(11,2) NOT NULL,
  `rackno` varchar(255) NOT NULL,
  `openqty` int(11) NOT NULL,
  `valu2` decimal(11,2) NOT NULL,
  `balance` decimal(11,2) NOT NULL,
  `moq` varchar(255) NOT NULL,
  `reordlevel` varchar(255) NOT NULL,
  `minstock` int(11) NOT NULL,
  `maxstock` int(11) NOT NULL,
  `salestax` decimal(11,2) NOT NULL,
  `surcharge` decimal(11,2) NOT NULL,
  `addsurcharge` decimal(11,2) NOT NULL,
  `application` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `doe` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spareparts_specification`
--

CREATE TABLE `spareparts_specification` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `parts_id` varchar(255) NOT NULL DEFAULT 'GK/16-17/1',
  `specification` text NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spareparts_specification`
--

INSERT INTO `spareparts_specification` (`id`, `productid`, `parts_id`, `specification`, `qty`, `image`, `doe`, `status`) VALUES
(1, 21, 'GK/PC/16-17/21', 'SDSDSFdsdfdsfds', 0, '', '', 0),
(3, 25, 'GK/PC/16-17/25', 'sadsdsdsds', 0, '', '', 0),
(7, 27, 'GK/PC/16-17/27', 'hhhhhhggg', 0, '', '', 0),
(8, 27, 'GK/PC/16-17/27', '777777754630982', 0, '', '', 0),
(9, 29, 'GK/PC/16-17/29', 'dfg56568876', 0, '', '', 0),
(10, 30, 'GK/PC/16-17/30', 'r1', 0, '', '', 0),
(12, 31, 'GK/PC/16-17/31', 'Black', 0, '', '', 0),
(13, 33, 'GK/PC/16-17/1', 'cgh', 0, '', '', 0),
(14, 33, 'GK/PC/16-17/1', 'dgdh', 0, '', '', 0),
(9999, 0, '', '', 0, '', '', 0),
(10000, 1, 'GK/PC/16-17/1', 'sss', 0, '', '', 0),
(10001, 1, 'GK/PC/16-17/1', '333', 0, '', '', 0),
(10003, 32, 'GK/PC/16-17/32', 'e-9', 0, '', '', 0),
(10004, 33, 'GK/PC/16-17/33', 'k-9', 0, '', '', 0),
(10005, 34, 'GK/PC/16-17/34', 'k-9', 0, '', '', 0),
(10006, 35, 'GK/PC/16-17/35', 'k-9', 0, '', '', 0),
(10007, 36, 'GK/PC/16-17/36', 'k-9', 0, '', '', 0),
(10008, 37, 'GK/PC/16-17/37', 'k-9', 0, '', '', 0),
(10009, 38, 'GK/PC/16-17/38', 'k-9', 0, '', '', 0),
(10010, 39, 'GK/PC/16-17/39', 'k - 9', 0, '', '', 0),
(10011, 40, 'GK/PC/16-17/40', 'k-9', 0, '', '', 0),
(10012, 41, 'GK/PC/16-17/41', 'k- 9', 0, '', '', 0),
(10013, 42, 'GK/PC/16-17/42', 'k-9', 0, '', '', 0),
(10014, 43, 'GK/PC/16-17/43', 'k-9', 0, '', '', 0),
(10015, 44, 'GK/PC/16-17/44', 'K-9', 0, '', '', 0),
(10016, 45, 'GK/PC/16-17/45', 'K-9', 0, '', '', 0),
(10017, 46, 'GK/PC/16-17/46', 'K-9', 0, '', '', 0),
(10018, 47, 'GK/PC/16-17/47', 'K-9', 0, '', '', 0),
(10019, 48, 'GK/PC/16-17/48', 'K-9', 0, '', '', 0),
(10020, 50, 'GK/PC/16-17/50', 'K-9', 0, '', '', 0),
(10021, 51, 'GK/PC/16-17/51', 'K-9', 0, '', '', 0),
(10022, 52, 'GK/PC/16-17/52', 'K-9', 0, '', '', 0),
(10023, 53, 'GK/PC/16-17/53', 'K-9', 0, '', '', 0),
(10024, 54, 'GK/PC/16-17/54', 'K-9', 0, '', '', 0),
(10025, 55, 'GK/PC/16-17/55', 'K-9', 0, '', '', 0),
(10026, 56, 'GK/PC/16-17/56', 'K-9', 0, '', '', 0),
(10027, 57, 'GK/PC/16-17/57', 'K-9', 0, '', '', 0),
(10028, 58, 'GK/PC/16-17/58', 'K-9', 0, '', '', 0),
(10029, 59, 'GK/PC/16-17/59', 'K-9', 0, '', '', 0),
(10030, 60, 'GK/PC/16-17/60', 'K-9', 0, '', '', 0),
(10031, 61, 'GK/PC/16-17/61', 'K-9', 0, '', '', 0),
(10032, 62, 'GK/PC/16-17/62', 'K-9', 0, '', '', 0),
(10033, 63, 'GK/PC/16-17/63', 'K-9', 0, '', '', 0),
(10034, 64, 'GK/PC/16-17/64', 'K-9', 0, '', '', 0),
(10035, 65, 'GK/PC/16-17/65', 'K-9 NANDA WAREHOUSE', 0, '', '', 0),
(10067, 25, 'GK/PC/16-17/25', 'sdsdsd', 0, '', '', 0),
(10068, 25, 'GK/PC/16-17/25', 'sdsd', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spareparts_specification14/10/2016`
--

CREATE TABLE `spareparts_specification14/10/2016` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `parts_id` varchar(255) NOT NULL DEFAULT 'GK/16-17/1',
  `specification` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spareparts_specification14/10/2016`
--

INSERT INTO `spareparts_specification14/10/2016` (`id`, `productid`, `parts_id`, `specification`, `image`, `doe`, `status`) VALUES
(1, 1, 'GK/16-17/1', 'abcd', '', '5102016', 0),
(2, 1, 'GK/16-17/1', 'abcd', '', '5102016', 0),
(3, 1, 'GK/16-17/1', 'abcd', '', '5102016', 0),
(4, 1, 'GK/16-17/2', 'abcd', '', '5102016', 0),
(5, 1, 'GK/16-17/2', 'abcd', '', '5102016', 0),
(6, 1, 'GK/16-17/2', 'abcd', '', '5102016', 0),
(7, 1, 'GK/16-17/2', 'abcd', '', '5102016', 0),
(8, 1, 'GK/16-17/2', 'abcd', '', '5102016', 0),
(9, 1, 'GK/16-17/2', 'abcd', '', '5102016', 0),
(10, 1, 'GK/16-17/2', 'xyz', '', '5102016', 0),
(11, 1, 'GK/16-17/2', 'xyz', '', '5102016', 0),
(12, 1, 'GK/16-17/1', 'xyz', '', '5102016', 0),
(13, 1, 'GK/16-17/3', 'xyz', '', '5102016', 0),
(14, 1, 'GK/16-17/3', 'xyz', '', '5102016', 0),
(15, 1, 'GK/16-17/1', 'Converter 12V', '', '5102016', 0),
(16, 1, 'GK/16-17/3', 'dsfdsfdsf', '', '5102016', 0),
(17, 1, 'GK/16-17/3', 'xyz', '', '5102016', 0),
(18, 1, 'GK/16-17/3', 'dfdfsdfds', '', '5102016', 0),
(19, 2, 'GK/16-17/3', 'Motor 850W 48V', '', '5102016', 0),
(20, 2, 'GK/16-17/5', 'Controller 24 Tube', '', '5102016', 0),
(21, 2, 'GK/16-17/5', 'Tyre 3.40/12', '', '5102016', 0),
(22, 2, 'GK/16-17/5', 'Weight 220KG (Approx)', '', '5102016', 0),
(23, 2, 'GK/16-17/5', 'Spring Leaves 6 Leaves', '', '5102016', 0),
(24, 2, 'GK/16-17/5', 'Breaks Break Drum', '', '5102016', 0),
(25, 2, 'GK/16-17/10', 'Roof ABS', '', '5102016', 0),
(26, 2, 'GK/16-17/10', 'Shocker Oil', '', '5102016', 0),
(27, 2, 'GK/16-17/10', 'Seating Capacity 4+1', '', '5102016', 0),
(28, 2, 'GK/16-17/10', 'Body ', '', '5102016', 0),
(29, 2, 'GK/16-17/10', 'Charger 15AH / 48V', '', '5102016', 0),
(30, 2, 'GK/16-17/15', 'Battery)', '', '5102016', 0),
(31, 2, 'GK/16-17/15', 'Rim 12?"? ALLOY', '', '5102016', 0),
(32, 2, 'GK/16-17/15', 'Head Light 12V Led', '', '5102016', 0),
(33, 2, 'GK/16-17/15', 'Converter 12V', '', '5102016', 0),
(34, 2, 'GK/16-17/15', 'Side Cover ', '', '5102016', 0),
(35, 2, 'GK/16-17/15', 'Meter Digital', '', '5102016', 0),
(36, 2, 'GK/16-17/15', 'Key Sensor', '', '5102016', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spareparts_specificationvopy`
--

CREATE TABLE `spareparts_specificationvopy` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `parts_id` varchar(255) NOT NULL DEFAULT 'GK/16-17/1',
  `specification` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crtd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spareparts_specificationvopy`
--

INSERT INTO `spareparts_specificationvopy` (`id`, `productid`, `parts_id`, `specification`, `image`, `doe`, `status`, `crtd`) VALUES
(1, 0, 'GK/16-17/1', '', '', '', 0, ''),
(9999, 0, '', '', '', '', 0, ''),
(10014, 1, 'GK/PC/16-17/1', 'SDDSF', '', '2016-12-27 02:44:06 PM', 0, 'admin'),
(10015, 1, 'GK/PC/16-17/1', 'SDFDSF', '', '2016-12-27 02:44:06 PM', 0, 'admin'),
(10016, 1, 'GK/PC/16-17/1', 'FGHFGH', '', '2016-12-27 02:44:06 PM', 0, 'admin'),
(10019, 3, 'GK/PC/16-17/3', 'TYUTU', '', '2016-12-27 01:22:22 PM', 0, 'admin'),
(10020, 3, 'GK/PC/16-17/3', 'YTYU', '', '2016-12-27 02:44:07 PM', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `starimage`
--

CREATE TABLE `starimage` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `val` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `starimage`
--

INSERT INTO `starimage` (`id`, `image`, `val`, `status`) VALUES
(1, 'star0.png', 0, 0),
(2, 'star1.png', 1, 0),
(3, 'star2.png', 2, 0),
(4, 'star3.png', 3, 0),
(5, 'star4.png', 4, 0),
(6, 'star5.png', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `statename` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `statename`, `status`) VALUES
(9, 'Andaman and Nicobar Islands', 0),
(10, 'Andhra Pradesh', 0),
(11, 'Arunachal Pradesh', 0),
(12, 'Assam', 0),
(13, 'Bihar', 0),
(14, 'Chandigarh', 0),
(15, 'Chhattisgarh', 0),
(16, 'Dadra and Nagar Haveli', 0),
(17, 'Daman and Diu', 0),
(18, 'National Capital Territory of Delhi', 0),
(19, 'Goa', 0),
(20, 'Gujarat', 0),
(21, 'Haryana', 0),
(22, 'Himachal Pradesh', 0),
(23, 'Jammu and Kashmir', 0),
(24, 'Jharkhand', 0),
(25, 'Karnataka', 0),
(26, 'Kerala', 0),
(27, 'Lakshadweep', 0),
(28, 'Madhya Pradesh', 0),
(29, 'Maharashtra', 0),
(30, 'Manipur', 0),
(31, 'Meghalaya', 0),
(32, 'Mizoram', 0),
(33, 'Nagaland', 0),
(34, 'Odisha', 0),
(35, 'Puducherry', 0),
(36, 'Punjab', 0),
(37, 'Rajasthan', 0),
(38, 'Sikkim', 0),
(39, 'Tamil Nadu', 0),
(40, 'Telangana', 0),
(41, 'Tripura', 0),
(42, 'Uttar Pradesh', 0),
(43, 'Uttarakhand', 0),
(44, 'West Bengal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stocktable`
--

CREATE TABLE `stocktable` (
  `id` int(20) NOT NULL,
  `Order_Code` varchar(255) NOT NULL,
  `modelName` varchar(255) NOT NULL,
  `godown` varchar(255) NOT NULL,
  `transfer_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocktable`
--

INSERT INTO `stocktable` (`id`, `Order_Code`, `modelName`, `godown`, `transfer_Type`) VALUES
(80, 'GKORD/16-17/73', 'G5', 'Warehouse1', 'T2Sales'),
(81, 'GKORD/16-17/73', 'G5', 'Warehouse1', 'T2Sales'),
(82, 'GKORD/16-17/73', 'G5', 'Warehouse1', 'T2Sales'),
(83, 'GKORD/16-17/73', '', 'Warehouse1', ''),
(84, 'GKORD/16-17/73', 'G5', '', ''),
(85, 'GKORD/16-17/73', '', 'Warehouse1', ''),
(86, 'GKORD/16-17/73', 'G5', 'Warehouse1', ''),
(88, 'GKORD/16-17/88', '', '', ''),
(89, 'GKORD/16-17/89', '', '', ''),
(90, 'GKORD/16-17/90', '', '', ''),
(91, 'GKORD/16-17/90', '', '', ''),
(92, 'GKORD/16-17/92', '', '', ''),
(93, 'GKORD/16-17/93', '', '', ''),
(94, 'GKORD/16-17/94', '', '', ''),
(95, 'GKORD/16-17/95', '', '', ''),
(96, 'GKORD/16-17/96', '', '', ''),
(97, '', '', '', ''),
(98, 'GKORD/16-17/98', '', '', ''),
(99, 'GKORD/16-17/99', '', '', ''),
(100, 'GKORD/16-17/100', '', '', ''),
(101, 'GKORD/16-17/101', '', '', ''),
(102, 'GKORD/16-17/102', '', '', ''),
(103, 'GKORD/16-17/103', '', '', ''),
(104, 'GKORD/16-17/104', '', '', ''),
(105, 'GKORD/16-17/105', '', '', ''),
(106, 'GKORD/16-17/106', '', '', ''),
(107, 'GKORD/16-17/106', '', '', ''),
(108, 'GKORD/16-17/108', '', '', ''),
(109, 'GKORD/16-17/109', '', '', ''),
(110, 'GKORD/16-17/110', '', '', ''),
(111, 'GKORD/16-17/111', '', '', ''),
(112, 'GKORD/16-17/112', '', '', ''),
(113, 'GKORD/16-17/113', '', '', ''),
(114, 'GKORD/16-17/114', '', '', ''),
(115, 'GKORD/16-17/115', '', '', ''),
(116, 'GKORD/16-17/116', '', '', ''),
(117, 'GKORD/16-17/117', '', '', ''),
(118, 'GKORD/16-17/118', '', '', ''),
(119, 'GKSLSBK00015', '', '', ''),
(120, 'GKSLSBK00015', '', '', ''),
(121, '', '', '', ''),
(122, '', '', '', ''),
(123, 'GKORD/16-17/123', '', '', ''),
(124, 'GKORD/17-18/124', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `taxandduties`
--

CREATE TABLE `taxandduties` (
  `id` int(11) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `invoiceno` varchar(255) NOT NULL,
  `excise` decimal(20,2) NOT NULL,
  `excisepercent` decimal(10,2) NOT NULL,
  `cstamnt` decimal(20,2) NOT NULL,
  `cstpercent` decimal(10,2) NOT NULL,
  `vatamnt` decimal(20,2) NOT NULL,
  `vatpercent` decimal(10,2) NOT NULL,
  `totalliab` decimal(20,2) NOT NULL,
  `withoutint` decimal(20,2) NOT NULL,
  `intr` decimal(20,2) NOT NULL,
  `status` int(11) DEFAULT '0',
  `crtdby` varchar(255) NOT NULL,
  `dos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxandduties`
--

INSERT INTO `taxandduties` (`id`, `doe`, `invoiceno`, `excise`, `excisepercent`, `cstamnt`, `cstpercent`, `vatamnt`, `vatpercent`, `totalliab`, `withoutint`, `intr`, `status`, `crtdby`, `dos`) VALUES
(2, '2017-01-20', 'GKINV1770002', '1350.00', '6.00', '477.00', '2.00', '0.00', '0.00', '1827.00', '0.00', '0.00', 0, 'admin', '2017-01-20 04:13:37 PM'),
(3, '2017-01-31', 'GKINV1770046', '8542.00', '6.00', '3018.00', '2.00', '0.00', '0.00', '11560.00', '0.00', '0.00', 0, 'admin', '2017-01-31 07:26:33 PM'),
(4, '2017-01-31', 'GKINV1770047', '3900.00', '6.00', '1378.00', '2.00', '0.00', '0.00', '5278.00', '0.00', '0.00', 0, 'admin', '2017-01-31 08:23:36 PM'),
(5, '2017-01-31', 'GKINV1770045', '0.00', '6.00', '4240.00', '2.00', '0.00', '0.00', '4240.00', '0.00', '0.00', 0, 'admin', '2017-01-31 08:36:37 PM'),
(6, '2017-01-31', 'GKINV1770043', '7800.00', '6.00', '0.00', '0.00', '0.00', '0.00', '7800.00', '0.00', '0.00', 0, 'admin', '2017-01-31 08:38:09 PM'),
(7, '2017-02-06', 'GKINV1770048', '3900.00', '6.00', '0.00', '0.00', '15847.00', '23.00', '19747.00', '0.00', '0.00', 0, 'admin', '2017-02-06 07:26:30 PM'),
(8, '2017-02-06', 'GKINV1770005', '1350.00', '6.00', '0.00', '0.00', '0.00', '0.00', '1377.00', '1350.00', '2.00', 0, 'admin', '2017-02-06 08:03:12 PM'),
(9, '2017-02-06', 'GKINV1770026', '540.00', '6.00', '191.00', '2.00', '0.00', '0.00', '731.00', '731.00', '10.00', 0, 'admin', '2017-02-06 08:07:53 PM');

-- --------------------------------------------------------

--
-- Table structure for table `taxationdetails`
--

CREATE TABLE `taxationdetails` (
  `id` int(11) NOT NULL,
  `vatno` varchar(50) NOT NULL,
  `vatamnt` decimal(20,2) NOT NULL,
  `cstno` varchar(50) NOT NULL,
  `cstamnt` decimal(20,2) NOT NULL,
  `exciseno` varchar(50) NOT NULL,
  `exciswamnt` decimal(20,2) NOT NULL,
  `tdsno` varchar(50) NOT NULL,
  `tdsamnt` decimal(20,2) NOT NULL,
  `custom` varchar(50) NOT NULL,
  `customamnt` decimal(20,2) NOT NULL,
  `ptax` varchar(50) NOT NULL,
  `ptaxamnt` decimal(20,2) NOT NULL,
  `stax` varchar(50) NOT NULL,
  `staxamnt` decimal(20,2) NOT NULL,
  `intax` varchar(50) NOT NULL,
  `intaxamnt` decimal(20,2) NOT NULL,
  `taxname` int(11) NOT NULL,
  `taxno` int(11) NOT NULL,
  `taxamnt` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '11',
  `crtdby` varchar(255) NOT NULL,
  `doe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxationdetails`
--

INSERT INTO `taxationdetails` (`id`, `vatno`, `vatamnt`, `cstno`, `cstamnt`, `exciseno`, `exciswamnt`, `tdsno`, `tdsamnt`, `custom`, `customamnt`, `ptax`, `ptaxamnt`, `stax`, `staxamnt`, `intax`, `intaxamnt`, `taxname`, `taxno`, `taxamnt`, `status`, `crtdby`, `doe`) VALUES
(1, 'DSFD', '23.00', 'ASD2323', '2.00', 'DSDSFFD', '14.00', '', '5.00', '', '0.00', '', '0.00', '', '0.00', '', '0.00', 0, 0, 0, 11, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tdsbal`
--

CREATE TABLE `tdsbal` (
  `id` int(11) NOT NULL,
  `tdsremark` varchar(255) NOT NULL,
  `openbal` decimal(20,2) NOT NULL,
  `closebal` decimal(20,2) NOT NULL,
  `crtdby` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tdspay`
--

CREATE TABLE `tdspay` (
  `id` int(11) NOT NULL,
  `invoiceno` varchar(255) NOT NULL,
  `pan` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `invoiceamnt` decimal(20,2) NOT NULL,
  `remarks` text NOT NULL,
  `accountgroup` varchar(255) NOT NULL,
  `debit` decimal(20,2) NOT NULL,
  `credit` decimal(20,2) NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `dos` varchar(255) NOT NULL,
  `crtdby` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tdspay`
--

INSERT INTO `tdspay` (`id`, `invoiceno`, `pan`, `name`, `invoiceamnt`, `remarks`, `accountgroup`, `debit`, `credit`, `balance`, `doe`, `dos`, `crtdby`, `status`) VALUES
(1, '2134', '2134ssdf', 'cxcv', '10000.00', 'Driving Allawonce', '', '5000.00', '0.00', '5000.00', '2017-01-26', '2017-01-26 04:10:58 AM', 'admin', 2),
(2, '54321', '123456789', 'pankaj patra', '5000.00', 'Rent', '', '270.00', '0.00', '270.00', '2017-01-26', '2017-01-26 10:18:47 AM', 'admin', 2),
(3, '54321', '123456789', 'pankaj patra', '54000.00', 'Rent', '', '2700.00', '0.00', '2700.00', '2017-01-26', '2017-01-26 10:27:36 AM', 'admin', 2),
(4, '54321', '123456789', 'pankaj patra', '54000.00', 'Rent', '', '5400.00', '0.00', '5400.00', '2017-01-26', '2017-01-26 11:06:01 AM', 'admin', 0),
(5, '', 'sfdsf1221', 'abhijit sanyal', '54000.00', 'Misscle.', '', '5400.00', '0.00', '5400.00', '2017-01-27', '2017-01-27 11:53:59 AM', 'admin', 2),
(6, '', '123456879', 'Samaresh Mallick', '15000.00', 'Rent', '', '1500.00', '0.00', '1500.00', '2017-01-27', '2017-01-27 06:21:53 PM', 'admin', 1),
(7, '', '2222222', 'aaza', '10000.00', 'Misscle.', '', '500.00', '0.00', '500.00', '2017-01-31', '2017-01-31 06:40:58 PM', 'admin', 2),
(8, '', 'asasdad', 'Shantanu ghoshal', '10000.00', 'Misscle.', '', '1000.00', '0.00', '1000.00', '2017-01-31', '2017-01-31 08:42:51 PM', 'admin', 2),
(9, '', '12456', 'ssdsd', '200.00', 'Electric Bill', 'Indirect Expence', '10.00', '0.00', '10.00', '2017-02-07', '2017-02-07 12:36:27 PM', 'admin', 0),
(10, '', '', 'pankaj patra', '1000.00', 'Fitting Chrg', 'Indirect Expence', '0.00', '0.00', '0.00', '2017-02-07', '2017-02-07 12:49:18 PM', 'admin', 0),
(11, '', '54321569', 'manish mukherjee', '15000.00', 'tds return', 'Direct Expence', '750.00', '0.00', '750.00', '2017-02-07', '2017-02-07 01:02:36 PM', 'admin', 0),
(12, '', '543216', 'ghanesh nayek', '5400.00', 'cst return', 'Indirect Expence', '270.00', '0.00', '270.00', '2017-02-07', '2017-02-07 01:39:45 PM', 'admin', 2),
(13, '', '123456', 'samaresh mallick', '5400.00', 'Couriour Charge', 'Inventory Assets', '270.00', '0.00', '270.00', '2017-02-07', '2017-02-07 05:33:10 PM', 'admin', 0),
(14, '', '123546', 'nABADAY SANGHA', '50000.00', 'Electric Bill', '14', '2500.00', '0.00', '2500.00', '2017-02-07', '2017-02-07 06:36:06 PM', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `temporder`
--

CREATE TABLE `temporder` (
  `id` int(11) NOT NULL,
  `temporderid` int(11) NOT NULL,
  `modelname` varchar(255) NOT NULL,
  `qty` int(30) NOT NULL,
  `prtscode` varchar(255) NOT NULL,
  `partsname` varchar(255) NOT NULL,
  `prtsqty` int(30) NOT NULL,
  `bxnme` varchar(255) NOT NULL,
  `bxqty` int(30) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `doe2` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crdtby` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_table`
--

CREATE TABLE `temp_table` (
  `id` int(11) NOT NULL,
  `pono` varchar(255) NOT NULL,
  `modelname` varchar(255) NOT NULL,
  `warehouse` varchar(255) NOT NULL,
  `boxname` varchar(255) NOT NULL,
  `indvididual` text NOT NULL,
  `totalbox` int(20) NOT NULL,
  `stock` text NOT NULL,
  `stockindi` text NOT NULL,
  `doe` varchar(20) NOT NULL,
  `credtd` varchar(255) NOT NULL,
  `updt` varchar(255) NOT NULL,
  `updtdte` varchar(255) NOT NULL,
  `updtno` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_table`
--

INSERT INTO `temp_table` (`id`, `pono`, `modelname`, `warehouse`, `boxname`, `indvididual`, `totalbox`, `stock`, `stockindi`, `doe`, `credtd`, `updt`, `updtdte`, `updtno`, `status`) VALUES
(2, 'GK/17/18/00035', 'ER INDIA G-7', 'GKWREHSE002', '2fdfd', '', 10, '3;1;2,5;1;2', '', '2017-01-23 02:43:52', 'admin', '', '', 0, 1),
(3, 'GKPONO17012400037', 'ER INDIA G-7', 'GKWREHSE002', 'box2', '', 20, '3;1;2,4;2;2,5;1;2,6;2;2,8;2;2', '', '2017-01-31 03:44:51', 'admin', '', '', 0, 1),
(4, 'GKPONO17021000041', 'ER INDIA G-7', 'GKWREHSE002', 'NANDA!', '', 20, '3;2;2,4;2;1,5;2;2,6;1;2,7;2;2,8;1;2,9;2;2,10;2;2,11;1;2', '', '2017-02-10 08:26:15', 'admin', '', '', 0, 1),
(7, 'GKPONO17021000041', 'ER INDIA G-7', 'GKWREHSE002', '', '', 0, '', '14;10;1;51,15;10;1;25,16;10;1;30,17;10;1;40', '2017-02-10 08:37:07', 'admin', '', '', 0, 1),
(8, 'GKPONO17021000041', 'ER INDIA G-7', 'GKWREHSE002', '', '', 0, '', '21;10;1;2,20;10;1;2,19;10;1;2,18;10;1;2', '2017-02-10 08:41:42', 'admin', '', '', 0, 1),
(9, 'GKPONO17021000041', 'ER INDIA G-7', 'GKWREHSE001', '', '', 0, '', '119;10;2;5', '2017-02-10 08:44:11', 'admin', '', '', 0, 1),
(10, 'GKPONO17021100042', 'ER INDIA G-7S', 'GKWREHSE001', 'BX-1', '', 3, '37;1;2,66;1;2,67;1;2,68;1;2,69;1;2,70;1;2,71;1;2,72;1;2,73;1;2,74;1;2,75;1;2,76;1;2,77;1;2,78;1;2,79;1;2,80;1;2,81;1;2,82;1;2,83;1;2,84;1;2,85;1;2,86;1;2,87;1;2,88;1;2,89;1;2,90;1;2,91;1;2,92;1;2,93;1;2,94;1;2,95;1;2,97;1;1,98;1;2,99;1;2,100;1;2,101;1;2,102;1;2,103;1;2,104;1;2,105;1;2,225;1;2,226;1;2,227;1;2,228;1;2,229;1;2,230;1;2,231;1;2,232;1;2,236;1;1,237;1;2,238;1;2,239;1;2,240;1;2,241;1;2,242;1;2,243;1;2,244;1;2,246;1;2,247;1;2,250;1;2,251;1;2,252;1;2,255;1;2,257;1;2,258;1;2', '', '2017-02-11 05:43:11', 'admin', '', '', 0, 1),
(11, 'GKPONO17021100042', 'ER INDIA K-9', 'GKWREHSE003', 'BX-2', '', 3, '31;1;1,32;1;2,33;1;1,34;1;2,35;1;2,36;1;2,38;1;2,40;1;2,41;;,41;;,42;1;2,43;1;2,44;1;2,45;1;2,46;1;2,47;1;2,48;1;2,49;1;2,50;1;2,52;1;2,54;1;2,55;1;2,56;1;2,57;1;2,58;1;2,59;1;2,61;1;2,62;1;2,63;1;2,64;1;2,65;1;2,106;1;2,107;1;2,169;1;2,170;1;2', '', '2017-02-11 05:46:20', 'admin', '', '', 0, 1),
(12, 'GKPONO17021000041', 'ER INDIA G-7', 'GKWREHSE003', '', '', 0, '', '3;20;2;20,4;20;2;20,5;20;2;30,6;;2;20', '2017-02-13 08:27:50', 'admin', '', '', 0, 1),
(13, 'GKPONO17021300043', 'ER INDIA G-7', 'GKWREHSE002', '', '', 0, '', '119;20;2;2,28;20;2;2', '2017-02-13 09:13:41', 'admin', '', '', 0, 1),
(14, 'GKPONO17021300043', 'ER INDIA G-7', 'GKWREHSE002', 'brfge', '', 10, '3;2;2,4;2;2,5;2;2', '', '2017-02-14 05:36:45', 'admin', '', '', 0, 1),
(15, 'GKPONO17021300043', 'ER INDIA G-7', 'GKWREHSE003', '', '', 0, '', '5;20;2;2,6;40;2;1,121;20;2;1', '2017-02-14 05:52:14', 'admin', '', '', 0, 1),
(16, 'GKPONO17021300043', 'ER INDIA G-7', 'GKWREHSE003', '', '', 0, '', '5;20;2;2,6;40;2;1,121;20;2;1', '2017-02-14 05:54:23', 'admin', '', '', 0, 1),
(17, 'GKPONO17021300043', 'ER INDIA G-7', 'GKWREHSE003', '', '', 0, '', '5;20;2;2,6;40;2;1,121;20;2;1', '2017-02-14 05:57:13', 'admin', '', '', 0, 1),
(18, 'GKPONO17021300043', 'ER INDIA G-7', 'GKWREHSE003', '', '', 0, '', '5;20;2;2,6;40;2;1,121;20;2;1', '2017-02-14 06:01:26', 'admin', '', '', 0, 1),
(19, 'GKPONO17021400045', 'ER INDIA G-7', 'GKWREHSE002', 'asdasd', '', 20, '3;1;2,4;1;2,5;1;2,121;1;2', '', '2017-02-14 01:39:56', 'admin', '', '', 0, 1),
(20, 'GKPONO17021400045', 'ER INDIA G-7', 'GKWREHSE001', 'saasd', '', 20, '3;1;2,4;1;2,5;1;1,6;1;2,121;1;2', '', '2017-02-14 01:47:09', 'admin', '', '', 0, 1),
(21, 'GKPONO17021400045', 'ER INDIA G-7', 'GKWREHSE003', 'mnbg', '', 10, '3;1;2', '', '2017-02-14 07:20:13', 'admin', '', '', 0, 1),
(22, 'GKPONO17021400045', 'ER INDIA G-7', 'GKWREHSE003', 'mnbg', '', 10, '3;1;2', '', '2017-02-14 07:27:53', 'admin', '', '', 0, 1),
(23, 'GKPONO17021400045', 'ER INDIA G-7', 'GKWREHSE002', '', '', 0, '', '3;15;1;1', '2017-10-03 11:23:26', 'admin', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tour_plan`
--

CREATE TABLE `tour_plan` (
  `id` int(11) NOT NULL,
  `salesmanid` varchar(50) NOT NULL,
  `dte` varchar(25) NOT NULL,
  `formloc` varchar(255) NOT NULL,
  `toloca` varchar(255) NOT NULL,
  `mnthcode` varchar(20) NOT NULL,
  `yrcode` varchar(20) NOT NULL,
  `custname` varchar(255) NOT NULL,
  `contactinfo` varchar(50) NOT NULL,
  `remarks` text NOT NULL,
  `dailyexpen` decimal(10,2) NOT NULL,
  `crtdby` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_plan`
--

INSERT INTO `tour_plan` (`id`, `salesmanid`, `dte`, `formloc`, `toloca`, `mnthcode`, `yrcode`, `custname`, `contactinfo`, `remarks`, `dailyexpen`, `crtdby`, `userid`, `status`) VALUES
(1, '', '2017-01-01', 'sfdsdf', 'sdfsdf', '01', '2017', 'sdfsdf', '111', '', '0.00', 'Sougata Dalapati', 5, 0),
(2, '', '2017-01-02', 'assdaf', 'afsdsfd', '01', '2017', 'sdfsd', '123', '', '0.00', 'Sougata Dalapati', 5, 0),
(3, '', '2017-01-06', 'dsfsdadsfd', 'sdfds', '01', '2017', 'sdfsd1213', '', '', '0.00', 'Sougata Dalapati', 5, 0),
(7, 'GKSLS0006', '2017-01-18', 'asasd', 'asdas', '01', '2017', 'dfgdg', '33243', 'sdfgfdg', '0.00', 'gautam basu', 6, 0),
(8, 'GKSLS0006', '2017-01-19', 'klliuoi', 'asdsad', '01', '2017', 'dggfhj', '546576', 'fdgf', '0.00', 'gautam basu', 6, 0),
(9, 'GKSLS0006', '2017-01-18', 'sdfg', 'fdgh', '01', '2017', 'asdddfsf', '1212', 'dfgdf', '0.00', 'gautam basu', 6, 0),
(10, 'GKSLS0006', '2017-01-18', 'asasd', 'fhfjgj', '01', '2017', 'dfgdg', '1334', 'dfgdfg', '0.00', 'gautam basu', 6, 0),
(12, 'GKSLS0006', '2017-01-20', 'asdas', 'asdas', '01', '2017', 'asdas', '', '234453', '0.00', 'gautam basu', 6, 0),
(13, 'GKSLS0006', '2017-01-20', 'asdasd', 'asdasd', '01', '2017', 'dsfdsf', '32432424', '435345', '0.00', 'gautam basu', 6, 0),
(14, 'GKSLS0006', '2017-01-21', 'asdada', 'asdasd', '01', '2017', 'asdas', '', 'asdas', '0.00', 'gautam basu', 6, 0),
(15, 'GKSLS0006', '2017-01-17', 'fdgg', 'dgdgh', '01', '2017', 'ghfg', '', 'adffd', '0.00', 'gautam basu', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transection_master_acount`
--

CREATE TABLE `transection_master_acount` (
  `id` int(11) NOT NULL,
  `invoiceno` varchar(60) NOT NULL,
  `refno` varchar(255) NOT NULL,
  `clientID` varchar(255) NOT NULL,
  `dat` varchar(255) NOT NULL,
  `type` text NOT NULL,
  `paid_amt` decimal(20,2) NOT NULL,
  `receiptamnt` decimal(20,2) NOT NULL,
  `boking_ID` varchar(255) NOT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `bankName` text,
  `branchName` varchar(255) DEFAULT NULL,
  `remark` text NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `accounthead` varchar(255) NOT NULL,
  `doe` varchar(255) NOT NULL,
  `acstatus` int(11) NOT NULL DEFAULT '0',
  `lstupdte` varchar(50) NOT NULL,
  `submitby` varchar(255) NOT NULL,
  `vid` int(11) NOT NULL,
  `updateby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transection_master_acount`
--

INSERT INTO `transection_master_acount` (`id`, `invoiceno`, `refno`, `clientID`, `dat`, `type`, `paid_amt`, `receiptamnt`, `boking_ID`, `cheque_no`, `bankName`, `branchName`, `remark`, `purpose`, `accounthead`, `doe`, `acstatus`, `lstupdte`, `submitby`, `vid`, `updateby`) VALUES
(3, '', '', 'GKCLNT1600016', '12/19/2016', 'Cheque', '100.00', '0.00', '0', '12345', 'DENA', 'IIM', 'ABCD', '', '', '', 0, '', '', 0, ''),
(8, '', '', 'GKCLNT161700002', '12/29/2016', 'Cash', '100.00', '0.00', '', NULL, NULL, NULL, '5454545', '', '', '', 0, '', '', 0, ''),
(9, '', '', 'TGKCLNT1700021', '01/18/2017', 'Cheque', '15400.00', '0.00', '', '234234', 'fdegrtg', 'erteyty', 'efeg', '', '', '', 0, '', '', 0, ''),
(10, '', '', 'GKCLNT1600015', '01/25/2017', 'Cheque', '0.00', '0.00', '', '', '', '', 'adsd', 'Security', '', '', 0, '', '', 0, ''),
(11, '', '', 'GKCLNT1600015', '01/12/2017', 'Cheque', '0.00', '0.00', '', '', '', '', '', 'Security', '', '', 0, '', '', 0, ''),
(12, '', '', 'GKCLNT1600015', '01/12/2017', 'Cash', '0.00', '0.00', '', '', '', '', '', 'Security', '', '', 0, '', '', 0, ''),
(13, '', '', 'GKCLNT1600015', '01/12/2017', 'Cash', '54000.00', '12540.00', '', '', '', '', '', 'Security', '', '', 1, '2017-01-12 01:30:27 PM', '', 0, 'admin'),
(14, '', '', 'GKCLNT1600015', '01/12/2017', 'Cash', '54200.00', '0.00', '', '', '', '', '', 'Security', '', '', 0, '', '', 0, ''),
(15, '', '', 'GKCLNT1600015', '01/12/2017', 'Cash', '54000.00', '2500.00', '', '', '', '', 'HGD', 'Advance', '', '', 1, '2017-01-12 04:49:09 PM', '', 0, 'admin'),
(16, '', '', 'GKCLNT1600015', '01/25/2017', 'Cheque', '100.00', '0.00', '', '', '', '', 'SADFSAF', 'Advance', '', '', 0, '', '', 0, ''),
(17, '', '', 'GKCLNT1600015', '01/12/2017', 'Cash', '500.00', '0.00', '', '', '', '', '', 'Advance', '', '', 0, '', '', 0, ''),
(18, '', '', 'GKCLNT1600015', '01/12/2017', 'Cheque', '600.00', '0.00', '', '', '', '', '', 'Advance', '', '', 0, '', '', 0, ''),
(19, '', '', 'GKCLNT1600015', '01/12/2017', 'Cheque', '900.00', '0.00', '', '', '', '', '', 'Advance', '', '', 0, '', '', 0, ''),
(20, '', '', 'GKCLNT1600004', '01/12/2017', 'Cash', '2500.00', '0.00', '', '', '', '', 'dfdsf', 'Security', '', '', 0, '', '', 0, ''),
(21, '', '', 'GKCLNT1600013', '10-10-2016', 'cash', '12540.00', '0.00', '', '', '', 'asdas', '', 'security', '', '', 0, '', '', 0, ''),
(22, '', '', 'GKCLNT1600015', '01/25/2017', 'Cash', '2500.00', '2500.00', '', '', '', '', 'sdsd', 'Security', '', '', 1, '2017-01-12 05:08:19 PM', '', 0, 'admin'),
(23, '', '', 'TGKCLNT1700024', '2017-01-13', 'cheque', '54000.00', '0.00', 'GKINV1770038', '32164', 'Indian Bank', 'dsds', '', 'security', '', '2017-01-13 11:09:51 AM', 0, '', 'admin', 0, ''),
(24, '', '', 'TGKCLNT1700025', '2017-01-13', 'cheque', '45000.00', '0.00', 'GKINV1770038', '123456', 'Central Bank of India', 'ssdsd', '', 'advanced', '', '2017-01-13 11:17:33 AM', 0, '', 'admin', 0, ''),
(25, '', '', 'TGKCLNT1700021', '2017-01-13', 'cheque', '45800.00', '0.00', 'GKSLSBK70041', '164', ' IndusInd Bank', 'dfgdfg', '', 'advanced', '', '2017-01-13 10:38:30 PM', 0, '', 'admin', 0, ''),
(26, '', '', 'TGKCLNT1700022', '2017-01-15', 'cash', '54000.00', '0.00', 'GKSLSBK70042', '', '', '', '', 'advanced', '', '2017-01-15 09:38:35 PM', 0, '', 'admin', 0, ''),
(27, '', '', 'CGKCLNT1700028', '2017-01-20', 'cash', '54000.00', '0.00', '', '', '', '', '', 'security', '', '2017-01-19', 0, '', 'gautam basu', 0, ''),
(28, '', '', 'CGKCLNT1700028', '2017-01-19', 'cash', '25000.00', '0.00', '', '', '', '', '', 'security', '', '2017-01-19', 0, '', 'gautam basu', 0, ''),
(29, '', '', 'CGKCLNT1700028', '2017-01-20', 'cash', '45000.00', '0.00', '', '45000', '', '', '', 'security', '', '2017-01-19', 0, '', 'gautam basu', 0, ''),
(30, '', '', 'CGKCLNT1700028', '2017-01-17', 'cash', '55000.00', '0.00', '', '', '', '', '', 'security', '', '2017-01-19', 0, '', 'gautam basu', 0, ''),
(31, '', '', 'CGKCLNT1700028', '2017-01-19', 'cash', '540000.00', '50000.00', '', 'zxdad', '', '', '', 'security', '', '2017-01-26', 1, '2017-01-19 09:11:11 PM', 'gautam basu', 0, 'admin'),
(32, '', '', 'CGKCLNT1700028', '2017-01-19', 'cheque', '14500.00', '14500.00', '', 'sdfs', '', 'dsfdsf', '', 'security', '', '2017-01-26', 1, '2017-01-19 10:31:33 PM', 'gautam basu', 12, 'admin'),
(33, '12546', '4343', 'DGKCLNT1700018', '2017-01-27', 'cash', '0.00', '0.00', '', NULL, NULL, NULL, 'ssds', 'registration/Security Deposit', '', '2017-01-27', 0, '2017-01-27 01:03:05 PM', 'admin', 0, ''),
(34, '12546', '4343', 'DGKCLNT1700018', '2017-01-27', 'cheque', '540000.00', '540000.00', '', '1212', 'fdfdsf', 'sdfsdf', 'ssds', 'registration/Security Deposit', '', '2017-01-27', 1, '2017-01-27 01:28:35 PM', 'admin', 0, 'admin'),
(35, '654789', '12345', 'DGKCLNT1700018', '2017-01-27', 'cheque', '5400000.00', '5400000.00', '', '124569', 'asdsd', 'aasd', 'dfgdg\r\nfdgdfg', 'advance payment', '', '2017-01-27', 1, '2017-01-27 01:39:53 PM', 'admin', 0, 'admin'),
(36, '547321', '2547896', 'DGKCLNT1700018', '2017-01-27', 'rtgs', '100000.00', '100000.00', '', 's2334', 'sdfsfd', 'sdfd', 'asdada', 'advance payment', '', '2017-01-27', 1, '2017-01-27 01:55:33 PM', 'admin', 0, 'admin'),
(37, '2548963', '125469', 'DGKCLNT1700018', '2017-01-27', 'cheque', '5487000.00', '5487000.00', '', '1254789', 'zad', 'asasd', 'asdasd', 'advance payment', '', '2017-01-27', 1, '2017-01-27 02:10:43 PM', 'admin', 0, 'admin'),
(38, '546321', '123456', 'CGKCLNT1700017', '2017-01-27', 'cash', '540000.00', '540000.00', '', NULL, NULL, NULL, 'sssdsdsd', 'SECURITY', '', '2017-01-27', 1, '2017-01-27 04:48:41 PM', 'admin', 0, 'admin'),
(39, '', '145879', 'CGKCLNT1700017', '2017-01-27', 'cash', '5000.00', '5000.00', '', NULL, NULL, NULL, 'sdsdsds', 'advance payment', '', '2017-01-27', 1, '2017-01-27 04:53:40 PM', 'admin', 0, 'admin'),
(40, '54321456', '1254698', 'CGKCLNT1700017', '2017-01-27', 'cash', '51000.00', '51000.00', '', NULL, NULL, NULL, 'zssads', 'advance payment', '', '2017-01-27', 1, '2017-01-27 05:28:59 PM', 'admin', 0, 'admin'),
(41, '', '123456', 'CGKCLNT1700017', '2017-01-27', 'cash', '500000.00', '500000.00', '', NULL, NULL, NULL, 'sssd', 'advance payment', '', '2017-01-27', 1, '2017-01-27 06:18:39 PM', 'admin', 0, 'admin'),
(42, '', '54321456', 'DGKCLNT1700018', '2017-01-27', 'cash', '1000000.00', '1000000.00', '', NULL, NULL, NULL, 'ssdadasd', 'SECURITY', '', '2017-01-27', 1, '2017-01-27 06:20:43 PM', 'admin', 0, 'admin'),
(43, '', '123456', 'DGKCLNT1700018', '2017-01-31', 'cash', '50000.00', '50000.00', '', NULL, NULL, NULL, 'fxdg', 'SECURITY', '', '2017-01-31', 1, '2017-01-31 12:07:40 PM', 'admin', 0, 'admin'),
(44, '', '', 'CGKCLNT1700028', '2017-01-31', 'cheque', '54000.00', '0.00', 'GKSLSBK70045', '12546', ' ICICI Bank', 'dgg', '', 'advanced', '', '2017-01-31 10:51:13 AM', 0, '', 'admin', 0, ''),
(45, '', '123456', 'DGKCLNT1700018', '2017-01-31', 'cash', '1000000.00', '1000000.00', '', NULL, NULL, NULL, 'ssad', 'advance payment', '', '2017-01-31', 1, '2017-01-31 05:36:48 PM', 'admin', 0, 'admin'),
(48, '', '123456', 'DGKCLNT1700030', '2017-01-31', 'cash', '50000.00', '50000.00', '', NULL, NULL, NULL, 'dfgfdg', 'SECURITY', '', '2017-01-31', 1, '2017-01-31 08:06:46 PM', 'admin', 0, 'admin'),
(49, '', '123456', 'DGKCLNT1700030', '2017-01-31', 'cash', '100000.00', '100000.00', '', NULL, NULL, NULL, 'cfgfddg', 'advance payment', '', '2017-01-31', 1, '2017-01-31 08:07:57 PM', 'admin', 0, 'admin'),
(50, '', '123456', '', '2017-02-08', 'cash', '50000.00', '0.00', '', NULL, NULL, NULL, 'bnvhg', 'Interest Received ', '16', '2017-02-08', 0, '2017-02-08 06:24:38 PM', 'admin', 0, ''),
(51, 'GKSLSBK70052', '123456', 'CGKCLNT1700028', '2017-02-09', 'cheque', '450000.00', '450000.00', '', '32', 'asdasd', 'asasd', 'sdsdsd', 'Pay Booking Amount', '18', '2017-02-09', 1, '2017-02-09 12:56:09 PM', 'admin', 0, 'admin'),
(52, 'GKSLSBK70053', '2164', 'TGKCLNT1700023', '2017-02-09', 'cheque', '45000.00', '45000.00', '', '547896', 'asdsad', 'sadsad', 'dsfdf', 'Pay Booking Amount', '18', '2017-02-09', 1, '2017-02-09 01:28:26 PM', 'admin', 0, 'admin'),
(53, 'GKSLSBK70054', '12456', 'TGKCLNT1700023', '2017-02-10', 'cheque', '2.00', '0.00', '', '125463', 'asdasd', 'asdasd', 'dfddfs', 'Pay Booking Amount', '18', '2017-02-10', 0, '2017-02-10 07:57:48 PM', 'admin', 0, ''),
(54, 'GKSLSBK70054', '', 'TGKCLNT1700023', '2017-02-10', 'rtgs', '300000.00', '300000.00', '', 'adadf', 'adafafd', 'afaf', 'sdfdssdf', 'Pay Booking Amount', '18', '2017-02-10', 1, '2017-02-10 07:59:36 PM', 'admin', 0, 'admin'),
(55, 'GKSLSBK70055', 'asdsad', 'DGKCLNT1700030', '2017-02-10', 'cheque', '500000.00', '500000.00', '', 'assad', 'asasd', 'asdasd', 'assd', 'Pay Booking Amount', '18', '2017-02-10', 1, '2017-02-10 08:08:13 PM', 'admin', 0, 'admin'),
(56, 'GKSLSBK70057', 'ssd121', 'CGKCLNT1700028', '2017-02-13', 'rtgs', '1500000.00', '1500000.00', '', '125463', 'zzx', 'zxzx', 'ddsfdfg', 'Pay Booking Amount', '18', '2017-02-13', 1, '2017-02-13 11:51:17 PM', 'admin', 0, 'admin'),
(57, 'GKSLSBK70058', 'asdas', 'CGKCLNT1700028', '2017-02-14', 'rtgs', '700000.00', '700000.00', '', 'asdas', 'asdasd', 'asdasd', 'fsdfgf', 'Pay Booking Amount', '18', '2017-02-14', 1, '2017-02-14 12:08:42 AM', 'admin', 0, 'admin'),
(58, '', 'asasd', 'DGKCLNT1700030', '2017-02-14', 'rtgs', '500000.00', '500000.00', '', '1254563', 'asdsad', 'adfdsf', 'saasdasd', 'SECURITY', '6', '2017-02-14', 1, '2017-02-14 05:28:05 PM', 'admin', 0, 'admin'),
(59, '', '', '	DGKCLNT1700018', '2017-02-14', 'cash', '1200.00', '0.00', '', NULL, NULL, NULL, 'Aas', 'advance payment', '18', '2017-02-14', 0, '2017-02-14 08:21:33 PM', 'admin', 0, ''),
(60, '', '', '	DGKCLNT1700018', '2017-02-14', 'cash', '1200.00', '0.00', '', NULL, NULL, NULL, 'Aas', 'advance payment', '18', '2017-02-14', 0, '2017-02-14 08:23:08 PM', 'admin', 0, ''),
(61, '', '', '	DGKCLNT1700018', '2017-02-14', 'cheque', '1200.00', '0.00', '', '123245', 'dfdsd', 'sdfdsf', 'Aas', 'advance payment', '18', '2017-02-14', 0, '2017-02-14 08:23:50 PM', 'admin', 0, ''),
(62, '', '', '	DGKCLNT1700018', '2017-02-14', 'cash', '1200.00', '0.00', '', NULL, NULL, NULL, 'Aas', 'advance payment', '18', '2017-02-14', 0, '2017-02-14 08:24:00 PM', 'admin', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `transection_sparesparts`
--

CREATE TABLE `transection_sparesparts` (
  `id` int(20) NOT NULL,
  `date` date NOT NULL,
  `model_id` varchar(255) NOT NULL,
  `partsId` varchar(255) NOT NULL,
  `specifqty` text NOT NULL,
  `assignmentNo` varchar(255) NOT NULL,
  `packageNo` varchar(255) NOT NULL,
  `openingQty` int(20) NOT NULL,
  `newQty` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `invoiceNo` varchar(255) NOT NULL,
  `saleQty` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `totalqt` int(11) NOT NULL,
  `gtotal` int(20) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `lstupdt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transection_sparesparts`
--

INSERT INTO `transection_sparesparts` (`id`, `date`, `model_id`, `partsId`, `specifqty`, `assignmentNo`, `packageNo`, `openingQty`, `newQty`, `total`, `invoiceNo`, `saleQty`, `status`, `totalqt`, `gtotal`, `crtd`, `lstupdt`) VALUES
(1, '2016-12-28', 'ER INDIA G-7', '3', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-28 10:49:23 AM'),
(2, '2016-12-28', 'ER INDIA G-7', '3', '', '', '', 69, 59, 128, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:35:11 AM'),
(3, '2016-12-28', 'ER INDIA G-7', '3', '', '', '', 128, -128, 0, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:49:22 AM'),
(4, '2016-12-28', 'ER INDIA G-7', '3', '', '', '', 0, 59, 59, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(5, '2016-12-28', 'ER INDIA G-7', '4', '', '', '', 0, 68, 68, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(7, '2016-12-28', 'ER INDIA G-7', '8', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(8, '2016-12-28', 'ER INDIA G-7', '9', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(9, '2016-12-28', 'ER INDIA G-7', '11', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(10, '2016-12-28', 'ER INDIA G-7', '12', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(11, '2016-12-28', 'ER INDIA G-7', '14', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(12, '2016-12-28', 'ER INDIA G-7', '15', '', '', '', 0, 68, 68, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(13, '2016-12-28', 'ER INDIA G-7', '16', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(14, '2016-12-28', 'ER INDIA G-7', '17', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(15, '2016-12-28', 'ER INDIA G-7', '18', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(16, '2016-12-28', 'ER INDIA G-7', '19', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(17, '2016-12-28', 'ER INDIA G-7', '20', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(18, '2016-12-28', 'ER INDIA G-7', '21', '1;276', '', '', 0, 276, 276, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(19, '2016-12-28', 'ER INDIA G-7', '22', '', '', '', 0, 71, 71, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(20, '2016-12-28', 'ER INDIA G-7', '23', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(21, '2016-12-28', 'ER INDIA G-7', '24', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(22, '2016-12-28', 'ER INDIA G-7', '25', '3;69', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(23, '2016-12-28', 'K-9', '31', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:47:31 PM'),
(24, '2016-12-28', 'K-9', '32', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(25, '2016-12-28', 'K-9', '33', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(26, '2016-12-28', 'K-9', '34', '', '', '', 0, 512, 512, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(27, '2016-12-28', 'K-9', '35', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(28, '2016-12-28', 'K-9', '36', '', '', '', 0, 512, 512, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(29, '2016-12-28', 'K-9', '37', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(30, '2016-12-28', 'K-9', '38', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(31, '2016-12-28', 'K-9', '40', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(32, '2016-12-28', 'K-9', '41', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(33, '2016-12-28', 'K-9', '43', '', '', '', 0, 512, 512, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(34, '2016-12-28', 'K-9', '44', '', '', '', 0, 228, 228, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(35, '2016-12-28', 'K-9', '45', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(36, '2016-12-28', 'K-9', '46', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(37, '2016-12-28', 'K-9', '47', '', '', '', 0, 512, 512, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(38, '2016-12-28', 'K-9', '48', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(39, '2016-12-28', 'K-9', '49', '', '', '', 0, 512, 512, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(40, '2016-12-28', 'K-9', '50', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(41, '2016-12-28', 'K-9', '51', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(42, '2016-12-28', 'K-9', '52', '', '', '', 0, 268, 268, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(43, '2016-12-28', 'K-9', '53', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(44, '2016-12-28', 'K-9', '54', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(45, '2016-12-28', 'K-9', '55', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(46, '2016-12-28', 'K-9', '56', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(47, '2016-12-28', 'K-9', '57', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(48, '2016-12-28', 'K-9', '58', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(49, '2016-12-28', 'K-9', '60', '', '', '', 0, 512, 512, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(50, '2016-12-28', 'K-9', '61', '', '', '', 0, 512, 512, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(51, '2016-12-28', 'K-9', '62', '', '', '', 0, 512, 512, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(52, '2016-12-28', 'K-9', '63', '', '', '', 0, 256, 256, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(53, '2016-12-28', 'K-9', '107', '', '', '', 0, 80, 80, '', 0, 0, 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(54, '2016-12-28', 'K-9S', '66', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(55, '2016-12-28', 'K-9S', '68', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(56, '2016-12-28', 'K-9S', '69', '', '', '', 0, 414, 414, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(57, '2016-12-28', 'K-9S', '70', '', '', '', 0, 414, 414, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(58, '2016-12-28', 'K-9S', '71', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(59, '2016-12-28', 'K-9S', '72', '', '', '', 0, 414, 414, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(60, '2016-12-28', 'K-9S', '74', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(61, '2016-12-28', 'K-9S', '75', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(62, '2016-12-28', 'K-9S', '77', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(63, '2016-12-28', 'K-9S', '78', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(64, '2016-12-28', 'K-9S', '80', '', '', '', 0, 414, 414, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(65, '2016-12-28', 'K-9S', '81', '', '', '', 0, 192, 192, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(66, '2016-12-28', 'K-9S', '82', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(67, '2016-12-28', 'K-9S', '83', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(68, '2016-12-28', 'K-9S', '84', '', '', '', 0, 414, 414, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(69, '2016-12-28', 'K-9S', '85', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(70, '2016-12-28', 'K-9S', '86', '', '', '', 0, 414, 414, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(71, '2016-12-28', 'K-9S', '87', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(72, '2016-12-28', 'K-9S', '88', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(73, '2016-12-28', 'K-9S', '89', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(74, '2016-12-28', 'K-9S', '90', '', '', '', 0, 414, 414, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(75, '2016-12-28', 'K-9S', '91', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(76, '2016-12-28', 'K-9S', '92', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(77, '2016-12-28', 'K-9S', '93', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(78, '2016-12-28', 'K-9S', '94', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(79, '2016-12-28', 'K-9S', '95', '', '', '', 0, 187, 187, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(80, '2016-12-28', 'K-9S', '96', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(81, '2016-12-28', 'K-9S', '97', '', '', '', 0, 1035, 1035, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(82, '2016-12-28', 'K-9S', '98', '', '', '', 0, 414, 414, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(83, '2016-12-28', 'K-9S', '99', '', '', '', 0, 301, 301, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(84, '2016-12-28', 'K-9S', '100', '', '', '', 0, 366, 366, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(85, '2016-12-28', 'K-9S', '101', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(86, '2016-12-28', 'K-9S', '103', '', '', '', 0, 828, 828, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(87, '2016-12-28', 'K-9S', '104', '', '', '', 0, 406, 406, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(88, '2016-12-28', 'K-9S', '105', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(89, '2016-12-29', 'ER INDIA G-7', '27', '', '', '', 0, 20, 20, '', 0, 0, 0, 0, 'admin', '2016-12-29 12:23:03 PM'),
(90, '2016-12-29', 'ER INDIA G-7', '29', '', '', '', 0, 30, 30, '', 0, 0, 0, 0, 'admin', '2016-12-29 12:23:03 PM'),
(91, '2016-12-29', 'ER INDIA G-7', '30', '', '', '', 0, 40, 40, '', 0, 0, 0, 0, 'admin', '2016-12-29 12:23:03 PM'),
(93, '2016-12-30', 'ER INDIA G-7', '108', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(94, '2016-12-30', 'ER INDIA G-7', '109', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(95, '2016-12-30', 'ER INDIA G-7', '110', '10042;69', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(96, '2016-12-30', 'ER INDIA G-7', '111', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(97, '2016-12-30', 'ER INDIA G-7', '112', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(98, '2016-12-30', 'ER INDIA G-7', '113', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(99, '2016-12-30', 'ER INDIA G-7', '114', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(100, '2016-12-30', 'ER INDIA G-7', '115', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(101, '2016-12-30', 'ER INDIA G-7', '116', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(102, '2016-12-30', 'ER INDIA G-7', '117', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(103, '2016-12-30', 'ER INDIA G-7', '118', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(104, '2016-12-30', 'ER INDIA G-7', '119', '', '', '', 0, 552, 552, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(105, '2016-12-30', 'ER INDIA G-7', '120', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(107, '2016-12-30', 'ER INDIA G-7', '122', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(108, '2016-12-30', 'ER INDIA G-7', '123', '', '', '', 0, 276, 276, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(109, '2016-12-30', 'ER INDIA G-7', '124', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(110, '2016-12-30', 'ER INDIA G-7', '125', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(111, '2016-12-30', 'ER INDIA G-7', '126', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(112, '2016-12-30', 'ER INDIA G-7', '127', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(113, '2016-12-30', 'ER INDIA G-7', '128', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(114, '2016-12-30', 'ER INDIA G-7', '129', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(115, '2016-12-30', 'ER INDIA G-7', '130', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(116, '2016-12-30', 'ER INDIA G-7', '131', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(117, '2016-12-30', 'ER INDIA G-7', '132', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(118, '2016-12-30', 'ER INDIA G-7', '133', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(119, '2016-12-30', 'ER INDIA G-7', '134', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(120, '2016-12-30', 'ER INDIA G-7', '135', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(121, '2016-12-30', 'ER INDIA G-7', '136', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(122, '2016-12-30', 'ER INDIA G-7', '137', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(123, '2016-12-30', 'ER INDIA G-7', '138', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(124, '2016-12-30', 'ER INDIA G-7', '139', '', '', '', 0, 276, 276, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(125, '2016-12-30', 'ER INDIA G-7', '140', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(126, '2016-12-30', 'ER INDIA G-7', '141', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(127, '2016-12-30', 'ER INDIA G-7', '142', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(128, '2016-12-30', 'ER INDIA G-7', '143', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(129, '2016-12-30', 'ER INDIA G-7', '144', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(130, '2016-12-30', 'ER INDIA G-7', '145', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(131, '2016-12-30', 'ER INDIA G-7', '146', '', '', '', 0, 276, 276, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(132, '2016-12-30', 'ER INDIA G-7', '147', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(133, '2016-12-30', 'ER INDIA G-7', '148', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(134, '2016-12-30', 'ER INDIA G-7', '149', '', '', '', 0, 276, 276, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(135, '2016-12-30', 'ER INDIA G-7', '150', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(136, '2016-12-30', 'ER INDIA G-7', '151', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(137, '2016-12-30', 'ER INDIA G-7', '152', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(138, '2016-12-30', 'ER INDIA G-7', '153', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(139, '2016-12-30', 'ER INDIA G-7', '154', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(140, '2016-12-30', 'ER INDIA G-7', '155', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(141, '2016-12-30', 'ER INDIA G-7', '156', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(142, '2016-12-30', 'ER INDIA G-7', '157', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(143, '2016-12-30', 'ER INDIA G-7', '158', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(144, '2016-12-30', 'ER INDIA G-7', '159', '10043;69', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(145, '2016-12-30', 'ER INDIA G-7', '160', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(146, '2016-12-30', 'ER INDIA G-7', '161', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(147, '2016-12-30', 'ER INDIA G-7', '162', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(148, '2016-12-30', 'ER INDIA G-7', '163', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(149, '2016-12-30', 'ER INDIA G-7', '164', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(150, '2016-12-30', 'ER INDIA G-7', '165', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(151, '2016-12-30', 'ER INDIA G-7', '166', '', '', '', 0, 69, 69, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(152, '2016-12-30', 'ER INDIA G-7', '167', '', '', '', 0, 138, 138, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(153, '2016-12-30', 'ER INDIA G-7', '168', '', '', '', 0, 276, 276, '', 0, 0, 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(154, '2017-01-02', 'K-9S', '225', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2017-01-02 01:34:39 PM'),
(155, '2017-01-02', 'K-9S', '226', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2017-01-02 01:44:20 PM'),
(156, '2017-01-02', 'K-9S', '228', '', '', '', 0, 514, 514, '', 0, 0, 0, 0, 'admin', '2017-01-02 01:47:10 PM'),
(157, '2017-01-05', 'ER INDIA G-7S', '227', '', '', '', 0, 227, 227, '', 0, 0, 0, 0, 'admin', '2017-01-05 05:09:31 PM'),
(158, '2017-01-06', 'ER INDIA G-7', '9', '', '', '', 69, 207, 276, '', 0, 0, 0, 0, 'admin', '2017-01-06 11:39:54 PM'),
(159, '2017-01-07', 'ER INDIA G-7S', '73', '', '', '', 0, 207, 207, '', 0, 0, 0, 0, 'admin', '2017-01-07 12:12:53 AM'),
(160, '2017-01-09', 'ER INDIA G-7S', '66', '', '', '', 207, 275, 482, '', 0, 0, 0, 0, 'admin', '2017-01-09 12:09:26 PM'),
(161, '2017-01-09', 'ER INDIA G-7S', '68', '', '', '', 207, 225, 432, '', 0, 0, 0, 0, 'admin', '2017-01-09 12:09:26 PM'),
(162, '2017-01-09', 'ER INDIA G-7S', '66', '', '', '', 207, 100, 307, '', 0, 0, 0, 0, 'admin', '2017-01-09 12:34:39 PM'),
(163, '2017-01-23', 'ER INDIA G-7', '3', '', 'GK/17/18/00035', '', 59, 10, 69, '', 0, 0, 0, 0, '', ''),
(165, '2017-01-31', 'ER INDIA G-7', '3', '', 'GKPONO17012400037', '', 69, 20, 89, '', 0, 0, 0, 0, '', ''),
(166, '2017-01-31', 'ER INDIA G-7', '4', '', 'GKPONO17012400037', '', 68, 40, 108, '', 0, 0, 0, 0, '', ''),
(169, '2017-01-31', 'ER INDIA G-7', '8', '', 'GKPONO17012400037', '', 69, 40, 109, '', 0, 0, 0, 0, '', ''),
(170, '2017-02-10', 'ER INDIA G-7', '3', '', 'GKPONO17021000041', '', 89, 40, 129, '', 0, 0, 0, 0, '', ''),
(171, '2017-02-10', 'ER INDIA G-7', '4', '', 'GKPONO17021000041', '', 108, 40, 148, '', 0, 0, 0, 0, '', ''),
(174, '2017-02-10', 'ER INDIA G-7', '7', '', 'GKPONO17021000041', '', 55, 40, 95, '', 0, 0, 0, 0, '', ''),
(175, '2017-02-10', 'ER INDIA G-7', '8', '', 'GKPONO17021000041', '', 109, 20, 129, '', 0, 0, 0, 0, '', ''),
(176, '2017-02-10', 'ER INDIA G-7', '9', '', 'GKPONO17021000041', '', 276, 40, 316, '', 0, 0, 0, 0, '', ''),
(177, '2017-02-10', 'ER INDIA G-7', '10', '', 'GKPONO17021000041', '', 0, 40, 40, '', 0, 0, 0, 0, '', ''),
(178, '2017-02-10', 'ER INDIA G-7', '11', '', 'GKPONO17021000041', '', 69, 20, 89, '', 0, 0, 0, 0, '', ''),
(179, '2017-02-10', 'ER INDIA G-7', '14', '', 'GKPONO17021000041', '', 189, 51, 240, '', 0, 0, 0, 0, '', ''),
(180, '2017-02-10', 'ER INDIA G-7', '14', '', 'GKPONO17021000041', '', 240, 51, 291, '', 0, 0, 0, 0, '', ''),
(181, '2017-02-10', 'ER INDIA G-7', '15', '', 'GKPONO17021000041', '', 68, 25, 93, '', 0, 0, 0, 0, '', ''),
(182, '2017-02-10', 'ER INDIA G-7', '16', '', 'GKPONO17021000041', '', 138, 30, 168, '', 0, 0, 0, 0, '', ''),
(183, '2017-02-10', 'ER INDIA G-7', '17', '', 'GKPONO17021000041', '', 69, 40, 109, '', 0, 0, 0, 0, '', ''),
(184, '2017-02-10', 'ER INDIA G-7', '21', '', 'GKPONO17021000041', '', 276, 2, 278, '', 0, 0, 0, 0, '', ''),
(185, '2017-02-10', 'ER INDIA G-7', '20', '', 'GKPONO17021000041', '', 69, 2, 71, '', 0, 0, 0, 0, '', ''),
(186, '2017-02-10', 'ER INDIA G-7', '19', '', 'GKPONO17021000041', '', 69, 2, 71, '', 0, 0, 0, 0, '', ''),
(187, '2017-02-10', 'ER INDIA G-7', '18', '', 'GKPONO17021000041', '', 138, 2, 140, '', 0, 0, 0, 0, '', ''),
(188, '2017-02-10', 'ER INDIA G-7', '119', '', 'GKPONO17021000041', '', 552, 10, 562, '', 0, 0, 0, 0, '', ''),
(189, '2017-02-11', 'ER INDIA G-7S', '37', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(190, '2017-02-11', 'ER INDIA G-7S', '66', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(191, '2017-02-11', 'ER INDIA G-7S', '67', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(192, '2017-02-11', 'ER INDIA G-7S', '68', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(193, '2017-02-11', 'ER INDIA G-7S', '69', '', 'GKPONO17021100042', '', 414, 3, 417, '', 0, 0, 0, 0, '', ''),
(194, '2017-02-11', 'ER INDIA G-7S', '70', '', 'GKPONO17021100042', '', 414, 3, 417, '', 0, 0, 0, 0, '', ''),
(195, '2017-02-11', 'ER INDIA G-7S', '71', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(196, '2017-02-11', 'ER INDIA G-7S', '72', '', 'GKPONO17021100042', '', 414, 3, 417, '', 0, 0, 0, 0, '', ''),
(197, '2017-02-11', 'ER INDIA G-7S', '73', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(198, '2017-02-11', 'ER INDIA G-7S', '74', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(199, '2017-02-11', 'ER INDIA G-7S', '75', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(200, '2017-02-11', 'ER INDIA G-7S', '76', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(201, '2017-02-11', 'ER INDIA G-7S', '77', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(202, '2017-02-11', 'ER INDIA G-7S', '78', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(203, '2017-02-11', 'ER INDIA G-7S', '79', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(204, '2017-02-11', 'ER INDIA G-7S', '80', '', 'GKPONO17021100042', '', 414, 3, 417, '', 0, 0, 0, 0, '', ''),
(205, '2017-02-11', 'ER INDIA G-7S', '81', '', 'GKPONO17021100042', '', 192, 3, 195, '', 0, 0, 0, 0, '', ''),
(206, '2017-02-11', 'ER INDIA G-7S', '82', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(207, '2017-02-11', 'ER INDIA G-7S', '83', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(208, '2017-02-11', 'ER INDIA G-7S', '84', '', 'GKPONO17021100042', '', 414, 3, 417, '', 0, 0, 0, 0, '', ''),
(209, '2017-02-11', 'ER INDIA G-7S', '85', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(210, '2017-02-11', 'ER INDIA G-7S', '86', '', 'GKPONO17021100042', '', 414, 3, 417, '', 0, 0, 0, 0, '', ''),
(211, '2017-02-11', 'ER INDIA G-7S', '87', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(212, '2017-02-11', 'ER INDIA G-7S', '88', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(213, '2017-02-11', 'ER INDIA G-7S', '89', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(214, '2017-02-11', 'ER INDIA G-7S', '90', '', 'GKPONO17021100042', '', 414, 3, 417, '', 0, 0, 0, 0, '', ''),
(215, '2017-02-11', 'ER INDIA G-7S', '91', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(216, '2017-02-11', 'ER INDIA G-7S', '92', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(217, '2017-02-11', 'ER INDIA G-7S', '93', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(218, '2017-02-11', 'ER INDIA G-7S', '94', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(219, '2017-02-11', 'ER INDIA G-7S', '95', '', 'GKPONO17021100042', '', 187, 3, 190, '', 0, 0, 0, 0, '', ''),
(220, '2017-02-11', 'ER INDIA G-7S', '97', '', 'GKPONO17021100042', '', 1035, 3, 1038, '', 0, 0, 0, 0, '', ''),
(221, '2017-02-11', 'ER INDIA G-7S', '98', '', 'GKPONO17021100042', '', 414, 3, 417, '', 0, 0, 0, 0, '', ''),
(222, '2017-02-11', 'ER INDIA G-7S', '99', '', 'GKPONO17021100042', '', 301, 3, 304, '', 0, 0, 0, 0, '', ''),
(223, '2017-02-11', 'ER INDIA G-7S', '100', '', 'GKPONO17021100042', '', 366, 3, 369, '', 0, 0, 0, 0, '', ''),
(224, '2017-02-11', 'ER INDIA G-7S', '101', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(225, '2017-02-11', 'ER INDIA G-7S', '102', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(226, '2017-02-11', 'ER INDIA G-7S', '103', '', 'GKPONO17021100042', '', 828, 3, 831, '', 0, 0, 0, 0, '', ''),
(227, '2017-02-11', 'ER INDIA G-7S', '104', '', 'GKPONO17021100042', '', 406, 3, 409, '', 0, 0, 0, 0, '', ''),
(228, '2017-02-11', 'ER INDIA G-7S', '105', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(229, '2017-02-11', 'ER INDIA G-7S', '225', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(230, '2017-02-11', 'ER INDIA G-7S', '226', '', 'GKPONO17021100042', '', 207, 3, 210, '', 0, 0, 0, 0, '', ''),
(231, '2017-02-11', 'ER INDIA G-7S', '227', '', 'GKPONO17021100042', '', 227, 3, 230, '', 0, 0, 0, 0, '', ''),
(232, '2017-02-11', 'ER INDIA G-7S', '228', '', 'GKPONO17021100042', '', 514, 3, 517, '', 0, 0, 0, 0, '', ''),
(233, '2017-02-11', 'ER INDIA G-7S', '229', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(234, '2017-02-11', 'ER INDIA G-7S', '230', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(235, '2017-02-11', 'ER INDIA G-7S', '231', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(236, '2017-02-11', 'ER INDIA G-7S', '232', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(237, '2017-02-11', 'ER INDIA G-7S', '236', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(238, '2017-02-11', 'ER INDIA G-7S', '237', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(239, '2017-02-11', 'ER INDIA G-7S', '238', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(240, '2017-02-11', 'ER INDIA G-7S', '239', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(241, '2017-02-11', 'ER INDIA G-7S', '240', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(242, '2017-02-11', 'ER INDIA G-7S', '241', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(243, '2017-02-11', 'ER INDIA G-7S', '242', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(244, '2017-02-11', 'ER INDIA G-7S', '243', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(245, '2017-02-11', 'ER INDIA G-7S', '244', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(246, '2017-02-11', 'ER INDIA G-7S', '246', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(247, '2017-02-11', 'ER INDIA G-7S', '247', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(248, '2017-02-11', 'ER INDIA G-7S', '250', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(249, '2017-02-11', 'ER INDIA G-7S', '251', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(250, '2017-02-11', 'ER INDIA G-7S', '252', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(251, '2017-02-11', 'ER INDIA G-7S', '255', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(252, '2017-02-11', 'ER INDIA G-7S', '257', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(253, '2017-02-11', 'ER INDIA G-7S', '258', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(254, '2017-02-11', 'ER INDIA K-9', '31', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(255, '2017-02-11', 'ER INDIA K-9', '32', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(256, '2017-02-11', 'ER INDIA K-9', '33', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(257, '2017-02-11', 'ER INDIA K-9', '34', '', 'GKPONO17021100042', '', 512, 3, 515, '', 0, 0, 0, 0, '', ''),
(258, '2017-02-11', 'ER INDIA K-9', '35', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(259, '2017-02-11', 'ER INDIA K-9', '36', '', 'GKPONO17021100042', '', 512, 3, 515, '', 0, 0, 0, 0, '', ''),
(260, '2017-02-11', 'ER INDIA K-9', '38', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(261, '2017-02-11', 'ER INDIA K-9', '40', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(262, '2017-02-11', 'ER INDIA K-9', '41', '', 'GKPONO17021100042', '', 256, 0, 256, '', 0, 0, 0, 0, '', ''),
(263, '2017-02-11', 'ER INDIA K-9', '41', '', 'GKPONO17021100042', '', 256, 0, 256, '', 0, 0, 0, 0, '', ''),
(264, '2017-02-11', 'ER INDIA K-9', '42', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(265, '2017-02-11', 'ER INDIA K-9', '43', '', 'GKPONO17021100042', '', 512, 3, 515, '', 0, 0, 0, 0, '', ''),
(266, '2017-02-11', 'ER INDIA K-9', '44', '', 'GKPONO17021100042', '', 228, 3, 231, '', 0, 0, 0, 0, '', ''),
(267, '2017-02-11', 'ER INDIA K-9', '45', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(268, '2017-02-11', 'ER INDIA K-9', '46', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(269, '2017-02-11', 'ER INDIA K-9', '47', '', 'GKPONO17021100042', '', 512, 3, 515, '', 0, 0, 0, 0, '', ''),
(270, '2017-02-11', 'ER INDIA K-9', '48', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(271, '2017-02-11', 'ER INDIA K-9', '49', '', 'GKPONO17021100042', '', 512, 3, 515, '', 0, 0, 0, 0, '', ''),
(272, '2017-02-11', 'ER INDIA K-9', '50', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(273, '2017-02-11', 'ER INDIA K-9', '52', '', 'GKPONO17021100042', '', 268, 3, 271, '', 0, 0, 0, 0, '', ''),
(274, '2017-02-11', 'ER INDIA K-9', '54', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(275, '2017-02-11', 'ER INDIA K-9', '55', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(276, '2017-02-11', 'ER INDIA K-9', '56', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(277, '2017-02-11', 'ER INDIA K-9', '57', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(278, '2017-02-11', 'ER INDIA K-9', '58', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(279, '2017-02-11', 'ER INDIA K-9', '59', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(280, '2017-02-11', 'ER INDIA K-9', '61', '', 'GKPONO17021100042', '', 512, 3, 515, '', 0, 0, 0, 0, '', ''),
(281, '2017-02-11', 'ER INDIA K-9', '62', '', 'GKPONO17021100042', '', 512, 3, 515, '', 0, 0, 0, 0, '', ''),
(282, '2017-02-11', 'ER INDIA K-9', '63', '', 'GKPONO17021100042', '', 256, 3, 259, '', 0, 0, 0, 0, '', ''),
(283, '2017-02-11', 'ER INDIA K-9', '64', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(284, '2017-02-11', 'ER INDIA K-9', '65', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(285, '2017-02-11', 'ER INDIA K-9', '106', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(286, '2017-02-11', 'ER INDIA K-9', '107', '', 'GKPONO17021100042', '', 80, 3, 83, '', 0, 0, 0, 0, '', ''),
(287, '2017-02-11', 'ER INDIA K-9', '169', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(288, '2017-02-11', 'ER INDIA K-9', '170', '', 'GKPONO17021100042', '', 0, 3, 3, '', 0, 0, 0, 0, '', ''),
(289, '2017-02-13', 'ER INDIA G-7', '3', '', 'GKPONO17021000041', '', 129, 40, 169, '', 0, 0, 0, 0, '', ''),
(290, '2017-02-13', 'ER INDIA G-7', '4', '', 'GKPONO17021000041', '', 148, 40, 188, '', 0, 0, 0, 0, '', ''),
(293, '2017-02-13', 'ER INDIA G-7', '119', '', 'GKPONO17021300043', '', 562, 4, 566, '', 0, 0, 0, 0, '', ''),
(294, '2017-02-13', 'ER INDIA G-7', '28', '', 'GKPONO17021300043', '', 0, 4, 4, '', 0, 0, 0, 0, '', ''),
(295, '2017-02-13', '', '6', '', '', '', 500, 200, 700, '', 0, 0, 0, 0, 'warehouse1', '2017-02-13 08:25:51 PM'),
(296, '2017-02-13', '', '121', '', '', '', 500, 200, 700, '', 0, 0, 0, 0, 'warehouse1', '2017-02-13 08:25:51 PM'),
(297, '2017-02-13', '', '5', '', '', '', 500, 200, 700, '', 0, 0, 0, 0, 'warehouse1', '2017-02-13 08:25:51 PM'),
(298, '2017-02-13', '', '6', '', '', '', 0, 0, 680, '', 20, 0, 0, 0, 'warehouse1', '2017-02-13 08:34:19 PM'),
(299, '2017-02-13', '', '121', '', '', '', 0, 0, 680, '', 20, 0, 0, 0, 'warehouse1', '2017-02-13 08:34:19 PM'),
(300, '2017-02-13', '', '5', '', '', '', 0, 0, 680, '', 20, 0, 0, 0, 'warehouse1', '2017-02-13 08:34:19 PM'),
(301, '2017-02-13', '', '6', '', '', '', 0, 0, 680, '', 20, 0, 0, 0, 'warehouse1', '2017-02-13 08:40:52 PM'),
(302, '2017-02-13', '', '121', '', '', '', 0, 0, 680, '', 20, 0, 0, 0, 'warehouse1', '2017-02-13 08:40:52 PM'),
(303, '2017-02-13', '', '5', '', '', '', 0, 0, 680, '', 20, 0, 0, 0, 'warehouse1', '2017-02-13 08:40:53 PM'),
(304, '2017-02-13', '', '6', '', '', '', 0, 0, 680, '', 20, 0, 0, 0, 'warehouse1', '2017-02-13 10:34:55 PM'),
(305, '2017-02-13', '', '121', '', '', '', 0, 0, 680, '', 20, 0, 0, 0, 'warehouse1', '2017-02-13 10:34:55 PM'),
(306, '2017-02-13', '', '5', '', '', '', 0, 0, 680, '', 20, 0, 0, 0, 'warehouse1', '2017-02-13 10:35:36 PM'),
(307, '2017-02-13', '', '66', '', '', '', 0, 0, 197, '', 10, 0, 0, 0, 'warehouse1', '2017-02-13 11:52:29 PM'),
(308, '2017-02-13', '', '244', '', '', '', 0, 0, -7, '', 10, 0, 0, 0, 'warehouse1', '2017-02-13 11:52:29 PM'),
(309, '2017-02-13', '', '66', '', '', '', 0, 0, 197, '', 10, 0, 0, 0, 'warehouse1', '2017-02-13 11:52:29 PM'),
(310, '2017-02-13', '', '244', '', '', '', 0, 0, -7, '', 10, 0, 0, 0, 'warehouse1', '2017-02-13 11:52:30 PM'),
(311, '2017-02-14', '', '6', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:14:20 AM'),
(312, '2017-02-14', '', '121', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:14:20 AM'),
(313, '2017-02-14', '', '6', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:15:06 AM'),
(314, '2017-02-14', '', '121', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:15:06 AM'),
(315, '2017-02-14', '', '6', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:17:18 AM'),
(316, '2017-02-14', '', '121', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:17:18 AM'),
(317, '2017-02-14', '', '6', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:18:03 AM'),
(318, '2017-02-14', '', '121', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:18:04 AM'),
(319, '2017-02-14', '', '6', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:18:53 AM'),
(320, '2017-02-14', '', '121', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:18:53 AM'),
(321, '2017-02-14', '', '6', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:19:38 AM'),
(322, '2017-02-14', '', '121', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:19:39 AM'),
(323, '2017-02-14', '', '6', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:20:46 AM'),
(324, '2017-02-14', '', '121', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:20:47 AM'),
(325, '2017-02-14', '', '6', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:22:00 AM'),
(326, '2017-02-14', '', '121', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:22:00 AM'),
(327, '2017-02-14', '', '5', '', '', '', 0, 0, 698, '', 2, 0, 0, 0, 'warehouse1', '2017-02-14 12:22:00 AM'),
(328, '2017-02-14', '', '121', '', '', '', 0, 0, 690, '', 10, 0, 0, 0, 'warehouse1', '2017-02-14 12:59:10 AM'),
(329, '2017-02-14', '', '5', '', '', '', 0, 0, 690, '', 10, 0, 0, 0, 'warehouse1', '2017-02-14 12:59:10 AM'),
(330, '2017-02-14', 'ER INDIA G-7S', '66', '', '', '', 190, 0, 190, '', 0, 0, 0, 0, 'admin', '2017-02-14 10:01:58 AM'),
(331, '2017-02-14', 'ER INDIA G-7S', '244', '', '', '', -17, 0, -17, '', 0, 0, 0, 0, 'admin', '2017-02-14 10:01:58 AM'),
(332, '2017-02-14', 'ER INDIA K-9', '31', '', '', '', 259, 0, 259, '', 0, 0, 0, 0, 'admin', '2017-02-14 10:02:53 AM'),
(333, '2017-02-14', 'ER INDIA K-9', '205', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 'admin', '2017-02-14 10:02:54 AM'),
(334, '2017-02-14', 'ER INDIA G-7S', '66', '', '', '', 190, 200, 390, '', 0, 0, 0, 0, 'admin', '2017-02-14 10:04:20 AM'),
(335, '2017-02-14', 'ER INDIA G-7S', '281', '', '', '', 406, 100, 506, '', 0, 0, 0, 0, 'admin', '2017-02-14 10:04:20 AM'),
(336, '2017-02-14', 'ER INDIA G-7S', '104', '', '', '', 409, 200, 609, '', 0, 0, 0, 0, 'admin', '2017-02-14 10:04:20 AM'),
(337, '2017-02-14', 'ER INDIA G-7', '3', '', 'GKPONO17021300043', '', 169, 20, 189, '', 0, 0, 0, 0, '', ''),
(338, '2017-02-14', 'ER INDIA G-7', '4', '', 'GKPONO17021300043', '', 188, 20, 208, '', 0, 0, 0, 0, '', ''),
(339, '2017-02-14', 'ER INDIA G-7', '5', '', 'GKPONO17021300043', '', 628, 20, 648, '', 0, 0, 0, 0, '', ''),
(340, '2017-02-14', 'ER INDIA G-7', '5', '', 'GKPONO17021300043', '', 648, 4, 652, '', 0, 0, 0, 0, '', ''),
(341, '2017-02-14', 'ER INDIA G-7', '5', '', 'GKPONO17021300043', '', 660, 4, 664, '', 0, 0, 0, 0, '', ''),
(342, '2017-02-14', 'ER INDIA G-7', '6', '', 'GKPONO17021300043', '', 624, 2, 626, '', 0, 0, 0, 0, '', ''),
(343, '2017-02-14', 'ER INDIA G-7', '121', '', 'GKPONO17021300043', '', 614, 2, 616, '', 0, 0, 0, 0, '', ''),
(344, '2017-02-14', 'ER INDIA G-7', '5', '', 'GKPONO17021300043', '', 664, 4, 668, '', 0, 0, 0, 0, '', ''),
(345, '2017-02-14', 'ER INDIA G-7', '6', '', 'GKPONO17021300043', '', 626, 2, 628, '', 0, 0, 0, 0, '', ''),
(346, '2017-02-14', 'ER INDIA G-7', '121', '', 'GKPONO17021300043', '', 616, 2, 618, '', 0, 0, 0, 0, '', ''),
(347, '2017-02-14', 'ER INDIA G-7', '5', '', 'GKPONO17021300043', '', 668, 4, 672, '', 0, 0, 0, 0, '', ''),
(348, '2017-02-14', 'ER INDIA G-7', '6', '', 'GKPONO17021300043', '', 628, 2, 630, '', 0, 0, 0, 0, '', ''),
(349, '2017-02-14', 'ER INDIA G-7', '121', '', 'GKPONO17021300043', '', 618, 2, 620, '', 0, 0, 0, 0, '', ''),
(350, '2017-02-14', 'ER INDIA G-7', '5', '', 'GKPONO17021300043', '', 672, 4, 676, '', 0, 0, 0, 0, '', ''),
(351, '2017-02-14', 'ER INDIA G-7', '6', '', 'GKPONO17021300043', '', 630, 2, 632, '', 0, 0, 0, 0, '', ''),
(352, '2017-02-14', 'ER INDIA G-7', '121', '', 'GKPONO17021300043', '', 620, 2, 622, '', 0, 0, 0, 0, '', ''),
(353, '2017-02-14', 'ER INDIA G-7', '3', '', 'GKPONO17021400045', '', 189, 20, 209, '', 0, 0, 0, 0, '', ''),
(354, '2017-02-14', 'ER INDIA G-7', '4', '', 'GKPONO17021400045', '', 208, 20, 228, '', 0, 0, 0, 0, '', ''),
(355, '2017-02-14', 'ER INDIA G-7', '5', '', 'GKPONO17021400045', '', 676, 20, 696, '', 0, 0, 0, 0, '', ''),
(356, '2017-02-14', 'ER INDIA G-7', '121', '', 'GKPONO17021400045', '', 622, 20, 642, '', 0, 0, 0, 0, '', ''),
(357, '2017-02-14', 'ER INDIA G-7', '3', '', 'GKPONO17021400045', '', 209, 20, 229, '', 0, 0, 0, 0, '', ''),
(358, '2017-02-14', 'ER INDIA G-7', '4', '', 'GKPONO17021400045', '', 228, 20, 248, '', 0, 0, 0, 0, '', ''),
(359, '2017-02-14', 'ER INDIA G-7', '5', '', 'GKPONO17021400045', '', 696, 20, 716, '', 0, 0, 0, 0, '', ''),
(360, '2017-02-14', 'ER INDIA G-7', '6', '', 'GKPONO17021400045', '', 632, 20, 652, '', 0, 0, 0, 0, '', ''),
(361, '2017-02-14', 'ER INDIA G-7', '121', '', 'GKPONO17021400045', '', 642, 20, 662, '', 0, 0, 0, 0, '', ''),
(362, '2017-02-14', 'ER INDIA G-7', '3', '', 'GKPONO17021400045', '', 229, 10, 239, '', 0, 0, 0, 0, '', ''),
(363, '2017-02-15', 'ER INDIA G-7', '5', '', '', '', 716, 0, 716, '', 0, 0, 0, 0, 'admin', '2017-02-15 12:08:30 AM'),
(364, '2017-02-15', 'ER INDIA G-7', '4', '', '', '', 248, 20, 268, '', 0, 0, 0, 0, 'admin', '2017-02-15 12:21:20 AM'),
(365, '2017-02-15', 'ER INDIA G-7', '5', '', '', '', 716, 10, 726, '', 0, 0, 0, 0, 'admin', '2017-02-15 01:06:08 AM'),
(366, '2017-02-15', 'ER INDIA G-7', '6', '', '', '', 652, 20, 672, '', 0, 0, 0, 0, 'admin', '2017-02-15 01:10:37 AM');

-- --------------------------------------------------------

--
-- Table structure for table `transection_sparesparts02012017`
--

CREATE TABLE `transection_sparesparts02012017` (
  `id` int(20) NOT NULL,
  `date` date NOT NULL,
  `model_id` varchar(255) NOT NULL,
  `partsId` varchar(255) NOT NULL,
  `specifqty` text NOT NULL,
  `assignmentNo` varchar(255) NOT NULL,
  `packageNo` varchar(255) NOT NULL,
  `openingQty` int(20) NOT NULL,
  `newQty` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `invoiceNo` varchar(255) NOT NULL,
  `saleQty` int(20) NOT NULL,
  `gtotal` int(20) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `lstupdt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transection_sparesparts02012017`
--

INSERT INTO `transection_sparesparts02012017` (`id`, `date`, `model_id`, `partsId`, `specifqty`, `assignmentNo`, `packageNo`, `openingQty`, `newQty`, `total`, `invoiceNo`, `saleQty`, `gtotal`, `crtd`, `lstupdt`) VALUES
(1, '2016-12-15', 'G5', '1', '', 'GK/16/17/00032', '', 0, 500, 500, '', 0, 0, '', ''),
(2, '2016-12-28', 'G5', '1', '10014;20,10015;20,10016;20,10017;20,10021;20,10022;20', '', '', 2880, 120, 3000, '', 0, 0, 'admin', '2016-12-28 03:18:40 AM'),
(3, '2016-12-28', 'G5', '2', '', '', '', 231, 50, 281, '', 0, 0, 'admin', '2016-12-28 03:18:40 AM'),
(9, '2016-12-28', 'G5', '1', '10014;25,10015;25,10016;25,10017;252,10021;52,10022;52', '', '', 3000, 431, 3431, '', 0, 0, 'admin', '2016-12-28 03:23:41 AM'),
(10, '2016-12-28', 'G5', '2', '', '', '', 281, 25, 306, '', 0, 0, 'admin', '2016-12-28 03:23:41 AM'),
(11, '2016-12-28', 'G5', '3', '10019;100,10020;100', '', '', 204, 200, 404, '', 0, 0, 'admin', '2016-12-28 03:23:41 AM'),
(12, '2016-12-28', 'K9', '12', '', '', '', 0, 50, 50, '', 0, 0, 'admin', '2016-12-28 03:28:01 AM'),
(13, '2016-12-28', 'K9', '13', '', '', '', 0, 60, 60, '', 0, 0, 'admin', '2016-12-28 03:28:01 AM'),
(14, '2016-12-28', 'K9', '14', '', '', '', 0, 70, 70, '', 0, 0, 'admin', '2016-12-28 03:28:02 AM'),
(15, '2016-12-28', 'K9', '8', '', '', '', 100, 200, 300, '', 0, 0, 'admin', '2016-12-28 03:28:54 AM'),
(16, '2016-12-28', 'K9', '9', '', '', '', 200, 300, 500, '', 0, 0, 'admin', '2016-12-28 03:28:54 AM'),
(17, '2016-12-28', 'K9', '10', '', '', '', 200, 400, 600, '', 0, 0, 'admin', '2016-12-28 03:28:54 AM'),
(18, '2016-12-28', 'K9', '11', '', '', '', 100, 500, 600, '', 0, 0, 'admin', '2016-12-28 03:28:54 AM'),
(19, '2016-12-28', 'K9', '12', '', '', '', 50, 100, 150, '', 0, 0, 'admin', '2016-12-28 03:28:54 AM'),
(20, '2016-12-28', 'K9', '13', '', '', '', 60, 250, 310, '', 0, 0, 'admin', '2016-12-28 03:28:54 AM'),
(21, '2016-12-28', 'K9', '14', '', '', '', 70, 300, 370, '', 0, 0, 'admin', '2016-12-28 03:28:54 AM'),
(22, '2016-12-28', 'ER INDIA G-7', '3', '', '', '', 59, 250, 309, '', 0, 0, 'admin', '2016-12-28 12:52:01 PM'),
(23, '2016-12-28', 'ER INDIA G-7', '3', '', '', '', 309, -250, 59, '', 0, 0, 'admin', '2016-12-28 12:54:01 PM'),
(24, '2016-12-28', 'ER INDIA G-7', '4', '', '', '', 68, 50, 118, '', 0, 0, 'admin', '2016-12-28 12:54:48 PM'),
(25, '2016-12-29', 'K-9S', '66', '', '', '', 207, 20, 227, '', 0, 0, 'admin', '2016-12-29 04:49:00 PM'),
(26, '2016-12-29', 'K-9S', '67', '', '', '', 0, 20, 20, '', 0, 0, 'admin', '2016-12-29 04:49:00 PM'),
(27, '2016-12-29', 'K-9S', '68', '', '', '', 207, 20, 227, '', 0, 0, 'admin', '2016-12-29 04:49:00 PM'),
(28, '2016-12-29', 'K-9S', '69', '', '', '', 414, 20, 434, '', 0, 0, 'admin', '2016-12-29 04:49:00 PM'),
(29, '2016-12-29', 'K-9S', '70', '', '', '', 414, 20, 434, '', 0, 0, 'admin', '2016-12-29 04:49:01 PM'),
(30, '2016-12-29', 'K-9S', '71', '', '', '', 207, 20, 227, '', 0, 0, 'admin', '2016-12-29 04:49:01 PM'),
(31, '2016-12-29', 'K-9S', '72', '', '', '', 414, 20, 434, '', 0, 0, 'admin', '2016-12-29 04:49:01 PM'),
(32, '2016-12-29', 'K-9S', '73', '', '', '', 0, 30, 30, '', 0, 0, 'admin', '2016-12-29 04:49:01 PM'),
(33, '2016-12-29', 'K-9S', '74', '', '', '', 207, 20, 227, '', 0, 0, 'admin', '2016-12-29 04:49:01 PM'),
(34, '2016-12-29', 'K-9S', '75', '', '', '', 207, 30, 237, '', 0, 0, 'admin', '2016-12-29 04:49:01 PM'),
(35, '2016-12-29', 'K-9S', '76', '', '', '', 0, 50, 50, '', 0, 0, 'admin', '2016-12-29 04:49:01 PM'),
(36, '2016-12-29', 'K-9S', '77', '', '', '', 207, 50, 257, '', 0, 0, 'admin', '2016-12-29 04:49:01 PM'),
(37, '2016-12-29', 'K-9S', '78', '', '', '', 207, 60, 267, '', 0, 0, 'admin', '2016-12-29 04:49:01 PM'),
(38, '2016-12-29', 'K-9S', '79', '', '', '', 0, 70, 70, '', 0, 0, 'admin', '2016-12-29 04:49:01 PM'),
(39, '2016-12-29', 'K-9S', '80', '', '', '', 414, 80, 494, '', 0, 0, 'admin', '2016-12-29 04:49:01 PM'),
(40, '2016-12-29', 'K-9S', '81', '', '', '', 192, 90, 282, '', 0, 0, 'admin', '2016-12-29 04:49:02 PM'),
(41, '2016-12-29', 'K-9S', '82', '', '', '', 207, 90, 297, '', 0, 0, 'admin', '2016-12-29 04:49:02 PM'),
(42, '2016-12-29', 'K-9S', '83', '', '', '', 207, 90, 297, '', 0, 0, 'admin', '2016-12-29 04:49:02 PM'),
(43, '2016-12-29', 'K-9S', '84', '', '', '', 414, 90, 504, '', 0, 0, 'admin', '2016-12-29 04:49:02 PM'),
(44, '2016-12-29', 'K-9S', '85', '', '', '', 207, 90, 297, '', 0, 0, 'admin', '2016-12-29 04:49:02 PM'),
(45, '2016-12-29', 'K-9S', '86', '', '', '', 414, 90, 504, '', 0, 0, 'admin', '2016-12-29 04:49:02 PM'),
(46, '2016-12-29', 'K-9S', '87', '', '', '', 207, 90, 297, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(47, '2016-12-29', 'K-9S', '88', '', '', '', 207, 50, 257, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(48, '2016-12-29', 'K-9S', '89', '', '', '', 207, 50, 257, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(49, '2016-12-29', 'K-9S', '90', '', '', '', 414, 50, 464, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(50, '2016-12-29', 'K-9S', '91', '', '', '', 207, 50, 257, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(51, '2016-12-29', 'K-9S', '92', '', '', '', 207, 60, 267, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(52, '2016-12-29', 'K-9S', '93', '', '', '', 207, 70, 277, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(53, '2016-12-29', 'K-9S', '94', '', '', '', 207, 80, 287, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(54, '2016-12-29', 'K-9S', '95', '', '', '', 187, 90, 277, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(55, '2016-12-29', 'K-9S', '96', '', '', '', 207, 50, 257, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(56, '2016-12-29', 'K-9S', '97', '', '', '', 1035, 70, 1105, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(57, '2016-12-29', 'K-9S', '98', '', '', '', 414, 50, 464, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(58, '2016-12-29', 'K-9S', '99', '', '', '', 301, 80, 381, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(59, '2016-12-29', 'K-9S', '100', '', '', '', 366, 90, 456, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(60, '2016-12-29', 'K-9S', '101', '', '', '', 207, 15, 222, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(61, '2016-12-29', 'K-9S', '102', '', '', '', 0, 15, 15, '', 0, 0, 'admin', '2016-12-29 04:49:03 PM'),
(62, '2016-12-29', 'K-9S', '103', '', '', '', 828, 10, 838, '', 0, 0, 'admin', '2016-12-29 04:49:04 PM'),
(63, '2016-12-29', 'K-9S', '104', '', '', '', 406, 10, 416, '', 0, 0, 'admin', '2016-12-29 04:49:04 PM'),
(64, '2016-12-29', 'K-9S', '105', '', '', '', 207, 25, 232, '', 0, 0, 'admin', '2016-12-29 04:49:04 PM'),
(65, '2016-12-30', 'K-9', '31', '12;250', '', '', 256, 250, 506, '', 0, 0, 'admin', '2016-12-30 02:32:07 PM'),
(66, '2016-12-30', 'K-9', '32', '10003;250', '', '', 256, 250, 506, '', 0, 0, 'admin', '2016-12-30 02:32:07 PM'),
(67, '2016-12-30', 'K-9', '32', '10003;50', '', '', 506, 50, 556, '', 0, 0, 'admin', '2016-12-30 02:36:04 PM'),
(68, '2016-12-30', 'K-9', '32', '10003;200', '', '', 556, 200, 756, '', 0, 0, 'admin', '2016-12-30 02:37:30 PM'),
(69, '2017-01-02', 'K-9S', '225', '', '', '', 0, 280, 280, '', 0, 0, 'admin', '2017-01-02 01:12:19 PM'),
(70, '2017-01-02', 'K-9S', '226', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2017-01-02 01:47:53 PM'),
(71, '2017-01-02', 'K-9S', '232', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2017-01-02 01:58:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `transection_sparesparts05012017`
--

CREATE TABLE `transection_sparesparts05012017` (
  `id` int(20) NOT NULL,
  `date` date NOT NULL,
  `model_id` varchar(255) NOT NULL,
  `partsId` varchar(255) NOT NULL,
  `specifqty` text NOT NULL,
  `assignmentNo` varchar(255) NOT NULL,
  `packageNo` varchar(255) NOT NULL,
  `openingQty` int(20) NOT NULL,
  `newQty` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `invoiceNo` varchar(255) NOT NULL,
  `saleQty` int(20) NOT NULL,
  `gtotal` int(20) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `lstupdt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transection_sparesparts05012017`
--

INSERT INTO `transection_sparesparts05012017` (`id`, `date`, `model_id`, `partsId`, `specifqty`, `assignmentNo`, `packageNo`, `openingQty`, `newQty`, `total`, `invoiceNo`, `saleQty`, `gtotal`, `crtd`, `lstupdt`) VALUES
(1, '2016-12-28', 'ER INDIA G-7', '3', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 10:49:23 AM'),
(2, '2016-12-28', 'ER INDIA G-7', '3', '', '', '', 69, 59, 128, '', 0, 0, 'admin', '2016-12-28 11:35:11 AM'),
(3, '2016-12-28', 'ER INDIA G-7', '3', '', '', '', 128, -128, 0, '', 0, 0, 'admin', '2016-12-28 11:49:22 AM'),
(4, '2016-12-28', 'ER INDIA G-7', '3', '', '', '', 0, 59, 59, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(5, '2016-12-28', 'ER INDIA G-7', '4', '', '', '', 0, 68, 68, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(6, '2016-12-28', 'ER INDIA G-7', '6', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(7, '2016-12-28', 'ER INDIA G-7', '8', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(8, '2016-12-28', 'ER INDIA G-7', '9', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(9, '2016-12-28', 'ER INDIA G-7', '11', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(10, '2016-12-28', 'ER INDIA G-7', '12', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(11, '2016-12-28', 'ER INDIA G-7', '14', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(12, '2016-12-28', 'ER INDIA G-7', '15', '', '', '', 0, 68, 68, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(13, '2016-12-28', 'ER INDIA G-7', '16', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(14, '2016-12-28', 'ER INDIA G-7', '17', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(15, '2016-12-28', 'ER INDIA G-7', '18', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(16, '2016-12-28', 'ER INDIA G-7', '19', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(17, '2016-12-28', 'ER INDIA G-7', '20', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(18, '2016-12-28', 'ER INDIA G-7', '21', '1;276', '', '', 0, 276, 276, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(19, '2016-12-28', 'ER INDIA G-7', '22', '', '', '', 0, 71, 71, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(20, '2016-12-28', 'ER INDIA G-7', '23', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(21, '2016-12-28', 'ER INDIA G-7', '24', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(22, '2016-12-28', 'ER INDIA G-7', '25', '3;69', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-28 11:56:10 AM'),
(23, '2016-12-28', 'K-9', '31', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:47:31 PM'),
(24, '2016-12-28', 'K-9', '32', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(25, '2016-12-28', 'K-9', '33', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(26, '2016-12-28', 'K-9', '34', '', '', '', 0, 512, 512, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(27, '2016-12-28', 'K-9', '35', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(28, '2016-12-28', 'K-9', '36', '', '', '', 0, 512, 512, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(29, '2016-12-28', 'K-9', '37', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(30, '2016-12-28', 'K-9', '38', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(31, '2016-12-28', 'K-9', '40', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(32, '2016-12-28', 'K-9', '41', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(33, '2016-12-28', 'K-9', '43', '', '', '', 0, 512, 512, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(34, '2016-12-28', 'K-9', '44', '', '', '', 0, 228, 228, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(35, '2016-12-28', 'K-9', '45', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(36, '2016-12-28', 'K-9', '46', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(37, '2016-12-28', 'K-9', '47', '', '', '', 0, 512, 512, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(38, '2016-12-28', 'K-9', '48', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(39, '2016-12-28', 'K-9', '49', '', '', '', 0, 512, 512, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(40, '2016-12-28', 'K-9', '50', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(41, '2016-12-28', 'K-9', '51', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(42, '2016-12-28', 'K-9', '52', '', '', '', 0, 268, 268, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(43, '2016-12-28', 'K-9', '53', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:23 PM'),
(44, '2016-12-28', 'K-9', '54', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(45, '2016-12-28', 'K-9', '55', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(46, '2016-12-28', 'K-9', '56', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(47, '2016-12-28', 'K-9', '57', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(48, '2016-12-28', 'K-9', '58', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(49, '2016-12-28', 'K-9', '60', '', '', '', 0, 512, 512, '', 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(50, '2016-12-28', 'K-9', '61', '', '', '', 0, 512, 512, '', 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(51, '2016-12-28', 'K-9', '62', '', '', '', 0, 512, 512, '', 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(52, '2016-12-28', 'K-9', '63', '', '', '', 0, 256, 256, '', 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(53, '2016-12-28', 'K-9', '107', '', '', '', 0, 80, 80, '', 0, 0, 'admin', '2016-12-28 03:56:24 PM'),
(54, '2016-12-28', 'K-9S', '66', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(55, '2016-12-28', 'K-9S', '68', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(56, '2016-12-28', 'K-9S', '69', '', '', '', 0, 414, 414, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(57, '2016-12-28', 'K-9S', '70', '', '', '', 0, 414, 414, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(58, '2016-12-28', 'K-9S', '71', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(59, '2016-12-28', 'K-9S', '72', '', '', '', 0, 414, 414, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(60, '2016-12-28', 'K-9S', '74', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(61, '2016-12-28', 'K-9S', '75', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(62, '2016-12-28', 'K-9S', '77', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(63, '2016-12-28', 'K-9S', '78', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(64, '2016-12-28', 'K-9S', '80', '', '', '', 0, 414, 414, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(65, '2016-12-28', 'K-9S', '81', '', '', '', 0, 192, 192, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(66, '2016-12-28', 'K-9S', '82', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(67, '2016-12-28', 'K-9S', '83', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(68, '2016-12-28', 'K-9S', '84', '', '', '', 0, 414, 414, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(69, '2016-12-28', 'K-9S', '85', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(70, '2016-12-28', 'K-9S', '86', '', '', '', 0, 414, 414, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(71, '2016-12-28', 'K-9S', '87', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(72, '2016-12-28', 'K-9S', '88', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(73, '2016-12-28', 'K-9S', '89', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(74, '2016-12-28', 'K-9S', '90', '', '', '', 0, 414, 414, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(75, '2016-12-28', 'K-9S', '91', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(76, '2016-12-28', 'K-9S', '92', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(77, '2016-12-28', 'K-9S', '93', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(78, '2016-12-28', 'K-9S', '94', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(79, '2016-12-28', 'K-9S', '95', '', '', '', 0, 187, 187, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(80, '2016-12-28', 'K-9S', '96', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(81, '2016-12-28', 'K-9S', '97', '', '', '', 0, 1035, 1035, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(82, '2016-12-28', 'K-9S', '98', '', '', '', 0, 414, 414, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(83, '2016-12-28', 'K-9S', '99', '', '', '', 0, 301, 301, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(84, '2016-12-28', 'K-9S', '100', '', '', '', 0, 366, 366, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(85, '2016-12-28', 'K-9S', '101', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(86, '2016-12-28', 'K-9S', '103', '', '', '', 0, 828, 828, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(87, '2016-12-28', 'K-9S', '104', '', '', '', 0, 406, 406, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(88, '2016-12-28', 'K-9S', '105', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2016-12-28 04:52:27 PM'),
(89, '2016-12-29', 'ER INDIA G-7', '27', '', '', '', 0, 20, 20, '', 0, 0, 'admin', '2016-12-29 12:23:03 PM'),
(90, '2016-12-29', 'ER INDIA G-7', '29', '', '', '', 0, 30, 30, '', 0, 0, 'admin', '2016-12-29 12:23:03 PM'),
(91, '2016-12-29', 'ER INDIA G-7', '30', '', '', '', 0, 40, 40, '', 0, 0, 'admin', '2016-12-29 12:23:03 PM'),
(93, '2016-12-30', 'ER INDIA G-7', '108', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(94, '2016-12-30', 'ER INDIA G-7', '109', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(95, '2016-12-30', 'ER INDIA G-7', '110', '10042;69', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(96, '2016-12-30', 'ER INDIA G-7', '111', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(97, '2016-12-30', 'ER INDIA G-7', '112', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(98, '2016-12-30', 'ER INDIA G-7', '113', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(99, '2016-12-30', 'ER INDIA G-7', '114', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(100, '2016-12-30', 'ER INDIA G-7', '115', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(101, '2016-12-30', 'ER INDIA G-7', '116', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(102, '2016-12-30', 'ER INDIA G-7', '117', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(103, '2016-12-30', 'ER INDIA G-7', '118', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(104, '2016-12-30', 'ER INDIA G-7', '119', '', '', '', 0, 552, 552, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(105, '2016-12-30', 'ER INDIA G-7', '120', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(106, '2016-12-30', 'ER INDIA G-7', '121', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(107, '2016-12-30', 'ER INDIA G-7', '122', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(108, '2016-12-30', 'ER INDIA G-7', '123', '', '', '', 0, 276, 276, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(109, '2016-12-30', 'ER INDIA G-7', '124', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(110, '2016-12-30', 'ER INDIA G-7', '125', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(111, '2016-12-30', 'ER INDIA G-7', '126', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(112, '2016-12-30', 'ER INDIA G-7', '127', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(113, '2016-12-30', 'ER INDIA G-7', '128', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(114, '2016-12-30', 'ER INDIA G-7', '129', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(115, '2016-12-30', 'ER INDIA G-7', '130', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(116, '2016-12-30', 'ER INDIA G-7', '131', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(117, '2016-12-30', 'ER INDIA G-7', '132', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(118, '2016-12-30', 'ER INDIA G-7', '133', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(119, '2016-12-30', 'ER INDIA G-7', '134', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(120, '2016-12-30', 'ER INDIA G-7', '135', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(121, '2016-12-30', 'ER INDIA G-7', '136', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(122, '2016-12-30', 'ER INDIA G-7', '137', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(123, '2016-12-30', 'ER INDIA G-7', '138', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(124, '2016-12-30', 'ER INDIA G-7', '139', '', '', '', 0, 276, 276, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(125, '2016-12-30', 'ER INDIA G-7', '140', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(126, '2016-12-30', 'ER INDIA G-7', '141', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(127, '2016-12-30', 'ER INDIA G-7', '142', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(128, '2016-12-30', 'ER INDIA G-7', '143', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(129, '2016-12-30', 'ER INDIA G-7', '144', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(130, '2016-12-30', 'ER INDIA G-7', '145', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(131, '2016-12-30', 'ER INDIA G-7', '146', '', '', '', 0, 276, 276, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(132, '2016-12-30', 'ER INDIA G-7', '147', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(133, '2016-12-30', 'ER INDIA G-7', '148', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(134, '2016-12-30', 'ER INDIA G-7', '149', '', '', '', 0, 276, 276, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(135, '2016-12-30', 'ER INDIA G-7', '150', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(136, '2016-12-30', 'ER INDIA G-7', '151', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(137, '2016-12-30', 'ER INDIA G-7', '152', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(138, '2016-12-30', 'ER INDIA G-7', '153', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(139, '2016-12-30', 'ER INDIA G-7', '154', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(140, '2016-12-30', 'ER INDIA G-7', '155', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(141, '2016-12-30', 'ER INDIA G-7', '156', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(142, '2016-12-30', 'ER INDIA G-7', '157', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(143, '2016-12-30', 'ER INDIA G-7', '158', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(144, '2016-12-30', 'ER INDIA G-7', '159', '10043;69', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(145, '2016-12-30', 'ER INDIA G-7', '160', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(146, '2016-12-30', 'ER INDIA G-7', '161', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(147, '2016-12-30', 'ER INDIA G-7', '162', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(148, '2016-12-30', 'ER INDIA G-7', '163', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(149, '2016-12-30', 'ER INDIA G-7', '164', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(150, '2016-12-30', 'ER INDIA G-7', '165', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(151, '2016-12-30', 'ER INDIA G-7', '166', '', '', '', 0, 69, 69, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(152, '2016-12-30', 'ER INDIA G-7', '167', '', '', '', 0, 138, 138, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(153, '2016-12-30', 'ER INDIA G-7', '168', '', '', '', 0, 276, 276, '', 0, 0, 'admin', '2016-12-30 01:57:32 PM'),
(154, '2017-01-02', 'K-9S', '225', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2017-01-02 01:34:39 PM'),
(155, '2017-01-02', 'K-9S', '226', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2017-01-02 01:44:20 PM'),
(156, '2017-01-02', 'K-9S', '228', '', '', '', 0, 514, 514, '', 0, 0, 'admin', '2017-01-02 01:47:10 PM'),
(157, '2017-01-02', 'K-9S', '79', '', '', '', 0, 207, 207, '', 0, 0, 'admin', '2017-01-02 04:03:00 PM'),
(158, '2017-01-02', 'ER INDIA G-7', '5', '', '', '', 0, 55, 55, '', 0, 0, 'admin', '2017-01-02 04:27:10 PM');

-- --------------------------------------------------------

--
-- Table structure for table `unit_tbl`
--

CREATE TABLE `unit_tbl` (
  `id` int(11) NOT NULL,
  `unitname` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_tbl`
--

INSERT INTO `unit_tbl` (`id`, `unitname`, `status`) VALUES
(1, 'Set', 0),
(2, 'Pcs', 0),
(3, 'Pair', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `previeliege` varchar(255) NOT NULL,
  `gdown` varchar(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `previeliege`, `gdown`, `status`) VALUES
(1, 'admin', 'admin', '1,2,3,4,5,6,7,8,9', '', 0),
(2, 'stock', 'stock', '6', '', 0),
(3, 'accounts', 'accounts', '4', '', 0),
(4, 'warehouse1', '1234', '5', '7', 0),
(5, 'warehouse2', '1234', '5', '8', 0),
(6, 'warehouse3', '1234', '5', '9', 0),
(7, 'inventory', '1234', '1', '', 0),
(8, 'purchase', '1234', '2', '', 0),
(9, 'cashier', '1234', '10', '', 0),
(10, 'sales', '1234', '3', '', 0),
(11, 'manufacterer', '1234', '8', '', 0),
(12, 'hr', '1234', '7', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `venderslist`
--

CREATE TABLE `venderslist` (
  `id` int(11) NOT NULL,
  `vender_id` varchar(20) NOT NULL,
  `vname` varchar(255) NOT NULL,
  `vcompany` varchar(255) NOT NULL,
  `vemail` varchar(255) NOT NULL,
  `vphno` varchar(255) NOT NULL,
  `add1` varchar(255) NOT NULL,
  `add2` varchar(255) NOT NULL,
  `cst` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `IEC_No` varchar(255) NOT NULL,
  `TIN_No` varchar(255) NOT NULL,
  `add4` varchar(255) NOT NULL,
  `pin` int(10) NOT NULL,
  `country` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `contactname1` varchar(255) NOT NULL,
  `contactemail1` varchar(255) NOT NULL,
  `contactphno1` varchar(255) NOT NULL,
  `contactname2` varchar(255) NOT NULL,
  `contactemail2` varchar(255) NOT NULL,
  `contactphno2` varchar(255) NOT NULL,
  `material` text NOT NULL,
  `products` text NOT NULL,
  `balance` decimal(20,2) NOT NULL,
  `bankname1` varchar(255) DEFAULT NULL,
  `bankacc1` varchar(255) DEFAULT NULL,
  `bankifsc1` varchar(255) DEFAULT NULL,
  `bankswift1` varchar(255) DEFAULT NULL,
  `branch1` varchar(255) DEFAULT NULL,
  `bankname2` varchar(255) DEFAULT NULL,
  `bankacc2` varchar(255) DEFAULT NULL,
  `bankifsc2` varchar(255) DEFAULT NULL,
  `bankswift2` varchar(255) DEFAULT NULL,
  `branch2` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crtd` varchar(55) NOT NULL,
  `doe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venderslist`
--

INSERT INTO `venderslist` (`id`, `vender_id`, `vname`, `vcompany`, `vemail`, `vphno`, `add1`, `add2`, `cst`, `vat`, `IEC_No`, `TIN_No`, `add4`, `pin`, `country`, `state`, `contactname1`, `contactemail1`, `contactphno1`, `contactname2`, `contactemail2`, `contactphno2`, `material`, `products`, `balance`, `bankname1`, `bankacc1`, `bankifsc1`, `bankswift1`, `branch1`, `bankname2`, `bankacc2`, `bankifsc2`, `bankswift2`, `branch2`, `status`, `crtd`, `doe`) VALUES
(5, 'GKSUP00001', 'MNP', 'MNP', 'abhijit.sanyal@crystalplanetweb.com', '21544', 'asddas', '', 'asdasd', 'asdsa', '', '', 'asdas', 0, 11, '', 'ada', 'asdsa@gmail.com', '2316', 'asdasd', 'asds@gmail.com', '216', 'Break,ACCELERATOR', 'K9,G3,k9', '511697.88', '', '', '', '', '', '', '', '', '', NULL, 0, '', ''),
(6, 'GKSUP00002', 'XYZ', 'XYZ', 'pankaj@crystalplanetweb.com', '12556', 'asdasd', '', 'asdas', 'asdasd', '', '', 'asdas', 16, 0, '', 'adfd', 'dsfdsf@gmail.com', '2131', 'asdasd', 'asd@gmail.com', '215', 'sdfdsf', '', '5302.31', '', '', '', '', '', '', '', '', '', '', 0, '', ''),
(8, 'GKSUP00003', 'basu Goutam', 'gk rikshaw', 'basu@gkrickshow.com', '123456789', 'dsfdsf,sdfsdf,sdfsdf', '', '3216', '3216', '', '', '', 7214589, 77, '', 'dfgdfg', 'dfg@gmail.com', '32115', 'asasd', 'asdasd@gmail.com', '215341', 'Break,ACCELERATOR', 'G5,K9,G3', '2575508.00', 'asdasdas', '32161', '3215', '3215618', '', 'asdasd', '3215', '215316', '', NULL, 0, '', ''),
(9, 'GKSUP00004', '', 'Samaresh', 'pankaj.patra.87.16@gmail.com', '123456789', 'asa', 'asa', 'asdas', 'asdas', 'asdsad', 'asdasd', '', 2134, 7, ' asas', 'asas', 'assa@gmail.com', '54321', '', '', '', 'BACK SET BOX,BOX COVER,BAG,BASKET BOX,CHARGER,CHASSIS,CLAMP SET,COVER SET,DIFFENTIAL,DRIVER SET BOX,FASTAID BOX,FOOT MAT,GLASS SET,KAMANI,LEG GURD,MOTOR,RIM', 'ER INDIA G-7,ER INDIA K-9', '4013.00', 'asasd', '11', '21646', '21354as', '', '', '', '', '', NULL, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `venderslistbypkp21102016`
--

CREATE TABLE `venderslistbypkp21102016` (
  `id` int(11) NOT NULL,
  `vender_id` varchar(20) NOT NULL,
  `vname` varchar(255) NOT NULL,
  `vcompany` varchar(255) NOT NULL,
  `vemail` varchar(255) NOT NULL,
  `vphno` varchar(255) NOT NULL,
  `add1` varchar(255) NOT NULL,
  `cst` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `add4` varchar(255) NOT NULL,
  `pin` int(10) NOT NULL,
  `country` int(11) NOT NULL,
  `contactname1` varchar(255) NOT NULL,
  `contactemail1` varchar(255) NOT NULL,
  `contactphno1` varchar(255) NOT NULL,
  `contactname2` varchar(255) NOT NULL,
  `contactemail2` varchar(255) NOT NULL,
  `contactphno2` varchar(255) NOT NULL,
  `material` text NOT NULL,
  `products` text NOT NULL,
  `bankname1` varchar(255) DEFAULT NULL,
  `bankacc1` varchar(255) DEFAULT NULL,
  `bankifsc1` varchar(255) DEFAULT NULL,
  `bankswift1` varchar(255) DEFAULT NULL,
  `branch1` varchar(255) DEFAULT NULL,
  `bankname2` varchar(255) DEFAULT NULL,
  `bankacc2` varchar(255) DEFAULT NULL,
  `bankifsc2` varchar(255) DEFAULT NULL,
  `bankswift2` varchar(255) DEFAULT NULL,
  `branch2` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venderslistbypkp21102016`
--

INSERT INTO `venderslistbypkp21102016` (`id`, `vender_id`, `vname`, `vcompany`, `vemail`, `vphno`, `add1`, `cst`, `vat`, `add4`, `pin`, `country`, `contactname1`, `contactemail1`, `contactphno1`, `contactname2`, `contactemail2`, `contactphno2`, `material`, `products`, `bankname1`, `bankacc1`, `bankifsc1`, `bankswift1`, `branch1`, `bankname2`, `bankacc2`, `bankifsc2`, `bankswift2`, `branch2`, `status`) VALUES
(5, 'GK/201610034', 'MNP', 'MNP', 'abhijit.sanyal@crystalplanetweb.com', '21544', 'asddas', 'asdasd', 'asdsa', 'asdas', 0, 11, 'ada', 'asdsa@gmail.com', '2316', 'asdasd', 'asds@gmail.com', '216', 'Break,ACCELERATOR', 'K9,G3,k9', '', '', '', '', '', '', '', '', '', NULL, 0),
(6, 'GK/201610035', 'XYZ', 'XYZ', 'sdfsdf@gmail.com', '12556', 'asdasd', 'asdas', 'asdasd', 'asdas', 16, 0, 'adfd', 'dsfdsf@gmail.com', '2131', 'asdasd', 'asd@gmail.com', '215', 'sdfdsf', '', '', '', '', '', '', '', '', '', '', '', 0),
(8, 'GK/2016100536', 'basu Goutam', 'gk rikshaw', 'basu@gkrickshow.com', '123456789', 'dsfdsf,sdfsdf,sdfsdf', '3216', '3216', '', 7214589, 77, 'dfgdfg', 'dfg@gmail.com', '32115', 'asasd', 'asdasd@gmail.com', '215341', 'Break,ACCELERATOR', 'G5,K9,G3', 'asdasdas', '32161', '3215', '3215618', '', 'asdasd', '3215', '215316', '', NULL, 0),
(9, 'GK/20161017537', 'assad', 'sdfdsf', 'dsfdsf@gmail.com', '1236', 'dsadasd,asdasd', 'asdsad', 'asdsad', '', 123456, 17, 'asdsad', 'asdd@gmail.com', 'assad', '', '', '', 'Break', 'G5', 'asdsad', 'sadasd', 'asddas', 'asdas', '', '', '', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vender_bank_info`
--

CREATE TABLE `vender_bank_info` (
  `id` int(11) NOT NULL,
  `venders_id` varchar(255) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `bankacc` varchar(255) NOT NULL,
  `bankifsc` varchar(255) NOT NULL,
  `bankswift` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vender_bank_info`
--

INSERT INTO `vender_bank_info` (`id`, `venders_id`, `bankname`, `bankacc`, `bankifsc`, `bankswift`, `branch`, `status`) VALUES
(1, 'GK/201610033334', '1', '1', '1', '1', '1', 0),
(2, 'GK/201610033334', '2', '2', '2', '2', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vouchertransaction`
--

CREATE TABLE `vouchertransaction` (
  `id` int(11) NOT NULL,
  `clientid` varchar(255) NOT NULL,
  `bookingid` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `billtot` decimal(20,2) NOT NULL,
  `vamnt` decimal(20,2) NOT NULL,
  `chqno` varchar(50) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `doe` varchar(50) NOT NULL,
  `rtgsid` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `dos` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vouchertransaction`
--

INSERT INTO `vouchertransaction` (`id`, `clientid`, `bookingid`, `type`, `purpose`, `billtot`, `vamnt`, `chqno`, `bankname`, `branch`, `doe`, `rtgsid`, `status`, `sid`, `sname`, `dos`) VALUES
(1, 'GKCLNT1600004', 'GKSLSBK00013', 'cheque', '', '62500.00', '25400.00', '123456', 'abcdef', 'dfsfgfddf', '2016-12-15', '', 0, 4, 'dsfdsfds', ''),
(2, 'GKCLNT1600004', 'GKSLSBK00017', 'cheque', '', '1050000.00', '25000.00', '125478', 'dsfdsf', 'dsfdsf', '21-12-2016', '', 0, 4, 'dsfdsfds', ''),
(3, 'GKCLNT1600013', 'GKSLSBK00018', 'cheque', '', '1050000.00', '25000.00', '4545', 'fgfdg', 'fdgfdg', '2016-12-16', '', 0, 5, 'Sougata Dalapati', ''),
(4, 'GKCLNT1600016', 'GKSLSBK00025', 'cheque', '', '53750.00', '25000.00', '12345', 'dsfdsf', 'sddsf', '12-10-2016', '', 0, 5, 'Sougata Dalapati', ''),
(5, 'GKCLNT1600013', NULL, 'cheque', 'security', '0.00', '25400.00', '123123', 'asdasd', 'asdasd', '10-10-2016', '', 0, 5, 'Sougata Dalapati', ''),
(8, 'CGKCLNT1700028', '', 'cash', 'security', '0.00', '25000.00', '', '', '', '2017-01-19', '', 0, 6, 'gautam basu', ''),
(9, 'CGKCLNT1700028', '', 'cash', 'security', '0.00', '45000.00', '45000', '', '', '2017-01-20', '', 0, 6, 'gautam basu', ''),
(10, 'CGKCLNT1700028', '', 'cash', 'security', '0.00', '55000.00', '', '', '', '2017-01-17', '', 0, 6, 'gautam basu', ''),
(11, 'CGKCLNT1700028', '', 'cash', 'security', '0.00', '540000.00', 'zxdad', '', '', '2017-01-19', '', 0, 6, 'gautam basu', '2017-01-26'),
(12, 'CGKCLNT1700028', '', 'cheque', 'security', '0.00', '14500.00', 'sdfs', '', 'dsfdsf', '2017-01-19', '', 0, 6, 'gautam basu', '2017-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `warehousewise_order`
--

CREATE TABLE `warehousewise_order` (
  `id` int(11) NOT NULL,
  `bkid` varchar(255) NOT NULL,
  `stockcode` varchar(55) NOT NULL,
  `modelname` varchar(50) NOT NULL,
  `partscode` varchar(50) NOT NULL,
  `qnty` int(11) NOT NULL,
  `wrehsecode` int(11) NOT NULL,
  `doe2` varchar(55) NOT NULL,
  `crtd` varchar(255) NOT NULL,
  `dos` varchar(55) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `doe` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehousewise_order`
--

INSERT INTO `warehousewise_order` (`id`, `bkid`, `stockcode`, `modelname`, `partscode`, `qnty`, `wrehsecode`, `doe2`, `crtd`, `dos`, `status`, `doe`) VALUES
(3, 'GKSLSBK70052', 'STCODE0003', '3', '', 10, 8, '', 'admin', '2017-02-10', 0, '2017-02-10 10:50:38 AM'),
(4, 'GKSLSBK70052', 'STCODE0004', '3', '', 10, 7, '', 'admin', '2017-02-10', 1, '2017-02-10 02:18:59 PM'),
(5, 'GKSLSBK70054', 'STCODE0005', '3', '', 10, 9, '', 'admin', '2017-02-10', 0, '2017-02-10 03:30:16 PM'),
(6, 'GKSLSBK70054', 'STCODE0006', '3', '', 15, 8, '', 'admin', '2017-02-10', 0, '2017-02-10 03:30:16 PM'),
(7, 'GKSLSBK70055', 'STCODE0007', '1', '', 20, 7, '', 'admin', '2017-02-10', 1, '2017-02-10 03:39:13 PM'),
(8, 'GKSLSBK70055', 'STCODE0008', '1', '', 20, 8, '', 'admin', '2017-02-10', 0, '2017-02-10 03:41:12 PM'),
(9, 'GKSLSBK70053', 'STCODE0009', '1', '', 10, 7, '', 'admin', '2017-02-13', 0, '2017-02-13 07:01:58 PM'),
(10, 'GKSLSBK70053', 'STCODE0010', '1', '', 10, 7, '', 'admin', '2017-02-13', 1, '2017-02-13 07:01:58 PM'),
(11, 'GKSLSBK70057', 'STCODE0011', '3', '', 10, 7, '', 'admin', '2017-02-13', 1, '2017-02-13 07:21:57 PM'),
(12, 'GKSLSBK70058', 'STCODE0012', '1', '', 2, 7, '', 'admin', '2017-02-13', 1, '2017-02-13 07:39:40 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountsgroup`
--
ALTER TABLE `accountsgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acctyp`
--
ALTER TABLE `acctyp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allspareparts`
--
ALTER TABLE `allspareparts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankinformation`
--
ALTER TABLE `bankinformation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banklist`
--
ALTER TABLE `banklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banktransaction`
--
ALTER TABLE `banktransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookingorder`
--
ALTER TABLE `bookingorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boxstock`
--
ALTER TABLE `boxstock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashinhand`
--
ALTER TABLE `cashinhand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashinhandtransaction`
--
ALTER TABLE `cashinhandtransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chasismntcode`
--
ALTER TABLE `chasismntcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checking_stock`
--
ALTER TABLE `checking_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientmaster`
--
ALTER TABLE `clientmaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientmaster06012017`
--
ALTER TABLE `clientmaster06012017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientmaster9122016`
--
ALTER TABLE `clientmaster9122016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_code`
--
ALTER TABLE `color_code`
  ADD PRIMARY KEY (`codeid`);

--
-- Indexes for table `color_code1`
--
ALTER TABLE `color_code1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_code_final`
--
ALTER TABLE `color_code_final`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countrylist`
--
ALTER TABLE `countrylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customertype`
--
ALTER TABLE `customertype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custtransaction`
--
ALTER TABLE `custtransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custtransaction31012017`
--
ALTER TABLE `custtransaction31012017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cust_order`
--
ALTER TABLE `cust_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daybydayplan`
--
ALTER TABLE `daybydayplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributer_list`
--
ALTER TABLE `distributer_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry8122016`
--
ALTER TABLE `enquiry8122016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finalorder`
--
ALTER TABLE `finalorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gdownstock`
--
ALTER TABLE `gdownstock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gdownstock02012017`
--
ALTER TABLE `gdownstock02012017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gdownstock23`
--
ALTER TABLE `gdownstock23`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `getpassorder`
--
ALTER TABLE `getpassorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `godown`
--
ALTER TABLE `godown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incentive`
--
ALTER TABLE `incentive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoicegenerate`
--
ALTER TABLE `invoicegenerate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_master_vhc_div`
--
ALTER TABLE `item_master_vhc_div`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufact`
--
ALTER TABLE `manufact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufactre_req`
--
ALTER TABLE `manufactre_req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufactstock`
--
ALTER TABLE `manufactstock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiel_master`
--
ALTER TABLE `materiel_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiel_master02012017`
--
ALTER TABLE `materiel_master02012017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiel_master02012017online`
--
ALTER TABLE `materiel_master02012017online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiel_master05012017`
--
ALTER TABLE `materiel_master05012017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiel_master9122016`
--
ALTER TABLE `materiel_master9122016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiel_master14102016`
--
ALTER TABLE `materiel_master14102016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiel_master27122016`
--
ALTER TABLE `materiel_master27122016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiel_masterbypkp21102016`
--
ALTER TABLE `materiel_masterbypkp21102016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materiel_mastercopy`
--
ALTER TABLE `materiel_mastercopy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ofer_letter`
--
ALTER TABLE `ofer_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outgoingtax`
--
ALTER TABLE `outgoingtax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentpurpose`
--
ALTER TABLE `paymentpurpose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_purpose`
--
ALTER TABLE `payment_purpose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_generate`
--
ALTER TABLE `payslip_generate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pi_invoice`
--
ALTER TABLE `pi_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productmaster`
--
ALTER TABLE `productmaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productmaster05012017`
--
ALTER TABLE `productmaster05012017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productmaster9122016`
--
ALTER TABLE `productmaster9122016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productmaster14102016`
--
ALTER TABLE `productmaster14102016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productmasterbypkp21102016`
--
ALTER TABLE `productmasterbypkp21102016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productmastervopy`
--
ALTER TABLE `productmastervopy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specification`
--
ALTER TABLE `product_specification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchasematerial`
--
ALTER TABLE `purchasematerial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseprice`
--
ALTER TABLE `purchaseprice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseqatation`
--
ALTER TABLE `purchaseqatation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchasetax`
--
ALTER TABLE `purchasetax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pvoucher`
--
ALTER TABLE `pvoucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation27102016`
--
ALTER TABLE `quotation27102016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requiredparts`
--
ALTER TABLE `requiredparts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesman`
--
ALTER TABLE `salesman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesman06012017`
--
ALTER TABLE `salesman06012017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_terget`
--
ALTER TABLE `sales_terget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_terget06012017`
--
ALTER TABLE `sales_terget06012017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spareparts`
--
ALTER TABLE `spareparts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spareparts_specification`
--
ALTER TABLE `spareparts_specification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spareparts_specification14/10/2016`
--
ALTER TABLE `spareparts_specification14/10/2016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spareparts_specificationvopy`
--
ALTER TABLE `spareparts_specificationvopy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `starimage`
--
ALTER TABLE `starimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocktable`
--
ALTER TABLE `stocktable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxandduties`
--
ALTER TABLE `taxandduties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxationdetails`
--
ALTER TABLE `taxationdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdsbal`
--
ALTER TABLE `tdsbal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdspay`
--
ALTER TABLE `tdspay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temporder`
--
ALTER TABLE `temporder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_table`
--
ALTER TABLE `temp_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_plan`
--
ALTER TABLE `tour_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transection_master_acount`
--
ALTER TABLE `transection_master_acount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transection_sparesparts`
--
ALTER TABLE `transection_sparesparts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transection_sparesparts02012017`
--
ALTER TABLE `transection_sparesparts02012017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transection_sparesparts05012017`
--
ALTER TABLE `transection_sparesparts05012017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_tbl`
--
ALTER TABLE `unit_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venderslist`
--
ALTER TABLE `venderslist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venderslistbypkp21102016`
--
ALTER TABLE `venderslistbypkp21102016`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vender_bank_info`
--
ALTER TABLE `vender_bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchertransaction`
--
ALTER TABLE `vouchertransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehousewise_order`
--
ALTER TABLE `warehousewise_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountsgroup`
--
ALTER TABLE `accountsgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `acctyp`
--
ALTER TABLE `acctyp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `allspareparts`
--
ALTER TABLE `allspareparts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `bankinformation`
--
ALTER TABLE `bankinformation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `banktransaction`
--
ALTER TABLE `banktransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `bookingorder`
--
ALTER TABLE `bookingorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `boxstock`
--
ALTER TABLE `boxstock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `cashinhand`
--
ALTER TABLE `cashinhand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cashinhandtransaction`
--
ALTER TABLE `cashinhandtransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `chasismntcode`
--
ALTER TABLE `chasismntcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `checking_stock`
--
ALTER TABLE `checking_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `clientmaster`
--
ALTER TABLE `clientmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `clientmaster06012017`
--
ALTER TABLE `clientmaster06012017`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `clientmaster9122016`
--
ALTER TABLE `clientmaster9122016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `color_code`
--
ALTER TABLE `color_code`
  MODIFY `codeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `color_code1`
--
ALTER TABLE `color_code1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `color_code_final`
--
ALTER TABLE `color_code_final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `countrylist`
--
ALTER TABLE `countrylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `customertype`
--
ALTER TABLE `customertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `custtransaction`
--
ALTER TABLE `custtransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `custtransaction31012017`
--
ALTER TABLE `custtransaction31012017`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cust_order`
--
ALTER TABLE `cust_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `daybydayplan`
--
ALTER TABLE `daybydayplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `distributer_list`
--
ALTER TABLE `distributer_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `enquiry8122016`
--
ALTER TABLE `enquiry8122016`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `finalorder`
--
ALTER TABLE `finalorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `gdownstock`
--
ALTER TABLE `gdownstock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;
--
-- AUTO_INCREMENT for table `gdownstock02012017`
--
ALTER TABLE `gdownstock02012017`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;
--
-- AUTO_INCREMENT for table `gdownstock23`
--
ALTER TABLE `gdownstock23`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `getpassorder`
--
ALTER TABLE `getpassorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `godown`
--
ALTER TABLE `godown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `invoicegenerate`
--
ALTER TABLE `invoicegenerate`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `item_master_vhc_div`
--
ALTER TABLE `item_master_vhc_div`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `manufact`
--
ALTER TABLE `manufact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `manufactre_req`
--
ALTER TABLE `manufactre_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `manufactstock`
--
ALTER TABLE `manufactstock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `materiel_master`
--
ALTER TABLE `materiel_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;
--
-- AUTO_INCREMENT for table `materiel_master02012017`
--
ALTER TABLE `materiel_master02012017`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `materiel_master02012017online`
--
ALTER TABLE `materiel_master02012017online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
--
-- AUTO_INCREMENT for table `materiel_master05012017`
--
ALTER TABLE `materiel_master05012017`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `materiel_master9122016`
--
ALTER TABLE `materiel_master9122016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `materiel_master14102016`
--
ALTER TABLE `materiel_master14102016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `materiel_master27122016`
--
ALTER TABLE `materiel_master27122016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `materiel_masterbypkp21102016`
--
ALTER TABLE `materiel_masterbypkp21102016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `materiel_mastercopy`
--
ALTER TABLE `materiel_mastercopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `ofer_letter`
--
ALTER TABLE `ofer_letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `outgoingtax`
--
ALTER TABLE `outgoingtax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `paymentpurpose`
--
ALTER TABLE `paymentpurpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `payment_purpose`
--
ALTER TABLE `payment_purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `payslip_generate`
--
ALTER TABLE `payslip_generate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pi_invoice`
--
ALTER TABLE `pi_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `productmaster`
--
ALTER TABLE `productmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `productmaster05012017`
--
ALTER TABLE `productmaster05012017`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `productmaster9122016`
--
ALTER TABLE `productmaster9122016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `productmaster14102016`
--
ALTER TABLE `productmaster14102016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `productmasterbypkp21102016`
--
ALTER TABLE `productmasterbypkp21102016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `productmastervopy`
--
ALTER TABLE `productmastervopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_specification`
--
ALTER TABLE `product_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `purchasematerial`
--
ALTER TABLE `purchasematerial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `purchaseprice`
--
ALTER TABLE `purchaseprice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `purchaseqatation`
--
ALTER TABLE `purchaseqatation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchasetax`
--
ALTER TABLE `purchasetax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pvoucher`
--
ALTER TABLE `pvoucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `quotation27102016`
--
ALTER TABLE `quotation27102016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `requiredparts`
--
ALTER TABLE `requiredparts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `salesman`
--
ALTER TABLE `salesman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `salesman06012017`
--
ALTER TABLE `salesman06012017`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sales_terget`
--
ALTER TABLE `sales_terget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sales_terget06012017`
--
ALTER TABLE `sales_terget06012017`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `spareparts`
--
ALTER TABLE `spareparts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spareparts_specification`
--
ALTER TABLE `spareparts_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10069;
--
-- AUTO_INCREMENT for table `spareparts_specification14/10/2016`
--
ALTER TABLE `spareparts_specification14/10/2016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `spareparts_specificationvopy`
--
ALTER TABLE `spareparts_specificationvopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10021;
--
-- AUTO_INCREMENT for table `starimage`
--
ALTER TABLE `starimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `stocktable`
--
ALTER TABLE `stocktable`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `taxandduties`
--
ALTER TABLE `taxandduties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `taxationdetails`
--
ALTER TABLE `taxationdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tdsbal`
--
ALTER TABLE `tdsbal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tdspay`
--
ALTER TABLE `tdspay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `temporder`
--
ALTER TABLE `temporder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `temp_table`
--
ALTER TABLE `temp_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tour_plan`
--
ALTER TABLE `tour_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `transection_master_acount`
--
ALTER TABLE `transection_master_acount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `transection_sparesparts`
--
ALTER TABLE `transection_sparesparts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;
--
-- AUTO_INCREMENT for table `transection_sparesparts02012017`
--
ALTER TABLE `transection_sparesparts02012017`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `transection_sparesparts05012017`
--
ALTER TABLE `transection_sparesparts05012017`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `unit_tbl`
--
ALTER TABLE `unit_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `venderslist`
--
ALTER TABLE `venderslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `venderslistbypkp21102016`
--
ALTER TABLE `venderslistbypkp21102016`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `vender_bank_info`
--
ALTER TABLE `vender_bank_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vouchertransaction`
--
ALTER TABLE `vouchertransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `warehousewise_order`
--
ALTER TABLE `warehousewise_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
