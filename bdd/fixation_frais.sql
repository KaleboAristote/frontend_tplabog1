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
-- Structure de la table `fixation_frais`
--

CREATE TABLE `fixation_frais` (
  `id` int(11) NOT NULL,
  `idOpt` int(11) NOT NULL,
  `idProm` int(11) NOT NULL,
  `idFrais` int(11) NOT NULL,
  `idAnnee` int(11) NOT NULL,
  `montant` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fixation_frais`
--

INSERT INTO `fixation_frais` (`id`, `idOpt`, `idProm`, `idFrais`, `idAnnee`, `montant`) VALUES
(1, 5, 6, 2, 1, 10),
(5, 5, 6, 4, 1, 370),
(6, 13, 1, 4, 1, 470);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fixation_frais`
--
ALTER TABLE `fixation_frais`
  ADD PRIMARY KEY (`id`,`idOpt`,`idProm`,`idFrais`,`idAnnee`),
  ADD KEY `idOpt` (`idOpt`),
  ADD KEY `idProm` (`idProm`),
  ADD KEY `idFrais` (`idFrais`),
  ADD KEY `idAnnee` (`idAnnee`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `fixation_frais`
--
ALTER TABLE `fixation_frais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `fixation_frais`
--
ALTER TABLE `fixation_frais`
  ADD CONSTRAINT `fixation_frais_ibfk_1` FOREIGN KEY (`idOpt`) REFERENCES `options_prom` (`id`),
  ADD CONSTRAINT `fixation_frais_ibfk_2` FOREIGN KEY (`idProm`) REFERENCES `promotion` (`id`),
  ADD CONSTRAINT `fixation_frais_ibfk_3` FOREIGN KEY (`idFrais`) REFERENCES `frais` (`id`),
  ADD CONSTRAINT `fixation_frais_ibfk_4` FOREIGN KEY (`idAnnee`) REFERENCES `annee_academ` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
