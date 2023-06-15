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
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.failed_jobs : ~0 rows (environ)

-- Listage de la structure de table gr. files
CREATE TABLE IF NOT EXISTS `files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.files : ~4 rows (environ)
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
	(67, 'txt14.txt', '6ccec967-cfb1-4a6d-8907-305b54846949.txt', 'text/plain', '2023-06-15 09:35:35', '2023-06-15 09:35:35');

-- Listage de la structure de table gr. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.migrations : ~0 rows (environ)
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.password_reset_tokens : ~0 rows (environ)

-- Listage de la structure de table gr. personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `miniature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vues` bigint unsigned DEFAULT NULL,
  `author` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_author_foreign` (`author`),
  CONSTRAINT `projects_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.projects : ~21 rows (environ)
INSERT INTO `projects` (`id`, `nom`, `description`, `miniature`, `uuid`, `vues`, `author`, `created_at`, `updated_at`) VALUES
	(6, 'Titre de mon projet', 'Description de mon projet', '7', '6b40d775-7bed-44ef-9f80-85e81580831d', 22, 1, '2023-06-14 08:37:09', '2023-06-14 14:52:21'),
	(7, 'Un autre projet', 'pour tester que tout fonctionne comme prevu', '8', '517d270c-ca51-4561-82a9-25d24e26750b', 12, 1, '2023-06-14 21:12:26', '2023-06-14 21:13:40'),
	(9, 'projet 1', 'description projet 1', '17', '063a5266-4b8d-404a-8f3b-a8a5f8f89db3', 34, 1, '2023-06-15 07:12:17', '2023-06-15 07:14:06'),
	(11, 'Projet 2', 'description du projet 2', '19', '6d00f5a4-9fcd-4456-a781-df3dd1d90ab8', 5, 1, '2023-06-15 07:18:26', '2023-06-15 07:19:03'),
	(12, 'Projet 3', 'Description du Projet 3', '21', 'a14d5945-819b-4654-bb07-ee1eda823a9b', 78, 1, '2023-06-15 07:20:07', '2023-06-15 07:20:38'),
	(13, 'Project 4', 'description du projet 4', '23', '433c90e7-9895-4482-89fe-7bded08fc791', 65, 1, '2023-06-15 08:15:27', '2023-06-15 08:25:45'),
	(15, 'Projet 5', 'Description du projet 5', '26', 'fe2f8641-a2e7-45e9-adaf-9f3544f4e77c', 2, 1, '2023-06-15 08:31:40', '2023-06-15 08:32:07'),
	(16, 'Projet 6', 'Description du projet 6', '27', '85be1bc8-5687-4e1a-ac6f-6f3b7f1ec47b', 6, 1, '2023-06-15 08:32:53', '2023-06-15 08:33:21'),
	(17, 'Projet 7 ', 'Decription du projet 7', '30', 'd81fd875-0dee-44f9-bbf1-543552846e4f', 23, 1, '2023-06-15 08:39:11', '2023-06-15 08:39:38'),
	(18, 'Projet 8 ', 'Description du projet 8', '32', '520aee9f-528e-4900-abfc-33e1c7f3a400', 32, 1, '2023-06-15 08:40:12', '2023-06-15 08:40:39'),
	(19, 'Projet 9', 'Description du projet 9', '34', 'f535488d-e217-4e44-8d39-041be0630a3a', 66, 1, '2023-06-15 08:41:15', '2023-06-15 08:41:34'),
	(20, 'Project 10', 'description du projet 10', '36', 'e79558a4-0edd-4ece-979c-3d1abf43f5e9', 54, 1, '2023-06-15 08:58:43', '2023-06-15 08:59:42'),
	(21, 'The Power of Positive Thinking: Harnessing Optimism for Success', 'This title explores the benefits of adopting a positive mindset and how it can positively impact various aspects of life, including personal growth and achievement.', '39', '10384ee4-616a-474f-be5c-38d2a219d8fc', 5, 1, '2023-06-15 09:04:58', '2023-06-15 09:05:57'),
	(22, 'Unraveling the Mysteries of Deep Space: Journey to the Cosmic Frontier', 'Embark on an awe-inspiring exploration of deep space, delving into the mysteries of the universe, such as black holes, dark matter, and the origins of galaxies.', '42', 'ecd5b7af-5883-4195-8943-95ebb8fcf3b1', 456, 1, '2023-06-15 09:08:11', '2023-06-15 09:08:47'),
	(23, 'The Art of Effective Communication: Unlocking the Secrets of Persuasion', 'Discover the key elements of effective communication and learn how to influence and persuade others through the power of words, body language, and active listening.', '45', '05b287c9-575e-462a-bb88-7bd210be9c6f', 3, 1, '2023-06-15 09:10:05', '2023-06-15 09:10:40'),
	(24, 'From Page to Screen: The Evolution of Storytelling in Film Adaptations', 'Dive into the captivating realm of film adaptations, exploring the creative process behind transforming literary works into visually stunning and emotionally engaging movies.', '50', 'fb9b1805-7246-48ef-b696-99101b3a5383', 543, 1, '2023-06-15 09:12:06', '2023-06-15 09:15:15'),
	(25, 'Unveiling the Wonders of Ancient Civilizations: Secrets of the Past Revealed', 'Embark on an archaeological journey through time, unearthing the secrets and wonders of ancient civilizations, their cultures, architectural marvels, and historical legacies.', '52', '053b3ccf-3b9b-4f20-9a75-5c79c9403787', 54, 1, '2023-06-15 09:18:35', '2023-06-15 09:19:00'),
	(26, 'Mindfulness in the Digital Age: Finding Balance in a Hyperconnected World', 'Discover the transformative practice of mindfulness and explore how it can help individuals find inner peace and balance amidst the fast-paced, technology-driven modern world.', '56', 'd24193e7-72a2-4fee-8c16-7f6fbc058b8a', 863, 1, '2023-06-15 09:24:24', '2023-06-15 09:25:15'),
	(27, 'The Science of Happiness: Unlocking the Secrets to a Fulfilling Life', 'Delve into the field of positive psychology and uncover evidence-based strategies to cultivate happiness, foster resilience, and enhance overall well-being.', '59', '2b81614e-28bf-47b7-89cc-da46468ef3e6', 55, 1, '2023-06-15 09:28:14', '2023-06-15 09:29:07'),
	(28, 'Demystifying Cryptocurrencies: Understanding the Future of Digital Money', 'Navigate the complex world of cryptocurrencies, unraveling the concepts of blockchain technology, decentralized finance, and the potential impact of digital currencies on the global economy.', '62', '1597ed73-cf6a-4c53-8ca4-fa824393c8ef', 87, 1, '2023-06-15 09:33:53', '2023-06-15 09:34:29'),
	(29, 'Culinary Adventures Around the Globe: Exploring World Cuisine and Cultural Delights', 'Embark on a gastronomic journey, discovering the rich diversity of world cuisine, iconic dishes, and culinary traditions from various cultures, igniting a sense of wanderlust and appreciation for global flavors.', '65', 'f81125b5-f57d-45b3-8389-f136a6b5ea1a', 99, 1, '2023-06-15 09:34:51', '2023-06-15 09:35:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.project_contents : ~11 rows (environ)
INSERT INTO `project_contents` (`id`, `project`, `view`, `widget`, `created_at`, `updated_at`) VALUES
	(6, 6, 5, 7, '2023-06-14 08:37:11', '2023-06-14 08:37:24'),
	(7, 6, 5, 8, '2023-06-14 08:37:34', '2023-06-14 08:37:34'),
	(8, 6, 5, 9, '2023-06-14 08:37:47', '2023-06-14 08:37:47'),
	(9, 6, 6, NULL, '2023-06-14 08:54:22', '2023-06-14 08:54:22'),
	(10, 7, 7, 10, '2023-06-14 21:12:27', '2023-06-14 21:12:35'),
	(12, 9, 9, 11, '2023-06-15 07:12:19', '2023-06-15 07:14:31'),
	(14, 11, 11, 12, '2023-06-15 07:18:27', '2023-06-15 07:19:16'),
	(15, 12, 12, NULL, '2023-06-15 07:20:08', '2023-06-15 07:20:08'),
	(16, 12, 13, 13, '2023-06-15 07:20:45', '2023-06-15 07:21:28'),
	(17, 13, 14, 14, '2023-06-15 08:15:28', '2023-06-15 08:25:52'),
	(19, 15, 16, NULL, '2023-06-15 08:31:41', '2023-06-15 08:31:41'),
	(20, 16, 17, 15, '2023-06-15 08:32:54', '2023-06-15 08:33:29'),
	(21, 16, 17, 16, '2023-06-15 08:35:26', '2023-06-15 08:35:26'),
	(22, 17, 18, 17, '2023-06-15 08:39:12', '2023-06-15 08:39:48'),
	(23, 18, 19, 18, '2023-06-15 08:40:13', '2023-06-15 08:40:52'),
	(24, 19, 20, 19, '2023-06-15 08:41:15', '2023-06-15 08:41:40'),
	(25, 20, 21, 20, '2023-06-15 08:58:44', '2023-06-15 08:59:52'),
	(26, 20, 21, 21, '2023-06-15 08:59:59', '2023-06-15 08:59:59'),
	(27, 21, 22, 22, '2023-06-15 09:04:59', '2023-06-15 09:06:12'),
	(28, 21, 22, 23, '2023-06-15 09:06:18', '2023-06-15 09:06:18'),
	(29, 22, 23, 24, '2023-06-15 09:08:12', '2023-06-15 09:08:54'),
	(30, 22, 23, 25, '2023-06-15 09:09:10', '2023-06-15 09:09:10'),
	(31, 23, 24, 26, '2023-06-15 09:10:06', '2023-06-15 09:10:47'),
	(32, 24, 25, 27, '2023-06-15 09:12:07', '2023-06-15 09:12:45'),
	(33, 24, 25, 28, '2023-06-15 09:12:58', '2023-06-15 09:12:58'),
	(34, 24, 26, NULL, '2023-06-15 09:14:46', '2023-06-15 09:14:46'),
	(35, 24, 25, 27, '2023-06-15 09:15:21', '2023-06-15 09:15:21'),
	(36, 25, 27, 29, '2023-06-15 09:18:36', '2023-06-15 09:20:23'),
	(37, 25, 27, 30, '2023-06-15 09:20:27', '2023-06-15 09:20:27'),
	(38, 25, 27, 31, '2023-06-15 09:20:40', '2023-06-15 09:20:40'),
	(39, 26, 28, 32, '2023-06-15 09:24:25', '2023-06-15 09:25:32'),
	(40, 26, 28, 33, '2023-06-15 09:25:42', '2023-06-15 09:25:42'),
	(41, 27, 29, 34, '2023-06-15 09:28:14', '2023-06-15 09:29:39'),
	(42, 27, 29, 35, '2023-06-15 09:29:49', '2023-06-15 09:29:49'),
	(43, 28, 30, 36, '2023-06-15 09:33:54', '2023-06-15 09:34:28'),
	(44, 28, 30, 37, '2023-06-15 09:34:35', '2023-06-15 09:34:35'),
	(45, 29, 31, 38, '2023-06-15 09:34:52', '2023-06-15 09:35:30'),
	(46, 29, 31, 39, '2023-06-15 09:35:35', '2023-06-15 09:35:35');

-- Listage de la structure de table gr. project_views
CREATE TABLE IF NOT EXISTS `project_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `haut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hauteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `css_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_views_project_foreign` (`project`),
  CONSTRAINT `project_views_project_foreign` FOREIGN KEY (`project`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.project_views : ~9 rows (environ)
INSERT INTO `project_views` (`id`, `titre`, `haut`, `hauteur`, `css_id`, `project`, `created_at`, `updated_at`) VALUES
	(5, 'Ma première view', '324', '392', 'view_0', 6, '2023-06-14 08:37:10', '2023-06-14 12:19:53'),
	(6, 'Ma deuxième vue', '787', '400', 'view_1', 6, '2023-06-14 08:54:21', '2023-06-14 12:19:53'),
	(7, 'Une vue dans un projet', '324', '400', 'view_0', 7, '2023-06-14 21:12:27', '2023-06-14 21:13:45'),
	(9, 'Vue du projet 1', '324', '400', 'view_0', 9, '2023-06-15 07:12:19', '2023-06-15 07:14:06'),
	(11, 'Vue du projet 2', '324', '400', 'view_0', 11, '2023-06-15 07:18:27', '2023-06-15 07:19:08'),
	(12, 'Vue du projet 3', '324', '400', 'view_0', 12, '2023-06-15 07:20:08', '2023-06-15 07:20:43'),
	(13, 'deuxième vue du projet 3', '795', '400', 'view_1', 12, '2023-06-15 07:20:45', '2023-06-15 07:20:57'),
	(14, 'Vue du projet 4', '324', '400', 'view_0', 13, '2023-06-15 08:15:28', '2023-06-15 08:25:50'),
	(16, 'Vue du projet 5', '324', '400', 'view_0', 15, '2023-06-15 08:31:41', '2023-06-15 08:32:07'),
	(17, 'Vue du projet 6', '324', '400', 'view_0', 16, '2023-06-15 08:32:54', '2023-06-15 08:33:26'),
	(18, 'Vue du projet 7', '324', '400', 'view_0', 17, '2023-06-15 08:39:12', '2023-06-15 08:39:43'),
	(19, 'vue du projet 8', '324', '400', 'view_0', 18, '2023-06-15 08:40:13', '2023-06-15 08:40:40'),
	(20, 'Vue du projet 9', '324', '400', 'view_0', 19, '2023-06-15 08:41:15', '2023-06-15 08:41:34'),
	(21, 'Vue du projet 10', '324', '400', 'view_0', 20, '2023-06-15 08:58:44', '2023-06-15 08:59:47'),
	(22, 'Positive thinking', '324', '400', 'view_0', 21, '2023-06-15 09:04:59', '2023-06-15 09:06:07'),
	(23, 'Deep Space', '324', '400', 'view_0', 22, '2023-06-15 09:08:12', '2023-06-15 09:08:51'),
	(24, 'Communication', '324', '400', 'view_0', 23, '2023-06-15 09:10:06', '2023-06-15 09:10:40'),
	(25, 'Storytelling', '324', '400', 'view_0', 24, '2023-06-15 09:12:07', '2023-06-15 09:15:15'),
	(26, 'Storytelling', '324', '400', 'view_0', 24, '2023-06-15 09:14:46', '2023-06-15 09:15:16'),
	(27, 'Ancient Civilization', '324', '400', 'view_0', 25, '2023-06-15 09:18:36', '2023-06-15 09:19:10'),
	(28, 'Finding Balance', '324', '400', 'view_0', 26, '2023-06-15 09:24:25', '2023-06-15 09:25:16'),
	(29, 'Unlocking the secret', '324', '400', 'view_0', 27, '2023-06-15 09:28:14', '2023-06-15 09:29:31'),
	(30, 'Crypto', '324', '400', 'view_0', 28, '2023-06-15 09:33:54', '2023-06-15 09:34:29'),
	(31, 'World Cuisine', '324', '400', 'view_0', 29, '2023-06-15 09:34:51', '2023-06-15 09:35:32');

-- Listage de la structure de table gr. project_widgets
CREATE TABLE IF NOT EXISTS `project_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `haut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gauche` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hauteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `largeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `css_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` bigint unsigned DEFAULT NULL,
  `project` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_widgets_content_foreign` (`content`),
  KEY `project_widgets_project_foreign` (`project`),
  CONSTRAINT `project_widgets_content_foreign` FOREIGN KEY (`content`) REFERENCES `files` (`id`) ON DELETE SET NULL,
  CONSTRAINT `project_widgets_project_foreign` FOREIGN KEY (`project`) REFERENCES `projects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.project_widgets : ~8 rows (environ)
INSERT INTO `project_widgets` (`id`, `titre`, `haut`, `gauche`, `hauteur`, `largeur`, `css_id`, `type`, `content`, `project`, `created_at`, `updated_at`) VALUES
	(7, 'titre widget', '0', '0', '392', '488', 'widget_0', NULL, 7, 6, '2023-06-14 08:37:23', '2023-06-14 08:55:05'),
	(8, 'titre widget', '40', '1190', '286', '626', 'widget_1', NULL, 8, 6, '2023-06-14 08:37:34', '2023-06-14 08:40:12'),
	(9, 'titre widget', '32', '580', '336', '532', 'widget_2', NULL, 9, 6, '2023-06-14 08:37:47', '2023-06-14 14:54:43'),
	(10, 'titre widget', '5', '6', '200', '1827', 'widget_0', NULL, 15, 7, '2023-06-14 21:12:35', '2023-06-15 12:47:41'),
	(11, 'titre widget', '25', '25', '316', '1142', 'widget_0', 'text/plain', 18, 9, '2023-06-15 07:14:30', '2023-06-15 07:14:49'),
	(12, 'titre widget', '20', '40', '350', '410', 'widget_0', 'text/plain', 20, 11, '2023-06-15 07:19:16', '2023-06-15 07:19:37'),
	(13, 'titre widget', '165', '890', '200', '400', 'widget_1', NULL, 22, 12, '2023-06-15 07:21:28', '2023-06-15 07:22:55'),
	(14, 'titre widget', '25', '40', '340', '1730', 'widget_0', 'text/plain', 24, 13, '2023-06-15 08:25:52', '2023-06-15 08:26:09'),
	(15, 'titre widget', '15', '15', '368', '410', 'widget_0', 'image/jpeg', 28, 16, '2023-06-15 08:33:28', '2023-06-15 08:33:34'),
	(16, 'titre widget', '47', '542', '281', '1144', 'widget_1', 'text/plain', 29, 16, '2023-06-15 08:35:26', '2023-06-15 08:35:44'),
	(17, 'titre widget', '5', '0', '389', '1840', 'widget_0', 'text/plain', 31, 17, '2023-06-15 08:39:48', '2023-06-15 08:39:57'),
	(18, 'titre widget', '45', '100', '297', '445', 'widget_0', 'image/jpeg', 33, 18, '2023-06-15 08:40:52', '2023-06-15 08:40:58'),
	(19, 'titre widget', '10', '10', '378', '1789', 'widget_0', 'text/plain', 35, 19, '2023-06-15 08:41:40', '2023-06-15 08:41:46'),
	(20, 'titre widget', '20', '95', '357', '400', 'widget_0', 'image/jpeg', 37, 20, '2023-06-15 08:59:52', '2023-06-15 08:59:56'),
	(21, 'titre widget', '85', '955', '200', '800', 'widget_1', 'image/jpeg', 38, 20, '2023-06-15 08:59:59', '2023-06-15 09:00:07'),
	(22, 'titre widget', '40', '60', '263', '444', 'widget_0', 'image/jpeg', 40, 21, '2023-06-15 09:06:12', '2023-06-15 09:06:15'),
	(23, 'titre widget', '30', '620', '294', '900', 'widget_1', 'text/plain', 41, 21, '2023-06-15 09:06:18', '2023-06-15 09:06:24'),
	(24, 'titre widget', '15', '1390', '340', '400', 'widget_0', 'image/jpeg', 43, 22, '2023-06-15 09:08:54', '2023-06-15 09:09:02'),
	(25, 'titre widget', '35', '125', '332', '631', 'widget_1', 'text/plain', 44, 22, '2023-06-15 09:09:10', '2023-06-15 09:09:22'),
	(26, 'titre widget', '60', '95', '243', '1579', 'widget_0', 'image/jpeg', 46, 23, '2023-06-15 09:10:47', '2023-06-15 09:10:57'),
	(27, 'titre widget', '20', '55', '339', '448', 'widget_0', 'image/jpeg', 51, 24, '2023-06-15 09:12:44', '2023-06-15 09:15:31'),
	(28, 'titre widget', '24', '570', '276', '1089', 'widget_1', 'text/plain', 49, 24, '2023-06-15 09:12:58', '2023-06-15 09:13:12'),
	(29, 'titre widget', '30', '820', '323', '400', 'widget_0', 'image/jpeg', 53, 25, '2023-06-15 09:20:22', '2023-06-15 09:20:37'),
	(30, 'titre widget', '30', '75', '319', '708', 'widget_1', 'text/plain', 54, 25, '2023-06-15 09:20:27', '2023-06-15 09:20:37'),
	(31, 'titre widget', '15', '1250', '360', '561', 'widget_2', 'text/plain', 55, 25, '2023-06-15 09:20:40', '2023-06-15 09:21:07'),
	(32, 'titre widget', '30', '135', '311', '522', 'widget_0', 'image/jpeg', 57, 26, '2023-06-15 09:25:32', '2023-06-15 09:25:37'),
	(33, 'titre widget', '20', '730', '231', '918', 'widget_1', 'text/plain', 58, 26, '2023-06-15 09:25:42', '2023-06-15 09:25:49'),
	(34, 'titre widget', '35', '80', '308', '473', 'widget_0', 'image/jpeg', 60, 27, '2023-06-15 09:29:38', '2023-06-15 09:29:44'),
	(35, 'titre widget', '35', '660', '200', '1090', 'widget_1', 'text/plain', 61, 27, '2023-06-15 09:29:49', '2023-06-15 09:29:59'),
	(36, 'titre widget', '70', '105', '200', '400', 'widget_0', 'image/jpeg', 63, 28, '2023-06-15 09:34:28', '2023-06-15 09:34:29'),
	(37, 'titre widget', '0', '510', '329', '1076', 'widget_1', 'text/plain', 64, 28, '2023-06-15 09:34:35', '2023-06-15 09:34:39'),
	(38, 'titre widget', '0', '0', '368', '529', 'widget_0', 'image/jpeg', 66, 29, '2023-06-15 09:35:30', '2023-06-15 09:35:32'),
	(39, 'titre widget', '10', '596', '346', '987', 'widget_1', 'text/plain', 67, 29, '2023-06-15 09:35:35', '2023-06-15 09:35:47');

-- Listage de la structure de table gr. sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.sessions : ~0 rows (environ)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('4Xz9dkE4mPM7kHNVhFktxvGxLj6debfEZpqCqyiz', 1, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoickdWcjNzV29LRGNwTGd4dGJ4cmdJZnV5Vm0weE5KaWk2UDdUOWVXSiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE2OiJodHRwOi8vbG9jYWxob3N0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRndFI2RVBCbGR5TVdUcnFIWG9pYWllQTlnUUNvZ3VULmZqclRUaTg4RUc4TnBwdTNIRW9IeSI7fQ==', 1686840123),
	('EXnl6RAjWuUNj95OH3zH5tAsoA2qOuRPkoqVFOnW', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTFtVDNJeDdrUXlYeFd2TWNUSHFYU1E1TFhJZmp2a3ZYSzlrQ1pUeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9sb2NhbGhvc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1686836665),
	('VE3xWdLqoDKaLgO3zAjQcLHNzWj0Q9oEd5lNl3Va', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibmJmVmZQemFvNGhVZWZqb0RHT2FCY1E5dHBXb3FwMU0zeDRuTVN2RCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdC9sb2FkUHJvamVjdC8xNCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0L2xvYWRQcm9qZWN0LzE0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1686836665);

-- Listage de la structure de table gr. teams
CREATE TABLE IF NOT EXISTS `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.team_user : ~0 rows (environ)

-- Listage de la structure de table gr. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.users : ~1 rows (environ)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 'Cedric', 'ced@mail.fr', NULL, '$2y$10$gtR6EPBldyMWTrqHXoiaieA9gQCoguT.fjrTTi88EG8Nppu3HEoHy', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 07:27:01', '2023-06-14 07:27:01');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
