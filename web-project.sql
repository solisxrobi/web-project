-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2023 at 01:25 PM
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
-- Database: `web-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('asdas', 'sadasd@gmail.com', '12312412', 'sadasd', 'asdasdas');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('robi1', 'robi', 'robi@gmail.com', '123412341234', 'Sabang Lipa City', '123');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `F_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` int NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE',
  PRIMARY KEY (`F_ID`,`R_ID`),
  KEY `R_ID` (`R_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(89, 'test', 123, 'asdasdasd', 7, 'images/flat-white.png', 'DISABLE'),
(90, 'Flat White', 110, 'Maalat to ', 7, 'images/flat-white.png', 'ENABLE'),
(91, 'Ice latte', 120, 'Maasim', 7, 'images/ice-latte.jpg', 'ENABLE'),
(92, 'Frappe', 100, 'Antot', 7, 'images/frappe.jpg', 'ENABLE'),
(93, 'White Chocolate Mocha', 130, 'Asim mo Tol', 7, 'images/white-chocolate-mocha.jpg', 'ENABLE'),
(94, 'White Frappuccino', 99, 'Awit Boss', 7, 'images/white-frappuccino.jpg', 'DISABLE'),
(95, 'Vanilla Frappuccino', 99, 'Awit Boss', 7, 'images/vanilla-frappuccino.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('admin', 'Solis The Great', 'admin@gmail.com', '911245312', 'Sabang Lipa City', 'adm');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_ID` int NOT NULL AUTO_INCREMENT,
  `F_ID` int NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int NOT NULL,
  PRIMARY KEY (`order_ID`),
  KEY `F_ID` (`F_ID`),
  KEY `username` (`username`),
  KEY `R_ID` (`R_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 90, 'Flat White', 110, 1, '2023-12-05', 'robi1', 7),
(2, 91, 'Ice latte', 120, 2, '2023-12-05', 'robi1', 7),
(3, 90, 'Flat White', 110, 1, '2023-12-05', 'robi1', 7),
(4, 91, 'Ice latte', 120, 2, '2023-12-05', 'robi1', 7);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE IF NOT EXISTS `restaurants` (
  `R_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`R_ID`),
  UNIQUE KEY `M_ID_2` (`M_ID`),
  KEY `M_ID` (`M_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(7, 'wqsqws', 'adasadmin@gmail.com', '123123123', 'asasx', 'admin');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
