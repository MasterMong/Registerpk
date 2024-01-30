-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.31 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table student_register.plans
DROP TABLE IF EXISTS `plans`;
CREATE TABLE IF NOT EXISTS `plans` (
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_GPAX` float NOT NULL DEFAULT '0',
  `min_GPA_MAT` float NOT NULL DEFAULT '0',
  `min_GPA_SCI` float NOT NULL DEFAULT '0',
  `allow_ungrade` tinyint(1) NOT NULL DEFAULT '0',
  `allow_not_meet_req` tinyint(1) NOT NULL DEFAULT '0',
  `allow_behavior_fail` tinyint(1) NOT NULL DEFAULT '0',
  `img_cover` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default%20image.jpg',
  `color` int DEFAULT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student_register.plans: ~3 rows (approximately)
DELETE FROM `plans`;
INSERT INTO `plans` (`code`, `name`, `min_GPAX`, `min_GPA_MAT`, `min_GPA_SCI`, `allow_ungrade`, `allow_not_meet_req`, `allow_behavior_fail`, `img_cover`, `color`) VALUES
	('eng', 'ภาษาอังกฤษ – คณิตศาสตร์', 0, 0, 0, 0, 0, 0, 'eng.gif', 0);
INSERT INTO `plans` (`code`, `name`, `min_GPAX`, `min_GPA_MAT`, `min_GPA_SCI`, `allow_ungrade`, `allow_not_meet_req`, `allow_behavior_fail`, `img_cover`, `color`) VALUES
	('mou', 'การจัดการธุรกิจการค้าสมัยใหม่ : MOU CP ALL', 0, 0, 0, 0, 0, 0, 'mou.gif', 0);
INSERT INTO `plans` (`code`, `name`, `min_GPAX`, `min_GPA_MAT`, `min_GPA_SCI`, `allow_ungrade`, `allow_not_meet_req`, `allow_behavior_fail`, `img_cover`, `color`) VALUES
	('sci', 'วิทยาศาสตร์ – คณิตศาสตร์', 2.75, 2.5, 2.5, 0, 0, 0, 'sci.gif', 0);

-- Dumping structure for table student_register.students
DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) NOT NULL,
  `cid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `student_number` varchar(255) NOT NULL,
  `plan` text NOT NULL,
  `GPAX` int NOT NULL,
  `GPA_MAT` int NOT NULL,
  `GPA_SCI` int NOT NULL,
  `GPA_ENG` int DEFAULT NULL,
  `GPA_Fail` int NOT NULL,
  `behavior_pass` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table student_register.students: ~495 rows (approximately)
DELETE FROM `students`;
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(1, '37015', '1409903723398', 'นายกิตติธัช สายวรสิงห์', '1', '1', '', 1, 1, 1, 0, 0, 1);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(2, '37016', '1409600454161', 'นายจิรภัทร นามวงค์', '1', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(3, '37017', '1209000394666', 'นายจิรัฎฐ์ วราพลสวัสดิ์', '1', '3', 'sci', 4, 4, 4, NULL, 0, 1);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(4, '37018', '1118600046006', 'นายเจษฎา อำพันธ์เสน', '1', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(5, '37019', '1409903748617', 'นายณฐนนท พิขุนทด', '1', '5', '', 0, 0, 0, 5, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(6, '37020', '1368400086428', 'นายณัฐธวัตร เกาะแก้ง', '1', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(7, '37021', '1104200668791', 'นายนนทกร ยูรสูงเนิน', '1', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(8, '37022', '1100401436451', 'นายบรรณสรณ์ มะปะเข', '1', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(9, '37023', '5207200002631', 'นายมารีโอ ลีบิก', '1', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(10, '37024', '1279900367185', 'นายรติพงษ์ จันทร์โชติ', '1', '10', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(11, '37025', '1102400224622', 'นางสาวกุลธิดา ทนุวรรณ์', '1', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(12, '37026', '1368400098931', 'นางสาวชัญญานุช คงโนนกอก', '1', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(13, '37027', '1409903708861', 'นางสาวญาณิศา พนมภูมิ', '1', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(14, '37028', '1409600444417', 'นางสาวฐิติกานต์ หมู่โสภิญ', '1', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(15, '37029', '1368400102164', 'นางสาวณัชชา ศรีศักดา', '1', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(16, '37030', '1209702445619', 'นางสาวดารียา ไตรเจริญวาณิชย์', '1', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(17, '37031', '1368400103471', 'นางสาวทักษอร ก่อกุศล', '1', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(18, '37032', '1409903708283', 'นางสาวธัญญลักษณ์ พิมัยรัมย์', '1', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(19, '37033', '1409600441523', 'นางสาวนุชนาฏ ปั่นสันเทียะ', '1', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(20, '37034', '1409903788031', 'นางสาวปิย์วรา ภิลัยวรรณ์', '1', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(21, '37035', '1679900740346', 'นางสาวพรทิพา พืชหมอ', '1', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(22, '37036', '1368400104281', 'นางสาวพิมพ์ชนก ตาคำเที่ยง', '1', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(23, '37037', '5361001066641', 'นางสาวมิชา โรสเลยบอร์น', '1', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(24, '37038', '1368400104744', 'นางสาวมุธิตา ฮุยสูงเนิน', '1', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(25, '37039', '1409600451227', 'นางสาวรวิสรา สินบริสุทธิ์', '1', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(26, '37040', '2368400001862', 'นางสาวศศิรดา เกตุพิบูลย์', '1', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(27, '37041', '1368400094358', 'นางสาวอุษามณี แนวถาวร', '1', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(28, '37042', '1409600460064', 'นายกรณ์ดนัย คงสมบัติ', '2', '1', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(29, '37043', '1409903700738', 'นายขันทองแท้ ชาวน้ำปาด', '2', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(30, '37044', '1368400105252', 'นายจักรกฤษณ์ ดำรงกิจ', '2', '3', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(31, '37045', '1368800001055', 'นายจักรกฤษณ์ ฤาชา', '2', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(32, '37046', '1449900919135', 'นายชยพฤกษ์ วุฒิสาร', '2', '5', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(33, '37047', '1104301127361', 'นายณัฐพล พุ่มพวง', '2', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(34, '37048', '1318600046641', 'นายทีปกร ฦๅชา', '2', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(35, '37049', '1369900878359', 'นายเทวรานันญ์ ทิพย์บุญผล', '2', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(36, '37050', '1369900878359', 'นายธีรเสฏฐ์ อภิลักขิตพงศ์', '2', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(37, '37051', '1368400106241', 'นายนนทพันธ์ ชายชีวินลิขิต', '2', '10', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(38, '37052', '1368400095672', 'นายปัณญาวัชญ์ เจริญไทย', '2', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(39, '37053', '1368400095699', 'นายภาคิน วาดสูงเนิน', '2', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(40, '37054', '1368400102024', 'นายภูริปกรณ์ พิไลพันธ์', '2', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(41, '37055', '1368400094439', 'นายอชิฏะ ตลับนิล', '2', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(42, '37056', '1368400104868', 'นายอาชวิณ ชาตาดี', '2', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(43, '37057', '1469900824037', 'นางสาวกนกพร โสส้มกบ', '2', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(44, '37058', '1368400100137', 'นางสาวกรภัทร์ ชลธาร', '2', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(45, '37059', '1361001349704', 'นางสาวเกวลิน เอี้ยงทอง', '2', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(46, '37060', '1409600446452', 'นางสาวจันทกานต์ บุตะเขียว', '2', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(47, '37061', '1119902488789', 'นางสาวจิตราภิมุข อินทร', '2', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(48, '37062', '1419902598905', 'นางสาวจิราภัค วรรณพราหมณ์', '2', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(49, '37063', '1368400103365', 'นางสาวชญาภา สร่างยานาง', '2', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(50, '37064', '1368400101516', 'นางสาวชิตราพัทธ์ อินาลา', '2', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(51, '37065', '1409903774146', 'นางสาวเดือนเต็มดวง สุวรรณบน', '2', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(52, '37066', '1368400095192', 'นางสาวทักษพร อาณารัตน์', '2', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(53, '37067', '1409903791717', 'นางสาวธัญศตพร ทองดี', '2', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(54, '37068', '1368400098477', 'นางสาวเบญจรัตน์ เศรษฐชวาลวงษ์', '2', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(55, '37069', '1368400102971', 'นางสาวปาริชาต สร้อยจรุง', '2', '28', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(56, '37070', '1101501384098', 'นางสาวเปรมจิรารัญชน์ ผาพิมพ์', '2', '29', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(57, '37071', '1709901787787', 'นางสาวพรรษา ชำนาญพล', '2', '30', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(58, '37072', '1408900041490', 'นางสาวลลิตา แก้วแก่น', '2', '31', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(59, '37073', '1409600447645', 'นางสาววรรณพิศุทธิ์ โนนรุ่งเรือง', '2', '32', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(60, '37074', '1104700187902', 'นางสาววรัญญา ประกายเพชร', '2', '33', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(61, '37075', '1368400093912', 'นางสาววันวิสา แสนสุภาพ', '2', '34', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(62, '37076', '1368400097004', 'นางสาวศิรประภา หล้าศักดิ์', '2', '35', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(63, '37077', '1949900676807', 'นางสาวอันดาลีฟ สุทธิศาสตร์สกุล', '2', '36', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(64, '37078', '1368400096555', 'นายชนาธิป สำราญ', '3', '1', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(65, '37079', '1218500035192', 'นายณัฐภัทร เภสัชมาลา', '3', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(66, '37080', '1409903720330', 'นายตรีเพชร ตั้งธนกฤตกุล', '3', '3', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(67, '37081', '1100704049268', 'นายธนภัทร์ คงปรีชา', '3', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(68, '37082', '1368400099236', 'นายธนภัทร ธรรมกุล', '3', '5', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(69, '37083', '1368400095494', 'นายธราเทพ เข่งรอด', '3', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(70, '37084', '1749901220850', 'นายนิธิกร เสมาทอง', '3', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(71, '37085', '1368400101974', 'นายบุณยกร ถนอมชีพ', '3', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(72, '37086', '1368400089095', 'นายพนารักษ์ คำพิกุล', '3', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(73, '37087', '1409903708127', 'นายพัทธดนย์ ประทุมทอด', '3', '10', '', 0, 0, 0, NULL, 1, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(74, '37088', '1103704337070', 'นายภาคภูมิ ทีดินดำ', '3', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(75, '37089', '1139800155152', 'นายภูมิภัทร ฮู้พัฒนวิโรจน์', '3', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(76, '37090', '1729900802499', 'นายยศกร สวนจรูญ', '3', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(77, '37091', '1104100039015', 'นายวริทธิ์ธร คงสุข', '3', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(78, '37092', '1306600051952', 'นายศุภกิจ เกยสูงเนิน', '3', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(79, '37093', '1409903713023', 'นายอัยยะ จันทนะโพธิ', '3', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(80, '37094', '1368400096822', 'นายอานนท์ สุขสง่า', '3', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(81, '37095', '1368400095630', 'นางสาวกัญญารัตน์ ลาภประสพ', '3', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(82, '37096', '1104301128015', 'นางสาวกานต์พิชชา สัจจะเวทะ', '3', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(83, '37097', '1409903758132', 'นางสาวขวัญข้าว บุษดี', '3', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(84, '37098', '1369900836494', 'นางสาวณัฐจิราภา ยศรุ่งเรือง', '3', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(85, '37099', '1909701197623', 'นางสาวดุจฤทัย น้อยลา', '3', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(86, '37100', '1368100062612', 'นางสาวแทมมารีน ตาปราบ', '3', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(87, '37101', '1368400103667', 'นางสาวธนัญญา มาลาวรรณ', '3', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(88, '37102', '1409903780855', 'นางสาวธัญนินท์ อธิรัฐสีห์', '3', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(89, '37103', '1409600449036', 'นางสาวธันยพร วรจักร', '3', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(90, '37104', '1368400095478', 'นางสาวธิดาวรรณ ครุฑรักษา', '3', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(91, '37105', '1368400092355', 'นางสาวปิยาพัชร แพ้ภูเขียว', '3', '28', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(92, '37106', '1119902446920', 'นางสาวปุญญิศา ลบหนองบัว', '3', '29', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(93, '37107', '1419902560037', 'นางสาวพรภ์ตรีมุข ภิรมย์ไกรภักดิ์', '3', '30', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(94, '37108', '1409903704059', 'นางสาวภิญญาพัชญ์ กระพันธ์เขียว', '3', '31', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(95, '37109', '1368400111040', 'นางสาวลัชชา พรสวัสดิ์', '3', '32', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(96, '37110', '1102004036416', 'นางสาววรัญญา วิสิทธิ์สูงเนิน', '3', '33', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(97, '37111', '1679900753642', 'นางสาวศราลี กัณหา', '3', '34', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(98, '37112', '1100704039165', 'นางสาวสรัลรัตน์ ลูกชัยภูมิ', '3', '35', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(99, '37113', '1368400101699', 'นางสาวสุธิตา ประกอบชัย', '3', '36', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(100, '37114', '1409903762881', 'นายกฤตภาส กอบการดี', '4', '1', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(101, '37115', '1409600454404', 'นายเจษฎา ชินบุตร', '4', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(102, '37116', '1368400096661', 'นายเจษฎาวุธ คำทองสุข', '4', '3', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(103, '37117', '1209000394232', 'นายชนะพงศ์ จรัสพันธ์', '4', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(104, '37118', '1368400106666', 'นายชยานนท์ รักษ์มณี', '4', '5', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(105, '37119', '1770401324101', 'นายณัฐวุฒิ แสนโคตร', '4', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(106, '37120', '1409600457942', 'นายธนบัตร เจือเงิน', '4', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(107, '37121', '1368400094625', 'นายธนภัทร ศรีสุข', '4', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(108, '37122', '1368400094315', 'นายธนันธร ประจำเมือง', '4', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(109, '37123', '1368400093190', 'นายธนารักษ์ คันธา', '4', '10', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(110, '37124', '1368400098248', 'นายธัญพิสิษฐ์ ดิเรกศรี', '4', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(111, '37125', '1309903575101', 'นายนราธิป มิตรชื่น', '4', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(112, '37126', '1368400095541', 'นายพัชรพล จันทรเสนา', '4', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(113, '37127', '1409903770981', 'นายภานุวัฒน์ พลอยขุนทด', '4', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(114, '37128', '1369900860794', 'นายภูมิมินทร์ แท่นศีลนวนนท์', '4', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(115, '37129', '1368400108502', 'นายศุภณัฐ เรียนคำ', '4', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(116, '37130', '1409903733105', 'นายสิริวัฒน์ ศรีอาชวกุล', '4', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(117, '37131', '1368400100307', 'นายอภิรัช เผยศิริ', '4', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(118, '37132', '1409903691721', 'นายอิทธิเชษฐ์ ขุนศรี', '4', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(119, '37133', '1749800457706', 'นางสาวกมลทิพย์ ประสิทธิเวช', '4', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(120, '37134', '1368400096342', 'นางสาวชญานันท์ นามวิจิตร', '4', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(121, '37135', '1368400098035', 'นางสาวชฎาพร เกิดสมบูรณ์', '4', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(122, '37136', '1139600518316', 'นางสาวชนากานต์ ขบวนฉลาด', '4', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(123, '37137', '1368400095222', 'นางสาวชลธิชา ขวัญรักษา', '4', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(124, '37138', '1368400090166', 'นางสาวชาลิสา บุญกว้าง', '4', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(125, '37139', '1409600454323', 'นางสาวญาณธิชา จิตรกล้า', '4', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(126, '37140', '1360401301694', 'นางสาวณัฐณิชา กระพันธ์เขียว', '4', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(127, '37141', '1368400096539', 'นางสาวตรีชฎา พรหมภูวงศ์', '4', '28', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(128, '37142', '1368400100692', 'นางสาวทิพย์สุคนธ์ พรมมายอม', '4', '29', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(129, '37143', '1409903747998', 'นางสาวธนพร ชมนาวัง', '4', '30', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(130, '37144', '1369400037703', 'นางสาวนัฐธิณี สุดแสง', '4', '31', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(131, '37145', '1368400102806', 'นางสาวเปรมปรีดิ์ญาพร ทวีคำ', '4', '32', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(132, '37146', '1629900882531', 'นางสาวพัชริสา เดชะผล', '4', '33', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(133, '37147', '1368400098086', 'นางสาวภัทรนันท์ ทนสูงเนิน', '4', '34', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(134, '37148', '1368400096709', 'นางสาววรณัฏฐ์ คุณประทุม', '4', '35', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(135, '37149', '1368400104795', 'นางสาววศินี แสนโคตร', '4', '36', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(136, '37150', '1368400095664', 'นางสาววันวิสาข์ ทองไม้', '4', '37', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(137, '37151', '1129701455671', 'นางสาววีรดา สงวนศิลป์', '4', '38', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(138, '37152', '1360401300655', 'นางสาวศศิวิมล ทิพย์รักษ์', '4', '39', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(139, '37153', '1368400100625', 'นางสาวศิรภัทรสร ชัยเนตร', '4', '40', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(140, '37154', '1368400093939', 'นางสาวสโรชา แสนละคร', '4', '41', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(141, '37155', '1409600455214', 'นางสาวสุธีมนต์ บริบูรณ์วงษา', '4', '42', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(142, '37156', '1368400101940', 'นางสาวอนงชนก ลีลาเมือง', '4', '43', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(143, '37157', '1103704363381', 'นางสาวอภิชญา ดีหมี', '4', '44', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(144, '37158', '1368400105805', 'นายชณาปกร วรรณ์รักษ์', '5', '1', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(145, '37159', '1368400096601', 'นายชัยวัฒน์ บุญเหง่า', '5', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(146, '37160', '1139600476885', 'นายชาติกล้า เมืองช้าง', '5', '3', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(147, '37161', '1409600448919', 'นายทินกร ไชยชมภู', '5', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(148, '37162', '1499900543585', 'นายธนวัฒน์ แสงวุธ', '5', '5', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(149, '37163', '1368400099724', 'นายธนากร พรหมเมตตา', '5', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(150, '37164', '1779900430192', 'นายปรมี อิ่มเต็ม', '5', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(151, '37165', '1368400100480', 'นายปริชญ์ จะโนรัตน์', '5', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(152, '37166', '1104301137774', 'นายปวินท์ณวัต บุษบา', '5', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(153, '37167', '1368400099325', 'นายเปรมมนัส นามบุรี', '5', '10', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(154, '37168', '1368400093432', 'นายพงษกร มะโนลัย', '5', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(155, '37169', '1368400091316', 'นายภูมิรพี พนมภูมิ', '5', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(156, '37170', '1368400091847', 'นายมโนชา เเก้วชาญชัย', '5', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(157, '37171', '1409903748757', 'นายเมธาวิน น้อยตะริ', '5', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(158, '37172', '1368400098281', 'นายยสินทร จรัสเขต', '5', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(159, '37173', '1368400089389', 'นายวิสวัตติ์ เฟื้องฟู', '5', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(160, '37174', '1368400089958', 'นายสุเมธ พรมลิ', '5', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(161, '37175', '1209301224778', 'นางสาวกัญญพรรณ ชนะพันธ์', '5', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(162, '37176', '1409600455095', 'นางสาวกัญญารัตน์ อินบุญ', '5', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(163, '37177', '1729900790181', 'นางสาวกัลยารัตน์ เมธาพรสุทิวัส', '5', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(164, '37178', '1368400094731', 'นางสาวแก้วจุฑา พงษ์เสน', '5', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(165, '37179', '1368400095362', 'นางสาวชนัญชิดา โสเมือง', '5', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(166, '37180', '1368400092681', 'นางสาวชุติกาญจน์ ผลคำ', '5', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(167, '37181', '1368400096415', 'นางสาวณัฐวดี จรัสกาย', '5', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(168, '37182', '1409600460340', 'นางสาวณัฐวดี มุ่งเจือกลาง', '5', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(169, '37183', '1368400096521', 'นางสาวณิชา มีดินดำ', '5', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(170, '37184', '1100401413931', 'นางสาวทาริกา ภักดี', '5', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(171, '37185', '1368400103721', 'นางสาวธันยพร นามวิจิตร', '5', '28', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(172, '37186', '1368400101478', 'นางสาวธันยาภรณ์ มีพวก', '5', '29', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(173, '37187', '1368400095770', 'นางสาวปภาดา เวียงดินดำ', '5', '30', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(174, '37188', '1368400090832', 'นางสาวปริยากร จันทร', '5', '31', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(175, '37189', '1409600453190', 'นางสาวปรียาภัทร บุญปอด', '5', '32', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(176, '37190', '1368400099261', 'นางสาวพลอยประกายกานต์ คำทองเขียว', '5', '33', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(177, '37191', '1368300035201', 'นางสาวพัชรีพร ก้านแก้ว', '5', '34', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(178, '37192', '1849300106652', 'นางสาวแพรวพัชชา อดทน', '5', '35', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(179, '37193', '1369400038939', 'นางสาวมินตรา น้อยลา', '5', '36', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(180, '37194', '1368400099431', 'นางสาวรินทิรา หมู่ไพบูลย์', '5', '37', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(181, '37195', '1368300035325', 'นางสาววรารัตน์ ประหยัดสิน', '5', '38', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(182, '37196', '1348700073011', 'นางสาววิภาดา ค้ำยาง', '5', '39', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(183, '37197', '1368400102415', 'นางสาวศุภิสรา เฟื่องแดน', '5', '40', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(184, '37198', '1368400095982', 'นางสาวสโรชา หมื่นจิตร', '5', '41', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(185, '37199', '1409903726389', 'นางสาวสาริสา นวลจันทร์', '5', '42', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(186, '37200', '1369900828335', 'นางสาวสุวเพ็ญ แก้วเมืองเก่า', '5', '43', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(187, '37201', '1209000433319', 'นางสาวอุษณีย์ พยัคฆพล', '5', '44', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(188, '37202', '1369900873888', 'นายก้องภพ ลือลาภ', '6', '1', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(189, '37203', '1119902454299', 'นายกีรติ เหมือนพงษ์', '6', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(190, '37204', '5361001065636', 'นายเจษฎาภรณ์ แฝงทรัพย์', '6', '3', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(191, '37205', '1368400104647', 'นายชญานิน คุณประทุม', '6', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(192, '37206', '1399000068181', 'นายณัฐวุฒิ พลเขต', '6', '5', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(193, '37207', '1489700043112', 'นายณัฐศักดิ์ แดนกองแก้ว', '6', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(194, '37208', '1368400095745', 'นายธีรเดช ขวัญถาวร', '6', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(195, '37209', '1409903766607', 'นายธีรภาพ มิ่งโอโล', '6', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(196, '37210', '1409903674869', 'นายธีราทร ขวัญศักดิ์', '6', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(197, '37211', '1368400097161', 'นายปุรัสกร พวกแก้ว', '6', '10', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(198, '37212', '1459901297481', 'นายภัทรดนัย โชคคุณ', '6', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(199, '37213', '1368400095851', 'นายวีรภัทร ขวัญศิริ', '6', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(200, '37214', '1368400098230', 'นายสกนธ์ เที่ยงธรรม', '6', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(201, '37215', '1368400099511', 'นายอณุภา ลาภสถิต', '6', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(202, '37216', '1368400101133', 'นายอภิสิทธิ์ สูงภิไลย์', '6', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(203, '37217', '1368400104523', 'นายอัครวัฒน์ คุณประทุม', '6', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(204, '37218', '1368400090590', 'นายอัยการ ฤาชา', '6', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(205, '37219', '1368400105601', 'นายอารักษ์ แจ้งบ้าน', '6', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(206, '37220', '1369400038050', 'นางสาวขวัญฤดี ดิษฐ์จู', '6', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(207, '37221', '1409600456679', 'นางสาวจิณณพัต กำไรรวย', '6', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(208, '37222', '1368400099082', 'นางสาวจิรนันท์ ภูโสมงาม', '6', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(209, '37223', '1368400090522', 'นางสาวจุฑามาศ ลาภมูล', '6', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(210, '37224', '1101801567155', 'นางสาวชลดา เรืองแหล่', '6', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(211, '37225', '1100704026454', 'นางสาวญาดา แก้วเมืองกลาง', '6', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(212, '37226', '1368400106399', 'นางสาวฐิติวรดา ขวัญครอง', '6', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(213, '37227', '1409903740993', 'นางสาวณัชชา ศรีร่มเย็น', '6', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(214, '37228', '1368300033306', 'นางสาวณัฐชยา ทุมมา', '6', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(215, '37229', '1368400098019', 'นางสาวณัฐฐิยา พ่อธานี', '6', '28', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(216, '37230', '1209702458303', 'นางสาวนภัสวรรณ แผ่นสุวรรณ', '6', '29', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(217, '37231', '1209301218867', 'นางสาวนฤมล สีหอมไชย', '6', '30', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(218, '37232', '1368400100471', 'นางสาวนัยนันทร นันทพล', '6', '31', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(219, '37233', '1368400091651', 'นางสาวปวีณ์กร ประตังถาเน', '6', '32', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(220, '37234', '1368400104906', 'นางสาวปิยวรรณ พิมพ์เเก้ว', '6', '33', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(221, '37235', '1368400098051', 'นางสาวปิยะพร แก้วสลับ', '6', '34', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(222, '37236', '1409600452151', 'นางสาวภัทราภรณ์ พันธ์ชัยโย', '6', '35', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(223, '37237', '1368400102113', 'นางสาววรรณวริน ภูมิฐาน', '6', '36', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(224, '37238', '1104200674251', 'นางสาวศิพรรษา คล้ายวิเชียร', '6', '37', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(225, '37239', '1368400093971', 'นางสาวสิริวิมล กัณหาเขียว', '6', '38', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(226, '37240', '1409600458183', 'นางสาวสุจิณณา วรรณกุล', '6', '39', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(227, '37241', '1368400096423', 'นางสาวสุดาภรณ์ ยุคคลัง', '6', '40', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(228, '37242', '1368400100951', 'นางสาวสุภาพร เชิดชู', '6', '41', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(229, '37243', '1369400037762', 'นางสาวสุภาวดี พลลือ', '6', '42', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(230, '37244', '1368400099139', 'นางสาวหทัยชนก อิ่มเต็ม', '6', '43', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(231, '37245', '1409600451090', 'นางสาวอัญชิษฐา เลียบภูเวียง', '6', '44', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(232, '37246', '1368400104817', 'นายกิตติธัช มีอิสระ', '7', '1', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(233, '37247', '1368400097365', 'นายโกลิตะ หล้าเพชร', '7', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(234, '37248', '1104200651359', 'นายชยกฤติ ยะภักดี', '7', '3', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(235, '37249', '1368400094412', 'นายชาคริต เลือดกุมภา', '7', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(236, '37250', '1219800491097', 'นายฐิติศักดิ์ สังข์สูงเนิน', '7', '5', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(237, '37251', '1368400098973', 'นายณัฐภัทร จิตหมั่น', '7', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(238, '37252', '1368400099252', 'นายณัฐิวุฒิ โคตรบ้านเเข้', '7', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(239, '37253', '1209501232138', 'นายธนเทพ เอิบแก้ง', '7', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(240, '37254', '1368400102911', 'นายธีรภัทร์ พรหมราช', '7', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(241, '37255', '1368400097772', 'นายพิชิตชัย กอราช', '7', '10', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(242, '37256', '1368400093050', 'นายรัฐภูมิ รักงาน', '7', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(243, '37257', '1368400091073', 'นายฤทธิพร ป้อมสุวรรณ', '7', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(244, '37258', '1368400098141', 'นายวรธันย์ สีสุดตา', '7', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(245, '37259', '1368400105503', 'นายวีรวุฒิ เกิดพร', '7', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(246, '37260', '1409903743640', 'นายสรวิชญ์ คิดบรรจง', '7', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(247, '37261', '1368400101621', 'นายสุทธิภูมิ ก่อศิลป์', '7', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(248, '37262', '1368400098825', 'นายอักษร นิลพงษ์', '7', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(249, '37263', '1369400038963', 'นางสาวสุพรรญา พรมรัง', '7', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(250, '37264', '1368400101672', 'นางสาวกมลทิพย์ ธรรมประกอบ', '7', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(251, '37265', '1101801565560', 'นางสาวกัญญาณัช สิงห์รัว', '7', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(252, '37266', '1369200064120', 'นางสาวเกษนิภา กระเเสหัน', '7', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(253, '37267', '1499900554366', 'นางสาวขวัญข้าว วงษ์ซิจิตร', '7', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(254, '37268', '1129902044431', 'นางสาวจิรวดี คำสุเรศ', '7', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(255, '37269', '1368400104167', 'นางสาวชลิดา วงษ์จำปา', '7', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(256, '37270', '1368400093599', 'นางสาวชุติมา ดอนเตาเหล็ก', '7', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(257, '37271', '1119902463964', 'นางสาวธารทิพย์ พลนิกร', '7', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(258, '37272', '1240401218267', 'นางสาวนวรัตน์ เทียมสูงเนิน', '7', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(259, '37273', '1368400104540', 'นางสาวนันทิยา พิมพา', '7', '28', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(260, '37274', '1409600444255', 'นางสาวบุณยานุช ประจันสี', '7', '29', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(261, '37275', '1368400099694', 'นางสาวปณิฏฐา เศียรนอก', '7', '30', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(262, '37276', '1168300020753', 'นางสาวปริ่มฤดี พรมแก้ว', '7', '31', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(263, '37277', '1368400098400', 'นางสาวปรีญาภรณ์ อินสูงเนิน', '7', '32', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(264, '37278', '1368400098604', 'นางสาวปวีณ์ธิดา หาญปราบ', '7', '33', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(265, '37279', '1368400101311', 'นางสาวพรชนก ศรีษะพรม', '7', '34', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(266, '37280', '1368400096083', 'นางสาวพิมพิศา พิมวราศรีโสภณ', '7', '35', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(267, '37281', '1368400096652', 'นางสาวพิรญาย์ บุตะเขียว', '7', '36', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(268, '37282', '1368400098299', 'นางสาวเพชรลดา พิมชัย', '7', '37', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(269, '37283', '1368400105813', 'นางสาวมัลลิกา แสนเสนยา', '7', '38', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(270, '37284', '1368400089451', 'นางสาววรัทยา จุลลนันท์', '7', '39', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(271, '37285', '1139600517344', 'นางสาวสุคนธรัตน์ บาระพรม', '7', '40', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(272, '37286', '1368400096474', 'นางสาวสุณัฎฐา บุญรอด', '7', '41', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(273, '37287', '1368400099953', 'นางสาวสุวภัทร ชาติไทย', '7', '42', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(274, '37288', '1139600458984', 'นางสาวโสธิดา ทาแก้วน้อย', '7', '43', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(275, '37289', '1368400101613', 'นางสาวอินทิพร หอมบุญ', '7', '44', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(276, '37290', '1368400097926', 'นายเกียรติศักดิ์ ขวัญบุญ', '8', '1', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(277, '37291', '1368400110736', 'นายชยางกูร อินทะทรายคำ', '8', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(278, '37292', '1368400089125', 'นายฐิติกานต์ ยุทธชัย', '8', '3', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(279, '37293', '1368400100340', 'นายณรงค์ฤทธิ์ กิมาลี', '8', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(280, '37294', '1368400100897', 'นายณัฐภัทร เพ็ญสุริยะ', '8', '5', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(281, '37295', '1368400098434', 'นายทัศน์พล สรสิทธิ์', '8', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(282, '37296', '1368400101958', 'นายธนพล แจ่มใส', '8', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(283, '37297', '1368400085197', 'นายธนวันต์ ชราศรี', '8', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(284, '37298', '1509966626470', 'นายธารากร สิมมา', '8', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(285, '37299', '1368400098078', 'นายนัฐพงศ์ ผ่อนจรุง', '8', '10', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(286, '37300', '1368400089231', 'นายพงศธร แผลงเวช', '8', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(287, '37301', '1368400097489', 'นายภูวดล พิมพ์งาม', '8', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(288, '37302', '1369200066688', 'นายรัฐศาสตร์ รวยสูงเนิน', '8', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(289, '37303', '1409600446177', 'นายวงศกร วันวิชิต', '8', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(290, '37304', '1409600455222', 'นายวัชรินทร์ เวียงดินดำ', '8', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(291, '37305', '1360401301091', 'นายสกลวัฒน์ พรมบุ', '8', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(292, '37306', '1368400095486', 'นายแสวงคุณ นาคสระเกษ', '8', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(293, '37307', '1368400092240', 'นายอนุชิต เชื้อบริบูรณ์', '8', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(294, '37308', '1368400095320', 'นางสาวกชวรรณ พาพานทอง', '8', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(295, '37309', '1368400101303', 'นางสาวกนกวรรณ กุลดารัมย์', '8', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(296, '37310', '1368400103837', 'นางสาวกวินธิดา บ่วงรักษ์', '8', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(297, '37311', '1368400092037', 'นางสาวเขมณัฐ นามพิกุล', '8', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(298, '37312', '1361300202128', 'นางสาวจีรัชญา วงษ์กล้า', '8', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(299, '37313', '1368400105261', 'นางสาวชนาภา กลั่นชัยภูมิ', '8', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(300, '37314', '1368400103420', 'นางสาวชวิศา สุชนะชา', '8', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(301, '37315', '1368400079308', 'นางสาวชุติกาญจน์ เต็มวงษ์', '8', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(302, '37316', '1368400094234', 'นางสาวฐิติพร แนวโสภา', '8', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(303, '37317', '1368400094790', 'นางสาวณัชชา เพียซ้าย', '8', '28', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(304, '37318', '1102004006479', 'นางสาวณัฎฐ์นรี ม่วงพันธุ์', '8', '29', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(305, '37319', '1368400099767', 'นางสาวณัฐพิชา ประทุมทีป', '8', '30', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(306, '37320', '1368400099783', 'นางสาวทัณฑิมา มุดทะเล', '8', '31', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(307, '37321', '1110301482401', 'นางสาวนลินนิภา บำรุงกลาง', '8', '32', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(308, '37322', '1660500250351', 'นางสาวปวีณ์ธิดา พรประทุม', '8', '33', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(309, '37323', '1119902478431', 'นางสาวภคพร ช่างอบ', '8', '34', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(310, '37324', '1368400095079', 'นางสาวมาญาวี บรรทม', '8', '35', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(311, '37325', '1101100291366', 'นางสาวมินตรา อัตตะโน', '8', '36', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(312, '37326', '1368400099571', 'นางสาวรุ่งณภา สุภาจันทร์', '8', '37', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(313, '37327', '1368400101842', 'นางสาวลดามณี เสนาเจริญ', '8', '38', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(314, '37328', '1368400098116', 'นางสาววณิดา ทูลแก้ว', '8', '39', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(315, '37329', '1368300034426', 'นางสาวศิริวิภา อ่อนแพง', '8', '40', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(316, '37330', '1101700464814', 'นางสาวอัญมณี ภิญโญทรัพย์', '8', '41', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(317, '37331', '1409600457225', 'นางสาวอุษณียาภรณ์ ดอนเตาเหล็ก', '8', '42', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(318, '37332', '1368400101907', 'นางสาวอุษา เผ่าหัวสระ', '8', '43', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(319, '37333', '1368400099872', 'นางสาวโอทนี นีรนนท์', '8', '44', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(320, '37334', '1368400096695', 'นายจิระพงศ์ มาเทียน', '9', '1', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(321, '37335', '1339000087754', 'นายชนะพล นาโนน', '9', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(322, '37336', '1368400097152', 'นายณฐกฤต เชื้อประทุม', '9', '3', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(323, '37337', '1369400039439', 'นายณัฐวุฒิ พรมเมตตา', '9', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(324, '37338', '1368400100889', 'นายเด่นภูมิ ฮุยสูงเนิน', '9', '5', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(325, '37339', '1368400102903', 'นายเตชิน แผ่นจินดา', '9', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(326, '37340', '1368400103829', 'นายเตชินท์ สัตย์ธรรม', '9', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(327, '37341', '1368400099961', 'นายธนดล ผาสีดา', '9', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(328, '37342', '1368400103292', 'นายธนากร หลวงเพชร', '9', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(329, '37343', '1368400105783', 'นายธีระกร ปราบโจร', '9', '10', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(330, '37344', '1368400096393', 'นายปกรณ์เกียรติ โตไพร', '9', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(331, '37345', '1368400096881', 'นายปิยวัฒน์ จำปาทราย', '9', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(332, '37346', '1368400096091', 'นายภานุวัฒน์ พลเดชา', '9', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(333, '37347', '1368400101826', 'นายระพีพัฒน์ ขวัญครอง', '9', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(334, '37348', '1369900862045', 'นายฤกษ์ฤทธิ์ ฤทธิ์รักษา', '9', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(335, '37349', '1369400040178', 'นายวรวิทย์ กล้าหาญ', '9', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(336, '37350', '1869900716338', 'นายวีรวัฒน์ แซ่ลิ้ม', '9', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(337, '37351', '1368400094242', 'นายศิริพิพัฒน์ ภควัตสิริ', '9', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(338, '37352', '1368400093645', 'นายศุภกร กลิ่นศรีสุข', '9', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(339, '37353', '1478900053935', 'นายศุภกิจ บุญญาพิทักษ์', '9', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(340, '37354', '1309903593061', 'นายศุภัควีรร์ กองศรี', '9', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(341, '37355', '1368400106453', 'นายอนิรุต หงอกโคกสูง', '9', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(342, '37356', '1368400093874', 'นายอนุรักษ์ จิตรสุธรรม', '9', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(343, '37357', '1219901210301', 'นายอมเรศ ทองเจริญ', '9', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(344, '37358', '1368400103896', 'นางสาวกนกพร ชารี', '9', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(345, '37359', '1103000226025', 'นางสาวกนกวรรณ รัตนวราห', '9', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(346, '37360', '1209702464133', 'นางสาวกานต์ณิชา รุ่งรังสรรค์', '9', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(347, '37361', '1468100033603', 'นางสาวกิ่งโพยม โพธิ์ศรี', '9', '28', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(348, '37362', '1368400100641', 'นางสาวขนิษฐา มิ่งศิริ', '9', '29', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(349, '37363', '1368400098761', 'นางสาวณัฐชยา แผลงเวช', '9', '30', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(350, '37364', '1368400096296', 'นางสาวณัฐทริญาภรณ์ โฮมภิรมย์', '9', '31', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(351, '37365', '1368400095265', 'นางสาวณัฐริกา พลเดชา', '9', '32', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(352, '37366', '1368400101770', 'นางสาวธัญภัค แสนสีนาม', '9', '33', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(353, '37367', '1409600447793', 'นางสาวธาราทิพย์ เริ่มรักรัมย์', '9', '34', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(354, '37368', '1103704408520', 'นางสาวนริศรา มาสูงเนิน', '9', '35', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(355, '37369', '1368300034663', 'นางสาวบุญระพี ศรีศักดิ์ขวา', '9', '36', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(356, '37370', '1368400104230', 'นางสาวปทิตตา แวงภูลา', '9', '37', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(357, '37371', '1368400105007', 'นางสาวปวีณ์สุดา คงคาใส', '9', '38', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(358, '37372', '1368400095117', 'นางสาวแพรวา เจริญชีพ', '9', '39', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(359, '37373', '1368400093858', 'นางสาวยุวดี พรมมาเขียว', '9', '40', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(360, '37374', '1368400100242', 'นางสาวศุภิสรา พุทธขุนทด', '9', '41', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(361, '37375', '1368400103446', 'นางสาวสุชิตา ลายลวด', '9', '42', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(362, '37376', '1329700029994', 'นางสาวอภิญญา คงแจ้ง', '9', '43', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(363, '37377', '1368400096466', 'นางสาวอรุณกมล พลสังข์', '9', '44', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(364, '37378', '1589900201861', 'นายขุนวศิษฐ์ หมู่โสภิญ', '10', '1', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(365, '37379', '1368400092461', 'นายจักรี โคตรเวียง', '10', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(366, '37380', '1100501706191', 'นายจารุพัฒน์ บุญสะอาด', '10', '3', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(367, '37381', '1104301160334', 'นายจิรภ้ทร ชิดจอหอ', '10', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(368, '37382', '1361001349615', 'นายชญากร ชนะภู', '10', '5', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(369, '37383', '1119501102120', 'นายชนายุต บุตะเขียว', '10', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(370, '37384', '1368400101729', 'นายธวัชชัย จันทร์สุข', '10', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(371, '37385', '1104301191043', 'นายธีรสุทธิ์ สนธิอุดมหิรัญ', '10', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(372, '37386', '1368400099864', 'นายนภัสรพี ยศรุ่งเรือง', '10', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(373, '37387', '1368400101788', 'นายปริพัทธ์ ศรีหาวัตร', '10', '10', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(374, '37388', '1368400106186', 'นายภากร ปลื้มใจ', '10', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(375, '37389', '1839902074252', 'นายยุทธิชัย วงค์ชัย', '10', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(376, '37390', '1219400039316', 'นายวรชิต รัศมีจันทร์', '10', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(377, '37391', '1368400101257', 'นายวีรภัทร มงคล', '10', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(378, '37392', '1368400100129', 'นายศิริบูรณ์ มีดินดำ', '10', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(379, '37393', '1368400098418', 'นายศุภกร คำภีระ', '10', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(380, '37394', '1749800472390', 'นายสุกลภัทร ดิ่งรัมย์', '10', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(381, '37395', '1409903722821', 'นายสุธินันท์ ภิรมย์ไกรภักดิ์', '10', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(382, '37396', '1368400094986', 'นายสุภัทร ข่าขันมาลี', '10', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(383, '37397', '1368400092932', 'นายอธิป โพธิ์ทองพร', '10', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(384, '37398', '1368400104761', 'นายอนุชิต เรียบรันดร', '10', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(385, '37399', '1409903706205', 'นางสาวกนกวรรณ ผลสนอง', '10', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(386, '37400', '1100704040082', 'นางสาวกนกอร ภิญโญภาพ', '10', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(387, '37401', '1368400091723', 'นางสาวกรรณิการ์ วาระวะ', '10', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(388, '37402', '1368400097781', 'นางสาวจิราวรรณ นิลโอโล', '10', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(389, '37403', '1368400105449', 'นางสาวชาลีดา ดาน็อง', '10', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(390, '37404', '1409600448935', 'นางสาวโชติกา สีดาล้อม', '10', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(391, '37405', '1368400097802', 'นางสาวญาณีนาถ มงคล', '10', '28', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(392, '37406', '1368400098876', 'นางสาวทรรศนีย์ เพชรสวัสดิ์', '10', '29', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(393, '37407', '1368400101583', 'นางสาวธิมลตรา ขันเกตุ', '10', '30', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(394, '37408', '1409903730041', 'นางสาวนันท์นภัสร์ เรียนรัตน์', '10', '31', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(395, '37409', '1368400093891', 'นางสาวปภาวิน โพธิ์น้ำเที่ยง', '10', '32', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(396, '37410', '1368400098329', 'นางสาวพิมพ์วรา เพชรภักดี', '10', '33', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(397, '37411', '1368400101125', 'นางสาวพิรดาภร กำไรเงิน', '10', '34', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(398, '37412', '1368400097110', 'นางสาวภัทรวดี หมู่หัวนา', '10', '35', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(399, '37413', '1368400097985', 'นางสาวภัทราพร ป้อมสุวรรณ์', '10', '36', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(400, '37414', '1368400094676', 'นางสาวภาวินี ปัสสาวัฒนะ', '10', '37', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(401, '37415', '1368400104621', 'นางสาวแม้นเหมือน คงเมือง', '10', '38', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(402, '37416', '1368400094871', 'นางสาวศศินกานต์ สมานเพียร', '10', '39', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(403, '37417', '1209702433939', 'นางสาวสิริวิมล กระสี', '10', '40', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(404, '37418', '1301502136983', 'นางสาวสุภาสินี ชมวิชา', '10', '41', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(405, '37419', '1368400098043', 'นางสาวสุมิตรา ละอองคำ', '10', '42', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(406, '37420', '1409903701131', 'นางสาวอนินทิตา ภิรมย์ไกรภักดิ์', '10', '43', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(407, '37421', '1368400094293', 'นางสาวอาทิตติยา ดีขุนทด', '10', '44', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(408, '37422', '1368400095451', 'นายกิตติพงษ์ จันทร์เทาว์', '11', '1', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(409, '37423', '1368400102521', 'นายกิตติศักดิ์ กางการ', '11', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(410, '37424', '1368400099881', 'นายฐิติพงศ์ เพียรการณ์', '11', '3', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(411, '37425', '1409600450905', 'นายณัฐชัย ฝาชัยภูมิ', '11', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(412, '37426', '1368400097811', 'นายณัฐวุฒิ แฟนสุจริต', '11', '5', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(413, '37427', '1368400103811', 'นายธีรภัทฐ์ อำนวยพร', '11', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(414, '37428', '1409903778494', 'นายธีรภัทร อาจผักปัง', '11', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(415, '37429', '1368400099821', 'นายปัญญาวรรธน์ เสามะลี', '11', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(416, '37430', '1409903737330', 'นายภูดิส พิลาออน', '11', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(417, '37431', '1368400096938', 'นายภูมิศิริ หมื่นจิตร', '11', '10', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(418, '37432', '1368400102997', 'นายรฐนนท์ มงคล', '11', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(419, '37433', '1368400101451', 'นายรัฐภูมิ โอวาทวงษ์', '11', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(420, '37434', '1368400099414', 'นายวิชญ์ธินันต์ ผลจำรูญ', '11', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(421, '37435', '1449500031935', 'นายสัมมา ทัพโยธา', '11', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(422, '37436', '1160900064401', 'นายอดิสร วงเส', '11', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(423, '37437', '1368400099121', 'นายอภินันท์ ชมพูอภัย', '11', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(424, '37438', '1368400105732', 'นายอภิสิทธิ์ คุดนอก', '11', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(425, '37439', '1368400094838', 'นางสาวกานต์ธิดา ตั้งใจ', '11', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(426, '37440', '1368400093319', 'นางสาวกานต์พิชชา มานอ่อน', '11', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(427, '37441', '1209601631778', 'นางสาวจารุณี สง่างาม', '11', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(428, '37442', '1368400100072', 'นางสาวชมพูนุท กำลังเหลือ', '11', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(429, '37443', '1309701333646', 'นางสาวณัฎฐณิชา กองคำ', '11', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(430, '37444', '1368400102733', 'นางสาวณัฐธิดา มูลสวัสดิ์', '11', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(431, '37445', '1148100030879', 'นางสาวธนิดา ประยูรคำ', '11', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(432, '37446', '1368400097462', 'นางสาวธมนวรรณ น้อยเสนา', '11', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(433, '37447', '1368400101923', 'นางสาวนภสร ดอนดีไพร', '11', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(434, '37448', '1368400093963', 'นางสาวนลินทิพย์ จิตรจันทร์', '11', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(435, '37449', '1368400097748', 'นางสาวนิลาพร จันคนา', '11', '28', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(436, '37450', '1368400102016', 'นางสาวบัณฑิตา คำซาว', '11', '29', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(437, '37451', '1419902554738', 'นางสาวบุญญาภา บุญภา', '11', '30', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(438, '37452', '1368400100234', 'นางสาวปนัดดา สุวรรณัง', '11', '31', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(439, '37453', '1368400095826', 'นางสาวพิมพ์ชนก วอยพิมพ์', '11', '32', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(440, '37454', '1738700085873', 'นางสาวฟ้าใส มะยุลา', '11', '33', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(441, '37455', '1368400101915', 'นางสาวภคพร ดอนดีไพร', '11', '34', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(442, '37456', '1368400103519', 'นางสาวมาลัยพร แสงสุวรรณ์', '11', '35', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(443, '37457', '1368400094951', 'นางสาวยุวธิดา ฉิมจันทึก', '11', '36', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(444, '37458', '1368400104043', 'นางสาววาสนา เพชรล้ำ', '11', '37', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(445, '37459', '1368400104370', 'นางสาวศิรินภา ไชยมาตย์', '11', '38', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(446, '37460', '1169200105910', 'นางสาวสุกัญญา หลิ่มเกลื้อ', '11', '39', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(447, '37461', '1368400097179', 'นางสาวสุชาวดี อินทร์จันทร์ดี', '11', '40', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(448, '37462', '1368400103969', 'นางสาวหนึ่งธิดา ศรีนาจัด', '11', '41', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(449, '37463', '1103704368668', 'นางสาวอภัสสรา ธรรมสูงเนิน', '11', '42', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(450, '37464', '1368400098132', 'นางสาวอัญชัน หมู่หัวนา', '11', '43', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(451, '37465', '1368400096776', 'นางสาวอารีรัตน์ แสนสมบัติ', '11', '44', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(452, '37466', '1368400094765', 'นายศตพร เผื่อแผ่', '12', '1', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(453, '37467', '1368400105821', 'นายกรวิชญ์ เปรมใจ', '12', '2', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(454, '37468', '1139600475536', 'นายกรัณฑรัตน์ ศึกษาศิลป์', '12', '3', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(455, '37469', '1209301216252', 'นายกิตติธัช จันจิตร', '12', '4', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(456, '37470', '1368400096792', 'นายกิตติพล สวัสดี', '12', '5', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(457, '37471', '1368400095591', 'นายไชยพัฒน์ วรรณทอง', '12', '6', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(458, '37472', '1368400102962', 'นายไชยวัฒน์ บุษราคัม', '12', '7', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(459, '37473', '1368400099295', 'นายฐิตินันท์ คุณประทุม', '12', '8', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(460, '37474', '1368400100935', 'นายฐิติวัฒน์ วิรุณพันธุ์', '12', '9', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(461, '37475', '1368400097471', 'นายณัฐวัฒน์ รัตนกิจธนกุล', '12', '10', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(462, '37476', '1368400098388', 'นายธนภูมิ โคตรโนนกอก', '12', '11', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(463, '37477', '1368400102954', 'นายธนากร คิดดี', '12', '12', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(464, '37478', '1103704381761', 'นายธันย์พศุตม์ ศรีเพ็ชร', '12', '13', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(465, '37479', '1368400095010', 'นายธาวิต มิตรมาตย์', '12', '14', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(466, '37480', '1129902140146', 'นายธีรโชติฐิ์ สุโธ', '12', '15', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(467, '37481', '1368400094561', 'นายธีรศักดิ์ นามโนนเขวา', '12', '16', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(468, '37482', '1104200625536', 'นายปฏิพัทธ์ ฝากดินดำ', '12', '17', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(469, '37483', '1150601199241', 'นายปิติภัทร พรหมเมตตา', '12', '18', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(470, '37484', '1368400099481', 'นายยศพนธ์ พันธุ์ศรี', '12', '19', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(471, '37485', '1368400104272', 'นายวรเวช แนวเงินดี', '12', '20', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(472, '37486', '1368400103918', 'นายวรากร ปราบโจร', '12', '21', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(473, '37487', '1209000398050', 'นายวีรวัฒน์ ยวงเงิน', '12', '22', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(474, '37488', '1368400102237', 'นายสุกฤต เขียนคำ', '12', '23', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(475, '37489', '1368400095052', 'นายอัครเดช พันเนียม', '12', '24', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(476, '37490', '1368400092584', 'นางสาวกาญจนา ทุมขุนทด', '12', '25', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(477, '37491', '1409903740829', 'นางสาวเกวลิน มองฤทธิ์', '12', '26', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(478, '37492', '1368400106364', 'นางสาวจินดามณี มังดินดำ', '12', '27', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(479, '37493', '1368400090263', 'นางสาวชฎาพร เอี้ยงสูง', '12', '28', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(480, '37494', '1368400105635', 'นางสาวชัญญานุช ภิลัยวรรณ', '12', '29', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(481, '37495', '2368400001871', 'นางสาวณัฐนรี มะลิอ่อง', '12', '30', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(482, '37496', '1409903743119', 'นางสาวณิชกานต์ บูรณะถาวร', '12', '31', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(483, '37497', '1368400104566', 'นางสาวทิพย์อาภา น้อยลา', '12', '32', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(484, '37498', '1368400100811', 'นางสาวนลินนิภา รัตนประทุม', '12', '33', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(485, '37499', '1368400099104', 'นางสาวนิจวรีย์ เพชรล้ำ', '12', '34', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(486, '37500', '1368400104221', 'นางสาวปณิดา คำภีระ', '12', '35', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(487, '37501', '1368400109291', 'นางสาวปุณยวีร์ รัศมีพงศ์', '12', '36', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(488, '37502', '1368400100749', 'นางสาวพรทิพา โอดประไพ', '12', '37', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(489, '37503', '1368400090531', 'นางสาวพิมพ์ชนก จะเลาะท้าว', '12', '38', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(490, '37504', '1368400095401', 'นางสาวศุภร ภิลัยวรรณ', '12', '39', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(491, '37505', '1368400095273', 'นางสาวสรวงสุดา นิลพงษ์', '12', '40', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(492, '37506', '1368400095800', 'นางสาวสิรินทรา รอดคำ', '12', '41', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(493, '37507', '1368400096849', 'นางสาวสุภาวดี พรประสิทธิ์', '12', '42', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(494, '37508', '1368400089397', 'นางสาวสุรีรัตน์ ไกรมาส', '12', '43', '', 0, 0, 0, NULL, 0, 0);
INSERT INTO `students` (`id`, `student_id`, `cid`, `name`, `room`, `student_number`, `plan`, `GPAX`, `GPA_MAT`, `GPA_SCI`, `GPA_ENG`, `GPA_Fail`, `behavior_pass`) VALUES
	(495, '37509', '1219901235711', 'นางสาวอิงอร เหล่าพรสวรรค์', '12', '44', '', 0, 0, 0, NULL, 0, 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
