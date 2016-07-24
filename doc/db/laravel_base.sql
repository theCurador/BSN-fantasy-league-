-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u2
-- http://www.phpmyadmin.net
--
-- Darbinė stotis: localhost
-- Atlikimo laikas: 2016 m. Kov 31 d. 18:37
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
(1, '2016-03-23 11:17:48', '2016-03-23 11:17:48', '<p>\nLorem ipsum sollicitudin porttitor egestas euismod lobortis pulvinar libero per vestibulum turpis inceptos varius adipiscing, fusce luctus rutrum elementum habitant facilisis eget varius cursus at mi lectus euismod. \nVel viverra sed litora pulvinar neque viverra ut leo dapibus, quisque interdum convallis molestie dapibus diam commodo auctor, varius elit primis potenti ultricies aliquam proin mattis. \nDapibus aliquet eu ultricies potenti nec per egestas facilisis at, morbi conubia ornare dictumst vehicula iaculis eu pulvinar amet, vulputate habitasse dui erat gravida vivamus sollicitudin commodo. \nPlacerat commodo tempus sociosqu faucibus non etiam ac vestibulum, posuere vestibulum augue ante eleifend lectus massa rutrum, auctor conubia hendrerit elit amet volutpat augue. \n</p>\n<p>\nGravida mollis id sit inceptos tempus enim, senectus auctor odio varius. \nMolestie conubia sed venenatis habitasse etiam metus sollicitudin accumsan vel, erat vitae porttitor consectetur faucibus inceptos ad maecenas primis eu, rutrum sagittis habitasse himenaeos hendrerit ornare proin aptent. \nTurpis tincidunt mauris scelerisque vitae fringilla in posuere urna vel blandit, duis varius duis sapien conubia sed consequat ante non, venenatis porta in litora lectus mi congue placerat et. \nVehicula libero venenatis enim praesent euismod viverra proin, integer orci nam curabitur varius mattis, commodo pretium nostra dapibus facilisis luctus. \n</p>\n<p>\nVarius leo sed aliquet ipsum, per donec. \n</p>', 0, 2, 1),
(2, '2016-03-23 11:17:48', '2016-03-23 11:17:48', '<p>\nLorem ipsum dolor duis ac praesent odio sagittis luctus, cursus aptent porta diam et aptent mollis, lectus dui nam ultricies viverra lectus conubia. \nFermentum id proin hendrerit nunc hendrerit urna egestas magna a eget placerat, duis aliquam consectetur nostra cubilia accumsan blandit vulputate sagittis aliquam, curabitur sit purus nostra eu habitant faucibus nisi lacinia aliquam. \nSuscipit ante fringilla curabitur odio proin amet vehicula amet augue purus, fames habitant fusce scelerisque ut taciti imperdiet in fames, dui condimentum consectetur hac torquent pellentesque eget habitasse id. \nLibero curabitur per iaculis velit porta odio amet potenti cras metus laoreet, elementum massa aptent aliquet ligula est lorem habitasse maecenas tristique, duis bibendum sagittis sed arcu pharetra dictumst pellentesque faucibus posuere. \n</p>\n<p>\nLaoreet eros ullamcorper nulla ut feugiat fames luctus justo vitae, bibendum aptent felis lacus vulputate adipiscing etiam lacinia, class morbi maecenas euismod quisque pretium tortor suspendisse. \nDictumst auctor cursus tellus tincidunt pharetra sociosqu arcu porttitor, libero venenatis ad senectus torquent sed tempor curae, ut pulvinar fringilla suscipit vitae bibendum morbi. \nAenean habitant iaculis semper donec tempor condimentum maecenas leo habitasse ad gravida, porttitor vel maecenas adipiscing porttitor hac augue fermentum mattis aliquam nibh sed, bibendum donec leo neque primis ligula ipsum ornare praesent habitasse. \n</p>', 0, 2, 2),
(3, '2016-03-23 11:17:48', '2016-03-23 11:17:48', '<p>\nLorem ipsum fringilla viverra euismod vitae justo interdum dictumst sapien, euismod diam non etiam donec vivamus eleifend molestie ad, at amet ut aptent praesent ut fames porttitor. \nCondimentum posuere arcu fermentum fames bibendum vestibulum a donec erat nibh, curabitur eget rutrum in nec velit duis nisi arcu sit, erat per nam porta eget non inceptos dui pulvinar. \nNam lacus consequat ac erat varius adipiscing ut leo justo egestas convallis, tristique proin etiam a volutpat bibendum fames fringilla donec auctor felis, arcu fames faucibus curabitur himenaeos volutpat eros tempus donec praesent. \n</p>\n<p>\nElit sollicitudin consequat id tincidunt vestibulum mi sem pulvinar commodo, sociosqu sagittis aenean at aliquet ut turpis quam. \nNeque scelerisque lobortis faucibus euismod malesuada etiam, sollicitudin nullam nisl turpis vestibulum platea imperdiet, egestas odio auctor lectus donec. \nLacinia dolor aenean tempor est lacinia dui, tellus eleifend in mattis est curae nibh, suscipit eget urna scelerisque dapibus. \nAenean tincidunt blandit justo ultrices sapien sed lorem volutpat massa commodo est tincidunt, aenean accumsan lorem netus praesent congue tempor neque cras neque. \nAmet mauris vulputate senectus hac elit aptent vehicula lorem auctor sapien, donec habitasse eget at lectus platea curae aenean et aliquam dapibus, rhoncus egestas taciti egestas imperdiet aliquam blandit non sodales. \n</p>', 0, 3, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_contracts`
--

CREATE TABLE IF NOT EXISTS `fantasy_contracts` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT,
  `club_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `expire` int(1) NOT NULL,
  PRIMARY KEY (`contract_id`),
  KEY `club_id` (`club_id`,`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_match`
--

CREATE TABLE IF NOT EXISTS `fantasy_match` (
  `match_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_date` datetime NOT NULL,
  `home_club_id` int(11) NOT NULL,
  `guest_club_id` int(11) NOT NULL,
  PRIMARY KEY (`match_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_match_scores`
--

CREATE TABLE IF NOT EXISTS `fantasy_match_scores` (
  `game_id` int(11) NOT NULL,
  `constract_id` int(11) NOT NULL,
  `points` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_players`
--

CREATE TABLE IF NOT EXISTS `fantasy_players` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  `surname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_lithuanian_ci NOT NULL,
  `position` varchar(30) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `eff` smallint(3) DEFAULT NULL,
  `price` smallint(3) NOT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_scores`
--

CREATE TABLE IF NOT EXISTS `fantasy_scores` (
  `team_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `points` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_teams`
--

CREATE TABLE IF NOT EXISTS `fantasy_teams` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `team_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Sukurta duomenų kopija lentelei `fantasy_teams`
--

INSERT INTO `fantasy_teams` (`team_id`, `user_id`, `team_name`, `created_date`) VALUES
(2, 7, 'Testine', '2016-03-25 12:11:48'),
(33, 4, 'komanda', '2016-03-31 14:03:06'),
(36, 99, 'testineKomanda', '2016-03-31 18:00:07');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `fantasy_user_players`
--

CREATE TABLE IF NOT EXISTS `fantasy_user_players` (
  `team_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `constract_id` int(11) NOT NULL,
  `starting_five` int(1) NOT NULL DEFAULT '0',
  `match_player` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Sukurta duomenų kopija lentelei `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role_id`, `seen`, `valid`, `confirmed`, `confirmation_code`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'GreatAdmin', 'admin@la.fr', '$2y$10$qJo62du1JmGhKkwCPMcvm.7DojNpMZCG8dbVf8zvxj6OoFH/Eq5ym', 1, 1, 0, 1, NULL, '2016-03-23 11:17:47', '2016-03-25 14:55:23', 'i9hJeHUoba28sXmaoZpgzkOe8bfUCqzbU7hzObTk7zvuX01all9mDygHusBK'),
(2, 'GreatRedactor', 'redac@la.fr', '$2y$10$ej9fJxZRSrtINaC7dUVPQugtoa3hw37FtfytWwk0orifQpDMHbyni', 2, 1, 1, 1, NULL, '2016-03-23 11:17:48', '2016-03-23 11:17:48', NULL),
(3, 'Walker', 'walker@la.fr', '$2y$10$pg9ruZrFSTYVXT5fKwKipO75JcUK2lPWSZkv/38MTr/nTpBkNa836', 3, 0, 0, 1, NULL, '2016-03-23 11:17:48', '2016-03-23 11:17:48', NULL),
(4, 'Slacker', 'slacker@la.fr', '$2y$10$nrNnfBWiGHJJxpzlRRJsjOapflZtASb2NxJ5oGscLbfNPe5KNb4aO', 3, 0, 0, 1, NULL, '2016-03-23 11:17:48', '2016-03-31 13:24:51', 'm1JYwzLotTSXIBHOk9TsMOjfxy441wxtNOoivXdc8hXXmn64lEdBqqtMBh18'),
(7, 'elvinas', 'elvinas21@gmail.com', '$2y$10$.G/IziZPeTg1w73iiIcMsuq/jqCO6fwxSd/7SVEYiNeObj8yj0WdC', 3, 0, 0, 1, NULL, '2016-03-24 15:20:07', '2016-03-25 14:58:04', '8mGy3JcxIQyQF6voPwtemmyMnmo6fjkZXVCZ1NmuYTqnqp2hUhvUSYUL8eE0'),
(8, 'Johnson Paucek Sr.', 'Georgette74@example.net', '$2y$10$nQKqxFz0blNGYDfgNAinCO7akIE2VVaWceH81VsVYwBY8jIBWLqLi', 1, 1, 0, 1, NULL, '2016-03-31 14:58:37', '2016-03-31 14:58:37', 'ykCsUlQilY'),
(9, 'Miss Juliana Lang', 'Sasha81@example.net', '$2y$10$wYw0fond7Qh5dlxaKeBLbOEqqtbm1n/VjK0iLLONnuXSb1lCP5zAe', 1, 1, 0, 1, NULL, '2016-03-31 14:59:43', '2016-03-31 14:59:43', '8HWUhb0x5D'),
(10, 'Jaquan Morissette', 'bReilly@example.net', '$2y$10$izUxmVu4KZXttvHFhcq9E.ntdolodCdtyzSw1WoU455YcjQBVVqxO', 1, 1, 0, 1, NULL, '2016-03-31 15:00:07', '2016-03-31 15:00:07', 'Ik4pY0jHYz');

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
