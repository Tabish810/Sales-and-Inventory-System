/*
SQLyog Ultimate v8.61 
MySQL - 5.5.5-10.1.13-MariaDB : Database - inventory
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`inventory` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `inventory`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`) values ('admin','admin123');

/*Table structure for table `sales_report` */

DROP TABLE IF EXISTS `sales_report`;

CREATE TABLE `sales_report` (
  `ITEM_ID` varchar(255) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `ItemName` longtext,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sales_report` */

insert  into `sales_report`(`ITEM_ID`,`date`,`item_code`,`ItemName`,`quantity`,`price`,`total`) values ('11262793','03-01-2018','adada','dell laptop','1','20000','20000'),('14535570','03-01-2018','adada','hp laptop','1','20000','20000'),('14685978','02-01-2018','104','mobile','1','15000','15000'),('15578756','03-01-2018','adada','hp laptop','2','20000','40000'),('67149974','02-01-2018','104','mobile','1','15000','15000'),('7086964','02-01-2018','aaa','mobile','5','15000','30000');

/*Table structure for table `stock_control` */

DROP TABLE IF EXISTS `stock_control`;

CREATE TABLE `stock_control` (
  `item_code` varchar(60) NOT NULL,
  `item_name` varchar(60) DEFAULT NULL,
  `qty` int(60) DEFAULT NULL,
  `unit_price` int(60) DEFAULT NULL,
  `sales_price` int(60) DEFAULT NULL,
  `profit` int(60) DEFAULT NULL,
  PRIMARY KEY (`item_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stock_control` */

insert  into `stock_control`(`item_code`,`item_name`,`qty`,`unit_price`,`sales_price`,`profit`) values ('101','mobile',79,10000,15000,5000),('102','mobile',79,10000,15000,5000),('103','mobile',79,10000,15000,5000),('104','mobile',75,10000,15000,5000),('105','mobile',79,10000,15000,5000),('aaa','mobile',71,10000,15000,5000),('adada','hp laptop',62,15000,20000,5000);

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `id` int(40) NOT NULL,
  `comp_name` varchar(40) DEFAULT NULL,
  `contact_name` varchar(40) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone_no` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `suppliers` */

insert  into `suppliers`(`id`,`comp_name`,`contact_name`,`email`,`phone_no`) values (1003,'kamran','ali','tabishzaman9@gmail.com','0310-2344810'),(1004,'itech','abc','danishzaman8@gmail.com','0310-1234567'),(1005,'iqra tech','abc','danishzaman8@gmail.com','0310-1234567'),(1006,'tech','abc','danishzaman8@gmail.com','0310-1234567'),(1007,'samsung','abc','danishzaman8@gmail.com','0310-1234567');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
