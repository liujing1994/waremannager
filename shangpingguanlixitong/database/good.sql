/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


DROP DATABASE IF EXISTS `good`;
CREATE DATABASE `good` /*!40100 DEFAULT CHARACTER SET ujis */;
USE `good`;
DROP TABLE IF EXISTS `t_good`;
CREATE TABLE `t_good` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `good_NAME` varchar(50) DEFAULT NULL,
  `good_INTRO` varchar(200) DEFAULT NULL,
  `good_PRICE` double DEFAULT NULL,
  `TYPE_ID_FK` int(11) NOT NULL,
  `PUB_ID_FK` int(11) NOT NULL,
  `IMAGE_URL` varchar(200) DEFAULT NULL,
  `AUTHOR` varchar(200) DEFAULT NULL,
  `REPERTORY_SIZE` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `TYPE_ID_FK` (`TYPE_ID_FK`),
  KEY `PUB_ID_FK` (`PUB_ID_FK`)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;

DROP TABLE IF EXISTS `t_good_in_record`;
CREATE TABLE `t_good_in_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `good_ID_FK` int(11) DEFAULT NULL,
  `T_IN_RECORD_ID_FK` int(11) DEFAULT NULL,
  `IN_SUM` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `good_ID_FK` (`good_ID_FK`),
  KEY `T_IN_RECORD_ID_FK` (`T_IN_RECORD_ID_FK`)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;

DROP TABLE IF EXISTS `t_good_sale_record`;
CREATE TABLE `t_good_sale_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `good_ID_FK` int(11) DEFAULT NULL,
  `T_SALE_RECORD_ID_FK` int(11) DEFAULT NULL,
  `TRADE_SUM` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `good_ID_FK` (`good_ID_FK`),
  KEY `T_SALE_RECORD_ID_FK` (`T_SALE_RECORD_ID_FK`)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;

DROP TABLE IF EXISTS `t_good_type`;
CREATE TABLE `t_good_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE_NAME` varchar(50) DEFAULT NULL,
  `TYPE_INTRO` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;

DROP TABLE IF EXISTS `t_in_record`;
CREATE TABLE `t_in_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;

DROP TABLE IF EXISTS `t_publisher`;
CREATE TABLE `t_publisher` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PUB_NAME` varchar(50) DEFAULT NULL,
  `PUB_TEL` varchar(50) DEFAULT NULL,
  `PUB_LINK_MAN` varchar(50) DEFAULT NULL,
  `PUB_INTRO` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;

DROP TABLE IF EXISTS `t_sale_record`;
CREATE TABLE `t_sale_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(20) DEFAULT NULL,
  `USER_PASSWORD` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ujis;

INSERT INTO `t_user` VALUES (1,'a','a');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
