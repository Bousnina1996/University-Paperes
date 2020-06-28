-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 31 Mai 2018 à 04:44
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `universitypapers`
--

-- --------------------------------------------------------

--
-- Structure de la table `assignment`
--

CREATE TABLE `assignment` (
  `id_prof` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `id_subject` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `assignment`
--

INSERT INTO `assignment` (`id_prof`, `id_class`, `id_subject`) VALUES
(2, 2, 1),
(2, 2, 9),
(2, 2, 10),
(4, 16, 1);

-- --------------------------------------------------------

--
-- Structure de la table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name_class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `class`
--

INSERT INTO `class` (`id`, `name_class`) VALUES
(2, '1SIL1'),
(12, '1FSI1'),
(13, '1FSI2'),
(14, '1ARS1'),
(15, '1ARS2'),
(16, '2ING1');

-- --------------------------------------------------------

--
-- Structure de la table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `nom_fichier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nom_physique` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_class` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `file`
--

INSERT INTO `file` (`id`, `nom_fichier`, `nom_physique`, `extension`, `name_subject`, `name_class`, `type`, `notes`, `tag`, `password`, `id_prof`) VALUES
(1, 'chapitre 1', 'coagul_org', 'pdf', 'IA', '1SIL1', 'Cours', 'Riviser ca', 'systeme expert', 'test', 2),
(2, 'chapitre 2', 'Compte_Rendu_TP3', 'pdf', 'rÃ©seaux II', '1SIL1', 'Cours', 'test', 'protocoles', '', 2),
(3, 'chapitre 4', 'Compte_Rendu_TP4', 'pdf', 'C', '1SIL1', 'Cours', '', 'structure', '', 2),
(5, 'chapitre 3 IEEE', 'Quiz-Game-master', 'zip', 'IA', '1SIL1', 'Cours', 'IEEE Standards', 'IEEE', 'ieee', 2);

-- --------------------------------------------------------

--
-- Structure de la table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name_subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `subject`
--

INSERT INTO `subject` (`id`, `name_subject`) VALUES
(1, 'IA'),
(9, 'rÃ©seaux II'),
(10, 'C');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `speciality` varchar(50) NOT NULL,
  `departement` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `degree`, `speciality`, `departement`, `password`, `type`) VALUES
(1, 'Iheb', 'bousnina', 'ihebbousnina96@gmail.com', '', '', '', 'iheb', 'Admin'),
(2, 'olfa', 'limam', 'limemolfa@yahoo.fr', 'Assistante', 'Conception', 'GLSI', 'olfa', 'prof'),
(4, 'iheb', 'mohamed', 'iheb@gmail.com', 'Assistant', 'IA', 'GLSI', 'iheb1996', 'prof'),
(5, 'bb', 'aa', 'bb@gmail.com', 'aaa', 'aaa', 'GLSI', 'aaa', 'prof');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id_prof`,`id_class`,`id_subject`),
  ADD KEY `id_class` (`id_class`),
  ADD KEY `id_subject` (`id_subject`);

--
-- Index pour la table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prof` (`id_prof`);

--
-- Index pour la table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`id_class`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assignment_ibfk_3` FOREIGN KEY (`id_subject`) REFERENCES `subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
