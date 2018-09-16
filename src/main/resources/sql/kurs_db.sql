-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.21-log - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных kurs_db
CREATE DATABASE IF NOT EXISTS `kurs_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kurs_db`;

-- Дамп структуры для таблица kurs_db.order_pizzas
CREATE TABLE IF NOT EXISTS `order_pizzas` (
  `ORDER_ID` int(11) NOT NULL,
  `PIZZAS_ID` int(11) NOT NULL,
  PRIMARY KEY (`ORDER_ID`,`PIZZAS_ID`),
  KEY `FK_7do9ndppvofhpo1738bim713d` (`PIZZAS_ID`),
  CONSTRAINT `FK_7do9ndppvofhpo1738bim713d` FOREIGN KEY (`PIZZAS_ID`) REFERENCES `pizzas` (`pizza_id`),
  CONSTRAINT `FK_fu4yeadf0esc41tw0u09q4jf8` FOREIGN KEY (`ORDER_ID`) REFERENCES `personsorder` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kurs_db.order_pizzas: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `order_pizzas` DISABLE KEYS */;
INSERT INTO `order_pizzas` (`ORDER_ID`, `PIZZAS_ID`) VALUES
	(1, 3),
	(1, 4),
	(2, 4),
	(2, 5);
/*!40000 ALTER TABLE `order_pizzas` ENABLE KEYS */;

-- Дамп структуры для таблица kurs_db.persons
CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kurs_db.persons: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` (`id`, `address`, `email`, `name`, `telephone`) VALUES
	(1, 'Уол Стрит,12', 'ruslan_solodovni@mail.ru', 'Руслан', '+3435353535'),
	(2, 'Уол Стрит,12', 'pupsik@mail.ru', 'Оксана', '+343535555');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;

-- Дамп структуры для таблица kurs_db.personsorder
CREATE TABLE IF NOT EXISTS `personsorder` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `FK_4mvn1qcho7rm36x2amugs7yd7` (`person_id`),
  CONSTRAINT `FK_4mvn1qcho7rm36x2amugs7yd7` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kurs_db.personsorder: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `personsorder` DISABLE KEYS */;
INSERT INTO `personsorder` (`orderId`, `total`, `person_id`) VALUES
	(1, 45, 1),
	(2, 80.6, 2);
/*!40000 ALTER TABLE `personsorder` ENABLE KEYS */;

-- Дамп структуры для таблица kurs_db.pizzas
CREATE TABLE IF NOT EXISTS `pizzas` (
  `pizza_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`pizza_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы kurs_db.pizzas: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `pizzas` DISABLE KEYS */;
INSERT INTO `pizzas` (`pizza_id`, `name`, `price`) VALUES
	(3, 'Гавайская', 0),
	(4, 'Капричоза', 45),
	(5, 'К пиву', 35.6);
/*!40000 ALTER TABLE `pizzas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
