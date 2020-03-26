-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: easydrive_school
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `idCar` varchar(4) NOT NULL,
  `carMileage` varchar(45) DEFAULT NULL,
  `faults` varchar(45) DEFAULT NULL,
  `Office_oName` varchar(45) NOT NULL,
  PRIMARY KEY (`idCar`),
  KEY `fk_Car_Office1_idx` (`Office_oName`),
  CONSTRAINT `fk_Car_Office1` FOREIGN KEY (`Office_oName`) REFERENCES `office` (`oName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('C001','123','0','Bearsden'),('C002','111','0','Bearsden'),('C003','145','0','Bearsden'),('C004','133','0','Whitehead'),('C005','167','0','Whitehead'),('C006','156','0','Whitehead'),('C007','178','0','Billing'),('C008','189','0','Billing'),('C009','154','0','Billing'),('C010','167','0','Sabiri'),('C011','199','0','Sabiri'),('C012','198','0','Sabiri'),('C013','187','0','May'),('C014','165','0','May'),('C015','143','0','May'),('C016','123','0','Storie'),('C017','145','0','Storie'),('C018','167','0','Storie'),('C019','187','0','Domino'),('C020','154','0','Domino'),('C021','132','0','Domino'),('C022','154','0','Logan'),('C023','176','0','Logan'),('C024','157','0','Logan'),('C025','167','4','Bearsden'),('C026','199','3','Logan'),('C027','208','2','Storie'),('C028','209','1','May'),('C029','222','4','Sabiri'),('C030','309','3','Whitehead'),('C031','407','2','Domino'),('C032','504','1','Billing');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `idClient` varchar(4) NOT NULL,
  `fName` varchar(45) DEFAULT NULL,
  `sName` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `telNo` varchar(45) DEFAULT NULL,
  `File_idFile` varchar(4) NOT NULL,
  `Office_oName` varchar(45) NOT NULL,
  PRIMARY KEY (`idClient`),
  KEY `fk_Client_File1_idx` (`File_idFile`),
  KEY `fk_Client_Office1_idx` (`Office_oName`),
  CONSTRAINT `fk_Client_File1` FOREIGN KEY (`File_idFile`) REFERENCES `file` (`idFile`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Client_Office1` FOREIGN KEY (`Office_oName`) REFERENCES `office` (`oName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('0001','Darson','Tedesco','M','1985-09-12','18985300912','F001','Bearsden'),('0002','Guina','Burgstaller','F','1976-04-29','18985300429','F002','Bearsden'),('0003','Franna','Santo','F','1979-04-07','18985300407','F003','Billing'),('0004','Dyllar','Avdijai','M','1966-08-25','18985300825','F004','Billing'),('0005','Breel','Embolo','M','1977-02-14','18985300214','F005','Domino'),('0006','Fabian','Reese','F','1967-11-29','18985301129','F006','Domino'),('0007','Daniel','Callirui','F','1968-01-15','18985300115','F007','Logan'),('0008','Yehen','Konoplyanka','M','1979-09-29','18985300929','F008','Logan'),('0009','Benjamin','Stamnolui','M','1970-08-13','18985300813','F009','May'),('0010','Marcos','Meyer','F','1975-09-18','18985300918','F010','May'),('0011','Leon','Goretzka','F','1975-02-06','18985300206','F011','Sabiri'),('0012','Nabil','Bentaleb','M','1974-11-24','18985301124','F012','Sabiri'),('0013','Amine','Harit','M','1977-06-18','18985300618','F013','Storie'),('0014','Von','Naldo','F','1982-09-10','18985300910','F014','Storie'),('0015','Matija','Nastastic','F','1973-03-28','18985300328','F015','Whitehead'),('0016','Ralf','Fahrmann','M','1968-09-27','18985300927','F016','Whitehead');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courese`
--

DROP TABLE IF EXISTS `courese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courese` (
  `idCourese` varchar(4) NOT NULL,
  `time` varchar(45) DEFAULT NULL,
  `progress` varchar(45) DEFAULT NULL,
  `courseMileage` varchar(45) DEFAULT NULL,
  `Instructor_idInstructor` varchar(4) NOT NULL,
  `File_idFile` varchar(4) NOT NULL,
  `couresetime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCourese`),
  KEY `fk_Courese_Instructor1_idx` (`Instructor_idInstructor`),
  KEY `fk_Courese_File1_idx` (`File_idFile`),
  CONSTRAINT `fk_Courese_File1` FOREIGN KEY (`File_idFile`) REFERENCES `file` (`idFile`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Courese_Instructor1` FOREIGN KEY (`Instructor_idInstructor`) REFERENCES `instructor` (`idInstructor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courese`
--

LOCK TABLES `courese` WRITE;
/*!40000 ALTER TABLE `courese` DISABLE KEYS */;
INSERT INTO `courese` VALUES ('0001','1997-06-22','well','60','I001','F001','8.00-9.00'),('0002','1997-06-22','well','50','I002','F001','14.00-15.00'),('0003','2017-12-18',NULL,NULL,'I003','F002','8.00-9.00'),('0004','2017-12-19',NULL,NULL,'I001','F002','15.00-16.00'),('0005','1997-06-22','well','16','I004','F003','10.00-11.00'),('0006','1997-06-22','well','30','I005','F003','13.00-14.00'),('0007','2017-12-18',NULL,NULL,'I006','F004','10.00-11.00'),('0008','2017-12-19',NULL,NULL,'I004','F004','15.00-16.00'),('0009','1997-06-22','well','19','I007','F005','8.30-9.30'),('0010','1997-06-22','well','33','I008','F005','10.30-11.30'),('0011','2017-12-18',NULL,NULL,'I009','F006','13.00-14.00'),('0012','2017-12-19',NULL,NULL,'I007','F006','14.00-15.00'),('0013','1997-06-22','well','56','I010','F007','9.00-10.00'),('0014','1997-06-22','well','8','I011','F007','8.00-9.00'),('0015','2017-12-18',NULL,NULL,'I012','F008','14.00-15.00'),('0016','2017-12-19',NULL,NULL,'I010','F008','16.00-17.00'),('0017','1997-06-22','well','44','I013','F009','17.00-18.00'),('0018','1997-06-22','well','11','I014','F009','16.00-17.00'),('0019','2017-12-18',NULL,NULL,'I015','F010','9.00-10.00'),('0020','2017-12-19',NULL,NULL,'I013','F010','10.00-11.00'),('0021','1997-06-22','well','23','I016','F011','11.00-12.00'),('0022','1997-06-22','well','52','I017','F011','9.00-10.00'),('0023','2017-12-18',NULL,NULL,'I018','F012','14.00-15.00'),('0024','2017-12-19',NULL,NULL,'I016','F012','9.00-10.00'),('0025','1997-06-22','well','33','I019','F013','10.00-11.00'),('0026','1997-06-22','well','30','I020','F013','9.00-10.00'),('0027','2017-12-18',NULL,NULL,'I021','F014','10.00-11.00'),('0028','2017-12-19',NULL,NULL,'I019','F014','11.00-12.00'),('0029','1997-06-22','well','10','I022','F015','13.00-14.00'),('0030','1997-06-22','well','8','I023','F015','14.00-15.00'),('0031','2017-12-18',NULL,NULL,'I024','F016','10.00-11.00'),('0032','2017-12-19',NULL,NULL,'I022','F016','10.00-11.00');
/*!40000 ALTER TABLE `courese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `idFile` varchar(4) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `accomplishmentDate` date DEFAULT NULL,
  `try` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES ('F001','Yes','2000-01-12','1'),('F002','No',NULL,'3'),('F003','Yes','1997-08-23','4'),('F004','No',NULL,'0'),('F005','Yes','1996-04-24','1'),('F006','No',NULL,'5'),('F007','Yes','2000-09-07','2'),('F008','No',NULL,'1'),('F009','Yes','2000-01-18','2'),('F010','No',NULL,'1'),('F011','Yes','2001-01-01','3'),('F012','No',NULL,'3'),('F013','Yes','1999-04-07','1'),('F014','No',NULL,'4'),('F015','Yes','1999-04-03','1'),('F016','No',NULL,'1');
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor` (
  `idInstructor` varchar(4) NOT NULL,
  `fName` varchar(45) DEFAULT NULL,
  `sName` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `telNo` varchar(45) DEFAULT NULL,
  `Car_idCar` varchar(4) NOT NULL,
  `Office_oName` varchar(45) NOT NULL,
  PRIMARY KEY (`idInstructor`),
  KEY `fk_Instructor_Car1_idx` (`Car_idCar`),
  KEY `fk_Instructor_Office1_idx` (`Office_oName`),
  CONSTRAINT `fk_Instructor_Car1` FOREIGN KEY (`Car_idCar`) REFERENCES `car` (`idCar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Instructor_Office1` FOREIGN KEY (`Office_oName`) REFERENCES `office` (`oName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES ('I001','Arsonel','Wenger','M','1969-10-22','18185301022','C001','Bearsden'),('I002','Theo','Walcott','M','1979-03-16','18185300316','C002','Bearsden'),('I003','Any','Sanchez','F','1978-12-19','18185301219','C003','Bearsden'),('I004','Danny','Welbeck','M','1980-11-26','18185301126','C004','Billing'),('I005','Oliver','Giroud','M','1986-09-30','18185300930','C005','Billing'),('I006','Taylor','Lacazette','F','1981-05-28','18185300528','C006','Billing'),('I007','Chuba','Akpom','M','1975-10-09','18185301009','C007','Domino'),('I008','Alexia','Iwobi','F','1986-05-03','18185300503','C008','Domino'),('I009','Reiss','Nelson','M','1989-12-10','18185301210','C009','Domino'),('I010','Eddie','Nketiah','M','1979-05-30','18185300530','C010','Logan'),('I011','Mesut','Ozil','M','1968-10-15','18185301015','C011','Logan'),('I012','Santina','Cazorla','F','1984-12-13','18185301213','C012','Logan'),('I013','Jack','Wilshere','M','1972-01-01','18185300101','C013','May'),('I014','Fracis','Coquelin','M','1961-05-13','18185300513','C014','May'),('I015','Grandra','Xhaka','F','1972-09-27','18185300927','C015','May'),('I016','Aron','Ramsey','M','1980-12-26','18185301226','C016','Sabiri'),('I017','Moommy','Eleney','M','1982-07-11','18185300711','C017','Sabiri'),('I018','Bennia','Sheaf','F','1967-09-23','18185300923','C018','Sabiri'),('I019','Per','Merte','M','1984-09-29','18185300929','C019','Storie'),('I020','Mathieu','Debuchy','M','1985-07-28','18185300728','C020','Storie'),('I021','Nacho','Monreal','F','1986-02-26','18185300226','C021','Storie'),('I022','Laurent','Koscienlny','M','1985-09-10','18185300910','C022','Whitehead'),('I023','Calum','Chambers','M','1975-01-20','18185300120','C023','Whitehead'),('I024','David','Ospina','F','1988-08-31','18185300831','C024','Whitehead');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview` (
  `idInterview` varchar(4) NOT NULL,
  `Provisional` varchar(45) DEFAULT NULL,
  `estimation` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `Instructor_idInstructor` varchar(4) NOT NULL,
  `File_idFile` varchar(4) NOT NULL,
  PRIMARY KEY (`idInterview`),
  KEY `fk_Interview_Instructor1_idx` (`Instructor_idInstructor`),
  KEY `fk_Interview_File1_idx` (`File_idFile`),
  CONSTRAINT `fk_Interview_File1` FOREIGN KEY (`File_idFile`) REFERENCES `file` (`idFile`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Interview_Instructor1` FOREIGN KEY (`Instructor_idInstructor`) REFERENCES `instructor` (`idInstructor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
INSERT INTO `interview` VALUES ('0001','Yes','Good','1997-06-22','I001','F001'),('0002','No','ordinarily','1997-06-22','I003','F002'),('0003','Yes','Good','1997-06-22','I004','F003'),('0004','No','ordinarily','1997-06-22','I006','F004'),('0005','No','Good','1997-06-22','I007','F005'),('0006','No','ordinarily','1997-06-22','I009','F006'),('0007','No','Good','1997-06-22','I010','F007'),('0008','Yes','ordinarily','1997-06-22','I012','F008'),('0009','No','Good','1997-06-22','I013','F009'),('0010','Yes','ordinarily','1997-06-22','I015','F010'),('0011','No','Good','1997-06-22','I016','F011'),('0012','Yes','ordinarily','1997-06-22','I018','F012'),('0013','No','Good','1997-06-22','I019','F013'),('0014','Yes','ordinarily','1997-06-22','I021','F014'),('0015','No','Good','1997-06-22','I022','F015'),('0016','Yes','ordinarily','1997-06-22','I024','F016');
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `idManager` varchar(4) NOT NULL,
  `SeniorInstructor_idSeniorInstructor` varchar(4) NOT NULL,
  `Office_oName` varchar(45) NOT NULL,
  PRIMARY KEY (`idManager`,`SeniorInstructor_idSeniorInstructor`),
  KEY `fk_Manager_SeniorInstructor1_idx` (`SeniorInstructor_idSeniorInstructor`),
  KEY `fk_Manager_Office1_idx` (`Office_oName`),
  CONSTRAINT `fk_Manager_Office1` FOREIGN KEY (`Office_oName`) REFERENCES `office` (`oName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Manager_SeniorInstructor1` FOREIGN KEY (`SeniorInstructor_idSeniorInstructor`) REFERENCES `seniorinstructor` (`idSeniorInstructor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('M001','S002','Bearsden'),('M002','S005','Billing'),('M003','S007','Domino'),('M004','S008','Logan'),('M005','S010','May'),('M006','S012','Sabiri'),('M007','S015','Storie'),('M008','S016','Whitehead');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `office` (
  `oName` varchar(45) NOT NULL,
  `idOffice` varchar(4) NOT NULL,
  `addresss` varchar(45) DEFAULT NULL,
  `telNo` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`oName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office`
--

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;
INSERT INTO `office` VALUES ('Bearsden','O001','119 NO.8 Street','00119970101','Glasgow'),('Billing','O003','35 Coleman Road','00319970103',' Edinburgh'),('Domino','O007','28 Ball Road','00719970203','Dundee'),('Logan','O008','21 Mckenna Street','00819970204','Dundee'),('May','O005','41 Stevie Road','00519970201','Aberdeen'),('Sabiri','O004','27 Palmer Street','00419970104',' Edinburgh'),('Storie','O006','31 Rose Street','00619970202','Aberdeen'),('Whitehead','O002','47 Green Road','00219970102','Glasgow');
/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prtext`
--

DROP TABLE IF EXISTS `prtext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prtext` (
  `idPrtext` varchar(4) NOT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `condition` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `texttime` varchar(45) DEFAULT NULL,
  `instructor_idInstructor` varchar(4) NOT NULL,
  `file_idFile` varchar(4) NOT NULL,
  PRIMARY KEY (`idPrtext`),
  KEY `fk_Prtext_instructor1_idx` (`instructor_idInstructor`),
  KEY `fk_Prtext_file1_idx` (`file_idFile`),
  CONSTRAINT `fk_Prtext_file1` FOREIGN KEY (`file_idFile`) REFERENCES `file` (`idFile`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Prtext_instructor1` FOREIGN KEY (`instructor_idInstructor`) REFERENCES `instructor` (`idInstructor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prtext`
--

LOCK TABLES `prtext` WRITE;
/*!40000 ALTER TABLE `prtext` DISABLE KEYS */;
INSERT INTO `prtext` VALUES ('P001',NULL,'success',NULL,NULL,'I001','F001'),('P002',NULL,NULL,'2017-12-25','15.00-16.00','I003','F002'),('P003',NULL,'success',NULL,NULL,'I004','F003'),('P004',NULL,NULL,'2017-12-25','9.00-10.00','I006','F004'),('P005',NULL,'success',NULL,NULL,'I007','F005'),('P006',NULL,NULL,'2017-12-25','17.30-18.30','I009','F006'),('P007',NULL,'success',NULL,NULL,'I010','F007'),('P008',NULL,NULL,'2017-12-25','13.30-14.30','I012','F008'),('P009',NULL,'success',NULL,NULL,'I013','F009'),('P010',NULL,NULL,'2017-12-25','10.30-11.30','I015','F010'),('P011',NULL,'success',NULL,NULL,'I016','F011'),('P012',NULL,NULL,'2017-12-25','9.00-10.00','I018','F012'),('P013',NULL,'success',NULL,NULL,'I019','F013'),('P014',NULL,NULL,'2017-12-25','17.30-18.30','I021','F014'),('P015',NULL,'success','',NULL,'I022','F015'),('P016',NULL,NULL,'2017-12-25','8.00-9.00','I024','F016');
/*!40000 ALTER TABLE `prtext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seniorinstructor`
--

DROP TABLE IF EXISTS `seniorinstructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seniorinstructor` (
  `idSeniorInstructor` varchar(4) NOT NULL,
  `fName` varchar(45) DEFAULT NULL,
  `sName` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `telNo` varchar(45) DEFAULT NULL,
  `Office_oName` varchar(45) NOT NULL,
  PRIMARY KEY (`idSeniorInstructor`),
  KEY `fk_SeniorInstructor_Office1_idx` (`Office_oName`),
  CONSTRAINT `fk_SeniorInstructor_Office1` FOREIGN KEY (`Office_oName`) REFERENCES `office` (`oName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seniorinstructor`
--

LOCK TABLES `seniorinstructor` WRITE;
/*!40000 ALTER TABLE `seniorinstructor` DISABLE KEYS */;
INSERT INTO `seniorinstructor` VALUES ('S001','Irin','Neuer','F','1966-03-27','18101250327','Bearsden'),('S002','Amy','Kimmich','F','1985-02-08','18101250208','Bearsden'),('S003','Niklas','Doesch','M','1978-01-15','18101255655','Bearsden'),('S004','Daid','Alaba','F','1972-06-24','18101250624','Billing'),('S005','Mats','Hummels','F','1978-12-16','18101251216','Billing'),('S006','Thiago','Alcantara','M','1981-04-11','18101250411','Domino'),('S007','Maria','Ribery','F','1973-04-07','18101250407','Domino'),('S008','Javi','Martinez','M','1988-09-02','18101250902','Logan'),('S009','Robert','Lewandowski','M','1968-08-21','18101250821','Logan'),('S010','Arjena','Robben','F','1964-01-23','18156557665','May'),('S011','James','Rodriguez','M','1961-07-12','18101250712','May'),('S012','Jupp','Heycnkes','M','1945-05-09','18101255655','Sabiri'),('S013','Sven','Ulreich','M','1978-08-03','18101251234','Sabiri'),('S014','Juan','Bernat','M','1993-03-01','18101253567','Storie'),('S015','Okyera','Wriedt','F','1974-07-10','18101257865','Storie'),('S016','Philip','Lahm','M','1983-11-11','18101251111','Whitehead'),('S017','Leanna','Messi','F','1987-06-22','18101250622','Whitehead');
/*!40000 ALTER TABLE `seniorinstructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `idStaff` varchar(4) NOT NULL,
  `fName` varchar(45) DEFAULT NULL,
  `sName` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `telNo` varchar(45) DEFAULT NULL,
  `Office_oName` varchar(45) NOT NULL,
  PRIMARY KEY (`idStaff`),
  KEY `fk_Staff_Office1_idx` (`Office_oName`),
  CONSTRAINT `fk_Staff_Office1` FOREIGN KEY (`Office_oName`) REFERENCES `office` (`oName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('S001','Jieping','Wang','M','1987-12-23','18101251223','Bearsden'),('S002','Mingzhe','Zhang','M','1977-04-01','18101250401','Bearsden'),('S003','Pierra','Aubame','F','1986-06-18','18101250618','Bearsden'),('S004','Andra','Yarmo','F','1969-10-23','18112341012','Billing'),('S005','Philip','Max','M','1984-03-01','18112340301','Billing'),('S006','Jacob','Larsen','M','1968-09-19','18112340919','Billing'),('S007','Alexander','Isak','M','1979-09-21','18112340921','Domino'),('S008','Nura','Sahin','F','1978-09-05','18112340905','Domino'),('S009','Shinji','Kagawa','M','1979-01-17','18112340317','Domino'),('S010','Seba','Rode','F','1980-10-11','18112341011','Logan'),('S011','Marco','Reus','M','1989-05-31','18112340531','Logan'),('S012','Mary','Gotze','F','1972-06-03','18112340603','Logan'),('S013','Gonzalo','Castro','M','1987-06-11','18112340611','May'),('S014','Annie','Shurrle','F','1980-11-06','18112341106','May'),('S015','Julian','Weigl','M','1975-09-08','18112340908','May'),('S016','Christina','Pulisic','F','1988-09-18','18112340918','Sabiri'),('S017','Jadon ','Sancho','M','1990-03-25','18112340325','Sabiri'),('S018','Moony','Dahoud','F','1970-01-01','18112340101','Sabiri'),('S019','Luckas','Piszczek','M','1985-06-03','18143210603','Storie'),('S020','Nevena','Subotic','F','1978-12-10','18143211210','Storie'),('S021','Judice','Best','M','1969-01-04','18143210104','Storie'),('S022','Daria','Zagadou','F','1959-06-03','18143210605','Whitehead'),('S023','Roman','Weidenfeller','M','1960-08-06','18143210806','Whitehead'),('S024','Dominik','Reiman','F','1997-06-18','18143210618','Whitehead');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `text`
--

DROP TABLE IF EXISTS `text`;
/*!50001 DROP VIEW IF EXISTS `text`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `text` AS SELECT 
 1 AS `idThtext`,
 1 AS `reason`,
 1 AS `condition`,
 1 AS `time`,
 1 AS `texttime`,
 1 AS `instructor_idInstructor`,
 1 AS `file_idFile`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `thtext`
--

DROP TABLE IF EXISTS `thtext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thtext` (
  `idThtext` varchar(4) NOT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `condition` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `texttime` varchar(45) DEFAULT NULL,
  `instructor_idInstructor` varchar(4) NOT NULL,
  `file_idFile` varchar(4) NOT NULL,
  PRIMARY KEY (`idThtext`),
  KEY `fk_Thtext_instructor1_idx` (`instructor_idInstructor`),
  KEY `fk_Thtext_file1_idx` (`file_idFile`),
  CONSTRAINT `fk_Thtext_file1` FOREIGN KEY (`file_idFile`) REFERENCES `file` (`idFile`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Thtext_instructor1` FOREIGN KEY (`instructor_idInstructor`) REFERENCES `instructor` (`idInstructor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thtext`
--

LOCK TABLES `thtext` WRITE;
/*!40000 ALTER TABLE `thtext` DISABLE KEYS */;
INSERT INTO `thtext` VALUES ('T001',NULL,'success',NULL,NULL,'I002','F001'),('T002',NULL,NULL,'2017-12-26','16.30-17.30','I001','F002'),('T003',NULL,'success',NULL,NULL,'I005','F003'),('T004',NULL,NULL,'2017-12-26','11.00-12.00','I004','F004'),('T005',NULL,'success',NULL,NULL,'I008','F005'),('T006',NULL,NULL,'2017-12-26','17.30-18.30','I007','F006'),('T007',NULL,'success',NULL,NULL,'I011','F007'),('T008',NULL,NULL,'2017-12-26','15.30-16.30','I010','F008'),('T009',NULL,'success',NULL,NULL,'I014','F009'),('T010',NULL,NULL,'2017-12-26','11.00-12.00','I013','F010'),('T011',NULL,'success',NULL,NULL,'I017','F011'),('T012',NULL,NULL,'2017-12-26','9.30-10.30','I016','F012'),('T013',NULL,'success',NULL,NULL,'I020','F013'),('T014',NULL,NULL,'2017-12-26','15.30-16.30','I019','F014'),('T015',NULL,'success',NULL,NULL,'I023','F015'),('T016',NULL,NULL,'2017-12-26','13.30-14.30','I022','F016');
/*!40000 ALTER TABLE `thtext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `text`
--

/*!50001 DROP VIEW IF EXISTS `text`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `text` AS select `a`.`idThtext` AS `idThtext`,`a`.`reason` AS `reason`,`a`.`condition` AS `condition`,`a`.`time` AS `time`,`a`.`texttime` AS `texttime`,`a`.`instructor_idInstructor` AS `instructor_idInstructor`,`a`.`file_idFile` AS `file_idFile` from (select `easydrive_school`.`thtext`.`idThtext` AS `idThtext`,`easydrive_school`.`thtext`.`reason` AS `reason`,`easydrive_school`.`thtext`.`condition` AS `condition`,`easydrive_school`.`thtext`.`time` AS `time`,`easydrive_school`.`thtext`.`texttime` AS `texttime`,`easydrive_school`.`thtext`.`instructor_idInstructor` AS `instructor_idInstructor`,`easydrive_school`.`thtext`.`file_idFile` AS `file_idFile` from `easydrive_school`.`thtext` union all select `easydrive_school`.`prtext`.`idPrtext` AS `idPrtext`,`easydrive_school`.`prtext`.`reason` AS `reason`,`easydrive_school`.`prtext`.`condition` AS `condition`,`easydrive_school`.`prtext`.`time` AS `time`,`easydrive_school`.`prtext`.`texttime` AS `texttime`,`easydrive_school`.`prtext`.`instructor_idInstructor` AS `instructor_idInstructor`,`easydrive_school`.`prtext`.`file_idFile` AS `file_idFile` from `easydrive_school`.`prtext`) `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14 20:39:16
