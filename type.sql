-- --------------------------------------------------------
-- Host:                         206.189.47.16
-- Server version:               10.7.3-MariaDB-1:10.7.3+maria~focal - mariadb.org binary distribution
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table pk_quota66.types
DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_GPAX` float NOT NULL DEFAULT 0,
  `min_GPA_MAT` float NOT NULL DEFAULT 0,
  `min_GPA_SCI` float NOT NULL DEFAULT 0,
  `allow_ungrade` tinyint(1) NOT NULL DEFAULT 0,
  `allow_not_meet_req` tinyint(1) NOT NULL DEFAULT 0,
  `img_cover` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default%20image.jpg',
  PRIMARY KEY (`code`) USING BTREE,
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pk_quota66.types: ~3 rows (approximately)
DELETE FROM `types`;
INSERT INTO `types` (`code`, `name`, `min_GPAX`, `min_GPA_MAT`, `min_GPA_SCI`, `allow_ungrade`, `allow_not_meet_req`, `img_cover`) VALUES
	('eng', 'ภาษาอังกฤษ – คณิตศาสตร์', 0, 0, 0, 0, 1, 'eng.gif');
INSERT INTO `types` (`code`, `name`, `min_GPAX`, `min_GPA_MAT`, `min_GPA_SCI`, `allow_ungrade`, `allow_not_meet_req`, `img_cover`) VALUES
	('mou', 'การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL', 0, 0, 0, 0, 1, 'mou.gif');
INSERT INTO `types` (`code`, `name`, `min_GPAX`, `min_GPA_MAT`, `min_GPA_SCI`, `allow_ungrade`, `allow_not_meet_req`, `img_cover`) VALUES
	('sci', 'วิทยาศาสตร์ – คณิตศาสตร์', 2.75, 2.5, 2.5, 0, 1, 'sci.gif');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
