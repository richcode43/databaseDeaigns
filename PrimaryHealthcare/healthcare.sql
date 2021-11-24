-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 11:24 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `Admissionid` int(11) NOT NULL,
  `Patientid` int(11) DEFAULT NULL,
  `Wardid` int(11) DEFAULT NULL,
  `AdmissionDate` date DEFAULT NULL,
  `DischargeDate` date DEFAULT NULL,
  `sponsor` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`Admissionid`, `Patientid`, `Wardid`, `AdmissionDate`, `DischargeDate`, `sponsor`) VALUES
(1, NULL, NULL, '2021-11-24', '2021-11-30', 'Metropoint(HMO)'),
(2, NULL, NULL, '2021-11-24', '2021-11-30', 'Hygia(HMO)'),
(3, NULL, NULL, '2021-11-24', '2021-11-30', 'Reliance(HMO)'),
(4, NULL, NULL, '2021-11-24', '2021-11-30', 'Health point(HMO)'),
(5, NULL, NULL, '2021-11-24', '2021-11-30', 'Greenbay(HMO)'),
(6, NULL, NULL, '2021-11-24', '2021-11-30', 'SELF'),
(7, NULL, NULL, '2021-11-24', '2021-11-30', 'Hallmark(HMO)'),
(8, NULL, NULL, '2021-11-24', '2021-11-30', 'Redcare Health Servi'),
(9, NULL, NULL, '2021-11-24', '2021-11-30', 'AIICO(HMO)'),
(10, NULL, NULL, '2021-11-24', '2021-11-30', 'IHMS(HMO)');

-- --------------------------------------------------------

--
-- Table structure for table `appiontments`
--

