-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Ven 20 Octobre 2017 à 08:20
-- Version du serveur :  5.6.35
-- Version de PHP :  7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `adcpremiumphp`
--

-- --------------------------------------------------------

--
-- Structure de la table `lieudedepart`
--

CREATE TABLE `lieudedepart` (
  `id` int(11) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicules`
--

CREATE TABLE `vehicules` (
  `id` int(11) NOT NULL,
  `marques` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `chauffeur` tinyint(1) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `carburant` varchar(15) NOT NULL,
  `boite` varchar(15) NOT NULL,
  `nbre_passagers` int(1) NOT NULL,
  `1a6jours` float NOT NULL,
  `7a13jours` float NOT NULL,
  `14a20jours` float NOT NULL,
  `21a27jours` float NOT NULL,
  `28jours` float NOT NULL,
  `pour1jour` float NOT NULL,
  `photo` varchar(255) NOT NULL,
  `alt_photo` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vehicules`
--

INSERT INTO `vehicules` (`id`, `marques`, `type`, `chauffeur`, `designation`, `carburant`, `boite`, `nbre_passagers`, `1a6jours`, `7a13jours`, `14a20jours`, `21a27jours`, `28jours`, `pour1jour`, `photo`, `alt_photo`) VALUES
(1, 'PEUGEOT', 'sport', 0, 'PEUGEOT RCZ', 'DIESEL', 'MANUEL', 2, 185, 176, 169, 165, 155, 185, 'img/upload/peugeot-RCZ-blanche-adc-premium.jpg', 'Peugeot RCZ location ADC Premium'),
(2, 'BMW', '4x4', 0, 'BMW X6', 'DIESEL', 'AUTO', 4, 290, 280, 260, 245, 220, 290, 'img/upload/bmw-x6-blanc-adc-premium.jpg', 'BMW X6 location île de La Réunion'),
(3, 'PORSHE', 'sport', 0, 'PORSHE CARRERA 4S', 'ESSENCE', 'AUTO', 2, 799, 750, 719, 699, 659, 799, 'img/upload/Porche-Carrera-ADC-Premium.jpg', 'Porche Carrera à louer'),
(4, 'BENTLEY', 'berline', 1, 'BENTLEY CONTINENTAL', 'ESSENCE', 'AUTO', 4, 0, 0, 0, 0, 0, 1400, 'img/upload/Bentley-ADC-Premium.jpg', 'Bentley blanche en location chez ADC Premium Réunion'),
(5, 'PORSCHE', 'berline', 0, 'PORSCHE CAYENNE', 'ESSENCE', 'AUTO', 5, 340, 330, 310, 295, 270, 340, 'img/upload/Porche-Cayenne-ADC-Premium.jpg', 'Porche Cayenne en location sans chauffeur chez ADC Premium');

-- --------------------------------------------------------

--
-- Structure de la table `vehicules_avec_chauffeur`
--

CREATE TABLE `vehicules_avec_chauffeur` (
  `id` int(11) NOT NULL,
  `marques` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `chauffeur` tinyint(1) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `carburant` varchar(15) NOT NULL,
  `boite` varchar(15) NOT NULL,
  `nbre_passagers` int(11) NOT NULL,
  `pour1heure` float NOT NULL,
  `photo` varchar(255) NOT NULL,
  `alt_photo` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vehicules_avec_chauffeur`
--

INSERT INTO `vehicules_avec_chauffeur` (`id`, `marques`, `type`, `chauffeur`, `designation`, `carburant`, `boite`, `nbre_passagers`, `pour1heure`, `photo`, `alt_photo`) VALUES
(1, 'BENTLEY', 'berline', 1, 'BENTLEY CONTINENTAL', 'ESSENCE', 'AUTO', 3, 199, 'img/upload/Bentley-ADC-Premium.jpg', 'Bentley blanche en location chez ADC Premium Réunion');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `lieudedepart`
--
ALTER TABLE `lieudedepart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicules`
--
ALTER TABLE `vehicules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicules_avec_chauffeur`
--
ALTER TABLE `vehicules_avec_chauffeur`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `lieudedepart`
--
ALTER TABLE `lieudedepart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `vehicules`
--
ALTER TABLE `vehicules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `vehicules_avec_chauffeur`
--
ALTER TABLE `vehicules_avec_chauffeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
