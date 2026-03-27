-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2026 at 08:42 AM
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
-- Database: `admissiondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentdetail`
--

CREATE TABLE `studentdetail` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `pphone` int(11) DEFAULT NULL,
  `paddress` varchar(50) DEFAULT NULL,
  `caddress` varchar(50) DEFAULT NULL,
  `10rollno` int(11) DEFAULT NULL,
  `10percentage` int(11) DEFAULT NULL,
  `12rollno` int(11) DEFAULT NULL,
  `12percentage` int(11) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentdetail`
--

INSERT INTO `studentdetail` (`id`, `fullname`, `DOB`, `gender`, `category`, `phone`, `email`, `pname`, `pphone`, `paddress`, `caddress`, `10rollno`, `10percentage`, `12rollno`, `12percentage`, `course`) VALUES
(19, 'chubamanen', '2005-02-07', 'Female', 'ST', 2147483647, 'chuba@gmail.com', 'tasenba', 2147483647, 'tongbang sector', 'merima kohima', 14425, 68, 6767, 76, 'MTech'),
(20, 'Sayangshir', '2004-03-09', 'Male', 'ST', 2147483647, 'sayang@gmail.com', 'tanangba', 2147483647, 'liden sector', 'merima kohima brotherhood', 1119, 98, 1123, 99, 'MCA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentdetail`
--
ALTER TABLE `studentdetail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studentdetail`
--
ALTER TABLE `studentdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
