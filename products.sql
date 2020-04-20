-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 12:09 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketing_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float DEFAULT 0,
  `discount` float DEFAULT 0,
  `kind` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `visits` int(11) DEFAULT 0,
  `downloads` int(11) DEFAULT 0,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outlink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short`, `description`, `thumb`, `image`, `price`, `discount`, `kind`, `locale`, `country`, `sku`, `rank`, `status`, `visits`, `downloads`, `attachment`, `outlink`, `video`, `created_at`, `updated_at`, `tags`) VALUES
(1, 'ETSY Buyers Email List', 'Email list of individuals with one or more purchase histories at \"ETSY\" online store.', '<p style=\"text-align: left;\">- Removed duplicates</p>\r\n<p style=\"text-align: left;\">- Verified</p>\r\n<p style=\"text-align: left;\">- Most of them based in United State</p>\r\n<p style=\"text-align: left;\">- 2000 contacts</p>\r\n<p style=\"text-align: left;\">- Niche: Jewelry,&nbsp; Clothes, Accessories, Handmade, Ring</p>\r\n<p style=\"text-align: left;\">- Last updated: 2020</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: left;\">This email list is very hot to not only Etsy shop owners but also any shopping mall owners. You can boost your products through email campaign and increase your capital. Try to grab this valuable list.</p>\r\n<p style=\"text-align: left;\">Please visit <a href=\"https://www.fiverr.com/share/0DbVjy\" target=\"_blank\" rel=\"noopener\">https://www.fiverr.com/share/0DbVjy</a> to get full list.</p>', 'products\\April2020\\7JQ1AULe7VVhe81j3iUw.png', 'products\\April2020\\Y6jNo4S5Fd3v8DBedBmF.png', 0, 0, 'personal', 'en', 'United State', 'etsy-buyers-email-list', 0, 'PUBLISHED', 0, 0, NULL, 'https://drive.google.com/file/d/1IfWlsptJjNjzg8TTi8zekyEqHSl6dbmn/view?usp=sharing', NULL, '2020-03-09 07:53:00', '2020-04-19 11:34:35', NULL),
(2, 'USA Real Estate Agents', 'Real Estate Agents contacts list based on United State', '<p style=\"text-align: left;\">- Removed duplicates</p>\r\n<p style=\"text-align: left;\">- Verified</p>\r\n<p style=\"text-align: left;\">- All agents based in United State</p>\r\n<p style=\"text-align: left;\">- 20,000 contacts for demo</p>\r\n<p style=\"text-align: left;\">- Social media links included</p>\r\n<p style=\"text-align: left;\">- Last updated: 2019</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\">Use this email list when you want to sell or buy your house.&nbsp;</p>\r\n<p style=\"text-align: left;\">Please visit <a href=\"https://www.fiverr.com/share/0DbVjy\" target=\"_blank\" rel=\"noopener\">https://www.fiverr.com/share/0DbVjy</a> to get full list.</p>', 'products\\April2020\\iGvAFcJ7Xw3AbVTgdr7D.png', 'products\\April2020\\fA7NgSQr3gajqXf1JxEX.png', NULL, NULL, 'personal', 'en', 'United State', NULL, NULL, 'PUBLISHED', NULL, NULL, NULL, 'https://drive.google.com/file/d/1GM3i6jSLbVXiRyP5SZV5xVv13NaWO6pB/view?usp=sharing', NULL, '2020-04-19 09:58:00', '2020-04-19 11:35:01', NULL),
(3, 'Australia Hotel Database', 'Australia hotel contacts list including latitude and longitude data.', NULL, 'products\\April2020\\91XY3unBL0niCcpXHXp1.png', 'products\\April2020\\lpdYzVjrTGFefKuEM7Aj.png', NULL, NULL, 'business', 'en', 'Australia', NULL, NULL, 'PUBLISHED', NULL, NULL, NULL, 'https://drive.google.com/file/d/1JQi_T73LIdHFu_AEYCLLHu-wD6U_z2Vz/view?usp=sharing', NULL, '2020-04-19 18:20:00', '2020-04-19 18:23:18', NULL),
(4, 'ustralia Insurances Database', 'Australia insurance contacts list including latitude and longitude data.', '<p style=\"text-align: left;\">health, car, home, travel, boad etc</p>', 'products\\April2020\\RdQTuBvLuiZ5B7rwkl0P.png', 'products\\April2020\\shncEavpSieEVmYIImwt.png', NULL, NULL, 'business', 'en', NULL, NULL, NULL, 'PUBLISHED', NULL, NULL, NULL, 'https://drive.google.com/file/d/1FjPVSnjJ_AcCfxSGpPQNy94iU68nsrUd/view?usp=sharing', NULL, '2020-04-19 18:40:24', '2020-04-19 18:40:24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
