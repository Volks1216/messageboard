-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 02, 2024 at 08:03 AM
-- Server version: 8.0.37
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fdci`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `hobby` longtext,
  `picture` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `birthdate`, `hobby`, `picture`, `last_login`, `created`, `modified`) VALUES
(1, 'admin', 'admin1111@gmail.com', '$2y$10$y.uOxlGgkkNLX3TCWosAxOjpgMo4/gwQ0DLo/KkGLeNH4nIW4upD6', 'male', '2001-05-22', 'Test for fun', 'files/download.jpg', NULL, '2024-06-27 03:29:20', '2024-06-27 03:30:00'),
(2, 'admin1', 'admin2222@gmail.com', '$2y$10$J8j1fTTB5cZrP4fPJKgwUO2j8uWxKv5O5TrE1EATLQVN1pVszDlN2', 'female', '2007-05-26', 'test test test', 'files/download-1.jpg', NULL, '2024-06-27 03:30:56', '2024-06-27 03:31:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
