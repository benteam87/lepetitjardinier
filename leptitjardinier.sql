-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 13 juin 2023 à 09:53
-- Version du serveur : 5.7.36
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `leptitjardinier`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'Feuillu'),
(2, 'Variée'),
(3, 'Fleurie'),
(4, 'Fruitière');

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

DROP TABLE IF EXISTS `devis`;
CREATE TABLE IF NOT EXISTS `devis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `hauteur` int(11) NOT NULL,
  `longueur` int(11) NOT NULL,
  `type_client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `haie_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `prix` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8B27C52BE7470F2C` (`haie_id`),
  KEY `IDX_8B27C52BA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `devis`
--

INSERT INTO `devis` (`id`, `date`, `hauteur`, `longueur`, `type_client`, `haie_id`, `user_id`, `prix`) VALUES
(1, '2023-06-07', 15, 15, 'entreprise', 'BD', 12, 0),
(2, '2023-06-04', 12, 12, 'particulier', 'LA', 6, 150),
(3, '2023-06-13', 12, 12, 'particulier', 'BD', 6, 15),
(4, '2023-06-13', 12, 12, 'entreprise', 'CD', 6, 154),
(5, '2023-06-13', 21, 12, 'particulier', 'BD', 13, 15),
(6, '2023-06-13', 12, 12, 'particulier', 'BD', 13, 15),
(7, '2023-06-13', 10, 10, 'particulier', 'LA', 13, 15),
(8, '2023-06-13', 10, 10, 'particulier', 'CD', 13, 154),
(9, '2023-06-13', 10, 10, 'particulier', 'BD', 13, 15),
(10, '2023-06-13', 10, 10, 'entreprise', 'BD', 13, 15),
(11, '2023-06-13', 1, 10, 'particulier', 'BD', 13, 15),
(12, '2023-06-13', 1, 10, 'particulier', 'BD', 13, 15),
(13, '2023-06-13', 1, 10, 'particulier', 'BD', 13, 15),
(14, '2023-06-13', 10, 10, 'particulier', 'BD', 13, 15),
(15, '2023-06-13', 10, 10, 'particulier', 'CD', 13, 154),
(16, '2023-06-13', 10, 10, 'particulier', 'BD', 13, 15),
(17, '2023-06-13', 15, 15, 'particulier', 'BD', 13, 15),
(18, '2023-06-13', 15, 15, 'particulier', 'PD', 13, 3375),
(19, '2023-06-13', 12, 12, 'entreprise', 'PD', 13, 2700),
(20, '2023-06-13', 15, 15, 'entreprise', 'BD', 13, 337),
(21, '2023-06-13', 1, 10, 'particulier', 'BD', 13, 150),
(22, '2023-06-13', 10, 1, 'entreprise', 'BD', 13, 20),
(23, '2023-06-13', 10, 1, 'entreprise', 'BD', 13, 20.25);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230426114803', '2023-04-26 23:16:11', 570),
('DoctrineMigrations\\Version20230426152142', '2023-04-26 23:16:12', 292),
('DoctrineMigrations\\Version20230426153131', '2023-04-26 23:16:12', 427),
('DoctrineMigrations\\Version20230426224840', '2023-04-26 23:16:13', 1151),
('DoctrineMigrations\\Version20230426225513', '2023-04-26 23:16:14', 1620),
('DoctrineMigrations\\Version20230426225656', '2023-04-26 23:16:15', 1098),
('DoctrineMigrations\\Version20230426225900', '2023-04-26 23:16:17', 1179),
('DoctrineMigrations\\Version20230427115629', '2023-04-27 11:56:40', 1579),
('DoctrineMigrations\\Version20230427120558', '2023-04-27 12:06:04', 1613),
('DoctrineMigrations\\Version20230427144531', '2023-04-27 14:45:38', 460),
('DoctrineMigrations\\Version20230427151804', '2023-04-27 15:18:14', 800),
('DoctrineMigrations\\Version20230526135721', '2023-05-26 13:57:47', 1224),
('DoctrineMigrations\\Version20230529222056', '2023-05-29 22:21:07', 1500),
('DoctrineMigrations\\Version20230604143109', '2023-06-04 14:31:24', 1054),
('DoctrineMigrations\\Version20230604143850', '2023-06-04 14:38:56', 595),
('DoctrineMigrations\\Version20230604143938', '2023-06-04 14:39:41', 815),
('DoctrineMigrations\\Version20230610181326', '2023-06-10 18:13:33', 1090),
('DoctrineMigrations\\Version20230610181652', '2023-06-10 18:16:57', 430),
('DoctrineMigrations\\Version20230610183329', '2023-06-10 18:33:32', 225),
('DoctrineMigrations\\Version20230610183444', '2023-06-10 18:34:47', 374),
('DoctrineMigrations\\Version20230610183641', '2023-06-10 18:36:46', 1546),
('DoctrineMigrations\\Version20230610183915', '2023-06-10 18:39:19', 1461),
('DoctrineMigrations\\Version20230612155317', '2023-06-12 15:53:22', 1197),
('DoctrineMigrations\\Version20230613092643', '2023-06-13 09:26:48', 1563);

-- --------------------------------------------------------

--
-- Structure de la table `haie`
--

DROP TABLE IF EXISTS `haie`;
CREATE TABLE IF NOT EXISTS `haie` (
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `categorie_id` int(11) NOT NULL,
  PRIMARY KEY (`code`),
  KEY `IDX_1F24E4DEBCF5E72D` (`categorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `haie`
