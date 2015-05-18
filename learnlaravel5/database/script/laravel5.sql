-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-05-18 02:50:15
-- 服务器版本： 5.0.96-community-nt
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel5`
--

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `slug` varchar(255) collate utf8_unicode_ci default NULL,
  `body` text collate utf8_unicode_ci,
  `image` varchar(255) collate utf8_unicode_ci default NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nickname` varchar(255) collate utf8_unicode_ci NOT NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `website` varchar(255) collate utf8_unicode_ci default NULL,
  `content` text collate utf8_unicode_ci,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `nickname`, `email`, `website`, `content`, `page_id`, `created_at`, `updated_at`) VALUES
(2, 'qin', 'poshidi@163.com', 'poshidi.com', 'te', 1, '2015-05-12 23:59:05', '2015-05-12 23:59:05');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) collate utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_05_13_064526_create_articles_table', 2),
('2015_05_13_064554_create_pages_table', 2),
('2015_05_13_074635_create_comments_table', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `slug` varchar(255) collate utf8_unicode_ci default NULL,
  `body` text collate utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '王尼玛', 'first-page', '暴走漫画', 1, '2015-05-12 23:00:08', '2015-05-12 23:20:07'),
(2, 'Title1', 'first-page', 'Body 1', 1, '2015-05-12 23:00:08', '2015-05-12 23:00:08'),
(3, 'Title2', 'first-page', 'Body 2', 1, '2015-05-12 23:00:08', '2015-05-12 23:00:08'),
(4, 'Title3', 'first-page', 'Body 3', 1, '2015-05-12 23:00:08', '2015-05-12 23:00:08'),
(5, 'Title4', 'first-page', 'Body 4', 1, '2015-05-12 23:00:08', '2015-05-12 23:00:08'),
(6, 'Title5', 'first-page', 'Body 5', 1, '2015-05-12 23:00:08', '2015-05-12 23:00:08'),
(7, 'Title6', 'first-page', 'Body 6', 1, '2015-05-12 23:00:08', '2015-05-12 23:00:08'),
(8, 'Title7', 'first-page', 'Body 7', 1, '2015-05-12 23:00:08', '2015-05-12 23:00:08'),
(9, 'Title8', 'first-page', 'Body 8', 1, '2015-05-12 23:00:08', '2015-05-12 23:00:08'),
(10, 'Title9', 'first-page', 'Body 9', 1, '2015-05-12 23:00:08', '2015-05-12 23:00:08'),
(11, '生化危机', NULL, '生化危机启示录', 1, '2015-05-12 23:20:31', '2015-05-12 23:20:31');

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) collate utf8_unicode_ci NOT NULL,
  `token` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `email` varchar(255) collate utf8_unicode_ci NOT NULL,
  `password` varchar(60) collate utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) collate utf8_unicode_ci default NULL,
  `created_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'poshidi', 'poshidi@163.com', '$2y$10$4KvSnmOro/eUYZnz41FQ6.ACi.ZRPOK/jJEEM3EXDFJSGZWN1FRTy', 'mKRX32kOHotzYUH7OgGsR4kX5gp22gJwSgV4tLHvWHLqOhZMigFAWnAIlBAQ', '2015-05-12 22:43:05', '2015-05-12 23:23:16');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
