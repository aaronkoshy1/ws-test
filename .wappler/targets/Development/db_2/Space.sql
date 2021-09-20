-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 14, 2021 at 03:51 PM
-- Server version: 5.7.32-35-log
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db4dpcuqsgmyur`
--

-- --------------------------------------------------------

--
-- Table structure for table `Building`
--

CREATE TABLE `Building` (
  `building_id` int(11) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `offices` varchar(225) NOT NULL,
  `hot_desk` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Company`
--

CREATE TABLE `Company` (
  `company_name` varchar(45) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `linkedin_url` varchar(100) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `user_name` varchar(25) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `password` varchar(10) NOT NULL,
  `company_name` varchar(45) NOT NULL,
  `industry` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Building`
--
ALTER TABLE `Building`
  ADD PRIMARY KEY (`building_id`),
  ADD KEY `fk_Building_user_name` (`user_name`);

--
-- Indexes for table `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`company_name`),
  ADD UNIQUE KEY `uc_Company_linkedin_url` (`linkedin_url`),
  ADD KEY `fk_Company_user_name` (`user_name`),
  ADD KEY `fk_Company_building_id` (`building_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`user_name`),
  ADD KEY `fk_User_company_name` (`company_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Building`
--
ALTER TABLE `Building`
  ADD CONSTRAINT `fk_Building_user_name` FOREIGN KEY (`user_name`) REFERENCES `User` (`user_name`);

--
-- Constraints for table `Company`
--
ALTER TABLE `Company`
  ADD CONSTRAINT `fk_Company_building_id` FOREIGN KEY (`building_id`) REFERENCES `Building` (`building_id`),
  ADD CONSTRAINT `fk_Company_user_name` FOREIGN KEY (`user_name`) REFERENCES `User` (`user_name`);

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `fk_User_company_name` FOREIGN KEY (`company_name`) REFERENCES `Company` (`company_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
