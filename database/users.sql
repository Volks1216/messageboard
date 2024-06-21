-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 21, 2024 at 03:54 AM
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
(1, 'admin', 'admin0000@gmail.com', '$2y$10$XB1I95WA2j7Rcg.egH.1K.5.fnnpv7GhpUaGTr6AN2trpYb3Z5T0e', 'male', '2001-05-22', 'Admin BTW', 'files/download.png', NULL, '2024-06-18 03:20:04', '2024-06-18 03:27:33'),
(2, 'dexter', 'admin1111@gmail.com', '$2y$10$UDHya66iFkVTbOemCgg6OOA.5uGV0h2PLKkGqLMWFv.fxHHdlajJi', 'male', '1999-12-16', 'Seiba!!', 'files/download.jpg', NULL, '2024-06-18 03:40:52', '2024-06-18 03:41:48'),
(3, 'admin2', 'admin2222@gmail.com', '$2y$10$GWp9N2TD8h9OsVvIvG9DQejf/ZXEg87n2fCipnVbXlinVBEVvUilm', 'female', '2007-05-26', 'fembot', 'files/download-1.jpg', NULL, '2024-06-18 12:34:45', '2024-06-18 12:35:35'),
(4, 'admin123', 'admin3333@gmail.com', '$2y$10$9Qb.y2fUwz2GrXH7vRfFZupYr2Gmx2SGBxkG15oJyx/InNhSQRV8u', NULL, NULL, NULL, NULL, NULL, '2024-06-18 21:15:54', '2024-06-18 21:15:54'),
(6, 'admin', 'admin5555@gmail.com', 'admin123', NULL, NULL, NULL, NULL, NULL, '2024-06-18 21:20:54', '2024-06-18 21:20:54');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
