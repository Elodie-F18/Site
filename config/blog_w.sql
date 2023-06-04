-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 04 juin 2023 à 13:56
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog_w`
--

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Agence Groupe Echo'),
(2, 'Agence Kalelia');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `picture` varchar(60) NOT NULL,
  `title` varchar(100) NOT NULL,
  `summary` text NOT NULL,
  `contents` text NOT NULL,
  `created_at` datetime NOT NULL,
  `author_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `category_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `projet_cms` text NOT NULL,
  `link` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `created_at` (`created_at`),
  KEY `author_id` (`author_id`),
  KEY `category_id` (`category_id`),
  KEY `author_id_2` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `picture`, `title`, `summary`, `contents`, `created_at`, `author_id`, `category_id`, `projet_cms`, `link`) VALUES
(1, 'pic_faros01.jpg', 'Faros', '', 'Site réalisé suivant maquette graphique des webdesigner. Création site suivant maquette graphique.\r\nCréation de Custom Post Type, Metabox, Taxonomie, Modèle de page.\r\nResponsive', '2023-06-01 09:33:10', NULL, 2, 'Wordpress', 'https://www.farosinstitut.com/'),
(2, 'mockup_ensi.jpg', 'ENSI', '', 'Création du site internet suivant maquette graphique. Création CPT, modèle de page, taxonomy, metabox. Responsive', '2023-06-04 14:15:27', NULL, 2, 'Wordpress', 'https://ensi-safety.com/'),
(3, 'pic_padawone.png', 'Padawone', '', 'Création du site internet suivant maquette graphique. Création CPT, metabox, taxonomy, modèle de page. Responsive', '2023-06-01 10:25:08', NULL, 2, 'Wordpress', 'https://www.padawone.fr/'),
(4, 'mockup_lespetitspapiersorvault.jpg', 'Les petits papiers d\'Orvault', '', 'Création d\'un site vitrine pour l\'association les petits papiers d\'Orvault. Site réalisé suivant les maquettes graphique des webdesigners. Utilisation des langages : HTML, CSS, JS et PHP', '2023-05-29 00:00:00', NULL, 2, 'Wordpress', 'https://lespetitspapiersdorvault.fr/'),
(5, 'mockup_toutabloc.jpg', 'Tout a bloc', '', 'Site vitrine réalisé suivant la maquette graphique. Utilisation des langages HTML, CSS, JQuery et PHP', '2023-05-29 02:00:00', NULL, 2, 'Wordpress', 'https://www.toutabloc.fr/'),
(6, 'mockup_lungo2.jpg', 'Lungo2', '', 'Création site vitrine réalisé suivant la maquette graphique. Utilisation des langages HTML, CSS, JQuery et PHP. Création Custom Post Type, Métabox et Taxonomy. Création extranet pour permettre aux médecins ou étudiants de se connecter, mise en page différente selon le rôle. ', '2023-06-01 00:00:00', NULL, 2, 'Wordpress', 'https://lungo2.fr/'),
(7, 'pic_p&c.jpg', 'Pierres & Caractère', '', 'Chargé du responsive du site', '2023-06-02 00:00:00', NULL, 2, 'Wordpress', 'https://www.pierres-caractere.fr/'),
(8, 'pic_mandalia.jpg', 'Mandalia', '', 'Création du menu + les pages pour \"Centre de formation\". Création de modèle de page et CPT.', '2023-06-01 00:00:00', NULL, 2, 'Wordpress', 'https://www.mandalia-music.com/'),
(9, 'pic_esa.jpg', 'ESA', '', 'Refonte de la page d\'accueil. Responsive', '2023-06-03 00:00:00', NULL, 2, 'E-majine', 'https://www.groupe-esa.com/'),
(10, 'pic_lescolettes.jpg', 'Les colettes', '', 'Refonte du footer. Création d\'une page actualité : \"Pause café\". Création de la page équipe et de la page single associée.', '2023-06-02 00:00:00', NULL, 2, 'Wordpress', 'https://www.les-colettes.fr/'),
(11, 'pic_luxwash.png', 'Luxwash', '', 'Création de la partie e-commerce.', '2023-06-02 00:00:00', NULL, 2, 'Wordpress', 'https://www.luxwash.fr/'),
(12, 'mockup_handi_emploi.jpg', 'Handi Emploi Choletais', '', 'Création design suivant identité graphique et adaptation suivant modèle catalogue avec le constructeur de pages Divi. Responsive du site.', '2023-06-02 00:00:00', NULL, 1, 'Wordpress\r\nDivi', 'https://www.handiemploicholetais.fr/'),
(13, 'mockup_traitaservice.jpg', 'Traita Service', '', 'Création de 3 designs sur-mesures différents en ce référent à l\'identité visuelle et au logo. Déclinaison du style de la page d\'accueil sur les pages intérieures. Responsive', '2023-06-02 00:00:00', NULL, 1, 'Wordpress\r\nDivi', 'https://traitaservice.com/'),
(14, 'mockup_traita_agro.jpg', 'Traita Agro', '', 'Déclinaison du style de la page d\'accueil sur les pages intérieures. Responsive', '2023-06-02 00:00:00', NULL, 1, 'Wordpress\r\nDivi', 'https://traita-agro.com/'),
(15, 'mockup_audrey_figiel.jpg', 'Audrey Figiel - Sophrologue', '', 'Création design suivant identité graphique et adaptation suivant modèle catalogue avec le constructeur de pages Divi. Responsive du site. ', '2023-06-02 00:00:00', NULL, 1, 'Wordpress\r\nDivi', 'https://sophrologue-troyes.fr/'),
(16, 'mockup_fnb.jpg', 'FNB', '', 'Correction sur la page d\'accueil + création de la page équipe', '2023-06-02 00:00:00', NULL, 2, 'Wordpress', 'https://www.fnbois.com/'),
(17, 'pic-bois-de-france.png', 'Préférez les Bois de France', '', 'Refonte de la page d\'accueil + Création de nouvelles pages (Les missions de la filière bois de France, Publication, Données environnementales : FDES et configurateur). Modification de la page Nos Réalisations. Création de CPT, Metabox et Taxonomy. Responsive', '2023-06-02 00:00:00', NULL, 2, 'Wordpress', 'https://preferezlesboisdefrance.fr/'),
(18, 'mockup_neurofeedback.jpg', 'Delphine Dyon - Le Neurofeedback\r\nDynamical®', '', 'Création One Page suivant modèle catalogue de Divi', '2023-06-02 00:00:00', NULL, 1, 'Wordpress \r\nDivi', 'https://troyes-neurofeedback.fr/'),
(19, 'pic_didier_langry.png', 'Champagne Didier Langry', '', 'Création de 3 designs sur-mesures différents. Déclinaison du style de la page d\'accueil sur les pages intérieures. Création e-commerce. Intégration du contenu et de la version anglaise. Responsive ', '2023-06-02 00:00:00', NULL, 1, 'Wordpress\r\nDivi', 'https://champagne-langry.com/');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `Post_author_author_id` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Post_cate_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
