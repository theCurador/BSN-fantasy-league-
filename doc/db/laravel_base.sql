-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u2
-- http://www.phpmyadmin.net
--
-- Darbinė stotis: localhost
-- Atlikimo laikas: 2016 m. Geg 31 d. 11:25
-- Serverio versija: 1.0.112
-- PHP versija: 5.6.19-1~dotdeb+zts+7.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Duomenų bazė: `laravel_base`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_post_id_foreign` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Sukurta duomenų kopija lentelei `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `content`, `seen`, `user_id`, `post_id`) VALUES
(1, '2016-03-23 11:17:48', '2016-04-13 16:13:27', '<p>\nLorem ipsum sollicitudin porttitor egestas euismod lobortis pulvinar libero per vestibulum turpis inceptos varius adipiscing, fusce luctus rutrum elementum habitant facilisis eget varius cursus at mi lectus euismod. \nVel viverra sed litora pulvinar neque viverra ut leo dapibus, quisque interdum convallis molestie dapibus diam commodo auctor, varius elit primis potenti ultricies aliquam proin mattis. \nDapibus aliquet eu ultricies potenti nec per egestas facilisis at, morbi conubia ornare dictumst vehicula iaculis eu pulvinar amet, vulputate habitasse dui erat gravida vivamus sollicitudin commodo. \nPlacerat commodo tempus sociosqu faucibus non etiam ac vestibulum, posuere vestibulum augue ante eleifend lectus massa rutrum, auctor conubia hendrerit elit amet volutpat augue. \n</p>\n<p>\nGravida mollis id sit inceptos tempus enim, senectus auctor odio varius. \nMolestie conubia sed venenatis habitasse etiam metus sollicitudin accumsan vel, erat vitae porttitor consectetur faucibus inceptos ad maecenas primis eu, rutrum sagittis habitasse himenaeos hendrerit ornare proin aptent. \nTurpis tincidunt mauris scelerisque vitae fringilla in posuere urna vel blandit, duis varius duis sapien conubia sed consequat ante non, venenatis porta in litora lectus mi congue placerat et. \nVehicula libero venenatis enim praesent euismod viverra proin, integer orci nam curabitur varius mattis, commodo pretium nostra dapibus facilisis luctus. \n</p>\n<p>\nVarius leo sed aliquet ipsum, per donec. \n</p>', 1, 2, 1),
(2, '2016-03-23 11:17:48', '2016-04-13 16:12:09', '<p>\nLorem ipsum dolor duis ac praesent odio sagittis luctus, cursus aptent porta diam et aptent mollis, lectus dui nam ultricies viverra lectus conubia. \nFermentum id proin hendrerit nunc hendrerit urna egestas magna a eget placerat, duis aliquam consectetur nostra cubilia accumsan blandit vulputate sagittis aliquam, curabitur sit purus nostra eu habitant faucibus nisi lacinia aliquam. \nSuscipit ante fringilla curabitur odio proin amet vehicula amet augue purus, fames habitant fusce scelerisque ut taciti imperdiet in fames, dui condimentum consectetur hac torquent pellentesque eget habitasse id. \nLibero curabitur per iaculis velit porta odio amet potenti cras metus laoreet, elementum massa aptent aliquet ligula est lorem habitasse maecenas tristique, duis bibendum sagittis sed arcu pharetra dictumst pellentesque faucibus posuere. \n</p>\n<p>\nLaoreet eros ullamcorper nulla ut feugiat fames luctus justo vitae, bibendum aptent felis lacus vulputate adipiscing etiam lacinia, class morbi maecenas euismod quisque pretium tortor suspendisse. \nDictumst auctor cursus tellus tincidunt pharetra sociosqu arcu porttitor, libero venenatis ad senectus torquent sed tempor curae, ut pulvinar fringilla suscipit vitae bibendum morbi. \nAenean habitant iaculis semper donec tempor condimentum maecenas leo habitasse ad gravida, porttitor vel maecenas adipiscing porttitor hac augue fermentum mattis aliquam nibh sed, bibendum donec leo neque primis ligula ipsum ornare praesent habitasse. \n</p>', 0, 2, 2),
(3, '2016-03-23 11:17:48', '2016-04-13 16:12:11', '<p>\nLorem ipsum fringilla viverra euismod vitae justo interdum dictumst sapien, euismod diam non etiam donec vivamus eleifend molestie ad, at amet ut aptent praesent ut fames porttitor. \nCondimentum posuere arcu fermentum fames bibendum vestibulum a donec erat nibh, curabitur eget rutrum in nec velit duis nisi arcu sit, erat per nam porta eget non inceptos dui pulvinar. \nNam lacus consequat ac erat varius adipiscing ut leo justo egestas convallis, tristique proin etiam a volutpat bibendum fames fringilla donec auctor felis, arcu fames faucibus curabitur himenaeos volutpat eros tempus donec praesent. \n</p>\n<p>\nElit sollicitudin consequat id tincidunt vestibulum mi sem pulvinar commodo, sociosqu sagittis aenean at aliquet ut turpis quam. \nNeque scelerisque lobortis faucibus euismod malesuada etiam, sollicitudin nullam nisl turpis vestibulum platea imperdiet, egestas odio auctor lectus donec. \nLacinia dolor aenean tempor est lacinia dui, tellus eleifend in mattis est curae nibh, suscipit eget urna scelerisque dapibus. \nAenean tincidunt blandit justo ultrices sapien sed lorem volutpat massa commodo est tincidunt, aenean accumsan lorem netus praesent congue tempor neque cras neque. \nAmet mauris vulputate senectus hac elit aptent vehicula lorem auctor sapien, donec habitasse eget at lectus platea curae aenean et aliquam dapibus, rhoncus egestas taciti egestas imperdiet aliquam blandit non sodales. \n</p>', 0, 3, 1);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Sukurta duomenų kopija lentelei `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `text`, `seen`, `created_at`, `updated_at`) VALUES
(1, 'Dupont', 'dupont@la.fr', 'Lorem ipsum inceptos malesuada leo fusce tortor sociosqu semper, facilisis semper class tempus faucibus tristique duis eros, cubilia quisque habitasse aliquam fringilla orci non. Vel laoreet dolor enim justo facilisis neque accumsan, in ad venenatis hac per dictumst nulla ligula, donec mollis massa porttitor ullamcorper risus. Eu platea fringilla, habitasse.', 1, '2016-03-23 11:17:48', '2016-03-23 12:21:24'),
(2, 'Durand', 'durand@la.fr', ' Lorem ipsum erat non elit ultrices placerat, netus metus feugiat non conubia fusce porttitor, sociosqu diam commodo metus in. Himenaeos vitae aptent consequat luctus purus eleifend enim, sollicitudin eleifend porta malesuada ac class conubia, condimentum mauris facilisis conubia quis scelerisque. Lacinia tempus nullam felis fusce ac potenti netus ornare semper molestie, iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod.', 1, '2016-03-23 11:17:48', '2016-03-23 12:21:23'),
(3, 'Martin', 'martin@la.fr', 'Lorem ipsum tempor netus aenean ligula habitant vehicula tempor ultrices, placerat sociosqu ultrices consectetur ullamcorper tincidunt quisque tellus, ante nostra euismod nec suspendisse sem curabitur elit. Malesuada lacus viverra sagittis sit ornare orci, augue nullam adipiscing pulvinar libero aliquam vestibulum, platea cursus pellentesque leo dui. Lectus curabitur euismod ad, erat.', 1, '2016-03-23 11:17:48', '2016-03-23 12:21:26');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_club`
--

