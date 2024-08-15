-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 06:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `novel`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` longblob DEFAULT NULL,
  `novel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `name`, `content`, `novel_id`) VALUES
(6, 'novel1-chapter1', 0x3c703e54486973206973206368617074657231206f66206e6f76656c3c2f703e, 3);

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(11) NOT NULL,
  `novel_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `novel_id`, `user_id`) VALUES
(15, 2, 3),
(18, 3, 3),
(19, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `novels`
--

CREATE TABLE `novels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `novels`
--

INSERT INTO `novels` (`id`, `name`, `author_id`) VALUES
(3, 'Novel1', 5),
(5, 'bnovel1', 4),
(6, 'bNovel2', 4),
(7, 'my new novel', 4);

-- --------------------------------------------------------

--
-- Table structure for table `suser`
--

CREATE TABLE `suser` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suser`
--

INSERT INTO `suser` (`id`, `email`, `password`) VALUES
(1, 'lalit.developer@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `bio` blob DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `blocked_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `bio`, `gender`, `user_type`, `blocked_status`) VALUES
(2, 'yashit', 'yashit@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0x3c703e5941534849543c2f703e, 'M', '2', '1'),
(3, 'kumar123', 'kumar@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0x3c703e6b756d61723c2f703e, 'M', '3', '0'),
(4, 'Brighter', 'brighter@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0x74686973206973206272696768746572, 'M', '2', '0'),
(5, 'pallavi', 'b@abc.com', 'c81e728d9d4c2f636f067f89cc14862c', '', 'F', '2', '0'),
(6, 'aarya', 'a@abc.com', 'c4ca4238a0b923820dcc509a6f75849b', '', 'F', '3', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `novels`
--
ALTER TABLE `novels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suser`
--
ALTER TABLE `suser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `novels`
--
ALTER TABLE `novels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `suser`
--
ALTER TABLE `suser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
