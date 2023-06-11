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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.files : ~0 rows (environ)
INSERT INTO `files` (`id`, `original_filename`, `filename`, `type`, `created_at`, `updated_at`) VALUES
	(1, 'grasses-gf97ec38a2-1280.jpg', '986ee7c6-b138-40c5-88e2-46d265a31820.jpg', 'image/jpeg', '2023-06-11 19:18:55', '2023-06-11 19:18:55'),
	(2, 'grasses-gf97ec38a2-1280.jpg', '1f96a926-8901-4b6a-9a43-168d83edb0f1.jpg', 'image/jpeg', '2023-06-11 19:27:38', '2023-06-11 19:27:38'),
	(3, 'grasses-gf97ec38a2-1280.jpg', '91066124-730b-4461-88e5-78726bd71f00.jpg', 'image/jpeg', '2023-06-11 19:53:22', '2023-06-11 19:53:22'),
	(4, 'grasses-gf97ec38a2-1280.jpg', '57cc30e2-a8db-49ff-840b-9e53a57a5159.jpg', 'image/jpeg', '2023-06-11 19:54:54', '2023-06-11 19:54:54'),
	(5, 'grasses-gf97ec38a2-1280.jpg', '06f2b44e-cd84-4b07-aac8-9b93c1e7321f.jpg', 'image/jpeg', '2023-06-11 19:56:42', '2023-06-11 19:56:42'),
	(6, 'grasses-gf97ec38a2-1280.jpg', '1020a052-4c07-4fd5-8745-5a752fbbd97b.jpg', 'image/jpeg', '2023-06-11 19:58:08', '2023-06-11 19:58:08'),
	(7, 'grasses-gf97ec38a2-1280.jpg', 'f04687ff-c625-449f-a9b5-10beb6b87916.jpg', 'image/jpeg', '2023-06-11 20:00:29', '2023-06-11 20:00:29'),
	(8, 'grasses-gf97ec38a2-1280.jpg', '3d865939-46f9-460d-9d90-07d8f32dcece.jpg', 'image/jpeg', '2023-06-11 20:02:34', '2023-06-11 20:02:34'),
	(9, 'grasses-gf97ec38a2-1280.jpg', '2788381b-5679-4c0a-acb5-e7c7d46e0141.jpg', 'image/jpeg', '2023-06-11 20:03:34', '2023-06-11 20:03:34'),
	(10, 'grasses-gf97ec38a2-1280.jpg', 'cec63e64-8dbe-4d49-906e-285e6f59e83d.jpg', 'image/jpeg', '2023-06-11 20:04:21', '2023-06-11 20:04:21'),
	(11, 'grasses-gf97ec38a2-1280.jpg', 'e734d7b8-8e53-49b9-9b76-363d349f6956.jpg', 'image/jpeg', '2023-06-11 20:05:40', '2023-06-11 20:05:40'),
	(12, 'grasses-gf97ec38a2-1280.jpg', '1eff6714-702f-40d8-8c0c-e33951f24393.jpg', 'image/jpeg', '2023-06-11 20:07:26', '2023-06-11 20:07:26'),
	(13, 'meadowsweet-ga44be90fc-1280.jpg', 'c837aa13-32d2-49a5-a501-16dabe96d335.jpg', 'image/jpeg', '2023-06-11 20:13:09', '2023-06-11 20:13:09'),
	(14, 'grasses-gf97ec38a2-1280.jpg', '4e24ef27-b945-4109-b446-c6b30ad36356.jpg', 'image/jpeg', '2023-06-11 20:18:30', '2023-06-11 20:18:30'),
	(15, 'meadowsweet-ga44be90fc-1280.jpg', '3c1551f3-2be6-446d-88f1-4c99e575edb4.jpg', 'image/jpeg', '2023-06-11 20:19:01', '2023-06-11 20:19:01'),
	(16, 'meadowsweet-ga44be90fc-1280.jpg', 'ab467554-5907-4efd-a617-48205bdf0a52.jpg', 'image/jpeg', '2023-06-11 20:19:30', '2023-06-11 20:19:30');

