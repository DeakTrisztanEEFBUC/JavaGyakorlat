-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 07:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nb1`
--
CREATE DATABASE IF NOT EXISTS `nb1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `nb1`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `message` text COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'mi van', 'mivanitt@gmail.com', 'szia\r\n', '2024-06-23 15:01:04'),
(13, 'adasdaads', 'dsadassadaad@gmail.com', 'asdaddadadadadasa', '2024-06-23 15:42:01'),
(14, 'adsdaadda', 'adadadadad@gmail.com', 'adadadadad@gmail.comadadadadad@gmail.comadadadadad@gmail.comadadadadad@gmail.comadadadadad@gmail.comadadadadad@gmail.comadadadadad@gmail.comadadadadad@gmail.comadadadadad@gmail.comadadadadad@gmail.comadadadadad@gmail.comadadadadad@gmail.com', '2024-06-23 15:42:51'),
(15, 'adsaddad', 'dadadsdasdasads@gmail.com', 'dasasdsdadsadasdasdasdasdsa', '2024-06-23 15:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `klub`
--

CREATE TABLE `klub` (
  `id` int(11) NOT NULL,
  `csapatnev` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `klub`
--

INSERT INTO `klub` (`id`, `csapatnev`) VALUES
(1, 'Vasas FC'),
(2, 'Ferencvárosi TC'),
(3, 'Puskás Akadémia FC'),
(4, 'Debreceni VSC'),
(5, 'Budapest Honvéd FC'),
(6, 'Szombathelyi Haladás'),
(7, 'Paksi FC'),
(8, 'Mezőkövesd Zsóry FC'),
(9, 'Diósgyőri VTK'),
(10, 'Újpest FC'),
(11, 'Balmazújváros FC'),
(12, 'Videoton FC');

-- --------------------------------------------------------

--
-- Table structure for table `labdarugo`
--

CREATE TABLE `labdarugo` (
  `id` int(11) NOT NULL,
  `mezszam` int(11) DEFAULT NULL,
  `klubid` int(11) DEFAULT NULL,
  `posztid` int(11) DEFAULT NULL,
  `utonev` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `vezeteknev` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `szulido` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `magyar` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `kulfoldi` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `ertek` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `labdarugo`
--

INSERT INTO `labdarugo` (`id`, `mezszam`, `klubid`, `posztid`, `utonev`, `vezeteknev`, `szulido`, `magyar`, `kulfoldi`, `ertek`) VALUES
(1, 18, 11, 4, 'Attila', 'Haris', '1997-01-23', '-1', '0', '150'),
(2, 31, 6, 12, 'Márió', 'Németh', '1995-05-01', '-1', '0', '300'),
(3, 77, 4, 2, 'Aleksandar', 'Jovanovic', '1984-10-26', '0', '-1', '300'),
(4, 14, 4, 8, 'Krisztián', 'Kuti', '1992-12-04', '-1', '0', '100'),
(5, 9, 3, 10, 'Ulysse', 'Diallo', '1992-10-26', '0', '-1', '250'),
(6, 12, 3, 4, 'Balázs', 'Balogh', '1990-06-11', '-1', '0', '400'),
(7, 33, 3, 7, 'Gábor', 'Molnár', '1994-05-16', '-1', '0', '400'),
(8, 7, 7, 1, 'Tamás', 'Báló', '1984-01-12', '-1', '0', '100'),
(9, 17, 12, 4, 'Máté', 'Pátkai', '1988-03-06', '-1', '0', '750'),
(10, 10, 8, 4, 'Bence', 'Iszlai', '1990-05-29', '-1', '0', '300'),
(11, 28, 2, 12, 'Joseph', 'Paintsil', '1998-02-01', '0', '-1', '400'),
(12, 12, 6, 6, 'Bence', 'Kiss', '1999-07-01', '-1', '0', '150'),
(13, 1, 9, 9, 'Erik', 'Bukrán', '1996-12-06', '-1', '0', '75'),
(14, 71, 11, 2, 'Ádám', 'Orovecz', '1997-10-23', '-1', '0', '50'),
(15, 23, 11, 7, 'Ádám', 'Kovács', '1991-04-14', '-1', '0', '150'),
(16, 27, 1, 7, 'Benedek', 'Murka', '1997-09-10', '-1', '0', '250'),
(17, 19, 9, 8, 'Tibor', 'Nagy', '1991-08-14', '-1', '0', '150'),
(18, 22, 7, 12, 'Áron', 'Fejős', '1997-04-17', '-1', '0', '50'),
(19, 56, 11, 10, 'Miklós', 'Belényesi', '1983-05-15', '-1', '0', '50'),
(20, 1, 3, 9, 'Balázs', 'Tóth', '1997-09-04', '-1', '0', '50'),
(21, 6, 4, 8, 'Balázs', 'Bényei', '1990-01-10', '-1', '0', '250'),
(22, 21, 6, 3, 'Tamás', 'Kiss', '2000-11-24', '-1', '0', '50'),
(23, 25, 4, 10, 'Haris', 'Tabakovic', '1994-06-20', '0', '-1', '250'),
(24, 14, 10, 6, 'Alassane', 'Diallo', '1995-02-19', '0', '-1', '200'),
(25, 94, 7, 10, 'Bence', 'Daru', '1994-06-05', '-1', '0', '125'),
(26, 99, 8, 12, 'Márk', 'Murai', '1996-07-15', '-1', '0', '25'),
(27, 40, 1, 10, 'István', 'Ferenczi', '1977-09-14', '-1', '0', '50'),
(28, 3, 6, 8, 'Dávid', 'Tóth', '1998-07-09', '-1', '0', '100'),
(29, 4, 9, 11, 'Márk', 'Tamás', '1993-10-28', '-1', '0', '300'),
(30, 17, 6, 8, 'Bálint', 'Gaál', '1991-06-14', '-1', '0', '350');

-- --------------------------------------------------------

--
-- Table structure for table `poszt`
--

CREATE TABLE `poszt` (
  `id` int(11) NOT NULL,
  `posztnev` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `poszt`
--

INSERT INTO `poszt` (`id`, `posztnev`) VALUES
(1, 'Kapus'),
(2, 'Jobb hátvéd'),
(3, 'Belső védő'),
(4, 'Bal hátvéd'),
(5, 'Védekező középpályás'),
(6, 'Középső középpályás'),
(7, 'Jobb szélső középpályás'),
(8, 'Támadó középpályás'),
(9, 'Bal szélső középpályás'),
(10, 'Csatár'),
(11, 'Jobb szélső védő'),
(12, 'Szűrő középpályás');

-- --------------------------------------------------------

--
-- Table structure for table `stadion`
--

CREATE TABLE `stadion` (
  `id` int(11) NOT NULL,
  `stadionnev` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `varos` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `ferohely` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `stadion`
--

INSERT INTO `stadion` (`id`, `stadionnev`, `varos`, `ferohely`) VALUES
(1, 'Szusza Ferenc Stadion', 'Budapest', 12462),
(2, 'Albert Stadion', 'Budapest', 22112),
(3, 'Puskás Aréna', 'Budapest', 67889),
(4, 'Nagyerdei Stadion', 'Debrecen', 20340),
(5, 'Bozsik Stadion', 'Budapest', 5000),
(6, 'Haladás Stadion', 'Szombathely', 8990),
(7, 'Fehérvári úti Stadion', 'Paks', 6000),
(8, 'Mezőkövesd Városi Stadion', 'Mezőkövesd', 5000),
(9, 'DVTK Stadion', 'Miskolc', 15000),
(10, 'Újpest Stadion', 'Budapest', 13000),
(11, 'Balmazújváros Stadion', 'Balmazújváros', 2000),
(12, 'MOL Aréna Sóstó', 'Székesfehérvár', 14000);

-- --------------------------------------------------------

--
-- Table structure for table `szponzor`
--

CREATE TABLE `szponzor` (
  `id` int(11) NOT NULL,
  `cegnev` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `telefonszam` varchar(255) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `mennyiseg` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `szponzor`
--

INSERT INTO `szponzor` (`id`, `cegnev`, `email`, `telefonszam`, `mennyiseg`, `created_at`) VALUES
(1, 'adadas', 'adsdadadad@adsadad.com', 'dsadasdsadadsadad', 123, '2024-06-23 15:12:22'),
(2, 'avvxv', 'asdad@adad.com', 'dsadad', 1, '2024-06-23 15:22:32'),
(3, 'asdads', 'adsad@adad.com', 'adasdad', 1, '2024-06-23 15:23:34'),
(4, 'dsadadads', 'adsadad@dadad.com', 'saddsadad', 1, '2024-06-23 15:25:30'),
(5, 'sdsdadads', 'adasdadd@adad.com', 'dsadadad', 1, '2024-06-23 15:30:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klub`
--
ALTER TABLE `klub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labdarugo`
--
ALTER TABLE `labdarugo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poszt`
--
ALTER TABLE `poszt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stadion`
--
ALTER TABLE `stadion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `szponzor`
--
ALTER TABLE `szponzor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `klub`
--
ALTER TABLE `klub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `labdarugo`
--
ALTER TABLE `labdarugo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `poszt`
--
ALTER TABLE `poszt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stadion`
--
ALTER TABLE `stadion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `szponzor`
--
ALTER TABLE `szponzor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
