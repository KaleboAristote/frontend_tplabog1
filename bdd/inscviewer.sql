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
-- Structure de la vue `inscviewer`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `inscviewer`  AS SELECT `e`.`noms` AS `Nom_Etudiant`, `p`.`desProm` AS `Promotion`, `op`.`desOption` AS `Option_Promotion`, `aa`.`anneeAc` AS `Annee_Academique`, `ins`.`desInscription` AS `Designation_Inscription` FROM ((((`inscription` `ins` join `etudiant` `e` on(`ins`.`idEt` = `e`.`id`)) join `promotion` `p` on(`ins`.`idProm` = `p`.`id`)) join `options_prom` `op` on(`ins`.`idOpt` = `op`.`id`)) join `annee_academ` `aa` on(`ins`.`idAnnee` = `aa`.`id`)) ;

--
-- VIEW `inscviewer`
-- Données : Aucun(e)
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
