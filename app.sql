-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 29, 2017 at 04:47 AM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `cleanitems`
--

DROP TABLE IF EXISTS `cleanitems`;
CREATE TABLE IF NOT EXISTS `cleanitems` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `imgUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tags` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cleanitems`
--

INSERT INTO `cleanitems` (`id`, `created_at`, `updated_at`, `slug`, `title`, `description`, `imgUrl`, `color`, `type`, `tags`) VALUES
(7, '2017-04-29 03:53:17', '2017-04-29 03:53:17', '', 'White oxfords', 'white wingtip oxford shoes', '4e72c2e72c015cfcdad0f8051f4f3951.jpg', '', 'Footwear', 'formal'),
(8, '2017-04-29 03:55:06', '2017-04-29 03:55:06', '', 'khakis', 'my khakis', 'mens-sand-slim-chinos-with-cargo-pockets-p20103-21133_zoom.jpg', '', 'Bottom', 'casual, formal'),
(9, '2017-04-29 03:56:37', '2017-04-29 03:56:37', '', 'Space jams', 'Nike sneakers', '2016-air-jordan-11-space-jam-0.jpg', '', 'Footwear', 'athletic, casual'),
(10, '2017-04-29 03:58:36', '2017-04-29 03:58:36', '', 'Joggers', 'Red adidas joggers', 'c5694e7165092c61dd7928b651f98164.jpg', '', 'Bottom', 'casual, athletic'),
(11, '2017-04-29 04:01:47', '2017-04-29 04:01:47', '', 'white tee', NULL, 'white-tees-reigning-kotn.jpg', '', 'Top', NULL),
(14, '2017-04-29 04:19:18', '2017-04-29 04:19:18', '', 'black tee', 'black t shirt', 'V5-1283380-001_HTF.jpg', '', 'Top', 'chill'),
(15, '2017-04-29 04:35:24', '2017-04-29 04:35:24', '', 'Gray t shirt', 'it''s gray and not that warm', 'MW40_676M_04_JOSEPH_ABBOUD_GRAY_SET.jpg', '', 'Top', 'casual'),
(16, '2017-04-29 08:16:47', '2017-04-29 08:16:47', '', 'Spongebob Socks', 'beautiful socks', 'm_5513a017b5643e0ac200242a.jpg', '', 'Footwear', 'wedding attire');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cleanitems`
--
ALTER TABLE `cleanitems`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cleanitems`
--
ALTER TABLE `cleanitems`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
