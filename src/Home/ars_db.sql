-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 08:17 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ars_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(50) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `fname`, `lname`, `uname`, `pass`, `email`, `user_type`) VALUES
(1, 'David', 'Lim', 'the25', '12345', 'dlimthe25@gmail.com', 'user'),
(2, 'Siah', 'Tuong Chuan', 'legna', '11111', 'legna98@gmail.com', 'user'),
(3, 'David', 'Lim', 'admin', 'admin123', 'admin@citypass.com', 'admin'),
(4, 'Caleb', 'Lim', 'caleb', '12345', 'caleb123@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `book_ticket`
--

CREATE TABLE `book_ticket` (
  `Ticket_No` int(50) NOT NULL,
  `Flight_Id` int(50) NOT NULL,
  `Flight_Name` varchar(50) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Arrival_Time` varchar(50) NOT NULL,
  `Departure_Time` varchar(50) NOT NULL,
  `price` int(100) NOT NULL,
  `Total_Price` int(50) NOT NULL,
  `Seats` int(50) NOT NULL,
  `C_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_ticket`
--

INSERT INTO `book_ticket` (`Ticket_No`, `Flight_Id`, `Flight_Name`, `Source`, `Destination`, `Date`, `Arrival_Time`, `Departure_Time`, `price`, `Total_Price`, `Seats`, `C_Name`) VALUES
(358, 2, '2', '2', '2', '2021-06-02', '2', '2', 4, 8, 2, 'David, Enouch'),
(212, 1, '1', '1', '1', '2021-06-01', '1', '1', 10, 10, 1, 'Legna'),
(726, 7788, 'CP2424', 'SBW', 'KCH', '2021-06-15', '1200', '1000', 80, 160, 2, 'David, Enouch'),
(578, 7568, 'CP2626', 'KCH', 'SBW', '2021-06-18', '1400', '1200', 60, 60, 1, 'Legna'),
(374, 2534, 'CP6798', 'SBW', 'KCH', '2021-06-14', '0900', '0800', 90, 90, 1, 'David'),
(507, 2534, 'CP6798', 'SBW', 'KCH', '2021-06-14', '0900', '0800', 90, 90, 1, 'Legna');

-- --------------------------------------------------------

--
-- Table structure for table `cancel_ticket`
--

CREATE TABLE `cancel_ticket` (
  `Ticket_No` int(50) NOT NULL,
  `Flight_Id` int(50) NOT NULL,
  `Flight_Name` varchar(100) NOT NULL,
  `Source` varchar(100) NOT NULL,
  `Destination` varchar(100) NOT NULL,
  `Booking_Date` varchar(50) NOT NULL,
  `Arrival_Time` varchar(50) NOT NULL,
  `Departure_Time` varchar(50) NOT NULL,
  `Price` int(100) NOT NULL,
  `Seats` int(100) NOT NULL,
  `C_Name` varchar(200) NOT NULL,
  `Return_Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancel_ticket`
--

INSERT INTO `cancel_ticket` (`Ticket_No`, `Flight_Id`, `Flight_Name`, `Source`, `Destination`, `Booking_Date`, `Arrival_Time`, `Departure_Time`, `Price`, `Seats`, `C_Name`, `Return_Date`) VALUES
(770, 1, '1', '1', '1', '2021-06-01', '1', '1', 0, 1, 'David', '2021-06-13'),
(891, 7788, 'CP2424', 'SBW', 'KCH', '2021-06-15', '1200', '1000', 80, 1, 'Legna', '2021-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(500) NOT NULL,
  `Nic_No` int(50) NOT NULL,
  `Passport_Id` int(50) NOT NULL,
  `Dob` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Contact` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `Flight_Id` int(100) NOT NULL,
  `Flight_Name` varchar(100) NOT NULL,
  `Source` varchar(100) NOT NULL,
  `Destination` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Departure_Time` varchar(50) NOT NULL,
  `Arrival_Time` varchar(50) NOT NULL,
  `Flight_Price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Flight_Id`, `Flight_Name`, `Source`, `Destination`, `Date`, `Departure_Time`, `Arrival_Time`, `Flight_Price`) VALUES
(2534, 'CP6798', 'SBW', 'KCH', '2021-06-14', '0800', '0900', 90);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
