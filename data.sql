-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
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


-- Dumping database structure for minigame_hoang
CREATE DATABASE IF NOT EXISTS `minigame_hoang` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `minigame_hoang`;

-- Dumping structure for table minigame_hoang.failed_jobs
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

-- Dumping data for table minigame_hoang.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table minigame_hoang.game_data
CREATE TABLE IF NOT EXISTS `game_data` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `list_flips` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `active_flip` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table minigame_hoang.game_data: ~0 rows (approximately)

-- Dumping structure for table minigame_hoang.log_activity
CREATE TABLE IF NOT EXISTS `log_activity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int DEFAULT NULL COMMENT '1/ hoàn thành nhiệm vụ, 2/ tham gia sự kiện',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table minigame_hoang.log_activity: ~11 rows (approximately)
INSERT INTO `log_activity` (`id`, `user_id`, `reason`, `created_at`, `updated_at`, `type`) VALUES
	(32, 7, 'Hoàn thành nhiệm vụ6 tại bảng thử thách.', '2023-09-05 08:15:02', '2023-09-05 08:15:02', 2),
	(33, 7, 'Hoàn thành nhiệm vụ1 tại bảng thử thách.', '2023-09-05 08:15:02', '2023-09-05 08:15:02', 2),
	(34, 7, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', '2023-09-05 08:15:20', '2023-09-05 08:15:20', 2),
	(35, 7, 'Hoàn thành nhiệm vụ4 tại bảng thử thách.', '2023-09-05 08:15:20', '2023-09-05 08:15:20', 2),
	(36, 7, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', '2023-09-05 08:16:58', '2023-09-05 08:16:58', 2),
	(37, 7, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', '2023-09-05 09:24:37', '2023-09-05 09:24:37', 2),
	(38, 7, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', '2023-09-05 09:25:24', '2023-09-05 09:25:24', 2),
	(39, 7, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', '2023-09-05 09:34:58', '2023-09-05 09:34:58', 2),
	(40, 7, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', '2023-09-05 09:37:49', '2023-09-05 09:37:49', 2),
	(41, 7, 'Hoàn thành nhiệm vụ5 tại bảng thử thách.', '2023-09-05 09:38:48', '2023-09-05 09:38:48', 2),
	(42, 7, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', '2023-09-05 09:38:52', '2023-09-05 09:38:52', 2);

-- Dumping structure for table minigame_hoang.log_item
CREATE TABLE IF NOT EXISTS `log_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `old` int DEFAULT NULL,
  `new` int DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_type` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `record` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table minigame_hoang.log_item: ~14 rows (approximately)
INSERT INTO `log_item` (`id`, `user_id`, `old`, `new`, `reason`, `item_type`, `created_at`, `updated_at`, `record`) VALUES
	(22, 7, 0, 5, 'Nhận thưởng nhiệm vụ 1', 2, '2023-09-05 08:15:07', '2023-09-05 08:15:07', 5),
	(23, 7, 5, 0, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', 2, '2023-09-05 08:15:20', '2023-09-05 08:15:20', -5),
	(24, 7, 0, 5, 'Nhận thưởng nhiệm vụ 6', 2, '2023-09-05 08:16:54', '2023-09-05 08:16:54', 5),
	(25, 7, 5, 0, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', 2, '2023-09-05 08:16:58', '2023-09-05 08:16:58', -5),
	(26, 7, 0, 10, 'chiến thắng thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', 1, '2023-09-05 08:17:39', '2023-09-05 08:17:39', 10),
	(27, 7, 0, 5, 'Nhận thưởng nhiệm vụ 4', 2, '2023-09-05 08:21:40', '2023-09-05 08:21:40', 5),
	(28, 7, 5, 0, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', 2, '2023-09-05 09:24:37', '2023-09-05 09:24:37', -5),
	(29, 7, 100, 95, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', 2, '2023-09-05 09:25:24', '2023-09-05 09:25:24', -5),
	(30, 7, 10, 20, 'chiến thắng thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', 1, '2023-09-05 09:27:20', '2023-09-05 09:27:20', 10),
	(31, 7, 95, 90, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', 2, '2023-09-05 09:34:58', '2023-09-05 09:34:58', -5),
	(32, 7, 90, 85, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', 2, '2023-09-05 09:37:49', '2023-09-05 09:37:49', -5),
	(33, 7, 20, 30, 'chiến thắng thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', 1, '2023-09-05 09:38:48', '2023-09-05 09:38:48', 10),
	(34, 7, 85, 80, 'Tham gia thử thách Bài Trùng tại Nhà Thi Đấu Xoẹt Xoẹt.', 2, '2023-09-05 09:38:52', '2023-09-05 09:38:52', -5),
	(35, 7, 80, 95, 'Nhận thưởng nhiệm vụ 5', 2, '2023-09-05 09:44:46', '2023-09-05 09:44:46', 15);

-- Dumping structure for table minigame_hoang.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table minigame_hoang.migrations: ~10 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(25, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
	(26, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
	(27, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
	(28, '2016_06_01_000004_create_oauth_clients_table', 2),
	(29, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
	(30, '2019_12_14_000001_create_personal_access_tokens_table', 2),
	(31, '2021_07_23_180023_remove_unusable_columns_from_users_table', 2);

-- Dumping structure for table minigame_hoang.minigame
CREATE TABLE IF NOT EXISTS `minigame` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `list_flips` text COLLATE utf8mb4_general_ci,
  `active_flips` text COLLATE utf8mb4_general_ci,
  `flag` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table minigame_hoang.minigame: ~7 rows (approximately)
INSERT INTO `minigame` (`id`, `user_id`, `list_flips`, `active_flips`, `flag`, `created_at`, `updated_at`) VALUES
	(78, 7, '[{"active":0,"type":2},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":5},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":5},{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":3},{"active":0,"type":4},{"active":0,"type":3},{"active":0,"type":5},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":4}]', '{"active_flip":[{"active":2,"type":2,"color":"red"},{"active":2,"type":2,"color":"red"},{"active":2,"type":3,"color":"green"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":2,"color":"red"},{"active":2,"type":2,"color":"red"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":3,"color":"green"},{"active":2,"type":3,"color":"green"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":3,"color":"green"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":2,"color":"red"},{"active":1,"type":5,"color":"orange"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":2,"color":"red"},{"active":1,"type":4,"color":"pink"},{"active":2,"type":1,"color":"blue"},{"active":1,"type":1,"color":"blue"},{"active":1,"type":1,"color":"blue"},{"active":2,"type":3,"color":"green"},{"active":1,"type":2,"color":"red"},{"active":1,"type":5,"color":"orange"},{"active":2,"type":3,"color":"green"},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":1,"type":3,"color":"green"},{"active":1,"type":2,"color":"red"},{"active":1,"type":4,"color":"pink"}],"choises":[],"waiting":[2,3,4,3,5,3],"save_waiting":[]}', 0, '2023-09-05 08:15:20', '2023-09-05 08:16:44'),
	(79, 7, '[{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":5},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":3},{"active":0,"type":5},{"active":0,"type":3},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":5},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":3},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":1}]', '{"active_flip":[{"active":2,"type":5,"color":"orange"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":2,"color":"red"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":2,"color":"red"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":3,"color":"green"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":3,"color":"green"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":2,"color":"red"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":2,"color":"red"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":2,"color":"red"},{"active":2,"type":2,"color":"red"},{"active":2,"type":3,"color":"green"},{"active":2,"type":3,"color":"green"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":3,"color":"green"},{"active":2,"type":3,"color":"green"},{"active":2,"type":3,"color":"green"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":2,"color":"red"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":3,"color":"green"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":3,"color":"green"},{"active":2,"type":2,"color":"red"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":2,"color":"red"},{"active":2,"type":1,"color":"blue"}],"choises":[],"waiting":[2,4],"save_waiting":[]}', 0, '2023-09-05 08:16:58', '2023-09-05 08:17:39'),
	(80, 7, '[{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":2},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":4},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":2}]', '{"active_flip":[{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0}],"choises":[],"waiting":[]}', 0, '2023-09-05 09:24:37', '2023-09-05 09:24:37'),
	(81, 7, '[{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":3},{"active":0,"type":4},{"active":0,"type":3},{"active":0,"type":5},{"active":0,"type":3},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":4},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":2},{"active":0,"type":1},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":4},{"active":0,"type":2}]', '{"active_flip":[{"active":2,"type":1,"color":"blue"},{"active":2,"type":3,"color":"green"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":2,"color":"red"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":3,"color":"green"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":3,"color":"green"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":3,"color":"green"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":2,"color":"red"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":2,"color":"red"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":3,"color":"green"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":3,"color":"green"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":3,"color":"green"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":2,"color":"red"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":2,"color":"red"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":2,"color":"red"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":2,"color":"red"},{"active":2,"type":2,"color":"red"},{"active":2,"type":3,"color":"green"},{"active":2,"type":3,"color":"green"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":2,"color":"red"}],"choises":[],"waiting":[5,4],"save_waiting":[]}', 0, '2023-09-05 09:25:24', '2023-09-05 09:27:20'),
	(82, 7, '[{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":3},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":4},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":2},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":3}]', '{"active_flip":[{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0}],"choises":[],"waiting":[]}', 0, '2023-09-05 09:34:58', '2023-09-05 09:34:58'),
	(83, 7, '[{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":4},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":5},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":4},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":5},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":4}]', '{"active_flip":[{"active":2,"type":1,"color":"blue"},{"active":2,"type":2,"color":"red"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":2,"color":"red"},{"active":2,"type":3,"color":"green"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":2,"color":"red"},{"active":2,"type":3,"color":"green"},{"active":2,"type":3,"color":"green"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":2,"color":"red"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":2,"color":"red"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":2,"color":"red"},{"active":2,"type":3,"color":"green"},{"active":2,"type":2,"color":"red"},{"active":2,"type":2,"color":"red"},{"active":2,"type":3,"color":"green"},{"active":2,"type":3,"color":"green"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":4,"color":"pink"},{"active":2,"type":2,"color":"red"},{"active":2,"type":3,"color":"green"},{"active":2,"type":5,"color":"orange"},{"active":2,"type":3,"color":"green"},{"active":2,"type":3,"color":"green"},{"active":2,"type":1,"color":"blue"},{"active":2,"type":4,"color":"pink"}],"choises":[],"waiting":[2],"save_waiting":[]}', 0, '2023-09-05 09:37:49', '2023-09-05 09:38:48'),
	(84, 7, '[{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":1},{"active":0,"type":3},{"active":0,"type":3},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":2},{"active":0,"type":5},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":3},{"active":0,"type":1},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":5},{"active":0,"type":3},{"active":0,"type":4},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":2},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":4},{"active":0,"type":3},{"active":0,"type":2},{"active":0,"type":1},{"active":0,"type":4},{"active":0,"type":1},{"active":0,"type":5},{"active":0,"type":5},{"active":0,"type":1},{"active":0,"type":2},{"active":0,"type":5}]', '{"active_flip":[{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0},{"active":0,"type":0}],"choises":[],"waiting":[]}', 0, '2023-09-05 09:38:52', '2023-09-05 09:38:52');

-- Dumping structure for table minigame_hoang.minigame_quests
CREATE TABLE IF NOT EXISTS `minigame_quests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `quests` text COLLATE utf8mb4_general_ci,
  `date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table minigame_hoang.minigame_quests: ~1 rows (approximately)
INSERT INTO `minigame_quests` (`id`, `user_id`, `quests`, `date`, `created_at`, `updated_at`) VALUES
	(25, 7, '[{"name":"\\u0110i\\u1ec3m danh \\u0111\\u1ebfn tr\\u01b0\\u1eddng h\\u00e0ng ng\\u00e0y 1","type":"0","total_attempts":1,"current_attempts":1,"is_reward":1,"diamond_reward":5},{"name":"M\\u1eddi 10 ph\\u00f9 th\\u1ee7y \\u0111i h\\u1ecdc chung","type":"1","total_attempts":10,"current_attempts":0,"is_reward":0,"diamond_reward":10},{"name":"\\u0110\\u01b0\\u1ee3c 10 ph\\u00f9 th\\u1ee7y kh\\u00e1c nhau r\\u1ee7 \\u0111i h\\u1ecdc chung","type":"2","total_attempts":10,"current_attempts":0,"is_reward":0,"diamond_reward":10},{"name":"Tham gia l\\u1edbp th\\u1ec3 thao ph\\u00f9 th\\u1ee7y t\\u1ea1i Nh\\u00e0 Thi \\u0110\\u1ea5u Xo\\u1eb9t Xo\\u1eb9t m\\u1ed7i ng\\u00e0y","type":"3","total_attempts":1,"current_attempts":1,"is_reward":1,"diamond_reward":5},{"name":"Chi\\u1ebfn th\\u1eafng th\\u1eed th\\u00e1ch t\\u1ea1i Nh\\u00e0 Thi \\u0110\\u1ea5u Xo\\u1eb9t Xo\\u1eb9t","type":"4","total_attempts":3,"current_attempts":3,"is_reward":1,"diamond_reward":15},{"name":"Gh\\u00e9 th\\u0103m Th\\u01b0 Vi\\u1ec7n To\\u00e0n Tri m\\u1ed7i ng\\u00e0y","type":"5","total_attempts":1,"current_attempts":1,"is_reward":1,"diamond_reward":5},{"name":"Ho\\u00e0n th\\u00e0nh 6 nhi\\u1ec7m v\\u1ee5 \\u0111\\u1ea7u ti\\u00ean","type":"6","total_attempts":1,"current_attempts":0,"is_reward":0,"diamond_reward":5},{"name":"Thu th\\u1eadp \\u0111\\u01b0\\u1ee3c 5 l\\u00f4ng k\\u1ef3 l\\u00e2n\\/ng\\u00e0y","type":"7","total_attempts":5,"current_attempts":0,"is_reward":0,"diamond_reward":5},{"name":"Thu th\\u1eadp \\u0111\\u01b0\\u1ee3c 15 l\\u00f4ng k\\u1ef3 l\\u00e2n\\/ng\\u00e0y","type":"8","total_attempts":15,"current_attempts":0,"is_reward":0,"diamond_reward":5},{"name":"Th\\u1eafp s\\u00e1ng 1 m\\u1ea3nh mosaic \\u1edf  s\\u1ea3nh tr\\u01b0\\u1eddng b\\u1eb1ng c\\u00e1ch \\u0111i\\u1ec3m danh 3 ng\\u00e0y li\\u00ean ti\\u1ebfp ","type":"9","total_attempts":1,"current_attempts":0,"is_reward":0,"diamond_reward":10}]', NULL, '2023-09-05 08:15:02', '2023-09-05 09:44:46');

-- Dumping structure for table minigame_hoang.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table minigame_hoang.oauth_access_tokens: ~191 rows (approximately)
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('020bef624a9a85444fed7f5250ed4fcd0b5a524d5a46335422a56beb6d4f90d17329199a03e6d8a0', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:23:17', '2023-08-15 18:23:17', '2024-08-16 01:23:17'),
	('0396e9a743fda2203367efcc6434e667c61116a2250b1915bd21711fb00a8de04564c9d9648ae1a0', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:51:01', '2023-07-12 19:51:01', '2024-07-13 02:51:01'),
	('046ce8d38c1b6cd3ddfccd1b5a9e1f8d8193c6aba532c3bf4d3a125133723027edd2a43d78c613e2', 6, 3, 'API Token', '[]', 0, '2023-08-14 01:20:19', '2023-08-14 01:20:19', '2024-08-14 08:20:19'),
	('053b9f1ea8d2eae2031e38ac52853aa5c9b6e330fd1415038d9d267afe2514b87feefc278dc19afd', 6, 3, 'API Token', '[]', 0, '2023-07-17 00:59:05', '2023-07-17 00:59:05', '2024-07-17 07:59:05'),
	('05646f1dc4be57789a037ee35564069c2d6375dd5e47e2692d7d3abcb9001176b576204442db1c6c', 6, 3, 'API Token', '[]', 0, '2023-07-17 21:23:56', '2023-07-17 21:23:56', '2024-07-18 04:23:56'),
	('067757cb32da7c9c047ef07d14af25d65d5abe977dad468910d96a807e10b77e3c5c28e05da9b545', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:28:47', '2023-07-12 03:28:47', '2024-07-12 10:28:47'),
	('07719693d491ed1a88ad931edd837813bd2e850e81a8b1a3985720201412c941c1c6f9b0d46d9ecf', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:41:01', '2023-07-17 01:41:01', '2024-07-17 08:41:01'),
	('07a683689dce3597bcb614948a9291d311f8da9e733eca410bf1fcbcc0434d6019a68211f51e8a78', 6, 3, 'API Token', '[]', 0, '2023-07-17 21:18:26', '2023-07-17 21:18:26', '2024-07-18 04:18:26'),
	('083cc0a1857d91bde973805ab1180f7033b5d43280137a3d37915d12a8db6fe2107c0d92f72aa8aa', 6, 3, 'API Token', '[]', 0, '2023-07-18 02:09:36', '2023-07-18 02:09:36', '2024-07-18 09:09:36'),
	('08ccda2b064ecba772fed8185c8f7ddb019695cdd41273b35926ed74dd2698dfab5d7686c0aa1efc', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:38:37', '2023-07-12 19:38:37', '2024-07-13 02:38:37'),
	('09ddb62a692df654119da12d0dfec9172f988c918233ec39fbcd648a03010509d55a2a5446b6b69a', 6, 3, 'API Token', '[]', 0, '2023-07-17 00:52:42', '2023-07-17 00:52:42', '2024-07-17 07:52:42'),
	('0ad7cd8bbac31d18dfbaf3bdbcedb2398dd3c97ebd77c50851c175a350fe0bef81900efc0e42b50d', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:51:09', '2023-07-12 19:51:09', '2024-07-13 02:51:09'),
	('0b2ad1543aa5ac4fcb13ffbb45337483961cac9df7fff6e8d0f097910c169dded9d92382a2b7b380', 6, 3, 'API Token', '[]', 0, '2023-08-14 18:17:33', '2023-08-14 18:17:33', '2024-08-15 01:17:33'),
	('0f294556fbadfc4f70013c0ec07b0ea98128fb0241592ca534b6f977bb6fab288b8f30f0e77e8edb', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:43:24', '2023-07-12 19:43:24', '2024-07-13 02:43:24'),
	('0fc5d26bc30b77bb3894b75159af7c592a14a3827420b89b560c103cba639b5debf45724c13d7209', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:42:05', '2023-07-12 19:42:05', '2024-07-13 02:42:05'),
	('1329a3f7c77c29f9009bf27a5e42dcd9e5e9606bcc0f23777c0b3deca1b0a54ee3ab8c3a046f8c65', 6, 3, 'API Token', '[]', 0, '2023-08-10 18:52:49', '2023-08-10 18:52:49', '2024-08-11 01:52:49'),
	('139c9f84af4d75cb8010a4fa5829b13ddc3c7694113f181ada358c301c8a88d2e088622b8c2d12fb', 6, 3, 'API Token', '[]', 0, '2023-07-17 21:21:11', '2023-07-17 21:21:11', '2024-07-18 04:21:11'),
	('14b909662ff5a7d5eff65b59726616d635568111b68f07a983ebc2187ede4238f25a74c63dde392f', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:27:40', '2023-08-15 18:27:40', '2024-08-16 01:27:40'),
	('177408015c8827f72dff170354b283bd170726e431917b0c961da33ce84a2390066bbbc3c70c5c9b', 6, 3, 'API Token', '[]', 0, '2023-08-16 18:43:01', '2023-08-16 18:43:01', '2024-08-17 01:43:01'),
	('1888e96fb356e2e8f32a7ca70c73dd4eeb1d10bace56c0f89b050dc3128fb816753f3fe0cf7c1dda', 6, 3, 'API Token', '[]', 0, '2023-07-12 02:54:32', '2023-07-12 02:54:32', '2024-07-12 09:54:32'),
	('199eef130d54be6b23db006d4847fc865b6edad4962d5f871d71054f3eb48c12fe4039d5414919b8', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:33:10', '2023-07-17 01:33:10', '2024-07-17 08:33:10'),
	('19d2f1bfc01bef7c7fe749b1b5f6e20f72692a6e1d2bf69e15443c3ca20787b389264e25787d2d3c', 7, 3, 'API Token', '[]', 0, '2023-08-16 23:51:03', '2023-08-16 23:51:03', '2024-08-17 06:51:03'),
	('1b030fa334f97f54b4645e52c182ffd7fb31b7ed92ea7678375b43054580e68766640ac45b921ca1', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:28:16', '2023-07-17 02:28:16', '2024-07-17 09:28:16'),
	('1b051cc2d8a95307fe510b8896556853fa522738b13044ad429dbba6072fdbab9a7cd95202488821', 6, 3, 'API Token', '[]', 0, '2023-07-18 00:07:29', '2023-07-18 00:07:29', '2024-07-18 07:07:29'),
	('1b0f5c3f6f12089d54a3b2dd09e37ef5508629d8cc4040c00ea00350c4796f6d65a24ab97c57cef8', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:33:08', '2023-07-12 19:33:08', '2024-07-13 02:33:08'),
	('1bc46379cba4fc4e7d9b4f6704653c1168a297bd306bf68d131f829e4474a7c654d870f2702027bd', 6, 3, 'API Token', '[]', 0, '2023-08-14 01:06:25', '2023-08-14 01:06:25', '2024-08-14 08:06:25'),
	('1d104ef57cfe7933e62e47b3ab68a58f1e206af93fe1b8d9a8038f74b99f1b01e916443bb7c876ca', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:08:27', '2023-07-12 03:08:27', '2024-07-12 10:08:27'),
	('204dc789d30562272c1f2b418da856762e16557867cd2539762a82f5d63add90237d0c66f08cff9e', 6, 3, 'API Token', '[]', 0, '2023-07-18 18:07:38', '2023-07-18 18:07:38', '2024-07-19 01:07:38'),
	('20a920ae0e5094d0b21fce3883defcb29feaf2fce98ac6e8b31257bc7db973957d84b32e3e06e1f3', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:16:09', '2023-08-15 18:16:09', '2024-08-16 01:16:09'),
	('20fda047531a0c3e01021300a0f1cc7677f07b78cd8679b98b5d39a47fc6c4f2b6f78715ae5980d7', 6, 3, 'API Token', '[]', 0, '2023-07-18 00:06:23', '2023-07-18 00:06:23', '2024-07-18 07:06:23'),
	('21eba7657b0f80dc7b8ecdb7de609381452321b3d36a0122a4fd1e2e14469f1886d82f4c478f0d16', 6, 3, 'API Token', '[]', 0, '2023-07-15 01:06:22', '2023-07-15 01:06:22', '2024-07-15 08:06:22'),
	('230f56fff6bd6dcc9182a29ac99bfdcfaba15f5878c5103b43d4bb66ddd34ced624aa37e02b689ef', 6, 3, 'API Token', '[]', 0, '2023-07-19 18:31:05', '2023-07-19 18:31:05', '2024-07-20 01:31:05'),
	('23cf85605cb640d971974a09ff6af543f2381582c4ac4eee52117b1ef21733ae87bc87f5297b4c22', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:36:57', '2023-07-17 01:36:57', '2024-07-17 08:36:57'),
	('291a5b2deefb1baff94e1dd3f08320ad1ceef07c48a6e449b187bfe09c111987f6f7bfe173731495', 6, 3, 'API Token', '[]', 0, '2023-07-12 20:45:52', '2023-07-12 20:45:52', '2024-07-13 03:45:52'),
	('293a736b19b95b2f5737373dbb71ebef49994b249fe0e3b580ea0631f8bb1aad54bb89532bdd04a6', 6, 3, 'API Token', '[]', 0, '2023-07-18 01:10:02', '2023-07-18 01:10:02', '2024-07-18 08:10:02'),
	('29af1f6f7cb7e99c54863389e0e58beb89ceae919b0fb4047000c064a45184c31d276df20223ad6e', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:32:14', '2023-08-15 18:32:14', '2024-08-16 01:32:14'),
	('2a3bcfc2a7854ad27a8814d7d9e9440a99d0427ee0ac0a8b52bdf8e618a96c53113f17cf25c1e836', 6, 3, 'API Token', '[]', 0, '2023-07-17 23:49:33', '2023-07-17 23:49:33', '2024-07-18 06:49:33'),
	('2c1d02a69789a131c91aca423950a86f4472f69ae86c4e7e2c83b32e4a461947cbbc5d8d0feee8eb', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:49:58', '2023-08-15 18:49:58', '2024-08-16 01:49:58'),
	('2ec65eccb6ce22cde3c5178e103e24f012bd6af15f49f0098f9297f5ec6fcef77b6bc36a0d571283', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:52:21', '2023-07-12 19:52:21', '2024-07-13 02:52:21'),
	('3107fb1d3471dac845cc764cd9087cd12cfb6ebfa74639637cf12c45095c6c659d40a8c6636f3a9c', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:53:59', '2023-07-17 01:53:59', '2024-07-17 08:53:59'),
	('318975d65e89f0186b67cd2185163f160e4add3c864fa4bde08d41a18d384ea9c6f7187b56c33a08', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:48:00', '2023-07-17 01:48:00', '2024-07-17 08:48:00'),
	('31a9a217ea7c2483bd307f1272c93376b298fbbbc82bc1ee8a3b9851ebccaab9961b868fe83bad88', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:44:05', '2023-07-17 01:44:05', '2024-07-17 08:44:05'),
	('31de55776e8bbc98dab49737294e4623dc45493fff17302b6ee745308d7b1e21a5279b9bf9df7c55', 6, 3, 'API Token', '[]', 0, '2023-08-16 20:55:58', '2023-08-16 20:55:58', '2024-08-17 03:55:58'),
	('33bba4394e781ce916c48d790b63baea799d741e4c05b1ac6f6eeb3590ed62cd72c196fea38b54c3', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:53:16', '2023-07-17 02:53:16', '2024-07-17 09:53:16'),
	('357012432312c19056eaddfa34ead467c1a856e575c18e285fe2ef83a6879b1febf5a26f60dcbd30', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:48:24', '2023-07-17 02:48:24', '2024-07-17 09:48:24'),
	('35f06da74cd4a6cf1e911e1456d6911d52bcb3ed04f53b9ee20a9eb20f853d0a33d4e5cc121e3290', 6, 3, 'API Token', '[]', 0, '2023-07-17 00:35:28', '2023-07-17 00:35:28', '2024-07-17 07:35:28'),
	('382591c17d6343202d99b2d88141cc27e24e22291923ca5bcae788cdbdc5a569ff614c7f35cc0a54', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:51:55', '2023-07-17 01:51:55', '2024-07-17 08:51:55'),
	('3856cec9b150b6d92a14c4c495801c09c958cf45ddaea42e42707f8fc377a26f01220aaa16f21c00', 6, 3, 'API Token', '[]', 0, '2023-07-19 00:23:22', '2023-07-19 00:23:22', '2024-07-19 07:23:22'),
	('45f74984c8a62033787459667faa907aebe87745e255126944fa20ccaef083f81adf53e046d074c3', 7, 3, 'API Token', '[]', 0, '2023-09-05 02:23:53', '2023-09-05 02:23:53', '2024-09-05 09:23:53'),
	('4741b00ccc944cd983ab744e3fadaa48f570e480bb130af6f3a8ce221a4234d991e231db92f06838', 7, 3, 'API Token', '[]', 0, '2023-08-16 21:04:08', '2023-08-16 21:04:08', '2024-08-17 04:04:08'),
	('4a336ddf6e9c26a535aefca868d195d359b6282d51c13fe527dbb8a71dc9fc6ba2c96786244c0ed4', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:48:42', '2023-07-12 19:48:42', '2024-07-13 02:48:42'),
	('4a8da458a00feb7e4614b0ab72cbddb1287cecc79fc1d4cb77bc7a2be02c26348a762f10ad87c49e', 6, 3, 'API Token', '[]', 0, '2023-07-17 00:15:24', '2023-07-17 00:15:24', '2024-07-17 07:15:24'),
	('4d318a3d41248471145a1b8dabb9bda06b786874e801628fa993195b060a8f7be7b436b6ce2f3635', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:26:01', '2023-07-17 01:26:01', '2024-07-17 08:26:01'),
	('4dc0d1578cf8b050894e8517d8ef403b788df511e51fb3121ae099ccec087f4332e08928eece9095', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:38:22', '2023-08-15 18:38:22', '2024-08-16 01:38:22'),
	('4df6a7a29dab52b29a458cb1f97db49af03c9335e2cb7845c00a367d00fde3e3891d8b2629abaeee', 6, 3, 'API Token', '[]', 0, '2023-07-13 03:00:35', '2023-07-13 03:00:35', '2024-07-13 10:00:35'),
	('51042ba39857594b9978a374d5a8d0acfc42193cad1fe5e106e04ceca0ece2886558e4e15428a69e', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:49:13', '2023-07-12 19:49:13', '2024-07-13 02:49:13'),
	('515e474624375c42a76ab8d137d5bcab459e573d4047d1150518e4cc2e732a41a63edc07c47dc872', 7, 3, 'API Token', '[]', 0, '2023-08-16 21:07:16', '2023-08-16 21:07:16', '2024-08-17 04:07:16'),
	('5375e62cdb87fbeb30e07f98270b7d56e55ed8fa2d6a86b192cfa6c48cc8f9273afd12d94acb3584', 6, 3, 'API Token', '[]', 0, '2023-07-17 00:38:35', '2023-07-17 00:38:35', '2024-07-17 07:38:35'),
	('5485cbd590349cd56c71d735e1fcb86e4b774e0a74f776c8d12dfef3ccf1741620a02ca9eb242e32', 6, 3, 'API Token', '[]', 0, '2023-07-13 22:07:09', '2023-07-13 22:07:09', '2024-07-14 05:07:09'),
	('5802da81180d69e2f955da434f35c98eb995ab5b0ad263563fe0d5f7496a3bcefb40349fee09207a', 6, 3, 'API Token', '[]', 0, '2023-07-17 21:23:38', '2023-07-17 21:23:38', '2024-07-18 04:23:38'),
	('5824d24433f745883b32ebc722c6c34b8a436ac6982c2be203e491596cdea419f537b94e89a4e8de', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:17:29', '2023-07-17 02:17:29', '2024-07-17 09:17:29'),
	('5a021f6290c7348757c3d496522d2c3c6997069954dfedfe8e004dd42acadfce7c44828950f6f954', 6, 3, 'API Token', '[]', 0, '2023-07-19 00:22:13', '2023-07-19 00:22:13', '2024-07-19 07:22:13'),
	('5ae6c152c5d42a582a2b486d0c0e2a07ffb33ac11dc8fe88879dcdae34d21f9217cdbc8a146903a0', 6, 3, 'API Token', '[]', 0, '2023-08-14 19:10:00', '2023-08-14 19:10:00', '2024-08-15 02:10:00'),
	('5b4713c110bbbbe17041cec1d94c3e391184f6b90a713cebfa8d400e8d0c9734d74cd25ce48e86a6', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:40:14', '2023-07-17 01:40:14', '2024-07-17 08:40:14'),
	('5b6e752fdbc13ddbb38f24bbe0910cd0aac231a8ca82765761a7f2a056ae01f5a413ff5098822360', 7, 3, 'API Token', '[]', 0, '2023-08-16 21:32:41', '2023-08-16 21:32:41', '2024-08-17 04:32:41'),
	('5c25fe85ad2a006187b9ddd158a8814754935a8380d0ae573bcffd951a208b04666c180311ed8a84', 7, 3, 'API Token', '[]', 0, '2023-09-03 19:21:54', '2023-09-03 19:21:54', '2024-09-04 02:21:54'),
	('5c4b6819dedc4a6539d764d69c4992501871c5d3e65763d7755a073ddcaab045006f72e9e31b5343', 6, 3, 'API Token', '[]', 0, '2023-07-17 00:36:15', '2023-07-17 00:36:15', '2024-07-17 07:36:15'),
	('5da78eab4fb6c2b31f00b90eee820611800a7190b0b6e2b8b0ecac7f5b201b0668d3490210c0bac9', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:49:23', '2023-08-15 18:49:23', '2024-08-16 01:49:23'),
	('5e02bd9fc74d8b3a9f98a9b67f4a4118ac504807eaf668f0825bb382e886060240959b1e390fd346', 6, 3, 'API Token', '[]', 0, '2023-07-12 20:45:27', '2023-07-12 20:45:27', '2024-07-13 03:45:27'),
	('5e0b8e840d489af96bb0f9110a1af02ade6cdabbd576cad7bfc87ba1c9383efffa984d677df0475a', 6, 3, 'API Token', '[]', 0, '2023-07-12 02:55:20', '2023-07-12 02:55:20', '2024-07-12 09:55:20'),
	('62fc38414cf2cf487dbfdedfe326da58397df51022ada4cacff2118333f445461d42eeed9b07b45b', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:32:56', '2023-07-12 19:32:56', '2024-07-13 02:32:56'),
	('66e001785ab2caece2275bde9a9a332cd08a44079a546306fe196f5f5e6b0424db7d8f851329dc3c', 7, 3, 'API Token', '[]', 0, '2023-09-01 14:23:47', '2023-09-01 14:23:47', '2024-09-01 21:23:47'),
	('68abfcab1d418f037d4d84db30981250157e4fa9bab9df612cd759893730ab0a7ceda98bbed49a25', 6, 3, 'API Token', '[]', 0, '2023-07-17 03:33:42', '2023-07-17 03:33:42', '2024-07-17 10:33:42'),
	('696d70a3f13fa39664ae16ad351aa988e42c783a09977d2e5985bc0346e53155f6179f50440c5380', 7, 3, 'API Token', '[]', 0, '2023-08-16 21:05:34', '2023-08-16 21:05:34', '2024-08-17 04:05:34'),
	('6aab7871daeeb6be98c573df61daca16243fb5c77354e2bce79f64c8f23b51123356a2ac0751f673', 7, 3, 'API Token', '[]', 0, '2023-08-16 21:26:29', '2023-08-16 21:26:29', '2024-08-17 04:26:29'),
	('6df2606cda65d32e7e7f9f7b963b62cb1e02937c4dcecf2f5d0ac2c8893040f607edc3ac6e5559ef', 6, 3, 'API Token', '[]', 0, '2023-07-17 21:22:54', '2023-07-17 21:22:54', '2024-07-18 04:22:54'),
	('6e06c099c8342078d9a0214ebe522da6964b41ee75a6e70af3e0b08c5bca32015377a0b53f735e25', 6, 3, 'API Token', '[]', 0, '2023-08-14 22:03:37', '2023-08-14 22:03:37', '2024-08-15 05:03:37'),
	('715f8571e87f9adbd9b196a53480a8416590a8c820c578f8bd5845cf8d7897cb058406afcdc07d01', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:21:34', '2023-07-12 19:21:34', '2024-07-13 02:21:34'),
	('7206c2c60410e9fe05f1a67e44fa671a6441027fec94764f20576d40b5b3b119052aeabd194c03a0', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:30:34', '2023-08-15 18:30:34', '2024-08-16 01:30:34'),
	('73f13ef28c136713ea4c1b224c93f4b04023273f8a4c3f5fff681f9534b94df04727b83f9cf1fecb', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:20:28', '2023-08-15 18:20:28', '2024-08-16 01:20:28'),
	('749c7f40fc731d83c589a38f9a15f722329c157a2106736a929c081fccadb31c2caa39a31e613f0d', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:19:41', '2023-08-15 18:19:41', '2024-08-16 01:19:41'),
	('76a50ce00719c96e3ee18c23a50671458f7504a4ab9fadcc6f7c08d0b9710a38ed5660069c16a681', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:03:48', '2023-07-17 02:03:48', '2024-07-17 09:03:48'),
	('789a23754539053be87773097c3a3c2f00218a29279f0b39cf780674ca4405bc574495223d037daa', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:50:43', '2023-07-17 01:50:43', '2024-07-17 08:50:43'),
	('78eae96113769f81a1f6511a23222234c6772a748bd2511fe63481b610fb7e0b3af1b6eacbf916b7', 6, 3, 'API Token', '[]', 0, '2023-07-17 21:22:35', '2023-07-17 21:22:35', '2024-07-18 04:22:35'),
	('7af3587e1a67b110fe87b755803956f2baeeefa0c3f292e2f568ac7a142fe49e40e23015bc5042cc', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:10:24', '2023-07-17 02:10:24', '2024-07-17 09:10:24'),
	('7b1345567705c557bafd35936d5e96b8bb8988da82e57df2c1657a326b18ea5714febb39a68d9782', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:06:08', '2023-07-17 02:06:08', '2024-07-17 09:06:08'),
	('8150656e32cec4fc1baaa0d00405f4aaf07465f2ca1a242ea52f8de964b55e2cf8a63e0183af1b01', 6, 3, 'API Token', '[]', 0, '2023-07-17 21:31:20', '2023-07-17 21:31:20', '2024-07-18 04:31:20'),
	('8293fc234404c06951eb66891efdf74ae5f8534fbbc993314b3d9a40e3be82cba3509c7a47bbbf56', 6, 3, 'API Token', '[]', 0, '2023-08-16 02:54:58', '2023-08-16 02:54:58', '2024-08-16 09:54:58'),
	('84e491ace4c9ef27b73854d6cb60ff47dbfdea8103faa2afe26082a823f6caee2a9de27bd198f2d6', 6, 3, 'API Token', '[]', 0, '2023-07-18 03:29:51', '2023-07-18 03:29:51', '2024-07-18 10:29:51'),
	('8663d2d2dd8003f589be504c58a27e6875745d6e379d390f08972a60b5bdc52ba197b766309d3c65', 7, 3, 'API Token', '[]', 0, '2023-08-31 00:40:57', '2023-08-31 00:40:57', '2024-08-31 07:40:57'),
	('8682b76730e41e8d02dd06a52b48c75da6450f1a11e43b56b48b416aa2023a83687e926872cddb48', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:49:23', '2023-07-12 19:49:23', '2024-07-13 02:49:23'),
	('86f86095835114898574f13b1fc352e036bc9883dbb8972eb4a125147115c5e89157b43a9f1e5ae3', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:30:58', '2023-07-12 19:30:58', '2024-07-13 02:30:58'),
	('8941d3b4d24f9d0a46aff026075274c3fa2d4377408135c8311d482c583aa9c549b118e474954dfa', 6, 3, 'API Token', '[]', 0, '2023-08-14 00:20:03', '2023-08-14 00:20:03', '2024-08-14 07:20:03'),
	('8b0198be6ee7c7bcfddc4a1b87c926b5ea9c67389d4cd861e306e4e1208cc190f83c2a919a795014', 6, 3, 'API Token', '[]', 0, '2023-07-17 03:05:24', '2023-07-17 03:05:24', '2024-07-17 10:05:24'),
	('8b3de9b2cc111591029885fc419991bad9eab4605ccf5022a6b534fcdbbf9b47d61b4e585202d1a8', 6, 3, 'API Token', '[]', 0, '2023-08-14 00:45:16', '2023-08-14 00:45:16', '2024-08-14 07:45:16'),
	('8ccf3246ae6a2854832e54e4b04d2542b16480ef65fca9c8e8e80fa3f2162f4ffb2dd743202cf2a5', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:05:21', '2023-07-17 02:05:21', '2024-07-17 09:05:21'),
	('8cefc7f6e4f28300bd002af973a6cf38f13ca71cf2b898b044f34b882884330b29c367e32fdd26fc', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:48:21', '2023-07-12 19:48:21', '2024-07-13 02:48:21'),
	('8d14045694b289a83a08adfbe0215c82adcd6b8f1a7431cbc1cb8c28b1286b332d80b84f3a2cf900', 6, 3, 'API Token', '[]', 0, '2023-07-17 21:23:24', '2023-07-17 21:23:24', '2024-07-18 04:23:24'),
	('8e555bc68d745d95570496c205ec8d3e557dac9090d04601e1fe1f527a3814c3fd3aa008cd28252f', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:47:17', '2023-08-15 18:47:17', '2024-08-16 01:47:17'),
	('904242c2d201d17b4894ac3c67c0f5b9fc30a19fbabe1606289272da681bfb08e4364fdf4f1b9b69', 7, 3, 'API Token', '[]', 0, '2023-08-16 21:33:23', '2023-08-16 21:33:23', '2024-08-17 04:33:23'),
	('90b996efe28804bb0c5efe0cb6d187f0765238528abede5b5637dcf6c3cfb85f55811ecbe10c6c84', 6, 3, 'API Token', '[]', 0, '2023-07-13 00:58:28', '2023-07-13 00:58:28', '2024-07-13 07:58:28'),
	('927362f62574d956c5c1be71f241081cb2ce68513fdad3e9d11aa09d5b6bcf96b436544f7298652c', 6, 3, 'API Token', '[]', 0, '2023-07-18 02:19:15', '2023-07-18 02:19:15', '2024-07-18 09:19:15'),
	('93ab0b1c1509b0cc57b22686181383eacbef1fefb4c16d9f22f2b92b7547f9deb5fe70b924052186', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:02:32', '2023-07-17 02:02:32', '2024-07-17 09:02:32'),
	('94145ec8cfbee9fc594948fc14b4a0e3690afce18bebf2779851acb57161a92ebebe253b60f7a89b', 6, 3, 'API Token', '[]', 0, '2023-07-13 00:53:32', '2023-07-13 00:53:32', '2024-07-13 07:53:32'),
	('9470fa7a779add2ab2a50e6e23683e53cc26f598b1f0aeba85fc16c4ab66b5a7268b31c0470b3f61', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:41:30', '2023-07-12 19:41:30', '2024-07-13 02:41:30'),
	('956b747b019ab1c73e3720b4db2dc48f10dfff0e0e065bbb9434d4e25e84c73f204af64e10cc19ca', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:50:09', '2023-07-12 19:50:09', '2024-07-13 02:50:09'),
	('974a400a5120aacfc4c57f5f05a3756e64462e0c13278d1b31eb3eb8900898bb82e3da8da173262a', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:36:36', '2023-07-12 19:36:36', '2024-07-13 02:36:36'),
	('984edfe84636e941f56badb89924081df891fa1692314dae3d2842ba8b42375d70539866fc21fdc0', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:52:28', '2023-07-12 19:52:28', '2024-07-13 02:52:28'),
	('9939556caa13bdb0e12500072dcbcb5daa3a2d0227d0791b92cc41d136bdf15e7ae73a1d60f4b7f0', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:43:41', '2023-07-12 19:43:41', '2024-07-13 02:43:41'),
	('99db471e3e2a59002a44343e795ee770d82604c0e84d22271a62041d2f5c73c93e1a001f297b37ac', 6, 3, 'API Token', '[]', 0, '2023-07-18 02:07:12', '2023-07-18 02:07:12', '2024-07-18 09:07:12'),
	('99de6ec3e0f2c4300bd71df0aad0e660403dd2298ecde9302f18d5c1b211f040a8875fe625f35d2a', 6, 3, 'API Token', '[]', 0, '2023-07-12 20:46:21', '2023-07-12 20:46:21', '2024-07-13 03:46:21'),
	('9bd908a1fd777359f81505d2efaf455c1f80078712cf1cbf9ec8c7443918a3a9025c2249f577fa0d', 6, 3, 'API Token', '[]', 0, '2023-08-30 19:03:32', '2023-08-30 19:03:32', '2024-08-31 02:03:32'),
	('9d2387f9376563d4ffa92f52821f689688433b56f4885494812e6fc7a8cb90e9cc18144623b29a9c', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:58:45', '2023-07-17 01:58:45', '2024-07-17 08:58:45'),
	('9dfb1f1d609f89891e1f600fc71fa628fe7395e46ae2762b76f120a64bea6a7974eae3a232909321', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:55:28', '2023-07-12 03:55:28', '2024-07-12 10:55:28'),
	('9e588d521e42252419de158e854a0a3ef785b5849be55f1728053fe65f6f7988205a64d09ffff6ce', 7, 3, 'API Token', '[]', 0, '2023-08-16 21:18:19', '2023-08-16 21:18:19', '2024-08-17 04:18:19'),
	('9fdb3e4fe5058e2bc20a99ac23bb0ccc9ac47228abd420202bd87190cf855907b8f3f216e81800d2', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:31:09', '2023-07-12 19:31:09', '2024-07-13 02:31:09'),
	('a0963aaeedde91e1d1e05c27494fe1696abd7e6c990a2ae93bd90aeb0333965875cd940cadb602b2', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:25:13', '2023-07-17 02:25:13', '2024-07-17 09:25:13'),
	('a1eec4ac98035520a6b56f38fe69c000b126ffae0619e2540eb0a5efd32b5c4383df4d2ad71d436d', 6, 3, 'API Token', '[]', 0, '2023-07-17 01:52:32', '2023-07-17 01:52:32', '2024-07-17 08:52:32'),
	('a45ac307c249eb2d8a64be5549d21a2b1ecd70685f639b7878a2e6335474744dabbccbde5953cccb', 7, 3, 'API Token', '[]', 0, '2023-09-01 22:05:59', '2023-09-01 22:05:59', '2024-09-02 05:05:59'),
	('a7f5e328b3e16def3b376a34a0278206df6f6260b213d0b71e7c4887fe393941cf58d6d4f568dcf4', 6, 3, 'API Token', '[]', 0, '2023-07-13 21:58:42', '2023-07-13 21:58:42', '2024-07-14 04:58:42'),
	('a8455efd95640d1a64e1278d07846bbe0f1fba83adaf637bda64d0b4a1e4b2908aa7e0e8c05d9871', 6, 3, 'API Token', '[]', 0, '2023-07-14 19:26:00', '2023-07-14 19:26:00', '2024-07-15 02:26:00'),
	('a97555aa349faf42b7b19cd6fa36045b52258b1d8a4388cfc2a484cabb2b92883a502161dc0ba279', 7, 3, 'API Token', '[]', 0, '2023-09-04 07:26:53', '2023-09-04 07:26:53', '2024-09-04 14:26:53'),
	('abdb7e7ffdcba90be76c5e2bee42a3d8345f4f80065a1673a90865466a8fa5f676957e87149ee405', 6, 3, 'API Token', '[]', 0, '2023-07-14 18:29:00', '2023-07-14 18:29:00', '2024-07-15 01:29:00'),
	('ac978194e90a64cd1677c10768c31edd8066955d64e6127ae7c38c4da32f093c2b1cf09668cefb1d', 6, 3, 'API Token', '[]', 0, '2023-07-17 21:20:47', '2023-07-17 21:20:47', '2024-07-18 04:20:47'),
	('ad1a10067381a8514be34f5289b3f55f464dfc66fd3950f888d864031a9515452d55744f4de09f6a', 6, 3, 'API Token', '[]', 0, '2023-07-18 02:11:36', '2023-07-18 02:11:36', '2024-07-18 09:11:36'),
	('ad950f08d8a1b826cbe6ef833a60f3fd95742dbc81018131bed934417ed592639821650ac5e18b86', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:25:40', '2023-07-12 03:25:40', '2024-07-12 10:25:40'),
	('ae33c9f33d1fe74588c110504ca637ee37f8adc4bc8ba4da28ffdaac5db5cf2375b7d09163b16332', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:08:12', '2023-08-15 18:08:12', '2024-08-16 01:08:12'),
	('aeabcd4aef8d1f1cf1a3525be9432b7b1df3d9a42919bb443f56a1b5056027b8e8114b422d8d133d', 7, 3, 'API Token', '[]', 0, '2023-09-05 03:12:14', '2023-09-05 03:12:14', '2024-09-05 10:12:14'),
	('aecb4a307d3e0c3322d98cf14e02250b87b5d824677066c80e3b4923315698684a11c0a5c8b70827', 6, 3, 'API Token', '[]', 0, '2023-08-30 02:00:56', '2023-08-30 02:00:56', '2024-08-30 09:00:56'),
	('af3f8d17efcdea724cafc4fe0654f4f9dc14dc5fb3bfcfbd82ccf6ad0ef2c7e37ce377281e9d1d24', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:19:01', '2023-07-17 02:19:01', '2024-07-17 09:19:01'),
	('b1125728f07e5f9bfa881493b06ab5703225e148ee22ef5178c0aca33c6f77e8ba21a92d75fbd3b2', 6, 3, 'API Token', '[]', 0, '2023-07-17 18:19:55', '2023-07-17 18:19:55', '2024-07-18 01:19:55'),
	('b21b816724d4b69f95fd429e90c847a17e694be5a29b5a46079864c0a3738378e1c32e4b90bd4c93', 6, 3, 'API Token', '[]', 0, '2023-07-14 19:24:36', '2023-07-14 19:24:36', '2024-07-15 02:24:36'),
	('b3e8a5d84d78e3644084feeb92aa3a1dfd77a0dae1574e74e5b874c6ebdf1e04c33c291228491aa9', 6, 3, 'API Token', '[]', 0, '2023-08-14 19:00:15', '2023-08-14 19:00:15', '2024-08-15 02:00:15'),
	('b650c1e603afa8d6ac8efdf61024350f914cc94e7e7e3397e42ba649090887a599e4c72aa71290ff', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:29:54', '2023-07-12 03:29:54', '2024-07-12 10:29:54'),
	('b6ae20e56c9b43a2e5fffb5759f44b0a84e669017c16223ecc92a592a273f34d0205e5cb088052b7', 6, 3, 'API Token', '[]', 0, '2023-07-16 18:39:02', '2023-07-16 18:39:02', '2024-07-17 01:39:02'),
	('b9db237a8ff92c8b11be518576be105911c88f4ceb78aeb51d3ff441834eb6f37ff207e54b2eb963', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:16:48', '2023-08-15 18:16:48', '2024-08-16 01:16:48'),
	('ba9b85cb4ff4b5836714004bc3eaec7e68a1b2a535f85a08b4907e18114d7437ad886d3568a086d3', 6, 3, 'API Token', '[]', 0, '2023-07-12 02:47:40', '2023-07-12 02:47:40', '2024-07-12 09:47:40'),
	('bb346dd2e21836f216159368dd0ec9154b0b63576c5179293f9f76afe4cc132edbbb4961eadb5645', 6, 3, 'API Token', '[]', 0, '2023-07-14 19:25:40', '2023-07-14 19:25:40', '2024-07-15 02:25:40'),
	('bc40479f2348e3ebfd08dd9acc5a6febbe320034754a0f94863088125db097ee42488de8f9510466', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:32:46', '2023-07-12 19:32:46', '2024-07-13 02:32:46'),
	('bf2a6d1ba4700b5d8f0529647f06b3ff8b9823b58142e917955bf50e6f8b3efa8726eaa1064aebee', 7, 3, 'API Token', '[]', 0, '2023-08-16 23:54:16', '2023-08-16 23:54:16', '2024-08-17 06:54:16'),
	('bfade4024e6b447aa940a5b3c9db8327168d2315f5fc23ca5ebd97b1701bdcb1912d56590cc47b09', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:34:36', '2023-07-12 03:34:36', '2024-07-12 10:34:36'),
	('bfb4bc69e8d22672c799fc30de3a5b2c1a1861a69a4a7651a9eb60ba4ca0fad442f237e2edddac25', 6, 3, 'API Token', '[]', 0, '2023-07-18 00:06:41', '2023-07-18 00:06:41', '2024-07-18 07:06:41'),
	('c17e35089474702fd0d282062f1dfec20ad4370cd273bf5431ac5a620b71b004d07f27a1a480c0c4', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:33:26', '2023-08-15 18:33:26', '2024-08-16 01:33:26'),
	('c30a90fcb0f5964562617db9d72a539492f57a4a47f3dd266c1f08c309dc5665e2e219fdbbedd3c0', 6, 3, 'API Token', '[]', 0, '2023-07-12 02:48:09', '2023-07-12 02:48:09', '2024-07-12 09:48:09'),
	('c33920c32b898861cb8f135ed391af10b50942c5f2589b6f8a16e5611db9303d6739616ea2cd6006', 7, 3, 'API Token', '[]', 0, '2023-08-17 00:06:36', '2023-08-17 00:06:36', '2024-08-17 07:06:36'),
	('c33a837e47a4332c5eba61146009b16ff1cd377f1bb30dfed1f8faf6799169990605f509fb3da2fd', 6, 3, 'API Token', '[]', 0, '2023-08-31 00:10:18', '2023-08-31 00:10:18', '2024-08-31 07:10:18'),
	('c3fa4f243ab5807d35e6b5801974f8e7f5061c418dbd8e3522f070b0ec96d062c5e844bff1d271fe', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:26:29', '2023-08-15 18:26:29', '2024-08-16 01:26:29'),
	('c48edbd717a8e9cf999e72463e1c5c4aca6e0320a531c2b62a30deb772b74663b47756e165a694a0', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:10:40', '2023-07-12 03:10:40', '2024-07-12 10:10:40'),
	('c710575466ada21011c413f293bba78c309e173f6aff06eca0d491f0ccb1175aaf4d33a72d9f807b', 6, 3, 'API Token', '[]', 0, '2023-07-13 21:54:48', '2023-07-13 21:54:48', '2024-07-14 04:54:48'),
	('c8a29bee1942856a180d09345ff35a627e2e86929c956db151136e6b7dc563046df1253fe044f61c', 6, 3, 'API Token', '[]', 0, '2023-08-11 00:19:52', '2023-08-11 00:19:52', '2024-08-11 07:19:52'),
	('c9a0972d3efb13da88873265f7d279acc536b86ff991ff65423ce84397fdf24ec716ce7b8d9e9864', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:43:26', '2023-08-15 18:43:26', '2024-08-16 01:43:26'),
	('c9e6eaf87ed2a7a183b1d50cc195d6188188730bad9db1c19f34511b514cadbbb6f29fb9b9375033', 6, 3, 'API Token', '[]', 0, '2023-08-14 18:18:22', '2023-08-14 18:18:22', '2024-08-15 01:18:22'),
	('cb1a42709bb7fca8b014788b4cc8dce05c49c0a1e1671c5f9ba6c879e1de914ff876d635f17865c1', 6, 3, 'API Token', '[]', 0, '2023-08-16 18:43:46', '2023-08-16 18:43:46', '2024-08-17 01:43:46'),
	('ccc87771eb015265a5ccdc0db081928f864c547f0186bd7398850c09c3f5fc4a1a4588b639e47058', 6, 3, 'API Token', '[]', 0, '2023-08-10 00:55:44', '2023-08-10 00:55:44', '2024-08-10 07:55:44'),
	('cd98ea75b57344090fffc7010d08fc7f76761d3d885888510b364407080c53d7802f901fcc0e92de', 6, 3, 'API Token', '[]', 0, '2023-07-12 02:55:01', '2023-07-12 02:55:01', '2024-07-12 09:55:01'),
	('cf756dc55c6ca6eaa9afb4f7f0dfdcd4d47a8f123abfc7cd2617306a2f5d7f307a797b826c840c94', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:31:13', '2023-07-17 02:31:13', '2024-07-17 09:31:13'),
	('d2c2a1b1f79df4b78874efb51749784aedadc271cf254c70df5b55cf7c5aad8e1bbcd7aceb2070c3', 6, 3, 'API Token', '[]', 0, '2023-07-19 00:22:24', '2023-07-19 00:22:24', '2024-07-19 07:22:24'),
	('d3e4c9c0447540c67326b54cad8e915026ed25c51f0f9005ca87363dec528e9a647a41b087a28844', 6, 3, 'API Token', '[]', 0, '2023-07-19 02:13:06', '2023-07-19 02:13:06', '2024-07-19 09:13:06'),
	('d496cc4409f5bf4cdabca6d5fbd59423c419df4c86e8ab015a0adffe02b451ed918657d695119a4e', 6, 3, 'API Token', '[]', 0, '2023-07-14 19:11:40', '2023-07-14 19:11:40', '2024-07-15 02:11:40'),
	('d6b81b702c6c27f4b2af523d8cf1e9b844869b5b3fc258abb85de8f733bef669e338b1f989cf9929', 6, 3, 'API Token', '[]', 0, '2023-07-18 02:20:10', '2023-07-18 02:20:10', '2024-07-18 09:20:10'),
	('d7d98f006341f71533290cde3f5172187741007183231e4864f2c3c0a92c52a6fa721a6857266f2f', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:23:21', '2023-07-12 03:23:21', '2024-07-12 10:23:21'),
	('db4a1fb23bfde59bff5ba702f9035a82a6f3056862f42a82f077a7dd0ea56acd3b82c3fce5d50747', 6, 3, 'API Token', '[]', 0, '2023-08-13 19:59:59', '2023-08-13 19:59:59', '2024-08-14 02:59:59'),
	('dc856ece32b90f614574a2e7f12d2262ab3b715894ced53b80b46c8fd145c8495150985006b14204', 6, 3, 'API Token', '[]', 0, '2023-07-17 03:23:39', '2023-07-17 03:23:39', '2024-07-17 10:23:39'),
	('dd7dd6810a9733ba1acbd769b39c0a8d45bb1161198746f0a0bdd8f12e7bca9fbff0b936b44fbae1', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:12:39', '2023-07-17 02:12:39', '2024-07-17 09:12:39'),
	('df8b571e1191b17d7190db0600a68ae3ee524f3047b09dae23efdaea34f5422639797c6030b4ed82', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:32:00', '2023-07-12 19:32:00', '2024-07-13 02:32:00'),
	('e193dc11099044d802043d3d3a4d4dba8497bdb3b0be46d88410311720286ca19d8fbcbbbadd168b', 6, 3, 'API Token', '[]', 0, '2023-07-17 03:04:32', '2023-07-17 03:04:32', '2024-07-17 10:04:32'),
	('e24cb7686f4b73ae2d76578f5dc1e4a7a1c6b4fa99be09ac53bb4341eca50fb835424f3987c711d3', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:48:13', '2023-07-12 19:48:13', '2024-07-13 02:48:13'),
	('e2980b866f5fcbe9293ed5cef1b362f8c8713a5c04958d18f8b656c091db77844edfcd69476b5bd4', 6, 3, 'API Token', '[]', 0, '2023-07-17 03:11:36', '2023-07-17 03:11:36', '2024-07-17 10:11:36'),
	('e4ddd75fd92247fe74bc4305073a919dde325ae56e5b1f258c74626ee9984e4c669a18afc38391b7', 6, 3, 'API Token', '[]', 0, '2023-08-14 22:02:49', '2023-08-14 22:02:49', '2024-08-15 05:02:49'),
	('e50716a0c1b4407ecd13e8c9dfe8c51f964aa36fc0d30d04c7de0c704d337e353d57b203f5a689a6', 7, 3, 'API Token', '[]', 0, '2023-08-16 21:24:43', '2023-08-16 21:24:43', '2024-08-17 04:24:43'),
	('e50f9a70cda1ee0c1d56013298719a4246179e75c3f058acbc1b1ab35714af2d1436df3438a35b4a', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:48:51', '2023-07-12 19:48:51', '2024-07-13 02:48:51'),
	('e5cfcff4b3f4e389394abadb888cdbad9f6c4ea127bcb20f7551ae6fd1147aba6b956405b4209ba5', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:31:27', '2023-07-12 19:31:27', '2024-07-13 02:31:27'),
	('e5e025a25bca220c9b9c7b20b188f3e1c1d5de4f86269de4deb9904018132d99f5c61d74a7beaf2c', 6, 3, 'API Token', '[]', 0, '2023-07-14 19:30:36', '2023-07-14 19:30:36', '2024-07-15 02:30:36'),
	('e72fcfc45c3cabd2e5453c47b3508a9341620b1fdca41a8e2a15501a69cf24ed8f5f08efbcc032b6', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:50:52', '2023-07-17 02:50:52', '2024-07-17 09:50:52'),
	('e83ec18d6f6415b44c0e4bc6dd28c1ae5bacefaf14147c3056fd1d3a3687cb996e9002eff6e8a645', 6, 3, 'API Token', '[]', 0, '2023-07-16 21:53:11', '2023-07-16 21:53:11', '2024-07-17 04:53:11'),
	('e9b5a566ebe7eb8ee563c0fdbcc84ffc144b025cf128be441d167c8be25cb889b8ca97a1c4601d52', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:08:28', '2023-08-15 18:08:28', '2024-08-16 01:08:28'),
	('ec7da3394f08fafcbeb124cdc476a3f7fc2c2241df5eb6967be002efd4e3371e1360e8a6194d55f7', 7, 3, 'API Token', '[]', 0, '2023-09-05 08:51:12', '2023-09-05 08:51:12', '2024-09-05 15:51:12'),
	('edb60140980dbd963e51451350da47b4392f8b854e8dd2a4e78622d122496885a47967500c7b70af', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:27:27', '2023-08-15 18:27:27', '2024-08-16 01:27:27'),
	('edbec1a9a2c95ef6011922cdb38937f28905560fc68edb6e2ef0872d7f567bf767209d87dad83c01', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:56:50', '2023-07-12 03:56:50', '2024-07-12 10:56:50'),
	('eff952092572e745dd309039bd36e857ac3fc1a2601f642c52e3bca806eb915fb1f0768c059548d2', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:53:23', '2023-07-12 19:53:23', '2024-07-13 02:53:23'),
	('f15ca7e03508a1bbc087e5a828562d493c4f8923394d4ae4e550a9e9bd51fd3659bb89c7ab7e19a7', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:51:08', '2023-07-17 02:51:08', '2024-07-17 09:51:08'),
	('f29083ea4c8501c6ea945fc97c9bfa70a1c4f8734b3a4433fa07e7b85e6767586e5ad077ea41ced2', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:49:58', '2023-07-12 19:49:58', '2024-07-13 02:49:58'),
	('f3eff98446f01ccbd7635e1a5f91eae305b4c04721cb85b21c165ff0f4afec98b3ebec5fb587141c', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:04:30', '2023-07-17 02:04:30', '2024-07-17 09:04:30'),
	('f4351550de22461f2f0f5df42b10d40fbcbb580ed3ab4abbb2864c95d7e8cc27bb99e4420309b75f', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:28:14', '2023-08-15 18:28:14', '2024-08-16 01:28:14'),
	('f58e921e430bff7a532a3e893cf972e14d6b91db0ef3c3fb4bf4b03954db964669cc4d09ddb07745', 7, 3, 'API Token', '[]', 0, '2023-08-16 21:09:09', '2023-08-16 21:09:09', '2024-08-17 04:09:09'),
	('f7d6ed05995791b8653b2ca8cfe2a6a1b4306f5973f89f2d4ce589beda250c8ba0a557bcfca9364d', 7, 3, 'API Token', '[]', 0, '2023-08-16 21:34:07', '2023-08-16 21:34:07', '2024-08-17 04:34:07'),
	('f91f00aab1fa8f133e1b2073de3d041b0748a4233899c94ca7e44a81cf3a40969316ea07af50ae8d', 6, 3, 'API Token', '[]', 0, '2023-07-19 00:24:15', '2023-07-19 00:24:15', '2024-07-19 07:24:15'),
	('f9f1529c52c949e1a38e32c5846480e8be44e433262c1b063e9c2673c31716b269508103324052f5', 6, 3, 'API Token', '[]', 0, '2023-07-17 03:24:26', '2023-07-17 03:24:26', '2024-07-17 10:24:26'),
	('fa5237a07cbe8972fe3f321b4e844632f01e5598b0787ad27bdefb6ee48034f10d889b9ebb7d9d26', 7, 3, 'API Token', '[]', 0, '2023-08-16 21:28:28', '2023-08-16 21:28:28', '2024-08-17 04:28:28'),
	('fbf14eb43be28b2f354cce225ce7062133aff91cb85588730ee75766c852274994065d8fdf366459', 6, 3, 'API Token', '[]', 0, '2023-08-15 18:48:25', '2023-08-15 18:48:25', '2024-08-16 01:48:25'),
	('fc98d790a58feebcec2f17d6aae0b1bfccfbfcf36a9daf55d99a7da3c6081a5fa7ed6e99f4e87a03', 6, 3, 'API Token', '[]', 0, '2023-07-17 02:13:00', '2023-07-17 02:13:00', '2024-07-17 09:13:00');

-- Dumping structure for table minigame_hoang.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table minigame_hoang.oauth_auth_codes: ~0 rows (approximately)

-- Dumping structure for table minigame_hoang.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table minigame_hoang.oauth_clients: ~4 rows (approximately)
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'eCommerce (SSO Client) Personal Access Client', 'QdbHQyY4M0vxXj0t9O46FUjKeOlfvzJB9yQ0aarl', NULL, 'http://localhost', 1, 0, 0, '2023-07-12 02:26:19', '2023-07-12 02:26:19'),
	(2, NULL, 'eCommerce (SSO Client) Password Grant Client', 'jMmqx0tlHg7sGYQK4tFqdn1aDyaCVbZBkdlKHSVj', 'users', 'http://localhost', 0, 1, 0, '2023-07-12 02:26:19', '2023-07-12 02:26:19'),
	(3, NULL, 'eCommerce (SSO Client) Personal Access Client', 'c1HhZh5eX0Li9qjqzGP6Y2xbUXEG5a71OKLFy1sB', NULL, 'http://localhost', 1, 0, 0, '2023-07-12 02:29:46', '2023-07-12 02:29:46'),
	(4, NULL, 'eCommerce (SSO Client) Password Grant Client', 'BSmeo6BTpBIY2oc4OQ3wpaXlr0l2e6dw0ZSJ9mjL', 'users', 'http://localhost', 0, 1, 0, '2023-07-12 02:29:46', '2023-07-12 02:29:46');

-- Dumping structure for table minigame_hoang.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table minigame_hoang.oauth_personal_access_clients: ~2 rows (approximately)
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2023-07-12 02:26:19', '2023-07-12 02:26:19'),
	(2, 3, '2023-07-12 02:29:46', '2023-07-12 02:29:46');

-- Dumping structure for table minigame_hoang.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table minigame_hoang.oauth_refresh_tokens: ~0 rows (approximately)

-- Dumping structure for table minigame_hoang.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table minigame_hoang.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table minigame_hoang.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `roles` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feathers` int NOT NULL DEFAULT '0',
  `diamond` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table minigame_hoang.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `roles`, `name`, `email`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `feathers`, `diamond`) VALUES
	(6, '["ROLE_ADMIN","ROLE_TEST"]', 'huuhoang.tran@gosu.vn', 'huuhoang.tran@gosu.vn', NULL, NULL, '2023-06-30 19:46:26', '2023-09-05 03:07:49', 58, 0),
	(7, '["ROLE_ADMIN","ROLE_TEST"]', 'admin', 'admin@gmail.com', NULL, NULL, '2023-08-16 21:04:08', '2023-09-05 09:44:46', 30, 95);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
