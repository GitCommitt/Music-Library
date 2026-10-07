-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Oct 07, 2026 at 12:31 PM
-- Server version: 12.0.2-MariaDB-ubu2404
-- PHP Version: 8.2.29
 
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
 
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
 
--
-- Database: `m5prog_music`
--
 
-- --------------------------------------------------------
 
--
-- Table structure for table `artist`
--
 
CREATE TABLE `artist` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `img_artist` varchar(150) NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
 
--
-- Dumping data for table `artist`
--
 
INSERT INTO `artist` (`id`, `name`, `img_artist`, `slug`) VALUES
(1, 'Taylor Swift', '../src/img/taylor-artiest.jpg', 'taylor-swift'),
(2, 'Carly Rae Jepsen', '../src/img/carly-artiest.jpg', 'carly-rae-jepsen'),
(3, 'Miley Cyrus', '../src/img/miley-artiest.jpg', 'miley-cyrus'),
(4, 'Katy Perry', '../src/img/katy-artiest.jpg', 'katy-perry'),
(5, 'Bruno Mars', '../src/img/bruno-artiest.jpg', 'bruno-mars'),
(6, 'Rachel Platten', '../src/img/rachel-artiest.jpg', 'rachel-platten');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `genre`
--
 
CREATE TABLE `genre` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(45) NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
 
--
-- Dumping data for table `genre`
--
 
INSERT INTO `genre` (`id`, `title`, `slug`) VALUES
(1, 'Pop', 'pop');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `single`
--
 
CREATE TABLE `single` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(45) NOT NULL,
  `duration` varchar(15) NOT NULL,
  `release_date` date NOT NULL,
  `genre_id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED NOT NULL,
  `img` varchar(45) NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
 
--
-- Dumping data for table `single`
--
 
INSERT INTO `single` (`id`, `title`, `duration`, `release_date`, `genre_id`, `artist_id`, `img`, `slug`) VALUES
(1, 'Shake It Off', '03:39', '2014-01-01', 1, 1, '../src/img/taylor-nummer.jpg', 'shake-it-off'),
(2, 'Call Me Maybe', '03:13', '2011-01-01', 1, 2, '../src//img/carly-nummer.jpg', 'call-me-maybe'),
(3, 'Party in the U.S.A.', '03:22', '2009-01-01', 1, 3, '../src/img/miley-nummer.jpg', 'party-in-the-usa'),
(4, 'Teenage Dream', '03:47', '2010-01-01', 1, 4, '../src/img/katy-nummer.jpg', 'teenage-dream'),
(5, "That\'s What I Like", '03:26', '2017-01-01', 1, 5, '../src/img/bruno-nummer.jpg', 'thats-what-i-like'),
(6, 'Flight Song', '03:24', '2015-01-01', 1, 6, '../src/img/rachel-nummer.jpg', 'flight-song');
 
--
-- Indexes for dumped tables
--
 
--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);
 
--
-- Indexes for table `single`
--
ALTER TABLE `single`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_single_genre_idx` (`genre_id`),
  ADD KEY `fk_single_artist1_idx` (`artist_id`);
 
--
-- AUTO_INCREMENT for dumped tables
--
 
--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
 
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
 
--
-- AUTO_INCREMENT for table `single`
--
ALTER TABLE `single`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
 
--
-- Constraints for dumped tables
--
 
--
-- Constraints for table `single`
--
ALTER TABLE `single`
  ADD CONSTRAINT `fk_single_artist1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_single_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;
 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;