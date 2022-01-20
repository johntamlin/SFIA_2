-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Jan 20, 2022 at 12:25 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webapp_db`
--
CREATE DATABASE IF NOT EXISTS `webapp_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `webapp_db`;

-- --------------------------------------------------------

--
-- Table structure for table `Clients`
--

CREATE TABLE `Clients` (
  `ClientID` int NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Address1` varchar(255) DEFAULT NULL,
  `Address2` varchar(255) DEFAULT NULL,
  `Address3` varchar(255) DEFAULT NULL,
  `Address4` varchar(255) DEFAULT NULL,
  `Postcode` varchar(8) DEFAULT NULL,
  `CertType` varchar(255) DEFAULT NULL,
  `CertNo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Credentials`
--

CREATE TABLE `Credentials` (
  `credId` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `userpwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Credentials`
--

INSERT INTO `Credentials` (`credId`, `username`, `userpwd`) VALUES
(1, 'John', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `Firearms`
--

CREATE TABLE `Firearms` (
  `StockID` int NOT NULL,
  `SerNumber` varchar(255) NOT NULL,
  `FType` varchar(255) NOT NULL,
  `Make` varchar(255) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Calibre` varchar(255) DEFAULT NULL,
  `Mech_Rifle` varchar(255) DEFAULT NULL,
  `Mech_Shot` varchar(255) DEFAULT NULL,
  `Kind` varchar(255) NOT NULL,
  `Buy` varchar(255) DEFAULT NULL,
  `Sell` varchar(255) DEFAULT NULL,
  `Sect` varchar(255) DEFAULT NULL,
  `ClientIn` varchar(255) DEFAULT NULL,
  `ClientOut` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FirearmType`
--

CREATE TABLE `FirearmType` (
  `FType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Kind`
--

CREATE TABLE `Kind` (
  `Kind` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Mech_R`
--

CREATE TABLE `Mech_R` (
  `Mech_Rifle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Mech_R`
--

INSERT INTO `Mech_R` (`Mech_Rifle`) VALUES
('Bolt Action'),
('Falling Block'),
('Martini'),
('Rolling Block'),
('Semi-Auto');

-- --------------------------------------------------------

--
-- Table structure for table `Mech_S`
--

CREATE TABLE `Mech_S` (
  `Mech_Shot` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `OrderID` int NOT NULL,
  `OrderNumber` int NOT NULL,
  `OrderDesc` varchar(1024) DEFAULT NULL,
  `PersonID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Persons`
--

CREATE TABLE `Persons` (
  `PersonID` int NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `addr` varchar(1024) DEFAULT NULL,
  `credId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Section`
--

CREATE TABLE `Section` (
  `Sect` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `UserId` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `userpwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indexes for table `Credentials`
--
ALTER TABLE `Credentials`
  ADD PRIMARY KEY (`credId`);

--
-- Indexes for table `Firearms`
--
ALTER TABLE `Firearms`
  ADD PRIMARY KEY (`StockID`),
  ADD KEY `FType` (`FType`),
  ADD KEY `Mech_Rifle` (`Mech_Rifle`),
  ADD KEY `Mech_Shot` (`Mech_Shot`),
  ADD KEY `Kind` (`Kind`),
  ADD KEY `Sect` (`Sect`);

--
-- Indexes for table `FirearmType`
--
ALTER TABLE `FirearmType`
  ADD PRIMARY KEY (`FType`);

--
-- Indexes for table `Kind`
--
ALTER TABLE `Kind`
  ADD PRIMARY KEY (`Kind`);

--
-- Indexes for table `Mech_R`
--
ALTER TABLE `Mech_R`
  ADD PRIMARY KEY (`Mech_Rifle`);

--
-- Indexes for table `Mech_S`
--
ALTER TABLE `Mech_S`
  ADD PRIMARY KEY (`Mech_Shot`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `PersonID` (`PersonID`);

--
-- Indexes for table `Persons`
--
ALTER TABLE `Persons`
  ADD PRIMARY KEY (`PersonID`),
  ADD KEY `credId` (`credId`);

--
-- Indexes for table `Section`
--
ALTER TABLE `Section`
  ADD PRIMARY KEY (`Sect`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `ClientID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Credentials`
--
ALTER TABLE `Credentials`
  MODIFY `credId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Firearms`
--
ALTER TABLE `Firearms`
  MODIFY `StockID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `OrderID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Persons`
--
ALTER TABLE `Persons`
  MODIFY `PersonID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `UserId` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Firearms`
--
ALTER TABLE `Firearms`
  ADD CONSTRAINT `Firearms_ibfk_1` FOREIGN KEY (`FType`) REFERENCES `FirearmType` (`FType`),
  ADD CONSTRAINT `Firearms_ibfk_2` FOREIGN KEY (`Mech_Rifle`) REFERENCES `Mech_R` (`Mech_Rifle`),
  ADD CONSTRAINT `Firearms_ibfk_3` FOREIGN KEY (`Mech_Shot`) REFERENCES `Mech_S` (`Mech_Shot`),
  ADD CONSTRAINT `Firearms_ibfk_4` FOREIGN KEY (`Kind`) REFERENCES `Kind` (`Kind`),
  ADD CONSTRAINT `Firearms_ibfk_5` FOREIGN KEY (`Sect`) REFERENCES `Section` (`Sect`);

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `Persons` (`PersonID`);

--
-- Constraints for table `Persons`
--
ALTER TABLE `Persons`
  ADD CONSTRAINT `Persons_ibfk_1` FOREIGN KEY (`credId`) REFERENCES `Credentials` (`credId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
