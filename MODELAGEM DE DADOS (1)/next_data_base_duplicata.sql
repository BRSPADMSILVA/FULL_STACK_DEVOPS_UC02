-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: next_data_base
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `duplicata`
--

DROP TABLE IF EXISTS `duplicata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duplicata` (
  `Nome` char(40) DEFAULT NULL,
  `Numero` int NOT NULL,
  `Valor` decimal(10,2) DEFAULT NULL,
  `Vencimento` date DEFAULT NULL,
  `Banco` char(10) DEFAULT NULL,
  PRIMARY KEY (`Numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duplicata`
--

LOCK TABLES `duplicata` WRITE;
/*!40000 ALTER TABLE `duplicata` DISABLE KEYS */;
INSERT INTO `duplicata` VALUES ('ABC PAPELARIA',100100,5000.00,'2017-01-20','ITAU'),('LIVRARIA FERNANDES',100110,2500.00,'2017-01-22','ITAU'),('LIVRARIA FERNANDES',100120,1500.00,'2016-10-15','BRADESCO'),('ABC PAPELARIA',100130,8000.00,'2016-10-15','SANTANDER'),('LER E SABER',200130,11000.00,'2018-09-26','ITAU'),('PAPELARIA SILVA',250350,1500.00,'2018-01-26','BRADESCO'),('LIVROS MM',250360,500.00,'2018-12-18','SANTANDER'),('LIVROS MM',250370,3400.00,'2018-04-26','SANTANDER'),('LIVROS E CIA',453360,1500.00,'2018-06-15','ITAU'),('LIVROS MM',453365,5400.00,'2018-06-15','BRADESCO'),('PAPELARIA SILVA',453370,2350.00,'2017-12-27','ITAU'),('LIVROS E CIA',453380,1550.00,'2017-12-27','BBB'),('LER E SABER',888132,2500.00,'2017-03-05','ITAU'),('ABC PAPELARIA',980130,4000.00,'2016-11-12','ITAU'),('ABC PAPELARIA',985001,3000.00,'2016-09-11','ITAU'),('PAPEL E AFINS',985002,2500.00,'2016-03-12','SANTANDER');
/*!40000 ALTER TABLE `duplicata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 21:50:23
