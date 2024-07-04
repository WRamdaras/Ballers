-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 28 jun 2024 om 00:46
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ballers`
--
CREATE DATABASE IF NOT EXISTS `ballers` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ballers`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `clubs`
--

DROP TABLE IF EXISTS `clubs`;
CREATE TABLE `clubs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `league` varchar(255) NOT NULL,
  `trophy` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `clubs`
--

INSERT INTO `clubs` (`id`, `name`, `created`, `country`, `league`, `trophy`, `img`) VALUES
(1, 'FC Barcelona', '1899', 'Spain', 'La Liga', '95', 'FC-Barcelona.jpg'),
(2, 'Real Madrid CF', '1902', 'Spain', 'La Liga', '93', 'Real-Madrid-CF.jpg'),
(3, 'Manchester United', '1878', 'England', 'Premier League', '66', 'Manchester-United.jpg'),
(4, 'Liverpool FC', '1892', 'England', 'Premier League', '64', 'Liverpool-FC.jpg'),
(5, 'FC Bayern Munich', '1900', 'Germany', 'Bundesliga', '80', 'FC-Bayern-Munich.jpg'),
(6, 'Juventus FC', '1897', 'Italy', 'Serie A', '67', 'Juventus-FC.jpg'),
(7, 'Paris Saint-Germain', '1970', 'France', 'Ligue 1', '44', 'Paris-Saint-Germain.jpg'),
(8, 'Chelsea FC', '1905', 'England', 'Premier League', '33', 'Chelsea-FC.jpg'),
(9, 'AC Milan', '1899', 'Italy', 'Serie A', '49', 'AC-Milan.jpg'),
(10, 'Ajax Amsterdam', '1900', 'Netherlands', 'Eredivisie', '74', 'Ajax-Amsterdam.jpg'),
(11, 'Inter Miami', '2018', 'United States', 'Major League Soccer', '1', 'inter-miami.jpg'),
(12, 'Sporting CP', '1906', 'Portugal', 'Primeira Liga', '18', 'sporting-cp.jpg'),
(13, 'Al-Nassr', '1955', 'Saudi Arabia', 'Saudi Pro League', '9', 'al-nassr.jpg'),
(14, 'AS Monaco', '1924', 'France', 'Ligue 1', '8', 'as-monaco.jpg'),
(15, 'Lech Poznań', '1922', 'Poland', 'Ekstraklasa', '7', 'lech-poznan.jpg'),
(16, 'Borussia Dortmund', '1909', 'Germany', 'Bundesliga', '8', 'borussia-dortmund.jpg'),
(17, 'KRC Genk', '1988', 'Belgium', 'Belgian Pro League', '4', 'krc-genk.jpg'),
(19, 'SV Werder Bremen', '1899', 'Germany', 'Bundesliga', '4', 'sv-werder-bremen.jpg'),
(20, 'Vfl Wolfsburg', '1945', 'Germany', 'Bundesliga', '1', 'vfl-wolfsburg.jpg'),
(21, 'Santos FC', '1912', 'Brazil', 'Campeonato Brasileiro Série A', '8', 'santos-fc.jpg'),
(22, 'GNK Dinamo Zagreb', '1945', 'Croatia', 'Prva HNL', '23', 'gnk-dinamo-zagreb.jpg'),
(23, 'Tottenham Hotspur', '1882', 'England', 'Premier League', '2', 'tottenham-hotspur.jpg'),
(24, 'Sydney FC', '2004', 'Australia', 'A-League', '5', 'sydney-fc.jpg'),
(25, 'Odisha FC', '2014', 'India', 'Indian Super League', '1', 'odisha-fc.jpg'),
(26, 'Al Sadd SC', '1969', 'Qatar', 'Qatar Stars League', '15', 'al-sadd-sc.jpg'),
(27, 'Al-Hilal SFC', '1957', 'Saudi Arabia', 'Saudi Pro League', '18', 'al-hilal-sfc.jpg'),
(28, 'Willem II', '1896', 'Netherlands', 'Eredivisie', '0', 'willem-ii.jpg'),
(29, 'Manchester City', '1880', 'England', 'Premier League', '8', 'manchester-city.jpg'),
(30, 'Padova', '1910', 'Italy', 'Serie C', '0', 'padova.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240528121440', '2024-05-28 14:14:48', 64),
('DoctrineMigrations\\Version20240528121853', '2024-05-28 14:19:00', 48),
('DoctrineMigrations\\Version20240528124052', '2024-05-28 14:40:57', 17),
('DoctrineMigrations\\Version20240528124358', '2024-05-28 14:44:02', 19),
('DoctrineMigrations\\Version20240609105936', '2024-06-09 13:00:09', 58),
('DoctrineMigrations\\Version20240609205828', '2024-06-09 22:58:37', 67),
('DoctrineMigrations\\Version20240610115229', '2024-06-10 13:52:39', 68),
('DoctrineMigrations\\Version20240610124750', '2024-06-10 14:47:54', 24),
('DoctrineMigrations\\Version20240613100350', '2024-06-13 12:04:30', 106),
('DoctrineMigrations\\Version20240618210257', '2024-06-18 23:03:05', 174);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leagues`
--

