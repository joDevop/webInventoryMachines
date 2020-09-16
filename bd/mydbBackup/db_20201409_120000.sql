-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_inventor_machines
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `table_campus_v1a`
--

DROP TABLE IF EXISTS `table_campus_v1a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_campus_v1a` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `identifier_campus` varchar(4) NOT NULL,
  `campus` varchar(56) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_campus_v1a`
--

LOCK TABLES `table_campus_v1a` WRITE;
/*!40000 ALTER TABLE `table_campus_v1a` DISABLE KEYS */;
INSERT INTO `table_campus_v1a` VALUES (1,'S85','VIVA 1A IPS SURA 85'),(2,'CTY','VIVA 1A IPS COUNTRY'),(3,'SOL','VIVA 1A IPS SOLEDAD'),(4,'C30','VIVA 1A IPS CALLE 30'),(5,'MAC','VIVA 1A IPS MACARENA'),(6,'C16','VIVA 1A IPS CARRERA 16'),(7,'MTZ','VIVA 1A CASA MATRIZ'),(8,'SSJ','VIVA 1A IPS SURA SAN JOSE');
/*!40000 ALTER TABLE `table_campus_v1a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_machines`
--

DROP TABLE IF EXISTS `table_machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_machines` (
  `id_machine` int(100) NOT NULL AUTO_INCREMENT,
  `lote` int(4) NOT NULL,
  `type_machine` varchar(20) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `serial` varchar(255) NOT NULL,
  `ram_slot_00` varchar(255) NOT NULL,
  `ram_slot_01` varchar(255) NOT NULL,
  `hard_drive` varchar(255) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `ip_range` varchar(15) NOT NULL,
  `mac_address` varchar(17) NOT NULL,
  `anydesk` varchar(255) DEFAULT NULL,
  `campus_id` int(4) NOT NULL,
  `campus` varchar(45) NOT NULL,
  `location` varchar(255) NOT NULL,
  `tec_id` int(4) NOT NULL,
  `registered_by` varchar(25) NOT NULL,
  `create_date` datetime NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `imagen` varchar(50) DEFAULT NULL,
  `ruta_imagen` varchar(50) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id_machine`),
  KEY `fk_tec_id` (`tec_id`),
  CONSTRAINT `table_machines_ibfk_2` FOREIGN KEY (`tec_id`) REFERENCES `table_user_tec` (`id_tec`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_machines`
--

LOCK TABLES `table_machines` WRITE;
/*!40000 ALTER TABLE `table_machines` DISABLE KEYS */;
INSERT INTO `table_machines` VALUES (1,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.71.26 ','B8:27:EB:71:97:71',NULL,0,'VIVA 1A IPS MACARENA','',1,'jortega','0000-00-00 00:00:00','','2020-09-11 23:28:53',NULL,NULL,NULL),(2,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.71.27 ','B8:27:EB:39:0C:5C',NULL,0,'VIVA 1A IPS MACARENA','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(3,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.71.28 ','B8:27:EB:5F:59:D3',NULL,0,'VIVA 1A IPS MACARENA','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(4,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.71.29 ','B8:27:EB:3E:16:A7',NULL,0,'VIVA 1A IPS MACARENA','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(5,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.71.80 ','B8:27:EB:7B:FA:B3',NULL,0,'VIVA 1A IPS MACARENA','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(6,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.71.81 ','B8:27:EB:7F:5C:23',NULL,0,'VIVA 1A IPS MACARENA','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(7,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.71.64 ','  ',NULL,0,'VIVA 1A IPS MACARENA','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(8,9999,'ATRIL','','','','','','','',' 192.168.71.102','6C:4B:90:34:35:10',NULL,0,'VIVA 1A IPS MACARENA','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(9,9999,'ATRIL','','','','','','','',' 192.168.71.25 ','6C:4B:90:50:01:76',NULL,0,'VIVA 1A IPS MACARENA','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(10,9999,'ATRIL','','','','','','','',' 192.168.71.213','  ',NULL,0,'VIVA 1A IPS MACARENA','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(11,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.62.26 ','B8:27:EB:AC:53:10',NULL,0,'VIVA 1A IPS SURA SAN JOSE','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:13:29',NULL,NULL,NULL),(12,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.62.28 ','B8:27:EB:5E:3B:D6',NULL,0,'VIVA 1A IPS SURA SAN JOSE','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:13:29',NULL,NULL,NULL),(13,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.62.29 ','B8:27:EB:68:55:17',NULL,0,'VIVA 1A IPS SURA SAN JOSE','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:13:29',NULL,NULL,NULL),(14,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.62.30 ','B8:27:EB:F8:D4:E7',NULL,0,'VIVA 1A IPS SURA SAN JOSE','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:13:29',NULL,NULL,NULL),(15,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.62.31 ','B8:27:EB:2D:B6:9A',NULL,0,'VIVA 1A IPS SURA SAN JOSE','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:13:29',NULL,NULL,NULL),(16,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.62.33 ','B8:27:EB:9D:57:3B',NULL,0,'VIVA 1A IPS SURA SAN JOSE','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:13:29',NULL,NULL,NULL),(17,9999,'ATRIL','','','','','','','',' 192.168.62.122','D0:27:88:91:5F:30',NULL,0,'VIVA 1A IPS SURA SAN JOSE','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:13:29',NULL,NULL,NULL),(18,9999,'ATRIL','','','','','','','',' 192.168.62.34 ','98:FA:9B:29:90:75',NULL,0,'VIVA 1A IPS SURA SAN JOSE','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:13:29',NULL,NULL,NULL),(19,9999,'ATRIL','','','','','','','',' 192.168.62.37 ','  ',NULL,0,'VIVA 1A IPS SURA SAN JOSE','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:13:29',NULL,NULL,NULL),(20,9999,'ATRIL','','','','','','','',' 192.168.62.25 ','6C:4B:90:67:9F:40',NULL,0,'VIVA 1A IPS SURA SAN JOSE','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:13:29',NULL,NULL,NULL),(21,9999,'ATRIL','','','','','','','',' 192.168.12.25 ','6C:4B:90:4F:F9:12',NULL,0,'VIVA 1A IPS CALLE 30','',0,'fviloria','0000-00-00 00:00:00','','2020-09-03 03:15:16',NULL,NULL,NULL),(22,9999,'ATRIL','','','','','','','',' 192.168.12.35 ','  ',NULL,0,'VIVA 1A IPS CALLE 30 ','',0,'fviloria','0000-00-00 00:00:00','','2020-09-03 03:15:16',NULL,NULL,NULL),(23,9999,'TV RASPBERRY PI',' RASPBERRY ',' PI 4','XXXX','1GB DDR2 SO-DIMM','','70GB','',' 192.168.12.29 ','B8:27:EB:8A:23:0F','',0,'VIVA 1A IPS CALLE 30','PISO 2',0,'fviloria','0000-00-00 00:00:00','','2020-09-03 03:15:16',NULL,NULL,''),(24,9999,'TV RASPBERRY PI',' RASPBERRY ',' PI 4','XXXX','1GB DDR2 SO-DIMM','','70GB','',' 192.168.12.28 ','B8:27:EB:AE:15:56','',0,'VIVA 1A IPS CALLE 30',' TOMA DE MUESTRA ',0,'fviloria','0000-00-00 00:00:00','','2020-09-03 03:15:16',NULL,NULL,''),(25,9999,'TV RASPBERRY PI','','','','','','','',' 192.168.12.100','B8:27:EB:63:99:84',NULL,0,'VIVA 1A IPS CALLE 30','',0,'fviloria','0000-00-00 00:00:00','','2020-09-03 03:15:16',NULL,NULL,NULL),(26,9999,'TV RASPBERRY PI',' RASPBERRY ',' PI 4','XXXX','1GB DDR2 SO-DIMM','','70GB','',' 192.168.12.101','B8:27:EB:63:DA:CD','',0,'VIVA 1A IPS CALLE 30','PISO 1',0,'fviloria','0000-00-00 00:00:00','','2020-09-03 03:15:16',NULL,NULL,''),(27,9999,'TV RASPBERRY PI','RASPBERRY PI FOUNDATION','PI 4','XXXX','1GB DDR2 SO-DIMM','','70GB','',' 192.168.16.26 ','B8:27:EB:0E:1E:B4','',0,'VIVA 1A IPS CARRERA 16','PISO ?',0,'jortega','0000-00-00 00:00:00','','2020-09-08 22:18:19',NULL,NULL,''),(28,9999,'TV RASPBERRY PI','RASPBERRY PI FOUNDATION','PI 4','XXXXXXXXXXXXXX','1GB DDR2 SO-DIMM','','70GB','',' 192.168.16.28 ','B8:27:EB:29:73:D3','',0,'VIVA 1A IPS CARRERA 16','PISO ?',0,'jortega','0000-00-00 00:00:00','','2020-09-08 22:24:17',NULL,NULL,''),(29,9999,'ATRIL','','','','','','','',' 192.168.16.25 ','FC:3F:DB:0A:D2:32',NULL,0,'VIVA 1A IPS CARRERA 16','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:15:55',NULL,NULL,NULL),(30,9999,'ATRIL','','','','','','','',' 192.168.16.30 ','6C:4B:90:67:9F:6F',NULL,0,'VIVA 1A IPS CARRERA 16','',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:15:55',NULL,NULL,NULL),(35,0,'PC','LENOVO              ','THINKCENTRE ALL IN ONE','S1H03LKD','4GB DDR3 SO-DIMM','4GB DDR3 SO-DIMM','500GB','INTEL(R) CORE(TM) I5-4460T CPU @ 1.90GHZ, 1901 MHZ, 4 PROCESADORES PRINCIPALES, 4 PROCESADORES LÓGICOS','192.168.71.240','98-EE-CB-25-1F-C2','465 562 426',0,'VIVA 1A IPS MACARENA','OFICINA DE SISTEMAS ',0,'jortega','2020-08-10 10:40:05','','2020-09-03 03:11:13','pc.png',NULL,'EQUIPO DE TECNICO DE SISTEMAS'),(48,0,'PC','LENOVO','M710Q','MJ06PZFW','4GB DDR4 SO-DIMM','NULL','1TB','Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz, 2400 Mhz','192.168.71.123','6C-4B-90-EA-67','791 415 611',0,'VIVA 1A IPS MACARENA','LINEA DE FRENTE MODULO 02',0,'jortega','2020-08-20 00:00:00','','2020-09-05 04:48:28','',NULL,''),(49,0,'PC','LENOVO','M710Q','MJ06PZKJ','4GB DDR4 SO-DIMM','NULL','1TB','Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz, 2400 Mhz','192.168.71.162','6C-4B-90-EA-67','929 589 135',0,'VIVA 1A IPS MACARENA','LINEA DE FRENTE MODULO 08',0,'jortega','2020-08-20 00:00:00','','2020-09-03 03:11:13','',NULL,''),(50,0,'PC','LENOVO','M710Q','MJ06PZHR','4GB DDR3 SO-DIMM','NULL','1TB','Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz, 2400 Mhz','192.168.71.67','6C-4B-90-52-50','694 961 071',0,'VIVA 1A IPS MACARENA','CONSULTORIO 24',0,'jortega','2020-08-20 00:00:00','','2020-09-03 03:11:13','',NULL,''),(51,0,'PC','LENOVO','M710Q','MJ06PZFR','4GB DDR3 SO-DIMM','NULL','1TB','Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz, 2400 Mhz','192.168.71.180','6C-4B-90-52-4F','421662546',0,'VIVA 1A IPS MACARENA','CONSULTORIO 25',0,'jortega','2020-08-20 00:00:00','','2020-09-03 03:11:13','',NULL,''),(116,1000,'PC','','',' PC0UF1HX ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio1 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(117,1000,'PC','','',' PC0UF3CU ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio2 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(118,1000,'PC','','',' PC0UF3CN ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio3 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(119,1000,'PC','','',' PC0UF3P6 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio4 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(120,1000,'PC','','',' PC0UF3P4 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio5 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(121,1000,'PC','','',' MJ06PZGB ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio7 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(122,1000,'PC','','',' MJ06PZJJ ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio8 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(123,1000,'PC','','',' MJ06PZG8 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio9 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(124,1000,'PC','','',' MJ06PZHH ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio10 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(125,1000,'PC','','',' MJ06PZGT ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio11 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(126,1000,'PC','LENOVO','THINKCENTRE M710Q',' MJ06PZK1 ','4GB DDR4 SO-DIMM','','1TB','QuadCore Intel Core i5-7400T, 2400 MHz','192.168.71.235','6C-4B-90-52-4F-CE','444 258 948',0,'VIVA 1A IPS MACARENA',' consultorio12 ',1,'jortega','0000-00-00 00:00:00','','2020-09-11 23:58:38',NULL,NULL,'Microsoft Windows 10 Pro'),(127,1000,'PC','','',' MJ06PZFH ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio13 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(128,1000,'PC','','',' MJ06PZFU ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio14 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(129,1000,'PC','','',' MJ06PZGG ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio15 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(130,1000,'PC','','',' MJ06PZJX ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio16 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(131,1000,'PC','','',' MJ06PZEV ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio17 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(132,1000,'PC','','',' MJ06PZKE ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio19 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(133,1000,'PC','','',' MJ06PZEB ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio20 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(134,1000,'PC','','',' MJ06PZKZ ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio21 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(135,1000,'PC','','',' MJ06PZJR ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio23 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(136,1000,'PC','','',' MJ06PZF8 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio27 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(137,1000,'PC','','',' MJ06PZHB ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio28 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(138,1000,'PC','','',' MJ06PZJG ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio29 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(139,1000,'PC','','',' MJ06PZH6 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio30 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(140,1000,'PC','','',' MJ06PZGS ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio31 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(141,1000,'PC','','',' MJ06PZG2 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio32ELECTRO ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(142,1000,'PC','','',' MJ06PZKP ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio32CARDIOLOGIA ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(143,1000,'PC','','',' YL002MN3 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' consultorio33 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(144,1000,'PC','','',' MJ06PZ6K ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo1 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(145,1000,'PC','','',' MJ06PZH8 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo4 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(146,1000,'PC','','',' MJ06PZJ9 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo5 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(147,1000,'PC','','',' MJ06PZFN ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo6 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(148,1000,'PC','','',' MJ06PZHJ ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo7 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(149,1000,'PC','','',' MJ06PZK7 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo9 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(150,1000,'PC','','',' MJ06PZH2 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo10 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(151,1000,'PC','LENOVO','THINKCENTRE M710Q','MJ06PZL4 ','4GB DDR4 SO-DIMM','','1TB','INTEL CORE I5-7400T, 2400 MHZ QUADCORE ','192.168.71.100','6C-4B-90-52-50-84','696 059 473',0,'VIVA 1A IPS MACARENA','LINEA DE FRENTE MODULO 11 ',0,'jortega','0000-00-00 00:00:00','','2020-09-04 06:06:39',NULL,NULL,'Microsoft Windows 10 Pro\r\nV1AMAC-LF11\r\n'),(154,1000,'PC','','',' MJ06PZF4 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo14 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(155,1000,'PC','','',' MJ06PZHC ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo15 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(156,1000,'PC','','',' MJ06PZGA ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo16 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(157,1000,'PC','','',' MJ06PZHF ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo17 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(158,1000,'PC','','',' PC0UF3Q7 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo23 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(159,1000,'PC','','',' MJ06APXK ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo18 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(160,1000,' CPU TODO EN UNO ','','',' 3CR52904FG ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' Modulo2 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(161,1000,'PC','','',' MJ07PZ6W ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' odontologia1 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(162,1000,'PC','','',' MJ06PZGW ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' odontologia2 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(163,1000,'PC','','',' YL002L9C ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' odontologia3 ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(164,1000,'PC','','',' PC0UAXPA ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' ECOGRAFIA ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(165,1000,'PC','','',' PC0UF3Z5 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' procedimiento ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(166,1000,'PC','','',' PC0UF3N4 ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' FISIO TERAPIA ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(167,1000,'PC','','',' MJ06PZHK ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' AUDITORIO ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(168,1000,'PC','','',' MJ06APWM ','','','','','','',NULL,0,'VIVA 1A IPS MACARENA',' ATRIL ',0,'jortega','0000-00-00 00:00:00','','2020-09-03 03:11:13',NULL,NULL,NULL),(169,0,'PC','LENOVO','THINKCENTRE M73','MJ00VAYE','4GB DDR3 DIMM','NULL','300GB','INTEL(R) CORE(TM) I3-4130 CPU @ 3.40GHZ, 3400 MHZ, 2 PROCESADORES PRINCIPALES, 4 PROCESADORES LÓGICOS','192.168.16.75','44-8A-5B-75-39-36','550 791 024',0,'VIVA 1A IPS CARRERA 16','LINEA DE FRENTE MODULO 3',0,'jortega','2020-08-25 11:24:26','','2020-09-03 03:15:55','',NULL,''),(170,0,'PC','LENOVO','THINKCENTRE E73Z','S1H02QGN','4GB DDR3 DIMM','NULL','500GB','DUALCORE INTEL CORE I3-4160, 3600 MHZ','192.168.16.63','98-EE-CB-15-12-FF','278 779 528',0,'VIVA 1A IPS CARRERA 16','LINEA DE FRENTE MODULO 04 P2',0,'jortega','2020-08-25 16:24:57','','2020-09-08 03:45:32','',NULL,'Sistema operativo	Microsoft Windows 7 Professional\r\nNombre del equipo	V1AC16-LF06'),(171,0,'PC','LENOVO ','THINKCENTRE M73','MJ00VAZ1','4GB DDR3 DIMM','NULL','500GB','DUALCORE INTEL CORE I3-4130, 3400 MHZ','192.168.16.60','44-8A-5B-75-25-A9','870 561 845',0,'VIVA 1A IPS CARRERA 16','LINEA DE FRENTE MODULO 05 P2',0,'jortega','2020-08-25 16:54:48','','2020-09-08 03:45:42','',NULL,'ALL IN ONE\r\nSistema operativo	Microsoft Windows 7 Professional'),(172,0,'PC','LENOVO','THINKCENTRE M710Q','MJ06APXK','4GB DDR3 SO-DIMM','NULL','500GB','DUALCORE INTEL CORE I3-6100T, 3200 MHZ','192.168.71.83','6C-4B-90-34-35-2F','405 296 429',0,'VIVA 1A IPS MACARENA','LINEA DE FRENTE MODULO 13',0,'jortega','2020-08-28 10:55:41','','2020-09-03 03:11:13','',NULL,'Microsoft Windows 10 Pro\r\nV1AMAC-LF13'),(174,0,'TV RASPBERRY PI',' RASPBERRY ',' PI 4 ','','1GB DDR2 SO-DIMM','','','',' 192.168.12.20 ','DC:A6:32:3D:4A:EF',NULL,0,'VIVA 1A IPS SOLEDAD',' PISO 1 SALA 2 ',0,'fviloria','0000-00-00 00:00:00','','2020-09-03 03:17:08',NULL,NULL,NULL),(175,0,'TV RASPBERRY PI',' RASPBERRY ',' PI 4 ','','1GB DDR2 SO-DIMM','','','',' 192.168.12.30 ','DC:A6:32:0D:B2:45',NULL,0,'VIVA 1A IPS SOLEDAD',' PISO 2 ',0,'fviloria','0000-00-00 00:00:00','','2020-09-03 03:17:08',NULL,NULL,NULL),(195,0,'PC','LENOVO','THINKCENTRE M710Q','MJ06PZG9','4GB DDR4 SO-DIMM','NULL','1TB','INTEL CORE I5-7400T, 2400 MHZ QUADCORE','192.168.71.127','6C-4B-90-52-4F-E3','186 636 320',0,'VIVA 1A IPS MACARENA','LINEA DE FRENTE MODULO 12',0,'jortega','2020-09-03 14:29:23','','2020-09-04 05:29:23','',NULL,''),(196,0,'TV RASPBERRY PI','RASPBERRY PI FOUNDATION','PI 4','XXXXXXXXXXX','1GB DDR2 SO-DIMM','NULL','70GB','','192.168.16.27','B8:27:EB:23:D6:2D','',0,'VIVA 1A IPS CARRERA 16','PISO 1 ADMISIONES',0,'jortega','2020-09-08 07:23:17','','2020-09-08 23:09:48','',NULL,''),(197,0,'PC','LENOVO','THINKCENTRE M73','MJ00VAZ7','4GB DDR3 DIMM','NULL','500GB','INTEL CORE I3-4130, 3400 MHZ DUALCORE ','192.168.16.74','44-8A-5B-75-24-D7','1 362 652',0,'VIVA 1A IPS CARRERA 16','CONSULTORIO 02 PISO 1',0,'jortega','2020-09-08 11:39:50','','2020-09-09 02:39:50','',NULL,'Microsoft Windows 7 Professional\r\nV1AC16-CON02'),(198,0,'PC','LENOVO','THINKCENTRE M73','MJ00VAYS','4GB DDR3 DIMM','NULL','500GB','DUALCORE INTEL CORE I3-4130, 3400 MHZ','192.168.16.73','44-8A-5B-75-16-C4','4 898 537',0,'VIVA 1A IPS CARRERA 16','CONSULTORIO 04 PISO 1',0,'jortega','2020-09-08 15:03:31','','2020-09-09 06:03:31','',NULL,'Microsoft Windows 7 Professional\r\nV1AC16-CON04'),(199,0,'ATRIL','DFSDFBGFHFGN','DGHGNFHJT','DGDFGDFVSV','1GB DDR2 SO-DIMM','NULL','70GB','INTEL(R) CORE(TM) I5-4460T CPU @ 1.90GHZ, 1901 MHZ, 4 PROCESADORES PRINCIPALES, 4 PROCESADORES LÓGICOS','fdggnfht','DFGDFGDFGSDS','fsdf',0,'VIVA 1A IPS CALLE 30','FSDFS',1,'jortega','2020-09-11 16:39:51','','2020-09-11 21:39:51','',NULL,''),(200,0,'ATRIL','DASDAFSDVXCV','ZXCXVS','ERWTERTE','1GB DDR2 SO-DIMM','NULL','70GB','INTEL CORE I5-4460T 1.90GHZ','dsfsdfa','DASDASD','dasd',0,'VIVA 1A IPS MACARENA','ASFGRGRE',3,'fviloria','2020-09-11 16:40:43','','2020-09-11 21:40:43','',NULL,'');
/*!40000 ALTER TABLE `table_machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_user_tec`
--

DROP TABLE IF EXISTS `table_user_tec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_user_tec` (
  `id_tec` int(4) NOT NULL AUTO_INCREMENT,
  `nickname_tec` varchar(20) NOT NULL,
  `name_tec` varchar(256) NOT NULL,
  `last_name_tec` varchar(256) NOT NULL,
  `campus_tec` varchar(256) NOT NULL,
  `position_job` varchar(256) NOT NULL,
  `email_tec` varchar(256) NOT NULL,
  `password_tec` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `time_login` datetime NOT NULL,
  `time_logout` datetime NOT NULL,
  PRIMARY KEY (`id_tec`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_user_tec`
--

LOCK TABLES `table_user_tec` WRITE;
/*!40000 ALTER TABLE `table_user_tec` DISABLE KEYS */;
INSERT INTO `table_user_tec` VALUES (1,'jortega','Jefferson Javier','Ortega Pacheco','VIVA 1A IPS MACARENA','Support IT','jortega@viva1a.com.co','.jortega',0,'2020-09-11 18:52:46','2020-09-11 18:59:51'),(2,'jmendoza','Jose','Mendoza','VIVA 1A CASA MATRIZ','Support IT','jmendoza@viva1a.com.co','.jmendoza',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'fviloria','Francisco','Viloria','VIVA 1A IPS CALLE 30','Support IT','fviloria@viva1a.com.co','.fviloria',0,'2020-09-11 16:40:19','2020-09-11 17:10:44');
/*!40000 ALTER TABLE `table_user_tec` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-14 12:00:02
