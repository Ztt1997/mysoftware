
CREATE DATABASE `db_library` ;

USE `db_library`;


DROP TABLE IF EXISTS `tb_bookinfo`;

CREATE TABLE `tb_bookinfo` (
  `ISBN` varchar(20) DEFAULT NULL,
  `typeid` varchar(20) DEFAULT NULL,
  `writer` varchar(20) DEFAULT NULL,
  `translator` varchar(20) DEFAULT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `price` double DEFAULT NULL,
  `bookname` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert  into `tb_bookinfo`(`ISBN`,`typeid`,`writer`,`translator`,`publisher`,`date`,`price`,`bookname`) values ('1111111111111','2','莫言','译者','清华大学出版社','2019-01-01 00:00:00',20,'java开发');
insert  into `tb_bookinfo`(`ISBN`,`typeid`,`writer`,`translator`,`publisher`,`date`,`price`,`bookname`) values ('1111222222222','1','王珊','无译者','南京大学出版社','2019-11-01 00:00:00',35,'数据库概论');
insert  into `tb_bookinfo`(`ISBN`,`typeid`,`writer`,`translator`,`publisher`,`date`,`price`,`bookname`) values ('1111222233333','2','雨果','雨果','译文出版社','2018-01-01 00:08:00',30,'巴黎圣母院');
/*Table structure for table `tb_booktype` */


DROP TABLE IF EXISTS `tb_booktype`;

CREATE TABLE `tb_booktype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) DEFAULT NULL,
  `days` varchar(20) DEFAULT NULL,
  `fk` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_booktype` */

insert  into `tb_booktype`(`id`,`typeName`,`days`,`fk`) values (1,'计算机类','30','0.1'),(2,'阅读类','30','0.1');

/*Table structure for table `tb_borrow` */

DROP TABLE IF EXISTS tb_borrow;

CREATE TABLE `tb_borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookISBN` varchar(20) DEFAULT NULL,
  `readerISBN` varchar(20) DEFAULT NULL,
  `num` varchar(20) DEFAULT NULL,
  `borrowDate` varchar(40) DEFAULT NULL,
  `backDate` varchar(40) DEFAULT NULL,
  `bookName` varchar(20) DEFAULT NULL,
  `operatorId` varchar(20) DEFAULT NULL,
  `isback` varchar(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_borrow` */

insert  into `tb_borrow`(`id`,`bookISBN`,`readerISBN`,`num`,`borrowDate`,`backDate`,`bookName`,`operatorId`,`isback`) values (1,'1111111111111','1111111111111',NULL,'2019-04-25 02:53:34.0','2019-04-25 02:53:34.0',NULL,'1','0'),(2,'1111111111111','1111111111111',NULL,'2019-09-25 02:59:10.0','2019-11-28 02:59:10.0',NULL,'1',NULL),(3,'1111111111111','1111111111111',NULL,'2019-10-25 03:00:52.0','2019-11-28 03:00:52.0',NULL,'1','0');

/*Table structure for table `tb_operator` */

DROP TABLE IF EXISTS `tb_operator`;

CREATE TABLE `tb_operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `identityCard` varchar(50) DEFAULT NULL,
  `workdate` datetime DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `admin` int(11) DEFAULT '0',
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_operator` */

insert  into `tb_operator`(`id`,`name`,`sex`,`age`,`identityCard`,`workdate`,`tel`,`admin`,`password`) values (1,'张婷婷','女',22,NULL,NULL,NULL,1,'123'),(2,'小张','2',11,'312','2019-11-28 00:00:00','11111111111',0,'312'),(3,'小李','1',11,'421312312','2019-11-11 00:00:00','11111111111',0,'32111');

/*Table structure for table `tb_order` */

DROP TABLE IF EXISTS `tb_order`;

CREATE TABLE `tb_order` (
  `ISBN` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `checkAndAccept` varchar(20) DEFAULT NULL,
  `zk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_order` */

insert  into `tb_order`(`ISBN`,`date`,`number`,`operator`,`checkAndAccept`,`zk`) values ('1111111111111','2019-10-25 00:00:00','11','北京大学','0','0.1');

/*Table structure for table `tb_reader` */

DROP TABLE IF EXISTS `tb_reader`;

CREATE TABLE `tb_reader` (
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `identityCard` varchar(40) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `maxNum` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `keepMoney` double DEFAULT NULL,
  `zj` int(11) DEFAULT NULL,
  `zy` varchar(20) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `bztime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_reader` */

insert  into `tb_reader`(`name`,`sex`,`age`,`identityCard`,`date`,`maxNum`,`tel`,`keepMoney`,`zj`,`zy`,`ISBN`,`bztime`) values ('张三','1','11','1111111111111','2019-11-29 00:00:00','11','11',10,3,'学生','1111111111111','2019-12-29 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
