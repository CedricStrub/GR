-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.32 - MySQL Community Server - GPL
-- SE du serveur:                Linux
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour gr
CREATE DATABASE IF NOT EXISTS `gr` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gr`;

-- Listage de la structure de table gr. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.failed_jobs : ~0 rows (environ)

-- Listage de la structure de table gr. files
CREATE TABLE IF NOT EXISTS `files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `original_filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.files : ~57 rows (environ)
INSERT INTO `files` (`id`, `original_filename`, `filename`, `type`, `created_at`, `updated_at`) VALUES
	(7, 'grasses-gf97ec38a2-1280.jpg', '28ae5976-3caa-4834-b43b-d6e6725529a8.jpg', 'image/jpeg', '2023-06-14 08:37:23', '2023-06-14 08:37:23'),
	(8, 'meadowsweet-ga44be90fc-1280.jpg', '5cddc535-71c6-4ecd-b9b1-eb44f0f664be.jpg', 'image/jpeg', '2023-06-14 08:37:33', '2023-06-14 08:37:33'),
	(9, 'test-bis.txt', 'b909eb11-bfdd-49f6-ac73-f3e996797a1c.txt', 'text/plain', '2023-06-14 08:37:47', '2023-06-14 08:37:47'),
	(15, 'meadowsweet-ga44be90fc-1280.jpg', '2985392f-e6f7-4895-917b-f85ba3592af1.jpg', 'image/jpeg', '2023-06-14 21:12:35', '2023-06-14 21:12:35'),
	(17, 'grasses-gf97ec38a2-1280.jpg', 'ea946525-b09d-4f0b-b9ba-b82e93d874f3.jpg', 'image/jpeg', '2023-06-15 07:13:48', '2023-06-15 07:13:48'),
	(18, 'txt14.txt', '4ea0235c-bfe2-4ce0-b6c4-a4d1bf277278.txt', 'text/plain', '2023-06-15 07:14:30', '2023-06-15 07:14:30'),
	(19, 'pexels-studio-naae-13546345.jpg', '06ae794c-abc8-4275-89fe-52fd0b4a1063.jpg', 'image/jpeg', '2023-06-15 07:18:56', '2023-06-15 07:18:56'),
	(20, 'txt7.txt', '73803258-c845-4e05-9e07-8309d60d7d44.txt', 'text/plain', '2023-06-15 07:19:16', '2023-06-15 07:19:16'),
	(21, 'pexels-kristina-paukshtite-5429261.jpg', '6b9b9761-067b-4479-8b59-828c6a470132.jpg', 'image/jpeg', '2023-06-15 07:20:31', '2023-06-15 07:20:31'),
	(22, 'pexels-jasmin-chew-16948300.jpg', 'f408ce85-3c46-43e2-b100-8c9823ddb7c1.jpg', 'image/jpeg', '2023-06-15 07:21:28', '2023-06-15 07:21:28'),
	(23, 'pexels-junchen-zhou-16128648.jpg', '1880a70f-74f8-4d0c-a99f-6dd2933773a2.jpg', 'image/jpeg', '2023-06-15 08:25:35', '2023-06-15 08:25:35'),
	(24, 'txt1.txt', '23cb1078-a120-4cfb-9c16-7fe1dc100102.txt', 'text/plain', '2023-06-15 08:25:52', '2023-06-15 08:25:52'),
	(25, 'pexels-harsh-raghavani-16649525.jpg', '8b4cb23a-b436-4d63-b034-defb93f1b59b.jpg', 'image/jpeg', '2023-06-15 08:29:16', '2023-06-15 08:29:16'),
	(26, 'pexels-harsh-raghavani-16649525.jpg', '9efabb56-2854-4e50-9420-aeae3585cd56.jpg', 'image/jpeg', '2023-06-15 08:32:00', '2023-06-15 08:32:00'),
	(27, 'pexels-mira-g-17032962.jpg', 'b8090368-2e39-4799-bf61-edac76139d0c.jpg', 'image/jpeg', '2023-06-15 08:33:15', '2023-06-15 08:33:15'),
	(28, 'pexels-samet-berber-16761587.jpg', '6e57199f-b532-4571-b663-430fe08fd9c2.jpg', 'image/jpeg', '2023-06-15 08:33:28', '2023-06-15 08:33:28'),
	(29, 'txt5.txt', 'af36f557-9f6d-494f-9498-4cbc353c1ddc.txt', 'text/plain', '2023-06-15 08:35:26', '2023-06-15 08:35:26'),
	(30, 'pexels-lukas-rodriguez-17193196.jpg', '7e86c850-b495-4d1b-b316-5fa7413b014a.jpg', 'image/jpeg', '2023-06-15 08:39:31', '2023-06-15 08:39:31'),
	(31, 'txt15.txt', 'f38365dd-e7b2-48f1-9b19-1a10f56bcad1.txt', 'text/plain', '2023-06-15 08:39:48', '2023-06-15 08:39:48'),
	(32, 'pexels-laura-james-17151882.jpg', 'b593761a-c55f-4847-aadb-a079aa2fcf2f.jpg', 'image/jpeg', '2023-06-15 08:40:32', '2023-06-15 08:40:32'),
	(33, 'pexels-adrien-olichon-13025141.jpg', '79e81481-0826-41e2-b453-1d26662ea605.jpg', 'image/jpeg', '2023-06-15 08:40:51', '2023-06-15 08:40:51'),
	(34, 'pexels-adrien-olichon-13025141.jpg', '9875931d-ac4b-4bf8-b993-361579a41e64.jpg', 'image/jpeg', '2023-06-15 08:41:27', '2023-06-15 08:41:27'),
	(35, 'txt16.txt', '4449aecf-00f3-49bf-950e-6761c02c27c9.txt', 'text/plain', '2023-06-15 08:41:39', '2023-06-15 08:41:39'),
	(36, 'pexels-jasmin-chew-16948300.jpg', 'e6a97a35-e82e-4d2f-be56-61c8fd5ca2e1.jpg', 'image/jpeg', '2023-06-15 08:59:36', '2023-06-15 08:59:36'),
	(37, 'pexels-kendra-coupland-4242142.jpg', '8c0900a8-7fea-40ce-b212-4fe52f647fd4.jpg', 'image/jpeg', '2023-06-15 08:59:51', '2023-06-15 08:59:51'),
	(38, 'pexels-kristina-paukshtite-5429261.jpg', '9de59b02-eed0-49be-8531-08f458387a31.jpg', 'image/jpeg', '2023-06-15 08:59:58', '2023-06-15 08:59:58'),
	(39, 'pexels-kendra-coupland-4242142.jpg', 'f5bbf156-87cf-46d2-bc73-bcad511a321b.jpg', 'image/jpeg', '2023-06-15 09:05:26', '2023-06-15 09:05:26'),
	(40, 'pexels-igra-17042015.jpg', '0c99be29-fc04-4dc8-934e-8e1b87468ab7.jpg', 'image/jpeg', '2023-06-15 09:06:11', '2023-06-15 09:06:11'),
	(41, 'txt10.txt', '6bc84d5e-7bdc-49c0-a5ed-4041521e57f6.txt', 'text/plain', '2023-06-15 09:06:17', '2023-06-15 09:06:17'),
	(42, 'pexels-junchen-zhou-16128648.jpg', 'b4c9cdc6-d5ff-4943-a9eb-27883abf957f.jpg', 'image/jpeg', '2023-06-15 09:08:40', '2023-06-15 09:08:40'),
	(43, 'pexels-lukas-rodriguez-17193196.jpg', '74ec73c9-e910-4774-86fc-15b052a41d4c.jpg', 'image/jpeg', '2023-06-15 09:08:53', '2023-06-15 09:08:53'),
	(44, 'txt3.txt', 'd2db6da3-d3d4-45dd-92be-7aac366ba826.txt', 'text/plain', '2023-06-15 09:09:09', '2023-06-15 09:09:09'),
	(45, 'meadowsweet-ga44be90fc-1280.jpg', '4c1827a6-fe92-4f8e-b038-3c47fdd015d8.jpg', 'image/jpeg', '2023-06-15 09:10:33', '2023-06-15 09:10:33'),
	(46, 'pexels-mira-g-17032962.jpg', 'c17ef609-b30f-4070-9119-69c7a02e542b.jpg', 'image/jpeg', '2023-06-15 09:10:46', '2023-06-15 09:10:46'),
	(47, 'pexels-mira-g-17032962.jpg', '36d850cd-7f33-494b-a831-93d3c997ec84.jpg', 'image/jpeg', '2023-06-15 09:12:24', '2023-06-15 09:12:24'),
	(48, 'pexels-studio-naae-13546345.jpg', '73c69761-6530-42bb-b0d0-6caff36fe1ba.jpg', 'image/jpeg', '2023-06-15 09:12:44', '2023-06-15 09:12:44'),
	(49, 'txt5.txt', 'e72f7a26-4402-4a14-88cd-9d56b2816576.txt', 'text/plain', '2023-06-15 09:12:57', '2023-06-15 09:12:57'),
	(50, 'pexels-kristina-paukshtite-5429261.jpg', 'fc427881-d944-436c-803e-43e677b35b3e.jpg', 'image/jpeg', '2023-06-15 09:15:09', '2023-06-15 09:15:09'),
	(51, 'pexels-jasmin-chew-16948300.jpg', '34883b77-0d2c-4ade-9215-bf88e5cf02e5.jpg', 'image/jpeg', '2023-06-15 09:15:21', '2023-06-15 09:15:21'),
	(52, 'pexels-kendra-coupland-4242142.jpg', 'e80e36c7-4b86-48e3-8083-153f420ea7bf.jpg', 'image/jpeg', '2023-06-15 09:18:53', '2023-06-15 09:18:53'),
	(53, 'pexels-samet-berber-16761587.jpg', '608a79ec-e3b0-4b8b-99e5-4463495bd034.jpg', 'image/jpeg', '2023-06-15 09:20:22', '2023-06-15 09:20:22'),
	(54, 'txt9.txt', '274a6803-7c76-49ff-be47-78d49385909d.txt', 'text/plain', '2023-06-15 09:20:27', '2023-06-15 09:20:27'),
	(55, 'txt10.txt', '34ca4e76-d9f3-4ead-91ce-5f85401d2d8e.txt', 'text/plain', '2023-06-15 09:20:39', '2023-06-15 09:20:39'),
	(56, 'pexels-studio-naae-13546345.jpg', '03cf7656-bc8b-4a03-aeed-954f9723dfc5.jpg', 'image/jpeg', '2023-06-15 09:24:47', '2023-06-15 09:24:47'),
	(57, 'pexels-junchen-zhou-16128648.jpg', 'eb81c0bf-87ed-4ea0-9d3b-f5a3df738964.jpg', 'image/jpeg', '2023-06-15 09:25:32', '2023-06-15 09:25:32'),
	(58, 'txt2.txt', '4c232a79-16a1-4519-86d6-c3cd81a7428d.txt', 'text/plain', '2023-06-15 09:25:41', '2023-06-15 09:25:41'),
	(59, 'pexels-elle-hughes-5180435.jpg', '5dc71837-456c-4496-b926-902a4e1e1ea0.jpg', 'image/jpeg', '2023-06-15 09:28:55', '2023-06-15 09:28:55'),
	(60, 'pexels-adrien-olichon-13025141.jpg', 'bf969fb0-ed29-48a1-b340-e5f89bded793.jpg', 'image/jpeg', '2023-06-15 09:29:37', '2023-06-15 09:29:37'),
	(61, 'txt7.txt', 'ac9c64f6-1b13-4e43-92a0-4ff5263c9163.txt', 'text/plain', '2023-06-15 09:29:49', '2023-06-15 09:29:49'),
	(62, 'pexels-junchen-zhou-16128648.jpg', 'b7a21de2-863b-4686-bf56-6202a9219669.jpg', 'image/jpeg', '2023-06-15 09:34:22', '2023-06-15 09:34:22'),
	(63, 'pexels-harsh-raghavani-16649525.jpg', 'fe349daf-72ca-4a19-9cc3-9ac84dffe769.jpg', 'image/jpeg', '2023-06-15 09:34:28', '2023-06-15 09:34:28'),
	(64, 'txt3.txt', '9844514d-51fa-477c-b1e3-4f1577e361b4.txt', 'text/plain', '2023-06-15 09:34:35', '2023-06-15 09:34:35'),
	(65, 'pexels-studio-naae-13546345.jpg', 'a0d189d0-a701-4ae0-9e3f-3a2505f02464.jpg', 'image/jpeg', '2023-06-15 09:35:26', '2023-06-15 09:35:26'),
	(66, 'pexels-elle-hughes-5180435.jpg', 'c436dcc0-5b08-4536-be29-6efb272e98d2.jpg', 'image/jpeg', '2023-06-15 09:35:29', '2023-06-15 09:35:29'),
	(67, 'txt14.txt', '6ccec967-cfb1-4a6d-8907-305b54846949.txt', 'text/plain', '2023-06-15 09:35:35', '2023-06-15 09:35:35'),
	(68, 'test.txt', '28eab3db-f91d-496d-8e09-bbdeafe89974.txt', 'text/plain', '2023-07-16 08:53:15', '2023-07-16 08:53:15'),
	(69, 'test.txt', 'a624dc84-e29d-42b4-b8ce-3d815f62656e.txt', 'text/plain', '2023-07-16 08:55:49', '2023-07-16 08:55:49'),
	(70, '1100-486-podcast.jpeg', 'c85d36b3-2579-4879-bb31-b4342d8c8cbd.jpeg', 'image/jpeg', '2023-07-16 09:30:28', '2023-07-16 09:30:28'),
	(71, 'la-5g-lavenir-de-la-connectivite.jpg', 'caf0eb11-aa2a-484b-a427-4b1fa190ed34.jpg', 'image/jpeg', '2023-07-16 09:32:15', '2023-07-16 09:32:15'),
	(72, 'la-5g-lavenir-de-la-connectivite.jpg', 'c2fcfd62-2fec-49f1-919b-a8414fbaaf78.jpg', 'image/jpeg', '2023-07-16 09:33:11', '2023-07-16 09:33:11'),
	(73, 'Carbo-urbanisme-durable.jpg', '779e1a89-f3a2-4b8e-980f-f7d9d90d5383.jpg', 'image/jpeg', '2023-07-16 09:36:11', '2023-07-16 09:36:11'),
	(74, 'proptech-construction-industry.jpg', '0975aa49-5324-4f4b-9300-65d50bf71d92.jpg', 'image/jpeg', '2023-07-16 09:39:37', '2023-07-16 09:39:37'),
	(75, 'Reseaux-sociaux-la-sante-mentale-des-jeunes-filles-affectee-plus-tot-que-celle-des-garcons.jpg', '9c47f409-c7cb-40ad-b5b7-cc77cf920193.jpg', 'image/jpeg', '2023-07-16 09:45:21', '2023-07-16 09:45:21'),
	(76, '3b8b5e70-2ccd-11ec-aff7-a69e9864dce7.jpg', 'ed223320-9354-4f75-8b26-f58ba0a2dcbc.jpg', 'image/jpeg', '2023-07-16 09:47:42', '2023-07-16 09:47:42'),
	(77, 'f9ccb.jpg', '19ee7a5e-20b7-4431-bf94-6066fed65fc3.jpg', 'image/jpeg', '2023-07-16 09:53:11', '2023-07-16 09:53:11'),
	(78, 'ThinkstockPhotos-496560747-couverture-1536x864.jpg', 'cd6488fe-b8f7-46c4-afb2-f07af7bac0e8.jpg', 'image/jpeg', '2023-07-16 09:56:29', '2023-07-16 09:56:29'),
	(79, 'ThinkstockPhotos-496560747-couverture-1536x864.jpg', 'ab3334ca-06b4-4887-828a-4fe3c4259748.jpg', 'image/jpeg', '2023-07-16 09:56:59', '2023-07-16 09:56:59'),
	(80, 'images.png', 'a4fba7f1-6423-47ae-814e-5811a652c6a7.png', 'image/png', '2023-07-16 09:59:26', '2023-07-16 09:59:26'),
	(81, '55f74dcd4f6919159f4b5d5ae107f223d409c26c-0.jpg', 'a453a964-c057-4f6f-b54b-bc847a4d7bf1.jpg', 'image/jpeg', '2023-07-16 10:00:39', '2023-07-16 10:00:39'),
	(82, 'linux-logo.jpg', 'e84b4c76-5a79-499f-a84c-0e773d9d401a.jpg', 'image/jpeg', '2023-07-16 10:08:24', '2023-07-16 10:08:24'),
	(83, '61d42d538aec6733243470a7-Python-logo.png', 'fb3b714b-e939-49cc-acf1-5adc47809014.png', 'image/png', '2023-07-16 10:09:15', '2023-07-16 10:09:15'),
	(84, 'reconnaissance-faciale-ethique-progres.jpeg', '60a91c52-faa4-41fb-ba2a-fd5d0bb712e3.jpeg', 'image/jpeg', '2023-07-16 10:10:17', '2023-07-16 10:10:17'),
	(85, 'Cryptoactifs-blockchain-CCO.jpg', '89282073-6eaf-496c-ae3c-0804031c460a.jpg', 'image/jpeg', '2023-07-16 10:11:08', '2023-07-16 10:11:08'),
	(86, 'twitter-infrastructures-de-transport-vers-le-futur-et-le-durable-0.jpg', '60dc8e54-6e83-46da-a32a-141d3eada02d.jpg', 'image/jpeg', '2023-07-16 10:12:13', '2023-07-16 10:12:13'),
	(87, 'alain-bonnardeaux-Zd6h7n442Og-unsplash.jpg', '97afd11c-1795-4164-9d06-46edef6902ca.jpg', 'image/jpeg', '2023-07-16 10:13:46', '2023-07-16 10:13:46'),
	(88, 'immigration-et-integration-header1.png', '915775cf-59a3-428a-9993-72adf52b4428.png', 'image/png', '2023-07-16 10:15:25', '2023-07-16 10:15:25'),
	(89, '11492227.jpg', 'c873f711-2728-4deb-bc5c-b3baeb4ea1c5.jpg', 'image/jpeg', '2023-07-16 10:16:18', '2023-07-16 10:16:18'),
	(90, 'genre-sport-campagne-egalite-ville-geneve-cover.jpg', '9f3ce85c-1388-4d9c-b384-546044311abf.jpg', 'image/jpeg', '2023-07-16 10:17:41', '2023-07-16 10:17:41'),
	(91, 'Sans-titre.jpg', 'b6f30848-f8ef-4346-ab31-6ae852dcf9dd.jpg', 'image/jpeg', '2023-07-16 10:18:53', '2023-07-16 10:18:53'),
	(92, 'l-engagement-citoyen-dans-le-monde-vu-par-les-eleves-d-upe2a-dessin-f-akilov-1465837870.jpg', 'c6cd917d-090e-4437-be41-397ca18f673f.jpg', 'image/jpeg', '2023-07-16 10:19:57', '2023-07-16 10:19:57'),
	(93, 'idruide-blog-Utilisation-numerique-classe-avantages-inconvenients-Hero.jpg', 'e1fe4cca-6cc2-4f5b-a8e3-618974fe2402.jpg', 'image/jpeg', '2023-07-16 10:20:51', '2023-07-16 10:20:51'),
	(94, 'git-logo.jpg', '781b2c27-0849-4f8e-ab9d-9b112ee81d90.jpg', 'image/jpeg', '2023-07-16 10:21:51', '2023-07-16 10:21:51'),
	(95, 'Apache-HTTP-server-logo-2019-present-svg.png', '8137ef40-22f5-4fb7-a1b5-47da0eec8f0d.png', 'image/png', '2023-07-16 10:22:48', '2023-07-16 10:22:48'),
	(96, 'Automation-1920x800.png', '52ea0689-e7ae-4a67-89df-5a43bdec1401.png', 'image/png', '2023-07-16 10:24:01', '2023-07-16 10:24:01'),
	(97, 'c-6.jpg', 'dccc5240-45f3-4069-8736-d829a4f1179f.jpg', 'image/jpeg', '2023-07-16 10:24:47', '2023-07-16 10:24:47'),
	(98, 'network-supremacy.jpg', '0debfe5e-1d59-4cf6-8827-7aeadce65f52.jpg', 'image/jpeg', '2023-07-16 10:25:39', '2023-07-16 10:25:39'),
	(99, 'img-1-small580.png', '566f98c5-3178-4a22-a3d8-6a3ee25757e3.png', 'image/png', '2023-07-16 10:26:24', '2023-07-16 10:26:24'),
	(100, 'errrrrrrrrrrrrrrrrrrrztzertzertzerttitre-1.jpg', '8db9952e-242c-419d-97e5-2ffa4025c716.jpg', 'image/jpeg', '2023-07-16 10:27:55', '2023-07-16 10:27:55'),
	(101, 'HUMAN-RIGHTS-IN-THE-DIGITAL-SPHERE-FR-870-x-489-px-.png', '4bba40c0-3cd3-403d-961c-33f1ccbaa42b.png', 'image/png', '2023-07-16 10:28:47', '2023-07-16 10:28:47'),
	(102, 'ech21775083-1.jpg', '3c1fa495-d5b0-4b60-b1df-be4342092440.jpg', 'image/jpeg', '2023-07-16 10:30:06', '2023-07-16 10:30:06'),
	(103, 'journee-sport-event-dda7efdfa8.jpg', '690a8aa0-2d6f-47d9-b351-406d789f68db.jpg', 'image/jpeg', '2023-07-16 10:30:54', '2023-07-16 10:30:54'),
	(104, 'odd-17-objectifs-developpement-durable.png', '7b882475-396a-49e3-b994-1c11482db397.png', 'image/png', '2023-07-16 10:32:10', '2023-07-16 10:32:10'),
	(105, 'maxresdefault.jpg', 'c8445de2-1298-471b-8699-6e2377e138ba.jpg', 'image/jpeg', '2023-07-16 10:32:57', '2023-07-16 10:32:57'),
	(106, 'ECX-1909-Hero-PostgreSQL-600x400-2x.png', 'b1424333-c848-4a88-b423-18c06a473df9.png', 'image/png', '2023-07-16 10:33:45', '2023-07-16 10:33:45'),
	(107, 'January-11-2021-Nodejs-What-it-is-used-for-and-when-where-to-use-it-for-your-enterprise-app-development.jpg', '0d259a83-a570-4769-af67-65c525f869c5.jpg', 'image/jpeg', '2023-07-16 10:34:27', '2023-07-16 10:34:27'),
	(108, 'TensorFlow-logo-svg.png', '42fa664a-8c15-4a24-bf05-d5e7625c4520.png', 'image/png', '2023-07-16 10:35:09', '2023-07-16 10:35:09'),
	(109, 'introOF.txt', '17a669e4-ef32-4f7c-b705-65ec6c14f025.txt', 'text/plain', '2023-07-16 11:21:44', '2023-07-16 11:21:44'),
	(110, 'v7-side-view-crop.jpg', '11857b1c-d708-4e9d-8061-2b71c00e5576.jpg', 'image/jpeg', '2023-07-16 11:27:35', '2023-07-16 11:27:35'),
	(111, 'introOF.txt', '1b47ddf1-e2c8-4089-af0d-042fae4e851e.txt', 'text/plain', '2023-07-16 11:33:40', '2023-07-16 11:33:40'),
	(112, 'introOF.txt', '0eb6480b-d8c7-4aef-b845-02f0b6e4e122.txt', 'text/plain', '2023-07-16 11:33:43', '2023-07-16 11:33:43'),
	(114, 'v7-side-view-crop.jpg', '6209329b-5f4c-4fc3-beb9-6e437cf85aec.jpg', 'image/jpeg', '2023-07-16 12:10:40', '2023-07-16 12:10:40'),
	(115, 'texte-1.txt', 'a872bcaf-360a-4b57-918d-dfd81a05a40c.txt', 'text/plain', '2023-07-16 12:26:55', '2023-07-16 12:26:55'),
	(116, 'brim-and-ties1.png', 'e84e1cec-ab93-4ce3-84d1-dbc2997789ce.png', 'image/png', '2023-07-16 12:26:58', '2023-07-16 12:26:58'),
	(117, 'texte-1.txt', 'e61a9540-157b-42da-a353-042f7485602d.txt', 'text/plain', '2023-07-16 12:27:34', '2023-07-16 12:27:34');

-- Listage de la structure de table gr. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.migrations : ~14 rows (environ)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2020_05_21_100000_create_teams_table', 1),
	(7, '2020_05_21_200000_create_team_user_table', 1),
	(8, '2020_05_21_300000_create_team_invitations_table', 1),
	(9, '2023_03_15_175513_create_sessions_table', 1),
	(10, '2023_04_14_190612_project', 2),
	(11, '2023_04_14_190613_file_upload', 2),
	(12, '2023_04_14_190640_project_view', 2),
	(13, '2023_04_14_190650_project_widget', 2),
	(14, '2023_04_14_211148_project_content', 2);

-- Listage de la structure de table gr. password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.password_reset_tokens : ~0 rows (environ)

-- Listage de la structure de table gr. personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.personal_access_tokens : ~0 rows (environ)

-- Listage de la structure de table gr. projects
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `miniature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vues` bigint unsigned DEFAULT NULL,
  `author` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_author_foreign` (`author`),
  CONSTRAINT `projects_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.projects : ~37 rows (environ)
INSERT INTO `projects` (`id`, `nom`, `description`, `miniature`, `uuid`, `vues`, `author`, `created_at`, `updated_at`) VALUES
	(30, 'L\'impact de l\'IA sur la santé', 'Exploration de comment l\'intelligence artificielle transforme les soins de santé, depuis le diagnostic jusqu\'au traitement.', '70', 'c492648f-e153-42a1-b7bb-a0ce61ea9f3e', NULL, 1, '2023-07-16 09:26:40', '2023-07-16 09:30:38'),
	(31, 'La 5G et l\'avenir de la connectivité', 'Discussion sur les implications de la 5G sur la communication, les affaires et la vie quotidienne.', '72', '415fbbcd-b375-41e7-b4a3-dfa50e97199f', NULL, 1, '2023-07-16 09:31:16', '2023-07-16 09:33:15'),
	(32, 'L\'urbanisation et l\'infrastructure durable', 'Discussion sur l\'équilibre entre l\'urbanisation rapide et le développement d\'infrastructures durables.', '73', '19136e96-d19e-4f2e-a23d-68e80ff3b8eb', NULL, 1, '2023-07-16 09:35:06', '2023-07-16 09:36:14'),
	(33, 'Impact de la technologie sur le développement des infrastructures', 'Exploration des moyens par lesquels la technologie peut améliorer l\'efficacité et la durabilité du développement des infrastructures', '74', 'aa3c3b5a-4223-4ded-bf72-05617f9654b7', NULL, 1, '2023-07-16 09:38:33', '2023-07-16 09:39:41'),
	(34, 'Impact des réseaux sociaux sur la santé mentale', 'Étude de l\'influence des médias sociaux sur notre bien-être psychologique.', '75', 'f45051c4-2415-4b96-8f6a-ea82ed3fd413', NULL, 1, '2023-07-16 09:42:36', '2023-07-16 09:45:24'),
	(35, 'L\'écart salarial entre les genres', 'Discussion sur les disparités salariales entre hommes et femmes et les moyens d\'y remédier.', '76', '65897f2f-f45d-4007-a733-eacc809f8ce6', NULL, 1, '2023-07-16 09:46:20', '2023-07-16 09:47:45'),
	(36, 'Les effets du sport sur la santé mentale', 'Exploration des effets positifs de l\'activité sportive sur le bien-être mental et émotionnel.', '77', '7bf4b971-3bff-4383-ac29-16f84e78198a', NULL, 1, '2023-07-16 09:52:39', '2023-07-16 09:53:14'),
	(37, 'Technologie et performances sportives', 'Discussion sur comment la technologie influence les performances sportives, le coaching et l\'arbitrage.', '79', '30ce94e6-feb2-4e20-a164-3d5fc94a275c', NULL, 1, '2023-07-16 09:56:08', '2023-07-16 09:57:01'),
	(38, 'L\'éducation en ligne à l\'ère numérique', 'Exploration de l\'impact et des défis de l\'éducation en ligne et à distance sur l\'apprentissage.', '80', '60d40c97-3882-4752-860b-9cbb3ac18f5c', NULL, 1, '2023-07-16 09:59:07', '2023-07-16 09:59:36'),
	(39, 'Égalité des chances dans l\'éducation', 'Analyse des disparités dans l\'accès à l\'éducation de qualité et des moyens pour atteindre l\'équité éducative.', '81', '211d52ec-6e82-4d1d-9e87-b0f183c3f1d4', NULL, 1, '2023-07-16 10:00:26', '2023-07-16 10:00:48'),
	(40, 'Linux', 'Il s\'agit d\'un système d\'exploitation open source largement utilisé, connu pour sa robustesse et sa flexibilité. Il est utilisé aussi bien pour les serveurs que pour les systèmes embarqués et les ordinateurs de bureau.', '82', 'f85b42d5-1c04-4583-ba78-9d4896e55690', NULL, 1, '2023-07-16 10:08:03', '2023-07-16 10:08:27'),
	(41, 'Python', 'C\'est un langage de programmation open source populaire, réputé pour sa facilité d\'apprentissage, sa lisibilité et sa polyvalence dans de nombreux domaines, tels que le développement web, l\'analyse de données, l\'IA et plus encore.', '83', '799a3dd6-79ec-4d75-9108-ab7b0c99b487', NULL, 1, '2023-07-16 10:08:51', '2023-07-16 10:09:18'),
	(42, 'Éthique et reconnaissance faciale', 'Examen des problèmes éthiques liés à l\'utilisation de la reconnaissance faciale dans la surveillance et la sécurité.', '84', 'e932c67a-1e70-4171-be2d-86fe77ecf526', NULL, 1, '2023-07-16 10:10:01', '2023-07-16 10:10:29'),
	(43, 'Cryptomonnaies et l\'économie mondiale', 'Analyse de l\'impact des cryptomonnaies sur l\'économie mondiale et la finance traditionnelle.', '85', '85578572-7c23-4fde-9739-7469972dee9f', NULL, 1, '2023-07-16 10:10:55', '2023-07-16 10:11:18'),
	(44, 'Infrastructure de transport et économie', 'Analyse de l\'impact des infrastructures de transport sur la croissance économique et le développement durable.', '86', 'dc5ef72e-d22b-49b8-b9aa-419b188969c6', NULL, 1, '2023-07-16 10:11:58', '2023-07-16 10:12:24'),
	(45, 'Défis de l\'infrastructure en milieu rural', 'Étude sur les défis uniques liés au développement de l\'infrastructure dans les régions rurales et les solutions possibles.', '87', '1beadb43-8c2c-4299-a977-686fd4e3a600', NULL, 1, '2023-07-16 10:13:28', '2023-07-16 10:13:58'),
	(46, 'Immigration et intégration sociale', 'Analyse des défis et des opportunités associés à l\'immigration et à l\'intégration sociale.', '88', 'afa9d801-35ad-43dc-9149-7decd0171246', NULL, 1, '2023-07-16 10:15:12', '2023-07-16 10:15:37'),
	(47, 'Éducation inclusive dans une société diverse', 'Exploration des pratiques et des politiques visant à promouvoir l\'inclusion dans les systèmes éducatifs.', '89', 'f1a88507-91a5-43cf-98da-fec3f47af935', NULL, 1, '2023-07-16 10:16:04', '2023-07-16 10:16:29'),
	(48, 'Sport, genre et égalité', 'Analyse des inégalités de genre dans le sport et des initiatives pour promouvoir l\'égalité.', '90', '4ce298f1-0ca4-47c6-ad04-38b964a9b78f', NULL, 1, '2023-07-16 10:17:26', '2023-07-16 10:17:50'),
	(49, 'Impact du dopage sur le sport', 'Étude sur les conséquences du dopage pour la santé des athlètes et l\'intégrité du sport.', '91', 'daed1c1e-2e04-422b-9c32-5b4cb97740f1', NULL, 1, '2023-07-16 10:18:35', '2023-07-16 10:19:03'),
	(50, 'L\'importance de l\'éducation à la citoyenneté', 'Discussion sur l\'importance de l\'éducation civique pour former des citoyens informés et engagés.', '92', '6c59bb75-01a9-42da-a9bb-aceb90907b31', NULL, 1, '2023-07-16 10:19:46', '2023-07-16 10:20:06'),
	(51, 'La technologie dans la salle de classe', 'Évaluation de l\'utilisation des technologies dans l\'enseignement et l\'apprentissage.', '93', 'ea9f4d2e-1f61-449d-b0d0-020f0f0b949b', NULL, 1, '2023-07-16 10:20:40', '2023-07-16 10:21:01'),
	(52, 'Git', 'Il s\'agit d\'un système de contrôle de version distribué qui facilite la collaboration sur des projets de développement de logiciels. Git est utilisé dans de nombreux projets open source.', '94', '8cce0924-3435-4ed3-9221-76b2cc49c3bc', NULL, 1, '2023-07-16 10:21:37', '2023-07-16 10:22:02'),
	(53, 'Apache HTTP Server', 'C\'est le serveur web HTTP le plus utilisé au monde. Il offre de nombreuses fonctionnalités telles que la prise en charge de protocoles sécurisés, un système de fichiers virtuel, et plus encore.', '95', 'bc4722ca-ef77-4387-ba5f-4a4f13f4066c', NULL, 1, '2023-07-16 10:22:34', '2023-07-16 10:22:58'),
	(54, 'L\'avenir du travail à l\'ère de l\'automatisation', 'Évaluation de l\'impact de l\'automatisation et de la robotique sur le travail et l\'emploi.', '96', '3f99af69-396d-41ec-a3ae-1e8166bcdc81', NULL, 1, '2023-07-16 10:23:49', '2023-07-16 10:24:10'),
	(55, 'Technologies d\'énergie renouvelable', 'Étude sur les avancées technologiques récentes dans le domaine des énergies renouvelables et leur potentiel pour l\'avenir.', '97', 'eba07c45-fe98-41b3-b312-f328e560a7c4', NULL, 1, '2023-07-16 10:24:31', '2023-07-16 10:24:56'),
	(56, 'Infrastructure numérique: un pilier de l\'ère numérique', 'Évaluation du rôle de l\'infrastructure numérique dans le soutien à la transition vers une économie numérique.', '98', 'd068135b-cdfc-4254-b15e-76c7b3255279', NULL, 1, '2023-07-16 10:25:25', '2023-07-16 10:25:47'),
	(57, 'L\'importance des infrastructures d\'eau et d\'assainissement', 'Discussion sur le rôle crucial des infrastructures d\'eau et d\'assainissement dans le développement économique et social.', '99', '9a8bc530-2341-4cc1-867d-765cad1ca5da', NULL, 1, '2023-07-16 10:26:14', '2023-07-16 10:26:33'),
	(58, 'Pauvreté et inégalités économiques', 'Étude des causes et des conséquences des inégalités économiques et de la pauvreté.', '100', 'eee3bdc0-fab9-48ba-80c4-a3e1c0435f25', NULL, 1, '2023-07-16 10:27:08', '2023-07-16 10:28:05'),
	(59, 'Droits de l\'homme à l\'ère numérique', 'Discussion sur les défis et les opportunités pour les droits de l\'homme à l\'ère du numérique.', '101', 'f3b29851-211b-424b-9496-ff2d9769a823', NULL, 1, '2023-07-16 10:28:33', '2023-07-16 10:28:56'),
	(60, 'L\'économie du sport professionnel', 'Évaluation des retombées économiques du sport professionnel sur les communautés locales et les économies nationales.', '102', 'd93c0171-8256-499e-ac69-cd2c6108b9fa', NULL, 1, '2023-07-16 10:29:43', '2023-07-16 10:30:14'),
	(61, 'Sport et inclusion sociale', 'Discussion sur le rôle du sport en tant que vecteur d\'inclusion et de cohésion sociale.', '103', 'cabb8375-5081-4024-8f34-3ce3aa8f19af', NULL, 1, '2023-07-16 10:30:41', '2023-07-16 10:31:03'),
	(62, 'Le rôle de l\'éducation dans le développement durable', 'Étude sur la manière dont l\'éducation peut contribuer à atteindre les objectifs de développement durable.', '104', '8b1f235c-f991-4ad8-a3f7-2341f22e557b', NULL, 1, '2023-07-16 10:31:31', '2023-07-16 10:32:18'),
	(63, 'L\'éducation pour l\'inclusion et la diversité', 'Discussion sur les pratiques et politiques éducatives qui favorisent l\'inclusion et respectent la diversité.', '105', 'b036c283-e116-415b-aced-57117f1e2b6b', NULL, 1, '2023-07-16 10:32:42', '2023-07-16 10:33:06'),
	(64, 'PostgreSQL', 'Il s\'agit d\'un système de gestion de base de données relationnelle open source puissant et extensible avec un grand nombre de fonctionnalités intégrées.', '106', 'b9657078-988c-4ddc-bd25-f286c67852b0', NULL, 1, '2023-07-16 10:33:32', '2023-07-16 10:33:57'),
	(65, 'Node.js', 'C\'est un environnement d\'exécution open source pour JavaScript, conçu pour construire des applications de réseau évolutives.', '107', '9ed79b80-1d8b-4d6a-a889-dcdae62a7440', NULL, 1, '2023-07-16 10:34:18', '2023-07-16 10:34:38'),
	(67, 'OpenFlexure', 'OpenFlexure est un microscope développé par des université anglaise et tanzanienne pour aider au diagnostic de la malaria', '114', '9d8c4051-7614-453c-98f5-0eea5a10d6d5', NULL, 1, '2023-07-16 11:20:48', '2023-07-16 12:10:47');

-- Listage de la structure de table gr. project_contents
CREATE TABLE IF NOT EXISTS `project_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project` bigint unsigned NOT NULL,
  `view` bigint unsigned NOT NULL,
  `widget` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contents_project_foreign` (`project`),
  KEY `project_contents_view_foreign` (`view`),
  KEY `project_contents_widget_foreign` (`widget`),
  CONSTRAINT `project_contents_project_foreign` FOREIGN KEY (`project`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_contents_view_foreign` FOREIGN KEY (`view`) REFERENCES `project_views` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_contents_widget_foreign` FOREIGN KEY (`widget`) REFERENCES `project_widgets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.project_contents : ~39 rows (environ)
INSERT INTO `project_contents` (`id`, `project`, `view`, `widget`, `created_at`, `updated_at`) VALUES
	(49, 30, 33, NULL, '2023-07-16 09:26:41', '2023-07-16 09:26:41'),
	(50, 31, 34, NULL, '2023-07-16 09:31:16', '2023-07-16 09:31:16'),
	(51, 32, 35, NULL, '2023-07-16 09:35:06', '2023-07-16 09:35:06'),
	(52, 33, 36, NULL, '2023-07-16 09:38:33', '2023-07-16 09:38:33'),
	(53, 34, 37, NULL, '2023-07-16 09:42:37', '2023-07-16 09:42:37'),
	(54, 35, 38, NULL, '2023-07-16 09:46:21', '2023-07-16 09:46:21'),
	(55, 36, 39, NULL, '2023-07-16 09:52:40', '2023-07-16 09:52:40'),
	(56, 37, 40, NULL, '2023-07-16 09:56:09', '2023-07-16 09:56:09'),
	(57, 38, 41, NULL, '2023-07-16 09:59:08', '2023-07-16 09:59:08'),
	(58, 39, 42, NULL, '2023-07-16 10:00:27', '2023-07-16 10:00:27'),
	(59, 40, 43, NULL, '2023-07-16 10:08:04', '2023-07-16 10:08:04'),
	(60, 41, 44, NULL, '2023-07-16 10:08:51', '2023-07-16 10:08:51'),
	(61, 42, 45, NULL, '2023-07-16 10:10:02', '2023-07-16 10:10:02'),
	(62, 43, 46, NULL, '2023-07-16 10:10:56', '2023-07-16 10:10:56'),
	(63, 44, 47, NULL, '2023-07-16 10:11:59', '2023-07-16 10:11:59'),
	(64, 45, 48, NULL, '2023-07-16 10:13:29', '2023-07-16 10:13:29'),
	(65, 46, 49, NULL, '2023-07-16 10:15:12', '2023-07-16 10:15:12'),
	(66, 47, 50, NULL, '2023-07-16 10:16:04', '2023-07-16 10:16:04'),
	(67, 48, 51, NULL, '2023-07-16 10:17:26', '2023-07-16 10:17:26'),
	(68, 49, 52, NULL, '2023-07-16 10:18:36', '2023-07-16 10:18:36'),
	(69, 50, 53, NULL, '2023-07-16 10:19:47', '2023-07-16 10:19:47'),
	(70, 51, 54, NULL, '2023-07-16 10:20:41', '2023-07-16 10:20:41'),
	(71, 52, 55, NULL, '2023-07-16 10:21:38', '2023-07-16 10:21:38'),
	(72, 53, 56, NULL, '2023-07-16 10:22:34', '2023-07-16 10:22:34'),
	(73, 54, 57, NULL, '2023-07-16 10:23:50', '2023-07-16 10:23:50'),
	(74, 55, 58, NULL, '2023-07-16 10:24:32', '2023-07-16 10:24:32'),
	(75, 56, 59, NULL, '2023-07-16 10:25:25', '2023-07-16 10:25:25'),
	(76, 57, 60, NULL, '2023-07-16 10:26:15', '2023-07-16 10:26:15'),
	(77, 58, 61, NULL, '2023-07-16 10:27:08', '2023-07-16 10:27:08'),
	(78, 59, 62, NULL, '2023-07-16 10:28:34', '2023-07-16 10:28:34'),
	(79, 60, 63, NULL, '2023-07-16 10:29:43', '2023-07-16 10:29:43'),
	(80, 61, 64, NULL, '2023-07-16 10:30:42', '2023-07-16 10:30:42'),
	(81, 62, 65, NULL, '2023-07-16 10:31:31', '2023-07-16 10:31:31'),
	(82, 63, 66, NULL, '2023-07-16 10:32:42', '2023-07-16 10:32:42'),
	(83, 64, 67, NULL, '2023-07-16 10:33:33', '2023-07-16 10:33:33'),
	(84, 65, 68, NULL, '2023-07-16 10:34:19', '2023-07-16 10:34:19'),
	(86, 67, 70, 42, '2023-07-16 11:20:49', '2023-07-16 11:21:45'),
	(87, 67, 70, 43, '2023-07-16 11:27:35', '2023-07-16 11:27:35'),
	(88, 67, 71, 44, '2023-07-16 11:31:08', '2023-07-16 11:33:40'),
	(89, 67, 71, 45, '2023-07-16 11:33:43', '2023-07-16 11:33:43'),
	(91, 67, 72, 47, '2023-07-16 12:26:55', '2023-07-16 12:26:55'),
	(92, 67, 72, 48, '2023-07-16 12:26:58', '2023-07-16 12:26:58'),
	(93, 67, 72, 49, '2023-07-16 12:27:34', '2023-07-16 12:27:34');

-- Listage de la structure de table gr. project_views
CREATE TABLE IF NOT EXISTS `project_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `haut` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hauteur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `css_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_views_project_foreign` (`project`),
  CONSTRAINT `project_views_project_foreign` FOREIGN KEY (`project`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.project_views : ~24 rows (environ)
INSERT INTO `project_views` (`id`, `titre`, `haut`, `hauteur`, `css_id`, `project`, `created_at`, `updated_at`) VALUES
	(33, 'L\'impact de l\'IA sur la santé', '169', '400', 'view_1', 30, '2023-07-16 09:26:40', '2023-07-16 09:30:51'),
	(34, 'La 5G et l\'avenir de la connectivité', '169', '400', 'view_1', 31, '2023-07-16 09:31:16', '2023-07-16 09:32:44'),
	(35, 'L\'urbanisation et l\'infrastructure durable', '169', '400', 'view_1', 32, '2023-07-16 09:35:06', '2023-07-16 09:35:17'),
	(36, 'Impact de la technologie sur le développement des infrastructures', '169', '400', 'view_1', 33, '2023-07-16 09:38:33', '2023-07-16 09:38:44'),
	(37, 'Impact des réseaux sociaux sur la santé mentale', '169', '400', 'view_1', 34, '2023-07-16 09:42:37', '2023-07-16 09:42:46'),
	(38, 'L\'écart salarial entre les genres', '169', '400', 'view_1', 35, '2023-07-16 09:46:21', '2023-07-16 09:46:32'),
	(39, 'Les effets du sport sur la santé mentale', '169', '400', 'view_1', 36, '2023-07-16 09:52:40', '2023-07-16 09:52:48'),
	(40, 'titre view', '169', '400', 'view_1', 37, '2023-07-16 09:56:09', '2023-07-16 09:57:01'),
	(41, 'titre view', '169', '400', 'view_1', 38, '2023-07-16 09:59:08', '2023-07-16 09:59:36'),
	(42, 'titre view', '169', '400', 'view_1', 39, '2023-07-16 10:00:27', '2023-07-16 10:00:48'),
	(43, 'titre view', '169', '400', 'view_1', 40, '2023-07-16 10:08:04', '2023-07-16 10:08:27'),
	(44, 'titre view', '169', '400', 'view_1', 41, '2023-07-16 10:08:51', '2023-07-16 10:08:59'),
	(45, 'titre view', '169', '400', 'view_1', 42, '2023-07-16 10:10:02', '2023-07-16 10:10:29'),
	(46, 'titre view', '169', '400', 'view_1', 43, '2023-07-16 10:10:56', '2023-07-16 10:11:18'),
	(47, 'titre view', '169', '400', 'view_1', 44, '2023-07-16 10:11:59', '2023-07-16 10:12:24'),
	(48, 'titre view', '169', '400', 'view_1', 45, '2023-07-16 10:13:29', '2023-07-16 10:13:58'),
	(49, 'titre view', '169', '400', 'view_1', 46, '2023-07-16 10:15:12', '2023-07-16 10:15:37'),
	(50, 'titre view', '169', '400', 'view_1', 47, '2023-07-16 10:16:04', '2023-07-16 10:16:29'),
	(51, 'titre view', '169', '400', 'view_1', 48, '2023-07-16 10:17:26', '2023-07-16 10:17:50'),
	(52, 'titre view', '169', '400', 'view_1', 49, '2023-07-16 10:18:36', '2023-07-16 10:19:03'),
	(53, 'titre view', '169', '400', 'view_1', 50, '2023-07-16 10:19:47', '2023-07-16 10:20:06'),
	(54, 'titre view', '169', '400', 'view_1', 51, '2023-07-16 10:20:41', '2023-07-16 10:21:01'),
	(55, 'titre view', '169', '400', 'view_1', 52, '2023-07-16 10:21:38', '2023-07-16 10:22:02'),
	(56, 'titre view', '169', '400', 'view_1', 53, '2023-07-16 10:22:34', '2023-07-16 10:22:58'),
	(57, 'titre view', '169', '400', 'view_1', 54, '2023-07-16 10:23:50', '2023-07-16 10:24:10'),
	(58, 'titre view', '169', '400', 'view_1', 55, '2023-07-16 10:24:32', '2023-07-16 10:24:56'),
	(59, 'titre view', '169', '400', 'view_1', 56, '2023-07-16 10:25:25', '2023-07-16 10:25:47'),
	(60, 'titre view', '169', '400', 'view_1', 57, '2023-07-16 10:26:15', '2023-07-16 10:26:33'),
	(61, 'titre view', '169', '400', 'view_1', 58, '2023-07-16 10:27:08', '2023-07-16 10:28:05'),
	(62, 'titre view', '169', '400', 'view_1', 59, '2023-07-16 10:28:34', '2023-07-16 10:28:56'),
	(63, 'titre view', '169', '400', 'view_1', 60, '2023-07-16 10:29:43', '2023-07-16 10:30:14'),
	(64, 'titre view', '169', '400', 'view_1', 61, '2023-07-16 10:30:42', '2023-07-16 10:31:03'),
	(65, 'titre view', '169', '400', 'view_1', 62, '2023-07-16 10:31:31', '2023-07-16 10:32:18'),
	(66, 'titre view', '169', '400', 'view_1', 63, '2023-07-16 10:32:42', '2023-07-16 10:33:06'),
	(67, 'titre view', '169', '400', 'view_1', 64, '2023-07-16 10:33:33', '2023-07-16 10:33:57'),
	(68, 'titre view', '169', '400', 'view_1', 65, '2023-07-16 10:34:19', '2023-07-16 10:34:38'),
	(70, 'Introduction', '169', '946', 'view_1', 67, '2023-07-16 11:20:49', '2023-07-16 11:24:31'),
	(71, 'Liste des matériaux', '1186', '715', 'view_2', 67, '2023-07-16 11:31:08', '2023-07-16 11:36:28'),
	(72, 'La structure Principale', '1973', '576', 'view_3', 67, '2023-07-16 11:39:48', '2023-07-16 11:47:22');

-- Listage de la structure de table gr. project_widgets
CREATE TABLE IF NOT EXISTS `project_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `haut` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gauche` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hauteur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `largeur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `css_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` bigint unsigned DEFAULT NULL,
  `project` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_widgets_content_foreign` (`content`),
  KEY `project_widgets_project_foreign` (`project`),
  CONSTRAINT `project_widgets_content_foreign` FOREIGN KEY (`content`) REFERENCES `files` (`id`) ON DELETE SET NULL,
  CONSTRAINT `project_widgets_project_foreign` FOREIGN KEY (`project`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.project_widgets : ~35 rows (environ)
INSERT INTO `project_widgets` (`id`, `titre`, `haut`, `gauche`, `hauteur`, `largeur`, `css_id`, `type`, `content`, `project`, `created_at`, `updated_at`) VALUES
	(42, 'titre widget', '0', '0', '946', '1198', 'widget_0', NULL, 109, 67, '2023-07-16 11:21:45', '2023-07-16 11:28:24'),
	(43, 'titre widget', '0', '1199', '946', '641', 'widget_1', NULL, 110, 67, '2023-07-16 11:27:35', '2023-07-16 11:31:27'),
	(44, 'titre widget', '0', '0', '715', '921', 'widget_2', NULL, 111, 67, '2023-07-16 11:33:40', '2023-07-16 11:36:28'),
	(45, 'titre widget', '0', '922', '715', '918', 'widget_3', NULL, 112, 67, '2023-07-16 11:33:43', '2023-07-16 11:36:33'),
	(47, 'titre widget', '0', '0', '562', '640', 'widget_5', NULL, 115, 67, '2023-07-16 12:26:55', '2023-07-16 12:29:23'),
	(48, 'titre widget', '0', '1255', '576', '584', 'widget_6', NULL, 116, 67, '2023-07-16 12:26:58', '2023-07-16 12:29:23'),
	(49, 'titre widget', '0', '645', '473', '597', 'widget_7', NULL, 117, 67, '2023-07-16 12:27:34', '2023-07-16 12:27:34');

-- Listage de la structure de table gr. sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.sessions : ~7 rows (environ)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('sxAXwsYrAMxOJeyDLtHtsOj4oEnEXB408WQOqsma', 1, '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYlpIQW9vbjBOUXJtVTlERU1FWFBTalhmekIwenM3REoyelUyazlmayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3QvcHJvamVjdC82NyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkZ3RSNkVQQmxkeU1XVHJxSFhvaWFpZUE5Z1FDb2d1VC5manJUVGk4OEVHOE5wcHUzSEVvSHkiO3M6MTI6InByb2plY3RfdXVpZCI7czozNjoiOWQ4YzQwNTEtNzYxNC00NTNjLTk4ZjUtMGVlYTVhMTBkNmQ1Ijt9', 1689510609);

-- Listage de la structure de table gr. teams
CREATE TABLE IF NOT EXISTS `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.teams : ~0 rows (environ)
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Cedric\'s Team', 1, '2023-06-14 07:27:01', '2023-06-14 07:27:01');

-- Listage de la structure de table gr. team_invitations
CREATE TABLE IF NOT EXISTS `team_invitations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint unsigned NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`),
  CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.team_invitations : ~0 rows (environ)

-- Listage de la structure de table gr. team_user
CREATE TABLE IF NOT EXISTS `team_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.team_user : ~0 rows (environ)

-- Listage de la structure de table gr. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.users : ~0 rows (environ)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 'Cedric', 'ced@mail.fr', NULL, '$2y$10$gtR6EPBldyMWTrqHXoiaieA9gQCoguT.fjrTTi88EG8Nppu3HEoHy', NULL, NULL, NULL, NULL, 1, NULL, '2023-06-14 07:27:01', '2023-07-03 14:11:27');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
