-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 29. 10:07
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `team`
--
CREATE DATABASE IF NOT EXISTS `team` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `team`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `player`
--

CREATE TABLE `player` (
  `Id` int(11) NOT NULL,
  `Name` varchar(37) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `Weight` int(11) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `player`
--

INSERT INTO `player` (`Id`, `Name`, `Height`, `Weight`, `CreatedTime`) VALUES
(1, 'Dev Jeanel', 209, 100, '2024-09-02 09:52:50'),
(2, 'Roch Leitche', 239, 109, '2024-06-21 10:28:32'),
(3, 'Sharai Eastope', 188, 77, '2024-03-29 17:21:31'),
(4, 'Lulu Jedrachowicz', 254, 141, '2024-01-26 07:38:02'),
(5, 'Allyn Shave', 175, 84, '2024-08-25 11:08:39'),
(6, 'Franny Maddock', 174, 60, '2024-07-14 23:32:38'),
(7, 'Jackie Broddle', 206, 168, '2024-05-05 16:57:36'),
(8, 'Celisse Cribbin', 254, 73, '2024-08-02 14:44:38'),
(9, 'Brandi Eglaise', 258, 185, '2024-04-29 05:44:54'),
(10, 'Bard Izat', 209, 142, '2024-03-14 10:59:51'),
(11, 'Jemima Andrea', 189, 179, '2023-12-17 04:42:51'),
(12, 'Ennis Cogzell', 225, 187, '2024-01-10 13:07:13'),
(13, 'Leoine Buncher', 188, 150, '2023-11-15 10:19:31'),
(14, 'Jena Kemer', 195, 93, '2024-10-04 13:41:26'),
(15, 'Joscelin Henden', 214, 141, '2024-05-28 16:58:46'),
(16, 'Wolfy Kuban', 152, 96, '2024-07-29 01:32:40'),
(17, 'Regina Hazlegrove', 151, 104, '2024-08-19 01:39:30'),
(18, 'Salli Alywen', 204, 83, '2024-01-22 06:02:23'),
(19, 'Rubie Winfred', 174, 196, '2023-12-17 03:38:56'),
(20, 'Filberto Frid', 186, 117, '2024-04-10 17:31:31'),
(21, 'Errick Roistone', 170, 90, '2024-08-24 09:51:50'),
(22, 'Cirillo Du Fray', 198, 108, '2024-08-30 12:06:00'),
(23, 'Bastien Burnell', 198, 190, '2024-09-14 02:53:55'),
(24, 'Cam Benettolo', 257, 172, '2024-11-04 11:36:01'),
(25, 'Sapphire Rysom', 238, 67, '2023-12-24 02:33:03'),
(26, 'Chadwick Kidby', 251, 176, '2023-12-16 20:43:35'),
(27, 'Haven Sweetlove', 198, 66, '2024-11-08 09:58:24'),
(28, 'Dru Di Biagio', 151, 78, '2024-10-04 06:01:36'),
(29, 'Reinald Whiskerd', 211, 167, '2024-08-03 12:12:12'),
(30, 'Chaim Garnham', 156, 137, '2023-12-13 03:35:02'),
(31, 'Tamarah Vater', 203, 139, '2024-01-08 00:54:11'),
(32, 'Pammy Thow', 252, 180, '2024-02-27 18:11:04'),
(33, 'Jobyna Bett', 216, 61, '2024-03-10 07:02:48'),
(34, 'Matti Colbourne', 258, 147, '2024-10-12 14:59:28'),
(35, 'Hank Branford', 184, 153, '2024-05-16 18:32:14'),
(36, 'Herc Pauli', 164, 120, '2024-11-12 21:58:35'),
(37, 'Natassia Cornthwaite', 157, 74, '2024-08-08 03:39:10'),
(38, 'Ely Frontczak', 218, 104, '2024-05-20 07:05:15'),
(39, 'Madelene McGlynn', 212, 183, '2023-11-19 12:11:21'),
(40, 'Marjy Northcott', 205, 61, '2024-06-10 01:54:14'),
(41, 'Spencer Jahan', 161, 154, '2024-07-26 21:58:38'),
(42, 'Wenona Terrazzo', 177, 93, '2024-06-12 00:49:24'),
(43, 'Freeland Houliston', 156, 148, '2023-11-30 22:12:33'),
(44, 'Tiphanie Twinborne', 254, 138, '2024-04-19 04:02:32'),
(45, 'Tab Gatiss', 215, 163, '2023-12-03 01:59:36'),
(46, 'Farlay Waple', 237, 99, '2023-11-26 09:32:41'),
(47, 'Chickie Mallord', 244, 134, '2024-08-14 15:36:59'),
(48, 'Lucais Pedrazzi', 233, 106, '2024-06-06 00:19:37'),
(49, 'Sansone Autrie', 186, 154, '2024-05-28 03:44:33'),
(50, 'Desmund Dumphries', 165, 90, '2024-07-07 08:17:18'),
(51, 'Daisey Sherewood', 162, 172, '2024-01-20 16:26:37'),
(52, 'Ray Ivanets', 233, 92, '2024-10-09 08:13:04'),
(53, 'Alphard Iddins', 186, 180, '2023-11-26 18:58:55'),
(54, 'Callida Pack', 156, 192, '2024-06-20 02:42:51'),
(55, 'Tallia Sarton', 163, 83, '2024-04-06 12:59:53'),
(56, 'Dirk Doumic', 180, 172, '2024-07-12 23:09:03'),
(57, 'Wayland Castangia', 231, 114, '2024-07-08 23:52:04'),
(58, 'Humfrey Fulbrook', 216, 153, '2024-01-12 09:48:57'),
(59, 'Elsbeth Leupoldt', 218, 182, '2024-09-09 12:16:05'),
(60, 'Crissy Peers', 235, 188, '2024-03-29 09:50:24'),
(61, 'Michaelina Verne', 173, 83, '2023-12-08 09:40:17'),
(62, 'Verina Goncaves', 201, 88, '2024-05-25 06:59:03'),
(63, 'Eran Chamney', 195, 141, '2023-11-18 09:33:53'),
(64, 'Igor Woodlands', 219, 150, '2024-07-30 17:47:11'),
(65, 'Kiri Seargeant', 197, 170, '2024-04-25 08:05:27'),
(66, 'Curtis Bastistini', 227, 68, '2024-06-04 16:18:10'),
(67, 'Bambie Gawthorpe', 221, 177, '2024-09-20 21:02:51'),
(68, 'Kendal Morehall', 226, 75, '2024-05-09 05:22:49'),
(69, 'Tildy Giraudot', 215, 187, '2024-04-04 06:38:14'),
(70, 'Ugo Laughrey', 150, 114, '2024-06-25 01:10:08'),
(71, 'Kaleena Acreman', 232, 112, '2024-04-29 04:25:56'),
(72, 'Olin Belliard', 245, 144, '2024-10-19 19:38:27'),
(73, 'Demetri Beckham', 259, 144, '2024-09-02 04:54:57'),
(74, 'Maressa Dable', 156, 154, '2024-10-30 15:13:23'),
(75, 'Ikey Mariette', 252, 131, '2024-08-19 08:23:12'),
(76, 'Zelma Vorley', 157, 162, '2024-07-25 01:05:02'),
(77, 'Jule Copas', 166, 124, '2024-05-03 02:17:34'),
(78, 'Elberta Renton', 198, 128, '2024-07-29 21:36:39'),
(79, 'Layton Gunny', 194, 186, '2024-01-15 12:17:35'),
(80, 'Klarrisa Blasli', 205, 73, '2024-05-11 20:35:55'),
(81, 'Read McArthur', 236, 179, '2024-04-05 07:34:30'),
(82, 'Durward Willeson', 187, 87, '2024-08-22 14:59:59'),
(83, 'Prudi Exelby', 167, 114, '2024-10-05 06:41:04'),
(84, 'Nicol Longstaff', 192, 177, '2024-01-16 03:48:17'),
(85, 'Maitilde Denman', 218, 149, '2024-05-28 20:08:50'),
(86, 'Wake Le Brom', 166, 170, '2024-10-24 10:20:59'),
(87, 'Kristal Olwen', 171, 86, '2024-07-26 17:05:00'),
(88, 'Jay Arlow', 237, 118, '2024-05-16 14:46:54'),
(89, 'Tull Massei', 212, 146, '2024-04-12 11:46:06'),
(90, 'Michel Yarnall', 257, 71, '2024-10-31 21:16:24'),
(91, 'Darcy Cescon', 168, 78, '2024-04-19 07:10:33'),
(92, 'Rabi Raylton', 164, 179, '2023-11-25 04:53:50'),
(93, 'Brunhilda Hazeldene', 221, 72, '2024-04-17 16:37:33'),
(94, 'Currie Grinikhin', 243, 136, '2024-04-30 00:28:01'),
(95, 'Frazer Duinbleton', 169, 98, '2024-08-04 12:15:32'),
(96, 'Homer Gibben', 258, 71, '2024-03-04 20:25:37'),
(97, 'Erena Iliffe', 236, 138, '2023-11-30 09:39:04'),
(98, 'Carling Squibe', 154, 140, '2024-08-08 20:18:55'),
(99, 'Huntlee Ondra', 177, 87, '2024-05-14 15:05:22'),
(100, 'Paxton Lorente', 256, 108, '2023-12-22 16:12:14'),
(101, 'Kiss Elemér', 211, 95, '2024-11-15 11:04:02');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`Id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `player`
--
ALTER TABLE `player`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
