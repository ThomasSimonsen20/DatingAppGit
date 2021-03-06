-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: DatingAppData
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `idFavorites` int NOT NULL AUTO_INCREMENT,
  `idUsers` int NOT NULL,
  `idUsersFavorite` int NOT NULL,
  PRIMARY KEY (`idFavorites`),
  UNIQUE KEY `idfavorites_UNIQUE` (`idFavorites`),
  UNIQUE KEY `idUsersFavorites_UNIQUE` (`idUsers`,`idUsersFavorite`),
  KEY `idUsers_idx` (`idUsers`),
  CONSTRAINT `idUsers` FOREIGN KEY (`idUsers`) REFERENCES `users` (`idUsers`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,1,2),(2,1,4),(3,1,5),(5,2,4),(4,2,7),(16,3,1),(15,3,2),(17,3,5),(6,5,6);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUsers` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `TelephoneNumber` int NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `IsAdmin` tinyint NOT NULL DEFAULT '0',
  `isWoman` tinyint NOT NULL,
  `Birthday` date DEFAULT NULL,
  PRIMARY KEY (`idUsers`),
  UNIQUE KEY `idUsers_UNIQUE` (`idUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hanne','Jensen',12345678,'test1','test',1,1,'2000-11-06'),(2,'Suzi','Hansen',87654321,'test2','test',0,1,'2001-09-06'),(3,'Jørgen','Johnson',22445341,'test3','test',0,0,'1967-03-04'),(4,'Ejnar','Christensen',76587351,'test4','test',0,0,'1930-10-05'),(5,'Camilla','Jensen',66373829,'test5','test',0,1,'1999-04-09'),(6,'Jens','Nielsen',77890987,'test6','test',0,0,'1940-12-12'),(7,'Søren','Pedersen',11223344,'test7','test',0,0,'1955-03-03'),(8,'Janne','Karstensen',87336544,'test8','test',0,1,'1998-05-04'),(9,'Stinna','Johnson',77834647,'test9','test',0,1,'1998-03-10'),(10,'Klaus','Klausen',88776633,'test10','test',0,0,'1958-03-08'),(17,'Ole','Caspersen',74665233,'test11','test',0,0,'1933-12-28'),(18,'Sten','Stensen',74665233,'test12','test',0,0,'1945-05-03'),(19,'Kasper','Holte',74664933,'test13','test',0,0,'1965-04-16'),(20,'Sylvester','Sørensen',83746454,'test14','test',0,0,'1941-12-12'),(21,'Kalle','Mathiesen',74735422,'test14','test',0,0,'1965-11-20'),(22,'Jasper','Nickel',84745352,'test15','test',0,0,'1956-11-18'),(23,'Ninna','Tina',74747373,'test16','test',0,1,'1995-09-09'),(24,'Sørine','Albrechsen',83736455,'test17','test',0,1,'1996-08-15'),(25,'Tanja','Tanjasen',98447633,'test18','test',0,1,'1999-05-03'),(26,'Henriette','Vedergaard',98762455,'test19','test',0,1,'1997-04-17'),(27,'Ulrikke','Bæk',98447633,'test20','test',0,1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'DatingAppData'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-13 21:39:57