DROP TABLE IF EXISTS `leagues`;
CREATE TABLE `leagues` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `leagues`
--

INSERT INTO `leagues` (`id`, `name`, `created`, `country`, `img`) VALUES
(1, 'Premier League', '1992', 'England', 'premier-league.jpg'),
(2, 'La Liga', '1929', 'Spain', 'la-liga.jpg'),
(3, 'Serie A', '1898', 'Italy', 'serie-a.jpg'),
(4, 'Bundesliga', '1963', 'Germany', 'bundesliga.jpg'),
(5, 'Ligue 1', '1932', 'France', 'ligue-1.jpg'),
(6, 'Eredivisie', '1956', 'Netherlands', 'eredivisie.jpg'),
(7, 'Super Lig', '1934', 'Turkey', 'super-lig.jpg'),
(8, 'Champions League', '1955', 'Europe', 'champions-league.jpg'),
(9, 'Europa League', '1971', 'Europe', 'europa-league.jpg'),
(10, 'Conference League', '2021', 'Europe', 'conference-league.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `trophy` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `goals` varchar(255) NOT NULL,
  `assists` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `players`
--

INSERT INTO `players` (`id`, `name`, `age`, `nationality`, `team`, `trophy`, `position`, `goals`, `assists`, `img`) VALUES
(1, 'Lionel Messi', '36', 'Argentina', 'Inter Miami', '78', 'Forward', '800', '350', 'lionelmessi.jpg'),
(2, 'Cristiano Ronaldo', '39', 'Portugal', 'Al-Nassr', '67', 'Forward', '820', '230', 'cristianoronaldo.jpg'),
(3, 'Frenkie de Jong', '27', 'Netherlands', 'FC Barcelona', '12', 'Midfielder', '30', '40', 'frenkiedejong.jpg'),
(4, 'Kylian Mbappé', '25', 'France', 'Real Madrid', '24', 'Forward', '200', '110', 'kylianmbappe.jpg'),
(5, 'Robert Lewandowski', '35', 'Poland', 'FC Barcelona', '30', 'Forward', '550', '100', 'robertlewandowski.jpg'),
(6, 'Kevin De Bruyne', '32', 'Belgium', 'Manchester City', '18', 'Midfielder', '120', '180', 'kevindebruyne.jpg'),
(7, 'Neymar Jr', '32', 'Brazil', 'Al-Hilal', '23', 'Forward', '400', '230', 'neymarjr.jpg'),
(8, 'Luka Modrić', '38', 'Croatia', 'Real Madrid', '22', 'Midfielder', '90', '140', 'lukamodric.jpg'),
(9, 'Alessandro Del Piero', '49', 'Italy', 'Retired', '25', 'Forward', '346', '156', 'alessandrodelpiero.jpg'),
(10, 'Xavi Hernández', '44', 'Spain', 'Retired', '33', 'Midfielder', '85', '182', 'xavihernandez.jpg'),
(15, 'Test Test', '20', 'Netherlands', 'FC Barcelona', '100', 'Attacker', '200', '100', 'test.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `players_clubs`
--

DROP TABLE IF EXISTS `players_clubs`;
CREATE TABLE `players_clubs` (
  `players_id` int(11) NOT NULL,
  `clubs_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `players_clubs`
--

INSERT INTO `players_clubs` (`players_id`, `clubs_id`) VALUES
(1, 1),
(1, 7),
(1, 11),
(2, 2),
(2, 3),
(2, 6),
(2, 12),
(2, 13),
(3, 1),
(3, 10),
(3, 28),
(4, 2),
(4, 7),
(4, 14),
(5, 1),
(5, 5),
(5, 15),
(5, 16),
(6, 8),
(6, 17),
(6, 19),
(6, 20),
(6, 29),
(7, 1),
(7, 7),
(7, 21),
(7, 27),
(8, 2),
(8, 22),
(8, 23),
(9, 6),
(9, 24),
(9, 25),
(9, 30),
(10, 1),
(10, 26),
(15, 1),
(15, 2),
(15, 3),
(15, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `player_trophy`
--

DROP TABLE IF EXISTS `player_trophy`;
CREATE TABLE `player_trophy` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `trophy_id` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `player_trophy`
--

INSERT INTO `player_trophy` (`id`, `player_id`, `trophy_id`, `year`) VALUES
(1, 1, 1, 2023),
(2, 1, 2, 2022),
(3, 1, 1, 2021),
(4, 1, 1, 2019),
(5, 1, 1, 2016),
(6, 1, 1, 2013),
(7, 1, 1, 2012),
(8, 1, 1, 2011),
(9, 1, 1, 2009),
(10, 1, 3, 2015),
(11, 1, 3, 2011),
(12, 1, 3, 2009),
(13, 1, 3, 2006),
(14, 1, 7, 2021),
(15, 1, 5, 2016),
(16, 1, 5, 2012),
(17, 1, 5, 2010),
(18, 2, 1, 2017),
(19, 2, 1, 2016),
(20, 2, 1, 2014),
(21, 2, 1, 2013),
(22, 2, 1, 2008),
(23, 2, 3, 2018),
(24, 2, 3, 2017),
(25, 2, 3, 2016),
(26, 2, 3, 2014),
(27, 2, 3, 2008),
(28, 2, 5, 2018),
(29, 2, 5, 2017),
(30, 2, 5, 2015),
(31, 2, 6, 2004),
(32, 2, 10, 2021),
(33, 4, 2, 2018),
(34, 5, 3, 2020),
(35, 5, 5, 2021),
(36, 6, 3, 2023),
(37, 6, 5, 2023),
(38, 6, 6, 2023),
(39, 6, 6, 2019),
(40, 7, 3, 2015),
(41, 7, 5, 2016),
(42, 7, 9, 2011),
(43, 8, 1, 2018),
(44, 8, 3, 2024),
(45, 8, 3, 2022),
(46, 8, 3, 2018),
(47, 8, 3, 2017),
(48, 8, 3, 2016),
(49, 8, 3, 2014),
(50, 8, 5, 2023),
(51, 8, 5, 2018),
(52, 8, 5, 2017),
(53, 8, 5, 2015),
(54, 9, 2, 2006),
(55, 9, 3, 1996),
(56, 9, 5, 1997),
(57, 9, 10, 1995),
(58, 10, 2, 2010),
(59, 10, 3, 2015),
(60, 10, 3, 2011),
(61, 10, 3, 2009),
(62, 10, 3, 2006),
(63, 10, 5, 2012),
(64, 10, 5, 2010);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `trophy`
--

DROP TABLE IF EXISTS `trophy`;
CREATE TABLE `trophy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `trophy`
--

INSERT INTO `trophy` (`id`, `name`, `img`) VALUES
(1, 'Ballon d\'Or', 'ballon-dor.jpg'),
(2, 'FIFA World Cup', 'fifa-world-cup.jpg'),
(3, 'UEFA Champions League', 'uefa-champions-league.jpg'),
(4, 'UEFA Europa League', 'uefa-europa-league.jpg'),
(5, 'UEFA Super Cup', 'uefa-super-cup.jpg'),
(6, 'FA Cup', 'fa-cup.jpg'),
(7, 'Copa America', 'copa-america.jpg'),
(8, 'Africa Cup of Nations', 'africa-cup-of-nations.jpg'),
(9, 'Copa Libertadores', 'copa-libertadores.jpg'),
(10, 'Coppa Italia', 'coppa-italia.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(12, 'admin@admin.com', '[\"ROLE_ADMIN\"]', '$2y$13$HowzyslFgsy8sxEe/jA6RuY9nnnP9X9iVAS.gwyEiAfH9pw6EBF8m', 'Admin', 'Admin'),
(13, 'user@user.com', '[]', '$2y$13$5m.2xETxC7ybkqxHtYVuNe4/DkXWWrBoyS7NFSkDT9SMD7zSyt8nq', 'User', 'User'),
(15, 'employee@employee.com', '[\"ROLE_EMPLOYEE\"]', '$2y$13$Thr9sQkJ/KBntjsW7YciMeE8Ijd73.3UhHnx2qtpZKNi7YVR.CohW', 'employee', 'employee');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `leagues`
--
ALTER TABLE `leagues`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexen voor tabel `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `players_clubs`
--
ALTER TABLE `players_clubs`
  ADD PRIMARY KEY (`players_id`,`clubs_id`),
  ADD KEY `IDX_B8981889F1849495` (`players_id`),
  ADD KEY `IDX_B89818892FC7F5AF` (`clubs_id`);

--
-- Indexen voor tabel `player_trophy`
--
ALTER TABLE `player_trophy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8E2A6C3799E6F5DF` (`player_id`),
  ADD KEY `IDX_8E2A6C37F59AEEEF` (`trophy_id`);

--
-- Indexen voor tabel `trophy`
--
ALTER TABLE `trophy`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT voor een tabel `leagues`
--
ALTER TABLE `leagues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT voor een tabel `player_trophy`
--
ALTER TABLE `player_trophy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT voor een tabel `trophy`
--
ALTER TABLE `trophy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `players_clubs`
--
ALTER TABLE `players_clubs`
  ADD CONSTRAINT `FK_B89818892FC7F5AF` FOREIGN KEY (`clubs_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B8981889F1849495` FOREIGN KEY (`players_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `player_trophy`
--
ALTER TABLE `player_trophy`
  ADD CONSTRAINT `FK_8E2A6C3799E6F5DF` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `FK_8E2A6C37F59AEEEF` FOREIGN KEY (`trophy_id`) REFERENCES `trophy` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
