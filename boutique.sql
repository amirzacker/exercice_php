-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 19 nov. 2021 à 12:02
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `boutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id_article` int(255) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `title_article` varchar(255) DEFAULT NULL,
  `text_article` varchar(255) DEFAULT NULL,
  `image_article` varchar(255) DEFAULT NULL,
  `price_article` int(255) DEFAULT NULL,
  `description_article` varchar(255) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `id_user`, `title_article`, `text_article`, `image_article`, `price_article`, `description_article`, `quantity`) VALUES
(3, 50, 'ALLAN4845', 'etudiant', 'ipad-mini-select-202109_FMT_WHHdate=MonNov15113340CET2021ddate=TueNov16105702CET2021d.jpg', 5000, ' presque introuvable et très efficace pour le plan cul', 222222),
(4, 50, 'ALLANE et AMIR', 'ururr', 'shutterstock_553887610-e1557046359887-800x601.jpg', 63536565, 'hfqhqfhfhfhff', 421432),
(13, 50, 'yjyuy', 'ukyu', 'shutterstock_553887610-e1557046359887-800x601.jpg', 54454, 'fhdhfdhhfsfh', 20),
(20, 50, 'rhfhf', 'dddd', '3080date=MonNov15130803CET2021d.jpg', 65256, 'dfhfhf', 52);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(255) NOT NULL,
  `start_comment` int(11) DEFAULT NULL,
  `id_article` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id_comment`, `start_comment`, `id_article`, `id_user`) VALUES
(76, 5, 13, 50),
(77, 2, 4, 50),
(78, 5, 20, 50),
(79, 5, 4, 2),
(81, 3, 13, 2),
(84, 2, 3, 50);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(255) NOT NULL,
  `lastname` varchar(55) DEFAULT NULL,
  `firstname` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_user`, `lastname`, `firstname`, `email`, `password`, `admin`) VALUES
(2, 'allan', 'menget', 'amir@gmail.com', '35bd75040ab8661d3e36c87b10ff1a3a5a33acfb', 1),
(50, 'amir', 'zaky', 'abgurene11@gmail.com', '35bd75040ab8661d3e36c87b10ff1a3a5a33acfb', 1),
(52, 'allan', 'menget', 'allan.minget@gmail.com', '63695633', 1),
(53, 'artateuy', 'yjuhjshfh', 'dfssfs@sjsjsfss', '35bd75040ab8661d3e36c87b10ff1a3a5a33acfb', 0),
(54, 'zjrjj', 'eekgldgjdkg', 'dgjdkdjddfdgd@ege', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `FK_article_users` (`id_user`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `comment_id_article` (`id_article`),
  ADD KEY `comment_id_user` (`id_user`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_article_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_id_article` FOREIGN KEY (`id_article`) REFERENCES `article` (`id_article`),
  ADD CONSTRAINT `comment_id_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
