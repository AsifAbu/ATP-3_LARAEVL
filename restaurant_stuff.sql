-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 01:32 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

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
-- Table structure for table `restaurant_stuff`
--

CREATE TABLE `restaurant_stuff` (
  `id` int(11) NOT NULL,
  `restaurant_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(16) NOT NULL,
  `address_restaurant` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cost_per_foodie` varchar(255) NOT NULL,
  `most_popular_items` varchar(255) NOT NULL,
  `cuisine` varchar(255) NOT NULL,
  `time` varchar(30) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `items` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `starting_date` varchar(30) NOT NULL,
  `reservation_status` varchar(255) NOT NULL,
  `deals` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_stuff`
--

INSERT INTO `restaurant_stuff` (`id`, `restaurant_name`, `email`, `mobile`, `address_restaurant`, `password`, `cost_per_foodie`, `most_popular_items`, `cuisine`, `time`, `rating`, `photos`, `items`, `city`, `location`, `starting_date`, `reservation_status`, `deals`, `type`) VALUES
(1, 'Pizza Hut', 'gaziarmanhrobin@gmail.com', '01726579069', 'rood-2, house-16, Dhanmondi-27, Dhaka', '1122', '200-600', 'smoking chicken ,smoking buzz, triple chicken feast.', 'American, Chinese, French.', '(8:00 AM - 8:00PM)', '8', 'Gazi Arman', 'Buttermilk Pancakes, Sweetcorn fritters,Chocolate cupcakes, Fried chicken', 'Dhanmondi,Dhaka', 'rood-2, house-16, Dhanmondi-27, Dhaka', '01-01-2011', 'Open for Reserved.', 'Deals of the photos', 'Restaurant Stuff'),
(2, 'Pizza Hut', 'gaziarmanhrobin@gmail.com', '01726579069', 'rood-5, house-23, Baily Road, Dhaka', '1133', '200-600', 'smoking chicken ,smoking buzz, triple chicken feast.', 'American, Chinese, French.', '(8:00 AM - 8:00PM)', '8', 'Asif Abu', 'Buttermilk Pancakes, Sweetcorn fritters,Chocolate cupcakes, Fried chicken', 'Baily Road, Dhaka', 'rood-5, house-23, Baily Road, Dhaka', '01-01-2010', 'Reserved.', 'Deals of the photos', 'Restaurant Stuff'),
(3, 'Bar B Q Tonight', 'rafsan@gmail.com', '01725635878', 'Dhanmondi 27, Dhaka City, Bangladesh', '1144', '200-800', 'smoking chicken ,smoking buzz, triple chicken feast.', 'Indian, Barbecue, Asian, Pakistani, Bangladeshi.', '(8:00 AM - 10:00PM)', '9', 'Rafsan', 'Buttermilk Pancakes, Sweetcorn fritters,Chocolate cupcakes, Fried chicken', 'Baily Road, Dhaka', 'Dhanmondi 27, Dhaka City, Bangladesh', '01-01-2010', 'Reserved.', 'Deals of the photos', 'Restaurant Stuff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurant_stuff`
--
ALTER TABLE `restaurant_stuff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurant_stuff`
--
ALTER TABLE `restaurant_stuff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
