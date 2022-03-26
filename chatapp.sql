-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 03 nov. 2021 à 21:16
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chatapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `amis`
--

CREATE TABLE `amis` (
  `idAmis` int(10) NOT NULL,
  `idOne` int(10) DEFAULT NULL,
  `idOther` int(10) DEFAULT NULL,
  `dateAmitie` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `amis`
--

INSERT INTO `amis` (`idAmis`, `idOne`, `idOther`, `dateAmitie`) VALUES
(15, 5, 7, '2021-10-31 00:00:00'),
(16, 4, 5, '2021-11-01 00:00:00'),
(17, 6, 7, '2021-11-02 00:00:00'),
(18, 9, 10, '2021-11-03 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE `demande` (
  `idDemande` int(10) NOT NULL,
  `idDemandeur` int(10) DEFAULT NULL,
  `idReceveur` int(10) DEFAULT NULL,
  `dateDemande` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `demande`
--

INSERT INTO `demande` (`idDemande`, `idDemandeur`, `idReceveur`, `dateDemande`) VALUES
(2, 3, 4, '2021-10-30 00:00:00'),
(6, 6, 2, '2021-10-31 00:00:00'),
(8, 1, 6, '2021-10-31 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `idMembre` int(10) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `profil` varchar(255) DEFAULT NULL,
  `mpass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`idMembre`, `pseudo`, `prenom`, `nom`, `profil`, `mpass`) VALUES
(1, 'Test-1', 'Test', 'Test1', 'image/imagesprofil.png', 'test'),
(2, 'Test-2', 'Test', 'Test2', 'image/imagesprofil.png', 'test'),
(3, 'Test-3', 'Test', 'Test3', 'image/30102021_013239_socket-programming.png', 'test'),
(4, 'Test-4', 'Test', 'Test4', 'image/30102021_014110_30022246.jpg', '1234'),
(5, 'Test-5', 'Test', 'Test5', 'image/30102021_020231_menuRest.png', 'test'),
(6, 'Test-6', 'Test6', 'Test', 'image/30102021_215057_pngaaa.com-1069844.png', '1234'),
(7, 'Test-7', 'Test7', 'Test', 'image/30102021_221226_calculator-icon-android-3.jpg', '1234'),
(8, 'Test-8', 'Test8', 'Test', 'image/03112021_205310_icon6.jpg', '1234'),
(9, 'Diamil', 'Diam', 'Diallo', 'image/03112021_205859_icon9.png', 'diam'),
(10, 'Alphahim', 'Alpha', 'Alf', 'image/03112021_210118_icon2.png', '1234');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `idMessage` int(10) NOT NULL,
  `idEmetteur` int(10) DEFAULT NULL,
  `idDestine` int(10) DEFAULT NULL,
  `msgText` text DEFAULT NULL,
  `fichier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`idMessage`, `idEmetteur`, `idDestine`, `msgText`, `fichier`) VALUES
(1, 7, 5, 'Bonjour', NULL),
(2, 7, 5, 'Bonjour', NULL),
(3, 7, 5, 'Bonjour Test-7 comment allez-vous ?', NULL),
(4, 5, 7, 'Bonjour Test-5 ! je vais Bien et vous ?', NULL),
(5, 7, 5, 'Cool les messages ca fonctionnent bien la bas?', NULL),
(6, 5, 7, 'Les messages ca vient mais pas ordonnees', NULL),
(7, 1, 2, 'Hello', NULL),
(8, 7, 5, 'Ah ok je pense que ca fonctionne maintenant', NULL),
(9, 5, 7, 'Oui un peut ', NULL),
(10, 7, 5, 'On va y travailler', NULL),
(11, 4, 5, 'Salut Test-5', NULL),
(12, 5, 4, 'Salut Test-4 comment ca va?', NULL),
(13, 4, 5, 'cool et toi ?', NULL),
(14, 5, 4, 'Nice ', NULL),
(15, 4, 5, 'Game', NULL),
(16, 5, 7, NULL, 'image/02112021_000357_pay_cash_payment_money.png'),
(17, 5, 7, NULL, 'documents/02112021_000455_java_interresant.pdf'),
(18, 5, 7, NULL, 'image/02112021_000621_Add-ticket_36779 (1).png'),
(19, 5, 7, NULL, 'video_songs/02112021_004627_001.mp3'),
(20, 5, 7, NULL, 'video_songs/02112021_005857_Choisissez un stylo sur lequel vous pouvez compter 😉 Achetez maintenant sur J.mp4'),
(21, 7, 5, 'Merci pour les ficheir', NULL),
(22, 7, 5, NULL, 'image/02112021_011336_icon4.png'),
(23, 5, 7, 'Tres joli', NULL),
(24, 5, 7, 'Thanks', NULL),
(25, 6, 7, NULL, 'image/02112021_215514_capture_ecran1.png'),
(26, 7, 6, 'Merci frere', NULL),
(27, 9, 10, 'Salut Alpha comment ca va ?', NULL),
(28, 10, 9, 'Salut Diam Diallo, je vais bien et toi?', NULL),
(29, 10, 9, NULL, 'image/03112021_210414_icon5.png'),
(30, 9, 10, 'cool', NULL),
(31, 1, 2, 'Hello', NULL),
(32, 10, 9, 'envoi moi un document', NULL),
(33, 9, 10, NULL, 'documents/03112021_211306_dynamiccontent.properties (1).pdf');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `amis`
--
ALTER TABLE `amis`
  ADD PRIMARY KEY (`idAmis`),
  ADD KEY `fk_idOne` (`idOne`),
  ADD KEY `fk_idOther` (`idOther`);

--
-- Index pour la table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`idDemande`),
  ADD KEY `fk_idDemandeur` (`idDemandeur`),
  ADD KEY `fk_idReceveur` (`idReceveur`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`idMembre`),
  ADD UNIQUE KEY `pseudo` (`pseudo`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`idMessage`),
  ADD KEY `fk_idEmet` (`idEmetteur`),
  ADD KEY `fk_Destine` (`idDestine`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `amis`
--
ALTER TABLE `amis`
  MODIFY `idAmis` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `demande`
--
ALTER TABLE `demande`
  MODIFY `idDemande` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `idMembre` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `idMessage` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `amis`
--
ALTER TABLE `amis`
  ADD CONSTRAINT `fk_idOne` FOREIGN KEY (`idOne`) REFERENCES `membre` (`idMembre`),
  ADD CONSTRAINT `fk_idOther` FOREIGN KEY (`idOther`) REFERENCES `membre` (`idMembre`);

--
-- Contraintes pour la table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `fk_idDemandeur` FOREIGN KEY (`idDemandeur`) REFERENCES `membre` (`idMembre`),
  ADD CONSTRAINT `fk_idReceveur` FOREIGN KEY (`idReceveur`) REFERENCES `membre` (`idMembre`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_Destine` FOREIGN KEY (`idDestine`) REFERENCES `membre` (`idMembre`),
  ADD CONSTRAINT `fk_idEmet` FOREIGN KEY (`idEmetteur`) REFERENCES `membre` (`idMembre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
