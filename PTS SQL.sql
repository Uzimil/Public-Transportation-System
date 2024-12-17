-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 12:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_db`
--
CREATE DATABASE IF NOT EXISTS `admin_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `Id` int(11) NOT NULL,
  `Image_Name` varchar(255) NOT NULL,
  `Image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `available_vehicle`
--
CREATE DATABASE IF NOT EXISTS `available_vehicle` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `available_vehicle`;

-- --------------------------------------------------------

--
-- Table structure for table `avehicle`
--

CREATE TABLE `avehicle` (
  `vehicle_type` varchar(120) DEFAULT NULL,
  `vehicle_ID` varchar(120) NOT NULL,
  `Start_route` varchar(120) NOT NULL,
  `Ending_route` varchar(120) NOT NULL,
  `Driver` varchar(120) NOT NULL,
  `Driver_contact` varchar(15) DEFAULT NULL,
  `plate_num` varchar(120) NOT NULL,
  `vehicle_model` varchar(120) NOT NULL,
  `Departure_time` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avehicle`
--

INSERT INTO `avehicle` (`vehicle_type`, `vehicle_ID`, `Start_route`, `Ending_route`, `Driver`, `Driver_contact`, `plate_num`, `vehicle_model`, `Departure_time`) VALUES
('Bus', '00001', 'Claveria Terminal', 'Agora Terminal', 'Rex', '09352983998', '6969', 'Subaru', '12:00 AM'),
('Van', '12345', 'Claveria Terminal', 'Agora Terminal', 'Bajao', '09352983998', '123', '5665', '10:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avehicle`
--
ALTER TABLE `avehicle`
  ADD PRIMARY KEY (`vehicle_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
