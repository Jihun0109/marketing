-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 06:06 PM
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-02-25 06:17:05', '2020-02-25 06:17:05'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-02-25 06:17:05', '2020-02-25 06:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'short', 'text_area', 'Short', 0, 0, 1, 1, 1, 1, '{}', 3),
(59, 7, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 4),
(60, 7, 'thumb', 'image', 'Thumb', 0, 1, 1, 1, 1, 1, '{\"quality\":\"70%\",\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 5),
(61, 7, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"quality\":\"70%\"}', 6),
(62, 7, 'price', 'text', 'Price', 0, 0, 1, 1, 1, 1, '{}', 7),
(63, 7, 'discount', 'text', 'Discount', 0, 0, 1, 1, 1, 1, '{}', 8),
(64, 7, 'kind', 'select_dropdown', 'Kind', 0, 1, 1, 1, 1, 1, '{\"default\":\"BUSINESS\",\"options\":{\"business\":\"BUSINESS\",\"personal\":\"PERSONAL\"}}', 9),
(65, 7, 'locale', 'select_dropdown', 'Locale', 0, 1, 1, 1, 1, 1, '{\"default\":\"EN\",\"options\":{\"en\":\"EN\",\"ko\":\"KO\"}}', 10),
(66, 7, 'country', 'text', 'Country', 0, 1, 1, 1, 1, 1, '{}', 11),
(67, 7, 'sku', 'text', 'Sku', 0, 1, 1, 1, 1, 1, '{}', 12),
(68, 7, 'rank', 'text', 'Rank', 0, 1, 1, 1, 1, 1, '{}', 13),
(69, 7, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"PUBLISHED\",\"options\":{\"published\":\"PUBLISHED\",\"draft\":\"DRAFT\",\"pending\":\"PENDING\"}}', 14),
(70, 7, 'visits', 'text', 'Visits', 0, 1, 1, 1, 1, 1, '{}', 15),
(71, 7, 'downloads', 'text', 'Downloads', 0, 0, 1, 1, 1, 1, '{}', 16),
(72, 7, 'attachment', 'text', 'Attachment', 0, 0, 1, 1, 1, 1, '{}', 17),
(73, 7, 'outlink', 'text', 'Outlink', 0, 0, 1, 1, 1, 1, '{}', 18),
(74, 7, 'video', 'text', 'Video', 0, 0, 1, 1, 1, 1, '{}', 19),
(75, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 20),
(76, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 21);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-02-25 06:16:56', '2020-02-25 06:16:56'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-02-25 06:16:56', '2020-02-25 06:16:56'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-02-25 06:16:57', '2020-02-25 06:16:57'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-02-25 06:17:04', '2020-02-25 06:17:04'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-02-25 06:17:06', '2020-02-25 06:17:06'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-02-25 06:17:06', '2020-02-25 06:17:06'),
(7, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-03-09 07:43:23', '2020-03-09 07:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `key` text COLLATE utf8mb4_bin NOT NULL,
  `value` text COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', '_json', 'pt', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(2, 0, 'en', '_json', 'es', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(3, 0, 'en', '_json', 'de', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(4, 0, 'en', '_json', 'Login', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(5, 0, 'en', '_json', 'E-Mail Address', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(6, 0, 'en', '_json', 'Password', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(7, 0, 'en', '_json', 'Remember Me', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(8, 0, 'en', '_json', 'Forgot Your Password?', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(9, 0, 'en', '_json', 'Confirm Password', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(10, 0, 'en', '_json', 'Please confirm your password before continuing.', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(11, 0, 'en', '_json', 'Reset Password', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(12, 0, 'en', '_json', 'Send Password Reset Link', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(13, 0, 'en', '_json', 'Register', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(14, 0, 'en', '_json', 'Name', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(15, 0, 'en', '_json', 'Verify Your Email Address', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(16, 0, 'en', '_json', 'A fresh verification link has been sent to your email address.', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(17, 0, 'en', '_json', 'Before proceeding, please check your email for a verification link.', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(18, 0, 'en', '_json', 'If you did not receive the email', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(19, 0, 'en', '_json', 'click here to request another', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(20, 0, 'en', '_json', 'Toggle navigation', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(21, 0, 'en', '_json', 'Logout', NULL, '2020-03-06 07:16:21', '2020-03-06 07:16:21'),
(22, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2020-03-06 07:33:46', '2020-03-06 07:46:18'),
(23, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2020-03-06 07:33:46', '2020-03-06 07:46:18'),
(24, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(25, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(26, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(27, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(28, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(29, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(30, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(31, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(32, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(33, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(34, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(35, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(36, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(37, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(38, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(39, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(40, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(41, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(42, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(43, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(44, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(45, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(46, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(47, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(48, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(49, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(50, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(51, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(52, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(53, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(54, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(55, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(56, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2020-03-06 07:33:46', '2020-03-06 07:33:46'),
(57, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(58, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(59, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(60, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(61, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(62, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(63, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(64, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(65, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(66, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(67, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(68, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(69, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(70, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(71, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(72, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(73, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(74, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(75, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(76, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(77, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(78, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(79, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(80, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(81, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(82, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(83, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(84, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(85, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(86, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(87, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(88, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(89, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(90, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(91, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(92, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(93, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(94, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(95, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(96, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2020-03-06 07:33:47', '2020-03-06 07:33:47'),
(97, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(98, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(99, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(100, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(101, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(102, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(103, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(104, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(105, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(106, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(107, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(108, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(109, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(110, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(111, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(112, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(113, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(114, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(115, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(116, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(117, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(118, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(119, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(120, 0, 'ko', 'auth', 'failed', '제출된 인증 정보가 레코드와 일치하지 않습니다.', '2020-03-06 07:33:48', '2020-03-06 07:46:18'),
(121, 0, 'ko', 'auth', 'throttle', '너무 많은 로그인을 시도하였습니다. :seconds 초 후에 다시 시도하십시요.', '2020-03-06 07:33:48', '2020-03-06 07:46:18'),
(122, 1, 'ko', 'pagination', 'previous', '&laquo; 이전', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(123, 1, 'ko', 'pagination', 'next', '다음 &raquo;', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(124, 1, 'ko', 'passwords', 'password', '비밀번호는 최소한 6자 이상이어야 하며 확인 항목과 일치해야 합니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(125, 1, 'ko', 'passwords', 'reset', '비밀번호가 변경되었습니다!', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(126, 1, 'ko', 'passwords', 'sent', '비밀번호 재설정 링크를 이메일로 전송했습니다!', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(127, 1, 'ko', 'passwords', 'throttled', 'Please wait before retrying.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(128, 1, 'ko', 'passwords', 'token', '해당 비밀번호 재설정 토큰이 유효하지 않습니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(129, 1, 'ko', 'passwords', 'user', '해당 이메일을 사용하는 사용자를 찾을 수 없습니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(130, 1, 'ko', 'validation', 'accepted', ':attribute을(를) 동의해야 합니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(131, 1, 'ko', 'validation', 'active_url', ':attribute은(는) 유효한 URL이 아닙니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(132, 1, 'ko', 'validation', 'after', ':attribute은(는) :date 이후 날짜여야 합니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(133, 1, 'ko', 'validation', 'after_or_equal', ':attribute은(는) :date 이후 날짜이거나 같은 날짜여야 합니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(134, 1, 'ko', 'validation', 'alpha', ':attribute은(는) 문자만 포함할 수 있습니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(135, 1, 'ko', 'validation', 'alpha_dash', ':attribute은(는) 문자, 숫자, 대쉬(-)만 포함할 수 있습니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(136, 1, 'ko', 'validation', 'alpha_num', ':attribute은(는) 문자와 숫자만 포함할 수 있습니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(137, 1, 'ko', 'validation', 'array', ':attribute은(는) 배열이어야 합니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(138, 1, 'ko', 'validation', 'before', ':attribute은(는) :date 이전 날짜여야 합니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(139, 1, 'ko', 'validation', 'before_or_equal', ':attribute은(는) :date 이전 날짜이거나 같은 날짜여야 합니다.', '2020-03-06 07:33:48', '2020-03-06 07:33:48'),
(140, 1, 'ko', 'validation', 'between.numeric', ':attribute은(는) :min에서 :max 사이여야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(141, 1, 'ko', 'validation', 'between.file', ':attribute은(는) :min에서 :max 킬로바이트 사이여야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(142, 1, 'ko', 'validation', 'between.string', ':attribute은(는) :min에서 :max 문자 사이여야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(143, 1, 'ko', 'validation', 'between.array', ':attribute은(는) :min에서 :max 개의 항목이 있어야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(144, 1, 'ko', 'validation', 'boolean', ':attribute은(는) true 또는 false 이어야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(145, 1, 'ko', 'validation', 'confirmed', ':attribute 확인 항목이 일치하지 않습니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(146, 1, 'ko', 'validation', 'date', ':attribute은(는) 유효한 날짜가 아닙니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(147, 1, 'ko', 'validation', 'date_equals', ':attribute은(는) :date과(와) 같은날짜여야합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(148, 1, 'ko', 'validation', 'date_format', ':attribute이(가) :format 형식과 일치하지 않습니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(149, 1, 'ko', 'validation', 'different', ':attribute와(과) :other은(는) 서로 달라야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(150, 1, 'ko', 'validation', 'digits', ':attribute은(는) :digits 자리 숫자여야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(151, 1, 'ko', 'validation', 'digits_between', ':attribute)은(는) :min에서 :max 자리 사이여야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(152, 1, 'ko', 'validation', 'dimensions', ':attribute은(는) 유효하지 않는 이미지 크기입니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(153, 1, 'ko', 'validation', 'distinct', ':attribute 필드에 중복된 값이 있습니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(154, 1, 'ko', 'validation', 'email', ':attribute은(는) 유효한 이메일 주소여야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(155, 1, 'ko', 'validation', 'ends_with', ':attribute은(는) 다음 중 하나로 끝나야 합니다: :values.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(156, 1, 'ko', 'validation', 'exists', '선택된 :attribute은(는) 유효하지 않습니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(157, 1, 'ko', 'validation', 'file', ':attribute은(는) 파일이어야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(158, 1, 'ko', 'validation', 'filled', ':attribute 필드는 값이 있어야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(159, 1, 'ko', 'validation', 'gt.numeric', ':attribute의 값은 :value보다 커야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(160, 1, 'ko', 'validation', 'gt.file', ':attribute의 용량은 :value킬로바이트보다 커야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(161, 1, 'ko', 'validation', 'gt.string', ':attribute의 길이는 :value보다 길어야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(162, 1, 'ko', 'validation', 'gt.array', ':attribute의 항목수는 :value개 보다 많아야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(163, 1, 'ko', 'validation', 'gte.numeric', ':attribute의 값은 :value보다 같거나 커야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(164, 1, 'ko', 'validation', 'gte.file', ':attribute의 용량은 :value킬로바이트보다 같거나 커야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(165, 1, 'ko', 'validation', 'gte.string', ':attribute의 길이는 :value보다 같거나 길어야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(166, 1, 'ko', 'validation', 'gte.array', ':attribute의 항목수는 :value개 보다 같거나 많아야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(167, 1, 'ko', 'validation', 'image', ':attribute은(는) 이미지여야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(168, 1, 'ko', 'validation', 'in', '선택된 :attribute은(는) 유효하지 않습니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(169, 1, 'ko', 'validation', 'in_array', ':attribute 필드는 :other에 존재하지 않습니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(170, 1, 'ko', 'validation', 'integer', ':attribute은(는) 정수여야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(171, 1, 'ko', 'validation', 'ip', ':attribute은(는) 유효한 IP 주소여야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(172, 1, 'ko', 'validation', 'ipv4', ':attribute은(는) 유효한 IPv4 주소여야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(173, 1, 'ko', 'validation', 'ipv6', ':attribute은(는) 유효한 IPv6 주소여야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(174, 1, 'ko', 'validation', 'json', ':attribute은(는) JSON 문자열이어야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(175, 1, 'ko', 'validation', 'lt.numeric', ':attribute의 값은 :value보다 작아야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(176, 1, 'ko', 'validation', 'lt.file', ':attribute의 용량은 :value킬로바이트보다 작아야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(177, 1, 'ko', 'validation', 'lt.string', ':attribute의 길이는 :value보다 짧아야 합니다.', '2020-03-06 07:33:49', '2020-03-06 07:33:49'),
(178, 1, 'ko', 'validation', 'lt.array', ':attribute의 항목수는 :value개 보다 작아야 합니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(179, 1, 'ko', 'validation', 'lte.numeric', ':attribute의 값은 :value보다 같거나 작아야 합니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(180, 1, 'ko', 'validation', 'lte.file', ':attribute의 용량은 :value킬로바이트보다 같거나 작아야 합니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(181, 1, 'ko', 'validation', 'lte.string', ':attribute의 길이는 :value보다 같거나 짧아야 합니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(182, 1, 'ko', 'validation', 'lte.array', ':attribute의 항목수는 :value개 보다 같거나 작아야 합니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(183, 1, 'ko', 'validation', 'max.numeric', ':attribute은(는) :max보다 클 수 없습니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(184, 1, 'ko', 'validation', 'max.file', ':attribute은(는) :max킬로바이트보다 클 수 없습니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(185, 1, 'ko', 'validation', 'max.string', ':attribute은(는) :max자보다 클 수 없습니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(186, 1, 'ko', 'validation', 'max.array', ':attribute은(는) :max개보다 많을 수 없습니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(187, 1, 'ko', 'validation', 'mimes', ':attribute은(는) 다음의 파일 형식이어야 합니다: :values.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(188, 1, 'ko', 'validation', 'mimetypes', ':attribute은(는) 다음의 파일 형식이어야 합니다: :values.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(189, 1, 'ko', 'validation', 'min.numeric', ':attribute은(는) 최소한 :min이어야 합니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(190, 1, 'ko', 'validation', 'min.file', ':attribute은(는) 최소한 :min킬로바이트이어야 합니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(191, 1, 'ko', 'validation', 'min.string', ':attribute은(는) 최소한 :min자이어야 합니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(192, 1, 'ko', 'validation', 'min.array', ':attribute은(는) 최소한 :min개의 항목이 있어야 합니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(193, 1, 'ko', 'validation', 'not_in', '선택된 :attribute이(가) 유효하지 않습니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(194, 1, 'ko', 'validation', 'not_regex', ':attribute의 형식이 올바르지 않습니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(195, 1, 'ko', 'validation', 'numeric', ':attribute은(는) 숫자여야 합니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(196, 1, 'ko', 'validation', 'password', ':비밀번호가 잘못되었습니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(197, 1, 'ko', 'validation', 'present', ':attribute 필드가 있어야 합니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(198, 1, 'ko', 'validation', 'regex', ':attribute 형식이 유효하지 않습니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(199, 1, 'ko', 'validation', 'required', ':attribute 필드는 필수입니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(200, 1, 'ko', 'validation', 'required_if', ':other이(가) :value 일 때 :attribute 필드는 필수입니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(201, 1, 'ko', 'validation', 'required_unless', ':other이(가) :values에 없다면 :attribute 필드는 필수입니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(202, 1, 'ko', 'validation', 'required_with', ':values이(가) 있는 경우 :attribute 필드는 필수입니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(203, 1, 'ko', 'validation', 'required_with_all', ':values이(가) 모두 있는 경우 :attribute 필드는 필수입니다.', '2020-03-06 07:33:50', '2020-03-06 07:33:50'),
(204, 1, 'ko', 'validation', 'required_without', ':values이(가) 없는 경우 :attribute 필드는 필수입니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(205, 1, 'ko', 'validation', 'required_without_all', ':values이(가) 모두 없는 경우 :attribute 필드는 필수입니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(206, 1, 'ko', 'validation', 'same', ':attribute와(과) :other은(는) 일치해야 합니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(207, 1, 'ko', 'validation', 'size.numeric', ':attribute은(는) :size (이)여야 합니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(208, 1, 'ko', 'validation', 'size.file', ':attribute은(는) :size킬로바이트여야 합니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(209, 1, 'ko', 'validation', 'size.string', ':attribute은(는) :size자여야 합니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(210, 1, 'ko', 'validation', 'size.array', ':attribute은(는) :size개의 항목을 포함해야 합니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(211, 1, 'ko', 'validation', 'starts_with', ':attribute은(는) :values 중하나로시작해야합니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(212, 1, 'ko', 'validation', 'string', ':attribute은(는) 문자열이어야 합니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(213, 1, 'ko', 'validation', 'timezone', ':attribute은(는) 올바른 시간대 이어야 합니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(214, 1, 'ko', 'validation', 'unique', ':attribute은(는) 이미 사용 중입니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(215, 1, 'ko', 'validation', 'uploaded', ':attribute을(를) 업로드하지 못했습니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(216, 1, 'ko', 'validation', 'url', ':attribute 형식은 유효하지 않습니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(217, 1, 'ko', 'validation', 'uuid', ':attribute은(는) 유효한UUID여야합니다.', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(218, 1, 'ko', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2020-03-06 07:33:51', '2020-03-06 07:33:51'),
(219, 0, 'en', 'auth', 'Login', 'Login', '2020-03-06 07:37:29', '2020-03-06 07:46:18'),
(220, 0, 'ko', 'auth', 'Login', '로그인', '2020-03-06 07:37:39', '2020-03-06 07:46:18'),
(221, 0, 'en', 'auth', 'E-Mail Address', 'E-Mail Address', '2020-03-06 07:38:19', '2020-03-06 07:46:18'),
(222, 0, 'en', 'auth', 'Password', 'Password', '2020-03-06 07:38:23', '2020-03-06 07:46:18'),
(223, 0, 'en', 'auth', 'Remember Me', 'Remember Me', '2020-03-06 07:38:28', '2020-03-06 07:46:18'),
(224, 0, 'ko', 'auth', 'E-Mail Address', '이메일', '2020-03-06 07:39:30', '2020-03-06 07:46:18'),
(225, 0, 'ko', 'auth', 'Password', '비밀번호', '2020-03-06 07:40:11', '2020-03-06 07:46:18'),
(226, 0, 'ko', 'auth', 'Remember Me', '로그인 저장', '2020-03-06 07:40:19', '2020-03-06 07:46:18'),
(227, 0, 'en', 'auth', 'Forgot Your Password', 'Forgot Your Password?', '2020-03-06 07:41:41', '2020-03-06 07:46:18'),
(228, 0, 'ko', 'auth', 'Forgot Your Password', '비밀번호를 잊으셨나요?', '2020-03-06 07:42:00', '2020-03-06 07:46:18'),
(229, 0, 'en', 'auth', 'Register', 'Register', '2020-03-06 07:43:11', '2020-03-06 07:46:18'),
(230, 0, 'ko', 'auth', 'Register', '등록', '2020-03-06 07:43:28', '2020-03-06 07:46:18'),
(231, 0, 'en', 'auth', 'Name', 'Name', '2020-03-06 07:45:39', '2020-03-06 07:46:18'),
(232, 0, 'ko', 'auth', 'Name', '이름', '2020-03-06 07:45:48', '2020-03-06 07:46:18'),
(233, 0, 'en', 'auth', 'Confirm Password', 'Confirm Password', '2020-03-06 07:45:59', '2020-03-06 07:46:18'),
(234, 0, 'ko', 'auth', 'Confirm Password', '비밀번호 확인', '2020-03-06 07:46:12', '2020-03-06 07:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-02-25 06:16:58', '2020-02-25 06:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-02-25 06:16:58', '2020-02-25 06:16:58', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-02-25 06:16:58', '2020-02-25 06:16:58', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-02-25 06:16:58', '2020-02-25 06:16:58', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-02-25 06:16:58', '2020-02-25 06:16:58', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-02-25 06:16:58', '2020-02-25 06:16:58', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-02-25 06:16:58', '2020-02-25 06:16:58', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-02-25 06:16:58', '2020-02-25 06:16:58', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-02-25 06:16:58', '2020-02-25 06:16:58', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-02-25 06:16:58', '2020-02-25 06:16:58', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-02-25 06:16:58', '2020-02-25 06:16:58', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2020-02-25 06:17:05', '2020-02-25 06:17:05', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2020-02-25 06:17:06', '2020-02-25 06:17:06', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2020-02-25 06:17:07', '2020-02-25 06:17:07', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-02-25 06:17:09', '2020-02-25 06:17:09', 'voyager.hooks', NULL),
(15, 1, 'Products', '', '_self', NULL, NULL, NULL, 15, '2020-03-09 07:43:24', '2020-03-09 07:43:24', 'voyager.products.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(28, '2014_04_02_193005_create_translations_table', 3),
(29, '2015_03_07_311070_create_tracker_paths_table', 4),
(30, '2015_03_07_311071_create_tracker_queries_table', 4),
(31, '2015_03_07_311072_create_tracker_queries_arguments_table', 4),
(32, '2015_03_07_311073_create_tracker_routes_table', 4),
(33, '2015_03_07_311074_create_tracker_routes_paths_table', 4),
(34, '2015_03_07_311075_create_tracker_route_path_parameters_table', 4),
(35, '2015_03_07_311076_create_tracker_agents_table', 4),
(36, '2015_03_07_311077_create_tracker_cookies_table', 4),
(37, '2015_03_07_311078_create_tracker_devices_table', 4),
(38, '2015_03_07_311079_create_tracker_domains_table', 4),
(39, '2015_03_07_311080_create_tracker_referers_table', 4),
(40, '2015_03_07_311081_create_tracker_geoip_table', 4),
(41, '2015_03_07_311082_create_tracker_sessions_table', 4),
(42, '2015_03_07_311083_create_tracker_errors_table', 4),
(43, '2015_03_07_311084_create_tracker_system_classes_table', 4),
(44, '2015_03_07_311085_create_tracker_log_table', 4),
(45, '2015_03_07_311086_create_tracker_events_table', 4),
(46, '2015_03_07_311087_create_tracker_events_log_table', 4),
(47, '2015_03_07_311088_create_tracker_sql_queries_table', 4),
(48, '2015_03_07_311089_create_tracker_sql_query_bindings_table', 4),
(49, '2015_03_07_311090_create_tracker_sql_query_bindings_parameters_table', 4),
(50, '2015_03_07_311091_create_tracker_sql_queries_log_table', 4),
(51, '2015_03_07_311092_create_tracker_connections_table', 4),
(52, '2015_03_07_311093_create_tracker_tables_relations', 4),
(53, '2015_03_13_311094_create_tracker_referer_search_term_table', 4),
(54, '2015_03_13_311095_add_tracker_referer_columns', 4),
(55, '2015_11_23_311096_add_tracker_referer_column_to_log', 4),
(56, '2015_11_23_311097_create_tracker_languages_table', 4),
(57, '2015_11_23_311098_add_language_id_column_to_sessions', 4),
(58, '2015_11_23_311099_add_tracker_language_foreign_key_to_sessions', 4),
(59, '2015_11_23_311100_add_nullable_to_tracker_error', 4),
(60, '2017_01_31_311101_fix_agent_name', 4),
(61, '2017_06_20_311102_add_agent_name_hash', 4),
(62, '2017_12_13_150000_fix_query_arguments', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-02-25 06:17:07', '2020-02-25 06:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(2, 'browse_bread', NULL, '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(3, 'browse_database', NULL, '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(4, 'browse_media', NULL, '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(5, 'browse_compass', NULL, '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(6, 'browse_menus', 'menus', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(7, 'read_menus', 'menus', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(8, 'edit_menus', 'menus', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(9, 'add_menus', 'menus', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(10, 'delete_menus', 'menus', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(11, 'browse_roles', 'roles', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(12, 'read_roles', 'roles', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(13, 'edit_roles', 'roles', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(14, 'add_roles', 'roles', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(15, 'delete_roles', 'roles', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(16, 'browse_users', 'users', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(17, 'read_users', 'users', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(18, 'edit_users', 'users', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(19, 'add_users', 'users', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(20, 'delete_users', 'users', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(21, 'browse_settings', 'settings', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(22, 'read_settings', 'settings', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(23, 'edit_settings', 'settings', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(24, 'add_settings', 'settings', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(25, 'delete_settings', 'settings', '2020-02-25 06:16:59', '2020-02-25 06:16:59'),
(26, 'browse_categories', 'categories', '2020-02-25 06:17:05', '2020-02-25 06:17:05'),
(27, 'read_categories', 'categories', '2020-02-25 06:17:05', '2020-02-25 06:17:05'),
(28, 'edit_categories', 'categories', '2020-02-25 06:17:05', '2020-02-25 06:17:05'),
(29, 'add_categories', 'categories', '2020-02-25 06:17:05', '2020-02-25 06:17:05'),
(30, 'delete_categories', 'categories', '2020-02-25 06:17:05', '2020-02-25 06:17:05'),
(31, 'browse_posts', 'posts', '2020-02-25 06:17:06', '2020-02-25 06:17:06'),
(32, 'read_posts', 'posts', '2020-02-25 06:17:06', '2020-02-25 06:17:06'),
(33, 'edit_posts', 'posts', '2020-02-25 06:17:06', '2020-02-25 06:17:06'),
(34, 'add_posts', 'posts', '2020-02-25 06:17:06', '2020-02-25 06:17:06'),
(35, 'delete_posts', 'posts', '2020-02-25 06:17:06', '2020-02-25 06:17:06'),
(36, 'browse_pages', 'pages', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(37, 'read_pages', 'pages', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(38, 'edit_pages', 'pages', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(39, 'add_pages', 'pages', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(40, 'delete_pages', 'pages', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(41, 'browse_hooks', NULL, '2020-02-25 06:17:09', '2020-02-25 06:17:09'),
(42, 'browse_products', 'products', '2020-03-09 07:43:23', '2020-03-09 07:43:23'),
(43, 'read_products', 'products', '2020-03-09 07:43:23', '2020-03-09 07:43:23'),
(44, 'edit_products', 'products', '2020-03-09 07:43:23', '2020-03-09 07:43:23'),
(45, 'add_products', 'products', '2020-03-09 07:43:23', '2020-03-09 07:43:23'),
(46, 'delete_products', 'products', '2020-03-09 07:43:23', '2020-03-09 07:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-25 06:17:06', '2020-02-25 06:17:06'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-25 06:17:06', '2020-02-25 06:17:06'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-25 06:17:06', '2020-02-25 06:17:06'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-02-25 06:17:06', '2020-02-25 06:17:06');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short`, `description`, `thumb`, `image`, `price`, `discount`, `kind`, `locale`, `country`, `sku`, `rank`, `status`, `visits`, `downloads`, `attachment`, `outlink`, `video`, `created_at`, `updated_at`) VALUES
(1, 'ETSY Buyers Email List', 'Email list of individuals with one or more purchase histories at \"ETSY\" online store.', '<p>Data format</p>\r\n<ul>\r\n<li>Etsy account name</li>\r\n<li>Email address</li>\r\n<li>purchase date</li>\r\n</ul>\r\n<p>Extra</p>\r\n<ul>\r\n<li>Name</li>\r\n<li>State, Location</li>\r\n</ul>', 'products\\March2020\\ZiP6jJdMa2jdM19fRKF9.jpg', NULL, 0, 0, 'personal', 'en', 'US', 'etsy-buyers-email-list', 0, 'PUBLISHED', 0, 0, NULL, NULL, NULL, '2020-03-09 07:53:00', '2020-03-09 11:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-02-25 06:16:58', '2020-02-25 06:16:58'),
(2, 'user', 'Normal User', '2020-02-25 06:16:58', '2020-02-25 06:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_agents`
--

CREATE TABLE `tracker_agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_hash` varchar(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_agents`
--

INSERT INTO `tracker_agents` (`id`, `name`, `browser`, `browser_version`, `created_at`, `updated_at`, `name_hash`) VALUES
(1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'Chrome', '80.0.3987', '2020-03-25 23:52:06', '2020-03-25 23:52:06', '53568f82ee113481d6f267395642ecd87514dc8b3d4f9009e3e5bc84d4f14637'),
(2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0', 'Firefox', '74.0', '2020-04-05 03:54:21', '2020-04-05 03:54:21', '98587efb3d4368fb73fac31b042d867011c85a1b367678cb2a0c519930ffd615');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_connections`
--

CREATE TABLE `tracker_connections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_cookies`
--

CREATE TABLE `tracker_cookies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_cookies`
--

INSERT INTO `tracker_cookies` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(1, '650cc755-3290-4ecf-8c4e-6045a99020f9', '2020-03-26 00:52:09', '2020-03-26 00:52:09'),
(2, 'eyJpdiI6IkZ2dndhYnAxMzI3QUZyZzJYakNWVGc9PSIsInZhbHVlIjoiSWdxZnE0RStWNUl5WXRVUThKVTdVWENcL2l4ckZIeEF6Q1B3WDkrK0xad2dMQzZKMWdaejdid2RPZG5vcGYrOU8iLCJtYWMiOiIxZWM4YzQ0N2JlMzNkMmQzYjJkZTkxNmFjZTQyYWJmZTM2NTllYTUxYmJiYjE1OWE0MzI4OWEwYjY0Y2NkOTUxIn0=', '2020-03-26 01:58:53', '2020-03-26 01:58:53'),
(3, '111dead9-4a0a-4cb9-b206-5e2c1f73ea2b', '2020-03-30 22:32:55', '2020-03-30 22:32:55'),
(4, 'c0a54d24-260b-4ff2-b1ad-7ea4335b1d7a', '2020-03-30 22:32:57', '2020-03-30 22:32:57'),
(5, 'eyJpdiI6IkI3bVdtc2M4R2lIQmt6OEFrNlR0UGc9PSIsInZhbHVlIjoiYVEzTEFmVWcrMU9kR3hjMHNBZk54TjMrc1hEaDBaMlNMKzd4Q3ViNERaXC90b25OaUNobnJGVGlWemtlNU4yOHYiLCJtYWMiOiJiYThmYjUzNzgzMzM1ZGE5Y2I2OWI0M2UyODY3YjViMWUxN2Q0Yzc1MWFkZjczNDA2MDQ4MzMwNDliZDY0YjE5In0=', '2020-03-30 22:33:02', '2020-03-30 22:33:02'),
(6, 'ffc767ff-3c9e-4f8e-9907-1673ba828e1e', '2020-03-30 22:40:08', '2020-03-30 22:40:08'),
(7, 'eyJpdiI6ImFNNDJBckpJSjBKeVBtNmR5UVEzSXc9PSIsInZhbHVlIjoiU2Ntek4wNXpnNmlqbE1EQVhhVFZsczBQaFBVRlNzY2s4N0lQY3EzZ3o4NFMrcFlwaHByVitvdWU1SCsyN1ZDKyIsIm1hYyI6ImNjYjAyZjk2MzY5YjBkNDNlNGMxMDhhY2Q1NjZjNjBlMTMwMzIyOWYxM2JjZTRlYWY5NWZkYWJmNWJkMWRlZjkifQ==', '2020-03-30 22:40:11', '2020-03-30 22:40:11'),
(8, '81777058-1a33-49e4-8d6b-561d708994a8', '2020-03-30 22:42:24', '2020-03-30 22:42:24'),
(9, 'eyJpdiI6ImFTbGphVloxSDhRK05ta2hzaHY5cHc9PSIsInZhbHVlIjoib2Fqd1wvOE05UTNaclM1amhOUkdlWE9qS29EalptWEw4S1wvSmhDRGNSakx2Vys0UmZpT3hiaEhhMWg3eE55Mjl3IiwibWFjIjoiNzVjNWVmYzVmMjU3YjJkM2ViMzFlZGZjMjMyY2I1OGZmMDc3ZTQzNWRjOTM5YjY3ZWI0NDNiZTMzNWNmY2E4ZSJ9', '2020-03-30 22:42:25', '2020-03-30 22:42:25'),
(10, '4ed3260f-f1dd-477a-ae40-2b4244c7f114', '2020-04-05 03:54:22', '2020-04-05 03:54:22'),
(11, 'eyJpdiI6IlJxYUZjeUR5NWJLbFl6dmM3d2hNNVE9PSIsInZhbHVlIjoiaEhlbnNSWUtOMFNZS09cL0M3XC9RdGRwYm9PVGxSRlNlZ01kK3o0YzdsYWhJWUtxXC9rMVFiNkljYzVqa3BENGY2SiIsIm1hYyI6ImIzMzQ3Y2JkN2U3OTA1ZTgyNjhmYmU1NzUxZjQzNTc1NTVjN2U2ZjEyZDcxZGQ3YzU1ZjU0NTM4MTBiZTJlODEifQ==', '2020-04-05 03:54:32', '2020-04-05 03:54:32'),
(12, '32517f16-608e-4c98-81d1-d64d89307068', '2020-04-05 03:54:59', '2020-04-05 03:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_devices`
--

CREATE TABLE `tracker_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kind` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform_version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_devices`
--

INSERT INTO `tracker_devices` (`id`, `kind`, `model`, `platform`, `platform_version`, `is_mobile`, `created_at`, `updated_at`) VALUES
(1, 'Computer', 'WebKit', 'Windows', '10', 0, '2020-03-25 23:52:05', '2020-03-25 23:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_domains`
--

CREATE TABLE `tracker_domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_domains`
--

INSERT INTO `tracker_domains` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'marketing.com', '2020-03-26 00:52:08', '2020-03-26 00:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_errors`
--

CREATE TABLE `tracker_errors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_events`
--

CREATE TABLE `tracker_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_events_log`
--

CREATE TABLE `tracker_events_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_geoip`
--

CREATE TABLE `tracker_geoip` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code3` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_code` bigint(20) DEFAULT NULL,
  `dma_code` double DEFAULT NULL,
  `metro_code` double DEFAULT NULL,
  `continent_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_languages`
--

CREATE TABLE `tracker_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language-range` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_log`
--

CREATE TABLE `tracker_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `path_id` bigint(20) UNSIGNED DEFAULT NULL,
  `query_id` bigint(20) UNSIGNED DEFAULT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_path_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_ajax` tinyint(1) NOT NULL,
  `is_secure` tinyint(1) NOT NULL,
  `is_json` tinyint(1) NOT NULL,
  `wants_json` tinyint(1) NOT NULL,
  `error_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_log`
--

INSERT INTO `tracker_log` (`id`, `session_id`, `path_id`, `query_id`, `method`, `route_path_id`, `is_ajax`, `is_secure`, `is_json`, `wants_json`, `error_id`, `created_at`, `updated_at`, `referer_id`) VALUES
(1, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-25 23:52:08', '2020-03-25 23:52:08', NULL),
(2, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-26 00:50:22', '2020-03-26 00:50:22', NULL),
(3, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-26 00:51:46', '2020-03-26 00:51:46', NULL),
(4, 1, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-03-26 00:52:09', '2020-03-26 00:52:10', 1),
(5, 1, 2, NULL, 'GET', 2, 0, 0, 0, 0, NULL, '2020-03-26 01:58:54', '2020-03-26 01:58:54', 2),
(6, 2, 3, NULL, 'GET', 3, 0, 0, 0, 0, NULL, '2020-03-30 22:32:55', '2020-03-30 22:33:00', NULL),
(7, 3, 3, NULL, 'GET', 4, 0, 0, 0, 0, NULL, '2020-03-30 22:32:57', '2020-03-30 22:33:00', NULL),
(8, 3, 4, NULL, 'GET', 5, 0, 0, 0, 0, NULL, '2020-03-30 22:33:02', '2020-03-30 22:33:03', NULL),
(9, 3, 3, NULL, 'GET', 3, 0, 0, 0, 0, NULL, '2020-03-30 22:33:04', '2020-03-30 22:33:04', NULL),
(10, 3, 4, NULL, 'GET', 5, 0, 0, 0, 0, NULL, '2020-03-30 22:33:05', '2020-03-30 22:33:05', NULL),
(11, 3, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-03-30 22:33:12', '2020-03-30 22:33:12', NULL),
(12, 3, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-03-30 22:34:23', '2020-03-30 22:34:23', NULL),
(13, 3, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-30 22:36:23', '2020-03-30 22:36:23', NULL),
(14, 3, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-03-30 22:39:44', '2020-03-30 22:39:44', NULL),
(15, 3, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-30 22:39:45', '2020-03-30 22:39:45', NULL),
(16, 3, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-03-30 22:39:48', '2020-03-30 22:39:48', NULL),
(17, 3, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-30 22:39:49', '2020-03-30 22:39:49', NULL),
(18, 4, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-03-30 22:40:09', '2020-03-30 22:40:10', NULL),
(19, 4, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-30 22:40:12', '2020-03-30 22:40:12', NULL),
(20, 4, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-03-30 22:41:56', '2020-03-30 22:41:56', NULL),
(21, 4, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-30 22:41:57', '2020-03-30 22:41:57', NULL),
(22, 4, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-03-30 22:42:06', '2020-03-30 22:42:07', NULL),
(23, 4, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-30 22:42:07', '2020-03-30 22:42:07', NULL),
(24, 5, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-03-30 22:42:24', '2020-03-30 22:42:24', NULL),
(25, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-30 22:42:26', '2020-03-30 22:42:26', NULL),
(26, 5, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-03-30 22:42:29', '2020-03-30 22:42:29', NULL),
(27, 5, 5, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-30 22:42:30', '2020-03-30 22:42:30', NULL),
(28, 5, 6, NULL, 'GET', 6, 0, 0, 0, 0, NULL, '2020-03-30 22:43:06', '2020-03-30 22:43:07', NULL),
(29, 5, 6, NULL, 'GET', 6, 0, 0, 0, 0, NULL, '2020-03-30 22:43:24', '2020-03-30 22:43:24', NULL),
(30, 5, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-03-30 22:43:25', '2020-03-30 22:43:25', NULL),
(31, 6, 1, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-02 10:09:32', '2020-04-02 10:09:32', NULL),
(32, 6, 1, NULL, 'GET', 1, 0, 0, 0, 0, NULL, '2020-04-02 11:57:02', '2020-04-02 11:57:03', NULL),
(33, 7, 3, NULL, 'GET', 4, 0, 0, 0, 0, NULL, '2020-04-05 03:54:22', '2020-04-05 03:54:25', NULL),
(34, 7, 4, NULL, 'GET', 5, 0, 0, 0, 0, NULL, '2020-04-05 03:54:33', '2020-04-05 03:54:33', NULL),
(35, 7, 7, NULL, 'GET', 7, 0, 0, 0, 0, NULL, '2020-04-05 03:54:54', '2020-04-05 03:54:54', 3),
(36, 8, 4, NULL, 'GET', 5, 0, 0, 0, 0, NULL, '2020-04-05 03:54:59', '2020-04-05 03:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracker_paths`
--

CREATE TABLE `tracker_paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_paths`
--

INSERT INTO `tracker_paths` (`id`, `path`, `created_at`, `updated_at`) VALUES
(1, 'en', '2020-03-26 00:52:09', '2020-03-26 00:52:09'),
(2, 'en/email-list', '2020-03-26 01:58:53', '2020-03-26 01:58:53'),
(3, '/', '2020-03-30 22:32:55', '2020-03-30 22:32:55'),
(4, 'ko', '2020-03-30 22:33:02', '2020-03-30 22:33:02'),
(5, 'js/popper.js.map', '2020-03-30 22:36:22', '2020-03-30 22:36:22'),
(6, 'en/product/1', '2020-03-30 22:43:06', '2020-03-30 22:43:06'),
(7, 'ko/email-list', '2020-04-05 03:54:54', '2020-04-05 03:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_queries`
--

CREATE TABLE `tracker_queries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_query_arguments`
--

CREATE TABLE `tracker_query_arguments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query_id` bigint(20) UNSIGNED NOT NULL,
  `argument` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_referers`
--

CREATE TABLE `tracker_referers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_terms_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_referers`
--

INSERT INTO `tracker_referers` (`id`, `domain_id`, `url`, `host`, `created_at`, `updated_at`, `medium`, `source`, `search_terms_hash`) VALUES
(1, 1, 'http://marketing.com/en/email-list', 'marketing.com', '2020-03-26 00:52:08', '2020-03-26 00:52:08', NULL, NULL, NULL),
(2, 1, 'http://marketing.com/en', 'marketing.com', '2020-03-26 01:58:53', '2020-03-26 01:58:53', NULL, NULL, NULL),
(3, 1, 'http://marketing.com/ko', 'marketing.com', '2020-04-05 03:54:53', '2020-04-05 03:54:53', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracker_referers_search_terms`
--

CREATE TABLE `tracker_referers_search_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referer_id` bigint(20) UNSIGNED NOT NULL,
  `search_term` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_routes`
--

CREATE TABLE `tracker_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_routes`
--

INSERT INTO `tracker_routes` (`id`, `name`, `action`, `created_at`, `updated_at`) VALUES
(1, 'home', 'App\\Http\\Controllers\\HomeController@home', '2020-03-26 00:52:10', '2020-03-26 00:52:10'),
(2, 'emaillist.home', 'App\\Http\\Controllers\\EmailListController@home', '2020-03-26 01:58:54', '2020-03-26 01:58:54'),
(3, 'index', 'App\\Http\\Controllers\\HomeController@index', '2020-03-30 22:33:00', '2020-03-30 22:33:00'),
(4, 'index', 'App\\Http\\Controllers\\HomeController@index', '2020-03-30 22:33:00', '2020-03-30 22:33:00'),
(5, 'emaillist.product', 'App\\Http\\Controllers\\EmailListController@product', '2020-03-30 22:43:06', '2020-03-30 22:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_route_paths`
--

CREATE TABLE `tracker_route_paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_route_paths`
--

INSERT INTO `tracker_route_paths` (`id`, `route_id`, `path`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', '2020-03-26 00:52:10', '2020-03-26 00:52:10'),
(2, 2, 'en/email-list', '2020-03-26 01:58:54', '2020-03-26 01:58:54'),
(3, 4, '/', '2020-03-30 22:33:00', '2020-03-30 22:33:00'),
(4, 3, '/', '2020-03-30 22:33:00', '2020-03-30 22:33:00'),
(5, 1, 'ko', '2020-03-30 22:33:03', '2020-03-30 22:33:03'),
(6, 5, 'en/product/1', '2020-03-30 22:43:07', '2020-03-30 22:43:07'),
(7, 2, 'ko/email-list', '2020-04-05 03:54:54', '2020-04-05 03:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_route_path_parameters`
--

CREATE TABLE `tracker_route_path_parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_path_id` bigint(20) UNSIGNED NOT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_route_path_parameters`
--

INSERT INTO `tracker_route_path_parameters` (`id`, `route_path_id`, `parameter`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Locale', 'en', '2020-03-26 00:52:10', '2020-03-26 00:52:10'),
(2, 2, 'Locale', 'en', '2020-03-26 01:58:54', '2020-03-26 01:58:54'),
(3, 5, 'Locale', 'ko', '2020-03-30 22:33:03', '2020-03-30 22:33:03'),
(4, 6, 'Locale', 'en', '2020-03-30 22:43:07', '2020-03-30 22:43:07'),
(5, 6, 'prod_id', '1', '2020-03-30 22:43:07', '2020-03-30 22:43:07'),
(6, 7, 'Locale', 'ko', '2020-04-05 03:54:54', '2020-04-05 03:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sessions`
--

CREATE TABLE `tracker_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cookie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `geoip_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_robot` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_sessions`
--

INSERT INTO `tracker_sessions` (`id`, `uuid`, `user_id`, `device_id`, `agent_id`, `client_ip`, `referer_id`, `cookie_id`, `geoip_id`, `is_robot`, `created_at`, `updated_at`, `language_id`) VALUES
(1, '6298050d-d812-4631-9fc7-bdbea314dc17', NULL, 1, 1, '127.0.0.1', 2, 2, NULL, 0, '2020-03-25 23:52:07', '2020-03-26 01:58:53', NULL),
(2, '478da473-428a-41e2-91d0-8fd0ac8410ea', NULL, 1, 1, '127.0.0.1', NULL, 3, NULL, 0, '2020-03-30 22:32:55', '2020-03-30 22:32:55', NULL),
(3, '2ee88740-2eb1-4cb7-b148-112343dfd663', NULL, 1, 1, '127.0.0.1', NULL, 5, NULL, 0, '2020-03-30 22:32:57', '2020-03-30 22:39:49', NULL),
(4, '60c4bf60-310f-4c00-9ab0-e736d66dad6f', NULL, 1, 1, '127.0.0.1', NULL, 7, NULL, 0, '2020-03-30 22:40:09', '2020-03-30 22:42:07', NULL),
(5, 'f5cd781b-ddd5-49dd-82a5-7f2661ed06a3', NULL, 1, 1, '127.0.0.1', NULL, 9, NULL, 0, '2020-03-30 22:42:24', '2020-03-30 22:43:25', NULL),
(6, '90727c32-c808-4b4d-85ed-30777efb9878', NULL, 1, 1, '127.0.0.1', NULL, 9, NULL, 0, '2020-04-02 10:09:32', '2020-04-02 11:57:02', NULL),
(7, 'f8cf66db-e2c8-4235-8311-777f1e333db0', NULL, 1, 2, '127.0.0.1', 3, 11, NULL, 0, '2020-04-05 03:54:22', '2020-04-05 03:54:54', NULL),
(8, 'ffd72652-3041-45de-b224-5c51095f8fa6', NULL, 1, 2, '127.0.0.1', NULL, 12, NULL, 0, '2020-04-05 03:54:59', '2020-04-05 03:54:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_queries`
--

CREATE TABLE `tracker_sql_queries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` double NOT NULL,
  `connection_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_queries_log`
--

CREATE TABLE `tracker_sql_queries_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `sql_query_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_query_bindings`
--

CREATE TABLE `tracker_sql_query_bindings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialized` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_query_bindings_parameters`
--

CREATE TABLE `tracker_sql_query_bindings_parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sql_query_bindings_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_system_classes`
--

CREATE TABLE `tracker_system_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-02-25 06:17:07', '2020-02-25 06:17:07'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-02-25 06:17:08', '2020-02-25 06:17:08'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-02-25 06:17:08', '2020-02-25 06:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$MPuL53yqGuWqFY7j0epAEeNWAKsibG5A2LsC4vrQqp/Tk774HFQ.a', 'jNB4D9DMcCm5kzMW3vYOpfYToj8ONRC7kdWkb1QQug2eQAjDbabhJEdz3onN', NULL, '2020-02-25 06:17:06', '2020-02-25 06:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tracker_agents`
--
ALTER TABLE `tracker_agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_agents_name_hash_unique` (`name_hash`),
  ADD KEY `tracker_agents_created_at_index` (`created_at`),
  ADD KEY `tracker_agents_updated_at_index` (`updated_at`),
  ADD KEY `tracker_agents_browser_index` (`browser`);

--
-- Indexes for table `tracker_connections`
--
ALTER TABLE `tracker_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_connections_created_at_index` (`created_at`),
  ADD KEY `tracker_connections_updated_at_index` (`updated_at`),
  ADD KEY `tracker_connections_name_index` (`name`);

--
-- Indexes for table `tracker_cookies`
--
ALTER TABLE `tracker_cookies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_cookies_uuid_unique` (`uuid`),
  ADD KEY `tracker_cookies_created_at_index` (`created_at`),
  ADD KEY `tracker_cookies_updated_at_index` (`updated_at`);

--
-- Indexes for table `tracker_devices`
--
ALTER TABLE `tracker_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_devices_kind_model_platform_platform_version_unique` (`kind`,`model`,`platform`,`platform_version`),
  ADD KEY `tracker_devices_created_at_index` (`created_at`),
  ADD KEY `tracker_devices_updated_at_index` (`updated_at`),
  ADD KEY `tracker_devices_kind_index` (`kind`),
  ADD KEY `tracker_devices_model_index` (`model`),
  ADD KEY `tracker_devices_platform_index` (`platform`),
  ADD KEY `tracker_devices_platform_version_index` (`platform_version`);

--
-- Indexes for table `tracker_domains`
--
ALTER TABLE `tracker_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_domains_created_at_index` (`created_at`),
  ADD KEY `tracker_domains_updated_at_index` (`updated_at`),
  ADD KEY `tracker_domains_name_index` (`name`);

--
-- Indexes for table `tracker_errors`
--
ALTER TABLE `tracker_errors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_errors_created_at_index` (`created_at`),
  ADD KEY `tracker_errors_updated_at_index` (`updated_at`),
  ADD KEY `tracker_errors_code_index` (`code`),
  ADD KEY `tracker_errors_message_index` (`message`);

--
-- Indexes for table `tracker_events`
--
ALTER TABLE `tracker_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_events_created_at_index` (`created_at`),
  ADD KEY `tracker_events_updated_at_index` (`updated_at`),
  ADD KEY `tracker_events_name_index` (`name`);

--
-- Indexes for table `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_events_log_created_at_index` (`created_at`),
  ADD KEY `tracker_events_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_events_log_event_id_index` (`event_id`),
  ADD KEY `tracker_events_log_class_id_index` (`class_id`),
  ADD KEY `tracker_events_log_log_id_index` (`log_id`);

--
-- Indexes for table `tracker_geoip`
--
ALTER TABLE `tracker_geoip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_geoip_created_at_index` (`created_at`),
  ADD KEY `tracker_geoip_updated_at_index` (`updated_at`),
  ADD KEY `tracker_geoip_latitude_index` (`latitude`),
  ADD KEY `tracker_geoip_longitude_index` (`longitude`),
  ADD KEY `tracker_geoip_country_code_index` (`country_code`),
  ADD KEY `tracker_geoip_country_code3_index` (`country_code3`),
  ADD KEY `tracker_geoip_country_name_index` (`country_name`),
  ADD KEY `tracker_geoip_city_index` (`city`);

--
-- Indexes for table `tracker_languages`
--
ALTER TABLE `tracker_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_languages_preference_language_range_unique` (`preference`,`language-range`),
  ADD KEY `tracker_languages_created_at_index` (`created_at`),
  ADD KEY `tracker_languages_updated_at_index` (`updated_at`),
  ADD KEY `tracker_languages_preference_index` (`preference`),
  ADD KEY `tracker_languages_language_range_index` (`language-range`);

--
-- Indexes for table `tracker_log`
--
ALTER TABLE `tracker_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_log_created_at_index` (`created_at`),
  ADD KEY `tracker_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_log_session_id_index` (`session_id`),
  ADD KEY `tracker_log_path_id_index` (`path_id`),
  ADD KEY `tracker_log_query_id_index` (`query_id`),
  ADD KEY `tracker_log_method_index` (`method`),
  ADD KEY `tracker_log_route_path_id_index` (`route_path_id`),
  ADD KEY `tracker_log_error_id_index` (`error_id`),
  ADD KEY `tracker_log_referer_id_index` (`referer_id`);

--
-- Indexes for table `tracker_paths`
--
ALTER TABLE `tracker_paths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_paths_created_at_index` (`created_at`),
  ADD KEY `tracker_paths_updated_at_index` (`updated_at`),
  ADD KEY `tracker_paths_path_index` (`path`);

--
-- Indexes for table `tracker_queries`
--
ALTER TABLE `tracker_queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_queries_created_at_index` (`created_at`),
  ADD KEY `tracker_queries_updated_at_index` (`updated_at`),
  ADD KEY `tracker_queries_query_index` (`query`);

--
-- Indexes for table `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_query_arguments_created_at_index` (`created_at`),
  ADD KEY `tracker_query_arguments_updated_at_index` (`updated_at`),
  ADD KEY `tracker_query_arguments_query_id_index` (`query_id`),
  ADD KEY `tracker_query_arguments_argument_index` (`argument`),
  ADD KEY `tracker_query_arguments_value_index` (`value`);

--
-- Indexes for table `tracker_referers`
--
ALTER TABLE `tracker_referers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_referers_created_at_index` (`created_at`),
  ADD KEY `tracker_referers_updated_at_index` (`updated_at`),
  ADD KEY `tracker_referers_domain_id_index` (`domain_id`),
  ADD KEY `tracker_referers_url_index` (`url`),
  ADD KEY `tracker_referers_medium_index` (`medium`),
  ADD KEY `tracker_referers_source_index` (`source`),
  ADD KEY `tracker_referers_search_terms_hash_index` (`search_terms_hash`);

--
-- Indexes for table `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_referers_search_terms_created_at_index` (`created_at`),
  ADD KEY `tracker_referers_search_terms_updated_at_index` (`updated_at`),
  ADD KEY `tracker_referers_search_terms_referer_id_index` (`referer_id`),
  ADD KEY `tracker_referers_search_terms_search_term_index` (`search_term`);

--
-- Indexes for table `tracker_routes`
--
ALTER TABLE `tracker_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_routes_created_at_index` (`created_at`),
  ADD KEY `tracker_routes_updated_at_index` (`updated_at`),
  ADD KEY `tracker_routes_name_index` (`name`),
  ADD KEY `tracker_routes_action_index` (`action`);

--
-- Indexes for table `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_route_paths_created_at_index` (`created_at`),
  ADD KEY `tracker_route_paths_updated_at_index` (`updated_at`),
  ADD KEY `tracker_route_paths_route_id_index` (`route_id`),
  ADD KEY `tracker_route_paths_path_index` (`path`);

--
-- Indexes for table `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_route_path_parameters_created_at_index` (`created_at`),
  ADD KEY `tracker_route_path_parameters_updated_at_index` (`updated_at`),
  ADD KEY `tracker_route_path_parameters_route_path_id_index` (`route_path_id`),
  ADD KEY `tracker_route_path_parameters_parameter_index` (`parameter`),
  ADD KEY `tracker_route_path_parameters_value_index` (`value`);

--
-- Indexes for table `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_sessions_uuid_unique` (`uuid`),
  ADD KEY `tracker_sessions_created_at_index` (`created_at`),
  ADD KEY `tracker_sessions_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sessions_user_id_index` (`user_id`),
  ADD KEY `tracker_sessions_device_id_index` (`device_id`),
  ADD KEY `tracker_sessions_agent_id_index` (`agent_id`),
  ADD KEY `tracker_sessions_client_ip_index` (`client_ip`),
  ADD KEY `tracker_sessions_referer_id_index` (`referer_id`),
  ADD KEY `tracker_sessions_cookie_id_index` (`cookie_id`),
  ADD KEY `tracker_sessions_geoip_id_index` (`geoip_id`),
  ADD KEY `tracker_sessions_language_id_index` (`language_id`);

--
-- Indexes for table `tracker_sql_queries`
--
ALTER TABLE `tracker_sql_queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_queries_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_queries_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_queries_sha1_index` (`sha1`),
  ADD KEY `tracker_sql_queries_time_index` (`time`);

--
-- Indexes for table `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_queries_log_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_queries_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_queries_log_log_id_index` (`log_id`),
  ADD KEY `tracker_sql_queries_log_sql_query_id_index` (`sql_query_id`);

--
-- Indexes for table `tracker_sql_query_bindings`
--
ALTER TABLE `tracker_sql_query_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_query_bindings_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_query_bindings_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_query_bindings_sha1_index` (`sha1`);

--
-- Indexes for table `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_query_bindings_parameters_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_query_bindings_parameters_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_query_bindings_parameters_name_index` (`name`),
  ADD KEY `tracker_sqlqb_parameters` (`sql_query_bindings_id`);

--
-- Indexes for table `tracker_system_classes`
--
ALTER TABLE `tracker_system_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_system_classes_created_at_index` (`created_at`),
  ADD KEY `tracker_system_classes_updated_at_index` (`updated_at`),
  ADD KEY `tracker_system_classes_name_index` (`name`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tracker_agents`
--
ALTER TABLE `tracker_agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tracker_connections`
--
ALTER TABLE `tracker_connections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_cookies`
--
ALTER TABLE `tracker_cookies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tracker_devices`
--
ALTER TABLE `tracker_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tracker_domains`
--
ALTER TABLE `tracker_domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tracker_errors`
--
ALTER TABLE `tracker_errors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_events`
--
ALTER TABLE `tracker_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_geoip`
--
ALTER TABLE `tracker_geoip`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_languages`
--
ALTER TABLE `tracker_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_log`
--
ALTER TABLE `tracker_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tracker_paths`
--
ALTER TABLE `tracker_paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tracker_queries`
--
ALTER TABLE `tracker_queries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_referers`
--
ALTER TABLE `tracker_referers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_routes`
--
ALTER TABLE `tracker_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tracker_sql_queries`
--
ALTER TABLE `tracker_sql_queries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_sql_query_bindings`
--
ALTER TABLE `tracker_sql_query_bindings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_system_classes`
--
ALTER TABLE `tracker_system_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  ADD CONSTRAINT `tracker_events_log_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `tracker_system_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_events_log_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `tracker_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_events_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_log`
--
ALTER TABLE `tracker_log`
  ADD CONSTRAINT `tracker_log_error_id_foreign` FOREIGN KEY (`error_id`) REFERENCES `tracker_errors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_path_id_foreign` FOREIGN KEY (`path_id`) REFERENCES `tracker_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `tracker_sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  ADD CONSTRAINT `tracker_query_arguments_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_referers`
--
ALTER TABLE `tracker_referers`
  ADD CONSTRAINT `tracker_referers_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `tracker_domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  ADD CONSTRAINT `tracker_referers_referer_id_fk` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  ADD CONSTRAINT `tracker_route_paths_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `tracker_routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  ADD CONSTRAINT `tracker_route_path_parameters_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  ADD CONSTRAINT `tracker_sessions_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `tracker_agents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_cookie_id_foreign` FOREIGN KEY (`cookie_id`) REFERENCES `tracker_cookies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `tracker_devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_geoip_id_foreign` FOREIGN KEY (`geoip_id`) REFERENCES `tracker_geoip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `tracker_languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_referer_id_foreign` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  ADD CONSTRAINT `tracker_sql_queries_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sql_queries_log_sql_query_id_foreign` FOREIGN KEY (`sql_query_id`) REFERENCES `tracker_sql_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  ADD CONSTRAINT `tracker_sqlqb_parameters` FOREIGN KEY (`sql_query_bindings_id`) REFERENCES `tracker_sql_query_bindings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
