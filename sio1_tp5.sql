-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 avr. 2025 à 17:35
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sio1_tp5`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `idadherent` int(11) NOT NULL,
  `nom_adherent` varchar(20) DEFAULT NULL,
  `prenom_adherent` varchar(20) DEFAULT NULL,
  `mail` varchar(75) NOT NULL,
  `mdp` varchar(150) NOT NULL,
  `rue` varchar(30) DEFAULT NULL,
  `ville` varchar(45) DEFAULT NULL,
  `code_postal` int(5) DEFAULT NULL,
  `telephone` decimal(10,0) DEFAULT NULL,
  `date_inscription` date DEFAULT NULL,
  `bibliotheque_idbibliotheque` varchar(15) NOT NULL,
  `Privilege` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `adherent`
--

INSERT INTO `adherent` (`idadherent`, `nom_adherent`, `prenom_adherent`, `mail`, `mdp`, `rue`, `ville`, `code_postal`, `telephone`, `date_inscription`, `bibliotheque_idbibliotheque`, `Privilege`) VALUES
(1, 'Diploma', 'Sacha', 'Dupont.Simon@outlook.fr', '$2y$10$NIgNGlv/fR5nuMqV2MNvH.FEo7Dfh9ktkuDSOeBbjjshD.oZovX8u', 'Lomprez', 'Valenciennes', 59300, '625262728', '2018-09-12', 'L59003', 1),
(3, 'Cauet', 'Martin', 'Cauet.Martin@gmail.com', '$2y$10$o.p.bIpG3XBg4sAw12TT4uAEanoyCSpkq2xuJ9Kaa90jPMheMGWtS', 'du Marché', 'Wazemmes', 59800, '699884455', '2008-01-10', 'L59003', 1),
(4, 'Ribeau', 'Philippe', 'Ribeau.Philippe@gmail.com', '$2y$10$uRawkwz06CuifoxmcnmzO.UGisJnoNaLmKYp8uyjMuhaRM9rXC33m', 'Louis Faure', 'Wazemmes', 59800, '745659821', '2009-06-01', 'L59003', 1),
(5, 'Lemaitre', 'Elodie', 'Lemaitre.Elodie@gmail.com', '$2y$10$L1zq0kc2RRsV.ehd7zZgs.bY0Oo6KLhGMGSbTX/Mf7cIhbIz3oxQa', 'Liberté', 'Lille', 59000, '798652011', '2010-05-09', 'L59003', 1),
(6, 'Fresnoy', 'Lisa', 'Fresnoy.Lisa@gmail.com', '$2y$10$nBlZ/qxjYGp/iFxJ8VdA1unZZCbQwb1Ixb/lH.JafnElKLNXwC7t2', 'Malpart', 'Lille', 59000, '665552214', '2013-09-02', 'L59003', 1),
(20, 'Robert', 'Sébastien', 'Robert.Sébastien@gmail.com', '$2y$10$3KxAkuglgTbCcS6kR4veC.dHr//ZG7bWVO.Q4dMWw8DsvRKRLtPRa', 'Pouchain', 'Lannoy', 59390, '659020501', '2014-07-06', 'L59003', 1),
(49, 'Hart', 'Kevin', 'docu@bts.sio', '$2y$10$ec0nVlHlLqhNvC8bB9hIHO6VLDeBZwu2BqMXIsJNeHN1aAh4N99iC', 'Gare', 'Valenciennes', 59300, '7648599', '2025-04-24', 'L59003', 1),
(50, 'Wallon', 'Aléxandre Henri', 'adherent@bts.sio', '$2y$10$qQ35xZ4BFLCWwOLaV/8MCOJ2gjutyFh0.J2E9XJDFhlfK9JBVd0tS', 'Gare', 'Douchy-Les-Mines', 59282, '623560000', '2025-04-24', 'L59003', 0),
(51, 'Deudon', 'Lucas', 'lucas.deudon04@gmail.com', '$2y$10$QIDLptUdVrwu1vLDxDR3TOz0jQZ9w.8pbrjNsKmM9Bt3AKrr4QTPG', 'Gambetta', 'Douchy-Les-Mines', 59282, '764418599', '2025-04-28', 'L59003', 0);

-- --------------------------------------------------------

--
-- Structure de la table `bibliotheque`
--

CREATE TABLE `bibliotheque` (
  `idbibliotheque` varchar(15) NOT NULL,
  `nom` varchar(15) DEFAULT NULL,
  `rue` varchar(45) DEFAULT NULL,
  `ville` varchar(30) DEFAULT NULL,
  `code_postal` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bibliotheque`
