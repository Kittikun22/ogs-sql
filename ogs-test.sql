-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 03:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ogs-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `amount_person` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `rooms_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `start_date`, `end_date`, `amount_person`, `users_id`, `rooms_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, '2021-09-02 14:00:00', '2021-09-02 16:00:00', 3, 1, 5, '2021-09-02 13:59:00', 0, '2021-09-02 13:59:00', 0, '0000-00-00 00:00:00', 0),
(2, '2021-09-02 17:00:00', '2021-09-02 20:00:00', 4, 4, 2, '2021-09-02 15:59:00', 0, '2021-09-02 15:59:00', 0, '0000-00-00 00:00:00', 0),
(3, '2023-05-16 18:00:00', '2023-05-17 08:00:00', 4, 3, 4, '2023-05-16 17:00:00', 0, '2023-05-16 17:00:00', 0, '0000-00-00 00:00:00', 0),
(4, '2023-05-16 18:30:00', '2023-05-17 08:00:00', 2, 3, 7, '2023-05-16 18:00:00', 0, '2023-05-16 18:00:00', 0, '0000-00-00 00:00:00', 0),
(5, '2023-05-16 18:11:37', '2023-05-17 08:00:00', 1, 5, 8, '2023-05-16 18:11:37', 0, '2023-05-16 18:11:37', 0, '0000-00-00 00:00:00', 0),
(6, '2023-05-16 18:00:00', '2023-05-17 08:00:00', 4, 3, 1, '2023-05-16 17:00:00', 0, '2023-05-18 17:00:00', 0, '0000-00-00 00:00:00', 0),
(7, '2023-05-16 18:00:00', '2023-05-17 08:00:00', 4, 3, 2, '2023-05-16 17:00:00', 0, '2023-05-18 17:00:00', 0, '0000-00-00 00:00:00', 0),
(8, '2023-05-16 18:00:00', '2023-05-17 08:00:00', 4, 3, 3, '2023-05-16 17:00:00', 0, '2023-05-18 17:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_name` varchar(45) NOT NULL,
  `maximum_person` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_name`, `maximum_person`, `name`) VALUES
(1, 'M1', 4, 'medium'),
(2, 'M2', 4, 'medium'),
(3, 'M3', 4, 'medium'),
(4, 'M4', 4, 'medium'),
(5, 'C1', 2, 'common'),
(6, 'C2', 2, 'common'),
(7, 'C3', 2, 'common'),
(8, 'C4', 2, 'common');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` longtext NOT NULL,
  `last_name` longtext NOT NULL,
  `name_prefix` longtext NOT NULL,
  `sum_grade` enum('...') NOT NULL,
  `a_grade` enum('...') NOT NULL,
  `b_grade` enum('...') NOT NULL,
  `c_grade` enum('...') NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `name_prefix`, `sum_grade`, `a_grade`, `b_grade`, `c_grade`, `name`, `username`, `password_hash`, `image_path`, `created_at`, `created_by`, `updated_at`, `updated_by`, `image_id`, `deleted_at`) VALUES
(1, 'Kittikun', 'Singkhamma', 'Mr.', '...', '...', '...', '...', 'Khem', 'kittikun3', 'h21.49$512g512$9u5jkl$svdavdqwyu81v$bjksadasdzxc12hgedfg23t', '/profile/214.jpg', '2023-05-08 10:11:09', 1, '2023-05-08 16:14:09', 1, 1, '0000-00-00 00:00:00'),
(2, 'Sandee', 'Manee', 'Mrs.', '...', '...', '...', '...', 'Dee', 'sandy', 'a.hx/z2sadasf5$129u5jklsvdasdvb./jk$sadasdzx$/c12hge3t', '/profile/2411.jpg', '2021-09-02 12:00:00', 1, '2021-09-02 12:00:10', 1, 1, '0000-00-00 00:00:00'),
(3, 'Saki', 'Mino', 'Mr.', '...', '...', '...', '...', 'Saki', 'SakinoXD', '$2b$10$cLHQ8oNk1GcJ74nyMKUr0.AWuZB.CR5kDd/dbVVrYMiBaV3GB6uvS', '/profile/7877.jpg', '2021-09-02 07:00:00', 1, '2021-09-02 07:01:00', 1, 1, '0000-00-00 00:00:00'),
(4, 'Coady', 'Gakpo', 'Mr.', '...', '...', '...', '...', 'Coady', 'Coady', 'J$2b.$10$cLasaNk1asdGfasfc57sdaKar0.A6uvS/dqw5szxchy.as', '/profile/5125.jpg', '2021-09-02 07:32:10', 1, '2021-09-02 07:32:40', 1, 1, '0000-00-00 00:00:00'),
(5, 'Matty', 'Gakpo', 'Mr.', '...', '...', '...', '...', 'Matt', 'Matt888', 'Zx4.ask/$a0wksd/asd$2a$.sd/kaspd[kasda$dzxcasfk$2asd', '/profile/1.jpg', '2021-09-02 07:32:12', 1, '2021-09-02 07:33:40', 1, 1, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk users_id` (`users_id`),
  ADD KEY `fk rooms_id` (`rooms_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `fk rooms_id` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `fk users_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
