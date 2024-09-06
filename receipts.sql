-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2024 at 10:20 PM
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
-- Database: `receipt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL,
  `receiptNo` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `receivedFrom` varchar(255) DEFAULT NULL,
  `siteName` varchar(255) DEFAULT NULL,
  `unitNo` varchar(255) DEFAULT NULL,
  `floor` varchar(255) DEFAULT NULL,
  `chequeNo` varchar(255) DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `utrNo` varchar(255) DEFAULT NULL,
  `amountReceived` decimal(10,2) DEFAULT NULL,
  `totalAmount` decimal(10,2) DEFAULT NULL,
  `balanceDue` decimal(10,2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `receiptNo`, `date`, `receivedFrom`, `siteName`, `unitNo`, `floor`, `chequeNo`, `chequeDate`, `bankName`, `utrNo`, `amountReceived`, `totalAmount`, `balanceDue`, `name`) VALUES
(9, '001', '2012-12-11', 'yes', 'Anoop Shaher', '0012', '4rth', '009889009`', '0000-00-00', '', '', 0.00, 120022.00, 12000.00, 'Arslaan Ahmad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