CREATE TABLE `appiontments` (
  `Appiontmentid` int(11) NOT NULL,
  `Patientid` int(11) DEFAULT NULL,
  `Doctorid` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appiontments`
--

INSERT INTO `appiontments` (`Appiontmentid`, `Patientid`, `Doctorid`, `Date`) VALUES
(300, NULL, NULL, '2021-11-24'),
(301, NULL, NULL, '2021-11-29'),
(302, NULL, NULL, '2021-12-02'),
(303, NULL, NULL, '2021-12-11'),
(304, NULL, NULL, '2021-12-20'),
(305, NULL, NULL, '2021-12-26'),
(306, NULL, NULL, '2021-12-31'),
(307, NULL, NULL, '2022-01-04'),
(308, NULL, NULL, '2022-02-15'),
(309, NULL, NULL, '2022-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `Billid` int(11) NOT NULL,
  `Amount` decimal(10,0) DEFAULT NULL,
  `Details` varchar(100) DEFAULT NULL,
  `Patientid` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`Billid`, `Amount`, `Details`, `Patientid`, `Date`) VALUES
(1, '250000', 'cesarean section', NULL, '2021-12-30'),
(2, '35000', 'Surgery for removal of hyernia', NULL, '2021-12-10'),
(3, '115000', 'Surgery for removal of fibriod', NULL, '2021-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `Doctorid` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `specialty` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`Doctorid`, `firstname`, `lastname`, `gender`, `specialty`) VALUES
(1, 'Ernest', 'Ikpi', 'male', 'Surgeon'),
(2, 'Monalisa', 'Yellow', 'female', 'Pediatrician'),
(3, 'King', 'Jacob', 'male', 'Cardiologist'),
(4, 'Theresa', 'Green', 'female', 'Dermatologist'),
(5, 'Martin', 'Luther', 'male', 'Neurologist'),
(6, 'Maudlyn', 'Ndigwe', 'female', 'Optician'),
(7, 'Jennifer', 'Ejiogu', 'female', 'Surgeon'),
(8, 'Michael', 'Ntuen', 'male', 'Radiologist'),
(9, 'Samuel', 'Columbus', 'male', 'Pediatrician'),
(10, 'Blessing', 'Jackson', 'male', 'Gynaecologist');

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE `laboratory` (
  `Labid` int(11) NOT NULL,
  `Testid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory`
--

INSERT INTO `laboratory` (`Labid`, `Testid`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `Nurseid` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `rank` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurses`
--

INSERT INTO `nurses` (`Nurseid`, `firstname`, `lastname`, `gender`, `rank`) VALUES
(200, 'Irene', 'Smith', 'female', 'Midwife nurse'),
(201, 'Clinton', 'Brown', 'male', 'Clinical nurse'),
(202, 'Ivory', 'Moses', 'female', 'Anasthestic nur'),
(203, 'Alexander', 'Mahone', 'male', 'Pediatric nurse'),
(204, 'Mary', 'Sucre', 'female', 'Geriatric nurse'),
(205, 'Elizabeth', 'Tom', 'female', 'Matron'),
(206, 'Ruth', 'Scofield', 'female', 'Midwife nurse'),
(207, 'Raymond', 'Redington', 'male', 'Geriatric nurse'),
(208, 'Jason', 'Phillip', 'male', 'Pediatric Nurse'),
(209, 'Loveth', 'James', 'female', 'Anasthestic nur');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `Patientid` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `Phonenumber` varchar(20) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`Patientid`, `firstname`, `lastname`, `gender`, `age`, `Phonenumber`, `Address`) VALUES
(100, 'Tracy', 'George', 'female', 21, '8130309832', 'Plot 5 Forces Avenue, Portharcourt'),
(101, 'Sheila', 'Gabriel', 'female', 54, '7033937667', 'Sheila Drive, GRA, Portharcourt'),
(102, 'Obinna', 'okere', 'male', 45, '7033001238', 'Spiff Avenue, GRA, Portharcourt'),
(103, 'Richard', 'William', 'male', 60, '8011133320', '21 Compton Drive, Compton, Portharcourt'),
(104, 'Venus', 'William', 'female', 45, '8011133320', '3 Fidelis Avenue, Mile 4, Portharcourt'),
(105, 'Serena', 'William', 'female', 40, '8011133320', '10 Serena Drive, GRA, Portharcourt'),
(106, 'Sean', 'Nelson', 'male', 29, '8014443320', '35 Stadium Road, Portharcourt'),
(107, 'Paul', 'Walker', 'male', 48, '8111933320', '003 Fast Drive, Ajah, Portharcourt'),
(108, 'Angelina', 'Jolie', 'female', 50, '999223320', '12 Raiders Street, Eliozu, Portharcourt'),
(109, 'Richard', 'William', 'male', 39, '8011133320', '21 Compton Drive, Mile 1, Portharcourt');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `Testid` int(11) NOT NULL,
  `TestName` varchar(20) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Result` varchar(80) DEFAULT NULL,
  `Patientid` int(11) DEFAULT NULL,
  `Doctorid` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`Testid`, `TestName`, `Description`, `Result`, `Patientid`, `Doctorid`, `Date`) VALUES
(1, 'Widal', 'Test for malaria antibodies', 'Postive 2++', NULL, NULL, '2021-11-28'),
(2, 'Biopsy', 'Cell or tissue sampling', 'Negative', NULL, NULL, '2021-12-30'),
(3, 'DNA Test', 'Test for malaria antibodies', 'Postive 2++', NULL, NULL, '2021-11-27'),
(4, 'Lumbar Punture', 'Cebrospinal', 'Postive 2++', NULL, NULL, '2021-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `Treatmentid` int(11) NOT NULL,
  `Prescription` varchar(100) DEFAULT NULL,
  `Patientid` int(11) DEFAULT NULL,
  `Doctorid` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`Treatmentid`, `Prescription`, `Patientid`, `Doctorid`, `Date`) VALUES
(1, 'Paracetamol , Coartem', NULL, NULL, '2021-11-29'),
(2, 'Boska , Wiper', NULL, NULL, '2021-11-20'),
(3, 'B-complex , Parcetamol injection', NULL, NULL, '2021-11-29'),
(4, '7 keys , Paracetamol', NULL, NULL, '2021-11-20'),
(5, 'Paracetamol , Coartem', NULL, NULL, '2021-11-29'),
(6, 'Boska , Wiper', NULL, NULL, '2021-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `wardid` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`wardid`, `Name`) VALUES
(1, 'Male ward'),
(2, 'Female ward'),
(3, 'Children ward'),
(4, 'Emergency ward');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`Admissionid`);

--
-- Indexes for table `appiontments`
--
ALTER TABLE `appiontments`
  ADD PRIMARY KEY (`Appiontmentid`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`Billid`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`Doctorid`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`Labid`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`Nurseid`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`Patientid`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`Testid`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`Treatmentid`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`wardid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `Admissionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appiontments`
--
ALTER TABLE `appiontments`
  MODIFY `Appiontmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `Billid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `Doctorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `laboratory`
--
ALTER TABLE `laboratory`
  MODIFY `Labid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nurses`
--
ALTER TABLE `nurses`
  MODIFY `Nurseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `Patientid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `Testid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `Treatmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `wardid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
