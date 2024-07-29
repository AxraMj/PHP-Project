-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 11, 2021 at 06:11 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cam`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `sid`, `eid`, `date`, `status`) VALUES
(3, 0, 2, '2021-10-10', 'joined'),
(4, 0, 2, '2021-10-10', 'joined'),
(5, 5, 2, '2021-10-10', 'joined');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(50) NOT NULL,
  `etopic` varchar(55) NOT NULL,
  `edescription` varchar(55) NOT NULL,
  `qualification` varchar(55) NOT NULL,
  `edate` varchar(55) NOT NULL,
  `etime` varchar(55) NOT NULL,
  `status` varchar(77) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eid`, `ename`, `etopic`, `edescription`, `qualification`, `edate`, `etime`, `status`) VALUES
(2, 'vo', 'vo', 'vo', 'vo', '2021-10-06', 'vo', 'vo');

-- --------------------------------------------------------

--
-- Table structure for table `fest`
--

CREATE TABLE IF NOT EXISTS `fest` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(55) NOT NULL,
  `ftopic` varchar(55) NOT NULL,
  `fdescription` varchar(55) NOT NULL,
  `qualification` varchar(55) NOT NULL,
  `sdate` varchar(55) NOT NULL,
  `edate` varchar(55) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `fest`
--

INSERT INTO `fest` (`fid`, `fname`, `ftopic`, `fdescription`, `qualification`, `sdate`, `edate`) VALUES
(3, 'petagon', 'nothing', 'nop', 'nop', '2021-10-06', '2021-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `usertype`, `status`) VALUES
('admin@gmail.com', 'admin', 'admin', 'approved'),
('170021095673', '2015-02-03', 'student', 'approved'),
('1200909009', '2021-09-24', 'student', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `rollno` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `semid` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `name`, `address`, `rollno`, `dob`, `gender`, `email`, `phoneno`, `course`, `batch`, `semid`) VALUES
(1, 'arjun villa', '', 't2', 'computer science', 'science', '12500', '21-08-28', 'computer science', 'BCA', 1),
(3, 'anu', 'nu cilla', '2017', '2021-08-11', 'female', 'nu@gmail.com', '9988776678', '', 'First year', 0),
(4, 'anu', 'nu cilla', '2017', '2021-08-11', 'female', 'nu@gmail.com', '9988776678', '', 'First year', 0),
(5, 'apurva', 'appus villa', 't2', '2021-09-24', 'male', 'ap@gmail.com', '9900898989', 'computer science', 'First year', 1);

-- --------------------------------------------------------

--
-- Table structure for table `webinar`
--

CREATE TABLE IF NOT EXISTS `webinar` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `webinarname` varchar(50) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `weblink` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `webinar`
--

