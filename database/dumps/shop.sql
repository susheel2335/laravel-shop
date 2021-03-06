-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 24. Jan 2022 um 10:29
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.0.13

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `shop`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `authors`
--

INSERT IGNORE INTO `authors` (`id`, `firstname`, `lastname`) VALUES
(1, 'Mic', 'Lennie'),
(2, 'Mildrid', 'Oger'),
(3, 'Isaak', 'Yakubov'),
(4, 'Gussy', 'Kellard'),
(5, 'Isidoro', 'Lambert'),
(6, 'Morganne', 'Milton-White'),
(7, 'Skye', 'Shovelton'),
(8, 'Ingra', 'Cowderay'),
(9, 'Juliet', 'Polo'),
(10, 'Lion', 'Lambeth'),
(11, 'Powell', 'Maccrie'),
(12, 'Mathias', 'Bixley'),
(13, 'Iolanthe', 'Selley'),
(14, 'Alys', 'Bickford'),
(15, 'Care', 'Mailes'),
(16, 'Tommie', 'Joselson'),
(17, 'Walther', 'Anchor'),
(18, 'Isa', 'Fernley'),
(19, 'Domenico', 'Sewards'),
(20, 'Nissa', 'Buttwell'),
(21, 'Sherri', 'Flewin'),
(22, 'Merry', 'Baugham'),
(23, 'Rosanna', 'Glazebrook'),
(24, 'Juliane', 'Tipper'),
(25, 'Cornie', 'Eicheler'),
(26, 'Jarib', 'Schubart'),
(27, 'Daven', 'Reggler'),
(28, 'Coral', 'Stalley'),
(29, 'Earvin', 'Tregiddo'),
(30, 'Cecile', 'Springate'),
(31, 'Alver', 'Ladbury'),
(32, 'Chris', 'MacCawley'),
(33, 'Emmet', 'Keave'),
(34, 'Bryant', 'Gyngell'),
(35, 'Ealasaid', 'Plante'),
(36, 'Naomi', 'Willshaw'),
(37, 'Cal', 'Kordovani'),
(38, 'Shayla', 'Shenton'),
(39, 'Shurwood', 'Jacox'),
(40, 'Julina', 'Cram'),
(41, 'Jyoti', 'Ericsson'),
(42, 'Giuseppe', 'Kither'),
(43, 'Carolin', 'Avard'),
(44, 'Beatrisa', 'Vanyushin'),
(45, 'Billy', 'Astbery'),
(46, 'Garek', 'Fahy'),
(47, 'Ulrick', 'Dally'),
(48, 'Anna', 'Grzelak'),
(49, 'Isacco', 'Extall'),
(50, 'Maddalena', 'Eagar'),
(51, 'Bernd', 'Engels');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `blogs`
--

