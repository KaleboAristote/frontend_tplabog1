-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 04 avr. 2024 à 09:33
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionpayement`
--

-- --------------------------------------------------------

--
-- Structure de la table `compteur_id`
--

CREATE TABLE `compteur_id` (
  `id` int(11) NOT NULL,
  `sexe` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `compteur_id`
--

INSERT INTO `compteur_id` (`id`, `sexe`) VALUES
(1, 'M'),
(2, 'M'),
(3, 'M'),
(4, 'M'),
(5, 'M'),
(6, 'M'),
(7, 'F'),
(8, 'M'),
(9, 'M'),
(10, 'F'),
(11, 'M'),
(12, 'M'),
(13, 'M'),
(14, 'M'),
(15, 'M'),
(16, 'M'),
(17, 'M'),
(18, 'F'),
(19, 'M'),
(20, 'F'),
(21, 'F'),
(22, 'M');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compteur_id`
--
ALTER TABLE `compteur_id`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compteur_id`
--
ALTER TABLE `compteur_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
