/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - veterinary
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`veterinary` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `veterinary`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `bill` */

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `owner` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `animalname` varchar(100) DEFAULT NULL,
  `fee` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bill` */

insert  into `bill`(`owner`,`email`,`animalname`,`fee`,`status`) values ('chotu','chotu.1000projects@gmail.com','cat','1000','pending');

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `dname` varchar(100) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `animalname` varchar(100) DEFAULT NULL,
  `service` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `dt` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT 'pending',
  `status` varchar(100) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book` */

insert  into `book`(`dname`,`specialization`,`owner`,`email`,`animalname`,`service`,`image`,`dt`,`time`,`status`) values ('moulali','cardiologist','chotu','chotu.1000projects@gmail.com','cat','Pet Wellness Care','cat.jpg','2020-02-15','10:00','confirmed');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `msg` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`msg`,`ans`) values ('doctor available ?','yes');

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `exp` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert  into `doctor`(`username`,`email`,`mobile`,`qualification`,`specialization`,`exp`,`password`,`dob`) values ('moulali','moulalicce225@gmail.com','8297260782','MBBS','cardiologist','3','123','2020-02-13'),('munna','moulalicce225@gmail.com','8297260782','MBBS','dentist','1','982717','2020-02-20'),('safoora khan','safoorakhan991@gmail.com','08309710601','MBBS','cardiologist','1','12345','2020-02-20');

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient`(`username`,`password`,`email`,`mobile`,`address`) values ('chotu','1234','chotu.1000projects@gmail.com','8639966858','hyd');

/*Table structure for table `service` */

DROP TABLE IF EXISTS `service`;

CREATE TABLE `service` (
  `service` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `animalname` varchar(100) DEFAULT NULL,
  `dt` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `service` */

insert  into `service`(`service`,`owner`,`email`,`mobile`,`animalname`,`dt`,`time`,`reason`,`status`) values ('Grooming','chotu','chotu.1000projects@gmail.com','09874561230','cat','2020-02-27','10:00','simple','confirmed');

/*Table structure for table `service1` */

DROP TABLE IF EXISTS `service1`;

CREATE TABLE `service1` (
  `service` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `animalname` varchar(100) DEFAULT NULL,
  `dt` varchar(100) DEFAULT NULL,
  `departing` varchar(100) DEFAULT NULL,
  `arriving` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `service1` */

insert  into `service1`(`service`,`owner`,`email`,`mobile`,`animalname`,`dt`,`departing`,`arriving`,`status`) values ('Pet Relocation','chotu','chotu.1000projects@gmail.com','08309710601','cat','2020-02-27','hyd','kolkata','confirmed');

/*Table structure for table `service2` */

DROP TABLE IF EXISTS `service2`;

CREATE TABLE `service2` (
  `service` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `animalname` varchar(100) DEFAULT NULL,
  `dt` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `service2` */

insert  into `service2`(`service`,`owner`,`email`,`mobile`,`animalname`,`dt`,`time`,`reason`,`status`) values ('Surgery','chotu','chotu.1000projects@gmail.com','09032101992','dog','2020-02-28','10:00','simple','pending');

/*Table structure for table `service3` */

DROP TABLE IF EXISTS `service3`;

CREATE TABLE `service3` (
  `service` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `animalname` varchar(100) DEFAULT NULL,
  `dt` varchar(100) DEFAULT NULL,
  `pud` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `service3` */

insert  into `service3`(`service`,`owner`,`email`,`mobile`,`animalname`,`dt`,`pud`,`address`,`status`) values ('Boarding','chotu','chotu.1000projects@gmail.com','08309710601','dog','2020-02-27','2020-02-28','H-NO:1-10-104/41c,Near RK Towers,, Mayuri Margh','pending');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
