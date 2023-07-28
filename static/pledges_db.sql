-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 28 juil. 2023 à 15:32
-- Version du serveur : 8.0.33
-- Version de PHP : 8.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pledges_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `fight_chat`
--

CREATE TABLE `fight_chat` (
  `id` int NOT NULL,
  `avatar` varchar(40) NOT NULL,
  `message` varchar(240) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `fight_chat`
--

INSERT INTO `fight_chat` (`id`, `avatar`, `message`, `time`) VALUES
(1, 'Exon', 'Is this app for sale? I kinda wanna buy it.', '2023-07-28 14:05:58'),
(2, 'Sterling', 'This is a nice app, pls don\'t buy it !', '2023-07-28 15:12:44'),
(6, 'Desmond', 'See you in anotha life, brother !', '2023-07-28 15:26:31'),
(7, 'Kara', 'The Cylons are near, be quiet !..............Ooops, wrong channel, sry', '2023-07-28 15:27:36');

-- --------------------------------------------------------

--
-- Structure de la table `jackpot`
--

CREATE TABLE `jackpot` (
  `id` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pledges_euro` float NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `jackpot`
--

INSERT INTO `jackpot` (`id`, `name`, `last_name`, `email`, `pledges_euro`, `timestamp`) VALUES
(3, 'Exon', 'MuXk', 'exon-muxk@xxx.com', 10000, '2023-07-26 17:38:39'),
(11, 'Sterling', 'Archer', 'secret.spy@isis.com', 50.99, '2023-07-26 20:29:34'),
(12, 'Leela', 'Turanga', 'tur-lee@planet-express.com', 100.99, '2023-07-26 20:48:54'),
(13, 'Kara', 'Thrace', 'kt-jet@galactica.cosmos', 50.99, '2023-07-26 20:57:15'),
(14, 'Desmond', 'Humes', 'not.pennys@boat.com', 100.99, '2023-07-26 21:10:59'),
(15, 'Dark', 'Knight', 'bruce@wayne.bat', 50.99, '2023-07-28 13:57:55');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fight_chat`
--
ALTER TABLE `fight_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jackpot`
--
ALTER TABLE `jackpot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `fight_chat`
--
ALTER TABLE `fight_chat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `jackpot`
--
ALTER TABLE `jackpot`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
