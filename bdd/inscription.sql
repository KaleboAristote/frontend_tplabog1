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
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `idOpt` int(11) NOT NULL,
  `idProm` int(11) NOT NULL,
  `idEt` int(11) NOT NULL,
  `idAnnee` int(11) NOT NULL,
  `desInscription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`idOpt`, `idProm`, `idEt`, `idAnnee`, `desInscription`) VALUES
(5, 6, 16, 1, 'inscription'),
(5, 6, 27, 1, 'Inscription'),
(6, 1, 26, 1, 'inscription'),
(8, 6, 21, 1, 'inscription');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`idOpt`,`idProm`,`idEt`,`idAnnee`),
  ADD KEY `idProm` (`idProm`),
  ADD KEY `idEt` (`idEt`),
  ADD KEY `idAnnee` (`idAnnee`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`idOpt`) REFERENCES `options_prom` (`id`),
  ADD CONSTRAINT `inscription_ibfk_2` FOREIGN KEY (`idProm`) REFERENCES `promotion` (`id`),
  ADD CONSTRAINT `inscription_ibfk_3` FOREIGN KEY (`idEt`) REFERENCES `etudiant` (`id`),
  ADD CONSTRAINT `inscription_ibfk_4` FOREIGN KEY (`idAnnee`) REFERENCES `annee_academ` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