CREATE TABLE IF NOT EXISTS `fantasy_club` (
  `club_id` int(11) NOT NULL AUTO_INCREMENT,
  `club_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  `club_short_name` varchar(5) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  PRIMARY KEY (`club_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Sukurta duomenų kopija lentelei `fantasy_club`
--

INSERT INTO `fantasy_club` (`club_id`, `club_name`, `club_short_name`) VALUES
(1, 'Žalgiris', 'ZAL'),
(2, 'Lietuvos rytas', 'LR'),
(3, 'Vytautas', 'VYT'),
(4, 'Pieno Žvaigždės', 'PZV'),
(5, 'Juventus', 'JUV'),
(6, 'Šiauliai', 'SIA'),
(7, 'Neptūnas', 'NEP'),
(8, 'Lietkabelis', 'LIET'),
(9, 'Nevėžis', 'NEV'),
(10, 'Dzūkija', 'DZU');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_contracts`
--

CREATE TABLE IF NOT EXISTS `fantasy_contracts` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT,
  `club_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `expire` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contract_id`),
  KEY `club_id` (`club_id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Sukurta duomenų kopija lentelei `fantasy_contracts`
--

INSERT INTO `fantasy_contracts` (`contract_id`, `club_id`, `player_id`, `expire`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 5, 0),
(6, 1, 6, 0),
(7, 1, 7, 0),
(8, 1, 8, 0),
(9, 1, 9, 0),
(10, 1, 10, 0),
(11, 1, 11, 0),
(12, 1, 12, 0),
(13, 1, 13, 0),
(14, 1, 14, 0),
(15, 1, 15, 0),
(16, 2, 16, 0),
(17, 2, 17, 0),
(18, 2, 18, 0),
(19, 2, 19, 0),
(20, 2, 20, 0),
(21, 2, 21, 0),
(22, 2, 22, 0),
(23, 2, 23, 0),
(24, 2, 24, 0),
(25, 2, 25, 0),
(26, 2, 26, 0),
(27, 2, 27, 0),
(28, 3, 28, 0),
(29, 3, 29, 0),
(30, 3, 30, 0),
(31, 3, 31, 0),
(32, 3, 32, 0),
(33, 3, 33, 0),
(34, 3, 34, 0),
(35, 3, 35, 0),
(36, 3, 36, 0),
(37, 3, 37, 0),
(38, 3, 38, 0),
(39, 3, 39, 0),
(40, 3, 40, 0),
(41, 3, 41, 0),
(42, 3, 42, 0),
(43, 4, 43, 0),
(44, 4, 44, 0),
(45, 4, 45, 0),
(46, 4, 46, 0),
(47, 4, 47, 0),
(48, 4, 48, 0),
(49, 4, 49, 0),
(50, 4, 50, 0),
(51, 4, 51, 0),
(52, 4, 52, 0),
(53, 4, 53, 0),
(54, 4, 54, 0),
(55, 4, 55, 0),
(56, 5, 56, 0),
(57, 5, 57, 0),
(58, 5, 58, 0),
(59, 5, 59, 0),
(60, 5, 60, 0),
(61, 5, 61, 0),
(62, 5, 62, 0),
(63, 5, 63, 0),
(64, 5, 64, 0),
(65, 5, 65, 0),
(66, 5, 66, 0),
(67, 5, 67, 0),
(68, 5, 68, 0),
(69, 6, 69, 0),
(70, 6, 70, 0),
(71, 6, 71, 0),
(72, 6, 72, 0),
(73, 6, 73, 0),
(74, 6, 74, 0),
(75, 6, 75, 0),
(76, 6, 76, 0),
(77, 6, 77, 0),
(78, 6, 78, 0),
(79, 6, 79, 0),
(80, 6, 80, 0),
(81, 7, 81, 0),
(82, 7, 82, 0),
(83, 7, 83, 0),
(84, 7, 84, 0),
(85, 7, 85, 0),
(86, 7, 86, 0),
(87, 7, 87, 0),
(88, 7, 88, 0),
(89, 7, 89, 0),
(90, 7, 90, 0),
(91, 7, 91, 0),
(92, 7, 92, 0),
(93, 7, 93, 0),
(94, 8, 94, 0),
(95, 8, 95, 0),
(96, 8, 96, 0),
(97, 8, 97, 0),
(98, 8, 98, 0),
(99, 8, 99, 0),
(100, 8, 100, 0),
(101, 8, 101, 0),
(102, 8, 102, 0),
(103, 8, 103, 0),
(104, 8, 104, 0),
(105, 8, 105, 0),
(106, 8, 106, 0),
(107, 8, 107, 0),
(108, 9, 108, 0),
(109, 9, 109, 0),
(110, 9, 110, 0),
(111, 9, 111, 0),
(112, 9, 112, 0),
(113, 9, 113, 0),
(114, 9, 114, 0),
(115, 9, 115, 0),
(116, 9, 116, 0),
(117, 9, 117, 0),
(118, 9, 118, 0),
(119, 9, 119, 0),
(120, 9, 120, 0),
(121, 9, 121, 0),
(122, 10, 122, 0),
(123, 10, 123, 0),
(124, 10, 124, 0),
(125, 10, 125, 0),
(126, 10, 126, 0),
(127, 10, 127, 0),
(128, 10, 128, 0),
(129, 10, 129, 0),
(130, 10, 130, 0),
(131, 10, 131, 0),
(132, 10, 132, 0),
(133, 10, 133, 0),
(134, 10, 134, 0);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_match`
--

CREATE TABLE IF NOT EXISTS `fantasy_match` (
  `match_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_date` datetime NOT NULL,
  `home_club_id` int(11) NOT NULL,
  `guest_club_id` int(11) NOT NULL,
  PRIMARY KEY (`match_id`),
  KEY `home_club_id` (`home_club_id`),
  KEY `guest_club_id` (`guest_club_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Sukurta duomenų kopija lentelei `fantasy_match`
--

INSERT INTO `fantasy_match` (`match_id`, `match_date`, `home_club_id`, `guest_club_id`) VALUES
(11, '2016-05-13 19:00:00', 5, 1),
(13, '2016-04-27 06:08:00', 2, 9);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_match_scores`
--

CREATE TABLE IF NOT EXISTS `fantasy_match_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `match_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `points` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `match_id` (`match_id`),
  KEY `constract_id` (`contract_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=788 ;

--
-- Sukurta duomenų kopija lentelei `fantasy_match_scores`
--

INSERT INTO `fantasy_match_scores` (`id`, `match_id`, `contract_id`, `points`) VALUES
(744, 11, 1, 1),
(745, 11, 2, 3),
(746, 11, 3, 15),
(747, 11, 4, 20),
(748, 11, 5, -2),
(749, 11, 6, 7),
(750, 11, 7, 24),
(751, 11, 8, 8),
(752, 11, 10, -2),
(753, 11, 12, 6),
(754, 11, 13, 0),
(755, 11, 15, 11),
(756, 11, 56, -2),
(757, 11, 57, 11),
(758, 11, 58, 7),
(759, 11, 59, 20),
(760, 11, 60, 10),
(761, 11, 63, 15),
(762, 11, 64, 7),
(763, 11, 66, 0),
(764, 11, 68, 8),
(765, 13, 16, -7),
(766, 13, 17, 8),
(767, 13, 18, -1),
(768, 13, 19, -1),
(769, 13, 20, 3),
(770, 13, 21, 4),
(771, 13, 22, 10),
(772, 13, 23, 9),
(773, 13, 24, 20),
(774, 13, 25, 6),
(775, 13, 26, 5),
(776, 13, 27, 12),
(777, 13, 81, 9),
(778, 13, 82, 0),
(779, 13, 83, 20),
(780, 13, 84, 10),
(781, 13, 85, 7),
(782, 13, 86, -2),
(783, 13, 87, 11),
(784, 13, 88, 0),
(785, 13, 91, -2),
(786, 13, 92, 20),
(787, 13, 93, 15);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_players`
--

CREATE TABLE IF NOT EXISTS `fantasy_players` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  `position` varchar(30) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `eff` double DEFAULT NULL,
  `price` int(3) NOT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Sukurta duomenų kopija lentelei `fantasy_players`
--

INSERT INTO `fantasy_players` (`player_id`, `name`, `position`, `eff`, `price`) VALUES
(1, 'Jerome Randle', 'guard', 7, 77),
(2, 'Siim-Sander Vene', 'forward', 5, 50),
(3, 'Lukas Lekavičius', 'guard', 8, 83),
(4, 'Martynas Pocius', 'guard', 8, 80),
(5, 'Renaldas Seibutis', 'guard', 10, 109),
(6, 'Brock Motum', 'forward', 8, 85),
(7, 'Paulius Jankūnas', 'forward', 11, 115),
(8, 'Ian Vougioukas', 'center', 14, 149),
(9, 'Robertas Javtokas', 'center', 13, 135),
(10, 'Martynas Sajus', 'center', 9, 95),
(11, 'Vytenis Lipkevičius', 'guard', 4, 42),
(12, 'Kaspars Vecvagars', 'guard', 2, 25),
(13, 'Olivier Hanlan', 'guard', 5, 51),
(14, 'Isaiah Hartenstein', 'center', 6, 67),
(15, 'Edgaras Ulanovas', 'forward', 13, 131),
(16, 'Kendrick Shamar Brown', 'guard', 7, 73),
(17, 'Adas Juškevičius', 'guard', 10, 106),
(18, 'Mindaugas Lukauskis', 'guard', 10, 105),
(19, 'Kšištof Lavrinovič', 'forward', 10, 100),
(20, 'Deividas Gailius', 'forward', 8, 86),
(21, 'Gediminas Orelikas', 'forward', 10, 101),
(22, 'Adam Lapeta', 'center', 8, 82),
(23, 'Denys Lukashov', 'guard', 5, 59),
(24, 'Antanas Kavaliauskas', 'center', 15, 153),
(25, 'Marius Runkauskas', 'guard', 4, 46),
(26, 'Artūras Jomantas', 'forward', 4, 44),
(27, 'Artūras Gudaitis', 'center', 15, 150),
(28, 'Povilas Butkevičius', 'center', 1, 14),
(29, 'Vilmantas Dilys', 'center', 9, 95),
(30, 'Kajus Okmanas', 'guard', 0, 10),
(31, 'Tauras Jogėla', 'forward', 9, 98),
(32, 'Laimonas Kisielius', 'forward', 14, 148),
(33, 'Vytautas Šulskis', 'forward', 18, 189),
(34, 'Gytis Sirutavičius', 'guard', 11, 116),
(35, 'Paulius Ivanauskas', 'guard', 3, 36),
(36, 'Šarūnas Vasiliauskas', 'guard', 13, 131),
(37, 'Edvinas Šeškus', 'guard', 0, 10),
(38, 'Vaidas Čepukaitis', 'center', 12, 129),
(39, 'Dainius Šalenga', 'forward', 11, 110),
(40, 'Domantas Šeškus', 'guard', 2, 22),
(41, 'Serhii Zahreba', 'center', 8, 87),
(42, 'Tomas Michnevičius', 'forward', 1, 10),
(43, 'Derrick Low', 'guard', 15, 157),
(44, 'Justas Tamulis', 'guard', 2, 20),
(45, 'Dovydas Redikas', 'forward', 3, 35),
(46, 'Steponas Babrauskas', 'guard', 12, 122),
(47, 'Paulius Petrikonis', 'forward', 0, 10),
(48, 'Žygimantas Skučas', 'forward', 9, 94),
(49, 'Osvaldas Olisevičius', 'forward', 5, 52),
(50, 'Lazar Radosavljevič', 'forward', 6, 69),
(51, 'Andriy Agafonov', 'forward', 11, 111),
(52, 'Stanislav Tymofeienko', 'forward', 1, 17),
(53, 'Giedrius Staniulis', 'forward', 10, 103),
(54, 'Ramone Moore', 'forward', 13, 135),
(55, 'Jokūbas Gintvainis', 'guard', 3, 37),
(56, 'Edgaras Stanionis', 'guard', 0, 10),
(57, 'Arminas Urbutis', 'forward', 8, 89),
(58, 'Martynas Linkevičius', 'forward', 7, 72),
(59, 'Edgaras Želionis', 'forward', 13, 134),
(60, 'Saulius Kulvietis', 'guard', 3, 35),
(61, 'Tomas Zdanavičius', 'center', 0, 10),
(62, 'Mantas Šerkšnas', 'forward', 0, 10),
(63, 'Laurynas Samėnas', 'guard', 5, 56),
(64, 'Egidijus Dimša', 'forward', 12, 123),
(65, 'Spencer Butterfield', 'guard', 15, 154),
(66, 'Ugnius Nikitinas', 'guard', 0, 10),
(67, 'Rolandas Alijevas', 'guard', 12, 127),
(68, 'Chavaughn Lewis', 'forward', 8, 85),
(69, 'Michaelyn Scott', 'guard', 8, 86),
(70, 'Paulius Dambrauskas', 'guard', 9, 93),
(71, 'Eividas Mološčiakas', 'guard', 0, 10),
(72, 'Karolis Guščikas', 'forward', 5, 59),
(73, 'Gintaras Leonavičius', 'guard', 11, 112),
(74, 'Tadas Pažėra', 'guard', 1, 16),
(75, 'Cameron Ayers', 'forward', 6, 64),
(76, 'David Dudzinski', 'forward', 11, 113),
(77, 'Arūnas Sajavičius', 'forward', 0, 10),
(78, 'Rokas Giedraitis', 'forward', 16, 160),
(79, 'Domagoj Bubalo', 'center', 4, 49),
(80, 'Assem Marei', 'center', 14, 146),
(81, 'Daniel Ewing', 'guard', 10, 109),
(82, 'Arvydas Šikšnius', 'forward', 6, 61),
(83, 'Martynas Mažeika', 'guard', 7, 73),
(84, 'Mindaugas Girdžiūnas', 'guard', 9, 96),
(85, 'Angus John Brandt', 'center', 0, 10),
(86, 'Travis Bader', 'forward', 2, 21),
(87, 'Vytautas Šarakauskas', 'center', 5, 58),
(88, 'Laurynas Beliauskas', 'guard', 0, 10),
(89, 'Erikas Kubilius', 'forward', 0, 10),
(90, 'Donatas Zavackas', 'forward', 9, 99),
(91, 'Trent Plaisted', 'center', 5, 59),
(92, 'Jerai Grant', 'forward', 15, 156),
(93, 'Arnas Butkevičius', 'forward', 9, 98),
(94, 'Miljan Pavkovic', 'guard', 9, 93),
(95, 'Jermaine Love', 'guard', 6, 65),
(96, 'Lukas Aukštikalnis', 'forward', 0, 10),
(97, 'Mile Ilič', 'center', 9, 98),
(98, 'Žygimantas Janavičius', 'guard', 6, 66),
(99, 'Artūras Valeika', 'center', 11, 113),
(100, 'Simas Buterlevičius', 'forward', 10, 106),
(101, 'Ante Krapič', 'forward', 3, 30),
(102, 'Jurica Zuza', 'center', 6, 61),
(103, 'Mantas Kazonas', 'forward', 0, 10),
(104, 'Julius Kazakauskas', 'forward', 5, 58),
(105, 'Gediminas Žalalis', 'forward', 0, 10),
(106, 'Valdas Vasylius', 'forward', 12, 120),
(107, 'Arnas Labuckas', 'forward', 9, 97),
(108, 'Saah Nimley', 'guard', 8, 84),
(109, 'Edgar McKnight', 'guard', 5, 54),
(110, 'Vaidotas Volkus', 'forward', 6, 62),
(111, 'Darius Gvezdauskas', 'guard', 8, 83),
(112, 'Rokas Grinius', 'forward', 1, 14),
(113, 'Ernestas Ežerskis', 'guard', 6, 65),
(114, 'Oleksandr Kolchenko', 'forward', 7, 71),
(115, 'Tomas Gaidamavičius', 'guard', 1, 16),
(116, 'Mindaugas Kupšas', 'center', 16, 161),
(117, 'Simonas Kymantas', 'center', 6, 60),
(118, 'Grant Johnson', 'forward', 5, 59),
(119, 'Aidas Viskontas', 'guard', 4, 47),
(120, 'Taylor King', 'forward', 9, 97),
(121, 'Andrius Aleksandrovas', 'forward', 3, 33),
(122, 'Linas Lekavičius', 'guard', 7, 78),
(123, 'Edgaras Švelginas', 'guard', 0, 10),
(124, 'Tadas Rinkūnas', 'forward', 5, 52),
(125, 'Arvydas Eitutavičius', 'guard', 7, 71),
(126, 'Mindaugas Sušinskas', 'forward', 0, 10),
(127, 'Paulius Danisevicius', 'guard', 3, 30),
(128, 'Simonas Serapinas', 'forward', 6, 62),
(129, 'Osvaldas Mačernis', 'forward', 9, 90),
(130, 'Giedrius Gustas', 'guard', 5, 50),
(131, 'Tomas Urbonas', 'center', 4, 49),
(132, 'Edvinas Jezukevičius', 'center', 5, 54),
(133, 'Jeffrey Robinson', 'forward', 6, 67),
(134, 'Julius Jucikas', 'center', 14, 143);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_scores`
--

CREATE TABLE IF NOT EXISTS `fantasy_scores` (
  `team_id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `points` int(3) NOT NULL,
  KEY `team_id` (`team_id`),
  KEY `match_id` (`match_id`),
  KEY `contract_id` (`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `fantasy_scores`
--

INSERT INTO `fantasy_scores` (`team_id`, `match_id`, `contract_id`, `points`) VALUES
(42, 11, 3, 15),
(42, 11, 4, 20),
(56, 11, 1, 1),
(42, 13, 24, 20);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_teams`
--

CREATE TABLE IF NOT EXISTS `fantasy_teams` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `team_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  `team_points` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`team_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Sukurta duomenų kopija lentelei `fantasy_teams`
--

INSERT INTO `fantasy_teams` (`team_id`, `user_id`, `team_name`, `team_points`, `created_date`) VALUES
(42, 4, 'Komandoras', 55, '2016-04-05 16:59:25'),
(56, 7, 'Varnai', 1, '2016-04-08 17:49:09'),
(88, 11, 'Slotkienes', 0, '2016-05-30 08:28:55');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_user_players`
--

CREATE TABLE IF NOT EXISTS `fantasy_user_players` (
  `team_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `starting_five` int(1) NOT NULL DEFAULT '0',
  `match_player` int(1) NOT NULL DEFAULT '0',
  KEY `contract_id` (`id`),
  KEY `team_id` (`team_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `fantasy_user_players`
--

INSERT INTO `fantasy_user_players` (`team_id`, `user_id`, `id`, `starting_five`, `match_player`) VALUES
(42, 4, 1, 0, 0),
(42, 4, 3, 0, 1),
(42, 4, 74, 0, 0),
(42, 4, 33, 0, 1),
(56, 7, 1, 0, 1),
(42, 4, 4, 0, 1),
(42, 4, 29, 0, 0),
(42, 4, 24, 0, 1),
(42, 4, 32, 0, 0);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_10_21_105844_create_roles_table', 1),
('2014_10_21_110325_create_foreign_keys', 1),
('2014_10_24_205441_create_contact_table', 1),
('2014_10_26_172107_create_posts_table', 1),
('2014_10_26_172631_create_tags_table', 1),
('2014_10_26_172904_create_post_tag_table', 1),
('2014_10_26_222018_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Sukurta duomenų kopija lentelei `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `slug`, `summary`, `content`, `seen`, `active`, `user_id`) VALUES
(1, '2016-03-23 11:17:48', '2016-03-23 11:17:48', 'Post 1', 'post-1', '<img alt="" src="/filemanager/userfiles/user2/mega-champignon.png" style="float:left; height:128px; width:128px" /><p>\nLorem ipsum adipiscing ut tempor nam diam fringilla, tellus velit tristique hac nunc pretium platea, orci facilisis est inceptos lacus primis. \nLacus turpis et porttitor diam curabitur euismod tristique eros nam ad, ac nisi varius sem quisque ligula lectus lorem condimentum, vivamus lacus quisque lacus erat tellus himenaeos habitasse orci. \n</p>', '<p>\nLorem ipsum posuere aenean ligula magna torquent nisi vulputate neque quisque fusce, at dictumst sem aenean donec ultrices inceptos aenean vitae. \nIn scelerisque diam congue litora taciti velit lacinia pulvinar aenean consequat, blandit phasellus felis donec fusce etiam non egestas nec nisi, ipsum neque lorem mauris euismod praesent erat proin risus. \nAmet lacinia enim himenaeos facilisis aliquam, in quam adipiscing facilisis hac maecenas, lobortis interdum elementum mi semper, bibendum primis arcu eget. \nAliquam consectetur sodales ullamcorper aliquet sodales eget vel dapibus sagittis tempor, magna ligula a ut fames sollicitudin tristique potenti mollis venenatis, ac tempus convallis at ante metus quisque arcu tincidunt. \n</p>\n<p>\nLigula sit mi in nunc non vivamus sit suscipit venenatis aenean aliquam inceptos vestibulum iaculis taciti vulputate tincidunt mi proin, maecenas lobortis ligula duis arcu felis ut aptent dapibus dolor taciti pretium feugiat porta curabitur interdum erat. \nQuisque convallis senectus augue nulla nisi bibendum volutpat commodo, eu dictumst sagittis mattis egestas enim purus, ut curabitur vel ultricies auctor class mollis. \nDonec fringilla sit eget mauris orci odio egestas ultrices, egestas donec feugiat enim class curabitur sagittis rhoncus, imperdiet eu venenatis vivamus nibh volutpat ultricies. \nCondimentum litora et convallis enim etiam primis elit fusce pulvinar, varius vulputate senectus vitae primis gravida congue taciti, leo tincidunt at class aliquet euismod gravida nam. \n</p>\n<p>\nAdipiscing hendrerit elementum cras primis ultrices nisi commodo curabitur tempus volutpat ut, nec orci diam venenatis mi iaculis mattis placerat eros netus, sociosqu bibendum urna vehicula orci cursus ipsum morbi scelerisque tincidunt. \nGravida tincidunt dapibus ad massa auctor elit malesuada, eros enim rhoncus a habitant arcu vivamus, morbi mollis cursus curabitur fringilla tempor. \nAptent potenti nostra nulla quis metus praesent adipiscing enim aenean massa phasellus netus ut consequat id, velit commodo dapibus sit orci velit tristique ultricies bibendum tristique eu inceptos donec auctor. \nHabitant malesuada vehicula nullam at duis pellentesque a sociosqu turpis, amet erat eu eget purus vivamus maecenas magna nec, porttitor tristique at adipiscing amet viverra porttitor duis. \n</p>\n<p>\nVel elementum convallis dapibus leo taciti nec taciti mauris leo, nullam lorem fusce viverra tortor odio ipsum. \nCubilia dapibus convallis mattis semper duis sit nullam mattis mi, orci curae sagittis vel at per odio tincidunt morbi pretium, ullamcorper sit nunc vivamus sociosqu suscipit tempus ullamcorper. \nSuscipit rutrum consequat tristique erat molestie odio fringilla adipiscing porta, nam nostra pretium malesuada risus auctor porta justo nisi praesent, malesuada nulla eget aenean sodales eros fringilla eget. \nOrci sapien praesent vehicula purus ad mattis, in hac conubia litora facilisis, laoreet risus nisl dictumst ad. \n</p>\n<p>\nIaculis pulvinar dictum risus at odio augue placerat, et habitant malesuada conubia aliquam inceptos. \nFacilisis placerat lacus senectus odio mattis per posuere vulputate, torquent urna scelerisque malesuada mollis ante venenatis quis a, et aliquam vitae sodales elementum gravida venenatis. \nPorttitor egestas aenean posuere aliquet laoreet elementum ut placerat vivamus, condimentum orci pharetra etiam quam fringilla curabitur litora viverra fringilla, tempus fames at etiam faucibus urna imperdiet netus. \nFringilla ut netus rutrum sollicitudin tortor est vehicula ultrices commodo suspendisse dapibus, pellentesque aliquam rhoncus blandit netus cursus eleifend sem lacinia. \n</p>', 0, 1, 1),
(2, '2016-03-23 11:17:48', '2016-03-23 11:17:48', 'Post 2', 'post-2', '<img alt="" src="/filemanager/userfiles/user2/goomba.png" style="float:left; height:128px; width:128px" /><p>\nLorem ipsum morbi pretium augue ultrices tristique at aliquam urna, himenaeos vehicula sollicitudin nullam luctus mollis duis mi ut, blandit dapibus vehicula enim platea sem conubia porttitor. \nHimenaeos erat leo tortor taciti mollis id eros sagittis, consectetur eu etiam tempor placerat sapien lobortis, dui fames mauris vulputate rhoncus leo etiam. \n</p>', '<p>Lorem ipsum convallis ac curae non elit ultrices placerat netus metus feugiat, non conubia fusce porttitor sociosqu diam commodo metus in himenaeos, vitae aptent consequat luctus purus eleifend enim sollicitudin eleifend porta. Malesuada ac class conubia condimentum mauris facilisis conubia quis scelerisque lacinia, tempus nullam felis fusce ac potenti netus ornare semper. Molestie iaculis fermentum ornare curabitur tincidunt imperdiet scelerisque, imperdiet euismod scelerisque torquent curae rhoncus, sollicitudin tortor placerat aptent hac nec. Posuere suscipit sed tortor neque urna hendrerit vehicula duis litora tristique congue nec auctor felis libero, ornare habitasse nec elit felis inceptos tellus inceptos cubilia quis mattis faucibus sem non.</p>\n\n<p>Odio fringilla class aliquam metus ipsum lorem luctus pharetra dictum, vehicula tempus in venenatis gravida ut gravida proin orci, quis sed platea mi quisque hendrerit semper hendrerit. Facilisis ante sapien faucibus ligula commodo vestibulum rutrum pretium, varius sem aliquet himenaeos dolor cursus nunc habitasse, aliquam ut curabitur ipsum luctus ut rutrum. Odio condimentum donec suscipit molestie est etiam sit rutrum dui nostra, sem aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus, risus tortor non mauris turpis eget integer nibh dolor. Commodo venenatis ut molestie semper adipiscing amet cras, class donec sapien malesuada auctor sapien arcu inceptos, aenean consequat metus litora mattis vivamus.</p>\n\n<pre>\n<code class="language-php">protected function getUserByRecaller($recaller)\n{\n	if ($this-&gt;validRecaller($recaller) &amp;&amp; ! $this-&gt;tokenRetrievalAttempted)\n	{\n		$this-&gt;tokenRetrievalAttempted = true;\n\n		list($id, $token) = explode("|", $recaller, 2);\n\n		$this-&gt;viaRemember = ! is_null($user = $this-&gt;provider-&gt;retrieveByToken($id, $token));\n\n		return $user;\n	}\n}</code></pre>\n\n<p>Feugiat arcu adipiscing mauris primis ante ullamcorper ad nisi, lobortis arcu per orci malesuada blandit metus tortor, urna turpis consectetur porttitor egestas sed eleifend. Eget tincidunt pharetra varius tincidunt morbi malesuada elementum mi torquent mollis, eu lobortis curae purus amet vivamus amet nulla torquent, nibh eu diam aliquam pretium donec aliquam tempus lacus. Tempus feugiat lectus cras non velit mollis sit et integer, egestas habitant auctor integer sem at nam massa himenaeos, netus vel dapibus nibh malesuada leo fusce tortor. Sociosqu semper facilisis semper class tempus faucibus tristique duis eros, cubilia quisque habitasse aliquam fringilla orci non vel, laoreet dolor enim justo facilisis neque accumsan in.</p>\n\n<p>Ad venenatis hac per dictumst nulla ligula donec, mollis massa porttitor ullamcorper risus eu platea, fringilla habitasse suscipit pellentesque donec est. Habitant vehicula tempor ultrices placerat sociosqu ultrices consectetur ullamcorper tincidunt quisque tellus, ante nostra euismod nec suspendisse sem curabitur elit malesuada lacus. Viverra sagittis sit ornare orci augue nullam adipiscing pulvinar libero aliquam vestibulum platea cursus pellentesque leo dui lectus, curabitur euismod ad erat curae non elit ultrices placerat netus metus feugiat non conubia fusce porttitor. Sociosqu diam commodo metus in himenaeos vitae aptent consequat luctus purus eleifend enim sollicitudin eleifend, porta malesuada ac class conubia condimentum mauris facilisis conubia quis scelerisque lacinia.</p>\n\n<p>Tempus nullam felis fusce ac potenti netus ornare semper molestie iaculis, fermentum ornare curabitur tincidunt imperdiet scelerisque imperdiet euismod. Scelerisque torquent curae rhoncus sollicitudin tortor placerat aptent hac, nec posuere suscipit sed tortor neque urna hendrerit, vehicula duis litora tristique congue nec auctor. Felis libero ornare habitasse nec elit felis, inceptos tellus inceptos cubilia quis mattis, faucibus sem non odio fringilla. Class aliquam metus ipsum lorem luctus pharetra dictum vehicula, tempus in venenatis gravida ut gravida proin orci, quis sed platea mi quisque hendrerit semper.</p>\n', 0, 1, 2),
(3, '2016-03-23 11:17:48', '2016-03-23 11:17:48', 'Post 3', 'post-3', '<img alt="" src="/filemanager/userfiles/user2/rouge-shell.png" style="float:left; height:128px; width:128px" /><p>\nLorem ipsum phasellus rhoncus congue placerat feugiat scelerisque sociosqu molestie eu vehicula, aenean netus donec quam est class nisl hendrerit turpis sit, arcu cras hac ornare nullam cras egestas a hendrerit consectetur. \nElit amet congue cursus aliquam dictumst suscipit, at sociosqu iaculis quam sem commodo, mattis eros elit mauris nostra. \n</p>', '<p>\nLorem ipsum fames donec sem nunc conubia rutrum integer scelerisque, magna donec magna praesent enim odio ornare volutpat ac, sollicitudin per platea donec non mollis nunc metus. \nPorta sapien ante aenean etiam orci nulla quam, inceptos et risus pretium cursus mattis, donec vel himenaeos tristique rhoncus iaculis. \nDonec commodo platea sem congue himenaeos phasellus auctor primis ad fermentum, himenaeos habitasse laoreet vivamus a nibh malesuada nunc nulla pretium mauris, enim class dictumst facilisis venenatis luctus feugiat non erat. \nHabitant risus tortor ornare a sociosqu interdum quisque lacinia, pharetra tempus maecenas ultricies sollicitudin semper sollicitudin, congue cursus suspendisse torquent aenean habitasse elementum. \n</p>\n<p>\nVel phasellus potenti mattis sed class tempor per placerat egestas mattis vitae faucibus lacus, sollicitudin accumsan leo nulla sed nibh nisi dictumst aenean iaculis ipsum. \nEuismod ac velit habitant interdum venenatis nostra bibendum taciti nisi ligula, suspendisse litora nunc ut sapien metus ante rhoncus maecenas magna accumsan, fringilla commodo erat augue vulputate pellentesque congue lacus laoreet. \nFermentum id ultrices ad ultrices lectus ultricies etiam, ut integer etiam nam maecenas est, turpis ligula ac tincidunt lectus iaculis. \nTincidunt ornare hendrerit torquent sed magna consequat cursus elementum fames, sodales ut ullamcorper lorem inceptos vestibulum massa cras primis et, porta imperdiet dolor mauris arcu inceptos velit vulputate. \n</p>\n<p>\nNeque laoreet enim integer fusce euismod sem cubilia tortor fermentum rhoncus hendrerit pellentesque consequat potenti sapien, lorem aenean consectetur senectus interdum malesuada viverra amet tristique cursus consectetur tellus luctus urna. \nAc posuere fermentum curabitur amet bibendum donec ultrices suspendisse ipsum eu, scelerisque etiam sed sem condimentum tempor suspendisse proin platea metus, purus vehicula sodales justo morbi senectus feugiat duis feugiat. \nTempus congue ligula turpis aliquet molestie volutpat nec vulputate commodo aenean, in maecenas eu egestas euismod malesuada hendrerit nostra conubia at, tortor consectetur aliquam ut senectus fusce imperdiet egestas lobortis. \n</p>\n<p>\nSapien purus nulla torquent vestibulum dapibus mauris quisque consectetur leo platea, euismod scelerisque facilisis cubilia ornare pulvinar tempor magna ipsum. \nAd habitant lacinia lobortis semper duis massa erat, libero dictumst curabitur mauris et elit, eu fames facilisis ut adipiscing varius. \nRisus nam egestas morbi phasellus vulputate donec conubia molestie vulputate tristique, laoreet nostra lobortis hac magna proin malesuada inceptos diam, ullamcorper semper inceptos tristique in leo in nisi senectus. \nErat dui at venenatis facilisis per eget molestie, diam bibendum venenatis semper sollicitudin etiam aliquam odio, vitae nisl rutrum ultrices elit interdum. \n</p>\n<p>\nAmet varius consequat semper potenti nostra augue nullam diam facilisis, aliquet nisi quam luctus morbi vestibulum faucibus vivamus. \nFermentum felis molestie ligula porta habitasse platea consequat ullamcorper malesuada tincidunt, hendrerit enim purus odio dapibus primis scelerisque rutrum aliquam nisl class, lectus arcu himenaeos auctor mi odio ultrices sociosqu dui. \nElit integer platea orci mauris quis magna id himenaeos donec aptent, praesent curabitur taciti malesuada aliquet ut ad fusce taciti. \nEros massa sodales aptent nostra erat metus risus dolor nulla tempor commodo, class faucibus risus arcu non fermentum dolor suspendisse rutrum magna odio, ut purus luctus tempus morbi curae at donec maecenas eu. \n</p>\n<p>\nLeo semper consequat fames habitasse consectetur et, aliquam cubilia scelerisque eu ultrices. \n</p>', 0, 1, 2),
(4, '2016-03-23 11:17:48', '2016-03-23 11:17:48', 'Post 4', 'post-4', '<img alt="" src="/filemanager/userfiles/user2/rouge-shyguy.png" style="float:left; height:128px; width:128px" /><p>\nLorem ipsum ante aliquam ornare lorem ultrices porttitor aptent aliquam, augue ornare fermentum sed dolor inceptos mollis placerat a, dolor venenatis orci conubia dictumst sociosqu maecenas etiam. \nTempus consequat platea elementum quisque lorem nunc mi porta, euismod nullam tempor curabitur a conubia eleifend, placerat augue auctor eros elementum tortor nam. \n</p>', '<p>\nLorem ipsum fusce curae laoreet metus nam ac, ut orci torquent hendrerit sem lobortis sit, nibh tempus suspendisse posuere vestibulum tincidunt. \nHimenaeos aliquet curabitur tristique venenatis dui quam est nunc tortor facilisis, arcu sagittis dolor blandit himenaeos sollicitudin consectetur congue nunc etiam, ipsum enim ligula netus gravida praesent primis faucibus quam. \nNeque rhoncus integer cubilia pellentesque pulvinar aptent integer placerat, auctor etiam hac inceptos at tortor arcu ligula est, cubilia augue erat accumsan ornare lectus gravida. \nCurabitur felis sed eleifend quisque amet elementum suscipit volutpat elit, fusce consectetur at tortor per posuere fames pretium curabitur aptent, mollis leo laoreet elit laoreet est habitant nec. \n</p>\n<p>\nCurabitur tempus curae interdum ultrices convallis enim libero nisl commodo, non accumsan suspendisse fusce lorem molestie cras cubilia ut, tortor curabitur feugiat aliquam aenean lobortis malesuada vulputate. \nSemper volutpat nam euismod primis ultrices torquent ante mollis sollicitudin consectetur, in commodo in faucibus lacinia ut faucibus platea ultrices euismod, nostra malesuada ligula turpis vivamus scelerisque tincidunt vitae egestas. \nPraesent mauris donec posuere adipiscing proin velit convallis maecenas, primis diam tincidunt nunc proin auctor elit turpis, ornare diam cursus posuere placerat dictumst arcu. \nTortor fames vestibulum adipiscing dapibus facilisis eros sociosqu sagittis, lectus dictum mauris mattis inceptos donec class netus, aliquam platea phasellus fames suscipit quisque placerat. \n</p>\n<p>\nPotenti duis sollicitudin libero ultrices volutpat tincidunt euismod eget, quisque nostra vel cubilia inceptos commodo erat donec pharetra, augue taciti tristique sodales neque cras faucibus. \nSagittis pellentesque ligula fermentum integer amet leo habitasse fringilla risus ante tortor orci, lectus venenatis vehicula sollicitudin inceptos at tincidunt placerat metus sollicitudin. \nMattis dapibus habitasse porta bibendum aliquam sollicitudin enim habitasse dui odio, fringilla sagittis condimentum vehicula vestibulum lacinia posuere lacinia pretium consectetur porta, neque pellentesque etiam ad vestibulum enim est fames mollis. \nDui tellus semper conubia laoreet aptent nibh torquent sapien est class, dapibus posuere torquent egestas conubia etiam curabitur conubia id sodales, tempor inceptos quam posuere libero consequat et a netus. \n</p>\n<p>\nMollis pretium quisque ultricies primis laoreet pretium cras at, ad imperdiet venenatis scelerisque fermentum augue non iaculis primis, hac varius rutrum donec sapien duis tellus. \nMolestie iaculis curabitur bibendum mattis congue netus, vehicula auctor tempus facilisis commodo non et, mollis est justo facilisis massa. \nErat duis massa ullamcorper at gravida praesent viverra, erat elit feugiat enim class in malesuada, libero duis pretium congue metus hac. \nConsectetur lorem sed sit torquent sagittis ullamcorper elementum convallis ante ornare, leo nam potenti risus nostra consectetur accumsan hendrerit taciti. \nCongue bibendum enim laoreet quam ac, sit donec blandit dapibus porta cras, porta fames mauris tempor. \n</p>\n<p>\nSapien condimentum pellentesque tempor facilisis lorem interdum neque aenean mauris mollis, ligula maecenas pellentesque tempor in sodales ac scelerisque quis, feugiat fringilla vestibulum aliquam conubia proin duis leo ut. \nMolestie curabitur metus amet cubilia habitasse interdum arcu curae, tortor venenatis scelerisque morbi suscipit accumsan nullam felis convallis, aliquet facilisis rhoncus congue blandit venenatis pretium. \nAc viverra aliquam felis sollicitudin odio posuere donec non suspendisse, iaculis inceptos congue orci curabitur vehicula dapibus sociosqu nec, molestie enim orci tempor orci rutrum hendrerit ac. \n</p>', 0, 1, 2);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `post_tag`
--

CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_post_id_foreign` (`post_id`),
  KEY `post_tag_tag_id_foreign` (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Sukurta duomenų kopija lentelei `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 3, 2),
(8, 3, 4);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Sukurta duomenų kopija lentelei `roles`
--

INSERT INTO `roles` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '2016-03-23 11:17:47', '2016-03-23 11:17:47'),
(2, 'Redactor', 'redac', '2016-03-23 11:17:47', '2016-03-23 11:17:47'),
(3, 'User', 'user', '2016-03-23 11:17:47', '2016-03-23 11:17:47');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tag` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_tag_unique` (`tag`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Sukurta duomenų kopija lentelei `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `tag`) VALUES
(1, '2016-03-23 11:17:48', '2016-03-23 11:17:48', 'Tag1'),
(2, '2016-03-23 11:17:48', '2016-03-23 11:17:48', 'Tag2'),
(3, '2016-03-23 11:17:48', '2016-03-23 11:17:48', 'Tag3'),
(4, '2016-03-23 11:17:48', '2016-03-23 11:17:48', 'Tag4');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `valid` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credits` int(11) NOT NULL DEFAULT '1000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Sukurta duomenų kopija lentelei `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role_id`, `seen`, `valid`, `confirmed`, `confirmation_code`, `created_at`, `updated_at`, `remember_token`, `credits`) VALUES
(1, 'GreatAdmin', 'admin@la.fr', '$2y$10$qJo62du1JmGhKkwCPMcvm.7DojNpMZCG8dbVf8zvxj6OoFH/Eq5ym', 1, 1, 0, 1, NULL, '2016-03-23 11:17:47', '2016-05-30 05:31:14', '3i2FrLB6IdlntyjkBtrVZ8oHsxNjpDk8GNlKV37ezKQUFVquJCNyJz7atRed', 1000),
(2, 'GreatRedactor', 'redac@la.fr', '$2y$10$ej9fJxZRSrtINaC7dUVPQugtoa3hw37FtfytWwk0orifQpDMHbyni', 2, 1, 1, 1, NULL, '2016-03-23 11:17:48', '2016-04-13 16:13:15', NULL, 1000),
(3, 'Walker', 'walker@la.fr', '$2y$10$pg9ruZrFSTYVXT5fKwKipO75JcUK2lPWSZkv/38MTr/nTpBkNa836', 3, 0, 0, 1, NULL, '2016-03-23 11:17:48', '2016-04-13 16:12:10', NULL, 1000),
(4, 'Slacker', 'slacker@la.fr', '$2y$10$nrNnfBWiGHJJxpzlRRJsjOapflZtASb2NxJ5oGscLbfNPe5KNb4aO', 3, 0, 0, 1, NULL, '2016-03-23 11:17:48', '2016-05-30 05:27:59', 'yXt3k5gLzSmYqnXLsbl8MMgREE36Dj6Cqm169h2Jdi7TA2H7vbGwW5Cdlrs4', 159),
(7, 'elvinas', '', '$2y$10$.G/IziZPeTg1w73iiIcMsuq/jqCO6fwxSd/7SVEYiNeObj8yj0WdC', 3, 0, 0, 1, NULL, '2016-03-24 15:20:07', '2016-04-13 18:44:16', 'kiF05zMixieU0zhASo8CM10QOiYShtwMJzywsQekmOFrTrjtwgJsMB7a8zpQ', 923),
(8, 'Johnson Paucek Sr.', 'Georgette74@example.net', '$2y$10$nQKqxFz0blNGYDfgNAinCO7akIE2VVaWceH81VsVYwBY8jIBWLqLi', 1, 1, 0, 1, NULL, '2016-03-31 14:58:37', '2016-03-31 14:58:37', 'ykCsUlQilY', 1000),
(9, 'Miss Juliana Lang', 'Sasha81@example.net', '$2y$10$wYw0fond7Qh5dlxaKeBLbOEqqtbm1n/VjK0iLLONnuXSb1lCP5zAe', 1, 1, 0, 1, NULL, '2016-03-31 14:59:43', '2016-03-31 14:59:43', '8HWUhb0x5D', 1000),
(10, 'Jaquan Morissette', 'bReilly@example.net', '$2y$10$izUxmVu4KZXttvHFhcq9E.ntdolodCdtyzSw1WoU455YcjQBVVqxO', 1, 1, 0, 1, NULL, '2016-03-31 15:00:07', '2016-03-31 15:00:07', 'Ik4pY0jHYz', 1000),
(11, 'EmptyUser', 'elvinas21@gmail.com', '$2y$10$paZvhqR/x3OmppMtTgfrwOjt6DgZWKkhgQygaV1ZVU2rXQt0Hvw.G', 3, 0, 0, 1, NULL, '2016-04-10 16:59:54', '2016-05-30 05:30:28', 'sCQrc3sa6O8nhSqplGL2bDa02qhNHRrV0PyOCbqSjWJyGjzUTgQ8WpIVsxL6', 1000);

--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Apribojimai lentelei `fantasy_contracts`
--
ALTER TABLE `fantasy_contracts`
  ADD CONSTRAINT `fantasy_contracts_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `fantasy_club` (`club_id`),
  ADD CONSTRAINT `fantasy_contracts_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `fantasy_players` (`player_id`);

--
-- Apribojimai lentelei `fantasy_match_scores`
--
ALTER TABLE `fantasy_match_scores`
  ADD CONSTRAINT `fantasy_match_scores_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `fantasy_match` (`match_id`),
  ADD CONSTRAINT `fantasy_match_scores_ibfk_2` FOREIGN KEY (`contract_id`) REFERENCES `fantasy_contracts` (`contract_id`);

--
-- Apribojimai lentelei `fantasy_scores`
--
ALTER TABLE `fantasy_scores`
  ADD CONSTRAINT `fantasy_scores_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `fantasy_teams` (`team_id`),
  ADD CONSTRAINT `fantasy_scores_ibfk_3` FOREIGN KEY (`match_id`) REFERENCES `fantasy_match_scores` (`match_id`);

--
-- Apribojimai lentelei `fantasy_user_players`
--
ALTER TABLE `fantasy_user_players`
  ADD CONSTRAINT `fantasy_user_players_ibfk_1` FOREIGN KEY (`id`) REFERENCES `fantasy_contracts` (`contract_id`);

--
-- Apribojimai lentelei `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Apribojimai lentelei `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Apribojimai lentelei `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