--

INSERT INTO `bibliotheque` (`idbibliotheque`, `nom`, `rue`, `ville`, `code_postal`) VALUES
('L59003', 'BM Lille', 'Edouard Delesalle', 'Lille', 59300);

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `ID` int(11) NOT NULL,
  `date_debut` date DEFAULT NULL,
  `Etat` int(11) NOT NULL,
  `date_fin` date DEFAULT NULL,
  `adherent_idadherent` int(11) NOT NULL,
  `livre_idlivre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`ID`, `date_debut`, `Etat`, `date_fin`, `adherent_idadherent`, `livre_idlivre`) VALUES
(1, '2021-12-06', 1, '2022-06-06', 1, '001_001'),
(24, '2025-04-28', 5, '2025-05-26', 49, '004_001'),
(25, '2025-04-28', 1, '2025-05-26', 50, '005_001');

-- --------------------------------------------------------

--
-- Structure de la table `etat_emprunt`
--

CREATE TABLE `etat_emprunt` (
  `IDEmp` int(11) NOT NULL,
  `Type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etat_emprunt`
--

INSERT INTO `etat_emprunt` (`IDEmp`, `Type`) VALUES
(1, 'En Cours'),
(2, 'Terminé'),
(3, 'En Retard'),
(4, 'En attente'),
(5, 'Refusé');

-- --------------------------------------------------------

--
-- Structure de la table `etat_livre`
--

CREATE TABLE `etat_livre` (
  `disponible` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etat_livre`
--

INSERT INTO `etat_livre` (`disponible`) VALUES
(0x30),
(0x31);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `IDgenre` int(10) NOT NULL,
  `NomGenre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`IDgenre`, `NomGenre`) VALUES
(1, 'Fantastique'),
(2, 'Sci-Fi'),
(3, 'Fantasy'),
(4, 'Thriller'),
(5, 'Horreur'),
(6, 'Historique'),
(7, 'Romance'),
(8, 'Drame'),
(9, 'Jeunesse'),
(10, 'B.D'),
(11, 'Comics'),
(12, 'Manga'),
(13, 'Biographie'),
(14, 'Essai'),
(15, 'Dév. personnel'),
(16, 'Poésie'),
(17, 'Livre Pratique');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `idlivre` varchar(10) NOT NULL,
  `oeuvre_idoeuvre` int(3) UNSIGNED ZEROFILL NOT NULL,
  `etat_livre_disponible` binary(1) NOT NULL,
  `bibliotheque_idbibliotheque` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`idlivre`, `oeuvre_idoeuvre`, `etat_livre_disponible`, `bibliotheque_idbibliotheque`) VALUES
('001_001', 001, 0x30, 'L59003'),
('001_002', 001, 0x31, 'L59003'),
('001_003', 001, 0x31, 'L59003'),
('001_004', 001, 0x31, 'L59003'),
('001_005', 001, 0x31, 'L59003'),
('002_001', 002, 0x30, 'L59003'),
('002_002', 002, 0x31, 'L59003'),
('002_003', 002, 0x30, 'L59003'),
('003_001', 003, 0x30, 'L59003'),
('003_002', 003, 0x31, 'L59003'),
('004_001', 004, 0x31, 'L59003'),
('004_002', 004, 0x30, 'L59003'),
('005_001', 005, 0x30, 'L59003'),
('005_002', 005, 0x31, 'L59003'),
('006_001', 006, 0x30, 'L59003'),
('006_002', 006, 0x31, 'L59003'),
('007_001', 007, 0x31, 'L59003'),
('009_001', 009, 0x31, 'L59003'),
('010_001', 010, 0x30, 'L59003'),
('010_002', 010, 0x30, 'L59003'),
('010_003', 010, 0x31, 'L59003');

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

CREATE TABLE `oeuvre` (
  `idoeuvre` int(3) UNSIGNED ZEROFILL NOT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `auteur` varchar(45) DEFAULT NULL,
  `nb_exemplaires` int(11) DEFAULT NULL,
  `Genre` int(11) NOT NULL,
  `Image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `oeuvre`
--

