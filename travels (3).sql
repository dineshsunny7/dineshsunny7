-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 04:11 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `flight_id` varchar(10) NOT NULL,
  `departure_city` varchar(15) NOT NULL,
  `arrival_city` varchar(15) NOT NULL,
  `arrival_time` time DEFAULT NULL,
  `departure_time` time NOT NULL,
  `doj` date NOT NULL,
  `available_seats_eco` int(11) DEFAULT NULL,
  `class_Economy` varchar(30) DEFAULT NULL,
  `available_seats_bus` int(11) DEFAULT NULL,
  `class_Business` varchar(30) DEFAULT NULL,
  `available_seats_first` int(11) DEFAULT NULL,
  `class_First` varchar(30) DEFAULT NULL,
  `filled_seats` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travels`
--

INSERT INTO `travels` (`flight_id`, `departure_city`, `arrival_city`, `arrival_time`, `departure_time`, `doj`, `available_seats_eco`, `class_Economy`, `available_seats_bus`, `class_Business`, `available_seats_first`, `class_First`, `filled_seats`) VALUES
('121', 'bangalore', 'hyderabad', '16:00:00', '09:15:00', '2019-10-29', 32, 'Economy', 3, 'Business', 41, 'First', 52),
('121', 'calicut', 'bangalore', '16:00:00', '09:15:00', '2019-10-29', 32, 'Economy', 3, 'Business', 41, 'First', 52),
('121', 'calicut', 'hyderabad', '16:00:00', '07:15:00', '2019-10-12', 70, 'Economy', 42, 'Business', 44, 'First', 17),
('121', 'calicut', 'hyderabad', '16:00:00', '08:15:00', '2019-04-12', 71, 'Economy', 24, 'Business', 44, 'First', 45),
('121', 'calicut', 'hyderabad', '16:00:00', '11:15:00', '2019-10-29', 71, 'Economy', 24, 'Business', 44, 'First', 55),
('121', 'calicut', 'hyderabad', '16:00:00', '12:15:00', '2019-12-25', 65, 'Economy', 54, 'Business', 44, 'First', 18),
('121', 'calicut', 'vizag', '00:32:00', '00:32:00', '2019-12-12', 12, 'Economy', 34, 'Business', 15, 'First', 0),
('121', 'hyderabad', 'vizag', '15:21:00', '00:22:00', '2019-12-12', 12, 'Economy', 12, 'Business', 12, 'First', 0),
('122', 'calicut', 'bangalore', '10:00:00', '08:15:00', '2019-10-29', 50, 'Economy', 77, 'Business', 44, 'First', 46),
('124', 'hyderabad', 'calicut', '16:25:00', '08:15:00', '2019-10-29', 70, 'Economy', 21, 'Business', 36, 'First', 55),
('124', 'kolkata', 'hyderabad', '18:00:00', '11:15:00', '2019-10-29', 72, 'Economy', 10, 'Business', 42, 'First', 56),
('125', 'hyderabad', 'bangalore', '17:00:00', '10:15:00', '2019-10-29', 75, 'Economy', 43, 'Business', 44, 'First', 42),
('126', 'bangalore', 'vizag', '21:43:00', '07:06:00', '2019-03-12', 43, 'Economy', 34, 'Business', 56, 'First', 0),
('126', 'hyderabad', 'calicut', '05:25:00', '02:15:00', '2019-10-29', 77, 'Economy', 41, 'Business', 44, 'First', 77),
('127', 'delhi', 'hyderabad', '23:00:00', '22:15:00', '2019-10-29', 13, 'Economy', 14, 'Business', 44, 'First', 74),
('555', 'hyderabad', 'mumbai', '23:25:00', '18:15:00', '2019-10-29', 72, 'Economy', 63, 'Business', 44, 'First', 32),
('999', 'mumbai', 'bangalore', '11:00:00', '08:15:00', '2019-10-29', 13, 'Economy', 2, 'Business', 44, 'First', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`flight_id`,`departure_city`,`arrival_city`,`departure_time`),
  ADD KEY `arrival_city` (`arrival_city`),
  ADD KEY `departure_city` (`departure_city`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `travels`
--
ALTER TABLE `travels`
  ADD CONSTRAINT `travels_ibfk_1` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `travels_ibfk_2` FOREIGN KEY (`arrival_city`) REFERENCES `city` (`city`) ON DELETE CASCADE,
  ADD CONSTRAINT `travels_ibfk_3` FOREIGN KEY (`departure_city`) REFERENCES `city` (`city`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
