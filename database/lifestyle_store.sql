-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 05:20 AM
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
-- Database: `lifestyle_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `name`, `price`) VALUES
(1, 'Cannon EOS', 36000),
(2, 'Nikon DSLR', 40000),
(3, 'Sony DSLR', 45000),
(4, 'Olympus DSLR', 50000),
(5, 'Titan Model#301', 13000),
(6, 'Titan Model#201', 3000),
(7, 'HMT Milan', 8000),
(8, 'Faber Luba#111', 18000),
(9, 'H&W', 800),
(10, 'Luis Phil', 1000),
(11, 'John Zok', 1500),
(12, 'Jhalsani', 1300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(2, 'Dummy Wummy', '', '6fb42da0e32e07b61c9f0251fe627a9c', '2147483647', 'alu', 'kachalu'),
(3, 'Dummy Wummy', 'dummy123@gmail.com', '6fb42da0e32e07b61c9f0251fe627a9c', '2147483647', 'alu', 'kachalu'),
(4, 'Dummy Wummmy', 'dummy1234@gmail.com', '6fb42da0e32e07b61c9f0251fe627a9c', '2147483647', 'aluuuu', 'kachalu'),
(5, 'Lyla Martin', 'lyla098@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2147483647', 'liliput', 'Bandar'),
(6, 'Ritu Jalan', 'ritujalan0987@gmail.com', 'b93d2d87a618d2cdf6afb8c5a87b5e0f', '2147483647', 'SOUTH 24 PARGANAS', 'The Neotia University'),
(7, 'hey ya', 'heyat@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9234567890', 'hyia', 'sjsjs'),
(8, 'hrurur Jalan', 'hurr@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '9000000000', 'Dumka', 'Behind Hero Showroom, Bhagalpur road, Dudhani');

-- --------------------------------------------------------

--
-- Table structure for table `users_item`
--

CREATE TABLE `users_item` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_item`
--

INSERT INTO `users_item` (`id`, `user_id`, `item_id`, `status`) VALUES
(2, 5, 4, 'Added to cart'),
(3, 5, 4, 'Added to cart'),
(4, 5, 2, 'Added to cart'),
(5, 5, 12, 'confirmed'),
(6, 6, 1, 'Added to cart'),
(7, 6, 2, 'Added to cart'),
(8, 6, 3, 'Added to cart'),
(9, 6, 4, 'Added to cart'),
(10, 7, 1, 'Added to cart'),
(11, 7, 2, 'Added to cart'),
(12, 8, 2, 'Added to cart'),
(13, 8, 3, 'Added to cart'),
(14, 8, 8, 'confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `users_item`
--
ALTER TABLE `users_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_item`
--
ALTER TABLE `users_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_item`
--
ALTER TABLE `users_item`
  ADD CONSTRAINT `users_item_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`),
  ADD CONSTRAINT `users_item_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
