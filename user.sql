-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 09:21 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `joint_date` varchar(50) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `date_of_birth` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `favourite_food` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `my_points` int(255) NOT NULL,
  `my_reservation` varchar(255) NOT NULL,
  `my_deals` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `reviewed_count` int(255) NOT NULL,
  `favourite_restaurent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `joint_date`, `first_name`, `last_name`, `mobile`, `date_of_birth`, `gender`, `email`, `country`, `city`, `location`, `favourite_food`, `profile_pic`, `password`, `my_points`, `my_reservation`, `my_deals`, `type`, `reviewed_count`, `favourite_restaurent`) VALUES
(1, '3/12/2019, 12:40:13 AM', 'asif', 'abu', '01780963888', '12/12/12', 'male', 'asif@gmail.com', 'bangladesh', 'dhaka', 'nikunjo-2', 'tea', 'IMG_20190306_145029.jpg', '1122', 0, '0', '0', 'user', 0, 'dosa express'),
(2, '3/12/2019, 12:41:41 AM', 'asif', 'abu', '01780963888', '12/12/12', 'male', 'asif@gmail.com', 'bangladesh', 'dhaka', 'nikunjo-2', 'tea', 'IMG_20190306_145029.jpg', '1122', 0, '0', '0', 'user', 0, 'dosa express'),
(3, '3/12/2019, 12:42:45 AM', 'asif', 'abu', '01780963888', '12/12/12', 'male', 'asif@gmail.com', 'bangladesh', 'dhaka', 'nikunjo-2', 'tea', 'IMG_20190306_145029.jpg', '1122', 0, '0', '0', 'user', 0, 'dosa express');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
