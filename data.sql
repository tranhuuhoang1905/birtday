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


-- Dumping database structure for sso_client_ecommerce
CREATE DATABASE IF NOT EXISTS `sso_client_ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sso_client_ecommerce`;

-- Dumping structure for table sso_client_ecommerce.failed_jobs
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

-- Dumping data for table sso_client_ecommerce.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table sso_client_ecommerce.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sso_client_ecommerce.migrations: ~10 rows (approximately)
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

-- Dumping structure for table sso_client_ecommerce.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sso_client_ecommerce.oauth_access_tokens: ~72 rows (approximately)
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('00640f53fc4cc99ea6886be3c285dd7c8f2af611d3d4e3128ce19501c3b393ff0500a918c903dded', 6, 3, 'API Token', '[]', 0, '2023-07-23 21:14:48', '2023-07-23 21:14:48', '2024-07-24 04:14:48'),
	('0396e9a743fda2203367efcc6434e667c61116a2250b1915bd21711fb00a8de04564c9d9648ae1a0', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:51:01', '2023-07-12 19:51:01', '2024-07-13 02:51:01'),
	('05008af37cf80ed06efa3007f0fa487bd3855e1d7773dfd080a91b63b0e0312d4686761817ffe7a2', 6, 3, 'API Token', '[]', 0, '2023-07-20 01:16:47', '2023-07-20 01:16:47', '2024-07-20 08:16:47'),
	('067757cb32da7c9c047ef07d14af25d65d5abe977dad468910d96a807e10b77e3c5c28e05da9b545', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:28:47', '2023-07-12 03:28:47', '2024-07-12 10:28:47'),
	('067d43024e2ee3927465a6d8c3a3e5a2d2244dd9afe862dd19c244c5705ea0ddc28f627ada40158a', 7, 3, 'API Token', '[]', 0, '2023-07-18 00:08:30', '2023-07-18 00:08:30', '2024-07-18 07:08:30'),
	('08ccda2b064ecba772fed8185c8f7ddb019695cdd41273b35926ed74dd2698dfab5d7686c0aa1efc', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:38:37', '2023-07-12 19:38:37', '2024-07-13 02:38:37'),
	('0ad7cd8bbac31d18dfbaf3bdbcedb2398dd3c97ebd77c50851c175a350fe0bef81900efc0e42b50d', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:51:09', '2023-07-12 19:51:09', '2024-07-13 02:51:09'),
	('0f294556fbadfc4f70013c0ec07b0ea98128fb0241592ca534b6f977bb6fab288b8f30f0e77e8edb', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:43:24', '2023-07-12 19:43:24', '2024-07-13 02:43:24'),
	('0fc5d26bc30b77bb3894b75159af7c592a14a3827420b89b560c103cba639b5debf45724c13d7209', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:42:05', '2023-07-12 19:42:05', '2024-07-13 02:42:05'),
	('12f54b27eb4fd8bb5aaa90b8834f0d3a8fed20d9a6d70dfee176cd759a7622e5f8f5a1c32171c4e1', 7, 3, 'API Token', '[]', 0, '2023-07-18 18:29:53', '2023-07-18 18:29:53', '2024-07-19 01:29:53'),
	('1888e96fb356e2e8f32a7ca70c73dd4eeb1d10bace56c0f89b050dc3128fb816753f3fe0cf7c1dda', 6, 3, 'API Token', '[]', 0, '2023-07-12 02:54:32', '2023-07-12 02:54:32', '2024-07-12 09:54:32'),
	('1b0f5c3f6f12089d54a3b2dd09e37ef5508629d8cc4040c00ea00350c4796f6d65a24ab97c57cef8', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:33:08', '2023-07-12 19:33:08', '2024-07-13 02:33:08'),
	('1d104ef57cfe7933e62e47b3ab68a58f1e206af93fe1b8d9a8038f74b99f1b01e916443bb7c876ca', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:08:27', '2023-07-12 03:08:27', '2024-07-12 10:08:27'),
	('1f7f434d5c96090cc45e9091bea1f284846be5a6ce65fae1adbd66afa2e5718c7d3aa5a3ab207e66', 7, 3, 'API Token', '[]', 0, '2023-07-18 23:35:46', '2023-07-18 23:35:46', '2024-07-19 06:35:46'),
	('21eba7657b0f80dc7b8ecdb7de609381452321b3d36a0122a4fd1e2e14469f1886d82f4c478f0d16', 6, 3, 'API Token', '[]', 0, '2023-07-15 01:06:22', '2023-07-15 01:06:22', '2024-07-15 08:06:22'),
	('253c013b8a8f9968fc3dc5e06636c2100df77418ff697ed5b5681a5407310e86d7dd5a4fa5ee017d', 7, 3, 'API Token', '[]', 0, '2023-07-16 23:52:36', '2023-07-16 23:52:36', '2024-07-17 06:52:36'),
	('291a5b2deefb1baff94e1dd3f08320ad1ceef07c48a6e449b187bfe09c111987f6f7bfe173731495', 6, 3, 'API Token', '[]', 0, '2023-07-12 20:45:52', '2023-07-12 20:45:52', '2024-07-13 03:45:52'),
	('2ec65eccb6ce22cde3c5178e103e24f012bd6af15f49f0098f9297f5ec6fcef77b6bc36a0d571283', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:52:21', '2023-07-12 19:52:21', '2024-07-13 02:52:21'),
	('3ea15b9b37ef0e526f63188d889216e8fbb39d7a4f226d1d74e1047b8760767052907b73087b78ab', 7, 3, 'API Token', '[]', 0, '2023-07-19 17:52:00', '2023-07-19 17:52:00', '2024-07-20 00:52:00'),
	('4446f549d05d98b47b6fb9384cc5f5c7fda9575e44ff47bd47c183ba8a24b1947b9c4bf1bd74c4af', 7, 3, 'API Token', '[]', 0, '2023-07-19 02:23:22', '2023-07-19 02:23:22', '2024-07-19 09:23:22'),
	('46333a446ff96cb79faf246d9b213d18caba20315f066871df8539f49ac237c38fe7212b48c766d3', 7, 3, 'API Token', '[]', 0, '2023-07-19 02:14:42', '2023-07-19 02:14:42', '2024-07-19 09:14:42'),
	('4a336ddf6e9c26a535aefca868d195d359b6282d51c13fe527dbb8a71dc9fc6ba2c96786244c0ed4', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:48:42', '2023-07-12 19:48:42', '2024-07-13 02:48:42'),
	('4a3a25917c2f01b4f72a288b8b1e356c49ea098722475fbe0dfdddeab9343762da5b8092b5ada941', 6, 3, 'API Token', '[]', 0, '2023-07-24 07:18:28', '2023-07-24 07:18:28', '2024-07-24 14:18:28'),
	('4df6a7a29dab52b29a458cb1f97db49af03c9335e2cb7845c00a367d00fde3e3891d8b2629abaeee', 6, 3, 'API Token', '[]', 0, '2023-07-13 03:00:35', '2023-07-13 03:00:35', '2024-07-13 10:00:35'),
	('4fd0edd47683d3298156d5c737f32c456420c78a0db728d026c8687c96538ab745850cc158123c10', 6, 3, 'API Token', '[]', 0, '2023-07-20 02:44:31', '2023-07-20 02:44:31', '2024-07-20 09:44:31'),
	('51042ba39857594b9978a374d5a8d0acfc42193cad1fe5e106e04ceca0ece2886558e4e15428a69e', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:49:13', '2023-07-12 19:49:13', '2024-07-13 02:49:13'),
	('5485cbd590349cd56c71d735e1fcb86e4b774e0a74f776c8d12dfef3ccf1741620a02ca9eb242e32', 6, 3, 'API Token', '[]', 0, '2023-07-13 22:07:09', '2023-07-13 22:07:09', '2024-07-14 05:07:09'),
	('5e02bd9fc74d8b3a9f98a9b67f4a4118ac504807eaf668f0825bb382e886060240959b1e390fd346', 6, 3, 'API Token', '[]', 0, '2023-07-12 20:45:27', '2023-07-12 20:45:27', '2024-07-13 03:45:27'),
	('5e0b8e840d489af96bb0f9110a1af02ade6cdabbd576cad7bfc87ba1c9383efffa984d677df0475a', 6, 3, 'API Token', '[]', 0, '2023-07-12 02:55:20', '2023-07-12 02:55:20', '2024-07-12 09:55:20'),
	('62fc38414cf2cf487dbfdedfe326da58397df51022ada4cacff2118333f445461d42eeed9b07b45b', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:32:56', '2023-07-12 19:32:56', '2024-07-13 02:32:56'),
	('69dcce771f6e5ce584668c9f64834d8e54db10c4d5b2c0040dab45e263e3b619a088ae624e08fc41', 6, 3, 'API Token', '[]', 0, '2023-07-20 07:38:13', '2023-07-20 07:38:13', '2024-07-20 14:38:13'),
	('715f8571e87f9adbd9b196a53480a8416590a8c820c578f8bd5845cf8d7897cb058406afcdc07d01', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:21:34', '2023-07-12 19:21:34', '2024-07-13 02:21:34'),
	('71a4453b586ac3895672ceb3e956034471ad5d9bbf1e3331eacf4f8bd5d270f5bb2bf28a985fd174', 6, 3, 'API Token', '[]', 0, '2023-07-19 18:47:42', '2023-07-19 18:47:42', '2024-07-20 01:47:42'),
	('77a9360d0484903d0d0ff40a239d9636e73546bc5ea089a263f54afa50e3d6ea9bea28e4d99dce4a', 6, 3, 'API Token', '[]', 0, '2023-07-20 01:00:22', '2023-07-20 01:00:22', '2024-07-20 08:00:22'),
	('8682b76730e41e8d02dd06a52b48c75da6450f1a11e43b56b48b416aa2023a83687e926872cddb48', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:49:23', '2023-07-12 19:49:23', '2024-07-13 02:49:23'),
	('86f86095835114898574f13b1fc352e036bc9883dbb8972eb4a125147115c5e89157b43a9f1e5ae3', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:30:58', '2023-07-12 19:30:58', '2024-07-13 02:30:58'),
	('87092119ae91d001281f6d796c847e37ff2f26b595d90ae750a08ed255e92e581c8b001731154ed2', 7, 3, 'API Token', '[]', 0, '2023-07-16 20:46:44', '2023-07-16 20:46:44', '2024-07-17 03:46:44'),
	('8cefc7f6e4f28300bd002af973a6cf38f13ca71cf2b898b044f34b882884330b29c367e32fdd26fc', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:48:21', '2023-07-12 19:48:21', '2024-07-13 02:48:21'),
	('8faba1876acc49e74c647b34de3b9df2a01bee666a9ee5d0f35da7ec51362f9eea3acf1ba758bbc7', 6, 3, 'API Token', '[]', 0, '2023-07-20 03:18:03', '2023-07-20 03:18:03', '2024-07-20 10:18:03'),
	('90b996efe28804bb0c5efe0cb6d187f0765238528abede5b5637dcf6c3cfb85f55811ecbe10c6c84', 6, 3, 'API Token', '[]', 0, '2023-07-13 00:58:28', '2023-07-13 00:58:28', '2024-07-13 07:58:28'),
	('94145ec8cfbee9fc594948fc14b4a0e3690afce18bebf2779851acb57161a92ebebe253b60f7a89b', 6, 3, 'API Token', '[]', 0, '2023-07-13 00:53:32', '2023-07-13 00:53:32', '2024-07-13 07:53:32'),
	('9470fa7a779add2ab2a50e6e23683e53cc26f598b1f0aeba85fc16c4ab66b5a7268b31c0470b3f61', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:41:30', '2023-07-12 19:41:30', '2024-07-13 02:41:30'),
	('956b747b019ab1c73e3720b4db2dc48f10dfff0e0e065bbb9434d4e25e84c73f204af64e10cc19ca', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:50:09', '2023-07-12 19:50:09', '2024-07-13 02:50:09'),
	('974a400a5120aacfc4c57f5f05a3756e64462e0c13278d1b31eb3eb8900898bb82e3da8da173262a', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:36:36', '2023-07-12 19:36:36', '2024-07-13 02:36:36'),
	('984edfe84636e941f56badb89924081df891fa1692314dae3d2842ba8b42375d70539866fc21fdc0', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:52:28', '2023-07-12 19:52:28', '2024-07-13 02:52:28'),
	('9939556caa13bdb0e12500072dcbcb5daa3a2d0227d0791b92cc41d136bdf15e7ae73a1d60f4b7f0', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:43:41', '2023-07-12 19:43:41', '2024-07-13 02:43:41'),
	('99de6ec3e0f2c4300bd71df0aad0e660403dd2298ecde9302f18d5c1b211f040a8875fe625f35d2a', 6, 3, 'API Token', '[]', 0, '2023-07-12 20:46:21', '2023-07-12 20:46:21', '2024-07-13 03:46:21'),
	('9dfb1f1d609f89891e1f600fc71fa628fe7395e46ae2762b76f120a64bea6a7974eae3a232909321', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:55:28', '2023-07-12 03:55:28', '2024-07-12 10:55:28'),
	('9fdb3e4fe5058e2bc20a99ac23bb0ccc9ac47228abd420202bd87190cf855907b8f3f216e81800d2', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:31:09', '2023-07-12 19:31:09', '2024-07-13 02:31:09'),
	('a071613c360939f93af889ce7022eac10c480cdf860bfdb5e846f1e416a60804ac8394ad2238c7aa', 6, 3, 'API Token', '[]', 0, '2023-07-20 01:00:01', '2023-07-20 01:00:01', '2024-07-20 08:00:01'),
	('a7f5e328b3e16def3b376a34a0278206df6f6260b213d0b71e7c4887fe393941cf58d6d4f568dcf4', 6, 3, 'API Token', '[]', 0, '2023-07-13 21:58:42', '2023-07-13 21:58:42', '2024-07-14 04:58:42'),
	('a8455efd95640d1a64e1278d07846bbe0f1fba83adaf637bda64d0b4a1e4b2908aa7e0e8c05d9871', 6, 3, 'API Token', '[]', 0, '2023-07-14 19:26:00', '2023-07-14 19:26:00', '2024-07-15 02:26:00'),
	('ab409b0eaf49c0f1dccd2ec3f5aaa286be73719237011c0a01135d75e92111ada7d794ba15fe55d9', 7, 3, 'API Token', '[]', 0, '2023-07-17 18:19:36', '2023-07-17 18:19:36', '2024-07-18 01:19:36'),
	('abdb7e7ffdcba90be76c5e2bee42a3d8345f4f80065a1673a90865466a8fa5f676957e87149ee405', 6, 3, 'API Token', '[]', 0, '2023-07-14 18:29:00', '2023-07-14 18:29:00', '2024-07-15 01:29:00'),
	('ad51f65b9677346103f71cc468ed2e361f7facba08a2294e8a04725b62ff98470514528ed0b14439', 7, 3, 'API Token', '[]', 0, '2023-07-19 02:24:12', '2023-07-19 02:24:12', '2024-07-19 09:24:12'),
	('ad950f08d8a1b826cbe6ef833a60f3fd95742dbc81018131bed934417ed592639821650ac5e18b86', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:25:40', '2023-07-12 03:25:40', '2024-07-12 10:25:40'),
	('b21b816724d4b69f95fd429e90c847a17e694be5a29b5a46079864c0a3738378e1c32e4b90bd4c93', 6, 3, 'API Token', '[]', 0, '2023-07-14 19:24:36', '2023-07-14 19:24:36', '2024-07-15 02:24:36'),
	('b464120e9f0cd15c689ee8fe1bedf57c4d061cc81709f0052167d48a77ac3270cd0d03313a796c66', 7, 3, 'API Token', '[]', 0, '2023-07-19 02:42:07', '2023-07-19 02:42:07', '2024-07-19 09:42:07'),
	('b650c1e603afa8d6ac8efdf61024350f914cc94e7e7e3397e42ba649090887a599e4c72aa71290ff', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:29:54', '2023-07-12 03:29:54', '2024-07-12 10:29:54'),
	('b6ae20e56c9b43a2e5fffb5759f44b0a84e669017c16223ecc92a592a273f34d0205e5cb088052b7', 6, 3, 'API Token', '[]', 0, '2023-07-16 18:39:02', '2023-07-16 18:39:02', '2024-07-17 01:39:02'),
	('ba9b85cb4ff4b5836714004bc3eaec7e68a1b2a535f85a08b4907e18114d7437ad886d3568a086d3', 6, 3, 'API Token', '[]', 0, '2023-07-12 02:47:40', '2023-07-12 02:47:40', '2024-07-12 09:47:40'),
	('bb346dd2e21836f216159368dd0ec9154b0b63576c5179293f9f76afe4cc132edbbb4961eadb5645', 6, 3, 'API Token', '[]', 0, '2023-07-14 19:25:40', '2023-07-14 19:25:40', '2024-07-15 02:25:40'),
	('bc40479f2348e3ebfd08dd9acc5a6febbe320034754a0f94863088125db097ee42488de8f9510466', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:32:46', '2023-07-12 19:32:46', '2024-07-13 02:32:46'),
	('bfade4024e6b447aa940a5b3c9db8327168d2315f5fc23ca5ebd97b1701bdcb1912d56590cc47b09', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:34:36', '2023-07-12 03:34:36', '2024-07-12 10:34:36'),
	('c30a90fcb0f5964562617db9d72a539492f57a4a47f3dd266c1f08c309dc5665e2e219fdbbedd3c0', 6, 3, 'API Token', '[]', 0, '2023-07-12 02:48:09', '2023-07-12 02:48:09', '2024-07-12 09:48:09'),
	('c48edbd717a8e9cf999e72463e1c5c4aca6e0320a531c2b62a30deb772b74663b47756e165a694a0', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:10:40', '2023-07-12 03:10:40', '2024-07-12 10:10:40'),
	('c68192bd0b7b051ea3acef136d7509b95fda74444a437666b38c349fd9e91dcb63b2c4c5192b0cef', 7, 3, 'API Token', '[]', 0, '2023-07-18 00:07:42', '2023-07-18 00:07:42', '2024-07-18 07:07:42'),
	('c710575466ada21011c413f293bba78c309e173f6aff06eca0d491f0ccb1175aaf4d33a72d9f807b', 6, 3, 'API Token', '[]', 0, '2023-07-13 21:54:48', '2023-07-13 21:54:48', '2024-07-14 04:54:48'),
	('cd98ea75b57344090fffc7010d08fc7f76761d3d885888510b364407080c53d7802f901fcc0e92de', 6, 3, 'API Token', '[]', 0, '2023-07-12 02:55:01', '2023-07-12 02:55:01', '2024-07-12 09:55:01'),
	('d496cc4409f5bf4cdabca6d5fbd59423c419df4c86e8ab015a0adffe02b451ed918657d695119a4e', 6, 3, 'API Token', '[]', 0, '2023-07-14 19:11:40', '2023-07-14 19:11:40', '2024-07-15 02:11:40'),
	('d7d98f006341f71533290cde3f5172187741007183231e4864f2c3c0a92c52a6fa721a6857266f2f', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:23:21', '2023-07-12 03:23:21', '2024-07-12 10:23:21'),
	('dcc5896a915502eaefd18d4e684febf585bc37ec3177e88f0f9599310aee21e5d1249839d7e1f683', 6, 3, 'API Token', '[]', 0, '2023-07-20 08:12:04', '2023-07-20 08:12:04', '2024-07-20 15:12:04'),
	('df8b571e1191b17d7190db0600a68ae3ee524f3047b09dae23efdaea34f5422639797c6030b4ed82', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:32:00', '2023-07-12 19:32:00', '2024-07-13 02:32:00'),
	('dfc01e246549121d0e86f6703aaf7cb7ce2529eae796aeaefbdc8aa985500f5cab9b3afab50e6cf0', 6, 3, 'API Token', '[]', 0, '2023-07-20 00:51:05', '2023-07-20 00:51:05', '2024-07-20 07:51:05'),
	('e24cb7686f4b73ae2d76578f5dc1e4a7a1c6b4fa99be09ac53bb4341eca50fb835424f3987c711d3', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:48:13', '2023-07-12 19:48:13', '2024-07-13 02:48:13'),
	('e50f9a70cda1ee0c1d56013298719a4246179e75c3f058acbc1b1ab35714af2d1436df3438a35b4a', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:48:51', '2023-07-12 19:48:51', '2024-07-13 02:48:51'),
	('e5cfcff4b3f4e389394abadb888cdbad9f6c4ea127bcb20f7551ae6fd1147aba6b956405b4209ba5', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:31:27', '2023-07-12 19:31:27', '2024-07-13 02:31:27'),
	('e5e025a25bca220c9b9c7b20b188f3e1c1d5de4f86269de4deb9904018132d99f5c61d74a7beaf2c', 6, 3, 'API Token', '[]', 0, '2023-07-14 19:30:36', '2023-07-14 19:30:36', '2024-07-15 02:30:36'),
	('ebef89bd01e8fcf152d89d4f036e46042ee2c17bc33240f45f381eda05f20bd28fe961c17a0af457', 7, 3, 'API Token', '[]', 0, '2023-07-19 08:45:07', '2023-07-19 08:45:07', '2024-07-19 15:45:07'),
	('edbec1a9a2c95ef6011922cdb38937f28905560fc68edb6e2ef0872d7f567bf767209d87dad83c01', 6, 3, 'API Token', '[]', 0, '2023-07-12 03:56:50', '2023-07-12 03:56:50', '2024-07-12 10:56:50'),
	('eff952092572e745dd309039bd36e857ac3fc1a2601f642c52e3bca806eb915fb1f0768c059548d2', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:53:23', '2023-07-12 19:53:23', '2024-07-13 02:53:23'),
	('f29083ea4c8501c6ea945fc97c9bfa70a1c4f8734b3a4433fa07e7b85e6767586e5ad077ea41ced2', 6, 3, 'API Token', '[]', 0, '2023-07-12 19:49:58', '2023-07-12 19:49:58', '2024-07-13 02:49:58'),
	('f2a38c48ad0ac87a898153d68b050f0d6d8d93e58b18431c1070aebfc7726e0d0eff768e520f634d', 7, 3, 'API Token', '[]', 0, '2023-07-17 08:58:48', '2023-07-17 08:58:48', '2024-07-17 15:58:48');

-- Dumping structure for table sso_client_ecommerce.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sso_client_ecommerce.oauth_auth_codes: ~0 rows (approximately)

-- Dumping structure for table sso_client_ecommerce.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sso_client_ecommerce.oauth_clients: ~4 rows (approximately)
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'eCommerce (SSO Client) Personal Access Client', 'QdbHQyY4M0vxXj0t9O46FUjKeOlfvzJB9yQ0aarl', NULL, 'http://localhost', 1, 0, 0, '2023-07-12 02:26:19', '2023-07-12 02:26:19'),
	(2, NULL, 'eCommerce (SSO Client) Password Grant Client', 'jMmqx0tlHg7sGYQK4tFqdn1aDyaCVbZBkdlKHSVj', 'users', 'http://localhost', 0, 1, 0, '2023-07-12 02:26:19', '2023-07-12 02:26:19'),
	(3, NULL, 'eCommerce (SSO Client) Personal Access Client', 'c1HhZh5eX0Li9qjqzGP6Y2xbUXEG5a71OKLFy1sB', NULL, 'http://localhost', 1, 0, 0, '2023-07-12 02:29:46', '2023-07-12 02:29:46'),
	(4, NULL, 'eCommerce (SSO Client) Password Grant Client', 'BSmeo6BTpBIY2oc4OQ3wpaXlr0l2e6dw0ZSJ9mjL', 'users', 'http://localhost', 0, 1, 0, '2023-07-12 02:29:46', '2023-07-12 02:29:46');

-- Dumping structure for table sso_client_ecommerce.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sso_client_ecommerce.oauth_personal_access_clients: ~2 rows (approximately)
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2023-07-12 02:26:19', '2023-07-12 02:26:19'),
	(2, 3, '2023-07-12 02:29:46', '2023-07-12 02:29:46');

-- Dumping structure for table sso_client_ecommerce.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sso_client_ecommerce.oauth_refresh_tokens: ~0 rows (approximately)

-- Dumping structure for table sso_client_ecommerce.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sso_client_ecommerce.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table sso_client_ecommerce.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `roles` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sso_client_ecommerce.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `roles`, `name`, `email`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
	(6, '["ROLE_ADMIN"]', 'huuhoang.tran@gosu.vn', 'huuhoang.tran@gosu.vn', NULL, NULL, '2023-06-30 19:46:26', '2023-06-30 19:46:26'),
	(7, '["ROLE_ADMIN"]', 'minhtam.nguyen@gosu.vn', 'minhtam.nguyen@gosu.vn', NULL, NULL, '2023-07-16 20:46:44', '2023-07-16 20:46:44');

-- Dumping structure for table sso_client_ecommerce.vote
CREATE TABLE IF NOT EXISTS `vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type_view` smallint NOT NULL DEFAULT '1',
  `status` smallint NOT NULL DEFAULT '1',
  `is_public` smallint NOT NULL DEFAULT '0',
  `is_anonymous` smallint NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  `json_question` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sso_client_ecommerce.vote: ~12 rows (approximately)
INSERT INTO `vote` (`id`, `title`, `type_view`, `status`, `is_public`, `is_anonymous`, `updated_at`, `created_at`, `json_question`) VALUES
	(32, 'Kháº£o sÃ¡t hiá»ƒn biáº¿t vá» thuá»‘c lÃ¡', 1, 1, 1, 0, '2023-07-18 00:14:57', '2023-07-18 00:14:57', NULL),
	(33, 'Ã kiáº¿n vá» hÃºt thuá»‘c', 1, 1, 1, 1, '2023-07-18 00:18:37', '2023-07-18 00:18:37', NULL),
	(34, 'áº»yre', 1, 1, 1, 0, '2023-07-18 01:16:56', '2023-07-18 01:16:56', NULL),
	(36, 'Test', 1, 1, 1, 0, '2023-07-19 03:02:59', '2023-07-19 03:02:59', NULL),
	(37, '12423', 1, 1, 1, 0, '2023-07-19 09:32:28', '2023-07-19 09:32:28', NULL),
	(38, '23452345', 1, 1, 1, 0, '2023-07-19 09:32:51', '2023-07-19 09:32:51', NULL),
	(39, '346453', 1, 1, 1, 0, '2023-07-19 09:33:34', '2023-07-19 09:33:34', NULL),
	(40, '346453', 1, 1, 1, 0, '2023-07-19 09:33:37', '2023-07-19 09:33:37', NULL),
	(41, '12342', 1, 1, 1, 0, '2023-07-19 09:37:33', '2023-07-19 09:37:33', NULL),
	(42, '1234454355345344444', 1, 1, 1, 0, '2023-07-19 18:09:40', '2023-07-19 18:09:40', NULL),
	(43, 'Æ°qerwqer', 1, 1, 1, 0, '2023-07-19 18:12:15', '2023-07-19 18:12:15', NULL),
	(44, 'Không Hút Thuốc Trong Phòng Làm Việc', 1, 1, 1, 0, '2023-07-20 03:20:10', '2023-07-20 03:20:10', NULL);

-- Dumping structure for table sso_client_ecommerce.voted
CREATE TABLE IF NOT EXISTS `voted` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `vote_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__users` (`user_id`),
  KEY `FK__voted_vote` (`vote_id`),
  CONSTRAINT `FK__users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK__voted_vote` FOREIGN KEY (`vote_id`) REFERENCES `vote` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sso_client_ecommerce.voted: ~1 rows (approximately)
INSERT INTO `voted` (`id`, `user_id`, `vote_id`, `created_at`, `updated_at`) VALUES
	(10, 6, 33, '2023-07-23 21:26:31', '2023-07-23 21:26:31');

-- Dumping structure for table sso_client_ecommerce.vote_history
CREATE TABLE IF NOT EXISTS `vote_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `vote_id` int DEFAULT '0',
  `vote_option_id` int DEFAULT '0',
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sso_client_ecommerce.vote_history: ~2 rows (approximately)
INSERT INTO `vote_history` (`id`, `user_id`, `vote_id`, `vote_option_id`, `answer`, `created_at`, `updated_at`) VALUES
	(74, 0, 0, 49, '', '2023-07-23 21:26:31', '2023-07-23 21:26:31'),
	(75, 0, 0, 97, '', '2023-07-23 21:26:31', '2023-07-23 21:26:31');

-- Dumping structure for table sso_client_ecommerce.vote_options
CREATE TABLE IF NOT EXISTS `vote_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `option` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  `total_voted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_vote_options_question` (`question_id`),
  CONSTRAINT `FK_vote_options_question` FOREIGN KEY (`question_id`) REFERENCES `vote_questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table sso_client_ecommerce.vote_options: ~83 rows (approximately)
INSERT INTO `vote_options` (`id`, `question_id`, `option`, `updated_at`, `created_at`, `total_voted`) VALUES
	(42, 33, 'Thuá»‘c lÃ¡ Ä‘iá»‡n tá»­', '2023-07-18 00:14:57', '2023-07-18 00:14:57', 0),
	(43, 33, 'Thuá»‘c lÃ¡ Ä‘iáº¿u', '2023-07-20 00:22:55', '2023-07-18 00:14:57', 2),
	(44, 33, 'Thuá»‘c lÃ¡ lÃ m nÃ³ng', '2023-07-20 00:14:09', '2023-07-18 00:14:57', 4),
	(45, 34, 'Cháº¥t lÆ°á»£ng cuá»™c sá»‘ng kÃ©m', '2023-07-18 00:14:57', '2023-07-18 00:14:57', 0),
	(46, 34, 'Tá»­ vong', '2023-07-18 00:14:57', '2023-07-18 00:14:57', 0),
	(47, 34, 'Giáº£m tuá»•i thá»', '2023-07-18 00:14:57', '2023-07-18 00:14:57', 0),
	(48, 34, 'Táº¥t cáº£ cÃ¡c Ã½ trÃªn', '2023-07-18 00:14:57', '2023-07-18 00:14:57', 0),
	(49, 35, '', '2023-07-23 21:26:31', '2023-07-18 00:18:37', 6),
	(50, 36, 'Thuá»‘c lÃ¡ Ä‘iá»‡n tá»­', '2023-07-18 01:00:55', '2023-07-18 01:00:55', 0),
	(51, 36, 'Thuá»‘c lÃ¡ Ä‘iáº¿u', '2023-07-18 01:00:55', '2023-07-18 01:00:55', 0),
	(52, 36, 'Thuá»‘c lÃ¡ lÃ m nÃ³ng', '2023-07-18 01:00:55', '2023-07-18 01:00:55', 0),
	(53, 37, 'Cháº¥t lÆ°á»£ng cuá»™c sá»‘ng kÃ©m', '2023-07-18 01:00:55', '2023-07-18 01:00:55', 0),
	(54, 37, 'Tá»­ vong', '2023-07-18 01:00:55', '2023-07-18 01:00:55', 0),
	(55, 37, 'Giáº£m tuá»•i thá»', '2023-07-18 01:00:55', '2023-07-18 01:00:55', 0),
	(56, 37, 'Táº¥t cáº£ cÃ¡c Ã½ trÃªn', '2023-07-18 01:00:55', '2023-07-18 01:00:55', 0),
	(57, 38, 'truytyuty', '2023-07-18 01:00:55', '2023-07-18 01:00:55', 0),
	(58, 39, 'Thuá»‘c lÃ¡ Ä‘iá»‡n tá»­', '2023-07-18 01:01:50', '2023-07-18 01:01:50', 0),
	(59, 39, 'Thuá»‘c lÃ¡ Ä‘iáº¿u', '2023-07-18 01:01:50', '2023-07-18 01:01:50', 0),
	(60, 39, 'Thuá»‘c lÃ¡ lÃ m nÃ³ng', '2023-07-18 01:01:50', '2023-07-18 01:01:50', 0),
	(61, 40, 'Cháº¥t lÆ°á»£ng cuá»™c sá»‘ng kÃ©m', '2023-07-18 01:01:50', '2023-07-18 01:01:50', 0),
	(62, 40, 'Tá»­ vong', '2023-07-18 01:01:50', '2023-07-18 01:01:50', 0),
	(63, 40, 'Giáº£m tuá»•i thá»', '2023-07-18 01:01:50', '2023-07-18 01:01:50', 0),
	(64, 40, 'Táº¥t cáº£ cÃ¡c Ã½ trÃªn', '2023-07-18 01:01:50', '2023-07-18 01:01:50', 0),
	(65, 41, 'Thuá»‘c lÃ¡ Ä‘iá»‡n tá»­', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(66, 41, 'Thuá»‘c lÃ¡ Ä‘iáº¿u', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(67, 41, 'Thuá»‘c lÃ¡ lÃ m nÃ³ng', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(68, 42, 'Cháº¥t lÆ°á»£ng cuá»™c sá»‘ng kÃ©m', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(69, 42, 'Tá»­ vong', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(70, 42, 'Giáº£m tuá»•i thá»', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(71, 42, 'Táº¥t cáº£ cÃ¡c Ã½ trÃªn', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(72, 43, 'Thuá»‘c lÃ¡ Ä‘iá»‡n tá»­', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(73, 43, 'Thuá»‘c lÃ¡ Ä‘iáº¿u', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(74, 43, 'Thuá»‘c lÃ¡ lÃ m nÃ³ng', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(75, 44, 'Cháº¥t lÆ°á»£ng cuá»™c sá»‘ng kÃ©m', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(76, 44, 'Tá»­ vong', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(77, 44, 'Giáº£m tuá»•i thá»', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(78, 44, 'Táº¥t cáº£ cÃ¡c Ã½ trÃªn', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(79, 45, 'truytyuty', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(80, 46, 'Thuá»‘c lÃ¡ Ä‘iá»‡n tá»­', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(81, 46, 'Thuá»‘c lÃ¡ Ä‘iáº¿u', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(82, 46, 'Thuá»‘c lÃ¡ lÃ m nÃ³ng', '2023-07-18 01:02:17', '2023-07-18 01:02:17', 0),
	(83, 47, 'Thuá»‘c lÃ¡ Ä‘iá»‡n tá»­', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(84, 47, 'Thuá»‘c lÃ¡ Ä‘iáº¿u', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(85, 47, 'Thuá»‘c lÃ¡ lÃ m nÃ³ng', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(86, 48, 'Cháº¥t lÆ°á»£ng cuá»™c sá»‘ng kÃ©m', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(87, 48, 'Tá»­ vong', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(88, 48, 'Giáº£m tuá»•i thá»', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(89, 48, 'Táº¥t cáº£ cÃ¡c Ã½ trÃªn', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(90, 49, 'Thuá»‘c lÃ¡ Ä‘iá»‡n tá»­', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(91, 49, 'Thuá»‘c lÃ¡ Ä‘iáº¿u', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(92, 49, 'Thuá»‘c lÃ¡ lÃ m nÃ³ng', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(93, 50, 'Cháº¥t lÆ°á»£ng cuá»™c sá»‘ng kÃ©m', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(94, 50, 'Tá»­ vong', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(95, 50, 'Giáº£m tuá»•i thá»', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(96, 50, 'Táº¥t cáº£ cÃ¡c Ã½ trÃªn', '2023-07-18 01:02:21', '2023-07-18 01:02:21', 0),
	(97, 51, '', '2023-07-23 21:26:31', '2023-07-18 01:15:48', 6),
	(98, 52, 'test', '2023-07-23 21:24:23', '2023-07-18 01:15:48', 3),
	(99, 53, 'áº»yter', '2023-07-19 03:00:20', '2023-07-18 01:16:56', 0),
	(100, 54, '123123', '2023-07-19 03:01:54', '2023-07-19 03:01:54', 0),
	(101, 54, '132123', '2023-07-19 03:01:54', '2023-07-19 03:01:54', 0),
	(102, 54, '1231', '2023-07-19 03:01:54', '2023-07-19 03:01:54', 0),
	(103, 54, '1232132131', '2023-07-19 03:01:54', '2023-07-19 03:01:54', 0),
	(104, 55, 'ewtrewt', '2023-07-19 03:03:08', '2023-07-19 03:02:59', 0),
	(105, 55, 'Æ°etrewte', '2023-07-19 03:03:08', '2023-07-19 03:02:59', 0),
	(106, 56, '124321', '2023-07-19 09:32:28', '2023-07-19 09:32:28', 0),
	(107, 57, 'r235235', '2023-07-20 00:19:23', '2023-07-19 09:32:51', 1),
	(108, 58, '346436', '2023-07-19 09:33:34', '2023-07-19 09:33:34', 0),
	(109, 58, '34564', '2023-07-19 09:33:34', '2023-07-19 09:33:34', 0),
	(110, 59, '346436', '2023-07-19 09:33:37', '2023-07-19 09:33:37', 0),
	(111, 59, '34564', '2023-07-19 09:33:37', '2023-07-19 09:33:37', 0),
	(112, 60, '32525', '2023-07-19 09:37:33', '2023-07-19 09:37:33', 0),
	(113, 61, '35234543254332', '2023-07-19 22:03:42', '2023-07-19 18:09:40', 1),
	(114, 62, 'Æ°qerqwr', '2023-07-20 01:22:50', '2023-07-19 18:12:15', 1),
	(115, 62, 'wqr', '2023-07-19 18:12:15', '2023-07-19 18:12:15', 0),
	(116, 63, 'Bình Thường', '2023-07-20 03:20:10', '2023-07-20 03:20:10', 0),
	(117, 63, 'Khó Chịu', '2023-07-20 03:20:10', '2023-07-20 03:20:10', 0),
	(118, 63, 'Rất Không Thích', '2023-07-20 03:20:31', '2023-07-20 03:20:10', 1),
	(119, 64, 'có', '2023-07-20 03:20:10', '2023-07-20 03:20:10', 0),
	(120, 64, 'không', '2023-07-20 03:20:31', '2023-07-20 03:20:10', 1),
	(121, 65, 'Có Khu Vực Hút Thuốc', '2023-07-20 03:20:31', '2023-07-20 03:20:10', 1),
	(122, 65, 'Phạt Khi Hút Trong Văn Phòng', '2023-07-20 03:20:31', '2023-07-20 03:20:10', 1),
	(123, 65, 'Nhắc Nhở Động Viên', '2023-07-20 03:20:31', '2023-07-20 03:20:10', 1),
	(124, 66, 'Bạn Có Ý Kiến Gì Khác Không?', '2023-07-20 03:20:31', '2023-07-20 03:20:10', 1);

-- Dumping structure for table sso_client_ecommerce.vote_questions
CREATE TABLE IF NOT EXISTS `vote_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vote_id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__vote` (`vote_id`),
  CONSTRAINT `FK__vote` FOREIGN KEY (`vote_id`) REFERENCES `vote` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sso_client_ecommerce.vote_questions: ~30 rows (approximately)
INSERT INTO `vote_questions` (`id`, `vote_id`, `question`, `type`, `created_at`, `updated_at`) VALUES
	(33, 32, 'Báº¡n Ä‘ang sá»­ dá»¥ng loáº¡i hÃ¬nh sáº£n pháº©m thuá»‘c lÃ¡ gÃ¬?', 1, '2023-07-18 00:14:57', '2023-07-18 00:14:57'),
	(34, 32, 'Theo báº¡n, hÃºt thuá»‘c lÃ¡ cÃ³ háº¡i nhÆ° tháº¿ nÃ o vá»›i sá»©c khá»e báº£n thÃ¢n?', 2, '2023-07-18 00:14:57', '2023-07-18 00:14:57'),
	(35, 33, 'Báº¡n nghÄ© sao', 3, '2023-07-18 00:18:37', '2023-07-18 00:18:37'),
	(36, 32, 'Báº¡n Ä‘ang sá»­ dá»¥ng loáº¡i hÃ¬nh sáº£n pháº©m thuá»‘c lÃ¡ gÃ¬?', 1, '2023-07-18 01:00:55', '2023-07-18 01:00:55'),
	(37, 32, 'Theo báº¡n, hÃºt thuá»‘c lÃ¡ cÃ³ háº¡i nhÆ° tháº¿ nÃ o vá»›i sá»©c khá»e báº£n thÃ¢n?', 2, '2023-07-18 01:00:55', '2023-07-18 01:00:55'),
	(38, 32, 'truty', 1, '2023-07-18 01:00:55', '2023-07-18 01:00:55'),
	(39, 32, 'Báº¡n Ä‘ang sá»­ dá»¥ng loáº¡i hÃ¬nh sáº£n pháº©m thuá»‘c lÃ¡ gÃ¬?', 1, '2023-07-18 01:01:50', '2023-07-18 01:01:50'),
	(40, 32, 'Theo báº¡n, hÃºt thuá»‘c lÃ¡ cÃ³ háº¡i nhÆ° tháº¿ nÃ o vá»›i sá»©c khá»e báº£n thÃ¢n?', 2, '2023-07-18 01:01:50', '2023-07-18 01:01:50'),
	(41, 32, 'Báº¡n Ä‘ang sá»­ dá»¥ng loáº¡i hÃ¬nh sáº£n pháº©m thuá»‘c lÃ¡ gÃ¬?', 1, '2023-07-18 01:02:17', '2023-07-18 01:02:17'),
	(42, 32, 'Theo báº¡n, hÃºt thuá»‘c lÃ¡ cÃ³ háº¡i nhÆ° tháº¿ nÃ o vá»›i sá»©c khá»e báº£n thÃ¢n?', 2, '2023-07-18 01:02:17', '2023-07-18 01:02:17'),
	(43, 32, 'Báº¡n Ä‘ang sá»­ dá»¥ng loáº¡i hÃ¬nh sáº£n pháº©m thuá»‘c lÃ¡ gÃ¬?', 1, '2023-07-18 01:02:17', '2023-07-18 01:02:17'),
	(44, 32, 'Theo báº¡n, hÃºt thuá»‘c lÃ¡ cÃ³ háº¡i nhÆ° tháº¿ nÃ o vá»›i sá»©c khá»e báº£n thÃ¢n?', 2, '2023-07-18 01:02:17', '2023-07-18 01:02:17'),
	(45, 32, 'truty', 1, '2023-07-18 01:02:17', '2023-07-18 01:02:17'),
	(46, 32, 'Báº¡n Ä‘ang sá»­ dá»¥ng loáº¡i hÃ¬nh sáº£n pháº©m thuá»‘c lÃ¡ gÃ¬?', 1, '2023-07-18 01:02:17', '2023-07-18 01:02:17'),
	(47, 32, 'Báº¡n Ä‘ang sá»­ dá»¥ng loáº¡i hÃ¬nh sáº£n pháº©m thuá»‘c lÃ¡ gÃ¬?', 1, '2023-07-18 01:02:21', '2023-07-18 01:02:21'),
	(48, 32, 'Theo báº¡n, hÃºt thuá»‘c lÃ¡ cÃ³ háº¡i nhÆ° tháº¿ nÃ o vá»›i sá»©c khá»e báº£n thÃ¢n?', 2, '2023-07-18 01:02:21', '2023-07-18 01:02:21'),
	(49, 32, 'Báº¡n Ä‘ang sá»­ dá»¥ng loáº¡i hÃ¬nh sáº£n pháº©m thuá»‘c lÃ¡ gÃ¬?', 1, '2023-07-18 01:02:21', '2023-07-18 01:02:21'),
	(50, 32, 'Theo báº¡n, hÃºt thuá»‘c lÃ¡ cÃ³ háº¡i nhÆ° tháº¿ nÃ o vá»›i sá»©c khá»e báº£n thÃ¢n?', 2, '2023-07-18 01:02:21', '2023-07-18 01:02:21'),
	(51, 33, 'Báº¡n nghÄ© sao', 3, '2023-07-18 01:15:48', '2023-07-18 01:15:48'),
	(52, 33, 'Test', 1, '2023-07-18 01:15:48', '2023-07-18 01:15:48'),
	(53, 34, 'rytery', 1, '2023-07-18 01:16:56', '2023-07-18 01:16:56'),
	(54, 35, '1231', 1, '2023-07-19 03:01:54', '2023-07-19 03:01:54'),
	(55, 36, 'retrwet', 1, '2023-07-19 03:02:59', '2023-07-19 03:02:59'),
	(56, 37, '124321', 3, '2023-07-19 09:32:28', '2023-07-19 09:32:28'),
	(57, 38, 'r235235', 3, '2023-07-19 09:32:51', '2023-07-19 09:32:51'),
	(58, 39, '346543', 1, '2023-07-19 09:33:34', '2023-07-19 09:33:34'),
	(59, 40, '346543', 1, '2023-07-19 09:33:37', '2023-07-19 09:33:37'),
	(60, 41, '235235', 1, '2023-07-19 09:37:33', '2023-07-19 09:37:33'),
	(61, 42, '235234', 1, '2023-07-19 18:09:40', '2023-07-19 18:09:40'),
	(62, 43, 'Æ°qrewq', 1, '2023-07-19 18:12:15', '2023-07-19 18:12:15'),
	(63, 44, 'Bạn Cảm Nhận Thế Nào Về Tình Trạng Hút Thuốc Lá Trong Phòng Làm Việc', 2, '2023-07-20 03:20:10', '2023-07-20 03:20:10'),
	(64, 44, 'Bạn Có Muốn Nghiêm Cấm Việc Hút Thuốc Trong Phòng Làm Việc', 1, '2023-07-20 03:20:10', '2023-07-20 03:20:10'),
	(65, 44, 'Bạn Chọn Giải Pháp Nào Để Hạn Chế Việc Hút Thuốc Này', 1, '2023-07-20 03:20:10', '2023-07-20 03:20:10'),
	(66, 44, 'Bạn Có Ý Kiến Gì Khác Không?', 3, '2023-07-20 03:20:10', '2023-07-20 03:20:10');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
