-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 30 Mai 2018 à 19:02
-- Version du serveur :  10.0.34-MariaDB-0ubuntu0.16.04.1
-- Version de PHP :  7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `musicdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `album`
--

INSERT INTO `album` (`id`, `label`) VALUES
(1, 'Maxime le forestier - Mon frère'),
(2, 'Maxime le forestier - Le cadeau'),
(3, 'Stevie Wonder - Natural Wonder'),
(4, 'Stevie Wonder - Conversation Peace'),
(5, 'Sting - 44/876'),
(6, 'Sting - 57TH &9TH'),
(7, 'Yves Duteil - La tarentelle'),
(8, 'Tri Yann - La belle enchantée'),
(9, 'Tri Yann - La Pélégrin'),
(10, 'Tri Yann - Chansons de marins'),
(11, 'Nina Simone - Baltimore'),
(12, 'Nina Simone - Let it be me'),
(13, 'Nina Simone - I put a spell on you'),
(14, 'Boris Vian - Le déserteur');

-- --------------------------------------------------------

--
-- Structure de la table `concert_hall`
--

CREATE TABLE `concert_hall` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `concert_hall`
--

INSERT INTO `concert_hall` (`id`, `name`, `city`) VALUES
(1, 'Zenith', 'Paris'),
(2, 'Cigale', 'Paris'),
(3, 'Le ferailleur', 'Nantes'),
(4, 'La citée des congrès', 'Nantes'),
(5, 'Ancienne usine Fagor-Brandt', 'Lyon'),
(6, 'Le Poste à Galène', 'Marseille');

-- --------------------------------------------------------

--
-- Structure de la table `singer`
--

CREATE TABLE `singer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `singer`
--

INSERT INTO `singer` (`id`, `name`) VALUES
(1, 'Nina Simone'),
(2, 'Sting'),
(3, 'Boris Vian'),
(4, 'Stevie Wonder'),
(5, 'Yves Duteil'),
(6, 'Maxime le Forestier'),
(7, 'Tri Yann');

-- --------------------------------------------------------

--
-- Structure de la table `song`
--

CREATE TABLE `song` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `song`
--

