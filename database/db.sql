DROP DATABASE IF EXISTS `chat-bot-carrefour`;
CREATE DATABASE IF NOT EXISTS `chat-bot-carrefour` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `chat-bot-carrefour`;

-- Dumping structure for table chat-bot-carrefour.catalogs
DROP TABLE IF EXISTS `catalogs`;
CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.catalogs: ~9 rows (approximately)
INSERT INTO `catalogs` (`id`, `path`, `created_at`) VALUES
	(1, 'aboutcompetition.png', '2023-05-05 18:23:07'),
	(2, 'aboutcompetition.png', '2023-05-05 18:26:02'),
	(3, 'aboutcompetition.png', '2023-05-05 18:26:51'),
	(4, 'aboutcompetition.png', '2023-05-05 18:27:01'),
	(5, 'aboutcompetition.png', '2023-05-05 18:29:35'),
	(6, 'aboutcompetition.png', '2023-05-05 18:31:08'),
	(7, 'aboutcompetition.png', '2023-05-05 18:31:48'),
	(8, 'Nos Catalogues - Carrefour Market.pdf', '2023-05-07 14:36:02'),
	(9, 'Nos Catalogues - Carrefour Market.pdf', '2023-05-07 14:37:47');

-- Dumping structure for table chat-bot-carrefour.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `name_ar` varchar(50) NOT NULL DEFAULT '0',
  `facebook_link` longtext DEFAULT NULL,
  `instagram_link` longtext DEFAULT NULL,
  `tiktok_link` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.categories: ~4 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `name_ar`, `facebook_link`, `instagram_link`, `tiktok_link`) VALUES
	(1, 'Carrefour', 'كارفور', 'https://www.facebook.com/CarrefourMa', 'https://www.instagram.com/carrefour.maroc', 'https://www.tiktok.com/@carrefourmaroc'),
	(2, 'Carrefour Market', 'كارفور ماركت', 'https://www.facebook.com/CarrefourMarketMaroc', 'https://www.instagram.com/carrefourmarket.maroc', NULL),
	(3, 'Carrefour Gourmet', 'كارفور جورميه', 'https://www.facebook.com/Carrefourgourmetmaroc', 'https://www.instagram.com/carrefourmarketgourmet', NULL),
	(4, 'Carrefour Express', 'كارفور إكسبرس', 'https://www.facebook.com/CarrefourExpressMaroc', 'https://www.instagram.com/carrefourexpressmaroc', NULL);

-- Dumping structure for table chat-bot-carrefour.cities
DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.cities: ~40 rows (approximately)
INSERT INTO `cities` (`id`, `name`) VALUES
	(1, 'Rabat'),
	(2, 'Meknès'),
	(3, 'Marrakech'),
	(4, 'Casablanca'),
	(5, 'Marrakesh'),
	(6, 'Fès'),
	(7, 'Meknes'),
	(8, 'Tanger'),
	(9, 'Agadir'),
	(10, 'El Jadida'),
	(11, 'Tamaris'),
	(12, 'Essaouira'),
	(13, 'Temara'),
	(14, 'Dar-el-Beida'),
	(15, 'Kénitra'),
	(16, 'Mohammedia'),
	(17, 'Khémisset'),
	(18, 'Tétouan'),
	(19, 'Ouarzazate'),
	(20, 'BenHimaSafi'),
	(21, 'Salé'),
	(22, 'Settat'),
	(23, 'Béni Mellal'),
	(24, 'Berkane'),
	(25, 'Khénifra'),
	(26, 'Nador'),
	(27, 'Sidi Slimane'),
	(28, 'Fes'),
	(29, 'Mohammédia'),
	(30, 'Tangier'),
	(31, 'Bouskoura'),
	(32, 'Majorelle'),
	(33, 'Sidi Kacem'),
	(34, 'Martil'),
	(35, 'Soualem'),
	(36, 'Azrou'),
	(37, 'Kenitra'),
	(38, 'Berrchid'),
	(39, 'Oujda'),
	(40, 'Tetouan');

-- Dumping structure for table chat-bot-carrefour.faq
DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.faq: ~10 rows (approximately)
INSERT INTO `faq` (`id`, `title`, `content`) VALUES
	(1, 'Modes de paiement Ar', 'السلام عليكم  نشكركم على وقتكم ويسعدنا الرد على أسئلتكم  يمكنكم الأداء نقدا أو بالبطاقة البنكية أو بالشيك كارفور ماركت يشكرك على ولائك ويتمنى لك يومًا سعيدًا. تحياتي،مصلحة الزبناء'),
	(2, 'Modes de paiement Ar', 'السلام عليكم  نشكركم على وقتكم ويسعدنا الرد على أسئلتكم  يمكنكم الأداء نقدا أو بالبطاقة البنكية أو بالشيك كارفور ماركت يشكرك على ولائك ويتمنى لك يومًا سعيدًا. تحياتي،مصلحة الزبناء'),
	(3, 'Réponse Prix Fr', 'Bonjour Madame Monsieur, Nous vous remercions du temps que vous nous avez consacré et nous serons heureux de répondre à vos questions.Nous allons nous renseigner sur le prix/ la disponibilité de ce produit dans nos magasins et revenir vers vous dès que possible. Carrefour Market vous remercie pour votre fidélité et vous souhaite une très bonne journée. Cordialement Service Relation Client'),
	(4, 'Réponse Prix Ar', 'السلام عليكم،  نشكركم على وقتكم ويسعدنا الرد على أسئلتكم  سوف نستفسر عن سعر / توفر هذا المنتج في متاجرنا ونعود إليكم في أقرب وقت ممكن. من أجل المزيد من المعلومات، ندعوكم إلى زيارة أقرب متجر كارفور. كارفور ماركت يشكرك على ولائك ويتمنى لك يومًا سعيدًا. تحياتي، قسم علاقات العملاء'),
	(5, 'Réponse Disponibilité Ar', 'السلام عليكم،  نشكركم على وقتكم ويسعدنا الرد على أسئلتكم  سوف نستفسر عن سعر / توفر هذا المنتج في متاجرنا ونعود إليكم في أقرب وقت ممكن. من أجل المزيد من المعلومات، ندعوكم إلى زيارة أقرب متجر كارفور. كارفور ماركت يشكرك على ولائك ويتمنى لك يومًا سعيدًا. تحياتي، قسم علاقات العملاء'),
	(6, 'Réponse Disponibilité Fr', 'Bonjour Madame Monsieur, Nous vous remercions du temps que vous nous avez consacré et nous serons heureux de répondre à vos questions.Nous allons nous renseigner sur le prix/ la disponibilité de ce produit dans nos magasins et revenir vers vous dès que possible. Carrefour Market vous remercie pour votre fidélité et vous souhaite une très bonne journée. Cordialement Service Relation Client'),
	(7, 'Modes de paiement Fr', 'Bonjour Madame Monsieur, Avant toute chose, nous vous remercions du temps que vous nous avez consacré et nous serons heureux de répondre à vos questions. Vous pouvez payer en espèce, par chèque ou par carte bancaire.Nous vous remercions pour votre fidélité et vous souhaitons une très bonne journée, Cordialement Service Relation Client'),
	(8, 'Modes de paiement Ar', 'السلام عليكم  نشكركم على وقتكم ويسعدنا الرد على أسئلتكم  يمكنكم الأداء نقدا أو بالبطاقة البنكية أو بالشيك كارفور ماركت يشكرك على ولائك ويتمنى لك يومًا سعيدًا. تحياتي،مصلحة الزبناء'),
	(9, 'Nom du produit Ar', 'Bonjour Madame Monsieur, Nous vous remercions du temps que vous nous avez consacré et nous serons heureux de répondre à vos questions.Nous allons nous renseigner sur le prix/ la disponibilité de ce produit dans nos magasins et revenir vers vous dès que possible. Carrefour Market vous remercie pour votre fidélité et vous souhaite une très bonne journée. Cordialement Service Relation Client'),
	(10, 'Nom du produit Fr', 'السلام عليكم،  نشكركم على وقتكم ويسعدنا الرد على أسئلتكم  سوف نستفسر عن سعر / توفر هذا المنتج في متاجرنا ونعود إليكم في أقرب وقت ممكن. من أجل المزيد من المعلومات، ندعوكم إلى زيارة أقرب متجر كارفور. كارفور ماركت يشكرك على ولائك ويتمنى لك يومًا سعيدًا. تحياتي، قسم علاقات العملاء');

-- Dumping structure for table chat-bot-carrefour.groupes
DROP TABLE IF EXISTS `groupes`;
CREATE TABLE IF NOT EXISTS `groupes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.groupes: ~7 rows (approximately)
INSERT INTO `groupes` (`id`, `name`) VALUES
	(1, 'Gourmet'),
	(2, 'Premium'),
	(3, 'Standard'),
	(4, 'Relance Express'),
	(5, 'Express'),
	(6, 'Relance mag en difficulté'),
	(7, 'Hypermarché');

-- Dumping structure for table chat-bot-carrefour.leads
DROP TABLE IF EXISTS `leads`;
CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(200) DEFAULT '0',
  `phone` varchar(200) DEFAULT '0',
  `lang` varchar(10) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.leads: ~0 rows (approximately)

-- Dumping structure for table chat-bot-carrefour.marques
DROP TABLE IF EXISTS `marques`;
CREATE TABLE IF NOT EXISTS `marques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.marques: ~4 rows (approximately)
INSERT INTO `marques` (`id`, `name`) VALUES
	(1, 'hyper'),
	(2, 'market'),
	(3, 'express'),
	(4, 'gourmet');

