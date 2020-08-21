-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 8 月 21 日 07:21
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d06_33`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `like_table`
--

CREATE TABLE `like_table` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `todo_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `like_table`
--

INSERT INTO `like_table` (`id`, `user_id`, `todo_id`, `created_at`) VALUES
(1, 1, 10, '2020-07-11 15:36:40'),
(6, 1, 7, '2020-07-11 16:25:53'),
(7, 1, 9, '2020-07-11 16:27:32'),
(8, 1, 16, '2020-07-11 16:28:02'),
(9, 1, 17, '2020-07-11 16:28:03'),
(10, 1, 5, '2020-07-11 16:31:16'),
(11, 1, 2, '2020-07-11 16:34:23'),
(12, 1, 6, '2020-07-11 16:34:32'),
(13, 0, 0, '2020-07-11 16:40:33'),
(14, 1, 4, '2020-07-11 16:42:00'),
(15, 2, 10, '2020-07-11 17:03:52'),
(16, 2, 9, '2020-07-11 17:03:53'),
(17, 2, 7, '2020-07-11 17:03:54'),
(18, 2, 6, '2020-07-11 17:03:54');

-- --------------------------------------------------------

--
-- テーブルの構造 `music_table`
--

CREATE TABLE `music_table` (
  `id` int(12) NOT NULL,
  `todo` int(11) NOT NULL,
  `deadline` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `myon_table`
--

CREATE TABLE `myon_table` (
  `id` int(12) NOT NULL,
  `posttime` datetime NOT NULL,
  `lat` longtext NOT NULL,
  `lng` longtext NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `myon_table`
--

INSERT INTO `myon_table` (`id`, `posttime`, `lat`, `lng`, `image`, `created_at`, `updated_at`) VALUES
(17, '2020-07-02 22:45:48', '33.5866643', '130.394469', NULL, '2020-07-02 22:45:48', '2020-07-02 22:45:48'),
(20, '2020-07-02 22:50:13', '33.59294384628146', '130.38844210852443', NULL, '2020-07-02 22:50:13', '2020-07-02 22:50:13'),
(21, '2020-07-02 22:53:42', '33.5948437', '130.3227554', NULL, '2020-07-02 22:53:42', '2020-07-02 22:53:42'),
(23, '2020-07-04 13:21:11', '33.5866643', '130.394469', NULL, '2020-07-04 13:21:11', '2020-07-04 13:21:11'),
(24, '2020-07-04 13:21:51', '33.600880009902276', '130.38348459573413', NULL, '2020-07-04 13:21:51', '2020-07-04 13:21:51'),
(25, '2020-07-04 17:44:37', '33.524165751504775', '130.2889801295655', NULL, '2020-07-04 17:44:37', '2020-07-04 17:44:37');

-- --------------------------------------------------------

--
-- テーブルの構造 `tamago_table`
--

CREATE TABLE `tamago_table` (
  `id` int(12) NOT NULL,
  `etsuko_word` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `tamago_table`
--

INSERT INTO `tamago_table` (`id`, `etsuko_word`) VALUES
(28, 'んっ…'),
(29, 'もっと'),
(30, 'だめ'),
(39, 'そこ'),
(69, 'んっ…'),
(70, 'まって'),
(71, 'とめないで'),
(72, 'もっと');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `image`, `created_at`, `updated_at`) VALUES
(9, 'aa', '2020-06-20', NULL, '2020-06-20 17:06:55', '2020-06-20 17:06:55'),
(34, 'VSCODE', '2020-07-18', NULL, '2020-07-18 17:25:33', '2020-07-18 17:25:33'),
(35, 'あかさたな', '2020-07-18', '<img src=\"upload/20200718103108b62719154abaca4123f9b2c526f29245.png\" >', '2020-07-18 17:31:08', '2020-07-18 17:31:08'),
(36, 'VSCODE', '2020-07-18', 'upload/202007181032325817cf454dbdd2d42b4149997ad6c00e.png', '2020-07-18 17:32:32', '2020-07-18 17:32:32'),
(39, 'VSCODE', '2020-07-18', 'upload/20200718104732bdd83c53001670c44985cf6f70d054b7.png', '2020-07-18 17:47:32', '2020-07-18 17:47:32'),
(40, 'VSCODE', '2020-07-26', 'upload/20200726121851c720be5a713b39492ff3ad6e0fbeab81.jpg', '2020-07-26 19:18:51', '2020-07-26 19:18:51'),
(42, 'VSCODE', '2020-07-30', 'upload/20200730084002ae6b6f1fa859193b6bd42fd006d3b477.m4a', '2020-07-30 15:40:02', '2020-07-30 15:40:02');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'tomo', '1212', 0, 0, '2020-07-04 16:12:57', '2020-07-04 16:12:57'),
(2, 'abcd', '12345', 0, 0, '2020-07-04 16:32:58', '2020-07-04 16:32:58');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_data`
--

CREATE TABLE `user_data` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `zipcode` char(10) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `tel` varchar(25) NOT NULL,
  `mail` varchar(35) NOT NULL,
  `created_at` int(35) NOT NULL,
  `updated_at` int(35) NOT NULL,
  `is_admin` datetime NOT NULL,
  `is_deleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `like_table`
--
ALTER TABLE `like_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `music_table`
--
ALTER TABLE `music_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `myon_table`
--
ALTER TABLE `myon_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `tamago_table`
--
ALTER TABLE `tamago_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- テーブルのAUTO_INCREMENT `music_table`
--
ALTER TABLE `music_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `myon_table`
--
ALTER TABLE `myon_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- テーブルのAUTO_INCREMENT `tamago_table`
--
ALTER TABLE `tamago_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- テーブルのAUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルのAUTO_INCREMENT `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
