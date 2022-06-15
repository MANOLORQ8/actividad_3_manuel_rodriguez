-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para tienda_deportiva-el_podio
DROP DATABASE IF EXISTS `tienda_deportiva-el_podio`;
CREATE DATABASE IF NOT EXISTS `tienda_deportiva-el_podio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tienda_deportiva-el_podio`;

-- Volcando estructura para tabla tienda_deportiva-el_podio.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `customer_telephone` varchar(50) NOT NULL DEFAULT '0',
  `premium` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='here you can find the customers data';

-- Volcando datos para la tabla tienda_deportiva-el_podio.customers: ~3 rows (aproximadamente)
DELETE FROM `customers`;
INSERT INTO `customers` (`id`, `name`, `customer_telephone`, `premium`) VALUES
	(1, 'camila ', '3005551620', b'1'),
	(2, 'alexander', '300551420', b'1'),
	(3, 'anderson', '3005551640', b'0');

-- Volcando estructura para tabla tienda_deportiva-el_podio.payment_forms
DROP TABLE IF EXISTS `payment_forms`;
CREATE TABLE IF NOT EXISTS `payment_forms` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `method` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='here are the different payment methods';

-- Volcando datos para la tabla tienda_deportiva-el_podio.payment_forms: ~3 rows (aproximadamente)
DELETE FROM `payment_forms`;
INSERT INTO `payment_forms` (`id`, `method`) VALUES
	(1, 'tdc_amex'),
	(2, 'cash'),
	(3, 'check');

-- Volcando estructura para tabla tienda_deportiva-el_podio.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `measure` varchar(50) NOT NULL,
  `value` float unsigned NOT NULL,
  `imported` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='here are the products names';

-- Volcando datos para la tabla tienda_deportiva-el_podio.products: ~3 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `measure`, `value`, `imported`) VALUES
	(1, 'skates', '33', 150000, b'1'),
	(2, 'balls', '70', 30000, b'0'),
	(3, 'shin guards', '20', 15000, b'1');

-- Volcando estructura para tabla tienda_deportiva-el_podio.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` smallint(6) NOT NULL,
  `product_id` smallint(6) NOT NULL,
  `value` float NOT NULL,
  `payment_form_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='here are the data of what is going to be sold';

-- Volcando datos para la tabla tienda_deportiva-el_podio.sales: ~3 rows (aproximadamente)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `date`, `customer_id`, `product_id`, `value`, `payment_form_id`) VALUES
	(1, '2022-06-13', 1, 3, 15000, 2),
	(2, '2022-06-14', 3, 2, 30000, 1),
	(3, '2022-06-15', 2, 1, 150000, 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