INSERT INTO `oeuvre` (`idoeuvre`, `titre`, `auteur`, `nb_exemplaires`, `Genre`, `Image`) VALUES
(001, 'Les Misérables', 'Victor Hugo', 5, 1, 'https://cdn1.booknode.com/book_cover/83/full/les-miserables-83116.jpg'),
(002, 'Harry Potter à l école des sorciers, tome 1', 'JK Rowling', 2, 3, 'https://cdn1.booknode.com/book_cover/835/harry_potter_tome_1_harry_potter_a_lecole_des_sorciers-835229-264-432.webp'),
(003, 'Harry Potter et la Chambre des Secrets, tome 2', 'JK Rowling', 1, 3, 'https://cdn1.booknode.com/book_cover/835/harry_potter_tome_2_harry_potter_et_la_chambre_des_secrets-835227-264-432.webp'),
(004, 'Harry Potter et le Prisonnier d Azkaban, tome 3', 'JK Rowling', 2, 1, 'https://cdn1.booknode.com/book_cover/835/harry_potter_tome_3_harry_potter_et_le_prisonnier_dazkaban-835226-264-432.webp'),
(005, 'Le Petit Prince', 'Antoine', 0, 15, 'https://cdn1.booknode.com/book_cover/1043/full/le-petit-prince-1043157.jpg'),
(006, 'Alice au pays des merveilles', 'Lewis Caroll', 2, 1, 'https://cdn1.booknode.com/book_cover/61/alice_au_pays_des_merveilles-60611-264-432.webp'),
(007, 'Da Vinci Code', 'Dan Brown', 6, 1, 'https://cdn1.booknode.com/book_cover/0/robert_langdon_tome_2_da_vinci_code-406-264-432.webp'),
(009, 'Vingt mille lieues sous les mers', 'Jules Verne', 4, 1, 'https://www.hachette.fr/sites/default/files/images/livres/couv/9782012031975-001-T.jpeg'),
(010, 'Twilight: Fascination, tome 1', 'Stephenie Meyer ', 3, 7, 'https://m.media-amazon.com/images/I/713b3lRbsrL._UF1000,1000_QL80_.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`idadherent`),
  ADD KEY `fk_adherent_bibliotheque_idx` (`bibliotheque_idbibliotheque`);

--
-- Index pour la table `bibliotheque`
--
ALTER TABLE `bibliotheque`
  ADD PRIMARY KEY (`idbibliotheque`);

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_emprunt_adherent1_idx` (`adherent_idadherent`),
  ADD KEY `fk_emprunt_livre1_idx` (`livre_idlivre`),
  ADD KEY `Etat` (`Etat`);

--
-- Index pour la table `etat_emprunt`
--
ALTER TABLE `etat_emprunt`
  ADD PRIMARY KEY (`IDEmp`);

--
-- Index pour la table `etat_livre`
--
ALTER TABLE `etat_livre`
  ADD PRIMARY KEY (`disponible`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`IDgenre`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`idlivre`),
  ADD KEY `fk_livre_oeuvre1_idx` (`oeuvre_idoeuvre`),
  ADD KEY `fk_livre_etat_livre1_idx` (`etat_livre_disponible`),
  ADD KEY `fk_livre_bibliotheque1_idx` (`bibliotheque_idbibliotheque`);

--
-- Index pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD PRIMARY KEY (`idoeuvre`),
  ADD KEY `Genre` (`Genre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adherent`
--
ALTER TABLE `adherent`
  MODIFY `idadherent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `etat_emprunt`
--
ALTER TABLE `etat_emprunt`
  MODIFY `IDEmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `IDgenre` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD CONSTRAINT `fk_adherent_bibliotheque` FOREIGN KEY (`bibliotheque_idbibliotheque`) REFERENCES `bibliotheque` (`idbibliotheque`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`Etat`) REFERENCES `etat_emprunt` (`IDEmp`),
  ADD CONSTRAINT `fk_emprunt_adherent1` FOREIGN KEY (`adherent_idadherent`) REFERENCES `adherent` (`idadherent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_emprunt_livre1` FOREIGN KEY (`livre_idlivre`) REFERENCES `livre` (`idlivre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `fk_livre_bibliotheque1` FOREIGN KEY (`bibliotheque_idbibliotheque`) REFERENCES `bibliotheque` (`idbibliotheque`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_livre_etat_livre1` FOREIGN KEY (`etat_livre_disponible`) REFERENCES `etat_livre` (`disponible`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_livre_oeuvre1` FOREIGN KEY (`oeuvre_idoeuvre`) REFERENCES `oeuvre` (`idoeuvre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD CONSTRAINT `oeuvre_ibfk_1` FOREIGN KEY (`Genre`) REFERENCES `genre` (`IDgenre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
