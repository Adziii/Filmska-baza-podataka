-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2020 at 12:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faks`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `Šifra` int(50) UNSIGNED NOT NULL,
  `Datum početka snimanja` date DEFAULT NULL,
  `Završetak snimanja` date DEFAULT NULL,
  `Budzet` char(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Zanr` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`Šifra`, `Datum početka snimanja`, `Završetak snimanja`, `Budzet`, `Zanr`) VALUES
(1, '2002-04-02', '2002-04-29', '2332323', 'komedija'),
(2, '2003-05-08', '2004-05-09', '235554', 'akcija'),
(3, '2004-06-12', '2007-04-29', '1235554', 'triler'),
(4, '2000-04-05', '2001-09-25', '99999999999', 'drama'),
(5, '2001-04-06', '2002-08-15', '69696969', 'horror'),
(6, '2003-07-10', '2004-04-16', '12456789', 'sci-fi'),
(7, '2002-06-10', '2003-04-29', '22222222', 'kriminalistički'),
(8, '2000-05-06', '2001-04-19', '13', 'dokumentarni');

-- --------------------------------------------------------

--
-- Table structure for table `glumci`
--

CREATE TABLE `glumci` (
  `Šifra` int(50) UNSIGNED NOT NULL,
  `Ime` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prezime` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Datum rođenja` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `glumci`
--

INSERT INTO `glumci` (`Šifra`, `Ime`, `Prezime`, `Datum rođenja`) VALUES
(11, 'Mirko', 'Bubalo', '1990-01-06'),
(12, 'Slavko', 'Mirnić', '1980-02-03'),
(13, 'Domagoj', 'Aubameyang', '1983-03-24'),
(14, 'Josip', 'Milović', '1931-03-03'),
(15, 'Mihael', 'Inić', '1973-08-21'),
(16, 'Ivan', 'Šošić', '1982-10-17'),
(17, 'Mario', 'Milojković', '1992-11-04'),
(18, 'Fanika', 'Jovanović', '1981-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `kaskader`
--

CREATE TABLE `kaskader` (
  `Šifra` int(50) UNSIGNED NOT NULL,
  `Ime` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prezime` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Datum rođenja` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kaskader`
--

INSERT INTO `kaskader` (`Šifra`, `Ime`, `Prezime`, `Datum rođenja`) VALUES
(19, 'Marko', 'Mikić', '1933-06-30'),
(20, 'Sanja', 'Messi', '1983-09-10'),
(21, 'Darija', 'Jukić', '1970-05-21'),
(22, 'Josip', 'Antić', '1991-07-03'),
(23, 'Mihaela', 'Injić', '1944-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `kostimograf`
--

CREATE TABLE `kostimograf` (
  `Šifra` int(50) UNSIGNED NOT NULL,
  `Ime` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prezime` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Datum rođenja` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kostimograf`
--

INSERT INTO `kostimograf` (`Šifra`, `Ime`, `Prezime`, `Datum rođenja`) VALUES
(30, 'Marija', 'Bubalo', '1980-04-04'),
(31, 'Slaven', 'Horvat', '1991-04-18'),
(32, 'Dominko', 'Duvnjak', '1988-07-29'),
(33, 'Josipa', 'Cindrić', '1966-04-02'),
(34, 'Mihovil', 'Stepančić', '1944-03-04'),
(35, 'Ivana', 'Ivić', '1977-08-31'),
(37, 'Matea', 'Musa', '1944-08-27'),
(38, 'Finka', 'Ašanin', '1946-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `lokacija`
--

CREATE TABLE `lokacija` (
  `Šifra` int(50) UNSIGNED NOT NULL,
  `Grad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Drzava` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Kontinent` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokacija`
--

INSERT INTO `lokacija` (`Šifra`, `Grad`, `Drzava`, `Kontinent`) VALUES
(41, 'London', 'Engleska', 'Europa'),
(42, 'Gospić', 'Hrvatska', 'Europa'),
(43, 'New York', 'SAD', 'Amerika'),
(44, 'Daruvar', 'Hrvatska', 'Europa'),
(45, 'Dakar', 'Senegal', 'Afrika'),
(46, 'Las Vegas', 'SAD', 'Amerika'),
(47, 'Miami', 'SAD', 'Amerika'),
(48, 'Frankfurt', 'Njemačka', 'Europa');

-- --------------------------------------------------------

--
-- Table structure for table `redatelj`
--

CREATE TABLE `redatelj` (
  `Šifra` int(50) UNSIGNED NOT NULL,
  `Ime` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prezime` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `redatelj`
--

INSERT INTO `redatelj` (`Šifra`, `Ime`, `Prezime`) VALUES
(51, 'Mirko', 'Ukić'),
(52, 'Anja', 'Zubac'),
(53, 'Domagoja', 'Šakić'),
(54, 'Jelena', 'Bogdanović'),
(55, 'Mirjana', 'Hezonja'),
(56, 'Ivanko', 'Šarić'),
(58, 'Fabijan', 'Slavica');

-- --------------------------------------------------------

--
-- Table structure for table `scenograf`
--

CREATE TABLE `scenograf` (
  `Šifra` int(50) UNSIGNED NOT NULL,
  `Ime` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prezime` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Datum rođenja` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scenograf`
--

INSERT INTO `scenograf` (`Šifra`, `Ime`, `Prezime`, `Datum rođenja`) VALUES
(81, 'Istok', 'Čilić', '1980-04-01'),
(82, 'Filip', 'Dodig', '1979-12-09'),
(83, 'Matej', 'Ćorić', '1971-05-21'),
(84, 'Elias', 'Pavić', '1955-09-24'),
(85, 'Sameul', 'Škugor', '1966-08-26'),
(86, 'Laura', 'Karlović', '1981-08-26'),
(87, 'Leona', 'Mektić', '1970-05-27'),
(88, 'Ana', 'Vekić', '1984-04-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`Šifra`);

--
-- Indexes for table `glumci`
--
ALTER TABLE `glumci`
  ADD PRIMARY KEY (`Šifra`);

--
-- Indexes for table `kaskader`
--
ALTER TABLE `kaskader`
  ADD PRIMARY KEY (`Šifra`);

--
-- Indexes for table `kostimograf`
--
ALTER TABLE `kostimograf`
  ADD PRIMARY KEY (`Šifra`);

--
-- Indexes for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD PRIMARY KEY (`Šifra`);

--
-- Indexes for table `redatelj`
--
ALTER TABLE `redatelj`
  ADD PRIMARY KEY (`Šifra`);

--
-- Indexes for table `scenograf`
--
ALTER TABLE `scenograf`
  ADD PRIMARY KEY (`Šifra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `Šifra` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `glumci`
--
ALTER TABLE `glumci`
  MODIFY `Šifra` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kaskader`
--
ALTER TABLE `kaskader`
  MODIFY `Šifra` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kostimograf`
--
ALTER TABLE `kostimograf`
  MODIFY `Šifra` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `lokacija`
--
ALTER TABLE `lokacija`
  MODIFY `Šifra` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `redatelj`
--
ALTER TABLE `redatelj`
  MODIFY `Šifra` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `scenograf`
--
ALTER TABLE `scenograf`
  MODIFY `Šifra` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
