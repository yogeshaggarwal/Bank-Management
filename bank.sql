-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2019 at 08:05 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE IF NOT EXISTS `facility` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `eid` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `facility_name` varchar(50) NOT NULL,
  `card_no` bigint(20) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`fid`, `eid`, `date`, `facility_name`, `card_no`) VALUES
(2, 6, '10-02-2019', 'ATM card', 697181833810),
(3, 3, '10-09-2018', 'ATM card', 977061253087),
(4, 5, '20-06-2019', 'ATM card', 901887960866),
(5, 4, '13-07-2019', 'Credit card', 747682335616);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE IF NOT EXISTS `loan` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `eid` int(10) NOT NULL,
  `loan_type` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `down_payment` int(10) NOT NULL,
  `interest_rate` int(10) NOT NULL,
  `length_of_loan` int(10) NOT NULL,
  `monthly_payment` int(10) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`lid`, `eid`, `loan_type`, `price`, `down_payment`, `interest_rate`, `length_of_loan`, `monthly_payment`) VALUES
(1, 4, 'Car Loan', 100000, 10000, 5, 2, 245),
(2, 3, 'Car Loan', 100000, 10000, 5, 2, 3958),
(3, 2, 'Education Loan', 10000, 1000, 10, 2, 416),
(4, 4, 'Gold Loan', 10000, 1500, 12, 3, 269),
(5, 5, 'Property Loan', 50000, 2100, 10, 2, 2203),
(6, 6, 'Car Loan', 100000, 2000, 5, 5, 1716);

-- --------------------------------------------------------

--
-- Table structure for table `loan_transation`
--

CREATE TABLE IF NOT EXISTS `loan_transation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL,
  `eid` int(10) NOT NULL,
  `lon_type` varchar(100) NOT NULL,
  `month` varchar(50) NOT NULL,
  `amount_deposit` int(10) NOT NULL,
  `amount_pending` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `loan_transation`
--

INSERT INTO `loan_transation` (`id`, `lid`, `eid`, `lon_type`, `month`, `amount_deposit`, `amount_pending`) VALUES
(1, 6, 6, 'Car Loan', 'Jan', 1716, 100000),
(2, 6, 6, 'Car Loan', 'Feb', 1716, 98284),
(3, 1, 4, 'Car Loan', 'May', 245, 100000),
(4, 2, 3, 'Car Loan', 'Jan', 3958, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `eid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`eid`, `userid`, `password`) VALUES
(1, 'yogesh123', '159753');

-- --------------------------------------------------------

--
-- Table structure for table `newcustomer`
--

CREATE TABLE IF NOT EXISTS `newcustomer` (
  `eid` int(10) NOT NULL AUTO_INCREMENT,
  `eacctype` varchar(100) NOT NULL,
  `ecustomertype` varchar(100) NOT NULL,
  `ename` varchar(100) NOT NULL,
  `efathername` varchar(100) NOT NULL,
  `edate` varchar(50) NOT NULL,
  `egender` varchar(50) NOT NULL,
  `emarital` varchar(50) NOT NULL,
  `emode` varchar(50) NOT NULL,
  `eservice` varchar(50) NOT NULL,
  `eaddress` varchar(100) NOT NULL,
  `ecity` varchar(50) NOT NULL,
  `estate` varchar(50) NOT NULL,
  `enationality` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `emobile` varchar(50) NOT NULL,
  `ebalance` int(10) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `newcustomer`
--

INSERT INTO `newcustomer` (`eid`, `eacctype`, `ecustomertype`, `ename`, `efathername`, `edate`, `egender`, `emarital`, `emode`, `eservice`, `eaddress`, `ecity`, `estate`, `enationality`, `emailid`, `emobile`, `ebalance`) VALUES
(2, 'Saving Bank Account', 'Public', 'sfhsfg', 'dhjsfy', 'thjyj', 'Female', 'Married', 'Either or survivor', 'Internet Banking', 'wdhuiuviadhekjnrfjftehwt', 'twht', 'rajsgfj', 'indian', 'yjrgdsdf@gamil.com', '8931164133', 185000),
(3, 'Current Account', 'Staff', 'ganesh', 'mukesh', '10-05-1889', 'Male', 'Unmarried', 'Self Only', 'ATM Cum Debit Card', 'Lalgarh,shriganganagar', 'Lalgarh', 'Rajasthan', 'Indian', 'ganesh@gmail.com', '8564123645', 153958),
(4, 'Saving Bank Account', 'Public', 'egss', 'grhsw', '20-05-1689', 'Male', 'Unmarried', 'Self Only', 'ATM Cum Debit Card SMS Alert ', 'rgtsgsw', 'gwf', 'sgsv', 'indian', 'w4te7drf@', '9351346878', 150245),
(6, 'Saving Bank Account', 'Staff', 'sge', 'ygf', '10-02-1998', 'Male', 'Unmarried', 'Self Only', 'ATM Cum Debit Card', 'djiuiuted', 'dtefey', 'cvhdrj', 'indian', 'fdjrefvbv3j', '6658426956', 3432);

-- --------------------------------------------------------

--
-- Table structure for table `transation`
--

CREATE TABLE IF NOT EXISTS `transation` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `eid` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tamount` int(10) NOT NULL,
  `ebalance` int(10) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `transation`
--

INSERT INTO `transation` (`tid`, `eid`, `type`, `tamount`, `ebalance`) VALUES
(1, 5, 'D', 10000, 105000),
(2, 4, 'Withdraw', 50000, 150000),
(3, 5, 'Deposit', 100000, 155000),
(4, 3, 'Deposit', 100000, 150000),
(5, 6, 'Withdraw', 50000, 300000),
(6, 6, 'Deposit', 100000, 400000),
(7, 6, 'Car Loan_W', 100000, 300000),
(8, 6, 'Car Loan_D', 1716, 1716),
(9, 6, 'Car Loan_D', 1716, 3432),
(10, 4, 'Car Loan_D', 245, 150245),
(11, 3, 'Car Loan_D', 3958, 153958);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
