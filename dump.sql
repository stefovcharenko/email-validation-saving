-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.31 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица bintime.emails
CREATE TABLE IF NOT EXISTS `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы bintime.emails: ~18 rows (приблизительно)
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` (`id`, `email`) VALUES
	(17, 'bintest@gmail.com'),
	(14, 'cmon@gmail.com'),
	(1, 'correct@gmail.com'),
	(11, 'epgex@gmail.com'),
	(6, 'fqqjp@gmail.com'),
	(9, 'iengy@gmail.com'),
	(5, 'imqfk@gmail.com'),
	(8, 'oasyf@gmail.com'),
	(12, 'oofpi@gmail.com'),
	(13, 'plbmj@gmail.com'),
	(10, 'pqwwd@gmail.com'),
	(7, 'uzdxt@gmail.com'),
	(15, 'wawa@gmail.com'),
	(2, 'welcome@gmail.com'),
	(3, 'well@gmail.com'),
	(16, 'wow@yahoo.com'),
	(4, 'yfgxk@gmail.com'),
	(18, 'yii@yahoo.com');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;

-- Дамп структуры для таблица bintime.migration
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы bintime.migration: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` (`version`, `apply_time`) VALUES
	('m000000_000000_base', 1497025709),
	('m170609_162357_create_emails_table', 1497025717);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
