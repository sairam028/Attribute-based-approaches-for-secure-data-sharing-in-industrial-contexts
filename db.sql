/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - att
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`att` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `att`;

/*Table structure for table `aa` */

DROP TABLE IF EXISTS `aa`;

CREATE TABLE `aa` (
  `user` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `aa` */

insert  into `aa`(`user`,`pwd`) values ('aa','aa');

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `user` varchar(10) DEFAULT NULL,
  `pwd` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`user`,`pwd`) values ('cloud','cloud');

/*Table structure for table `dataprovider` */

DROP TABLE IF EXISTS `dataprovider`;

CREATE TABLE `dataprovider` (
  `name` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gen` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `con` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Not Activated',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dataprovider` */

/*Table structure for table `encryptkey` */

DROP TABLE IF EXISTS `encryptkey`;

CREATE TABLE `encryptkey` (
  `filename` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` text,
  `dkey` varchar(20) DEFAULT NULL,
  `privatekey` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `encryptkey` */

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `file` longblob,
  `filetype` varchar(50) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `data` longtext,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `file` */

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `filename` varchar(40) DEFAULT NULL,
  `data` text,
  `owner` varchar(40) DEFAULT NULL,
  `policy` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `exp` varchar(40) DEFAULT NULL,
  `branch` varchar(40) DEFAULT NULL,
  `umail` varchar(45) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `skey` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request` */

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `filename` varchar(45) DEFAULT NULL,
  `data` text,
  `owner` varchar(45) DEFAULT NULL,
  `skey` varchar(40) DEFAULT NULL,
  `policy` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `exp` varchar(40) DEFAULT NULL,
  `branch` varchar(40) DEFAULT NULL,
  `status` varchar(40) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

/*Table structure for table `uploadcloud` */

DROP TABLE IF EXISTS `uploadcloud`;

CREATE TABLE `uploadcloud` (
  `filename` varchar(45) NOT NULL,
  `data` text,
  `owner` varchar(45) DEFAULT NULL,
  `skey` varchar(40) DEFAULT NULL,
  `policy` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `exp` varchar(40) DEFAULT NULL,
  `branch` varchar(40) DEFAULT NULL,
  `status` varchar(40) DEFAULT 'No',
  PRIMARY KEY (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `uploadcloud` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `name` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gen` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `jobposition` varchar(45) DEFAULT NULL,
  `contactno` varchar(45) DEFAULT NULL,
  `exp` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'NotActivated',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`name`,`pass`,`email`,`dob`,`gen`,`location`,`jobposition`,`contactno`,`exp`,`status`) values ('nikil','123','nikhith.1000projects@gmail.com','2004-09-24','male','hyderabad','scientist','9052016340','4','Activated');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
