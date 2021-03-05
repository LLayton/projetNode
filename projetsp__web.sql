-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 05 mars 2021 à 20:58
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projetspéweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `img`
--

CREATE TABLE `img` (
  `id_img` int(11) NOT NULL,
  `url` varchar(500) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `img`
--

INSERT INTO `img` (`id_img`, `url`, `id_user`) VALUES
(18, '/uploads/4_ppCochon.jpg', 4);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `datenaissance` date NOT NULL,
  `latitude` varchar(150) NOT NULL,
  `longitude` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `datenaissance`, `latitude`, `longitude`) VALUES
(3, 'teza', 'gth', '2019-11-04', '6559', '898948'),
(5, 'banane', 'légume', '2001-07-02', 'tate', 'iezubuihj'),
(6, 'Einstein ', 'Albert', '2017-08-15', '4548959+5', '+9599+556++65'),
(7, 'Teemo', 'cancer', '2001-07-04', '4rez84486ze564ezf', 'dazeefzefazee'),
(8, 'Teemo', 'cancer', '2001-07-04', '4rez84486ze564ezf', 'dazeefzefazee'),
(9, 'fhtr', 'hrt', '2021-03-01', 'hrt', 'htr'),
(10, 'fhtr', 'hrt', '2021-03-01', 'hrt', 'htr'),
(11, 'dzq', 'qzd', '2021-03-10', 'qzDQZ', 'QDZ'),
(12, 'dzq', 'qzd', '2021-03-10', 'qzDQZ', 'QDZ'),
(13, 'banane', 'asperge', '2001-07-03', 'tate', 'iezubuihj'),
(14, 'banane', 'légume', '2001-07-02', 'tate', 'iezubuihj'),
(16, 'toto', 'tata', '2021-02-28', '544894984', '5451654'),
(17, 'teza', 'gth', '2019-11-04', '6559', '898948');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `img_FK` (`id_user`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `img`
--
ALTER TABLE `img`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