--

INSERT INTO `haie` (`code`, `nom`, `prix`, `categorie_id`) VALUES
('BD', 'Bilbao', 15, 1),
('CD', 'Calvaire', 154, 2),
('LA', 'Laurier', 15, 1),
('PD', 'Palladium', 150, 1);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `adresse`, `ville`, `cp`) VALUES
(6, 'test@test.fr', '[\"ROLE_ADMIN\"]', '$2y$13$958ZyHb4cz9bwPDVMhuwMOw/TJ/a/8RpvmPj2aGqco0gBzc.4lDlS', 'Test', 'Test', '', '', 0),
(8, 'cmoi@gmail.com', '[]', '$2y$13$JY3qClJuRbmQikYVpc5/E.Yf6OlFW.UV.ae5uCeANfPb0AqMl8Rl2', 'Comande', 'Bernard', '', '', 0),
(9, 'oui@gmail.com', '[]', '$2y$13$y0xJMlAXAZnMDnYNyqg69eaCct0.IHpmfe8GrTwyy88cpXCMY3r4i', 'oui', 'oui', '', '', 0),
(10, 'test2@test.fr', '[]', '$2y$13$N.8.BImYGGqgF5MsmjmRpO0KehrFd94.S577X7RECnGdKI.iM.ClW', 'de', 'de', '11', 'armand', 87100),
(11, 'benjamin.delblond@gmail.com', '[]', '$2y$13$34O1EaYN4c.fISGICetf9Ox2cOKDP.qw.3/CqVRlokSsNtMwSAne.', 'DELBLOND', 'Benjamin', '11 rue des pélicans', 'Feytiat', 87220),
(12, '12@gmail.com', '[]', '$2y$13$iUIu/DGjFKOgB/fLpADIbugCG8fLMGuIYs3fwfTteFQ9cueZtzNXy', 'Moi', 'Demain', '12 rue des pisselits', 'Limoges', 87100),
(13, 'Benjamindelblond@gmail.com', '[]', '$2y$13$9R9a2eEV46oJlg.t38xMleQoQqmS2IbcUXyeVXWk3P5IHDyt.l/ey', 'DELBLOND', 'Benjamin', '12 rue des pisselits', 'Limoges', 87100);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `devis`
--
ALTER TABLE `devis`
  ADD CONSTRAINT `FK_8B27C52BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_8B27C52BE7470F2C` FOREIGN KEY (`haie_id`) REFERENCES `haie` (`code`);

--
-- Contraintes pour la table `haie`
--
ALTER TABLE `haie`
  ADD CONSTRAINT `FK_1F24E4DEBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
