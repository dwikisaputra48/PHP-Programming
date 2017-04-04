/*
Navicat MySQL Data Transfer

Source Server         : LOCAL MYSQL
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : react_db

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-04-04 15:55:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('3', 'Makanan', 'Makanan', '2017-01-01 10:40:32', '2017-04-04 10:40:39');
INSERT INTO `categories` VALUES ('4', 'Minuman', 'Minuman', '2017-01-01 10:40:50', '2017-04-04 10:40:56');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('35', 'Indomie', 'Mie Instant', '2500', '3', '2017-01-01 10:41:22', '2017-04-04 10:41:27');
INSERT INTO `products` VALUES ('36', 'Roti Tawar', 'Roti Tawar Gandum', '30000', '3', '2017-01-01 10:42:05', '2017-04-04 10:42:39');
INSERT INTO `products` VALUES ('37', 'Ultra Coklat', 'Susu Ultra', '5000', '4', '2017-01-01 10:42:33', '2017-04-04 10:42:36');
INSERT INTO `products` VALUES ('39', 'Teh Botol', 'Teh Botol Sosro', '12000', '4', '2017-04-04 13:01:57', '2017-04-04 12:01:57');
