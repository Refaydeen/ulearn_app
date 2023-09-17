-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2023 at 04:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 5, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2023-09-13 06:06:40'),
(2, 0, 6, 'Admin', 'fa-tasks', '', NULL, NULL, '2023-09-13 06:06:40'),
(3, 2, 7, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2023-09-13 06:06:40'),
(4, 2, 8, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2023-09-13 06:06:40'),
(5, 2, 9, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2023-09-13 06:06:40'),
(6, 2, 10, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2023-09-13 06:06:40'),
(7, 2, 11, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2023-09-13 06:06:40'),
(8, 0, 1, 'Member', 'fa-user-plus', '/users', '*', '2023-09-12 01:49:10', '2023-09-13 06:06:40'),
(9, 11, 4, 'Course Category', 'fa-certificate', '/course-types', '*', '2023-09-13 00:32:50', '2023-09-13 06:06:40'),
(10, 11, 3, 'Courses', 'fa-book', '/courses', '*', '2023-09-13 06:04:13', '2023-09-13 06:06:40'),
(11, 0, 2, 'About Courses', 'fa-align-justify', NULL, '*', '2023-09-13 06:06:16', '2023-09-13 06:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-09-08 12:31:28', '2023-09-08 12:31:28'),
(2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-08 12:32:35', '2023-09-08 12:32:35'),
(3, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-08 12:32:40', '2023-09-08 12:32:40'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-09-09 01:50:58', '2023-09-09 01:50:58'),
(5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-09 01:51:05', '2023-09-09 01:51:05'),
(6, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-09 01:51:12', '2023-09-09 01:51:12'),
(7, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2023-09-09 01:58:19', '2023-09-09 01:58:19'),
(8, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2023-09-09 01:58:25', '2023-09-09 01:58:25'),
(9, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2023-09-09 12:03:24', '2023-09-09 12:03:24'),
(10, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2023-09-09 12:03:32', '2023-09-09 12:03:32'),
(11, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2023-09-09 12:03:36', '2023-09-09 12:03:36'),
(12, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-09-10 01:52:41', '2023-09-10 01:52:41'),
(13, 1, 'admin', 'GET', '192.168.1.109', '[]', '2023-09-10 03:31:44', '2023-09-10 03:31:44'),
(14, 1, 'admin', 'GET', '192.168.1.109', '[]', '2023-09-10 03:42:07', '2023-09-10 03:42:07'),
(15, 1, 'admin', 'GET', '192.168.1.109', '[]', '2023-09-10 08:49:35', '2023-09-10 08:49:35'),
(16, 1, 'admin', 'GET', '172.16.1.50', '[]', '2023-09-10 23:36:33', '2023-09-10 23:36:33'),
(17, 1, 'admin', 'GET', '172.16.1.50', '[]', '2023-09-11 00:10:11', '2023-09-11 00:10:11'),
(18, 1, 'admin/auth/users', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-11 00:10:18', '2023-09-11 00:10:18'),
(19, 1, 'admin', 'GET', '192.168.1.219', '[]', '2023-09-11 00:55:26', '2023-09-11 00:55:26'),
(20, 1, 'admin', 'GET', '172.16.1.50', '[]', '2023-09-12 00:50:29', '2023-09-12 00:50:29'),
(21, 1, 'admin/auth/roles', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 00:53:35', '2023-09-12 00:53:35'),
(22, 1, 'admin/auth/users', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 00:53:37', '2023-09-12 00:53:37'),
(23, 1, 'admin/auth/users', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 00:53:38', '2023-09-12 00:53:38'),
(24, 1, 'admin/auth/users', 'GET', '172.16.1.50', '[]', '2023-09-12 01:46:48', '2023-09-12 01:46:48'),
(25, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:47:02', '2023-09-12 01:47:02'),
(26, 1, 'admin/auth/menu', 'POST', '172.16.1.50', '{\"parent_id\":\"0\",\"title\":\"Member\",\"icon\":\"fa-user-plus\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"6ctW8yVLcDflBhX055Y9zSykQzoFS3yzvUkP76jg\"}', '2023-09-12 01:49:10', '2023-09-12 01:49:10'),
(27, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '[]', '2023-09-12 01:49:10', '2023-09-12 01:49:10'),
(28, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '[]', '2023-09-12 01:49:32', '2023-09-12 01:49:32'),
(29, 1, 'admin/users', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:49:55', '2023-09-12 01:49:55'),
(30, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:49:58', '2023-09-12 01:49:58'),
(31, 1, 'admin/users', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:50:09', '2023-09-12 01:50:09'),
(32, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 01:51:06', '2023-09-12 01:51:06'),
(33, 1, 'admin', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:51:30', '2023-09-12 01:51:30'),
(34, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:51:38', '2023-09-12 01:51:38'),
(35, 1, 'admin/auth/menu/8/edit', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:51:53', '2023-09-12 01:51:53'),
(36, 1, 'admin/auth/menu/8', 'PUT', '172.16.1.50', '{\"parent_id\":\"0\",\"title\":\"Member\",\"icon\":\"fa-user-plus\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"6ctW8yVLcDflBhX055Y9zSykQzoFS3yzvUkP76jg\",\"after-save\":\"3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/172.16.1.50:8000\\/admin\\/auth\\/menu\"}', '2023-09-12 01:52:21', '2023-09-12 01:52:21'),
(37, 1, 'admin/auth/menu/8', 'GET', '172.16.1.50', '[]', '2023-09-12 01:52:21', '2023-09-12 01:52:21'),
(38, 1, 'admin/auth/menu/8/edit', 'GET', '172.16.1.50', '[]', '2023-09-12 01:52:22', '2023-09-12 01:52:22'),
(39, 1, 'admin/users', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:52:24', '2023-09-12 01:52:24'),
(40, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 01:52:27', '2023-09-12 01:52:27'),
(41, 1, 'admin/users', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:52:32', '2023-09-12 01:52:32'),
(42, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:52:35', '2023-09-12 01:52:35'),
(43, 1, 'admin/auth/menu/8/edit', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:52:39', '2023-09-12 01:52:39'),
(44, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:53:29', '2023-09-12 01:53:29'),
(45, 1, 'admin/auth/menu/3/edit', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:53:33', '2023-09-12 01:53:33'),
(46, 1, 'admin/auth/menu/3', 'PUT', '172.16.1.50', '{\"parent_id\":\"2\",\"title\":\"Users\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"6ctW8yVLcDflBhX055Y9zSykQzoFS3yzvUkP76jg\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/172.16.1.50:8000\\/admin\\/auth\\/menu\"}', '2023-09-12 01:53:42', '2023-09-12 01:53:42'),
(47, 1, 'admin/auth/menu/3/edit', 'GET', '172.16.1.50', '[]', '2023-09-12 01:53:42', '2023-09-12 01:53:42'),
(48, 1, 'admin/users', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:53:46', '2023-09-12 01:53:46'),
(49, 1, 'admin/auth/menu/3/edit', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:53:48', '2023-09-12 01:53:48'),
(50, 1, 'admin/auth/menu/3/edit', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:53:55', '2023-09-12 01:53:55'),
(51, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:53:57', '2023-09-12 01:53:57'),
(52, 1, 'admin/auth/menu/8/edit', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:53:58', '2023-09-12 01:53:58'),
(53, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:53:59', '2023-09-12 01:53:59'),
(54, 1, 'admin/auth/menu/8/edit', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:54:11', '2023-09-12 01:54:11'),
(55, 1, 'admin/auth/menu/8', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:54:13', '2023-09-12 01:54:13'),
(56, 1, 'admin/auth/menu/8/edit', 'GET', '172.16.1.50', '[]', '2023-09-12 01:54:14', '2023-09-12 01:54:14'),
(57, 1, 'admin/users', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 01:54:44', '2023-09-12 01:54:44'),
(58, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 01:58:24', '2023-09-12 01:58:24'),
(59, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 05:40:40', '2023-09-12 05:40:40'),
(60, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 05:41:33', '2023-09-12 05:41:33'),
(61, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 05:49:28', '2023-09-12 05:49:28'),
(62, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 05:51:07', '2023-09-12 05:51:07'),
(63, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 05:51:58', '2023-09-12 05:51:58'),
(64, 1, 'admin/users/3/edit', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 05:52:01', '2023-09-12 05:52:01'),
(65, 1, 'admin/users/3/edit', 'GET', '172.16.1.50', '[]', '2023-09-12 05:52:09', '2023-09-12 05:52:09'),
(66, 1, 'admin/users/3/edit', 'GET', '172.16.1.50', '[]', '2023-09-12 05:52:22', '2023-09-12 05:52:22'),
(67, 1, 'admin/users/3/edit', 'GET', '172.16.1.50', '[]', '2023-09-12 05:52:38', '2023-09-12 05:52:38'),
(68, 1, 'admin/users/3/edit', 'GET', '172.16.1.50', '[]', '2023-09-12 05:55:53', '2023-09-12 05:55:53'),
(69, 1, 'admin/users', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-12 05:55:58', '2023-09-12 05:55:58'),
(70, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 05:56:33', '2023-09-12 05:56:33'),
(71, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 05:57:05', '2023-09-12 05:57:05'),
(72, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 05:58:46', '2023-09-12 05:58:46'),
(73, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-12 05:59:33', '2023-09-12 05:59:33'),
(74, 1, 'admin/users', 'GET', '172.16.1.50', '[]', '2023-09-13 00:30:52', '2023-09-13 00:30:52'),
(75, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 00:31:11', '2023-09-13 00:31:11'),
(76, 1, 'admin/auth/menu', 'POST', '172.16.1.50', '{\"parent_id\":\"0\",\"title\":\"Course Category\",\"icon\":\"fa-certificate\",\"uri\":\"\\/course-types\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"dE5k8SN18nA9M26OPXI7zMGFt9ilcVsUlPNlY7aV\"}', '2023-09-13 00:32:50', '2023-09-13 00:32:50'),
(77, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '[]', '2023-09-13 00:32:50', '2023-09-13 00:32:50'),
(78, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '[]', '2023-09-13 00:32:55', '2023-09-13 00:32:55'),
(79, 1, 'admin/course-types', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 00:33:00', '2023-09-13 00:33:00'),
(80, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '[]', '2023-09-13 00:33:00', '2023-09-13 00:33:00'),
(81, 1, 'admin/users', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 00:33:03', '2023-09-13 00:33:03'),
(82, 1, 'admin/course-types', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 00:35:14', '2023-09-13 00:35:14'),
(83, 1, 'admin/course-types/create', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 00:35:29', '2023-09-13 00:35:29'),
(84, 1, 'admin/course-types', 'GET', '172.16.1.50', '[]', '2023-09-13 00:35:29', '2023-09-13 00:35:29'),
(85, 1, 'admin/course-types', 'GET', '172.16.1.50', '[]', '2023-09-13 00:41:57', '2023-09-13 00:41:57'),
(86, 1, 'admin/course-types/create', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 00:41:59', '2023-09-13 00:41:59'),
(87, 1, 'admin/course-types', 'POST', '172.16.1.50', '{\"parent_id\":\"0\",\"title\":\"Flutter Course\",\"description\":\"Hi this is a flutter course\",\"Order\":\"1\",\"_token\":\"dE5k8SN18nA9M26OPXI7zMGFt9ilcVsUlPNlY7aV\",\"_previous_\":\"http:\\/\\/172.16.1.50:8000\\/admin\\/course-types\"}', '2023-09-13 01:09:09', '2023-09-13 01:09:09'),
(88, 1, 'admin/course-types', 'GET', '172.16.1.50', '[]', '2023-09-13 01:09:10', '2023-09-13 01:09:10'),
(89, 1, 'admin/course-types/1/edit', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 01:09:41', '2023-09-13 01:09:41'),
(90, 1, 'admin/course-types/1', 'PUT', '172.16.1.50', '{\"parent_id\":\"0\",\"title\":\"Flutter Beginner\'s Course\",\"description\":\"Hi this is a flutter course\",\"Order\":null,\"_token\":\"dE5k8SN18nA9M26OPXI7zMGFt9ilcVsUlPNlY7aV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/172.16.1.50:8000\\/admin\\/course-types\"}', '2023-09-13 01:09:53', '2023-09-13 01:09:53'),
(91, 1, 'admin/course-types', 'GET', '172.16.1.50', '[]', '2023-09-13 01:09:54', '2023-09-13 01:09:54'),
(92, 1, 'admin/course-types/create', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 01:11:11', '2023-09-13 01:11:11'),
(93, 1, 'admin/course-types', 'POST', '172.16.1.50', '{\"parent_id\":\"0\",\"title\":\"Angular Advanced Course\",\"description\":null,\"Order\":\"2\",\"_token\":\"dE5k8SN18nA9M26OPXI7zMGFt9ilcVsUlPNlY7aV\",\"_previous_\":\"http:\\/\\/172.16.1.50:8000\\/admin\\/course-types\"}', '2023-09-13 01:11:27', '2023-09-13 01:11:27'),
(94, 1, 'admin/course-types', 'GET', '172.16.1.50', '[]', '2023-09-13 01:11:27', '2023-09-13 01:11:27'),
(95, 1, 'admin/course-types', 'GET', '172.16.1.50', '[]', '2023-09-13 01:31:24', '2023-09-13 01:31:24'),
(96, 1, 'admin/course-types', 'POST', '172.16.1.50', '{\"_token\":\"dE5k8SN18nA9M26OPXI7zMGFt9ilcVsUlPNlY7aV\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2},{\\\"id\\\":3}]\"}', '2023-09-13 01:36:45', '2023-09-13 01:36:45'),
(97, 1, 'admin/course-types', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 01:36:46', '2023-09-13 01:36:46'),
(98, 1, 'admin/course-types', 'GET', '172.16.1.50', '[]', '2023-09-13 01:36:47', '2023-09-13 01:36:47'),
(99, 1, 'admin/course-types', 'GET', '172.16.1.50', '[]', '2023-09-13 01:36:49', '2023-09-13 01:36:49'),
(100, 1, 'admin/course-types/1/edit', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 01:41:04', '2023-09-13 01:41:04'),
(101, 1, 'admin', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 01:44:59', '2023-09-13 01:44:59'),
(102, 1, 'admin', 'GET', '172.16.1.50', '[]', '2023-09-13 06:01:55', '2023-09-13 06:01:55'),
(103, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 06:03:46', '2023-09-13 06:03:46'),
(104, 1, 'admin/auth/menu', 'POST', '172.16.1.50', '{\"parent_id\":\"0\",\"title\":\"Courses\",\"icon\":\"fa-book\",\"uri\":\"\\/courses\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"iv4A39OXUQayukjOzPEtS1VOmoHw5Vz4aSYG5igC\"}', '2023-09-13 06:04:13', '2023-09-13 06:04:13'),
(105, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '[]', '2023-09-13 06:04:14', '2023-09-13 06:04:14'),
(106, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '[]', '2023-09-13 06:04:21', '2023-09-13 06:04:21'),
(107, 1, 'admin/courses', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 06:04:24', '2023-09-13 06:04:24'),
(108, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '[]', '2023-09-13 06:04:25', '2023-09-13 06:04:25'),
(109, 1, 'admin/auth/menu/10/edit', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 06:05:02', '2023-09-13 06:05:02'),
(110, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 06:05:39', '2023-09-13 06:05:39'),
(111, 1, 'admin/auth/menu', 'POST', '172.16.1.50', '{\"parent_id\":\"0\",\"title\":\"About Courses\",\"icon\":\"fa-align-justify\",\"uri\":null,\"roles\":[null],\"permission\":\"*\",\"_token\":\"iv4A39OXUQayukjOzPEtS1VOmoHw5Vz4aSYG5igC\"}', '2023-09-13 06:06:16', '2023-09-13 06:06:16'),
(112, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '[]', '2023-09-13 06:06:16', '2023-09-13 06:06:16'),
(113, 1, 'admin/auth/menu', 'POST', '172.16.1.50', '{\"_token\":\"iv4A39OXUQayukjOzPEtS1VOmoHw5Vz4aSYG5igC\",\"_order\":\"[{\\\"id\\\":8},{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":10},{\\\"id\\\":9}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2023-09-13 06:06:40', '2023-09-13 06:06:40'),
(114, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 06:06:41', '2023-09-13 06:06:41'),
(115, 1, 'admin/auth/menu', 'GET', '172.16.1.50', '[]', '2023-09-13 06:06:43', '2023-09-13 06:06:43'),
(116, 1, 'admin/courses', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 06:08:21', '2023-09-13 06:08:21'),
(117, 1, 'admin/courses', 'GET', '172.16.1.50', '[]', '2023-09-13 06:09:12', '2023-09-13 06:09:12'),
(118, 1, 'admin/courses', 'GET', '172.16.1.50', '[]', '2023-09-13 06:10:03', '2023-09-13 06:10:03'),
(119, 1, 'admin/courses/create', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 06:10:08', '2023-09-13 06:10:08'),
(120, 1, 'admin/courses/create', 'GET', '172.16.1.50', '[]', '2023-09-13 06:10:08', '2023-09-13 06:10:08'),
(121, 1, 'admin/courses', 'GET', '172.16.1.50', '[]', '2023-09-13 06:10:41', '2023-09-13 06:10:41'),
(122, 1, 'admin/courses/create', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 06:10:44', '2023-09-13 06:10:44'),
(123, 1, 'admin/courses/create', 'GET', '172.16.1.50', '[]', '2023-09-13 06:10:44', '2023-09-13 06:10:44'),
(124, 1, 'admin/courses/create', 'GET', '172.16.1.50', '[]', '2023-09-13 06:11:25', '2023-09-13 06:11:25'),
(125, 1, 'admin/courses/create', 'GET', '172.16.1.50', '[]', '2023-09-13 06:11:46', '2023-09-13 06:11:46'),
(126, 1, 'admin/courses/create', 'GET', '172.16.1.50', '[]', '2023-09-13 06:12:22', '2023-09-13 06:12:22'),
(127, 1, 'admin/courses/create', 'GET', '172.16.1.50', '[]', '2023-09-13 06:13:02', '2023-09-13 06:13:02'),
(128, 1, 'admin/courses/create', 'GET', '172.16.1.50', '[]', '2023-09-13 06:13:15', '2023-09-13 06:13:15'),
(129, 1, 'admin/courses/create', 'GET', '172.16.1.50', '[]', '2023-09-13 06:14:02', '2023-09-13 06:14:02'),
(130, 1, 'admin/courses/create', 'GET', '172.16.1.50', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 06:22:37', '2023-09-13 06:22:37'),
(131, 1, 'admin', 'GET', '192.168.1.33', '[]', '2023-09-13 09:06:56', '2023-09-13 09:06:56'),
(132, 1, 'admin/courses', 'GET', '192.168.1.33', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 09:07:04', '2023-09-13 09:07:04'),
(133, 1, 'admin/courses/create', 'GET', '192.168.1.33', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 09:07:07', '2023-09-13 09:07:07'),
(134, 1, 'admin/course-types', 'GET', '192.168.1.33', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 09:08:48', '2023-09-13 09:08:48'),
(135, 1, 'admin/courses', 'GET', '192.168.1.33', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 09:08:52', '2023-09-13 09:08:52'),
(136, 1, 'admin/courses/create', 'GET', '192.168.1.33', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 09:08:54', '2023-09-13 09:08:54'),
(137, 1, 'admin/courses/create', 'GET', '192.168.1.33', '[]', '2023-09-13 09:14:44', '2023-09-13 09:14:44'),
(138, 1, 'admin/courses/create', 'GET', '192.168.1.109', '[]', '2023-09-13 09:47:30', '2023-09-13 09:47:30'),
(139, 1, 'admin/courses/create', 'GET', '192.168.1.109', '[]', '2023-09-13 09:47:55', '2023-09-13 09:47:55'),
(140, 1, 'admin/courses/create', 'GET', '192.168.1.109', '[]', '2023-09-13 09:52:49', '2023-09-13 09:52:49'),
(141, 1, 'admin/courses', 'POST', '192.168.1.109', '{\"name\":\"Angular Course\",\"type_id\":\"2\",\"description\":\"This is a beginner to advanced angular course\",\"price\":\"500\",\"lesson_num\":\"10\",\"video_length\":\"2\",\"user_token\":\"f7bf53348de275c6172891ce0b31d3aa\",\"_token\":\"3FgvLFrZ0vsNgm0Y97kmAXsfxvXJF7iTQOi3W1xS\"}', '2023-09-13 09:59:43', '2023-09-13 09:59:43'),
(142, 1, 'admin/courses/create', 'GET', '192.168.1.109', '[]', '2023-09-13 09:59:43', '2023-09-13 09:59:43'),
(143, 1, 'admin/courses/create', 'GET', '192.168.1.109', '[]', '2023-09-13 10:00:35', '2023-09-13 10:00:35'),
(144, 1, 'admin/courses', 'POST', '192.168.1.109', '{\"name\":\"ANGULAR\",\"type_id\":\"2\",\"description\":\"Beginner to advanced Course\",\"price\":\"200\",\"lesson_num\":\"8\",\"video_length\":\"1\",\"user_token\":\"f7bf53348de275c6172891ce0b31d3aa\",\"_token\":\"3FgvLFrZ0vsNgm0Y97kmAXsfxvXJF7iTQOi3W1xS\"}', '2023-09-13 10:01:28', '2023-09-13 10:01:28'),
(145, 1, 'admin/courses/create', 'GET', '192.168.1.109', '[]', '2023-09-13 10:01:29', '2023-09-13 10:01:29'),
(146, 1, 'admin/courses', 'POST', '192.168.1.109', '{\"name\":\"ANGULAR\",\"type_id\":\"2\",\"description\":\"Beginner to advanced Course\",\"price\":\"200\",\"lesson_num\":\"8\",\"video_length\":\"1\",\"user_token\":\"f7bf53348de275c6172891ce0b31d3aa\",\"_token\":\"3FgvLFrZ0vsNgm0Y97kmAXsfxvXJF7iTQOi3W1xS\"}', '2023-09-13 10:06:50', '2023-09-13 10:06:50'),
(147, 1, 'admin/courses/create', 'GET', '192.168.1.109', '[]', '2023-09-13 10:06:50', '2023-09-13 10:06:50'),
(148, 1, 'admin/courses/create', 'GET', '192.168.1.109', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 10:06:59', '2023-09-13 10:06:59'),
(149, 1, 'admin/courses/create', 'GET', '192.168.1.109', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 10:07:00', '2023-09-13 10:07:00'),
(150, 1, 'admin/courses/create', 'GET', '192.168.1.109', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 10:07:00', '2023-09-13 10:07:00'),
(151, 1, 'admin/courses', 'GET', '192.168.1.109', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 10:07:04', '2023-09-13 10:07:04'),
(152, 1, 'admin/course-types', 'GET', '192.168.1.109', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 10:07:06', '2023-09-13 10:07:06'),
(153, 1, 'admin/courses', 'GET', '192.168.1.109', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 10:07:07', '2023-09-13 10:07:07'),
(154, 1, 'admin/courses/create', 'GET', '192.168.1.109', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 10:07:10', '2023-09-13 10:07:10'),
(155, 1, 'admin/courses', 'POST', '192.168.1.109', '{\"name\":\"Angular Course\",\"type_id\":\"2\",\"description\":\"This is a beginner to advanced angular course\",\"price\":\"500\",\"lesson_num\":\"4\",\"video_length\":\"2\",\"user_token\":\"f7bf53348de275c6172891ce0b31d3aa\",\"_token\":\"3FgvLFrZ0vsNgm0Y97kmAXsfxvXJF7iTQOi3W1xS\",\"_previous_\":\"http:\\/\\/192.168.1.109:8000\\/admin\\/courses\"}', '2023-09-13 10:07:53', '2023-09-13 10:07:53'),
(156, 1, 'admin/courses/create', 'GET', '192.168.1.109', '[]', '2023-09-13 10:07:53', '2023-09-13 10:07:53'),
(157, 1, 'admin/courses', 'GET', '192.168.1.109', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 10:20:34', '2023-09-13 10:20:34'),
(158, 1, 'admin/courses/create', 'GET', '192.168.1.109', '{\"_pjax\":\"#pjax-container\"}', '2023-09-13 10:20:44', '2023-09-13 10:20:44'),
(159, 1, 'admin/courses', 'POST', '192.168.1.109', '{\"name\":null,\"type_id\":null,\"description\":null,\"price\":null,\"lesson_num\":null,\"video_length\":null,\"user_token\":null,\"_token\":\"3FgvLFrZ0vsNgm0Y97kmAXsfxvXJF7iTQOi3W1xS\",\"_previous_\":\"http:\\/\\/192.168.1.109:8000\\/admin\\/courses\"}', '2023-09-13 10:20:50', '2023-09-13 10:20:50'),
(160, 1, 'admin/courses/create', 'GET', '192.168.1.109', '[]', '2023-09-13 10:20:50', '2023-09-13 10:20:50'),
(161, 1, 'admin', 'GET', '172.16.1.32', '[]', '2023-09-14 06:04:22', '2023-09-14 06:04:22'),
(162, 1, 'admin/courses', 'GET', '172.16.1.32', '{\"_pjax\":\"#pjax-container\"}', '2023-09-14 06:04:34', '2023-09-14 06:04:34'),
(163, 1, 'admin/course-types', 'GET', '172.16.1.32', '{\"_pjax\":\"#pjax-container\"}', '2023-09-14 06:04:35', '2023-09-14 06:04:35'),
(164, 1, 'admin/courses', 'GET', '172.16.1.32', '{\"_pjax\":\"#pjax-container\"}', '2023-09-14 06:04:40', '2023-09-14 06:04:40'),
(165, 1, 'admin/courses/create', 'GET', '172.16.1.32', '{\"_pjax\":\"#pjax-container\"}', '2023-09-14 06:44:54', '2023-09-14 06:44:54'),
(166, 1, 'admin/courses', 'POST', '172.16.1.32', '{\"name\":\"Angular Course\",\"type_id\":\"2\",\"description\":\"This is a beginner to advanced angular course\",\"price\":\"500\",\"lesson_num\":\"3\",\"video_length\":\"10\",\"user_token\":\"f7bf53348de275c6172891ce0b31d3aa\",\"_token\":\"86KS4odkxHHKVCNhNizazcrdl0lMHBAJHS7nZ8YD\",\"_previous_\":\"http:\\/\\/172.16.1.32:8000\\/admin\\/courses\"}', '2023-09-14 06:45:52', '2023-09-14 06:45:52'),
(167, 1, 'admin/courses/create', 'GET', '172.16.1.32', '[]', '2023-09-14 06:45:52', '2023-09-14 06:45:52'),
(168, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-09-16 11:34:46', '2023-09-16 11:34:46'),
(169, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-16 11:34:53', '2023-09-16 11:34:53'),
(170, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-16 11:34:57', '2023-09-16 11:34:57'),
(171, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"name\":\"Angular Course\",\"type_id\":\"1\",\"description\":\"This is a beginner to advanced angular course\",\"price\":\"200\",\"lesson_num\":\"2\",\"video_length\":\"15\",\"user_token\":\"f7bf53348de275c6172891ce0b31d3aa\",\"_token\":\"6Zcg97g4CtcIjXBXmiGVpNGL2TEXztRINgFCTO3z\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2023-09-16 11:35:49', '2023-09-16 11:35:49'),
(172, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-16 11:35:49', '2023-09-16 11:35:49'),
(173, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-16 11:55:33', '2023-09-16 11:55:33'),
(174, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"name\":\"Angular Course\",\"type_id\":\"2\",\"description\":\"This is a beginner to advanced angular course\",\"price\":\"200\",\"lesson_num\":\"1\",\"video_length\":\"10\",\"user_token\":\"f7bf53348de275c6172891ce0b31d3aa\",\"_token\":\"6Zcg97g4CtcIjXBXmiGVpNGL2TEXztRINgFCTO3z\"}', '2023-09-16 11:56:22', '2023-09-16 11:56:22'),
(175, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-16 11:56:23', '2023-09-16 11:56:23'),
(176, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-16 11:59:35', '2023-09-16 11:59:35'),
(177, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-16 12:00:22', '2023-09-16 12:00:22'),
(178, 1, 'admin/course-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-16 12:00:26', '2023-09-16 12:00:26'),
(179, 1, 'admin/course-types', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"WordPress COurse\",\"description\":\"best courrse\",\"Order\":\"1\",\"_token\":\"6Zcg97g4CtcIjXBXmiGVpNGL2TEXztRINgFCTO3z\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/course-types\"}', '2023-09-16 12:00:52', '2023-09-16 12:00:52'),
(180, 1, 'admin/course-types', 'GET', '127.0.0.1', '[]', '2023-09-16 12:00:53', '2023-09-16 12:00:53'),
(181, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-16 12:01:05', '2023-09-16 12:01:05'),
(182, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-09-17 00:44:20', '2023-09-17 00:44:20'),
(183, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 00:44:26', '2023-09-17 00:44:26'),
(184, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 00:44:28', '2023-09-17 00:44:28'),
(185, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"name\":\"Angular Course\",\"type_id\":\"1\",\"description\":\"This is a beginner to advanced angular course\",\"price\":\"200\",\"lesson_num\":\"1\",\"video_length\":\"15\",\"user_token\":\"f7bf53348de275c6172891ce0b31d3aa\",\"_token\":\"h47u6ePZrmQC7s2CyCbKdG8kk1tCvYxgy9rCD4D9\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2023-09-17 00:45:14', '2023-09-17 00:45:14'),
(186, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-17 00:45:14', '2023-09-17 00:45:14'),
(187, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-17 00:46:57', '2023-09-17 00:46:57'),
(188, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-17 00:49:22', '2023-09-17 00:49:22'),
(189, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-17 01:46:46', '2023-09-17 01:46:46'),
(190, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-17 01:57:33', '2023-09-17 01:57:33'),
(191, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"name\":\"Angular Course\",\"type_id\":\"2\",\"description\":\"This is a beginner to advanced angular course\",\"price\":\"200\",\"lesson_num\":\"1\",\"video_length\":\"6\",\"user_token\":\"f7bf53348de275c6172891ce0b31d3aa\",\"_token\":\"h47u6ePZrmQC7s2CyCbKdG8kk1tCvYxgy9rCD4D9\"}', '2023-09-17 01:59:25', '2023-09-17 01:59:25'),
(192, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-17 01:59:26', '2023-09-17 01:59:26'),
(193, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 02:00:22', '2023-09-17 02:00:22'),
(194, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 02:00:28', '2023-09-17 02:00:28'),
(195, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 02:00:29', '2023-09-17 02:00:29'),
(196, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 02:00:34', '2023-09-17 02:00:34'),
(197, 1, 'admin/course-types', 'POST', '127.0.0.1', '{\"_token\":\"h47u6ePZrmQC7s2CyCbKdG8kk1tCvYxgy9rCD4D9\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2},{\\\"id\\\":3},{\\\"id\\\":4}]\"}', '2023-09-17 02:00:41', '2023-09-17 02:00:41'),
(198, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 02:00:42', '2023-09-17 02:00:42'),
(199, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 02:05:11', '2023-09-17 02:05:11'),
(200, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 02:05:13', '2023-09-17 02:05:13'),
(201, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 02:13:31', '2023-09-17 02:13:31'),
(202, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2023-09-17 02:13:34', '2023-09-17 02:13:34'),
(203, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 02:18:12', '2023-09-17 02:18:12'),
(204, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"name\":\"Angular Course\",\"type_id\":\"4\",\"description\":\"This is a beginner to advanced angular course\",\"price\":\"200\",\"lesson_num\":\"10\",\"video_length\":\"1\",\"user_token\":\"f7bf53348de275c6172891ce0b31d3aa\",\"_token\":\"h47u6ePZrmQC7s2CyCbKdG8kk1tCvYxgy9rCD4D9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2023-09-17 02:20:00', '2023-09-17 02:20:00'),
(205, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-17 02:20:01', '2023-09-17 02:20:01'),
(206, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-17 02:54:25', '2023-09-17 02:54:25'),
(207, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-17 02:56:28', '2023-09-17 02:56:28'),
(208, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"name\":\"Angular Course\",\"type_id\":\"3\",\"description\":\"This is a beginner to advanced angular course\",\"price\":\"200\",\"lesson_num\":\"1\",\"video_length\":\"1\",\"user_token\":\"f7bf53348de275c6172891ce0b31d3aa\",\"_token\":\"h47u6ePZrmQC7s2CyCbKdG8kk1tCvYxgy9rCD4D9\",\"after-save\":\"2\"}', '2023-09-17 02:57:15', '2023-09-17 02:57:15'),
(209, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-17 02:57:16', '2023-09-17 02:57:16'),
(210, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-09-17 03:09:58', '2023-09-17 03:09:58'),
(211, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 03:10:53', '2023-09-17 03:10:53'),
(212, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 03:10:54', '2023-09-17 03:10:54'),
(213, 1, 'admin/course-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 03:10:56', '2023-09-17 03:10:56'),
(214, 1, 'admin/course-types', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"ReactJs course\",\"description\":\"react js\",\"Order\":\"1\",\"_token\":\"h47u6ePZrmQC7s2CyCbKdG8kk1tCvYxgy9rCD4D9\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/course-types\"}', '2023-09-17 03:11:18', '2023-09-17 03:11:18'),
(215, 1, 'admin/course-types', 'GET', '127.0.0.1', '[]', '2023-09-17 03:11:18', '2023-09-17 03:11:18'),
(216, 1, 'admin/course-types', 'POST', '127.0.0.1', '{\"_token\":\"h47u6ePZrmQC7s2CyCbKdG8kk1tCvYxgy9rCD4D9\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2},{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5}]\"}', '2023-09-17 03:11:23', '2023-09-17 03:11:23'),
(217, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 03:11:24', '2023-09-17 03:11:24'),
(218, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 03:11:26', '2023-09-17 03:11:26'),
(219, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 03:11:32', '2023-09-17 03:11:32'),
(220, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-09-17 03:11:35', '2023-09-17 03:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2023-09-08 11:44:42', '2023-09-08 11:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2a$04$D8vJCV.KJZEaOqbOKp4gaegrd0KgEsAOhkkMMpmamWESp8s89u/Gq', 'Administrator', NULL, 'YlanYMqVoGb53EbNntJysKjMSAjA9YL0CX0tneafjJSBalYDHELvXELmXWZy', '2023-09-08 11:44:42', '2023-09-08 11:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_token` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `thumbnail` varchar(150) NOT NULL,
  `video` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type_id` smallint(6) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_types`
--

CREATE TABLE `course_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `parent_id` mediumint(9) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` mediumint(9) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_types`
--

INSERT INTO `course_types` (`id`, `title`, `parent_id`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Flutter Beginner\'s Course', 0, 'Hi this is a flutter course', 1, '2023-09-13 01:09:09', '2023-09-13 01:36:45'),
(2, 'Angular Advanced Course', 0, NULL, 2, '2023-09-13 01:11:27', '2023-09-13 01:11:27'),
(3, 'Programming of C', 0, 'Basics of C programming', 3, NULL, '2023-09-13 01:36:45'),
(4, 'WordPress COurse', 0, 'best courrse', 4, '2023-09-16 12:00:52', '2023-09-17 02:00:41'),
(5, 'ReactJs course', 0, 'react js', 5, '2023-09-17 03:11:18', '2023-09-17 03:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2023_09_12_114133_create_course_types_table', 2),
(9, '2023_09_13_095424_create_courses_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '2afc38eed99217e3723bdee0efa1f3e84b6974f0c6099dd225cce8d13c7861e6', '[\"*\"]', NULL, NULL, '2023-09-09 03:10:36', '2023-09-09 03:10:36'),
(2, 'App\\Models\\User', 2, '64fc812f755a6', 'f821770166355b6f2a6a3adf86f0118d4b1b882281904af51a5f68b1a804cb05', '[\"*\"]', NULL, NULL, '2023-09-09 08:59:03', '2023-09-09 08:59:03'),
(3, 'App\\Models\\User', 2, '64fc89bce60fb', '4dc9517edd26ba52c5655a275047c46b54f21bad8445216ed1c5726e050cd685', '[\"*\"]', NULL, NULL, '2023-09-09 09:35:32', '2023-09-09 09:35:32'),
(4, 'App\\Models\\User', 2, '64fca1f6bb289', '1b0c15fd8302d5c682fca0e47dc002e56ff13e8f4b2897a223d32f7ee558a260', '[\"*\"]', NULL, NULL, '2023-09-09 11:18:54', '2023-09-09 11:18:54'),
(5, 'App\\Models\\User', 2, '64fca6e7aa14c', '755b795d536d8df262284d02128261bc07542092798dab54f58bbc018d848f3f', '[\"*\"]', NULL, NULL, '2023-09-09 11:39:59', '2023-09-09 11:39:59'),
(6, 'App\\Models\\User', 2, '64fd8627841eb', '314cc58155ae667972ce82cfc5997e804be926b9f091a00ddf0f6a23630fcbef', '[\"*\"]', NULL, NULL, '2023-09-10 03:32:31', '2023-09-10 03:32:31'),
(7, 'App\\Models\\User', 2, '64fd87b9a1b3f', '6c0d3beb86f85f92cfcefee388c750c68d27b9827fe5899199cbe12c4c09f1e5', '[\"*\"]', NULL, NULL, '2023-09-10 03:39:13', '2023-09-10 03:39:13'),
(8, 'App\\Models\\User', 2, '64fd87bce3619', '560a317ea44d626ad33b1e566f90b6a26bb0b9383c13aacd35a07f3636baf376', '[\"*\"]', NULL, NULL, '2023-09-10 03:39:16', '2023-09-10 03:39:16'),
(9, 'App\\Models\\User', 2, '64fd87d352489', 'ca0f56e340e781d72d1fb70411fd9a7172275552aee6b71f37d282dac39aed6d', '[\"*\"]', NULL, NULL, '2023-09-10 03:39:39', '2023-09-10 03:39:39'),
(10, 'App\\Models\\User', 2, '64fd883a9f16c', '324ad30cc0612ef59a5b1460cf35341202ef6ecb4ecb8929acc24c765e89260f', '[\"*\"]', NULL, NULL, '2023-09-10 03:41:22', '2023-09-10 03:41:22'),
(11, 'App\\Models\\User', 2, '64fd883d3ad4b', '9efbacb89900b68684386be20b5975f8f3872100fa984b1a4cfd2544cca83660', '[\"*\"]', NULL, NULL, '2023-09-10 03:41:25', '2023-09-10 03:41:25'),
(12, 'App\\Models\\User', 2, '64fd884408784', 'bb5eeff85b581db3ed4d0875af5b2309466bd54f8ff88d60bac112fcb6b1de8d', '[\"*\"]', NULL, NULL, '2023-09-10 03:41:32', '2023-09-10 03:41:32'),
(13, 'App\\Models\\User', 2, '64fd8846d15e4', 'd7c937ebd4da7c8c9944168913d650ab260f50e12ce8c3915d1a50535bfb225c', '[\"*\"]', NULL, NULL, '2023-09-10 03:41:34', '2023-09-10 03:41:34'),
(14, 'App\\Models\\User', 2, '64fd8855302f9', 'fae18e01de11b2cb3261d7e8e8d80f9b60c35fa603b4c52b515b1d0ba26d8eec', '[\"*\"]', NULL, NULL, '2023-09-10 03:41:49', '2023-09-10 03:41:49'),
(15, 'App\\Models\\User', 2, '64fd8861024d4', 'ecc154309a3b0c6d7a0b829b6948b6c08a246fd92d6db304040a8c506f70cb9b', '[\"*\"]', NULL, NULL, '2023-09-10 03:42:01', '2023-09-10 03:42:01'),
(16, 'App\\Models\\User', 2, '64fd88ac9df1f', '35ea1c205f801930c434eab7f61e849bdcb57363408472490afecbfab41f5dec', '[\"*\"]', NULL, NULL, '2023-09-10 03:43:16', '2023-09-10 03:43:16'),
(17, 'App\\Models\\User', 2, '64fd88af2646a', '32a6faa1e971459ea7b002a3976be51f271a143597bfefbb70955590d1babf03', '[\"*\"]', NULL, NULL, '2023-09-10 03:43:19', '2023-09-10 03:43:19'),
(18, 'App\\Models\\User', 2, '64fdd18696fe7', '10e8edc41bd06239a4a25b4f5c421bd6a1b9ce43fe8ada688e4573bca12f6612', '[\"*\"]', NULL, NULL, '2023-09-10 08:54:06', '2023-09-10 08:54:06'),
(19, 'App\\Models\\User', 2, '64fdd2280a908', 'd9088e89d0b469c87bbb30089a9c22b2c3ed39bc8a89f78ac491b824329e05ce', '[\"*\"]', NULL, NULL, '2023-09-10 08:56:48', '2023-09-10 08:56:48'),
(20, 'App\\Models\\User', 2, '64fdd93b96ed5', 'b3c428cf9b20b581f0f6729d929d55c93c6d543a6dc844484c223c1580b2394f', '[\"*\"]', NULL, NULL, '2023-09-10 09:26:59', '2023-09-10 09:26:59'),
(21, 'App\\Models\\User', 2, '64fdd94332f06', '2f2e288896cfdbd4769e152f8e5020da42eb7b5688df6dab2a7ea78efa8ea30d', '[\"*\"]', NULL, NULL, '2023-09-10 09:27:07', '2023-09-10 09:27:07'),
(22, 'App\\Models\\User', 2, '64fdd94870b8a', 'a1161ad1aa9458c126d92efad3926784dbcc5d4807a48cc69486661c56436700', '[\"*\"]', NULL, NULL, '2023-09-10 09:27:12', '2023-09-10 09:27:12'),
(23, 'App\\Models\\User', 2, '64fdd94a97efc', 'ba554fb365790f5122c046a9323ff6d7cea52fe11ed0dd14a609e7682874f3ce', '[\"*\"]', NULL, NULL, '2023-09-10 09:27:14', '2023-09-10 09:27:14'),
(24, 'App\\Models\\User', 2, '64fdd9a61f4fa', 'e46ce8f929454bf91ca02fbaa906fc99e4442474570c9207226c1ab94681de1a', '[\"*\"]', NULL, NULL, '2023-09-10 09:28:46', '2023-09-10 09:28:46'),
(25, 'App\\Models\\User', 2, '64fdda76c2630', '06840764c6c074ea8b52fb77d6a238652042debdc811eeb84a61ee26d7997f93', '[\"*\"]', NULL, NULL, '2023-09-10 09:32:14', '2023-09-10 09:32:14'),
(26, 'App\\Models\\User', 2, '64fddeb441250', '193f2e4db7a3e90791dcc4b918454b9bfe16d2bd2b3568085aaa0a029264e01b', '[\"*\"]', NULL, NULL, '2023-09-10 09:50:20', '2023-09-10 09:50:20'),
(27, 'App\\Models\\User', 2, '64fde668bd727', 'f52128f62c868acd06986ddc5ae54f1791ffe70f8c83efc9ef7c8f1962902744', '[\"*\"]', NULL, NULL, '2023-09-10 10:23:12', '2023-09-10 10:23:12'),
(28, 'App\\Models\\User', 2, '64fde67677848', '64a988c1fd689ba71f1f9f5f63e55a296d8a47ed489a4d11eb29dedc0e90e0d2', '[\"*\"]', NULL, NULL, '2023-09-10 10:23:26', '2023-09-10 10:23:26'),
(29, 'App\\Models\\User', 2, '64fde7ff3c938', 'e5b553d5fb45130eb88b83198c492ce393c58dc714ec59a6413da4c1219723f5', '[\"*\"]', NULL, NULL, '2023-09-10 10:29:59', '2023-09-10 10:29:59'),
(30, 'App\\Models\\User', 2, '64fde80c761fe', 'f50e4c01d868fd4cb2560be0a1058c889f6dc4bec0eb481770c78506b2b4a4fc', '[\"*\"]', NULL, NULL, '2023-09-10 10:30:12', '2023-09-10 10:30:12'),
(31, 'App\\Models\\User', 2, '64fde9c49a50d', '3e525dcee541561d145328093e977f36b1a3574cc1ec1a90518cc07ae1aa8c80', '[\"*\"]', NULL, NULL, '2023-09-10 10:37:32', '2023-09-10 10:37:32'),
(32, 'App\\Models\\User', 2, '64fde9d3005c7', '49c05d1614e50cde25f6b99c1f45a02a414bf4a046f6cb7475ea130f92850d05', '[\"*\"]', NULL, NULL, '2023-09-10 10:37:47', '2023-09-10 10:37:47'),
(33, 'App\\Models\\User', 2, '64fdedf3e58bd', '8ddd47c3425b96c74ca9b8c0db1ab6eb65a1119b21156b1c057128c6d1cffece', '[\"*\"]', NULL, NULL, '2023-09-10 10:55:23', '2023-09-10 10:55:23'),
(34, 'App\\Models\\User', 2, '64fdedfc8b01a', 'd42dac3c1a31e5cf1a9b5737e33257333a29f96d0612fc58da9e269699f734a1', '[\"*\"]', NULL, NULL, '2023-09-10 10:55:32', '2023-09-10 10:55:32'),
(35, 'App\\Models\\User', 2, '64fea3984c44f', '2adcdf4f114c80df7aa291cc7a110906e99bc316cb9511895058ccd933273173', '[\"*\"]', NULL, NULL, '2023-09-10 23:50:24', '2023-09-10 23:50:24'),
(36, 'App\\Models\\User', 2, '64fea45784880', '72722d16eec0441ec1035f71e8c193dfaa483d8f6ca3130e04c940840a791dd4', '[\"*\"]', NULL, NULL, '2023-09-10 23:53:35', '2023-09-10 23:53:35'),
(37, 'App\\Models\\User', 2, '64fea4620c192', 'a9ab3db83926510d77ee1d3df8cc82d6fcd98217ab5533e6514c9014ad9aedd0', '[\"*\"]', NULL, NULL, '2023-09-10 23:53:46', '2023-09-10 23:53:46'),
(38, 'App\\Models\\User', 2, '64fea7616b86b', '03b55f2a1ee4de6502d5d4a2553e08cbd64dd6f616955e686c871ebd79015164', '[\"*\"]', NULL, NULL, '2023-09-11 00:06:33', '2023-09-11 00:06:33'),
(39, 'App\\Models\\User', 2, '64fea7fa0f893', 'c1a667a357e5f2bc41fbac620e662c9580fa8fe65397550cae9f2c7fd3662005', '[\"*\"]', NULL, NULL, '2023-09-11 00:09:06', '2023-09-11 00:09:06'),
(40, 'App\\Models\\User', 2, '64feab1a6f186', '4c257184e6c2dd1406a104db738963af0547f9485e39d6d5d3a9ba04d55e114d', '[\"*\"]', NULL, NULL, '2023-09-11 00:22:26', '2023-09-11 00:22:26'),
(41, 'App\\Models\\User', 2, '64feae9a5f716', '16bb008cf64f6726c24524d900d00dc92c0bd4ca1542d2d217be52eb6351934b', '[\"*\"]', NULL, NULL, '2023-09-11 00:37:22', '2023-09-11 00:37:22'),
(42, 'App\\Models\\User', 2, '64feaeaf5df3e', '7555a3c4a85251cfa5cfbea4931526a5de48904040f24e04a6a94d5678ed6845', '[\"*\"]', NULL, NULL, '2023-09-11 00:37:43', '2023-09-11 00:37:43'),
(43, 'App\\Models\\User', 2, '64feaeb384385', 'b81dc133f7d9831b3142202825b608373f77c24001a7907e8e9eae8c7790dc23', '[\"*\"]', NULL, NULL, '2023-09-11 00:37:47', '2023-09-11 00:37:47'),
(44, 'App\\Models\\User', 2, '64feafce59f94', '64ff0925af84c7efd44cc23c8eef98afacaf9444d07f3d8df0b965ae128f13f3', '[\"*\"]', NULL, NULL, '2023-09-11 00:42:30', '2023-09-11 00:42:30'),
(45, 'App\\Models\\User', 2, '64feb43d3cd6e', 'e94a1ca2800df57128040c91194b279b10a6367da373eec7307439c0039ac798', '[\"*\"]', NULL, NULL, '2023-09-11 01:01:25', '2023-09-11 01:01:25'),
(46, 'App\\Models\\User', 2, '64feb4db359ea', '67dd39e83206d8e77fb96eb82cb12e6fb7a01b80fcd00a4a0a5d905b70dd52db', '[\"*\"]', NULL, NULL, '2023-09-11 01:04:03', '2023-09-11 01:04:03'),
(47, 'App\\Models\\User', 2, '64feb5661781e', '561962fec5ce0380a3c6ba33c4f3673987493511daa4efd62f1ee338b827b3e9', '[\"*\"]', NULL, NULL, '2023-09-11 01:06:22', '2023-09-11 01:06:22'),
(48, 'App\\Models\\User', 2, '64feb5be5986c', '89ddbf702d8ee8578e990262573ca00edd67e4c19f86adf445bcda97097c21eb', '[\"*\"]', NULL, NULL, '2023-09-11 01:07:50', '2023-09-11 01:07:50'),
(49, 'App\\Models\\User', 2, '64feb67f54bf6', '1a684b36f30e8dd381f738ca5bb0333d7803ec45e70f610f9c21fd2ae55fa80e', '[\"*\"]', NULL, NULL, '2023-09-11 01:11:03', '2023-09-11 01:11:03'),
(50, 'App\\Models\\User', 2, '64feb83f98ff4', '39d8229b2f314493b3a1cff6c421989a1716b4b94e5bcd5abd0cd9bee0c7b12a', '[\"*\"]', NULL, NULL, '2023-09-11 01:18:31', '2023-09-11 01:18:31'),
(51, 'App\\Models\\User', 2, '64feb84600016', 'cefbb9485d53a48e4d983c6538442d8816fe9a74970037488fd282f2c0dfe3b7', '[\"*\"]', NULL, NULL, '2023-09-11 01:18:38', '2023-09-11 01:18:38'),
(52, 'App\\Models\\User', 2, '64feb89d0bbbf', '1cf64a3f5d97643d195da7c93d5160257cc2d52783f60c9713f85645a9a70e2e', '[\"*\"]', NULL, NULL, '2023-09-11 01:20:05', '2023-09-11 01:20:05'),
(53, 'App\\Models\\User', 2, '64feb94aaa8ed', '5901ca8ee276f1fa9415a9089e6edd75ea0f04b44e0784925bb922467808f145', '[\"*\"]', NULL, NULL, '2023-09-11 01:22:58', '2023-09-11 01:22:58'),
(54, 'App\\Models\\User', 2, '64febf8f3af4f', 'd9598274f3dd42ffab54bc227fbc3213223bb34e1541d9e6f5009e842995cdd1', '[\"*\"]', NULL, NULL, '2023-09-11 01:49:43', '2023-09-11 01:49:43'),
(55, 'App\\Models\\User', 2, '64febf99c6ac9', '93d3ac099ee1658fc8bcc806c08f441559e473cf17ffeb9fb3c00374902dfb1f', '[\"*\"]', NULL, NULL, '2023-09-11 01:49:53', '2023-09-11 01:49:53'),
(56, 'App\\Models\\User', 2, '64febfc58d403', '39b9a7619f22d9aac2aad264dfa4ec86d579d5d739ce0e7fca63a27967611d67', '[\"*\"]', NULL, NULL, '2023-09-11 01:50:37', '2023-09-11 01:50:37'),
(57, 'App\\Models\\User', 2, '64fed6e02c378', 'd7f9e7a9af371158086aab396c61cfdd66e4696397d93e6c1f09e1930503851d', '[\"*\"]', NULL, NULL, '2023-09-11 03:29:12', '2023-09-11 03:29:12'),
(58, 'App\\Models\\User', 2, '64fed7d26c91d', '33b3af1bfc8d8d5a755fbf84b49ca4eaf9a77cee81f1b0910fa77e00fc35dcaa', '[\"*\"]', NULL, NULL, '2023-09-11 03:33:14', '2023-09-11 03:33:14'),
(59, 'App\\Models\\User', 2, '64fed88b53c7c', '6d8451f7151676da54d9c8d2c468c7c27410b1ea9a7807663e8423d52e2ff93d', '[\"*\"]', NULL, NULL, '2023-09-11 03:36:19', '2023-09-11 03:36:19'),
(60, 'App\\Models\\User', 3, '64fee41b70607', '933f35a34acb2bde27d46ddf605537bf053783bd293384f69041db76e336e4ea', '[\"*\"]', NULL, NULL, '2023-09-11 04:25:39', '2023-09-11 04:25:39'),
(61, 'App\\Models\\User', 3, '64feedff85723', '3905119195c30d56a2eabc14b4519914736207bf9220458aa9b66c083eeeb25e', '[\"*\"]', NULL, NULL, '2023-09-11 05:07:51', '2023-09-11 05:07:51'),
(62, 'App\\Models\\User', 3, '64feef61f0f6d', '8237caa99f68e21bb0d65c9b190acae44b4caf4b916ff8630d5fdf80eb63d898', '[\"*\"]', NULL, NULL, '2023-09-11 05:13:45', '2023-09-11 05:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(1000) NOT NULL,
  `type` int(1) NOT NULL,
  `open_id` varchar(80) NOT NULL,
  `access_token` varchar(80) DEFAULT NULL,
  `deleted_at` datetime NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `token`, `name`, `email`, `email_verified_at`, `avatar`, `type`, `open_id`, `access_token`, `deleted_at`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'f7bf53348de275c6172891ce0b31d3aa', 'refay', 'refayd2@gmail.com', NULL, 'uploads/default.png', 1, 'nIRilHP0N7bu7BJvOfAObbCjiya2', '62|PurAOmpZOlWGWFQoQLpKW44diwvLitSJKDXrpYgla49b3c54', '2023-09-11 15:25:39', NULL, NULL, '2023-09-11 04:25:39', '2023-09-11 05:13:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_types`
--
ALTER TABLE `course_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_types`
--
ALTER TABLE `course_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
