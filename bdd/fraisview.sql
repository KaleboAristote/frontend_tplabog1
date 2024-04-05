-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 04 avr. 2024 à 09:34
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
-- Structure de la vue `fraisview`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fraisview`  AS SELECT `op`.`desOption` AS `desOption`, `p`.`desProm` AS `desProm`, `f`.`desFrais` AS `desFrais`, `aa`.`anneeAc` AS `anneeAc`, `ff`.`montant` AS `montant` FROM ((((`fixation_frais` `ff` join `options_prom` `op` on(`ff`.`idOpt` = `op`.`id`)) join `promotion` `p` on(`ff`.`idProm` = `p`.`id`)) join `frais` `f` on(`ff`.`idFrais` = `f`.`id`)) join `annee_academ` `aa` on(`ff`.`idAnnee` = `aa`.`id`)) ;

--
-- VIEW `fraisview`
-- Données : Aucun(e)
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
