-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 14 fév. 2024 à 18:22
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `phpexo`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `idActeur` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Prenom` varchar(255) DEFAULT NULL,
  `Date_Naissance` date DEFAULT NULL,
  `Date_Mort` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`idActeur`, `Nom`, `Prenom`, `Date_Naissance`, `Date_Mort`) VALUES
(1, 'Johnson', 'Dwayne', '1972-05-02', NULL),
(2, 'Hodge', 'Aldis', '1986-09-20', NULL),
(3, 'Brosnan', 'Pierce', '1963-05-16', NULL),
(4, 'Shahi', 'Sarah', '1980-01-10', NULL),
(5, 'Centineo', 'Noah', '1996-05-09', NULL),
(6, 'Meryl', 'Streep', '1949-06-22', NULL),
(7, 'Brad', 'Pitt', '1963-12-18', NULL),
(8, 'Charlize', 'Theron', '1975-08-07', NULL),
(9, 'Morgan', 'Freeman', '1937-06-01', NULL),
(10, 'DiCaprio', 'Leonardo', '1974-11-11', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE `appartient` (
  `fkVideo` int(11) NOT NULL,
  `fkGenre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `appartient`
--

INSERT INTO `appartient` (`fkVideo`, `fkGenre`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `filmrecompense`
--

CREATE TABLE `filmrecompense` (
  `fkRecompense` int(11) DEFAULT NULL,
  `fkvideo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `idGenre` int(11) NOT NULL,
  `Libelle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`idGenre`, `Libelle`) VALUES
(1, 'Action'),
(2, 'Aventure'),
(3, 'Fantastique'),
(4, 'Super-héros'),
(250, 'Aventure'),
(251, 'Fantasy');

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `fkVideo` int(11) NOT NULL,
  `fkActeur` int(11) NOT NULL,
  `Role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `joue`
--

INSERT INTO `joue` (`fkVideo`, `fkActeur`, `Role`) VALUES
(1, 1, 'Black Adam'),
(1, 1, 'Dom Cobb'),
(1, 2, 'Hawkman'),
(1, 3, 'Doctor Fate'),
(1, 4, 'Adrianna Tomaz'),
(2, 1, 'Jack Dawson'),
(3, 1, 'Hugh Glass'),
(4, 2, 'Miranda Priestly'),
(5, 2, 'Sophie Zawistowski'),
(6, 2, 'Donna Sheridan'),
(7, 3, 'Tyler Durden'),
(8, 3, 'Lt. Aldo Raine'),
(9, 3, 'Benjamin Button'),
(11, 4, 'Imperator Furiosa'),
(12, 4, 'Lorraine Broughton'),
(13, 5, 'Ellis Boyd \"Red\" Redding'),
(14, 5, 'Detective Lt. William Somerset'),
(15, 5, 'Nelson Mandela');

-- --------------------------------------------------------

--
-- Structure de la table `obtenir`
--

CREATE TABLE `obtenir` (
  `fkRecompense` int(11) DEFAULT NULL,
  `fkAuteur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `obtientacteur`
--

CREATE TABLE `obtientacteur` (
  `fkActeur` int(11) NOT NULL,
  `fkRecompense` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `obtientacteur`
--

INSERT INTO `obtientacteur` (`fkActeur`, `fkRecompense`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `obtientrealisateur`
--

CREATE TABLE `obtientrealisateur` (
  `fkRealisateur` int(11) NOT NULL,
  `fkRecompense` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `obtientrealisateur`
--

INSERT INTO `obtientrealisateur` (`fkRealisateur`, `fkRecompense`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 2),
(14, 2),
(15, 1);

-- --------------------------------------------------------

--
-- Structure de la table `obtientvideo`
--

CREATE TABLE `obtientvideo` (
  `fkVideo` int(11) NOT NULL,
  `fkRecompense` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `obtientvideo`
--

INSERT INTO `obtientvideo` (`fkVideo`, `fkRecompense`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 1),
(11, 1),
(12, 1),
(13, 2),
(14, 2),
(15, 1);

-- --------------------------------------------------------

--
-- Structure de la table `producteur`
--

CREATE TABLE `producteur` (
  `idProducteur` int(11) NOT NULL,
  `RaisonSocial` varchar(255) DEFAULT NULL,
  `Date_Creation` year(4) DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `Mail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `producteur`
--

INSERT INTO `producteur` (`idProducteur`, `RaisonSocial`, `Date_Creation`, `Adresse`, `Mail`) VALUES
(1, 'DC Studios', '2016', '4000 Warner Boulevard Burbank, CA 91522 ', 'copyright@wb.com'),
(2, 'New Line Cinema ', '1967', '4000 Warner Boulevard Burbank, CA 91522', 'copyright@wb.com'),
(3, 'Warner Bros.', '1923', 'Burbank, CA', 'info@warnerbros.com'),
(4, 'Paramount Pictures', '1912', 'Hollywood, CA', 'info@paramount.com'),
(5, '20th Century Fox', '1935', 'Los Angeles, CA', 'info@20thcenturystudios.com'),
(6, '20th Century Fox', '1935', 'Los Angeles, CA', 'info@20thcenturystudios.com'),
(7, 'Universal Pictures', '1912', 'Universal City, CA', 'info@universalpictures.com'),
(8, '20th Century Fox', '1935', 'Los Angeles, CA', 'info@20thcenturystudios.com'),
(9, 'Universal Pictures', '1912', 'Universal City, CA', 'info@universalpictures.com'),
(10, 'Paramount Pictures', '1912', 'Hollywood, CA', 'info@paramount.com'),
(11, 'Newmarket Films', NULL, NULL, NULL),
(12, 'Warner Bros.', '1923', 'Burbank, CA', 'info@warnerbros.com'),
(13, 'Focus Features', '2002', 'Universal City, CA', 'info@focusfeatures.com'),
(14, '20th Century Fox', '1935', 'Los Angeles, CA', 'info@20thcenturystudios.com'),
(15, 'Universal Pictures', '1912', 'Universal City, CA', 'info@universalpictures.com'),
(16, 'Paramount Pictures', '1912', 'Hollywood, CA', 'info@paramount.com'),
(17, 'Columbia Pictures', NULL, NULL, NULL),
(18, 'New Line Cinema', '1967', 'Burbank, CA', 'info@newline.com'),
(19, 'Warner Bros.', '1923', 'Burbank, CA', 'info@warnerbros.com');

-- --------------------------------------------------------

--
-- Structure de la table `production`
--

CREATE TABLE `production` (
  `idProduction` int(11) NOT NULL,
  `raisonSociale` varchar(255) DEFAULT NULL,
  `dateCreation` date DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `production`
--

INSERT INTO `production` (`idProduction`, `raisonSociale`, `dateCreation`, `adresse`, `mail`) VALUES
(250, 'Warner_Bros._Pictures', '1969-11-01', 'Burbank', NULL),
(251, 'Heyday_Films', '1996-10-01', 'Londre', NULL),
(252, '1492_Pictures', '1995-01-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `produire`
--

CREATE TABLE `produire` (
  `fkfilm` int(11) DEFAULT NULL,
  `fkproduct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `fkVideo` int(11) NOT NULL,
  `fkProducteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`fkVideo`, `fkProducteur`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `idRealisateur` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Prénom` varchar(255) DEFAULT NULL,
  `Date_Naissance` date DEFAULT NULL,
  `Date_Mort` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`idRealisateur`, `Nom`, `Prénom`, `Date_Naissance`, `Date_Mort`) VALUES
(1, 'Collet-Serra', 'Jaume', '1974-03-23', NULL),
(2, 'Christopher Nolan', NULL, NULL, NULL),
(3, 'James Cameron', NULL, NULL, NULL),
(4, 'Alejandro G. Iñárritu', NULL, NULL, NULL),
(5, 'David Frankel', NULL, NULL, NULL),
(6, 'Alan J. Pakula', NULL, NULL, NULL),
(7, 'Phyllida Lloyd', NULL, NULL, NULL),
(8, 'David Fincher', NULL, NULL, NULL),
(9, 'Quentin Tarantino', NULL, NULL, NULL),
(10, 'David Fincher', NULL, NULL, NULL),
(11, 'Patty Jenkins', NULL, NULL, NULL),
(12, 'George Miller', NULL, NULL, NULL),
(13, 'David Leitch', NULL, NULL, NULL),
(14, 'Frank Darabont', NULL, NULL, NULL),
(15, 'David Fincher', NULL, NULL, NULL),
(16, 'Clint Eastwood', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `realisateurrecompense`
--

CREATE TABLE `realisateurrecompense` (
  `fkRecompense` int(11) DEFAULT NULL,
  `fkReal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `realise`
--

CREATE TABLE `realise` (
  `fkVideo` int(11) NOT NULL,
  `fkRealisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `realise`
--

INSERT INTO `realise` (`fkVideo`, `fkRealisateur`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- --------------------------------------------------------

--
-- Structure de la table `recompense`
--

CREATE TABLE `recompense` (
  `idRecompense` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Catégorie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `recompense`
--

INSERT INTO `recompense` (`idRecompense`, `Nom`, `Catégorie`) VALUES
(1, 'Acteur de cinéma préféré', '2023 Kids\' Choice Awards'),
(2, 'Meilleur film', 'Empire Awards'),
(3, 'Meilleur acteur', 'Empire Awards'),
(4, 'Meilleur script', 'Prix Nebula');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `idType` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`idType`, `Nom`) VALUES
(1, 'Film'),
(2, 'Anime'),
(3, 'Serie');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `mdp` varchar(100) NOT NULL,
  `date_N` date NOT NULL,
  `mail` varchar(100) NOT NULL,
  `genre` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `idVideo` int(11) NOT NULL,
  `Titre` varchar(255) DEFAULT NULL,
  `fkType` int(11) DEFAULT NULL,
  `Date_Sortie` date DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`idVideo`, `Titre`, `fkType`, `Date_Sortie`, `image`) VALUES
(1, 'Black Adam', 1, '2022-10-19', 'BlackAdam.jpg'),
(2, 'Inception', 1, '2010-01-01', 'Inception.jpg'),
(3, 'Titanic', 1, '1997-01-01', 'Titanic.jpg'),
(4, 'The Revenant', 1, '2015-01-01', 'TheRevenant.jpg'),
(5, 'The Devil Wears Prada', 1, '2006-01-01', 'TheDevil.jpg'),
(6, 'Sophie\'s Choice', 1, '1982-01-01', 'Sophie.jpg'),
(7, 'Mamma Mia!', 1, '2008-01-01', 'MammaMia.jpg'),
(8, 'Fight Club', 1, '1999-01-01', 'FightClub.jpg'),
(9, 'Inglourious Basterds', 1, '2009-01-01', 'Inglourious.jpg'),
(11, 'Monster', 1, '2003-01-01', 'Monster.jpg'),
(12, 'Mad Max: Fury Road', 1, '2015-01-01', 'MadMax.jpg'),
(13, 'Atomic Blonde', 1, '2017-01-01', 'AtomicBlonde.jpg'),
(14, 'The Shawshank Redemption', 1, '1994-01-01', 'TheShawshank.jpg'),
(15, 'Se7en', 1, '1995-01-01', 'Se7en.jpg'),
(16, 'Invictus', 1, '2009-01-01', 'Invictus.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`idActeur`);

--
-- Index pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD PRIMARY KEY (`fkVideo`,`fkGenre`),
  ADD KEY `FkGenre` (`fkGenre`);

--
-- Index pour la table `filmrecompense`
--
ALTER TABLE `filmrecompense`
  ADD KEY `fkRecompense` (`fkRecompense`),
  ADD KEY `fkvideo` (`fkvideo`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`idGenre`);

--
-- Index pour la table `joue`
--
ALTER TABLE `joue`
  ADD PRIMARY KEY (`fkVideo`,`fkActeur`,`Role`),
  ADD KEY `joue_ibfk_2` (`fkActeur`),
  ADD KEY `fkVideo` (`fkVideo`),
  ADD KEY `fkActeur` (`fkActeur`);

--
-- Index pour la table `obtenir`
--
ALTER TABLE `obtenir`
  ADD KEY `fkRecompense` (`fkRecompense`),
  ADD KEY `fkAuteur` (`fkAuteur`);

--
-- Index pour la table `obtientacteur`
--
ALTER TABLE `obtientacteur`
  ADD PRIMARY KEY (`fkActeur`,`fkRecompense`),
  ADD KEY `FkRecompense` (`fkRecompense`);

--
-- Index pour la table `obtientrealisateur`
--
ALTER TABLE `obtientrealisateur`
  ADD PRIMARY KEY (`fkRealisateur`,`fkRecompense`),
  ADD KEY `FkRecompense` (`fkRecompense`);

--
-- Index pour la table `obtientvideo`
--
ALTER TABLE `obtientvideo`
  ADD PRIMARY KEY (`fkVideo`,`fkRecompense`),
  ADD KEY `FkRecompense` (`fkRecompense`);

--
-- Index pour la table `producteur`
--
ALTER TABLE `producteur`
  ADD PRIMARY KEY (`idProducteur`);

--
-- Index pour la table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`idProduction`);

--
-- Index pour la table `produire`
--
ALTER TABLE `produire`
  ADD KEY `fkfilm` (`fkfilm`),
  ADD KEY `fkproduct` (`fkproduct`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`fkVideo`,`fkProducteur`),
  ADD KEY `FkProducteur` (`fkProducteur`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`idRealisateur`);

--
-- Index pour la table `realisateurrecompense`
--
ALTER TABLE `realisateurrecompense`
  ADD KEY `fkRecompense` (`fkRecompense`),
  ADD KEY `fkReal` (`fkReal`);

--
-- Index pour la table `realise`
--
ALTER TABLE `realise`
  ADD PRIMARY KEY (`fkVideo`,`fkRealisateur`),
  ADD KEY `FkRealisateur` (`fkRealisateur`);

--
-- Index pour la table `recompense`
--
ALTER TABLE `recompense`
  ADD PRIMARY KEY (`idRecompense`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idType`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`mail`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`idVideo`),
  ADD KEY `FkType` (`fkType`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `production`
--
ALTER TABLE `production`
  MODIFY `idProduction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `idType` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`fkVideo`) REFERENCES `video` (`idVideo`),
  ADD CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`fkGenre`) REFERENCES `genre` (`idGenre`);

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `joue_ibfk_1` FOREIGN KEY (`fkVideo`) REFERENCES `video` (`idVideo`),
  ADD CONSTRAINT `joue_ibfk_2` FOREIGN KEY (`fkActeur`) REFERENCES `acteur` (`idActeur`);

--
-- Contraintes pour la table `obtientacteur`
--
ALTER TABLE `obtientacteur`
  ADD CONSTRAINT `obtientacteur_ibfk_1` FOREIGN KEY (`fkActeur`) REFERENCES `acteur` (`idActeur`),
  ADD CONSTRAINT `obtientacteur_ibfk_2` FOREIGN KEY (`fkRecompense`) REFERENCES `recompense` (`idRecompense`);

--
-- Contraintes pour la table `obtientrealisateur`
--
ALTER TABLE `obtientrealisateur`
  ADD CONSTRAINT `obtientrealisateur_ibfk_1` FOREIGN KEY (`fkRealisateur`) REFERENCES `realisateur` (`idRealisateur`),
  ADD CONSTRAINT `obtientrealisateur_ibfk_2` FOREIGN KEY (`fkRecompense`) REFERENCES `recompense` (`idRecompense`);

--
-- Contraintes pour la table `obtientvideo`
--
ALTER TABLE `obtientvideo`
  ADD CONSTRAINT `obtientvideo_ibfk_1` FOREIGN KEY (`fkVideo`) REFERENCES `video` (`idVideo`),
  ADD CONSTRAINT `obtientvideo_ibfk_2` FOREIGN KEY (`fkRecompense`) REFERENCES `recompense` (`idRecompense`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`fkVideo`) REFERENCES `video` (`idVideo`),
  ADD CONSTRAINT `produit_ibfk_2` FOREIGN KEY (`fkProducteur`) REFERENCES `producteur` (`idProducteur`);

--
-- Contraintes pour la table `realise`
--
ALTER TABLE `realise`
  ADD CONSTRAINT `realise_ibfk_1` FOREIGN KEY (`fkVideo`) REFERENCES `video` (`idVideo`),
  ADD CONSTRAINT `realise_ibfk_2` FOREIGN KEY (`fkRealisateur`) REFERENCES `realisateur` (`idRealisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
