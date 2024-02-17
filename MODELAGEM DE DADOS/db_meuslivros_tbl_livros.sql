-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: db_meuslivros
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
-- Table structure for table `tbl_livros`
--

DROP TABLE IF EXISTS `tbl_livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_livros` (
  `IdLivro` smallint NOT NULL AUTO_INCREMENT,
  `NomeLivro` varchar(70) NOT NULL,
  `ISBN13` varchar(13) NOT NULL,
  `DataPub` date DEFAULT NULL,
  `PrecoLivro` decimal(10,2) NOT NULL,
  `NumeroPaginas` smallint NOT NULL,
  `IdEditora` smallint NOT NULL,
  `IdAssunto` tinyint NOT NULL,
  PRIMARY KEY (`IdLivro`),
  KEY `fk_id_editora` (`IdEditora`),
  KEY `fk_id_assunto` (`IdAssunto`),
  CONSTRAINT `fk_id_assunto` FOREIGN KEY (`IdAssunto`) REFERENCES `tbl_assuntos` (`IdAssunto`) ON DELETE CASCADE,
  CONSTRAINT `fk_id_editora` FOREIGN KEY (`IdEditora`) REFERENCES `tbl_editoras` (`IdEditora`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_livros`
--

LOCK TABLES `tbl_livros` WRITE;
/*!40000 ALTER TABLE `tbl_livros` DISABLE KEYS */;
INSERT INTO `tbl_livros` VALUES (1,'Linux Command Line and Shell Scripting','9781118983843','2015-01-09',165.55,816,4,7),(2,'SSH, the Secure Shell','9780596008956','2005-05-17',295.41,672,2,7),(3,'Using Samba','9780596002565','2003-12-21',158.76,449,2,7),(4,'A Arte da Eletrônica','9788582604342','2017-03-08',176.71,1160,6,7),(5,'Windows Server 2012 Inside Out','9780735666313','2013-01-25',179.51,1584,3,7),(6,'Murach´s MySQL','9781943872367','2019-05-01',227.64,650,10,7),(7,'Practical Electronics for Inventors','9781259587542','2016-07-11',119.58,1056,5,3);
/*!40000 ALTER TABLE `tbl_livros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 21:48:17