INSERT IGNORE INTO `blogs` (`id`, `title`, `body`) VALUES
(1, 'Mein erster Blog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sint modo partes vitae beatae. Hunc vos beatum; Qua tu etiam inprudens utebare non numquam. Tu quidem reddes; Si longus, levis dictata sunt. Duo Reges: constructio interrete. <br />\r\n<br />\r\nTu quidem reddes; Ea possunt paria non esse. Si quae forte-possumus. Est enim effectrix multarum et magnarum voluptatum. Non laboro, inquit, de nomine. Cave putes quicquam esse verius. <br />\r\n<br />\r\nDuo enim genera quae erant, fecit tria. Quid, de quo nulla dissensio est? Egone quaeris, inquit, quid sentiam? Quae sequuntur igitur? Ne in odium veniam, si amicum destitero tueri. Quod iam a me expectare noli. <br />\r\n<br />\r\nSed fac ista esse non inportuna; Et quod est munus, quod opus sapientiae? Summae mihi videtur inscitiae. Egone quaeris, inquit, quid sentiam? <br />\r\n<br />\r\nNegat esse eam, inquit, propter se expetendam. Omnia contraria, quos etiam insanos esse vultis. Unum est sine dolore esse, alterum cum voluptate. Falli igitur possumus. Et quidem, inquit, vehementer errat; Qui est in parvis malis.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `categories`
--

INSERT IGNORE INTO `categories` (`id`, `name`) VALUES
(1, 'Fahrräder'),
(2, 'Rahmen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE `features` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `features`
--

INSERT IGNORE INTO `features` (`id`, `title`, `body`) VALUES
(1, 'Neues Feature', 'alles super.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `manufacturers`
--

INSERT IGNORE INTO `manufacturers` (`id`, `name`, `description`) VALUES
(1, 'Diamant', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eos veniam<br />\r\nsunt quam, nesciunt amet voluptatem doloremque vero, dolore a modi<br />\r\nconsequuntur dolorem? Est architecto nisi dolorem expedita ducimus<br />\r\nassumenda eligendi.        '),
(2, 'Mifa', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eos veniam\r\nsunt quam, nesciunt amet voluptatem doloremque vero, dolore a modi\r\nconsequuntur dolorem? Est architecto nisi dolorem expedita ducimus\r\nassumenda eligendi.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `migrations`
--

INSERT IGNORE INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int(11) UNSIGNED NOT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `movies`
--

INSERT IGNORE INTO `movies` (`id`, `author_id`, `title`, `price`, `created_at`, `updated_at`) VALUES
(1, 43, 'Conserva Acabada', '30.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(2, 4, 'Champion', '13.70', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(3, 17, 'Mother Carey\'s Chickens', '10.17', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(4, 3, 'Gardens of Stone', '31.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(5, 7, 'The Monkey King', '14.11', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(6, 6, 'Stonewall Uprising', '30.28', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(7, 35, 'Halloween', '5.70', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(8, 34, 'Mentor', '47.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(9, 44, 'Patton', '48.70', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(10, 29, 'Koruto wa ore no pasupooto (Colt Is My Passport, A)', '8.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(11, 32, 'Killings at Outpost Zeta, The', '6.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(12, 30, 'Carmen Comes Home (Karumen kokyo ni kaeru)', '48.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(13, 7, 'Saturn 3', '19.97', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(14, 9, 'Informant', '17.55', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(15, 37, 'Sweet Home Alabama', '46.23', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(16, 18, 'Red Like the Sky (Rosso come il cielo)', '29.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(17, 22, 'Blackbird', '18.38', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(18, 4, 'Queen Bee', '33.84', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(19, 13, 'West (Occident)', '28.62', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(20, 1, 'Citizen Gangster ', '40.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(21, 10, 'Suddenly, Last Summer', '37.55', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(22, 50, 'Stranger, The', '30.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(23, 30, 'Man I Love, The', '19.69', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(24, 39, 'Grandpa for Christmas, A (Bert & Becca)', '15.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(25, 10, 'Stick', '19.18', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(26, 38, 'Wedding Song, The ', '17.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(27, 33, 'Defying Gravity', '11.28', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(28, 8, 'Sea Inside, The (Mar adentro)', '19.28', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(29, 3, 'Daniel Deronda', '41.36', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(30, 23, 'Child Bride', '42.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(31, 2, 'Gods and Generals', '8.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(32, 27, 'Two Friends', '45.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(33, 41, 'Yesterday Was a Lie', '37.70', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(34, 20, 'Dark Victory', '26.61', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(35, 20, 'Thoroughbreds Don\'t Cry', '13.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(36, 22, 'Lord Jim', '24.90', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(37, 42, 'Drillbit Taylor', '28.84', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(38, 41, 'Viva', '38.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(39, 13, 'Grave, The', '13.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(40, 19, '50 Worst Movies Ever Made, The', '15.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(41, 8, 'Woman\'s Secret, A', '20.88', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(42, 1, 'Foxes', '12.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(43, 42, 'Beslan: Three Days in September', '46.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(44, 4, 'Wings of the Dove, The', '35.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(45, 3, 'Scott Walker: 30 Century Man', '22.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(46, 25, 'Hands Off the Loot (Touchez pas au grisbi)', '48.79', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(47, 2, 'Coffin Rock', '25.76', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(48, 1, 'Inadequate People (Neadekvatnye lyudi)', '24.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(49, 8, 'Ewoks: The Battle for Endor', '36.02', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(50, 14, 'Churchill: The Hollywood Years', '10.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(51, 46, 'Monsignor', '46.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(52, 13, 'Asphalt Playground (La citÃ© rose)', '10.85', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(53, 46, 'Absolon', '21.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(54, 37, 'Emma\'s Bliss (Emmas GlÃ¼ck)', '44.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(55, 32, 'MÃ©lo', '38.40', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(56, 50, 'I Hate Christian Laettner', '43.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(57, 12, 'Zombie Girl: The Movie', '47.87', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(58, 12, 'Osmosis (Osmose)', '41.90', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(59, 16, 'Kid from Brooklyn, The', '41.14', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(60, 34, 'Worthless, The (Arvottomat)', '5.69', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(61, 15, 'Doughboys', '17.66', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(62, 44, 'Boy Eats Girl', '46.23', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(63, 22, 'Sling Blade', '39.15', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(64, 25, 'Pathetic Fallacy (Ajantrik)', '28.19', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(65, 8, 'Passion Flower', '7.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(66, 34, 'Woodstock Diary', '5.03', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(67, 48, 'Loneliest Planet, The', '33.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(68, 5, 'Luzhin Defence, The', '16.29', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(69, 34, 'Kedma', '21.88', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(70, 29, 'The Hire: Ambush', '6.97', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(71, 35, 'Lost in Thailand (Ren zai jiong tu zhi tai jiong)', '24.96', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(72, 32, 'Cronos', '20.67', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(73, 39, 'Sheepman, The', '43.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(74, 7, 'Mitt', '22.43', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(75, 37, 'Tarda estate', '9.95', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(76, 28, 'Armour of God (Long xiong hu di)', '11.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(77, 49, 'Zach Galifianakis: Live at the Purple Onion', '37.14', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(78, 29, 'Aces \'N\' Eights', '21.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(79, 11, 'Vizontele', '17.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(80, 22, 'The Man They Could Not Hang', '8.47', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(81, 27, 'For Queen and Country', '17.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(82, 45, 'Chasing Sleep', '45.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(83, 12, 'Cowards Bend the Knee (a.k.a. The Blue Hands)', '30.54', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(84, 39, 'The Virginian', '12.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(85, 33, 'These Three', '6.28', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(86, 26, 'Summer of \'62 (Cartouches gauloises)', '39.17', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(87, 22, 'Stranger in Town, A', '11.68', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(88, 13, 'Everybody\'s Acting', '21.38', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(89, 43, 'Tuesdays with Morrie', '18.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(90, 36, 'Revenge of the Nerds II: Nerds in Paradise', '26.03', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(91, 9, 'Enemies Closer', '27.84', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(92, 5, 'Little Big Man', '20.36', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(93, 31, 'Lawnmower Man, The', '26.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(94, 27, 'Machine That Kills Bad People, The (La Macchina Ammazzacattivi)', '48.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(95, 47, 'Family United (La gran familia espaÃ±ola)', '49.24', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(96, 2, 'Batman: Mask of the Phantasm', '32.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(97, 2, 'Ghost Ship, The', '35.65', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(98, 40, 'Man, Woman and the Wall (Kikareta onna no mirareta yoru)', '10.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(99, 46, 'Shivers (They Came from Within)', '16.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(100, 12, 'Welcome to the Sticks (Bienvenue chez les Ch\'tis)', '29.84', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(101, 36, 'Vertical Limit', '15.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(102, 40, 'Dallas: War of the Ewings', '31.60', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(103, 36, 'Layer Cake', '22.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(104, 30, 'Louise-Michel', '47.31', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(105, 22, 'Back to Bataan', '13.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(106, 4, 'Endgame', '18.03', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(107, 3, 'Young Again', '28.54', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(108, 8, 'Event, The', '19.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(109, 30, 'Lifeboat', '35.73', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(110, 22, 'My Little Pony: Equestria Girls', '46.28', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(111, 49, 'Fever', '9.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(112, 9, 'Mosaic', '41.69', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(113, 33, 'BeyoncÃ©: Life Is But a Dream', '11.67', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(114, 1, 'Let Him Have It', '5.62', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(115, 5, 'Fire and Ice', '34.38', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(116, 39, 'Glass Agency, The (Ajans-E Shisheh-I)', '15.78', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(117, 22, '40 Pounds of Trouble', '42.88', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(118, 41, 'What Planet Are You From?', '38.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(119, 31, 'Life Before Her Eyes, The', '42.41', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(120, 41, 'At Middleton', '36.68', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(121, 18, 'He Loves Me... He Loves Me Not (Ã la folie... pas du tout)', '9.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(122, 4, 'Creature from the Haunted Sea', '26.32', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(123, 41, 'The Garden of Sinners - Chapter 5: Paradox Paradigm', '32.06', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(124, 38, 'Alien Nation', '36.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(125, 40, 'Huey P. Newton Story, A', '31.61', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(126, 7, 'Sebastian Maniscalco: What\'s Wrong with People?', '26.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(127, 3, 'Night Listener, The', '39.96', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(128, 18, 'No God, No Master', '33.54', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(129, 2, 'Breaking Up', '35.15', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(130, 20, 'Messiah of Evil', '45.37', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(131, 37, 'Village of the Giants', '35.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(132, 50, 'Master of the Universe', '16.74', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(133, 11, 'Hallelujah!', '5.72', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(134, 18, 'Above the Rim', '18.70', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(135, 16, 'Grind', '20.74', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(136, 30, 'Watch Out, We\'re Mad (...Altrimenti ci arrabbiamo!)', '28.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(137, 28, 'Ruthless People', '23.22', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(138, 29, 'Fists in the Pocket (Pugni in tasca, I)', '29.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(139, 34, 'Doctor Who: The Time of the Doctor', '11.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(140, 38, 'Fathom', '36.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(141, 20, 'Norma Jean & Marilyn', '40.24', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(142, 13, 'Secret of the Wings', '18.57', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(143, 24, 'Urgh! A Music War', '39.89', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(144, 9, 'Man from Planet X, The', '43.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(145, 19, 'Abraham Lincoln: Vampire Hunter', '33.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(146, 35, 'Jailhouse Rock', '42.62', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(147, 40, 'House Built on Water, A (Khanei ruye ab)', '15.40', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(148, 42, 'Righteous Kill', '13.66', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(149, 16, 'Monster Club, The', '12.27', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(150, 23, 'Informant', '31.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(151, 31, 'Kippur', '12.87', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(152, 35, 'Street Fighter, The (Gekitotsu! Satsujin ken)', '40.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(153, 27, 'Bill Cunningham New York', '38.41', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(154, 19, 'Shot in the Heart', '32.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(155, 45, 'Primeval', '23.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(156, 30, 'Razortooth', '46.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(157, 2, 'Howling, The', '11.30', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(158, 11, 'Violet Tendencies', '19.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(159, 22, 'Arc', '10.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(160, 32, 'Big Heat, The', '16.53', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(161, 18, 'Rage, The', '35.28', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(162, 41, 'Enigma of Kaspar Hauser, The (a.k.a. Mystery of Kaspar Hauser, The) (Jeder fÃ¼r sich und Gott Gegen ', '44.31', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(163, 12, '31 North 62 East', '29.23', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(164, 24, 'I Was Born, But... (a.k.a. Children of Tokyo) (Otona no miru ehon - Umarete wa mita keredo)', '33.74', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(165, 7, 'Maid to Order', '45.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(166, 1, 'Kung Phooey!', '47.87', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(167, 50, 'Exotica', '24.14', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(168, 18, 'Ballroom, The (Chega de Saudade)', '12.50', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(169, 33, 'Laid To Rest', '39.18', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(170, 22, 'Seed of Chucky (Child\'s Play 5)', '27.70', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(171, 46, 'Big Red One, The', '6.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(172, 11, 'Bring Me the Head of Alfredo Garcia', '47.74', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(173, 40, 'Rooster\'s Breakfast (Petelinji zajtrk)', '23.15', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(174, 39, 'Embalmer, The (Imbalsamatore, L\')', '7.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(175, 24, 'Proposition, The', '48.65', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(176, 47, 'Water for Elephants', '33.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(177, 37, 'Siberia', '39.22', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(178, 15, 'Black Moon', '39.02', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(179, 50, 'Supporting Characters', '38.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(180, 43, 'Confiance rÃ¨gne, La', '22.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(181, 38, 'Evidence of Blood', '13.43', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(182, 49, 'Disappearance of Haruhi Suzumiya, The (Suzumiya Haruhi no shÃ´shitsu)', '32.39', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(183, 12, 'Sun Also Rises, The', '22.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(184, 16, 'Belle Starr', '15.99', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(185, 42, 'Unknown Known, The', '28.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(186, 23, 'Watchers', '16.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(187, 10, 'Enough', '12.03', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(188, 43, 'Beastly', '26.41', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(189, 32, 'A Most Violent Year', '18.55', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(190, 8, 'Report on the Party and the Guests, A (O slavnosti a hostech)', '16.19', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(191, 30, 'Express, The', '26.84', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(192, 47, 'Destroyer', '31.57', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(193, 9, 'Satan Never Sleeps', '23.11', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(194, 49, 'Twin Falls Idaho', '14.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(195, 38, 'American Boy: A Profile of: Steven Prince', '27.50', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(196, 13, 'Crime Wave', '44.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(197, 12, 'Confessions (Kokuhaku)', '47.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(198, 20, 'Kings of Summer, The', '11.74', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(199, 16, 'Final Cut, The', '28.74', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(200, 17, 'American Winter', '38.53', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(201, 49, 'Bird on a Wire', '10.17', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(202, 47, 'Dorian Gray', '40.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(203, 8, 'War Is Over, The (Guerre est finie, La)', '8.09', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(204, 33, 'Normal Life', '46.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(205, 10, 'Calvary', '23.54', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(206, 34, 'Safe House', '44.99', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(207, 4, 'Season of the Witch (Hungry Wives) (Jack\'s Wife)', '48.88', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(208, 11, 'Sea Gull, The', '18.97', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(209, 41, 'Hugo', '34.30', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(210, 31, 'Seven Angry Men', '26.36', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(211, 33, 'Someday This Pain Will Be Useful to You', '25.07', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(212, 19, 'Ernest Goes to School', '26.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(213, 6, 'Wilder Napalm', '31.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(214, 49, 'Love Is the Devil', '6.81', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(215, 33, 'Bottom of the Sea, The (El fondo del mar)', '8.54', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(216, 36, 'Believer, The', '33.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(217, 44, 'Traveller', '34.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(218, 12, 'Sign of Four, The', '32.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(219, 27, 'Ã l\'aventure', '49.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(220, 26, 'Batman & Mr. Freeze: Subzero', '12.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(221, 47, 'Jinxed!', '46.54', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(222, 49, 'Hollywood Homicide', '5.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(223, 1, 'Parenthood', '14.47', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(224, 16, 'Drums Along the Mohawk', '45.32', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(225, 5, 'Boomerang', '14.47', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(226, 9, 'And Soon the Darkness', '20.88', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(227, 13, 'The Loyal 47 Ronin', '23.06', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(228, 42, 'Day of the Dead', '45.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(229, 26, 'Bandit Queen', '10.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(230, 23, 'Sea Hawk, The', '15.99', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(231, 7, 'Gun in Betty Lou\'s Handbag, The', '18.11', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(232, 49, 'Count Three and Pray', '24.76', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(233, 21, 'Tarnished Angels, The', '23.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(234, 40, 'About Time', '39.76', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(235, 36, 'Clifford\'s Really Big Movie', '46.37', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(236, 50, 'Anna and the King', '22.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(237, 18, 'Tempest, The', '29.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(238, 1, 'Still Crazy', '31.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(239, 13, 'Kickboxer 4: The Aggressor', '45.30', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(240, 46, 'Human Behavior Experiments, The', '23.66', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(241, 11, 'Burn! (Queimada)', '36.43', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(242, 26, 'The Dark Knight', '17.47', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(243, 39, 'Lilting', '41.96', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(244, 48, 'Stand Up Guys', '10.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(245, 38, 'Thrashin\'', '13.65', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(246, 41, 'Rebound', '7.95', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(247, 19, 'Wu Tang Master (Tian shi zhuang xie)', '35.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(248, 24, 'Daddy Long Legs', '12.14', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(249, 43, 'Pursuit of Happiness, The', '22.90', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(250, 37, 'L\'enfance nue (Naked Childhood)', '37.49', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(251, 39, 'Confessions of a Driving Instructor', '8.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(252, 3, '111911 (Xinhai geming)', '28.24', '2019-10-28 20:16:44', '2019-11-13 09:30:11'),
(253, 25, '(Absolutions) Pipilotti\'s Mistakes ((Entlastungen) Pipilottis Fehler)', '32.64', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(254, 13, 'Ironclad', '42.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(255, 48, 'FC Venus', '12.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(256, 40, 'Hatchet', '26.76', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(257, 37, 'The Deep Six', '22.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(258, 34, 'Mona Lisa', '11.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(259, 8, 'House of Branching Love, The (Haarautuvan rakkauden talo)', '47.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(260, 33, 'Let My Puppets Come', '17.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(261, 15, 'Class of Nuke \'Em High Part II: Subhumanoid Meltdown', '17.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(262, 15, 'Cabinet of Caligari, The', '11.25', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(263, 9, 'Moonlight and Valentino', '45.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(264, 46, 'Broadway Idiot', '25.25', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(265, 13, 'Last Broadcast, The', '9.86', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(266, 21, 'Space Cowboys', '42.27', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(267, 11, 'Dog Pound', '24.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(268, 50, 'Men Cry Bullets', '45.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(269, 47, 'My Winnipeg', '14.14', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(270, 2, 'Perils of Gwendoline in the Land of the Yik Yak, The', '33.30', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(271, 31, 'Chicago Cab (a.k.a. Hellcab)', '39.74', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(272, 25, 'Freddy Got Fingered', '36.74', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(273, 37, 'Inuyasha the Movie: The Castle Beyond the Looking Glass', '36.72', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(274, 22, 'Place in the Sun, A (En plats i solen)', '35.39', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(275, 2, 'Lincoln', '7.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(276, 18, 'Pale Cocoon (Peiru Kokun)', '12.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(277, 29, 'Kwaidan (Kaidan)', '5.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(278, 3, 'Utopia', '25.41', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(279, 40, 'Stations of the Cross', '35.19', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(280, 39, 'Fright Night', '5.64', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(281, 50, 'Old Dark House, The', '11.85', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(282, 36, 'Nymphomaniac: Volume II', '30.62', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(283, 24, 'Purpose', '30.39', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(284, 17, 'Karate-Robo Zaborgar (Denjin ZabÃ´gÃ¢)', '13.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(285, 11, 'Very Brady Sequel, A', '39.67', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(286, 1, 'Wiz, The', '6.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(287, 5, 'Dark Mirror, The', '22.09', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(288, 46, 'Expendables 2, The', '11.06', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(289, 3, 'Two Queens and One Consort (Twee vorstinnen en een vorst)', '30.37', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(290, 46, 'Frighteners, The', '48.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(291, 30, 'Love Parade, The', '5.18', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(292, 47, 'Let\'s Kill Ward\'s Wife', '35.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(293, 32, '6ixtynin9 (Ruang Talok 69)', '34.50', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(294, 5, 'Merrily We Live', '10.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(295, 4, 'Twilight Saga: Eclipse, The', '15.25', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(296, 15, 'Ticker', '16.57', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(297, 4, 'Love Is All You Need (Den skaldede frisÃ¸r)', '26.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(298, 19, 'Pink Cadillac', '9.83', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(299, 7, 'W.C. Fields and Me', '19.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(300, 9, 'Zen', '42.43', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(301, 8, 'Entertainer, The', '37.95', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(302, 26, 'Planes: Fire & Rescue', '19.38', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(303, 21, 'Fire in Castilla (Tactilvision from the Moor of the Fright)', '44.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(304, 21, 'American Loser (Trainwreck: My Life as an Idiot)', '46.27', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(305, 19, 'Jurassic Park', '39.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(306, 33, 'Hard Ticket to Hawaii', '7.47', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(307, 50, 'Swan, The', '17.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(308, 6, 'Protector, The', '21.77', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(309, 7, 'Trails (Veredas)', '33.40', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(310, 3, 'Up the Down Staircase', '32.15', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(311, 24, 'World of Suzie Wong, The', '15.44', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(312, 32, 'Delhi Belly', '30.85', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(313, 35, 'Bongwater', '34.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(314, 2, 'Saints and Soldiers: The Void', '41.27', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(315, 26, 'Shanghai', '24.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(316, 39, 'Blame It on the Bellboy', '40.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(317, 41, 'Bat*21', '46.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(318, 1, 'After the Wedding (Efter brylluppet)', '37.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(319, 16, 'Day\'s Pleasure, A (Ford Story, A)', '18.77', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(320, 22, 'Pirates of Silicon Valley', '45.87', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(321, 38, 'Pet Sematary II', '13.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(322, 9, 'Love Hina Spring Special', '5.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(323, 41, 'Stranger in Town, A', '27.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(324, 44, 'Meteor Man, The', '15.89', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(325, 17, 'Deadly Advice', '34.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(326, 32, 'Pocket Money', '13.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(327, 11, 'Hush!', '21.70', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(328, 10, 'Frisco Jenny', '16.70', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(329, 35, 'This Above All', '35.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(330, 37, 'Taxidermia', '8.50', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(331, 17, 'Shoah', '42.11', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(332, 9, 'Final: The Rapture', '17.90', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(333, 12, 'Transformers: Dark of the Moon', '30.56', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(334, 50, 'Dead in the Water', '22.19', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(335, 18, 'Fire in the Sky', '16.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(336, 2, 'Valley, The (Obscured by Clouds) (La vallÃ©e)', '9.60', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(337, 14, 'Eden of the East the Movie I: The King of Eden (Higashi no Eden Gekijoban)', '16.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(338, 27, 'Breaks, The', '23.88', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(339, 34, 'It\'s a Wonderful Life', '40.56', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(340, 41, 'Blue Like Jazz', '10.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(341, 26, 'Phantom Tollbooth, The', '42.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(342, 38, 'Zipper', '18.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(343, 30, 'Judgement Day', '6.18', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(344, 17, 'Submarine', '45.81', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(345, 29, 'Sugar Hill', '7.54', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(346, 21, 'Fiendish Plot of Dr. Fu Manchu, The', '27.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(347, 50, 'Telling Lies in America', '27.11', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(348, 20, 'Orgazmo', '27.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(349, 10, 'Salome\'s Last Dance', '26.15', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(350, 50, 'How I Live Now', '47.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(351, 49, 'Ocean\'s Twelve', '19.29', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(352, 32, '8 Seconds', '37.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(353, 16, 'The Periwig-Maker', '21.17', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(354, 44, 'Bubble Boy', '43.53', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(355, 20, 'Chris Rock: Bring the Pain', '10.01', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(356, 4, 'All That... for This?!', '42.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(357, 8, 'Evangelion: 3.0 You Can (Not) Redo', '19.99', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(358, 5, 'Keyhole', '41.61', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(359, 30, 'Ace in the Hole (Big Carnival, The)', '31.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(360, 34, 'Boys, Les', '29.90', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(361, 14, 'My Girlfriend Is an Agent (Chilgeup gongmuwon)', '12.60', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(362, 14, 'Bangkok Dangerous', '18.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(363, 6, 'Hearty Paws', '27.47', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(364, 12, 'DeadHeads', '12.69', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(365, 11, 'When Brendan Met Trudy', '38.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(366, 50, 'Executive Action', '5.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(367, 28, 'Faithless', '42.64', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(368, 37, 'Pinky', '46.17', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(369, 27, 'My Brother Is an Only Child (Mio fratello Ã¨ figlio unico)', '26.40', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(370, 44, 'Deadbolt', '26.53', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(371, 33, 'Island of Lost Souls', '12.78', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(372, 23, 'Hearts of Darkness: A Filmmakers Apocalypse', '23.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(373, 15, 'Crocodile Dundee II', '48.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(374, 22, 'Bait', '49.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(375, 45, 'Better Tomorrow, A (Ying hung boon sik)', '40.15', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(376, 29, 'Pom Poko (a.k.a. Raccoon War, The) (Heisei tanuki gassen pompoko)', '26.56', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(377, 10, 'Veronika Voss (Sehnsucht der Veronika Voss, Die)', '24.02', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(378, 27, 'Rocket, The (a.k.a. Maurice Richard)', '16.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(379, 34, 'Watch, The', '16.57', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(380, 25, 'Rink, The', '22.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(381, 39, 'Ring of Bright Water', '22.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(382, 34, 'White Mane (Crin blanc: Le cheval sauvage)', '48.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(383, 21, '\'Hellboy\': The Seeds of Creation', '9.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(384, 11, 'Space', '28.02', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(385, 44, 'Debut, The', '22.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(386, 11, 'Guilt Trip, The', '33.24', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(387, 23, 'Goliath Awaits', '26.83', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(388, 40, 'Hotel Very Welcome', '37.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(389, 4, 'Bleak Moments', '36.78', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(390, 48, 'Trailer Park of Terror', '44.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(391, 14, 'Nightmare', '37.84', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(392, 1, 'Madagascar: Escape 2 Africa', '47.50', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(393, 41, 'American Flyers', '48.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(394, 40, 'Manhunt', '37.22', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(395, 9, 'Just Buried', '43.09', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(396, 39, 'Enemies: A Love Story', '39.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(397, 5, 'Shaolin Temple 2: Kids from Shaolin (Shao Lin xiao zi) (Kids from Shaolin)', '42.01', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(398, 23, 'Axed', '8.39', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(399, 31, 'Safe', '36.37', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(400, 10, 'Lost Boys: The Thirst', '15.28', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(401, 14, 'Tears of Steel', '49.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(402, 11, 'Trojan War', '7.85', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(403, 12, 'Bedroom Window, The', '15.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(404, 2, 'Facing Ali', '48.27', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(405, 44, 'Car Bonus (Autobonus)', '44.96', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(406, 48, 'V/H/S', '41.72', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(407, 4, 'Hypothesis of the Stolen Painting, The (L\'hypothÃ¨se du tableau volÃ©)', '22.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(408, 8, 'Sorority Wars', '29.92', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(409, 36, 'Please Remove Your Shoes ', '45.62', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(410, 3, 'Kill the Irishman', '16.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(411, 48, 'Kabul Express', '20.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(412, 22, 'Loose Cannons (Mine vaganti)', '9.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(413, 29, 'How to Stop Being a Loser', '34.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(414, 20, 'Carne de gallina (Chicken Skin)', '6.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(415, 44, 'Bad News Bears', '40.38', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(416, 30, 'Mrs. Pollifax-Spy', '48.60', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(417, 45, 'My Dear Desperado', '46.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(418, 14, 'Slither', '11.86', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(419, 24, 'Blast', '16.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(420, 1, 'Neverwhere', '24.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(421, 16, 'To Each His Own', '40.64', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(422, 26, 'Amish Murder, An', '35.56', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(423, 9, 'The Possession of Michael King', '44.68', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(424, 23, 'Hannie Caulder', '19.76', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(425, 47, 'Night of the Running Man', '22.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(426, 8, 'Great Beauty, The (Grande Bellezza, La)', '29.27', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(427, 46, 'Walker', '21.73', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(428, 11, 'Maya Lin: A Strong Clear Vision', '17.29', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(429, 17, 'Rize', '42.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(430, 22, 'Civil Brand', '8.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(431, 33, 'Shrek', '28.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(432, 4, 'Wheels on Meals (Kuai can che)', '7.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(433, 24, 'Come and Get It', '28.23', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(434, 45, 'Involuntary (De ofrivilliga)', '45.25', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(435, 36, 'Comradeship (Kameradschaft)', '31.06', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(436, 35, 'Classic, The (Klassikko)', '37.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(437, 13, 'Book of Fate, The (Kohtalon kirja)', '43.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(438, 48, 'O Ãltimo Mergulho', '24.43', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(439, 19, 'Ascent of Money, The', '35.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(440, 22, 'Burnt Money (Plata Quemada)', '40.18', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(441, 15, 'An American Tail: The Treasure of Manhattan Island', '8.37', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(442, 19, 'Lethal Weapon', '46.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(443, 30, 'Rainmaker, The', '19.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(444, 13, 'Intimate Relations', '44.07', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(445, 19, 'MisÃ©rables, Les', '43.81', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(446, 21, 'Brief Encounter', '31.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(447, 28, 'White Lightnin\'', '48.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(448, 40, 'Strongest Man in the World, The', '23.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(449, 28, 'The Great Alligator', '14.49', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(450, 47, 'John Mulaney: New In Town', '29.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(451, 44, 'Short Film About John Bolton, A', '34.01', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(452, 48, 'Cross of Iron', '9.03', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(453, 25, 'Dante\'s Inferno', '50.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(454, 26, 'Samurai Spy (Ibun Sarutobi Sasuke)', '46.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(455, 45, 'Coven', '35.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(456, 27, 'Pickup on South Street', '20.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(457, 46, 'Above Suspicion', '38.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(458, 3, 'Osmosis Jones', '25.07', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(459, 10, 'Summer in Berlin (Sommer vorm Balkon)', '36.67', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(460, 25, 'Woman Rebels, A (Portrait of a Rebel)', '47.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(461, 31, 'Lahore', '9.66', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(462, 23, 'Magic Camp', '45.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(463, 23, 'Almost Married', '15.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(464, 12, 'Lion of the Desert', '49.51', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(465, 22, 'Addams Family Reunion', '17.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(466, 13, 'Evil of Frankenstein, The', '37.85', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(467, 16, 'Aks', '38.11', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(468, 13, 'Ernest Rides Again', '41.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(469, 16, 'Night Across the Street (La noche de enfrente)', '24.18', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(470, 22, 'Another Gay Movie', '47.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(471, 10, 'Just an American Boy', '6.41', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(472, 15, 'Sign of Leo, The (Signe du lion, Le)', '17.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(473, 13, 'Apostle, The', '16.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(474, 28, 'Place at the Table, A', '15.87', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(475, 38, 'Combien Tu M\'aimes? (How Much Do You Love Me?)', '21.51', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(476, 2, 'Suit for Wedding, A (a.k.a. The Wedding Suit) (Lebassi Baraye Arossi)', '35.40', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(477, 39, 'No Man\'s Land', '9.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(478, 46, 'The Inspector', '40.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(479, 24, 'Sarah Silverman:  We Are Miracles', '17.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(480, 1, 'Suicide Club (Jisatsu saakuru)', '37.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(481, 11, 'Urban Justice', '11.18', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(482, 15, 'Hoot', '48.99', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(483, 29, 'Lawless Range', '33.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(484, 34, 'Ann Carver\'s Profession', '5.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(485, 42, 'He Ran All the Way', '27.02', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(486, 5, 'Taking of Pelham 1 2 3, The', '39.81', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(487, 31, 'Nevada Smith', '13.49', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(488, 2, 'Pom Poko (a.k.a. Raccoon War, The) (Heisei tanuki gassen pompoko)', '19.36', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(489, 30, 'What! No Beer?', '8.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(490, 33, 'Lady Chatterley', '36.54', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(491, 19, 'Hawk Is Dying, The', '27.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(492, 17, 'Kvarteret Skatan reser till Laholm', '16.73', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(493, 27, 'Game of Chance (Onnenpeli)', '6.06', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(494, 4, 'Rowing with the Wind (Remando al viento)', '6.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(495, 22, 'Kill Your Darlings', '28.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(496, 17, 'Wrestler, The', '43.27', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(497, 34, 'Day I Became a Woman, The (Roozi khe zan shodam)', '18.44', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(498, 32, 'Two Thousand Maniacs!', '25.25', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(499, 5, 'Rutles 2: Can\'t Buy Me Lunch, The', '27.97', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(500, 10, 'Teaching Mrs. Tingle', '33.83', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(501, 30, 'Musicwood', '30.31', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(502, 38, 'Edge of the City', '40.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(503, 16, 'The Inhabited Island', '32.19', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(504, 27, 'Raiders From Beneath the Sea', '9.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(505, 49, 'Selfish Giant, The', '39.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(506, 26, 'Last Days Here', '34.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(507, 8, 'JÃ¶nssonligan fÃ¥r guldfeber', '45.61', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(508, 4, 'Girl from Monday, The', '13.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(509, 17, 'Sunes sommar', '31.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(510, 31, 'Ultraviolet', '46.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(511, 39, 'Hamsun', '11.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(512, 15, 'This Is Spinal Tap', '13.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(513, 24, 'As Good as Dead', '27.53', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(514, 30, 'Diana', '43.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(515, 34, 'Brand Upon the Brain!', '19.41', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(516, 38, 'Sea Gull, The', '46.76', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(517, 40, 'Turin Horse, The (A TorinÃ³i lÃ³)', '15.73', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(518, 48, 'All Watched Over by Machines of Loving Grace', '44.96', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(519, 46, 'Silent Hill', '20.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(520, 38, 'Casual Relations', '9.95', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(521, 12, 'Hotel Reserve', '19.11', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(522, 31, 'Macbeth', '5.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(523, 48, 'Emperor\'s New Clothes, The', '46.57', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(524, 49, 'Seeking a Friend for the End of the World', '15.78', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(525, 11, 'Boy', '41.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(526, 18, 'Dragon Age: Blood mage no seisen (a.k.a. Dragon Age: Dawn of the Seeker)', '18.30', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(527, 46, 'Neighbouring Sounds (O som ao redor)', '12.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(528, 22, 'Paradise: Hope (Paradies: Hoffnung)', '46.69', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(529, 34, 'Zatoichi in Desperation (Shin ZatÃ´ichi monogatari: Oreta tsue) (ZatÃ´ichi 24)', '44.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(530, 3, 'Hush', '14.57', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(531, 21, '3 Strikes', '32.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(532, 40, 'World War Z', '40.55', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(533, 37, 'Preaching to the Perverted', '44.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(534, 7, 'Kiss the Girls', '33.24', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(535, 16, 'Ocean Waves (Umi ga kikoeru)', '21.99', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(536, 20, 'Other Side of the Bed, The (Otro lado de la cama, El)', '10.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(537, 24, 'LÃ©on Morin, Priest (LÃ©on Morin, prÃªtre)', '43.90', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(538, 30, 'Manic', '27.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(539, 27, 'Street Fighter II: The Animated Movie (SutorÃ®to FaitÃ¢ II gekijÃ´-ban)', '14.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(540, 10, 'Eagle Eye', '13.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(541, 41, 'Conan the Barbarian', '26.97', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(542, 31, 'Where\'s Marlowe?', '10.17', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(543, 6, 'The Fearless Four', '12.72', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(544, 3, 'Home of Our Own, A', '11.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(545, 36, 'Bastards', '22.85', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(546, 17, 'I\'m Crazy About Iris Blond', '18.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(547, 34, 'In Time', '24.81', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(548, 22, 'Laterna, ftoheia kai garyfallo', '26.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(549, 5, 'Borderland', '19.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(550, 8, 'My Best Girl', '37.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(551, 44, 'Finding Forrester', '24.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(552, 35, 'Girls Will Be Girls', '19.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(553, 37, 'Paradine Case, The', '10.64', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(554, 5, 'The Loyal 47 Ronin', '47.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(555, 10, 'Amanece, que no es poco', '28.38', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(556, 1, 'John Wick', '44.70', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(557, 38, 'Trog', '30.73', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(558, 18, 'Tree of Knowledge, The (Kundskabens trÃ¦)', '48.84', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(559, 20, 'Omen, The', '8.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(560, 2, 'Bronies: The Extremely Unexpected Adult Fans of My Little Pony', '24.18', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(561, 24, 'Block-Heads', '42.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(562, 50, 'Chain Reaction', '18.74', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(563, 46, 'All Dogs Go to Heaven', '14.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44');
INSERT IGNORE INTO `movies` (`id`, `author_id`, `title`, `price`, `created_at`, `updated_at`) VALUES
(564, 35, 'MÃ©tamorphose des cloportes, La', '20.28', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(565, 37, 'Cat Concerto, The', '11.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(566, 49, 'Teahouse of the August Moon, The', '32.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(567, 34, 'Antique (Sayangkoldong yangkwajajeom aentikeu)', '40.53', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(568, 37, 'Earrings of Madame de..., The (Madame de...)', '32.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(569, 16, 'Polar Bear King, The (KvitebjÃ¸rn Kong Valemon)', '24.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(570, 13, 'Rocky IV', '36.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(571, 11, 'Cold Comfort Farm', '13.51', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(572, 19, 'Stagecoach', '49.09', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(573, 16, 'Shrink Is In, The', '29.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(574, 26, 'Bringing Up Bobby', '26.27', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(575, 39, 'Other Woman, The', '35.51', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(576, 1, 'Daughters of the Dust', '39.60', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(577, 31, 'Reconstruction (Anaparastasi)', '30.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(578, 10, 'Incredible Burt Wonderstone, The', '10.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(579, 17, 'Above the Street, Below the Water (Over gaden under vandet)', '45.07', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(580, 35, 'Tough Ones, The (HÃ¤jyt)', '43.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(581, 48, 'Millions', '39.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(582, 6, 'Fargo', '6.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(583, 6, 'Punk\'s Dead: SLC Punk! 2', '27.96', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(584, 33, 'Camilla', '6.31', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(585, 11, 'Babymakers, The', '23.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(586, 5, 'Red Bear, A (Un oso rojo)', '45.06', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(587, 47, 'Romance & Cigarettes', '21.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(588, 15, 'Standing Still', '32.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(589, 15, 'B-Side', '28.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(590, 28, 'Cheech and Chong\'s Animated Movie', '28.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(591, 2, 'Spawn', '32.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(592, 21, 'Postal', '41.54', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(593, 40, 'Christmas in July', '9.87', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(594, 10, 'Red', '28.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(595, 38, 'Run', '42.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(596, 16, 'Takeshis\'', '39.24', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(597, 11, 'Human Nature', '27.37', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(598, 38, 'Finding Normal', '47.84', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(599, 8, 'Belizaire the Cajun', '35.89', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(600, 13, 'Sound and Fury', '17.77', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(601, 26, 'Down Argentine Way', '37.67', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(602, 38, 'Seizure', '14.89', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(603, 14, 'Love\'s Deadly Triangle: The Texas Cadet Murder', '28.31', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(604, 18, 'Straw Dogs', '28.49', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(605, 9, 'Siegfried & Roy: The Magic Box', '34.36', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(606, 50, 'Koti-ikÃ¤vÃ¤', '48.81', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(607, 16, 'Dreamcatcher', '7.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(608, 40, 'A Cry in the Wild', '21.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(609, 50, 'I Am Love (Io sono l\'amore)', '34.38', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(610, 5, 'Bowery at Midnight', '31.89', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(611, 19, 'Big Game', '37.31', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(612, 1, 'Adult World', '44.54', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(613, 33, 'Insider, The', '36.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(614, 16, 'Some Kind of Wonderful', '32.67', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(615, 24, 'Television Under the Swastika (Das Fernsehen unter dem Hakenkreuz)', '18.38', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(616, 38, 'Alpha and Omega 3: The Great Wolf Games', '24.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(617, 1, 'Foreign Intrigue', '9.51', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(618, 6, 'Saint Joan', '47.96', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(619, 23, 'Intimacy', '25.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(620, 8, 'Brewster\'s Millions', '21.17', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(621, 15, 'Get Him to the Greek', '8.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(622, 28, 'Orphan', '27.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(623, 7, 'Happy', '33.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(624, 48, 'Her', '25.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(625, 13, 'Tribute', '15.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(626, 15, 'Monkeybone', '5.64', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(627, 21, 'Murders in the Rue Morgue', '32.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(628, 7, 'Life Is All You Get (Das Leben ist eine Baustelle.)', '45.53', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(629, 15, 'Devil\'s Playground, The', '26.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(630, 46, 'Safe Sex', '7.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(631, 29, 'Sky West and Crooked (Gypsy Girl)', '34.97', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(632, 14, 'Sinivalkoinen valhe', '17.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(633, 35, 'Two Days, One Night (Deux jours, une nuit)', '26.43', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(634, 20, 'Jade', '9.43', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(635, 29, 'Lord of Illusions', '36.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(636, 40, 'Lake Placid', '41.86', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(637, 10, 'Village of the Giants', '46.83', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(638, 12, 'Throne of Blood (Kumonosu jÃ´)', '8.77', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(639, 41, 'Thrilla in Manila', '15.02', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(640, 17, 'Solo ', '33.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(641, 18, 'Town Called Panic, A (Panique au village)', '27.97', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(642, 32, 'Big Street, The', '42.32', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(643, 39, 'Farinelli: il castrato', '39.86', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(644, 31, 'Highlander: The Source', '37.18', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(645, 10, 'No Mercy', '29.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(646, 21, 'Dead Men Tell', '10.68', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(647, 25, 'Horse Soldiers, The', '24.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(648, 28, 'Proud Valley, The', '45.89', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(649, 35, 'Wild River', '16.96', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(650, 16, 'Logan\'s Run', '36.87', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(651, 42, 'Docks of New York, The', '43.22', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(652, 30, 'Stormy Monday', '18.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(653, 5, 'Evil of Frankenstein, The', '42.28', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(654, 17, 'Inevitable Defeat of Mister & Pete, The', '39.65', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(655, 46, 'Look Both Ways', '38.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(656, 11, 'Evil Cult, The (Lord of the Wu Tang) (Yi tian tu long ji: Zhi mo jiao jiao zhu)', '33.68', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(657, 28, 'Planet Hulk', '19.79', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(658, 21, 'Real Genius', '32.61', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(659, 4, 'Alien Contamination', '23.84', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(660, 29, '11.6', '11.51', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(661, 7, 'Promise Me This (Zavet)', '15.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(662, 26, 'Images of the World and the Inscription of War (Bilder der Welt und Inschrift des Krieges)', '11.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(663, 6, 'Back to Bataan', '35.95', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(664, 7, 'Dragon Ball Z the Movie: The World\'s Strongest (a.k.a. Dragon Ball Z: The Strongest Guy in The World', '26.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(665, 43, 'Out Late ', '15.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(666, 15, 'Holding Trevor', '28.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(667, 13, 'Rabbit Test', '34.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(668, 11, 'Open Water', '12.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(669, 25, 'Michael Jackson\'s This Is It', '49.51', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(670, 7, 'Picking Up the Pieces', '31.67', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(671, 18, 'Towelhead (a.k.a. Nothing is Private)', '16.07', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(672, 7, 'It Felt Like Love', '24.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(673, 50, 'Unforgotten: Twenty-Five Years After Willowbrook', '5.77', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(674, 20, 'Vengeance Valley', '21.55', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(675, 40, 'Fingers at the Window', '40.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(676, 9, 'Chico & Rita', '36.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(677, 49, 'Pumpkinhead II: Blood Wings', '41.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(678, 27, 'Mike Tyson:  Undisputed Truth', '42.87', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(679, 22, 'David Cross: The Pride Is Back', '39.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(680, 30, 'Walker, The', '5.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(681, 32, 'Driven to Kill', '6.57', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(682, 8, 'Mr. Morgan\'s Last Love', '43.32', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(683, 4, 'The Valley of Gwangi', '41.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(684, 42, '10', '36.49', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(685, 45, 'Now and Forever', '26.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(686, 3, 'Moulin Rouge', '7.69', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(687, 3, 'Planes', '21.87', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(688, 25, 'Hell Is Sold Out', '12.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(689, 31, 'Killing Lincoln', '29.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(690, 35, 'Swedish Love Story, A (KÃ¤rlekshistoria, En)', '30.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(691, 22, 'Badmaash Company', '8.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(692, 13, 'Aladdin', '44.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(693, 14, 'Zombie Honeymoon', '19.49', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(694, 28, 'Blue', '6.66', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(695, 50, 'Hellbound: Hellraiser II', '47.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(696, 36, 'Wichita', '36.95', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(697, 26, 'State of Grace', '36.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(698, 20, 'X', '38.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(699, 39, 'Johnny Dangerously', '17.96', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(700, 16, 'Camille Rewinds', '9.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(701, 25, 'Cat Concerto, The', '23.50', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(702, 28, 'Porky\'s Revenge', '8.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(703, 44, 'VÃ¤Ã¤peli KÃ¶rmy - Taisteluni', '37.43', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(704, 48, 'Not Another Happy Ending', '28.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(705, 34, 'Woodstock Diary', '31.86', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(706, 20, 'Keeper of the Flame', '7.39', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(707, 11, 'ABBA: The Movie', '13.01', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(708, 3, 'Breaking Out (VÃ¤gen ut)', '44.30', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(709, 42, 'Death Warrant', '24.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(710, 28, 'Wishmaster', '29.41', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(711, 29, 'Duel in the Sun', '12.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(712, 7, 'Iron Lady, The', '5.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(713, 4, 'Red Rock West', '12.83', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(714, 34, 'Our Daily Bread', '25.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(715, 34, 'Disappearance of Eleanor Rigby: Them, The', '16.73', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(716, 16, 'The Haunting of Helena', '30.62', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(717, 48, 'Cold Light of Day, The', '16.78', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(718, 27, 'Margaret', '25.44', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(719, 33, 'Rikyu', '13.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(720, 28, 'Hills Run Red, The', '27.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(721, 35, 'End of the Century: The Story of the Ramones', '13.09', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(722, 34, 'Don Is Dead, The', '5.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(723, 30, 'Power/Rangers', '27.88', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(724, 38, 'Where the Day Takes You', '40.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(725, 30, 'Genocide', '34.83', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(726, 40, 'Earthling, The', '43.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(727, 40, 'American Outlaws', '28.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(728, 38, 'Captivated', '43.83', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(729, 24, 'Producers, The', '31.99', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(730, 46, 'The Fearmakers', '46.47', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(731, 50, 'Mr Reliable', '31.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(732, 23, 'Sorcerer and the White Snake, The (Bai she chuan shuo)', '25.30', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(733, 29, 'Her Highness and the Bellboy', '17.24', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(734, 32, 'Finances of the Grand Duke, The (Die Finanzen des GroÃherzogs)', '28.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(735, 3, 'Ivul', '28.57', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(736, 49, 'Incendies', '41.17', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(737, 18, 'Sharpe\'s Sword', '20.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(738, 1, 'Firestorm', '5.90', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(739, 47, 'This World, Then the Fireworks', '14.37', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(740, 43, 'Skhizein', '49.47', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(741, 13, 'Betrayal, The (Nerakhoon)', '12.96', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(742, 23, 'Raffles', '29.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(743, 39, 'Two for the Seesaw', '46.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(744, 46, 'Vengeance Valley', '10.18', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(745, 42, 'Aladdin', '10.78', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(746, 16, 'Rape of Europa, The', '10.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(747, 7, 'Sleeping Beauty', '16.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(748, 30, 'Boomerang', '39.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(749, 10, 'Peculiarities of the National Hunt (Osobennosti natsionalnoy okhoty) ', '37.24', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(750, 30, 'To Tulsa and Back: On Tour with J.J. Cale', '41.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(751, 8, 'Obsessed', '39.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(752, 38, 'Card Player, The (Il cartaio)', '14.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(753, 36, 'Hugo', '38.77', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(754, 30, 'Goalie\'s Anxiety at the Penalty Kick, The (Die Angst des Tormanns beim Elfmeter)', '14.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(755, 6, 'Space', '30.89', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(756, 6, 'Kickboxer 4: The Aggressor', '37.02', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(757, 16, 'Mahoney\'s Last Stand', '41.24', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(758, 23, 'Tall Target, The', '28.30', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(759, 13, 'The Haunted House', '45.40', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(760, 13, 'Unreasonable Man, An', '19.53', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(761, 26, 'Bright Lights, Big City', '28.78', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(762, 42, 'Shenandoah', '22.37', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(763, 10, 'Emotion', '41.30', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(764, 9, 'Heckler', '8.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(765, 28, 'Charlie Chan in the Secret Service', '49.87', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(766, 39, 'Guts (Agallas)', '37.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(767, 18, 'Prometheus', '46.44', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(768, 32, 'Lord, Save Us from Your Followers', '9.70', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(769, 37, 'George Carlin: Life Is Worth Losing', '20.15', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(770, 4, 'Song to Remember, A', '15.79', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(771, 12, 'Damnation Alley', '35.09', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(772, 19, 'Crimes of Passion', '15.19', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(773, 28, 'Synecdoche, New York', '29.53', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(774, 23, 'Pete Seeger: The Power of Song', '34.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(775, 11, 'Attack!', '33.65', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(776, 8, 'Andy Hardy\'s Blonde Trouble', '42.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(777, 27, 'Music Box, The', '46.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(778, 50, 'Hospital, The', '16.22', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(779, 46, 'I Accuse!', '44.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(780, 20, 'Lucky Star', '21.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(781, 8, 'Swindle', '19.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(782, 42, 'Siddhartha', '47.14', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(783, 6, 'Fermat\'s Room (La habitaciÃ³n de Fermat)', '42.74', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(784, 28, 'May', '46.25', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(785, 49, 'Being Elmo: A Puppeteer\'s Journey', '22.23', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(786, 43, 'China O\'Brien', '13.19', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(787, 28, 'Say It Isn\'t So', '13.95', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(788, 1, 'Angel', '7.11', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(789, 40, 'Bucket of Blood, A (Dark Secrets) (Death Artist, The)', '39.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(790, 46, 'Koyaanisqatsi (a.k.a. Koyaanisqatsi: Life Out of Balance)', '39.32', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(791, 28, 'Stepdaughter, The', '47.85', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(792, 38, '3 Ring Circus', '5.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(793, 20, 'Ticker', '42.23', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(794, 26, 'The Stanford Prison Experiment', '10.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(795, 39, 'Xtro 3: Watch the Skies', '14.89', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(796, 43, 'Burt\'s Buzz', '39.85', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(797, 22, 'S.W.A.T.', '16.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(798, 36, 'Violent Years, The', '19.64', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(799, 21, 'Dazed and Confused', '6.40', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(800, 49, 'Money Matters ', '16.97', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(801, 4, 'Jimi Hendrix', '48.64', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(802, 17, 'Teheran 43: Spy Ring (a.k.a. Assassination Attempt) (Tegeran-43)', '12.32', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(803, 16, 'Meat the Truth', '39.19', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(804, 37, 'Cat\'s Meow, The', '42.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(805, 22, 'Why Worry?', '26.53', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(806, 5, 'Genocide (KonchÃ» daisensÃ´)', '47.88', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(807, 47, 'Palo Alto', '28.77', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(808, 40, 'Night Gallery', '8.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(809, 38, 'So I Married an Axe Murderer', '13.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(810, 2, 'Stand, The', '18.36', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(811, 50, 'Normal', '34.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(812, 2, 'Standard Operating Procedure', '13.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(813, 7, 'Wonderland', '13.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(814, 38, 'The Old Maid', '15.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(815, 15, 'What Just Happened', '33.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(816, 42, 'Alone in the Dark II', '26.72', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(817, 19, 'Gambler, The (JÃ¡tÃ©kos, A)', '31.01', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(818, 26, '7 Virgins (7 vÃ­rgenes)', '38.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(819, 49, 'Tall Tale', '5.19', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(820, 24, 'Boy Meets Girl', '22.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(821, 45, 'Bullet Ballet', '13.72', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(822, 25, 'Closer to the Moon', '20.01', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(823, 30, 'Monkey in Winter, A (Un singe en hiver)', '34.06', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(824, 19, 'Space Cowboys', '7.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(825, 29, 'Harder They Come, The', '25.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(826, 2, 'Penthouse North', '17.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(827, 26, 'Kabhi Haan Kabhi Naa', '37.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(828, 12, 'Wrong Arm of the Law, The', '37.67', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(829, 19, 'Sarah\'s Key (Elle s\'appelait Sarah)', '26.24', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(830, 37, 'Country Life', '25.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(831, 32, 'The Trans-Atlantic Mystery', '35.57', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(832, 9, 'Hyde Park on Hudson', '26.43', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(833, 47, 'Down to Earth', '17.64', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(834, 5, 'Clouds of Sils Maria', '16.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(835, 33, 'Creature from the Haunted Sea', '5.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(836, 30, 'Show, The', '24.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(837, 44, 'Human Planet', '39.09', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(838, 41, 'Topaze', '41.50', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(839, 46, 'Twilight of the Ice Nymphs', '20.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(840, 10, 'Three Colors: White (Trzy kolory: Bialy)', '46.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(841, 1, '20 Million Miles to Earth', '23.09', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(842, 11, 'Elsewhere', '42.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(843, 1, 'Who\'s Your Caddy?', '24.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(844, 21, 'The great match', '18.30', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(845, 8, 'Bye Bye Brazil (Bye Bye Brasil)', '34.95', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(846, 38, 'Torch Song', '11.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(847, 25, 'Soul of Bread, The (Ai de mian bao hun)', '16.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(848, 8, 'Slasher House', '17.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(849, 49, 'Hart of London, The', '19.51', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(850, 10, '7th Heaven (Seventh Heaven)', '24.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(851, 16, 'Blast', '18.31', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(852, 18, 'East is East', '20.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(853, 22, 'Blood Work', '17.01', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(854, 15, 'Performance', '37.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(855, 29, 'Hansel & Gretel', '20.55', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(856, 47, 'How to Eat Fried Worms', '19.23', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(857, 19, 'Soft Fruit', '49.28', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(858, 28, 'Dragonfly', '7.61', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(859, 35, 'Wolves', '12.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(860, 1, 'Enemy Mine', '31.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(861, 39, 'Operation \'Y\' & Other Shurik\'s Adventures', '10.69', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(862, 43, 'Thrilla in Manila', '30.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(863, 5, 'Who Are you Polly Maggoo (Qui Ãªtes-vous, Polly Maggoo?)', '43.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(864, 2, 'Mystic Masseur, The', '6.55', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(865, 7, 'American Virgin', '24.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(866, 40, 'Marjoe', '12.09', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(867, 5, 'Cyrano de Bergerac', '9.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(868, 12, 'Singham', '30.34', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(869, 20, 'Eat Drink Man Woman (Yin shi nan nu)', '10.67', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(870, 20, 'Crazy on the Outside', '44.31', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(871, 35, 'Jaws: The Revenge', '49.47', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(872, 8, 'Last Emperor, The', '38.63', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(873, 35, 'ATL', '20.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(874, 32, 'On the Road', '24.23', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(875, 7, 'House of the Devil, The', '31.53', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(876, 50, 'Necessary Roughness', '42.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(877, 47, 'Armored', '24.72', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(878, 37, 'Edmund Kean: Prince Among Lovers (Kean)', '21.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(879, 34, 'Havoc', '48.66', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(880, 11, 'Player, The', '45.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(881, 50, 'My Beautiful Dacia (Dacia, dragostea mea)', '23.12', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(882, 34, 'Oz the Great and Powerful', '31.80', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(883, 50, 'Alamo Bay', '37.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(884, 50, 'First Knight', '6.11', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(885, 37, 'Dream Boy', '15.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(886, 7, 'Floundering', '8.66', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(887, 23, 'Talladega Nights: The Ballad of Ricky Bobby', '37.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(888, 14, 'Like Water', '26.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(889, 43, 'New Kind of Love, A', '37.95', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(890, 26, 'One Bright Shining Moment', '21.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(891, 21, 'Hackers', '41.59', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(892, 28, 'Jesus Christ Superstar', '8.44', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(893, 47, 'Bring It On: In It To Win It', '34.03', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(894, 23, 'Wonder Man', '40.54', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(895, 49, 'My Dog Skip', '24.37', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(896, 11, 'Big Bad Wolf', '10.17', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(897, 47, 'Remonstrance', '37.75', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(898, 21, 'Moliere', '25.28', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(899, 48, 'Infinity', '8.47', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(900, 45, 'Super 8', '43.11', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(901, 18, 'Suspended Vocation, The (La vocation suspendue)', '23.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(902, 34, 'Babylon 5: The River of Souls', '36.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(903, 35, 'Swedish Love Story, A (KÃ¤rlekshistoria, En)', '23.36', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(904, 5, 'Confiance rÃ¨gne, La', '41.42', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(905, 29, 'Kite Runner, The', '30.19', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(906, 20, 'Jesus Christ Superstar', '5.92', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(907, 36, 'I Saw the Devil (Akmareul boatda)', '36.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(908, 38, 'Power of One, The', '6.32', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(909, 25, 'Star Is Born, A', '10.56', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(910, 8, 'Swing Kids', '47.37', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(911, 49, 'Lonesome', '46.22', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(912, 46, 'Gigi', '35.65', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(913, 2, 'Long Way Down, A', '40.85', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(914, 39, 'Godzilla vs. Mechagodzilla II (Gojira VS Mekagojira)', '12.03', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(915, 11, 'Short Film About John Bolton, A', '34.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(916, 30, 'Dyatlov Pass Incident, The (Devil\'s Pass)', '15.91', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(917, 43, 'Accused, The', '31.40', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(918, 8, 'Timecop', '15.26', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(919, 1, 'English Patient, The', '14.15', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(920, 12, 'Disappearance of Haruhi Suzumiya, The (Suzumiya Haruhi no shÃ´shitsu)', '5.30', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(921, 49, 'Worlds Apart (To verdener)', '33.85', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(922, 41, 'Hostel: Part III ', '15.00', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(923, 39, 'Man from Earth, The', '13.48', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(924, 19, 'Booker\'s Place: A Mississippi Story', '45.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(925, 39, 'Purge (Puhdistus)', '46.24', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(926, 35, 'Secret Reunion (Ui-hyeong-je)', '20.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(927, 37, 'Butterfly (La lengua de las mariposas)', '39.71', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(928, 39, 'Confession', '44.31', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(929, 38, 'Hamiltons, The', '45.95', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(930, 14, 'Gervaise', '32.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(931, 47, 'Guardian Angel', '12.13', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(932, 23, 'Dear Me', '43.99', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(933, 38, 'Crime at the Chinese Restaurant', '22.17', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(934, 42, 'Youngblood', '10.14', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(935, 46, 'Enemy of the People, An (Ganashatru)', '9.40', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(936, 35, 'ChubbChubbs!, The', '47.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(937, 9, 'Muriel, or The Time of Return (Muriel ou Le temps d\'un retour)', '36.93', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(938, 26, 'Big Girls Don\'t Cry... They Get Even (Stepkids)', '36.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(939, 4, 'Conclave, The', '43.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(940, 27, 'Crimson Gold (Talaye sorgh)', '34.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(941, 42, 'Marriage of Maria Braun, The (Ehe der Maria Braun, Die)', '10.76', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(942, 13, 'Chico & Rita', '9.47', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(943, 44, 'Secret World of Arrietty, The (Kari-gurashi no Arietti)', '28.38', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(944, 18, 'Ain\'t Them Bodies Saints', '44.44', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(945, 23, 'It\'s Christmastime Again, Charlie Brown', '25.10', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(946, 18, 'Loss of a Teardrop Diamond, The', '18.84', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(947, 21, 'Bird of the Air, A (Loop, The)', '12.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(948, 48, 'Bronx Obama', '48.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(949, 50, 'Grey Fox, The', '28.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(950, 39, 'Bread and Tulips (Pane e tulipani)', '20.43', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(951, 32, 'Pirates! Band of Misfits, The', '12.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(952, 28, 'Committed', '12.16', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(953, 12, 'Those Who Love Me Can Take the Train (Ceux qui m\'aiment prendront le train)', '9.18', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(954, 17, 'Bad News Bears', '17.65', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(955, 25, 'Egg and I, The', '5.41', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(956, 1, 'Rescuers Down Under, The', '8.45', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(957, 6, 'Turbo: A Power Rangers Movie', '12.94', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(958, 34, 'Xala', '34.77', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(959, 16, 'And Justice for All', '43.69', '2019-10-28 20:16:44', '2019-11-13 09:49:14'),
(960, 22, 'Joysticks', '30.06', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(961, 28, 'Cruel Intentions 3', '14.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(962, 14, 'This Is My Father', '42.97', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(963, 47, 'Sense of History, A', '30.41', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(964, 18, '18 Years Later (Diciotto anni dopo)', '46.27', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(965, 17, 'Still of the Night', '32.01', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(966, 22, 'Head in the Clouds', '36.32', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(967, 8, 'Notorious', '22.23', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(968, 42, 'Fight, Zatoichi, Fight (ZatÃ´ichi kesshÃ´-tabi) (ZatÃ´ichi 8)', '15.35', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(969, 10, 'Truce, The (a.k.a. La Tregua)', '33.66', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(970, 50, 'Graveyard Shift (Stephen King\'s Graveyard Shift)', '29.78', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(971, 16, 'Lady with the Dog, The (Dama s sobachkoy)', '41.05', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(972, 16, 'Only Daughter', '26.01', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(973, 31, 'Perifery (HÃ¤rmÃ¤)', '32.04', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(974, 2, 'Lightspeed', '14.96', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(975, 23, 'Hush... Hush, Sweet Charlotte', '34.56', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(976, 46, 'Home Alone 3', '13.46', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(977, 37, 'Antz', '17.23', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(978, 47, 'Wolf Children (Okami kodomo no ame to yuki)', '20.33', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(979, 32, 'Happy People: A Year in the Taiga', '11.90', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(980, 45, 'The Time Being', '45.89', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(981, 20, 'Film Geek', '21.19', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(982, 28, 'Fever', '25.95', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(983, 43, 'Blackmail', '33.85', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(984, 27, 'Woman Obsessed', '5.49', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(985, 48, 'Barefoot Gen (Hadashi no Gen)', '41.89', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(986, 47, 'Humboldt County', '11.37', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(987, 26, 'Major League II', '12.58', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(988, 22, 'Xiu Xiu: The Sent-Down Girl (Tian yu)', '6.61', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(989, 35, 'Maiden\'s Cheek (To xylo vgike apo ton Paradeiso)', '41.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(990, 2, 'Far Off Place, A', '43.52', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(991, 22, 'Down in the Valley', '25.98', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(992, 19, '24th Day, The', '30.84', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(993, 26, 'Amadeus', '18.82', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(994, 37, 'Skies Above the Landscape (Nebo iznad krajolika)', '26.08', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(995, 9, 'Superstar Goofy', '49.50', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(996, 36, 'City of No Limits, The (la ciudad sin lÃ­mites, En)', '16.74', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(997, 32, 'Linguini Incident, The', '7.66', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(998, 45, 'Quick and the Dead, The', '20.21', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(999, 1, 'Ring, The', '34.20', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(1000, 5, 'Blade on the Feather (Deep Cover)', '20.64', '2019-10-28 20:16:44', '2019-10-28 20:16:44'),
(1006, 48, 'AAA', '15.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `pages`
--

INSERT IGNORE INTO `pages` (`id`, `title`, `body`) VALUES
(1, 'About', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sint modo partes vitae beatae. Hunc vos beatum; Qua tu etiam inprudens utebare non numquam. Tu quidem reddes; Si longus, levis dictata sunt. Duo Reges: constructio interrete. <br />\r\nTu quidem reddes; Ea possunt paria non esse. Si quae forte-possumus. Est enim effectrix multarum et magnarum voluptatum. Non laboro, inquit, de nomine. Cave putes quicquam esse verius. <br />\r\nDuo enim genera quae erant, fecit tria. Quid, de quo nulla dissensio est? Egone quaeris, inquit, quid sentiam? Quae sequuntur igitur? Ne in odium veniam, si amicum destitero tueri. Quod iam a me expectare noli. <br />\r\nSed fac ista esse non inportuna; Et quod est munus, quod opus sapientiae? Summae mihi videtur inscitiae. Egone quaeris, inquit, quid sentiam? <br />\r\nNegat esse eam, inquit, propter se expetendam. Omnia contraria, quos etiam insanos esse vultis. Unum est sine dolore esse, alterum cum voluptate. Falli igitur possumus. Et quidem, inquit, veh.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `manufacturer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `products`
--

INSERT IGNORE INTO `products` (`id`, `category_id`, `manufacturer_id`, `name`, `description`, `image`) VALUES
(1, 1, 1, 'Sportfahrrad 28 blau', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eos veniam\r\nsunt quam, nesciunt amet voluptatem doloremque vero, dolore a modi\r\nconsequuntur dolorem? Est architecto nisi dolorem expedita ducimus\r\nassumenda eligendi.', NULL),
(2, 1, 2, '26 Jugendfahrad gelb', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eos veniam<br />\r\nsunt quam, nesciunt amet voluptatem doloremque vero, dolore a modi<br />\r\nconsequuntur dolorem? Est architecto nisi dolorem expedita ducimus<br />\r\nassumenda eligendi.', 'nebel_steg.jpg'),
(4, NULL, 2, 'Baby Rolleree', 'xyvyxvxcyvcxvcx<br />\r\nsazjdetzrutzr', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_firstname_index` (`firstname`),
  ADD KEY `author_lastname_index` (`lastname`);

--
-- Indizes für die Tabelle `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indizes für die Tabelle `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_title_index` (`title`),
  ADD KEY `movie_price_index` (`price`),
  ADD KEY `author_id` (`author_id`);

--
-- Indizes für die Tabelle `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indizes für die Tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indizes für die Tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk_products` (`manufacturer_id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT für Tabelle `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT für Tabelle `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `fk_movies` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