-- Listage de la structure de table gr. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
	(10, '2023_04_14_190612_project', 1),
	(11, '2023_04_14_190613_file_upload', 1),
	(12, '2023_04_14_190640_project_view', 1),
	(13, '2023_04_14_190650_project_widget', 1),
	(14, '2023_04_14_211148_project_content', 1),
	(40, '2014_10_12_000000_create_users_table', 1),
	(41, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(42, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(43, '2019_08_19_000000_create_failed_jobs_table', 1),
	(44, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(45, '2020_05_21_100000_create_teams_table', 1),
	(46, '2020_05_21_200000_create_team_user_table', 1),
	(47, '2020_05_21_300000_create_team_invitations_table', 1),
	(48, '2023_03_15_175513_create_sessions_table', 1),
	(49, '2023_04_14_190612_project', 1),
	(50, '2023_04_14_190640_project_view', 1),
	(51, '2023_04_14_190650_project_widget', 1),
	(52, '2023_04_14_211148_project_content', 1);

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
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.projects : ~2 rows (environ)
INSERT INTO `projects` (`id`, `nom`, `description`, `miniature`, `uuid`, `created_at`, `updated_at`) VALUES
	(15, NULL, NULL, NULL, '86b04f17-d6da-4d30-9ccf-84739c23d334', '2023-06-11 19:09:35', '2023-06-11 19:09:35'),
	(16, NULL, NULL, NULL, 'e0fc6295-e68b-4860-ab50-508831040216', '2023-06-11 19:10:24', '2023-06-11 19:10:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.project_contents : ~2 rows (environ)
INSERT INTO `project_contents` (`id`, `project`, `view`, `widget`, `created_at`, `updated_at`) VALUES
	(40, 15, 34, 20, '2023-06-11 20:15:21', '2023-06-11 20:18:31'),
	(42, 15, 34, 22, '2023-06-11 20:19:30', '2023-06-11 20:19:30');

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.project_views : ~1 rows (environ)
INSERT INTO `project_views` (`id`, `titre`, `haut`, `hauteur`, `css_id`, `project`, `created_at`, `updated_at`) VALUES
	(34, 'Titre de ma view', '320', '400', 'view_0', 15, '2023-06-11 20:15:21', '2023-06-11 20:17:43');

-- Listage de la structure de table gr. project_widgets
CREATE TABLE IF NOT EXISTS `project_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `haut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gauche` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hauteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `largeur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `css_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.project_widgets : ~2 rows (environ)
INSERT INTO `project_widgets` (`id`, `titre`, `haut`, `gauche`, `hauteur`, `largeur`, `css_id`, `type`, `content`, `project`, `created_at`, `updated_at`) VALUES
	(20, 'titre widget', '30', '15', '348', '644', 'widget_1', NULL, 14, 15, '2023-06-11 20:18:30', '2023-06-11 20:19:12'),
	(22, 'titre widget', '25', '1150', '349', '676', 'widget_3', NULL, 16, 15, '2023-06-11 20:19:30', '2023-06-11 20:21:25');

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
	('1wB90nIG44dklxrfAWPGV0gJ3QXRp8lUXhU4WAr9', 1, '172.27.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOTB4Wng3UjdMa2hsUkZ1UWVvZ3NmR2pHNElHTHNHdFJVVFdiSFRkNiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0L2xvYWRQcm9qZWN0LzE1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRGcUpjd0RkNnQ0L0luUnB5aDZkSy9PVlVrcno0emRFbjV0M1R6NWZSWTBuMDhwM1EycUVFSyI7fQ==', 1686514885),
	('5DOFEssMowuy2bbzAcM17ylgUvOW1Q5qn0bGQYbp', NULL, '172.27.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOGdsM3g1WlJOM29BQkpFTUNPV2xBSXlFNnJJT3QyYmFUOTdHemtuWCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdC9uZXdQcm9qZWN0Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3QvbmV3UHJvamVjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1686510642),
	('fLIwAwgKPeRNRp6i1b5ris44OR4C5B65XeqHv7Zj', NULL, '172.27.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickdsU1VNNU54S3Q2bG1sTm5HMHNpbXd2YnhaS09UODQyNlV0SE9oZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9sb2NhbGhvc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1686510642);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gr.teams : ~0 rows (environ)
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Cedric\'s Team', 1, '2023-04-18 18:55:38', '2023-04-18 18:55:38'),
	(2, 1, 'Machin', 0, '2023-04-22 14:38:48', '2023-04-22 14:38:48');

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

-- Listage des données de la table gr.users : ~0 rows (environ)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 'Cedric', 'ced@mail.fr', NULL, '$2y$10$FqJcwDd6t4/InRpyh6dK/OVUkrz4zdEn5t3Tz5fRY0n08p3Q2qEEK', NULL, NULL, NULL, NULL, 2, NULL, '2023-04-18 18:55:38', '2023-05-17 12:57:41');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