-- Dumping structure for table chat-bot-carrefour.messages
DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` varchar(150) DEFAULT NULL,
  `to` varchar(50) DEFAULT NULL,
  `from` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.messages: ~68 rows (approximately)
INSERT INTO `messages` (`id`, `message_id`, `to`, `from`, `type`, `body`, `created_at`) VALUES
	(1, 'cc1927c4-e3de-4284-aadc-ca756031ed95', '14157386102', '212621586010', 'text', '6', '2023-04-29 23:00:00'),
	(2, 'cc1927c4-e3de-4284-aadc-ca756031ed95', '14157386102', '212621586010', 'text', '6', '2023-04-29 23:00:00'),
	(3, '0af1d451-6685-4dba-b6ca-da3e0e273677', '14157386102', '212621586010', 'location', NULL, '2023-04-29 23:00:00'),
	(4, '0af1d451-6685-4dba-b6ca-da3e0e273677', '14157386102', '212621586010', 'location', NULL, '2023-04-29 23:00:00'),
	(5, '0af1d451-6685-4dba-b6ca-da3e0e273677', '14157386102', '212621586010', 'text', '4', '2023-04-29 23:00:00'),
	(6, '0af1d451-6685-4dba-b6ca-da3e0e273677', '14157386102', '212621586010', 'text', '4', '2023-04-29 23:00:00'),
	(7, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', 'HEY', '2023-04-29 23:00:00'),
	(8, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '4', '2023-04-29 23:00:00'),
	(9, '2a8e3907-0a95-4d98-87f1-246a519382ba', '14157386102', '212621586010', 'reply', NULL, '2023-04-29 23:00:00'),
	(10, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-29 23:00:00'),
	(11, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-29 23:00:00'),
	(12, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-30 19:51:02'),
	(13, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-30 19:54:28'),
	(14, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-30 19:55:33'),
	(15, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', 'Carrefour Weld Nass', '2023-04-30 19:58:40'),
	(16, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', 'Carrefour asasa Nass', '2023-04-30 19:58:50'),
	(17, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-30 20:04:37'),
	(18, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', 'Carrefour', '2023-04-30 20:04:55'),
	(19, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-30 20:05:24'),
	(20, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', 'CARREFOUR ', '2023-04-30 20:05:33'),
	(21, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5 ', '2023-04-30 20:06:26'),
	(22, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-30 20:06:34'),
	(23, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', 'HEY I WANT TO FUCK UP UR ALL', '2023-04-30 20:06:49'),
	(24, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '4', '2023-04-30 20:07:17'),
	(25, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-30 20:07:24'),
	(26, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', 'HEY ', '2023-04-30 20:07:32'),
	(27, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-30 20:08:36'),
	(28, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-30 20:09:37'),
	(29, '1e741395-e0d6-47f4-9553-ab8d550791a9', '14157386102', '212621586010', 'text', '5', '2023-04-30 21:38:12'),
	(30, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 22:38:23'),
	(31, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 22:38:34'),
	(32, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 22:39:44'),
	(33, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 22:42:33'),
	(34, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 22:52:13'),
	(35, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 22:57:04'),
	(36, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 23:03:04'),
	(37, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 23:19:28'),
	(38, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 23:20:19'),
	(39, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 23:20:44'),
	(40, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 23:21:20'),
	(41, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 23:22:03'),
	(42, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 23:22:21'),
	(43, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-04-30 23:22:44'),
	(44, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-05-01 10:52:18'),
	(45, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-05-01 10:53:02'),
	(46, 'fe5ae8c4-e47d-4c80-a794-748af3db1c87', '14157386102', '212621586010', 'reply', NULL, '2023-05-01 10:54:09'),
	(47, '16479264-a00a-43e1-8f9d-be6ddacc59da', '14157386102', '212621586010', 'text', 'hey dear', '2023-05-01 11:03:01'),
	(48, '16479264-a00a-43e1-8f9d-be6ddacc59da', '14157386102', '212621586010', 'text', 'hey dear', '2023-05-01 11:03:49'),
	(49, '16479264-a00a-43e1-8f9d-be6ddacc59da', '14157386102', '212621586010', 'text', 'hey dear', '2023-05-01 11:04:31'),
	(50, '16479264-a00a-43e1-8f9d-be6ddacc59da', '14157386102', '212621586010', 'text', 'hey dear', '2023-05-01 11:05:18'),
	(51, '16479264-a00a-43e1-8f9d-be6ddacc59da', '14157386102', '212621586010', 'text', 'hey dear', '2023-05-01 11:05:55'),
	(52, '16479264-a00a-43e1-8f9d-be6ddacc59da', '14157386102', '212621586010', 'text', 'hey dear', '2023-05-01 11:06:21'),
	(53, '16479264-a00a-43e1-8f9d-be6ddacc59da', '14157386102', '212621586010', 'text', 'hey dear', '2023-05-01 11:07:10'),
	(54, '16479264-a00a-43e1-8f9d-be6ddacc59da', '14157386102', '212621586010', 'text', 'hey dear', '2023-05-01 11:07:35'),
	(55, '16479264-a00a-43e1-8f9d-be6ddacc59da', '14157386102', '212621586010', 'text', 'hey dear', '2023-05-01 11:07:55'),
	(56, '93951aa2-7bd0-47c8-8210-c2f3b58ad9e9', '14157386102', '212621586010', 'reply', NULL, '2023-05-01 11:21:10'),
	(57, '93951aa2-7bd0-47c8-8210-c2f3b58ad9e9', '14157386102', '212621586010', 'reply', NULL, '2023-05-01 11:21:36'),
	(58, '93951aa2-7bd0-47c8-8210-c2f3b58ad9e9', '14157386102', '212621586010', 'reply', NULL, '2023-05-01 11:23:18'),
	(59, '3662f227-55f9-4d6b-98ec-4c95353b1a02', '14157386102', '212621586010', 'reply', NULL, '2023-05-01 11:23:50'),
	(60, '3662f227-55f9-4d6b-98ec-4c95353b1a02', '14157386102', '212621586010', 'reply', NULL, '2023-05-01 11:24:11'),
	(61, 'e946cb1a-3112-44d8-a1c0-293c207adba1', '212522061150', '212621586010', 'location', NULL, '2023-05-02 15:26:45'),
	(62, 'e946cb1a-3112-44d8-a1c0-293c207adba1', '212522061150', '212621586010', 'location', NULL, '2023-05-02 15:31:08'),
	(63, 'e946cb1a-3112-44d8-a1c0-293c207adba1', '212522061150', '212621586010', 'location', NULL, '2023-05-02 15:31:33'),
	(64, 'e946cb1a-3112-44d8-a1c0-293c207adba1', '212522061150', '212621586010', 'location', NULL, '2023-05-02 15:32:45'),
	(65, '56de7fff-2a7c-4c8b-a682-064ed511ee01', '212522061150', '212621586010', 'text', 'hello World', '2023-05-02 16:01:38'),
	(66, '56de7fff-2a7c-4c8b-a682-064ed511ee01', '212522061150', '212621586010', 'text', 'hello World', '2023-05-02 16:03:16'),
	(67, '56de7fff-2a7c-4c8b-a682-064ed511ee01', '212522061150', '212621586010', 'text', 'hello World', '2023-05-02 16:03:28'),
	(68, '56de7fff-2a7c-4c8b-a682-064ed511ee01', '212522061150', '212621586010', 'text', 'hello World', '2023-05-02 16:16:13');

-- Dumping structure for table chat-bot-carrefour.mytable
DROP TABLE IF EXISTS `mytable`;
CREATE TABLE IF NOT EXISTS `mytable` (
  `Groupe` varchar(25) NOT NULL,
  `Magasin` varchar(24) NOT NULL,
  `Localisation` varchar(398) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.mytable: ~127 rows (approximately)
INSERT INTO `mytable` (`Groupe`, `Magasin`, `Localisation`, `id`) VALUES
	('Gourmet', 'VELODROME', 'https://www.google.com/maps/place/Carrefour+Gourmet/@33.590783,-7.6461456,15z/data=!4m6!3m5!1s0xda7d2e5a965907f:0x7d13f7aa0478cb2d!8m2!3d33.590783!4d-7.6461456!16s%2Fg%2F1hdz5j44d?hl=fr', 1),
	('Gourmet', 'ZAERS', 'https://www.google.com/maps/place/Carrefour+Market+Gourmet+Rabat+Za%C3%ABrs/@33.9744012,-6.8292176,15z/data=!4m6!3m5!1s0xda76b50ad6dbc93:0xd47e2a04a9e9709d!8m2!3d33.9744012!4d-6.8292176!16s%2Fg%2F11b6h_d3gf?hl=fr', 2),
	('Gourmet', 'MARRAKECH CARRE EDEN', 'https://www.google.com/maps/place/Carrefour+Market+Gourmet+Carr%C3%A9+Eden/@31.6350455,-8.0111498,15z/data=!4m2!3m1!1s0x0:0x2d6e3b687445b4d4?sa=X&hl=fr&ved=2ahUKEwjthpPDiLH-AhVmUqQEHUEDBskQ_BJ6BAhiEAk', 3),
	('Premium', 'MEKNES MY SMAIL', 'https://www.google.com/maps/place/Carrefour+Market+-+Moulay+Ismail/@33.9025802,-5.5467118,15z/data=!4m2!3m1!1s0x0:0xc83345d3eb2f2719?sa=X&hl=fr&ved=2ahUKEwja8uDBhbH-AhUyaqQEHdroDWsQ_BJ6BAhMEAk', 4),
	('Premium', 'ANFA', 'https://www.google.com/maps/place/Carrefour+Market+Anfa/@33.5772247,-7.6741522,15z/data=!4m2!3m1!1s0x0:0x4a24f709d361bc99?sa=X&hl=fr&ved=2ahUKEwji8rSOhbH-AhVmT6QEHXMADWMQ_BJ6BAhzEAk', 5),
	('Premium', 'FES RT IMOUZAR', 'https://www.google.com/maps/place/Carrefour+Market+F%C3%A8s+Immouzer/@34.0219469,-4.9974868,15z/data=!4m6!3m5!1s0xd9f8b1332b596cb:0x24f819a30c0bbc56!8m2!3d34.0219469!4d-4.9974868!16s%2Fg%2F1tgf4kv8?hl=fr', 6),
	('Premium', 'FONTAINE', 'https://www.google.com/maps/place/Carrefour+Market+la+Fontaine/@31.6283251,-8.0026042,15z/data=!4m2!3m1!1s0x0:0x1b3bc678b0c83016?sa=X&hl=fr&ved=2ahUKEwip-aeghrH-AhWrUaQEHUOYCawQ_BJ6BAhsEAk', 7),
	('Premium', 'Menara mall', 'https://www.google.com/maps/place/Carrefour+Market+Menara+Mall/@31.6186525,-8.0090683,15z/data=!4m2!3m1!1s0x0:0x2081d05656461230?sa=X&hl=fr&ved=2ahUKEwjInIqphrH-AhW0XaQEHVixAZ0Q_BJ6BAhPEAk', 8),
	('Premium', 'MEKNES', 'https://www.google.com/maps/place/Carrefour+Market+Sidi+Said+Mekn%C3%A8s/@33.8929179,-5.5753772,15z/data=!4m6!3m5!1s0xda05b3b6d5b6ddb:0xa76f5aef1c3e3784!8m2!3d33.8929179!4d-5.5753772!16s%2Fg%2F11nntj_3bw?hl=fr', 9),
	('Premium', 'Tanger IBERIA', 'https://www.google.com/maps/place/Carrefour+Market+Iberia/@35.7826505,-5.8197596,15z/data=!4m2!3m1!1s0x0:0x9dd4c37c7146f4ad?sa=X&hl=fr&ved=2ahUKEwj-6IG7hrH-AhXEU6QEHVsuDq8Q_BJ6BAhkEAk', 10),
	('Premium', 'tanger IBN BATOUTA', 'https://www.google.com/maps/place/Carrefour+Market+Ibn+Batouta/@35.7773323,-5.8020868,15z/data=!4m2!3m1!1s0x0:0x8f41c156089aad14?sa=X&hl=fr&ved=2ahUKEwjiw5yzhrH-AhUbU6QEHY5yABsQ_BJ6BAhfEAk', 11),
	('Premium', 'AGADIR', 'https://www.google.com/maps/place/Carrefour+Market+Le+barreau+Agadir/@30.4026525,-9.5788633,15z/data=!4m2!3m1!1s0x0:0x8d20983a6ab03a39?sa=X&hl=fr&ved=2ahUKEwj_q4LnhrH-AhWTUqQEHSBoAiMQ_BJ6BAhgEAk', 12),
	('Premium', 'ANFA PLACE', 'https://www.google.com/maps/place/Carrefour+Market+Anfa+Place/@33.5984752,-7.6650577,15z/data=!4m6!3m5!1s0xda7d3060a5aba01:0x5477e56713972ba4!8m2!3d33.5984752!4d-7.6650577!16s%2Fg%2F11g4dnft62?hl=fr', 13),
	('Premium', 'YACOUBMANSOUR', 'https://www.google.com/maps/place/Carrefour+Market+Yacoub+El+Mansour/@33.5738655,-7.6445425,15z/data=!4m2!3m1!1s0x0:0x44a4f40240bb2a6f?sa=X&hl=fr&ved=2ahUKEwjckLCkhbH-AhX4RKQEHcw8DskQ_BJ6BAhbEAk', 14),
	('Premium', 'TADDART', 'https://www.google.com/maps/place/Carrefour+Market+Taddart/@33.5545597,-7.6265171,15z/data=!4m2!3m1!1s0x0:0x39f04510e313c93b?sa=X&hl=fr&ved=2ahUKEwiMqO6uhbH-AhXGaqQEHaSiBtwQ_BJ6BAhyEAk', 15),
	('Premium', 'PANORAMIQUE', 'https://www.google.com/maps/place/Carrefour+Market+Panoramique/@33.5481561,-7.6287184,15z/data=!4m6!3m5!1s0xda62d4665c66821:0x5e4ef942a13a87c7!8m2!3d33.5481561!4d-7.6287184!16s%2Fg%2F11gbx9s3r5?hl=fr', 16),
	('Premium', 'ELJADIDA', 'https://www.google.com/maps/place/Carrefour+Market+El+Jadida+2+Najd/@33.2277021,-8.5069724,15z/data=!4m2!3m1!1s0x0:0x6c5c9d8e188d76ea?sa=X&hl=fr&ved=2ahUKEwjnnLrMhrH-AhWyUKQEHUmvBxQQ_BJ6BAhcEAk', 17),
	('Premium', 'ESSAOUIRA', 'https://www.google.com/maps/place/Carrefour+Market+Essaouira/@31.4958888,-9.7523535,15z/data=!4m2!3m1!1s0x0:0xee3bc84603da5078?sa=X&hl=fr&ved=2ahUKEwiOrb7bhrH-AhWHU6QEHVWhCMAQ_BJ6BAhzEAk', 18),
	('Premium', 'WIFAk', 'https://www.google.com/maps/place/Carrefour+Market+Wifak/@33.9295928,-6.9288729,15z/data=!4m2!3m1!1s0x0:0xb30155822c7cee0a?sa=X&hl=fr&ved=2ahUKEwi3p5WAhLH-AhVUbKQEHaFEBGMQ_BJ6BAhpEAk', 19),
	('Premium', 'CASA DAR BOUAZA', 'https://www.google.com/maps/place/Carrefour+Market+Dar+Bouazza/@33.5139891,-7.8182342,15z/data=!4m2!3m1!1s0x0:0xf3fa7f9c5f14b298?sa=X&hl=fr&ved=2ahUKEwjN5b63hbH-AhUbU6QEHY5yABsQ_BJ6BAhoEAk', 20),
	('Premium', 'MAARIF', 'https://www.google.com/maps/place/Carrefour+Market+Maarif/@33.5801508,-7.6406968,15z/data=!4m2!3m1!1s0x0:0xa77e08aa38eab90d?sa=X&hl=fr&ved=2ahUKEwjr1auYhbH-AhWkTqQEHZ3nA7wQ_BJ6BAh6EAk', 21),
	('Standard', 'AGADIR DAKHLA', 'https://www.google.com/maps/place/Carrefour+Market+Hassan+1er/@30.410995,-9.5615148,15z/data=!4m2!3m1!1s0x0:0xec7f0893a81c2c9c?sa=X&ved=2ahUKEwjBkYXCmrH-AhVBU6QEHQRECTIQ_BJ6BAheEAk', 22),
	('Standard', 'CASA ABDELMOUMEN', 'https://www.google.com/maps/place/Carrefour+Market+Abdelmoumen/@33.5691262,-7.6262192,15z/data=!4m2!3m1!1s0x0:0x510e7ea0880f03ea?sa=X&hl=fr&ved=2ahUKEwjF9fPd9bD-AhWZa6QEHTt7AVcQ_BJ6BAhuEAk', 23),
	('Standard', 'Valfleury', 'https://www.google.com/maps/place/Carrefour+Market+Val+Fleuri/@33.5741297,-7.636124,15z/data=!4m2!3m1!1s0x0:0x986681ec02121d21?sa=X&hl=fr&ved=2ahUKEwjL8_yK9rD-AhWiY6QEHSJFCJEQ_BJ6BAhoEAk', 24),
	('Standard', 'CASA BOURGOGNE', 'https://www.google.com/maps/place/Carrefour+Express+Bourgogne/@33.5983898,-7.6420242,17z/data=!3m1!4b1!4m5!3m4!1s0xda7d31221e161a9:0xc70b8556b6ea8bf5!8m2!3d33.5983794!4d-7.6398348', 25),
	('Standard', 'Ziraoui', 'https://www.google.com/maps/place/Carrefour+Market+Ziraoui/@33.597028,-7.629585,15z/data=!4m2!3m1!1s0x0:0xfd3c7541a2400015?sa=X&hl=fr&ved=2ahUKEwjSr7WW9rD-AhXYWaQEHex1BOkQ_BJ6BAhuEAk', 26),
	('Standard', 'Lissassfa', 'https://www.google.com/maps/place/Carrefour+Market+Lissassfa/@33.5379582,-7.6804685,15z/data=!4m2!3m1!1s0x0:0x70fbd3a649c01b04?sa=X&hl=fr&ved=2ahUKEwj4us399bD-AhV8VaQEHe62DuYQ_BJ6BAhmEAk', 27),
	('Standard', 'KENITRA', 'https://www.google.com/maps/place/Carrefour+Market+K%C3%A9nitra+1/@34.2596987,-6.5819786,15z/data=!4m2!3m1!1s0x0:0xb4fc0b1c1d4d0528?sa=X&hl=fr&ved=2ahUKEwjbuYPS9rD-AhXOU6QEHblgCMcQ_BJ6BAhnEAk', 28),
	('Standard', 'KHEMISSET', 'https://www.google.com/maps/place/Carrefour+Market+Khemisset/@33.8264589,-6.0911532,15z/data=!4m2!3m1!1s0x0:0xf885fbceb71c1d53?sa=X&hl=fr&ved=2ahUKEwi0pOfz_LD-AhVPY6QEHRiyDOQQ_BJ6BAhnEAk', 29),
	('Standard', 'meknes Plaisance', 'https://www.google.com/maps/place/Carrefour+Market+-+Plaisance/@33.9001887,-5.5044926,15z/data=!4m6!3m5!1s0xda0444c7b98bb27:0xf0c9bd7e6ceeb236!8m2!3d33.9001887!4d-5.5044926!16s%2Fg%2F1vb9ff10?hl=fr', 30),
	('Standard', 'MOHAMMADIA KASBAH', 'https://www.google.com/maps/place/Carrefour+Market+Kasba/@33.6980906,-7.3907578,15z/data=!4m2!3m1!1s0x0:0x2cd17ec6e17378ab?sa=X&hl=fr&ved=2ahUKEwiXzJbW9LD-AhXNUqQEHSi7BOAQ_BJ6BAhoEAk', 31),
	('Standard', 'MOHAMMADIA MANSOURIA', 'https://www.google.com/maps/place/Carrefour+Market+Mansouria+-+Mohammedia/@33.730498,-7.3298469,15z/data=!4m2!3m1!1s0x0:0xf92b690c016eb356?sa=X&hl=fr&ved=2ahUKEwj-xs3y9LD-AhU4XqQEHcOFANEQ_BJ6BAh0EAk', 32),
	('Standard', 'Al MANAL', 'https://www.google.com/maps/place/Carrefour+Market+Al+Manal/@33.9759679,-6.8901131,15z/data=!4m2!3m1!1s0x0:0x914678d9e47c3e7c?sa=X&hl=fr&ved=2ahUKEwjLj6KP5LD-AhVGVaQEHWpFArgQ_BJ6BAhwEAk', 33),
	('Standard', 'Tetouan Wilaya', 'https://www.google.com/maps/place/Carrefour+Supermarch%C3%A9+T%C3%A9touan+Wilaya/@35.5851789,-5.3414238,15z/data=!4m2!3m1!1s0x0:0x86fa898d0ab29b70?sa=X&hl=fr&ved=2ahUKEwjAoLWa97D-AhXvXaQEHZdrAu0Q_BJ6BAhgEAk', 34),
	('Standard', 'Ouarzazate', 'https://www.google.com/maps/place/Carrefour+Market+Ouarzazate/@30.9199959,-6.9194126,15z/data=!4m2!3m1!1s0x0:0x723e9c6cb5cbf3f8?sa=X&hl=fr&ved=2ahUKEwjMsbyC_bD-AhWJXqQEHV3mCi0Q_BJ6BAhpEAk', 35),
	('Standard', 'HASSAN', 'https://www.google.com/maps/place/Carrefour+Market+Hassan/@34.0211609,-6.8271008,15z/data=!4m6!3m5!1s0xda76b8fa0993089:0xbba378c90846fac!8m2!3d34.0211609!4d-6.8271008!16s%2Fg%2F1q66_p_qw?hl=fr', 36),
	('Standard', 'LABELVIE SAFI', 'https://www.google.com/maps/place/Carrefour+Market+Safi/@32.2930319,-9.2344437,15z/data=!4m2!3m1!1s0x0:0x491fe311d960d6c8?sa=X&hl=fr&ved=2ahUKEwjRyrnd_LD-AhU3TKQEHeMkC5kQ_BJ6BAhzEAk', 37),
	('Standard', 'SALA ELJADIDA', 'https://www.google.com/maps/place/Carrefour+Market+Sala+Al+Jadida/@33.9962148,-6.7419166,15z/data=!4m6!3m5!1s0xda7402386656cef:0x7f6ab39505bddfaa!8m2!3d33.9962148!4d-6.7419166!16s%2Fg%2F1hf2zf0p5?hl=fr', 38),
	('Standard', 'LABELVIE SOUISSI', 'https://www.google.com/maps/place/Carrefour+Market+Souissi/@33.9821156,-6.8289614,15z/data=!4m6!3m5!1s0xda76b5c3db6b827:0x458a0915e8fd555a!8m2!3d33.9821156!4d-6.8289614!16s%2Fg%2F11cn130rz7?hl=fr', 39),
	('Standard', 'SETTAT', 'https://www.google.com/maps/place/Carrefour+Market+Settat/@32.9988202,-7.6192998,15z/data=!4m6!3m5!1s0xda60566861f0a53:0x54205505fe6a51de!8m2!3d32.9988202!4d-7.6192998!16s%2Fg%2F1txc8cxj?hl=fr', 40),
	('Standard', 'BENI MELLAL', 'https://www.google.com/maps/place/Carrefour+Market/@32.3317237,-6.3528822,15z/data=!4m2!3m1!1s0x0:0x92aa8c368ed8f874?sa=X&hl=fr&ved=2ahUKEwis-Yu0-bD-AhW4T6QEHUnsCscQ_BJ6BAh1EAk', 41),
	('Standard', 'BERKANE', 'https://www.google.com/maps/place/Carrefour+Market+Berkane+(la+bel+vie)/@34.9311222,-2.3094539,15z/data=!4m2!3m1!1s0x0:0x6951cc05ae3cd2a3?sa=X&hl=fr&ved=2ahUKEwimm5yJ-bD-AhUtVqQEHTQCDU4Q_BJ6BAhnEAk', 42),
	('Standard', 'KHENIFRA', 'https://www.google.com/maps/place/Carrefour+Market+Kh%C3%A9nifra/@32.9440811,-5.6601433,15z/data=!4m6!3m5!1s0xda22a0eb94c6933:0x54d17a3d20e7075f!8m2!3d32.9440811!4d-5.6601433!16s%2Fg%2F1q6jzccq3?hl=fr', 43),
	('Standard', 'NADOR', 'https://www.google.com/maps/place/Carrefour+Market+Nador/@35.1593198,-2.9305452,15z/data=!4m2!3m1!1s0x0:0x86c06abf64cd23c7?sa=X&hl=fr&ved=2ahUKEwj8uNv7-LD-AhUdVqQEHSAcBb4Q_BJ6BAhbEAk', 44),
	('Standard', 'SIDI SLIMANE', 'https://www.google.com/maps/place/Carrefour+Market+Sidi+Slimane/@34.2598712,-5.9221083,15z/data=!4m2!3m1!1s0x0:0xe3c1f22be9d01700?sa=X&hl=fr&ved=2ahUKEwj1iYjp_LD-AhWeUaQEHQQZBrEQ_BJ6BAhqEAk', 45),
	('Standard', 'KAMAL PARC', 'https://www.google.com/maps/place/Carrefour+Market+Le+Parc/@33.7064269,-7.3952,15z/data=!4m6!3m5!1s0xda7b798f03509cd:0xeafc92516b1a51a8!8m2!3d33.7064269!4d-7.3952!16s%2Fg%2F11fmc2nwjw?hl=fr', 46),
	('Standard', 'FES MEGAMARKET', 'https://www.google.com/maps/place/Carrefour+Market+F%C3%A8s+Megamarket/@34.0015285,-5.0105888,15z/data=!4m2!3m1!1s0x0:0x4c55423887accb70?sa=X&hl=fr&ved=2ahUKEwjgmObh9rD-AhXaTKQEHSXsDYYQ_BJ6BAhtEAk', 47),
	('Standard', 'ALIA', 'https://www.google.com/maps/place/Carrefour+Market+ALIA/@33.685818,-7.3782977,15z/data=!4m2!3m1!1s0x0:0x7b1f10d184524fa7?sa=X&hl=fr&ved=2ahUKEwijt_7-9LD-AhU_UqQEHfyqCPYQ_BJ6BAh_EAk', 48),
	('Standard', 'MALABATA', 'https://www.google.com/maps/place/Carrefour+Express+Tanger+Malabata/@35.7631052,-5.8192722,14z/data=!4m10!1m2!2m1!1sCarrefour+Express+malabata!3m6!1s0xd0b81dad0b2dfe5:0x42ca266605de5cd1!8m2!3d35.7724646!4d-5.7702953!15sChpDYXJyZWZvdXIgRXhwcmVzcyBtYWxhYmF0YSIDiAEBWhwiGmNhcnJlZm91ciBleHByZXNzIG1hbGFiYXRhkgELc3VwZXJtYXJrZXSaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVTmxNV0pJYVVwQkVBReABAA!16s%2Fg%2F11sg_69tc4', 49),
	('Standard', 'BOUSKOURA', 'https://www.google.com/maps/place/Carrefour+Market+Bouskoura+Ville/@33.4618403,-7.643668,15z/data=!4m2!3m1!1s0x0:0x7b3604e4229dfff2?sa=X&ved=2ahUKEwijs7ypnLH-AhV9VaQEHS7eBMgQ_BJ6BAhdEAg', 50),
	('Standard', 'CASA BELLERIVE', 'https://www.google.com/maps/place/Carrefour+Market+Bellerive/@33.5967748,-7.5929716,15z/data=!4m2!3m1!1s0x0:0xe7a07f69f943c683?sa=X&hl=fr&ved=2ahUKEwj5_57DnLH-AhV3T6QEHa92CP0Q_BJ6BAhwEAk', 51),
	('Standard', 'VOLUBILIS', 'https://www.google.com/maps/place/Carrefour+Market+Volubilis/@35.7659646,-5.8088478,15z/data=!4m2!3m1!1s0x0:0xef855134c5fc31bc?sa=X&hl=fr&ved=2ahUKEwi73au09rD-AhVYQaQEHfJtAooQ_BJ6BAhlEAk', 52),
	('Standard', 'AGADIR HASSAN II', 'https://www.google.com/maps/place/Carrefour+Market+Hassan+2/@30.4140776,-9.5934908,15z/data=!4m2!3m1!1s0x0:0x1b3c5c393b2a865d?sa=X&hl=fr&ved=2ahUKEwjTlonVnLH-AhX9U6QEHe8XAT8Q_BJ6BAhhEAk', 53),
	('Standard', 'SHOP', 'https://www.google.com/maps/place/Carrefour+Market+Label+Shop/@33.5729684,-7.6199779,15z/data=!4m2!3m1!1s0x0:0x5721c6bca42b9ff3?sa=X&hl=fr&ved=2ahUKEwifqJLhnLH-AhVBUqQEHR8YA6kQ_BJ6BAh1EAk', 54),
	('Standard', 'KENITRA MIMOUSA', 'https://www.google.com/maps/place/Carrefour+Market+Kenitra+Mimosas/@34.2529773,-6.5946989,15z/data=!4m2!3m1!1s0x0:0x9ac1557696815bd?sa=X&hl=fr&ved=2ahUKEwi2gsTqnLH-AhU_RaQEHR2lAV8Q_BJ6BAhUEAk', 55),
	('Standard', 'SEMLALIA', 'https://www.google.com/maps/place/Carrefour+Market+Semlalia/@31.648802,-8.00962,15z/data=!4m2!3m1!1s0x0:0x73c404fe6af69d91?sa=X&hl=fr&ved=2ahUKEwi127v1nLH-AhVVT6QEHRf2DpsQ_BJ6BAhuEAk', 56),
	('Standard', 'RIAD', 'https://www.google.com/maps/place/Carrefour+Market+Riad/@33.9622851,-6.8771613,15z/data=!4m2!3m1!1s0x0:0x71e7345a028cc3cf?sa=X&hl=fr&ved=2ahUKEwjN4PSBnbH-AhWVVKQEHSueA-gQ_BJ6BAh5EAk', 57),
	('Standard', 'SHEMS', 'https://www.google.com/maps/place/Carrefour+Market+Shem\'s/@34.002317,-6.8520435,15z/data=!4m2!3m1!1s0x0:0x3a75aa0df14e0260?sa=X&hl=fr&ved=2ahUKEwjHn-mLnbH-AhWNUKQEHc9YAoIQ_BJ6BAhqEAk', 58),
	('Standard', 'GAUTHIER2', 'https://www.google.com/maps/place/Carrefour+Market+Gauthier+2/@33.5897477,-7.6297272,15z/data=!4m6!3m5!1s0xda7d33a674e9537:0x35a207c83468cd02!8m2!3d33.5897477!4d-7.6297272!16s%2Fg%2F11lkjshg_r?hl=fr', 59),
	('Standard', 'OQBA', 'https://www.google.com/maps/place/Carrefour+Market+Oqba/@34.0056742,-6.8474444,15z/data=!4m2!3m1!1s0x0:0x3c9fb1444f85aff8?sa=X&hl=fr&ved=2ahUKEwiFgM7HnrH-AhXgXaQEHQWaCSkQ_BJ6BAhkEAk', 60),
	('Standard', 'KENITRA MAAMOURA', 'https://www.google.com/maps/place/Carrefour+Market+Kenitra+Maamoura/@34.2569238,-6.5824343,15z/data=!4m6!3m5!1s0xda7595d77065377:0xe54c9d67f2d13e5f!8m2!3d34.2569238!4d-6.5824343!16s%2Fg%2F11h3mw487c?hl=fr', 61),
	('Standard', 'OUALFA', 'https://www.google.com/maps/place/Carrefour+Market+Oulfa/@33.5622086,-7.6689838,15z/data=!4m2!3m1!1s0x0:0xc53165980b98f1f4?sa=X&hl=fr&ved=2ahUKEwjLyPPgnrH-AhULV6QEHTpwD30Q_BJ6BAhqEAk', 62),
	('Standard', 'FES ATLAS', 'https://www.google.com/maps/place/Carrefour+Market+F%C3%A8s+Atlas/@34.0304035,-4.993325,15z/data=!4m2!3m1!1s0x0:0xb36fea69042ad582?sa=X&hl=fr&ved=2ahUKEwietbXpnrH-AhUeZaQEHUozDToQ_BJ6BAhbEAk', 63),
	('Standard', 'BETTANA', 'https://www.google.com/maps/place/CARREFOUR+BETTANA+market/@34.0315183,-6.8025218,15z/data=!4m2!3m1!1s0x0:0x5619a7c6793b9d76?sa=X&hl=fr&ved=2ahUKEwjzjb3ynrH-AhVbU6QEHcstDjwQ_BJ6BAhWEAk', 64),
	('Standard', 'MADAGASCAR', 'https://www.google.com/maps/place/Carrefour+Market+Madagascar/@34.0142872,-6.8508077,15z/data=!4m2!3m1!1s0x0:0x485715e4bb4409cb?sa=X&hl=fr&ved=2ahUKEwiWsbqJn7H-AhVQdaQEHZqTAugQ_BJ6BAhmEAk', 65),
	('Relance Express', 'Bouskoura Victoria', 'https://www.google.com/maps/place/Carrefour+Express+Victoria/@33.4128416,-12.1583178,7z/data=!4m10!1m2!2m1!1sCarrefour+Express+victoria!3m6!1s0xda62f1d6a44f2ff:0xd5e5336afd7e850d!8m2!3d33.4128417!4d-7.6758959!15sChpDYXJyZWZvdXIgRXhwcmVzcyB2aWN0b3JpYSIDiAEBWhwiGmNhcnJlZm91ciBleHByZXNzIHZpY3RvcmlhkgELc3VwZXJtYXJrZXTgAQA!16s%2Fg%2F11jyzqj48f', 66),
	('Relance Express', 'Casablanca 2 MARS', 'https://www.google.com/maps/place/Carrefour+Express+2+Mars/@33.5736122,-7.6193695,17z/data=!4m10!1m2!2m1!1sCarrefour+Express+2+mars!3m6!1s0xda7d34e0abcd363:0x3248bde196d6aaff!8m2!3d33.5742528!4d-7.614397!15sChhDYXJyZWZvdXIgRXhwcmVzcyAyIG1hcnNaGiIYY2FycmVmb3VyIGV4cHJlc3MgMiBtYXJzkgELc3VwZXJtYXJrZXTgAQA!16s%2Fg%2F11tjx9f8pv', 67),
	('Relance Express', 'MAJORELLE', 'https://www.google.com/maps/place/Carrefour+Market+Majorelle/@31.6406729,-8.0014331,17z/data=!4m12!1m6!3m5!1s0xdafefa8f099f763:0xe3afe2cee3d6c570!2sCarrefour+Market+Majorelle!8m2!3d31.6406729!4d-7.9992444!3m4!1s0xdafefa8f099f763:0xe3afe2cee3d6c570!8m2!3d31.6406729!4d-7.9992444', 68),
	('Relance Express', 'BIRANZARAN', 'https://www.google.com/maps/place/Carrefour+Express+Bir+Anzarane/@33.5840676,-7.6445361,17z/data=!3m1!4b1!4m5!3m4!1s0xda7d31c92c08cc9:0xf2f1033789975f16!8m2!3d33.5840676!4d-7.6423474', 69),
	('Relance Express', 'Sup GAUTHIER', 'https://www.google.com/maps/place/Carrefour+Market+Gauthier+Expresse/@33.589894,-7.631541,15z/data=!4m2!3m1!1s0x0:0xc7655f2157d14871?sa=X&hl=fr&ved=2ahUKEwjClOK_n7H-AhWhUaQEHQQIBmcQ_BJ6BAhpEAk', 70),
	('Relance Express', 'Tanger Benimakada', 'https://www.google.com/maps/place/Carrefour+Express+Beni+Makada+Tanger/@35.7435625,-5.8065625,15z/data=!4m6!3m5!1s0xd0b812a41825615:0x2e7120e1287e850f!8m2!3d35.7435625!4d-5.8065625!16s%2Fg%2F11tmrxzvyp?hl=fr', 71),
	('Relance Express', 'Hassan Sghir', 'https://www.google.com/maps/place/Carrefour+Express+Casa+Av.+Hassan+Seghir/@33.5945625,-7.6104375,15z/data=!4m6!3m5!1s0xda7cd24a7a063b5:0x17dc1228acd47c07!8m2!3d33.5945625!4d-7.6104375!16s%2Fg%2F11sc99s81z?hl=fr', 72),
	('Relance Express', 'Casa Ain Sebaa Wahda', 'https://www.google.com/maps/place/Carrefour+Express+Casa+Route+Al+Ouahda/@33.6088125,-7.5450625,15z/data=!4m2!3m1!1s0x0:0xdb7d6704b6259e98?sa=X&hl=fr&ved=2ahUKEwjH5rT7oLP-AhVbT6QEHUHEDUQQ_BJ6BAhuEAk', 73),
	('Relance Express', 'Fès Ain Chkaf 2', 'https://www.google.com/maps/place/Carrefour+Market+F%C3%A8s+Megamarket/@34.0015285,-5.0105888,15z/data=!4m6!3m5!1s0xd9f8ba92bbd4411:0x4c55423887accb70!8m2!3d34.0015285!4d-5.0105888!16s%2Fg%2F11c53c_p8x?hl=fr', 74),
	('Express', 'GIRONDE BENZERT', 'https://www.google.com/maps/place/Carrefour+Express+La+Gironde/@33.5849242,-7.5999076,15z/data=!4m2!3m1!1s0x0:0xaf9cf38095d01428?sa=X&hl=fr&ved=2ahUKEwjN6MSkobP-AhUzU6QEHac5BicQ_BJ6BAhmEAk', 75),
	('Express', 'MERS SULTAN', 'https://www.google.com/maps/place/Carrefour+Express+Mers+Sultan/@33.5845081,-7.6159238,15z/data=!4m2!3m1!1s0x0:0x1302652023d2996f?sa=X&hl=fr&ved=2ahUKEwiorLi4obP-AhWoVaQEHbumDbcQ_BJ6BAh2EAk', 76),
	('Express', 'CASA RACHIDI', 'https://www.google.com/maps/place/Carrefour+Express+Rachidi/@33.5934017,-7.6271866,15z/data=!4m6!3m5!1s0xda7d34e5889b6c9:0x81a15712b1f3ceb!8m2!3d33.5934017!4d-7.6271866!16s%2Fg%2F11rk2db558?hl=fr', 77),
	('Express', 'TANGER MY YOUSSEF', 'https://www.google.com/maps/place/Carrefour+Express+Moulay+Youssef+Tanger/@35.7708602,-5.8125269,15z/data=!4m2!3m1!1s0x0:0x38d8bf185b49c642?sa=X&hl=fr&ved=2ahUKEwjxpevxpLP-AhXwVKQEHQKqAEIQ_BJ6BAhuEAk', 78),
	('Express', 'SIDI KACEM', 'https://www.google.com/maps/place/Carrefour+Express+Sidi+Kacem/@34.220824,-5.7099865,15z/data=!4m2!3m1!1s0x0:0xc04a58180040b052?sa=X&hl=fr&ved=2ahUKEwi2vrv7pLP-AhU6UKQEHU-DDjgQ_BJ6BAhjEAk', 79),
	('Express', 'MARTIL', 'https://www.google.com/maps/place/Carrefour+Express+Martil/@35.6156041,-5.2732329,15z/data=!4m6!3m5!1s0xd0b454c020bb5a9:0xc50aa378e95df770!8m2!3d35.6156041!4d-5.2732329!16s%2Fg%2F11qbq1n404?hl=fr', 80),
	('Express', 'ROMANDIE', 'https://www.google.com/maps/place/Carrefour+Express+Romandie/@33.5854996,-7.6468005,15z/data=!4m2!3m1!1s0x0:0x5e3b44a5a8d33280?sa=X&hl=fr&ved=2ahUKEwiK5PGSpbP-AhUpUqQEHcxwDaIQ_BJ6BQiDARAJ', 81),
	('Express', 'La GIRONDE', 'https://www.google.com/maps/place/Carrefour+Express+La+Gironde+Addalia/@33.5786932,-7.5960405,15z/data=!4m2!3m1!1s0x0:0xf328054f10dd8a6e?sa=X&hl=fr&ved=2ahUKEwjO9aCkpbP-AhU_UqQEHRgLBEkQ_BJ6BAhpEAk', 82),
	('Express', 'OASIS', 'https://www.google.com/maps/place/Carrefour+Express+Oasis/@33.5601429,-7.6305073,15z/data=!4m6!3m5!1s0xda62d65f64ee133:0xf72ba78252d2669e!8m2!3d33.5601429!4d-7.6305073!16s%2Fg%2F11fn54js72?hl=fr', 83),
	('Express', 'CASA_MOHAMED_V', 'https://www.google.com/maps/place/Carrefour+Express+Mohammed+V/@33.5916226,-7.5946804,15z/data=!4m2!3m1!1s0x0:0xb813ae6a154399bb?sa=X&hl=fr&ved=2ahUKEwidnu23pbP-AhUeTqQEHffDDHkQ_BJ6BAhkEAk', 84),
	('Express', 'BOURGOGNE EXPRESS', 'https://www.google.com/maps/place/Carrefour+Express+Bourgogne/@33.5983898,-7.6398355,15z/data=!4m2!3m1!1s0x0:0xc70b8556b6ea8bf5?sa=X&hl=fr&ved=2ahUKEwj57f_FpbP-AhU9UqQEHel4CX4Q_BJ6BAhvEAk', 85),
	('Express', 'MEDINA', 'https://www.google.com/maps/place/Carrefour+Express+Medina/@34.0210137,-6.8423574,15z/data=!4m2!3m1!1s0x0:0xad41579d544d7d39?sa=X&hl=fr&ved=2ahUKEwjMitbWpbP-AhW8VKQEHSuHACgQ_BJ6BAhtEAk', 86),
	('Express', 'MOHAMMADIA_SEBTA', 'https://www.google.com/maps/place/Carrefour+Express+Mohammedia+Sebta/@33.694733,-7.380659,15z/data=!4m2!3m1!1s0x0:0x7a87c1e9dc360179?sa=X&hl=fr&ved=2ahUKEwjrjMXdpbP-AhUGV6QEHQGFAFQQ_BJ6BAhSEAk', 87),
	('Relance', 'AGADIR LE BARREAU', 'https://www.google.com/maps/place/Carrefour+Market+Le+barreau+Agadir/@30.4026525,-9.5788633,15z/data=!4m2!3m1!1s0x0:0x8d20983a6ab03a39?sa=X&hl=fr&ved=2ahUKEwi1tvLopbP-AhWKUaQEHRnFD-sQ_BJ6BAhpEAk', 88),
	('Relance', 'BEAUSEJOUR', 'https://www.google.com/maps/place/Carrefour+Market+Beausejour/@33.5669485,-7.6513087,15z/data=!4m2!3m1!1s0x0:0x50ec4481ac1edd03?sa=X&hl=fr&ved=2ahUKEwiGg6D1pbP-AhXORKQEHdHnDUUQ_BJ6BAhuEAk', 89),
	('Relance', 'LA VILLETTE', 'https://www.google.com/maps/place/Carrefour+Market+La+Villette/@33.5891083,-7.5779056,15z/data=!4m2!3m1!1s0x0:0x70a83b96e06061cf?sa=X&hl=fr&ved=2ahUKEwic6pT_pbP-AhXYTaQEHdGNCvkQ_BJ6BAh3EAk', 90),
	('Relance', 'AGADIR CADI AYAD', 'https://www.google.com/maps/place/Carrefour+Market+Cadi+Ayad/@30.4192029,-9.5780115,15z/data=!4m2!3m1!1s0x0:0x1a75a42b2808dc53?sa=X&hl=fr&ved=2ahUKEwjpu5vcprP-AhU2UKQEHSUkDLQQ_BJ6BAhkEAk', 91),
	('Relance', 'MOHAMMEDIA HASSAN 2', 'https://www.google.com/maps/place/Carrefour+Market+Hassan+2+Mohammedia/@33.7143712,-7.3445716,15z/data=!4m6!3m5!1s0xda7b1b99595f6af:0xbab0fcf45c05e992!8m2!3d33.7143712!4d-7.3445716!16s%2Fg%2F11pkhq68my?hl=fr', 92),
	('Relance', 'KENITRA MOULAY ABDELAZIZ', 'https://www.google.com/maps/place/Carrefour+Market+Kenitra+Av+Moulay+Abdelaziz/@34.257801,-6.5920176,15z/data=!4m2!3m1!1s0x0:0x50aa0ac1045488aa?sa=X&hl=fr&ved=2ahUKEwjag-fyprP-AhX6U6QEHXwrACMQ_BJ6BAhQEAk', 93),
	('Relance', 'SIDI SAID', 'https://www.google.com/maps/place/Carrefour+Market+Sidi+Said+Mekn%C3%A8s/@33.8929179,-5.5753772,15z/data=!4m2!3m1!1s0x0:0xa76f5aef1c3e3784?sa=X&hl=fr&ved=2ahUKEwjFh_H6prP-AhVWXaQEHdsnDawQ_BJ6BAh1EAk', 94),
	('Relance', 'AGDAL DESCARTES', 'https://www.google.com/maps/place/Carrefour+Market+Descartes/@33.9872775,-6.8494757,15z/data=!4m2!3m1!1s0x0:0x88147abcc68bba8f?sa=X&hl=fr&ved=2ahUKEwjli6CEp7P-AhWjVaQEHSvJA0sQ_BJ6BQiAARAJ', 95),
	('Relance', 'AGADIR EL HOUDA', 'https://www.google.com/maps/place/Carrefour+Market+Agadir+El+Houda/@30.4002671,-9.5340505,15z/data=!4m2!3m1!1s0x0:0x64e67179ff7f3fc7?sa=X&hl=fr&ved=2ahUKEwiT7oWNp7P-AhUtUaQEHd4qBXYQ_BJ6BAhREAk', 96),
	('Relance', 'PALMERAIE', 'https://www.google.com/maps/place/Carrefour+Market+Palmeraie/@31.6817224,-7.9838703,15z/data=!4m2!3m1!1s0x0:0xd5a12b9aff50bc2c?sa=X&hl=fr&ved=2ahUKEwiv4aKYp7P-AhViVKQEHXc6CcgQ_BJ6BAhtEAk', 97),
	('Relance', 'TANGER FAR', 'https://www.google.com/maps/place/Carrefour+Market+Avenue+des+FAR+Tanger/@35.7536244,-5.833374,15z/data=!4m2!3m1!1s0x0:0xb458398bed5371c5?sa=X&hl=fr&ved=2ahUKEwjqgaKip7P-AhUOTaQEHU0YDqEQ_BJ6BAhrEAk', 98),
	('Relance', 'DEROUA', 'https://www.google.com/maps/place/Carrefour+Market+Deroua+%D9%83%D8%A7%D8%B1%D9%81%D9%88%D8%B1+%D9%85%D8%A7%D8%B1%D9%83%D8%AA+%D8%A7%D9%84%D8%AF%D8%B1%D9%88%D8%A9%E2%80%AD/@33.3942712,-7.53406,15z/data=!4m6!3m5!1s0xda631e03f8c403d:0x9c5073a787b16755!8m2!3d33.3942712!4d-7.53406!16s%2Fg%2F11t38hnl1g?hl=fr', 99),
	('Relance', 'RABAT BENBARKA', 'https://www.google.com/maps/place/Carrefour+Market+Mehdi+Ben+Barka/@33.9496282,-6.8680446,15z/data=!4m2!3m1!1s0x0:0x702831d280adf073?sa=X&hl=fr&ved=2ahUKEwjblPjAp7P-AhWxTqQEHfo4Cj0Q_BJ6BAhMEAk', 100),
	('Relance', 'FES CHAMPS DE COURSE', 'https://www.google.com/maps/place/Carrefour+Market+Champs+de+Course+F%C3%A8s/@34.0332011,-5.0166254,15z/data=!4m2!3m1!1s0x0:0xfad87b9fcfc9021c?sa=X&hl=fr&ved=2ahUKEwi39afNp7P-AhVgU6QEHdMMD-sQ_BJ6BAhnEAk', 101),
	('Relance', 'AIN SEBAA CHEFCHAOUNI', 'https://www.google.com/maps/place/Carrefour+Market+Ain+Sebaa/@33.607585,-7.5368632,15z/data=!4m2!3m1!1s0x0:0xb8f148f5f58fe5ab?sa=X&hl=fr&ved=2ahUKEwjipdjWp7P-AhVIRqQEHXwCDEcQ_BJ6BAh2EAk', 102),
	('Relance', 'HAD SWALEM', 'https://www.google.com/maps/place/Carrefour+Market+Had+Soualem/@33.4227728,-7.8525149,15z/data=!4m2!3m1!1s0x0:0x24d138d0dcbf3693?sa=X&hl=fr&ved=2ahUKEwjh_93ep7P-AhU_RaQEHTv6CW8Q_BJ6BAh4EAk', 103),
	('Relance', 'OCEAN', 'https://www.google.com/maps/place/Carrefour+Market+Oc%C3%A9an/@34.0231189,-6.8501328,15z/data=!4m6!3m5!1s0xda76de534227485:0x9056036cda4ada92!8m2!3d34.0231189!4d-6.8501328!16s%2Fg%2F11rcn6sf3f?hl=fr', 104),
	('Relance', 'CASA VILLE VERTE', 'https://www.google.com/maps/place/Carrefour+Market+Ville+Verte+Casablanca/@33.4978633,-7.6076034,15z/data=!4m2!3m1!1s0x0:0x684c8c5a78f16b20?sa=X&hl=fr&ved=2ahUKEwiTprWRqLP-AhUnUKQEHe3SChMQ_BJ6BAhkEAk', 105),
	('Relance', 'AZROU', 'https://www.google.com/maps/place/Carrefour+Market/@33.4465934,-5.2303772,15z/data=!4m2!3m1!1s0x0:0x435df81c8a4ef70a?sa=X&hl=fr&ved=2ahUKEwj_ormeqLP-AhXlUqQEHdwpAp8Q_BJ6BAhcEAk', 106),
	('Relance', 'CASA PALMIER', 'https://www.google.com/maps/place/Carrefour+Market+Palmier/@33.5823291,-7.6285425,15z/data=!4m2!3m1!1s0x0:0x729d11dc1937824f?sa=X&hl=fr&ved=2ahUKEwjKtMO-qLP-AhXuUaQEHRLfBBQQ_BJ6BQiDARAJ', 107),
	('Relance mag en difficulté', 'MALRAUX', 'https://www.google.com/maps/place/CarrefourMarketMalraux/@34.0156676,-6.8455391,15z/data=!4m2!3m1!1s0x0:0x889d4ae8c1c67d09?sa=X&hl=fr&ved=2ahUKEwiRytvPqLP-AhUBUKQEHRZ0AsIQ_BJ6BAhdEAk', 108),
	('Relance mag en difficulté', 'TEMARA', 'https://www.google.com/maps/place/Carrefour+Market/@33.9074701,-6.9232582,17z/data=!3m1!4b1!4m5!3m4!1s0xda70d3181b518a7:0x85da12f7a980ed4f!8m2!3d33.9074703!4d-6.9210585', 109),
	('Relance mag en difficulté', 'Ain Sebaa', 'https://www.google.com/maps/place/Carrefour+Market+Ain+Sebaa/@33.6020321,-7.5289359,17z/data=!3m1!4b1!4m6!3m5!1s0xda7cc82da4e7ead:0x482cc9674702551d!8m2!3d33.6020321!4d-7.5267472!16s%2Fg%2F1tdsl45d', 110),
	('Relance mag en difficulté', 'RESISTANCE', 'https://www.google.com/maps/place/Carrefour+Market+la+R%C3%A9sistance/@33.5843562,-7.6105002,17z/data=!3m1!4b1!4m6!3m5!1s0xda7cd5e2e6f583b:0x3cd02cbf131ce7c4!8m2!3d33.5843562!4d-7.6083115!16s%2Fg%2F11b6hyfqnd', 111),
	('Relance mag en difficulté', 'SUP KENITRA', 'https://www.google.com/maps/place/Carrefour+Market+K%C3%A9nitra/@34.2618946,-6.5873882,15z/data=!4m6!3m5!1s0xda759e64e5ee91b:0x538ed0607c81ee19!8m2!3d34.2618946!4d-6.5873882!16s%2Fg%2F11bbwnl6r_?hl=fr', 112),
	('Relance mag en difficulté', 'Abdelkrim khattabi', 'https://www.google.com/maps/place/Carrefour+Market+Abdelkrim+Khattabi+Marrakech/@31.6331185,-8.0164876,15z/data=!4m6!3m5!1s0xdafeffc5f850edd:0x634c56f8762e0fce!8m2!3d31.6331185!4d-8.0164876!16s%2Fg%2F11s863lkk0?hl=fr', 113),
	('Relance mag en difficulté', 'Jadida Otmane bnou Afane', 'https://www.google.com/maps/place/Carrefour+Market+El+Jadida+2+Najd/@33.2277021,-8.5069724,15z/data=!4m2!3m1!1s0x0:0x6c5c9d8e188d76ea?sa=X&hl=fr&ved=2ahUKEwjU9cOgq7P-AhXVUaQEHfj5AXMQ_BJ6BAhgEAk', 114),
	('Relance mag en difficulté', 'Marrakech Massira 3', 'https://www.google.com/maps/place/Carrefour+Market+Marrakech+Massira+3/@31.632746,-8.0717324,15z/data=!4m6!3m5!1s0xdafe97cc1fe3e8f:0xf7aabd4b3614a9d0!8m2!3d31.632746!4d-8.0717324!16s%2Fg%2F11tmhsbhc9?hl=fr', 115),
	('Hypermarché', 'dar Bouazza', 'https://www.google.com/maps/place/Carrefour+Dar+Bouazza/@33.5171661,-7.7995467,15z/data=!4m2!3m1!1s0x0:0xd74488192e595e25?sa=X&hl=fr&ved=2ahUKEwjtnYWEh7H-AhUuUKQEHdxCBPsQ_BJ6BAhuEAk', 116),
	('Hypermarché', 'Agadir', 'https://www.google.com/maps/place/Carrefour+Agadir/@30.3892647,-9.5101288,15z/data=!4m2!3m1!1s0x0:0x2ffec8c3c362cd14?sa=X&hl=fr&ved=2ahUKEwiSi82Kh7H-AhX7VKQEHVJyALgQ_BJ6BAhuEAk', 117),
	('Hypermarché', 'Al Mazar', 'https://www.google.com/maps/place/Carrefour+Al+Mazar/@31.5925162,-7.9871004,15z/data=!4m2!3m1!1s0x0:0x4fad5684ee7a032f?sa=X&hl=fr&ved=2ahUKEwio_oeXh7H-AhXyV6QEHSOWBWUQ_BJ6BAhpEAk', 118),
	('Hypermarché', 'Berrechid', 'https://www.google.com/maps/place/Carrefour+Berrechid/@33.2588473,-7.5807662,15z/data=!4m6!3m5!1s0xda63b9d1e7427f3:0x97788d2846a77dc4!8m2!3d33.2588473!4d-7.5807662!16s%2Fg%2F11nms3wnx1?hl=fr', 119),
	('Hypermarché', 'Borj Fes', 'https://www.google.com/maps/place/Carrefour+Borj+Fes/@34.0462882,-4.994645,15z/data=!4m2!3m1!1s0x0:0xccfcd34c1735ff11?sa=X&hl=fr&ved=2ahUKEwjn09avh7H-AhUeZaQEHe1LCmYQ_BJ6BAhoEAk', 120),
	('Hypermarché', 'Oujda', 'https://www.google.com/maps/place/Carrefour+Oujda/@34.6594584,-1.9062915,15z/data=!4m2!3m1!1s0x0:0x25111e49f41bae35?sa=X&hl=fr&ved=2ahUKEwik4Ja5h7H-AhW7VaQEHY6eACMQ_BJ6BAhhEAk', 121),
	('Hypermarché', 'Salé', 'https://www.google.com/maps/place/Carrefour+Sale/@34.0587616,-6.8021769,15z/data=!4m2!3m1!1s0x0:0xea3c7736bfdf2fd5?sa=X&hl=fr&ved=2ahUKEwjnqfzCh7H-AhVTQaQEHYLtASIQ_BJ6BAhtEAk', 122),
	('Hypermarché', 'Sidi Maarouf', 'https://www.google.com/maps/place/Carrefour+Sidi+Maarouf/@33.5359762,-7.6420663,15z/data=!4m2!3m1!1s0x0:0xc071b748bc40ddbb?sa=X&hl=fr&ved=2ahUKEwjg2O3Lh7H-AhUBVaQEHbc_CAUQ_BJ6BAhmEAk', 123),
	('Hypermarché', 'Socco Alto', 'https://www.google.com/maps/place/Carrefour+Socco+Alto/@35.7814537,-5.8409884,15z/data=!4m2!3m1!1s0x0:0x4ea35290a1d4d5b7?sa=X&hl=fr&ved=2ahUKEwiZo-rXh7H-AhUpUqQEHUMcC3YQ_BJ6BAhiEAk', 124),
	('Hypermarché', 'Targa', 'https://www.google.com/maps/place/Carrefour+Targa/@31.650724,-8.0591455,15z/data=!4m2!3m1!1s0x0:0x5e0128ad1ed23021?sa=X&hl=fr&ved=2ahUKEwjg6b3ih7H-AhUBUqQEHcK1DDsQ_BJ6BAhoEAk', 125),
	('Hypermarché', 'Temara', 'https://www.google.com/maps/place/Carrefour+Temara/@33.9083344,-6.9387936,15z/data=!4m2!3m1!1s0x0:0x9eaaf9f43c7bc551?sa=X&hl=fr&ved=2ahUKEwja0absh7H-AhU_UaQEHYkHDJUQ_BJ6BAhaEAk', 126),
	('Hypermarché', 'Tetouan', 'https://www.google.com/maps/place/Carrefour+Tetouan/@35.5783599,-5.3339147,15z/data=!4m6!3m5!1s0xd0b4362b985ae8b:0xec407352508f48aa!8m2!3d35.5783599!4d-5.3339147!16s%2Fg%2F11f615dhcw?hl=fr', 127);

-- Dumping structure for table chat-bot-carrefour.responses
DROP TABLE IF EXISTS `responses`;
CREATE TABLE IF NOT EXISTS `responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` varchar(100) DEFAULT NULL,
  `to` varchar(50) DEFAULT NULL,
  `from` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `message_type` varchar(50) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.responses: ~11 rows (approximately)
INSERT INTO `responses` (`id`, `message_id`, `to`, `from`, `status`, `message_type`, `body`) VALUES
	(1, 'e05580a2-7723-49b1-83c5-ee30cd98bb3d', '14157386102', '212621586010', 'read', 'text', NULL),
	(2, '1c13725e-b291-4b44-a55b-06e89d480146', '14157386102', '212621586010', NULL, 'custom', NULL),
	(3, '4141f2ae-57d2-40bf-ada4-2391d6557056', '14157386102', '212621586010', NULL, 'custom', NULL),
	(4, 'ac6b0c89-2afd-4e57-a141-0fe959ad9497', '14157386102', '212621586010', NULL, 'text', NULL),
	(5, '3c9f1128-ef01-4f56-9142-a37444e99068', '212522061150', '212621586010', NULL, 'custom', NULL),
	(6, '55cbe5f4-0ca4-4aa9-999f-84f0e73c0c92', '212522061150', '212621586010', NULL, 'custom', NULL),
	(7, '3d37d0e7-c583-4a75-8841-4a351963d05a', '212522061150', '212621586010', NULL, 'custom', NULL),
	(8, '90826786-1d55-48e2-89be-577e801d31d2', '212522061150', '212621586010', NULL, 'custom', NULL),
	(9, 'efaa9f44-5c38-4f92-bd50-6d0351fb70aa', '212522061150', '212621586010', NULL, 'custom', NULL),
	(10, '228a39bd-d33e-4d99-b483-39ccf9646f5f', '212522061150', '212621586010', NULL, 'custom', NULL),
	(11, 'd489f9cb-2742-4db9-8f6f-70c45fc24c40', '212522061150', '212621586010', NULL, 'custom', NULL),
	(12, '7f7ee3c4-3b04-4fc3-ba32-47744c68d77e', '212522061150', '212621586010', NULL, 'custom', NULL);

-- Dumping structure for table chat-bot-carrefour.stores
DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_fr` varchar(50) NOT NULL DEFAULT '0',
  `name_ar` varchar(50) DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `street_address` longtext DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `groupe_id` bigint(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_stores_categories` (`category_id`),
  KEY `FK_stores_catalogs` (`catalog_id`),
  CONSTRAINT `FK_stores_catalogs` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_stores_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.stores: ~127 rows (approximately)
INSERT INTO `stores` (`id`, `name_fr`, `name_ar`, `latitude`, `longitude`, `street_address`, `city_id`, `groupe_id`, `category_id`, `catalog_id`) VALUES
	(128, 'Carrefour Market Gourmet Rabat Zaërs', NULL, 33.974401, -6.829218, 'Route des Zaers, 3,5 km, rez de chaussée, local n° 16, Rabat, Morocco', 1, 1, 2, 7),
	(129, 'Carrefour Market - Moulay Ismail', NULL, 33.902580, -5.546712, 'i29 Bd Amir Moulay Abdallah, Meknès, Morocco', 2, 2, 2, NULL),
	(130, 'Carrefour Market Gourmet Carré Eden', NULL, 31.635046, -8.011150, 'Carrefour Market Carré Eden, Centre commerciale Carré Eden, Av. Mohammed V, Marrakech 40000, Morocco', 3, 1, 2, NULL),
	(131, 'Carrefour Market Anfa', NULL, 33.577225, -7.674152, 'H8GG+V8F, Bd Abdelhadi Boutaleb, Casablanca 20250, Morocco', 4, 2, 2, 9),
	(132, 'Carrefour Gourmet', NULL, 33.590783, -7.646146, 'H9R3+8G9, Av. Ahmed Charci, Casablanca 20250, Morocco', 4, 1, 1, NULL),
	(133, 'Carrefour Market la Fontaine', NULL, 31.628325, -8.002604, 'Carrefour Market la Fontaine, Résidence la fontaine, N°1 Bd Al Yarmouk, Marrakech 40000, Morocco', 3, 2, 2, NULL),
	(134, 'Carrefour Market Menara Mall', NULL, 31.618653, -8.009068, 'JX9R+F9H, Marrakesh 40000, Morocco', 5, 2, 2, 9),
	(135, 'Carrefour Market Fès Immouzer', NULL, 34.021947, -4.997487, '22C2+WW4, Fes 30050, Morocco', 6, 2, 2, NULL),
	(136, 'Carrefour Market Sidi Said Meknès', NULL, 33.892918, -5.575377, 'VCVF+5PX, Meknes, Morocco', 2, 2, 2, NULL),
	(137, 'Carrefour Market Iberia', NULL, 35.782651, -5.819760, 'Q5MJ+G5P Collège Maa Al Aynine, Tanger, Morocco', 8, 2, 2, NULL),
	(138, 'Carrefour Market Ibn Batouta', NULL, 35.777332, -5.802087, '24 Rue Offenbach، Tanger, Morocco', 8, 2, 2, NULL),
	(139, 'Carrefour Market Anfa Place', NULL, 33.598475, -7.665058, 'AnfaPLace, H8XP+C2W, Bd de la Corniche, Casablanca, Morocco', 4, 2, 2, NULL),
	(140, 'Carrefour Market Le barreau Agadir', NULL, 30.402653, -9.578863, 'CC3C+3H, Agadir 80000, Morocco', 9, 2, 2, NULL),
	(141, 'Carrefour Market El Jadida 2 Najd', NULL, 33.227702, -8.506972, '6FHV+36J, Av. Othmane Ibn Affane, El Jadida, Morocco', 10, 2, 2, NULL),
	(142, 'Carrefour Market Dar Bouazza', NULL, 33.513989, -7.818234, 'G57J+HMX, Tamaris, Morocco', 11, 2, 2, NULL),
	(143, 'Carrefour Market Essaouira', NULL, 31.495889, -9.752354, 'F6WX+83H, Essaouira, Morocco', 12, 2, 2, NULL),
	(144, 'Carrefour Market Wifak', NULL, 33.929593, -6.928873, 'W3HC+VF8, Temara, Morocco', 13, 2, 2, NULL),
	(145, 'Carrefour Market Maari', NULL, 33.580151, -7.640697, '63 Rue Al Fourate، Dar-el-Beida 20330, Morocco', 14, 2, 2, NULL),
	(146, 'Carrefour Market Yacoub El Mansour', NULL, 33.573866, -7.644543, '37 Rue Ibnou Al Kattan Maarif Extension, Casablanca, Morocco', 4, 2, 2, 9),
	(147, 'Carrefour Market Taddart', NULL, 33.554560, -7.626517, 'Résidence Arriad, Lotissement Yasmine 2, Piste Taddarte, Casablanca, Morocco', 4, 2, 2, NULL),
	(148, 'Carrefour Market Panoramique', NULL, 33.548156, -7.628718, '558 Bd Panoramique, Casablanca, Morocco', 4, 2, 2, NULL),
	(149, 'Carrefour Market Hassan 1er', NULL, 30.410995, -9.561515, '3, Agadir 80060, Morocco', 9, 3, 2, NULL),
	(150, 'Carrefour Market Lissassfa', NULL, 33.537958, -7.680469, 'G8Q9+5MV, Rue H, Casablanca 20260, Morocco', 4, 3, 2, NULL),
	(151, 'Carrefour Market Abdelmoumen', NULL, 33.569126, -7.626219, 'Angle Boulvard Abldelmoumen et, Bd Anoual, Casablanca 20250, Morocco', 4, 3, 2, NULL),
	(152, 'Carrefour Market Kénitra 1', NULL, 34.259699, -6.581979, '55 Rue Moulay Abdellah, Kénitra 14000, Morocco', 15, 3, 2, NULL),
	(153, 'Carrefour Market Val Fleuri', NULL, 33.574130, -7.636124, '7 Rue Henri Murger, Casablanca 20390, Morocco', 4, 3, 2, NULL),
	(154, 'Carrefour Market Mansouria - Mohammedia', NULL, 33.730498, -7.329847, 'PMJC+64M, Mohammedia, Morocco', 16, 3, 2, NULL),
	(155, 'Carrefour Market Al Manal', NULL, 33.975968, -6.890113, 'Rue Alaklak, Lot Al Manzeh CYM, Label\'Vie, Rabat, Morocco', 1, 3, 2, 7),
	(156, 'Carrefour Market - Plaisance', NULL, 33.900189, -5.504493, 'VFXW+X48, Ex Palais Assourour, Meknès, Morocco', 2, 3, 2, NULL),
	(157, 'Carrefour Market Khemisset', NULL, 33.826459, -6.091153, 'RWG5+MG5, Av. Mohamed V, Khémisset, Morocco', 17, 3, 2, NULL),
	(158, 'Carrefour Market Kasba', NULL, 33.698091, -7.390758, 'MJX5+6PM, Mohammedia, Morocco', 16, 3, 2, NULL),
	(159, 'Carrefour Supermarché Tétouan Wilaya', NULL, 35.585179, -5.341424, '4 Av. Le Caire, Tétouan 93000, Morocco', 18, 3, 1, NULL),
	(160, 'Carrefour Express Bourgogne', NULL, 33.598390, -7.642024, 'H9X5+94G, Bd de Bourgogne, Casablanca 20250, Morocco', 4, 3, 4, NULL),
	(161, 'Carrefour Market Ouarzazate', NULL, 30.919996, -6.919413, 'W3CJ+262, Av. Mohammed V, Ouarzazate 45000, Morocco', 19, 3, 2, NULL),
	(162, 'Carrefour Market Hassan', NULL, 34.021161, -6.827101, '43 Av. Moulay Ismail, Rabat, Morocco', 1, 3, 2, NULL),
	(163, 'Carrefour Market Safi', NULL, 32.293032, -9.234444, '7QV8+46Q, Rue Taib Ben Hima, BenHimaSafi, Morocco', 20, 3, 2, NULL),
	(164, 'Carrefour Market Sala Al Jadida', NULL, 33.996215, -6.741917, 'X7W5+C9C, Av. Hassan II, Salé, Morocco', 21, 3, 2, NULL),
	(165, 'Carrefour Market Settat', NULL, 32.998820, -7.619300, 'Carrefour Market Settat, Angle Rue Abdelmoumen et Rue Général Monier، Settat, Morocco', 22, 3, 2, NULL),
	(166, 'Carrefour Market', NULL, 32.331724, -6.352882, 'carrefour Bd 20 Aout & Qr Charaf-23000-،, Béni Mellal, Morocco', 23, 3, 2, NULL),
	(167, 'Carrefour Market Souissi', NULL, 33.982116, -6.828961, 'Angle Mehdi Ben Barka et Bd Mohammed VI Rabat, Rabat, Morocco', 1, 3, 2, NULL),
	(168, 'Carrefour Market Berkane', NULL, 34.931122, -2.309454, 'WMJR+C6J, Berkane, Morocco', 24, 3, 2, NULL),
	(169, 'Carrefour Market Ziraoui', NULL, 33.597028, -7.629585, 'H9WC+R49, Bd Ziraoui, Casablanca 20250, Morocco', 4, 3, 2, NULL),
	(170, 'Carrefour Market Khénifra', NULL, 32.944081, -5.660143, 'W8VQ+MRF, P24, Khénifra, Morocco', 25, 3, 2, NULL),
	(171, 'Carrefour Market Nador', NULL, 35.159320, -2.930545, 'Carrefour Market Nador, Route principale - Route Tawima, Nador, Morocco', 26, 3, 2, NULL),
	(172, 'Carrefour Market Sidi Slimane', NULL, 34.259871, -5.922108, '64 Av. Hassan II, Sidi Slimane, Morocco', 27, 3, 2, NULL),
	(173, 'Carrefour Market Fès Megamarket', NULL, 34.001529, -5.010589, '2X2Q+JQ Fes, Morocco', 6, 3, 2, NULL),
	(174, 'Carrefour Market ALIA', NULL, 33.685818, -7.378298, 'MJPC+7M5, Bd de Riyad, Mohammédia, Morocco', 16, 3, 2, NULL),
	(175, 'Carrefour Market Le Parc', NULL, 33.706427, -7.395200, 'Carrefour Market Le Parc, Angle Avenue du Parc et, Av. du Parc, Mohammédia, Morocco', 16, 3, 2, NULL),
	(176, 'Carrefour Express Tanger Malabata', NULL, 35.763105, -5.819272, 'Q57J+6GG, Tangier 90060, Morocco', 30, 3, 4, NULL),
	(177, 'Carrefour Market Bouskoura Ville', NULL, 33.461840, -7.643668, 'F964+JMP, P3011, Bouskoura, Morocco', 31, 3, 2, NULL),
	(178, 'Carrefour Market Bellerive', NULL, 33.596775, -7.592972, 'HCW4+PP5, Bd Emile Zola, Casablanca 20250, Morocco', 4, 3, 2, NULL),
	(179, 'Carrefour Market Semlalia', NULL, 31.648802, -8.009620, 'Carrefour Market Semlalia, Lotissement Sinko Ghiliz Wilaya de Marrakech, Marrakech 40000, Morocco', 3, 3, 2, NULL),
	(180, 'Carrefour Market Riad', NULL, 33.962285, -6.877161, 'CC Riad, 1 Av. Annakhil, Rabat, Morocco', 1, 3, 2, NULL),
	(181, 'Carrefour Market Volubilis', NULL, 35.765965, -5.808848, 'Boulevard Moulay Ismail, Immeuble Giraud Volubilus, Tanger 90060, Morocco', 8, 3, 2, NULL),
	(182, 'Carrefour Market Hassan 2', NULL, 30.414078, -9.593491, 'CC74+JJC, Agadir 80000, Morocco', 9, 3, 2, NULL),
	(183, 'Carrefour Market Label Shop', NULL, 33.572968, -7.619978, '77 Rue Abou Alâa Zahr, Casablanca 20250, Morocco', 4, 3, 2, NULL),
	(184, 'Carrefour Market Kenitra Mimosas', NULL, 34.252977, -6.594699, 'Rue Misr, Résidence Belgout, Kénitra, Morocco', 15, 3, 2, NULL),
	(185, 'Carrefour Market Shem\'s', NULL, 34.002317, -6.852044, 'Cité Ibn Sina, N°1, Rabat, Morocco', 1, 3, 2, NULL),
	(186, 'Carrefour Market Gauthier 2', NULL, 33.589748, -7.629727, '2 Rue Taha Hussein, Casablanca 20250, Morocco', 4, 3, 2, NULL),
	(187, 'Carrefour Market Oqba', NULL, 34.005674, -6.847444, 'n18 Rue Al Achaari, Rabat, Morocco', 1, 3, 2, NULL),
	(188, 'Carrefour Market Kenitra Maamoura', NULL, 34.256924, -6.582434, '7C48+PX9, Av. Moulay Abderrahmane, Kénitra, Morocco', 15, 3, 2, NULL),
	(189, 'Carrefour Express Victoria', NULL, 33.412842, -12.158318, '8C59CR7R+4M', 1, 4, 4, 7),
	(190, 'Carrefour Market Fès Atlas', NULL, 34.030404, -4.993325, 'Zone Industrielle Dahr Khamiss, Fès 30050, Morocco', 6, 3, 2, NULL),
	(191, 'Carrefour Market Oulfa', NULL, 33.562209, -7.668984, '52, Angle Boulevard Oued Oum Rabia et, Rte Moulay Thami, Casablanca 20250, Morocco', 4, 3, 2, NULL),
	(192, 'CARREFOUR BETTANA market', NULL, 34.031518, -6.802522, 'Quartier Bettana, Angle Avenue Mediouna et Rue Ouarzazate, Immeuble YA ZAMANE 6, Salé, Morocco', 21, 3, 1, NULL),
	(193, 'Carrefour Express 2 Mars', NULL, 33.573612, -7.619370, '73 Rue Abou Alâa Zahr, Casablanca 20000, Morocco', 4, 4, 2, NULL),
	(194, 'Carrefour Market Madagascar', NULL, 34.014287, -6.850808, '49 Av. Madagascar, Rabat, Morocco', 1, 3, 2, NULL),
	(195, 'Carrefour Market Majorelle', NULL, 31.640673, -8.001433, '1 Rue Yves St Laurent, Majorelle، 40000, Morocco', 1, 4, 2, NULL),
	(196, 'Carrefour Express Bir Anzarane', NULL, 33.584068, -7.644536, 'H9M4+95R, Casablanca 20250, Morocco', 4, 4, 4, NULL),
	(197, 'Carrefour Express Beni Makada Tanger', NULL, 35.743563, -5.806563, 'P5VV+C96, Tangier 90060, Morocco', 30, 4, 4, NULL),
	(198, 'Carrefour Market Fès Megamarket/', NULL, 34.001529, -5.010589, '2X2Q+JQ Fes, Morocco', 6, 4, 2, NULL),
	(199, 'Carrefour Market Gauthier Expresse', NULL, 33.589894, -7.631541, '35 Av. Hassan Souktani, Casablanca 20250, Morocco', 4, 4, 2, NULL),
	(200, 'Carrefour Express Casa Av. Hassan Seghir', NULL, 33.594563, -7.610438, 'H9VQ+RRF, Casablanca 20250, Morocco', 4, 4, 4, NULL),
	(201, 'Carrefour Express Casa Route Al Ouahda', NULL, 33.608813, -7.545063, 'JF53+GX2, Casablanca 20250, Morocco', 4, 4, 4, NULL),
	(202, 'Carrefour Express La Gironde', NULL, 33.584924, -7.599908, '63 Bd de la Gironde, Casablanca 20250, Morocco', 4, 4, 4, NULL),
	(203, 'Carrefour Express Mers Sultan', NULL, 33.584508, -7.615924, '196 Av. Mers Sultan, Casablanca 20250, Morocco', 4, 4, 4, NULL),
	(204, 'Carrefour Express Rachidi', NULL, 33.593402, -7.627187, 'H9VF+952, Casablanca 20250, Morocco', 4, 4, 4, NULL),
	(205, 'Carrefour Express Sidi Kacem', NULL, 34.220824, -5.709987, '67CR+82R, Sidi Kacem, Morocco', 33, 4, 4, NULL),
	(206, 'Carrefour Express Martil', NULL, 35.615604, -5.273233, 'JP8G+7QP, Martil, Morocco', 34, 4, 4, NULL),
	(207, 'Carrefour Express La Gironde Addalia', NULL, 33.578693, -7.596041, 'HCH3+FM7, Rue Al Ismailiya،, Casablanca 20250, Morocco', 4, 4, 4, NULL),
	(208, 'Carrefour Express Romandie', NULL, 33.585500, -7.646801, 'Angle Boulevard Bir Anzarane et Rue El Azrak Ahmed, Romandie II, Casablanca 20250, Morocco', 4, 4, 4, NULL),
	(209, 'Carrefour Express Mohammed V', NULL, 33.591623, -7.594680, '649 bd mohammed 5 belvédère résidence chaouia 2 eme etage, Casablanca 20250, Morocco', 4, 4, 4, NULL),
	(210, 'Carrefour Express Bourgogne', NULL, 33.598390, -7.639836, 'H9X6+933, Bd de Bourgogne, Casablanca 20250, Morocco', 4, 4, 4, NULL),
	(211, 'Carrefour Express Medina', NULL, 34.021014, -6.842357, '6 Av. Al Maghrib Al Arabi, Rabat, Morocco', 1, 4, 4, NULL),
	(212, 'Carrefour Market Le barreau Agadir', NULL, 30.402653, -9.578863, 'CC3C+3H, Agadir 80000, Morocco', 9, 4, 2, NULL),
	(213, 'Carrefour Express Mohammedia Sebta', NULL, 33.694733, -7.380659, 'Carrefour Market Mohammedia Sebta, Bd de Sebta, Mohammédia, Morocco', 16, 4, 4, NULL),
	(214, 'Carrefour Market Beausejour', NULL, 33.566949, -7.651309, '51 Rue Al Khouzame, Casablanca 20250, Morocco', 4, 4, 2, NULL),
	(215, 'Carrefour Express Oasis', NULL, 33.560143, -7.630507, '8 Rue des Tabors, Casablanca, Morocco', 4, 4, 4, NULL),
	(216, 'Carrefour Market La Villette', NULL, 33.589108, -7.577906, 'HCQC+GP8, Rue Abou Youssef El Mesdaghi, Casablanca 20250, Morocco', 4, 4, 2, NULL),
	(217, 'Carrefour Market Cadi Ayad', NULL, 30.419203, -9.578012, '303, 3eme étage, Immeuble, Lokman Av. Kadi Ayad, Agadir 80000, Morocco', 9, 4, 2, NULL),
	(218, 'Carrefour Market Hassan 2 Mohammedia', NULL, 33.714371, -7.344572, 'PM74+M6G, Bd Hassan II, Mohammédia, Morocco', 16, 4, 2, NULL),
	(219, 'Carrefour Market Kenitra Av Moulay Abdelaziz', NULL, 34.257801, -6.592018, '93 Av. Moulay Abdelazziz, Kénitra, Morocco', 15, 4, 2, NULL),
	(220, 'Carrefour Market Descartes', NULL, 33.987278, -6.849476, '74 Avenue Jaafar Essadik, Rabat 10000, Morocco', 1, 4, 2, 7),
	(221, 'Carrefour Market Sidi Said Meknès/', NULL, 33.892918, -5.575377, 'VCVF+5PX, Meknes, Morocco', 2, 4, 2, NULL),
	(222, 'Carrefour Market Agadir El Houda', NULL, 30.400267, -9.534051, 'Résidence Jenine 1, Rue Kerdous, Agadir 80000, Morocco', 9, 4, 2, NULL),
	(223, 'Carrefour Market Palmeraie', NULL, 31.681722, -7.983870, 'M2J8+MF Marrakesh, Morocco', 5, 4, 2, NULL),
	(224, 'Carrefour Express Moulay Youssef Tanger', NULL, 35.770860, -5.812527, '24 Av. Moulay Youssef, Tanger 90000, Morocco', 8, 4, 4, NULL),
	(225, 'Carrefour Market Deroua', NULL, 33.394271, -7.534060, '9FV8+M9F, Morocco', 1, 4, 2, NULL),
	(226, 'Carrefour Market Mehdi Ben Barka', NULL, 33.949628, -6.868045, 'W4XJ+R9W, Rabat, Morocco', 1, 4, 2, NULL),
	(227, 'Carrefour Market Avenue des FAR Tanger', NULL, 35.753624, -5.833374, '1, Tanger 90060, Morocco', 8, 4, 2, NULL),
	(228, 'Carrefour Market Champs de Course Fès', NULL, 34.033201, -5.016625, '2XMM+79H, Fes 30050, Morocco', 6, 4, 2, NULL),
	(229, 'Carrefour Market Had Soualem', NULL, 33.422773, -7.852515, 'C4FX+324, Soualem, Morocco', 35, 4, 2, NULL),
	(230, 'Carrefour Market', NULL, 33.446593, -5.230377, '369 RUE 4, Azrou, Morocco', 36, 4, 2, NULL),
	(231, 'Carrefour Market Océan', NULL, 34.023119, -6.850133, '12 Rue Belgrade, Rabat 10040, Morocco', 1, 4, 2, 7),
	(232, 'Carrefour Market Ain Sebaa', NULL, 33.602032, -7.528936, 'JF2C+Q3G Aïn Sebaâ Park, Casablanca 20250, Morocco', 4, 6, 2, NULL),
	(233, 'Carrefour Market Ville Verte Casablanca', NULL, 33.497863, -7.607603, 'Universite Internationale, Bouskoura, Morocco', 31, 4, 2, NULL),
	(234, 'Carrefour Market Ain Sebaa', NULL, 33.607585, -7.536863, 'Bb chefchaouni, angle rue Abdelhamid Bnou Badis, 3éme étage, n° 14, près du ront, Casablanca 20250, Morocco', 4, 4, 2, NULL),
	(235, 'Carrefour Market', NULL, 33.907470, -6.923258, 'W34G+XFX, Temara, Morocco', 13, 6, 2, NULL),
	(236, 'Carrefour Market la Résistance', NULL, 33.584356, -7.610500, '97 Bd de la Liberté, Casablanca 20100, Morocco', 4, 6, 2, NULL),
	(237, 'Carrefour Market Abdelkrim Khattabi Marrakech', NULL, 31.633119, -8.016488, 'Immeuble rokia \'A\' Appt 19 étage 3, Marrakech 40000, Morocco', 3, 6, 2, NULL),
	(238, 'Carrefour Market Kénitra', NULL, 34.261895, -6.587388, '7C67+M44, Kenitra, Morocco', 15, 6, 2, NULL),
	(239, 'Carrefour Market El Jadida 2 Najd', NULL, 33.227702, -8.506972, '6FHV+36J, Av. Othmane Ibn Affane, El Jadida, Morocco', 10, 6, 2, NULL),
	(240, 'Carrefour Dar Bouazza', NULL, 33.517166, -7.799547, 'G682+V8H, Tamaris, Morocco', 11, 7, 1, NULL),
	(241, 'Carrefour Agadir', NULL, 30.389265, -9.510129, '9FQQ+XRC, 110-4 located in, Agadir 80000, Morocco', 9, 7, 1, NULL),
	(242, 'Carrefour Market Marrakech Massira 3', NULL, 31.632746, -8.071732, 'JWMH+38J, Marrakesh, Morocco', 5, 6, 2, NULL),
	(243, 'Carrefour Berrechid', NULL, 33.258847, -7.580766, '7C59+FQC, Rte de Khouribga, Berrchid, Morocco', 38, 7, 1, NULL),
	(244, 'Carrefour Al Mazar', NULL, 31.592516, -7.987100, 'H2V6+4W6, Marrakesh, Morocco', 5, 7, 1, NULL),
	(245, 'Carrefour Oujda', NULL, 34.659458, -1.906292, 'M35V+PFG, Rue Sounna, Oujda, Morocco', 39, 7, 1, NULL),
	(246, 'Carrefour Socco Alto', NULL, 35.781454, -5.840988, 'Socco Alto, Avenue Banafsaj, Tangier 90040, Morocco', 30, 7, 1, NULL),
	(247, 'Carrefour Sidi Maarouf', NULL, 33.535976, -7.642066, 'G9P5+84J, Casablanca, Morocco', 4, 7, 1, NULL),
	(248, 'Carrefour Sale', NULL, 34.058762, -6.802177, '355X+H5X, Salé, Morocco', 21, 7, 1, NULL),
	(249, 'Carrefour Targa', NULL, 31.650724, -8.059146, 'Croisement route Targa et Boulevard Laâyoune, Marrakech 40140, Morocco', 3, 7, 1, NULL),
	(250, 'Carrefour Borj Fes', NULL, 34.046288, -4.994645, 'Centre Commercial Borj Fès, Fès, 30050, Morocco', 6, 7, 1, NULL),
	(251, 'Carrefour Tetouan', NULL, 35.578360, -5.333915, 'HMH8+6F, Tetouan, Morocco', 18, 7, 1, NULL),
	(252, 'Carrefour Market Palmier', NULL, 33.582329, -7.628543, 'Boulevard 9 Avril, Casablanca 20250, Morocco', 4, 4, 1, NULL),
	(253, 'Carrefour Temara', NULL, 33.908334, -6.938794, 'W356+78W, Temara, Morocco', 13, 7, 1, NULL),
	(254, 'Carrefour Market Malraux', NULL, 34.015668, -6.845539, '4 Rue Ibn Al Khatib، Rabat, Morocco', 1, 6, 2, NULL);

-- Dumping structure for table chat-bot-carrefour.tickets
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `phone` varchar(20) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.tickets: ~0 rows (approximately)
INSERT INTO `tickets` (`id`, `content`, `phone`, `created_at`) VALUES
	(1, 'BLA BLA BAL ABLABSIASASGAS', '212621586010', '2023-05-07 14:48:17');

-- Dumping structure for table chat-bot-carrefour.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table chat-bot-carrefour.users: ~0 rows (approximately)
INSERT INTO `users` (`id`, `username`, `password`) VALUES
	(1, 'zak', '$2b$10$2lfe6/5iEFd8LIhXudUace3JWFXmXLUNkZwvZbqYo28ffK.SM8Eyy');