INSERT INTO `song` (`id`, `title`, `album_id`) VALUES
(3, 'Chanson 1 ', 1),
(4, 'Chanson 2', 1),
(5, 'Chanson 3 ', 1),
(6, 'Chanson 4', 1),
(7, 'Chanson 5', 1),
(8, 'Chanson 6', 1),
(9, 'Chanson 7', 1),
(10, 'Chanson 8', 1),
(11, 'Chanson 9', 1),
(12, 'Chanson 10', 1),
(13, 'Chanson 11', 1),
(14, 'Chanson 12', 1),
(15, 'Chanson 13', 1),
(16, 'Chanson 14', 1),
(17, 'Chanson 15', 1),
(18, 'Chanson 16', 1),
(19, 'Chanson 17', 1),
(20, 'Chanson 18', 1),
(21, 'Chanson 19', 1),
(22, 'Chanson 20', 1),
(23, 'Chanson 21', 1),
(24, 'Chanson 22', 1),
(25, 'Chanson 23', 1),
(26, 'Chanson 24', 1),
(27, 'Chanson 1 ', 2),
(28, 'Chanson 2 ', 2),
(29, 'Chanson 3 ', 2),
(30, 'Chanson 4', 2),
(31, 'Chanson 5', 2),
(32, 'Chanson 6', 2),
(33, 'Chanson 7', 2),
(34, 'Chanson 8', 2),
(35, 'Chanson 9', 2),
(36, 'Chanson 10', 2),
(37, 'Chanson 11', 2),
(38, 'Chanson 12', 2),
(39, 'Chanson 13', 2),
(40, 'Chanson 1 ', 3),
(41, 'Chanson 2 ', 3),
(42, 'Chanson 3 ', 3),
(43, 'Chanson 4', 3),
(44, 'Chanson 5', 3),
(45, 'Chanson 6', 3),
(46, 'Chanson 7', 3),
(47, 'Chanson 8', 3),
(48, 'Chanson 9', 3),
(49, 'Chanson 10', 3),
(50, 'Chanson 11', 3),
(51, 'Chanson 12', 3),
(52, 'Chanson 13', 3),
(53, 'Chanson 14', 3),
(54, 'Chanson 15', 3),
(55, 'Chanson 16', 3),
(56, 'Chanson 17', 3),
(57, 'Chanson 1 ', 4),
(58, 'Chanson 2 ', 4),
(59, 'Chanson 3 ', 4),
(60, 'Chanson 4', 4),
(61, 'Chanson 5', 4),
(62, 'Chanson 6', 4),
(63, 'Chanson 7', 4),
(64, 'Chanson 8', 4),
(65, 'Chanson 9', 4),
(66, 'Chanson 10', 4),
(67, 'Chanson 11', 4),
(68, 'Chanson 12', 4),
(69, 'Chanson 13', 4),
(70, 'Chanson 14', 4),
(71, 'Chanson 15', 4),
(72, 'Chanson 16', 4),
(73, 'Chanson 17', 4),
(74, 'Chanson 18', 4),
(75, 'Chanson 19', 4),
(76, 'Chanson 20', 4),
(77, 'Chanson 1 ', 5),
(78, 'Chanson 2 ', 5),
(79, 'Chanson 3 ', 5),
(80, 'Chanson 4', 5),
(81, 'Chanson 5', 5),
(82, 'Chanson 6', 5),
(83, 'Chanson 1 ', 6),
(84, 'Chanson 2 ', 6),
(85, 'Chanson 3 ', 6),
(86, 'Chanson 4', 6),
(87, 'Chanson 5', 6),
(88, 'Chanson 6', 6),
(89, 'Chanson 7', 6),
(90, 'Chanson 8', 6),
(91, 'Chanson 9', 6),
(92, 'Chanson 10', 6),
(93, 'Chanson 11', 6),
(94, 'Chanson 12', 6),
(95, 'Chanson 13', 6),
(96, 'Chanson 14', 6),
(97, 'Chanson 15', 6),
(98, 'Chanson 1 ', 7),
(99, 'Chanson 2 ', 7),
(100, 'Chanson 3 ', 7),
(101, 'Chanson 4', 7),
(102, 'Chanson 5', 7),
(103, 'Chanson 6', 7),
(104, 'Chanson 7', 7),
(105, 'Chanson 8', 7),
(106, 'Chanson 9', 7),
(107, 'Chanson 10', 7),
(108, 'Chanson 11', 7),
(109, 'Chanson 12', 7),
(110, 'Chanson 13', 7),
(111, 'Chanson 14', 7),
(112, 'Chanson 1 ', 8),
(113, 'Chanson 2 ', 8),
(114, 'Chanson 3 ', 8),
(115, 'Chanson 4', 8),
(116, 'Chanson 5', 8),
(117, 'Chanson 6', 8),
(118, 'Chanson 7', 8),
(119, 'Chanson 8', 8),
(120, 'Chanson 9', 8),
(121, 'Chanson 10', 8),
(122, 'Chanson 11', 8),
(123, 'Chanson 12', 8),
(124, 'Chanson 13', 8),
(125, 'Chanson 14', 8),
(126, 'Chanson 15', 8),
(127, 'Chanson 16', 8),
(128, 'Chanson 17', 8),
(129, 'Chanson 18', 8),
(130, 'Chanson 19', 8),
(131, 'Chanson 20', 8),
(132, 'Chanson 21', 8),
(133, 'Chanson 22', 8),
(134, 'Chanson 23', 8),
(135, 'Chanson 24', 8),
(136, 'Chanson 1 ', 9),
(137, 'Chanson 2 ', 9),
(138, 'Chanson 3 ', 9),
(139, 'Chanson 4', 9),
(140, 'Chanson 5', 9),
(141, 'Chanson 6', 9),
(142, 'Chanson 7', 9),
(143, 'Chanson 8', 9),
(144, 'Chanson 9', 9),
(145, 'Chanson 10', 9),
(146, 'Chanson 11', 9),
(147, 'Chanson 12', 9),
(148, 'Chanson 13', 9),
(149, 'Chanson 14', 9),
(150, 'Chanson 15', 9),
(151, 'Chanson 16', 9),
(152, 'Chanson 17', 9),
(153, 'Chanson 18', 9),
(154, 'Chanson 19', 9),
(155, 'Chanson 20', 9),
(156, 'Chanson 21', 9),
(157, 'Chanson 22', 9),
(158, 'Chanson 23', 9),
(159, 'Chanson 24', 9),
(160, 'Chanson 1 ', 10),
(161, 'Chanson 2 ', 10),
(162, 'Chanson 3 ', 10),
(163, 'Chanson 4', 10),
(164, 'Chanson 5', 10),
(165, 'Chanson 1 ', 11),
(166, 'Chanson 2 ', 11),
(167, 'Chanson 3 ', 11),
(168, 'Chanson 4', 11),
(169, 'Chanson 5', 11),
(170, 'Chanson 6', 11),
(171, 'Chanson 7', 11),
(172, 'Chanson 8', 11),
(173, 'Chanson 9', 11),
(174, 'Chanson 10', 11),
(175, 'Chanson 11', 11),
(176, 'Chanson 1 ', 12),
(177, 'Chanson 2 ', 12),
(178, 'Chanson 3 ', 12),
(179, 'Chanson 4', 12),
(180, 'Chanson 5', 12),
(181, 'Chanson 6', 12),
(182, 'Chanson 7', 12),
(183, 'Chanson 8', 12),
(184, 'Chanson 9', 12),
(185, 'Chanson 10', 12),
(186, 'Chanson 11', 12),
(187, 'Chanson 12', 12),
(188, 'Chanson 13', 12),
(189, 'Chanson 14', 12),
(190, 'Chanson 15', 12),
(191, 'Chanson 16', 12),
(192, 'Chanson 17', 12),
(193, 'Chanson 18', 12),
(194, 'Chanson 19', 12),
(195, 'Chanson 20', 12),
(196, 'Chanson 1 ', 13),
(197, 'Chanson 1 ', 14),
(198, 'Chanson 1 ', 14),
(199, 'Chanson 2 ', 14),
(200, 'Chanson 3 ', 14),
(201, 'Chanson 4', 14),
(202, 'Chanson 5', 14),
(203, 'Chanson 6', 14),
(204, 'Chanson 7', 14),
(205, 'Chanson 8', 14),
(206, 'Chanson 9', 14),
(207, 'Chanson 10', 14);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `concert_hall`
--
ALTER TABLE `concert_hall`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `singer`
--
ALTER TABLE `singer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `concert_hall`
--
ALTER TABLE `concert_hall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `singer`
--
ALTER TABLE `singer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `song`
--
ALTER TABLE `song`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;