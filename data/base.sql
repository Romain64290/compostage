-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: 192.168.1.79    Database: compostage
-- ------------------------------------------------------
-- Server version	5.5.49-0+deb8u1

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
-- Table structure for table `communes`
--

DROP TABLE IF EXISTS `communes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communes` (
  `id_commune` int(11) NOT NULL AUTO_INCREMENT,
  `nom_commune` varchar(45) NOT NULL,
  PRIMARY KEY (`id_commune`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communes`
--

LOCK TABLES `communes` WRITE;
/*!40000 ALTER TABLE `communes` DISABLE KEYS */;
INSERT INTO `communes` VALUES (1,'Artigueloutan'),(2,'Billère'),(3,'Bizanos'),(4,'Gan'),(5,'Gelos'),(6,'Idron'),(7,'Jurançon'),(8,'Lée'),(9,'Lescar'),(10,'Lons'),(11,'Mazères-Lezons'),(12,'Ousse'),(13,'Pau'),(14,'Sendets'),(15,'Arbus'),(16,'Aressy'),(17,'Artiguelouve'),(18,'Aubertin'),(19,'Aussevielle'),(20,'Beyrie-en-Béarn'),(21,'Bosdarros'),(22,'Bougarber'),(23,'Denguin'),(24,'Laroin'),(25,'Meillon'),(26,'Poey-de-Lescar'),(27,'Rontignon'),(28,'Saint-Faust'),(29,'Siros'),(30,'Uzein'),(31,'Uzos');
/*!40000 ALTER TABLE `communes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membres`
--

DROP TABLE IF EXISTS `membres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membres` (
  `id_membre` int(11) NOT NULL AUTO_INCREMENT,
  `id_typemembre` int(11) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `nom_membre` varchar(45) NOT NULL,
  `prenom_membre` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_inscription` datetime NOT NULL,
  `validation_inscription` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `service` varchar(45) NOT NULL,
  PRIMARY KEY (`id_membre`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membres`
--

LOCK TABLES `membres` WRITE;
/*!40000 ALTER TABLE `membres` DISABLE KEYS */;
INSERT INTO `membres` VALUES (20,4,'4075cc72e829861798e3be24010317e2094d637c','TALDU','Romain','r.taldu@agglo-pau.fr','2016-08-01 21:02:59',1,'100636576657b43762cf6838.43983711','SDIN');
/*!40000 ALTER TABLE `membres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reunion`
--

DROP TABLE IF EXISTS `reunion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reunion` (
  `id_reunion` int(11) NOT NULL AUTO_INCREMENT,
  `type_reunion` int(11) NOT NULL COMMENT '1 maison \n2 appartement',
  `date_reunion` datetime NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `id_commune` varchar(45) NOT NULL,
  `lien_map` varchar(255) NOT NULL,
  `reunion_ouverte` int(11) NOT NULL,
  `nbr_participants` int(11) NOT NULL,
  `limite_participants` int(11) NOT NULL,
  `animateur` varchar(255) NOT NULL,
  `email_absent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reunion`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reunion`
--

LOCK TABLES `reunion` WRITE;
/*!40000 ALTER TABLE `reunion` DISABLE KEYS */;
INSERT INTO `reunion` VALUES (7,1,'2017-01-04 19:00:00','Avenue de Gelos 3ghhgghfkkkkcxcvxcwcv','5','https://www.google.fr/maps/place/Avenue+de+Gelos,+Gelos/@43.2834491,-0.3811092,15.84z/data=!4m5!3m4!1s0xd564ed40517707f:0x1c90c201c060902!8m2!3d43.2854829!4d-0.3786376',2,4,2,'',1),(8,2,'2016-12-02 18:30:00','Avenue Emile Ginot 2','11','https://www.google.frmomo',2,1,12,'',NULL),(11,1,'2016-11-28 18:00:00','Place du foirail','13','https://goo.gl/maps/VQWXbr85PXQ2',1,3,12,'',NULL),(12,1,'2017-03-31 18:00:00','gsgfsgfgfs','13','fsgsfgdfsg',1,3,80,'Romain',NULL),(13,2,'2017-03-30 17:00:00','dghghgh','13','hgghghgh',1,1,50,'ghghghfghf',NULL);
/*!40000 ALTER TABLE `reunion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reunion_has_usagers`
--

DROP TABLE IF EXISTS `reunion_has_usagers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reunion_has_usagers` (
  `id_reunion` int(11) NOT NULL,
  `id_usager` int(11) NOT NULL,
  PRIMARY KEY (`id_reunion`,`id_usager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reunion_has_usagers`
--

LOCK TABLES `reunion_has_usagers` WRITE;
/*!40000 ALTER TABLE `reunion_has_usagers` DISABLE KEYS */;
INSERT INTO `reunion_has_usagers` VALUES (7,57),(7,69),(7,71),(7,73),(8,72),(11,58),(11,63),(11,64),(12,74),(12,76),(12,78),(13,75);
/*!40000 ALTER TABLE `reunion_has_usagers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_membre`
--

DROP TABLE IF EXISTS `type_membre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_membre` (
  `id_typemembre` int(11) NOT NULL AUTO_INCREMENT,
  `type_membre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_typemembre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_membre`
--

LOCK TABLES `type_membre` WRITE;
/*!40000 ALTER TABLE `type_membre` DISABLE KEYS */;
INSERT INTO `type_membre` VALUES (1,'utilisateur'),(2,'redacteur'),(3,'administrateur'),(4,'super-adminstrateur');
/*!40000 ALTER TABLE `type_membre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usager`
--

DROP TABLE IF EXISTS `usager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usager` (
  `id_usager` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `id_commune` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `composteur` int(11) NOT NULL COMMENT '1 oui \n2 non',
  `couleur_lombri` varchar(45) DEFAULT NULL,
  `date_inscription` datetime NOT NULL,
  `ip_adresse` varchar(45) NOT NULL,
  `presence_reunion` int(11) NOT NULL COMMENT '0 non\n1 oui',
  `composteur_donne` int(11) NOT NULL COMMENT '0 non\n1 oui',
  `date_reunion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_usager`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usager`
--

LOCK TABLES `usager` WRITE;
/*!40000 ALTER TABLE `usager` DISABLE KEYS */;
INSERT INTO `usager` VALUES (57,'lolo','sdfgsdfgsdfdsf','dfgdsfgsdfg',5,'romain_taldu@hotmail.com','06 07 27 84 40',1,'','2016-09-29 10:29:08','172.17.161.100',1,1,'22/10/2016'),(58,'tretzertzert','erztzertzert','zertzertzertzert',11,'rtertzerter@dfgsdfgsdfg','06 07 27 84 40',1,'','2016-09-30 09:26:47','172.17.161.100',0,0,'28/10/2016'),(63,'fsdg','sdfgsdfg','dfgsdfgdsgdsfg',5,'r.taldu@ville-pau.fr','605339404',1,'','2016-10-17 11:41:55','172.17.161.100',0,0,'28/10/2016'),(64,'fsdg','sdfgsdfg','dfgsdfgdsgdsfg',5,'r.taldu@ville-pau.fr','605339404',1,'','2016-10-17 11:42:23','172.17.161.100',0,0,'28/10/2016'),(69,'TALDU','Romain','2 lotissement les pyrénées',21,'romain_taldu@hotmail.com','0605339404',1,NULL,'2017-02-02 15:21:16','172.17.161.93',0,0,'04/01/2017'),(71,'TALDU2','Romain2','2 lotissement les pyrénées',21,'r.taldu@ville-pau.fr','0605339404',1,NULL,'2017-02-02 15:24:21','172.17.161.93',0,0,'04/01/2017'),(72,'TALDU','Romain','2 lotissement les pyrénées',21,'romain_taldu@hotmail.com','0605339404',1,'beige','2017-02-02 15:24:59','172.17.161.93',1,1,'02/12/2016'),(73,'TALDU','Romain','2 lotissement les pyrénées',21,'r.taldu@agglo-pau.fr','0605339404',1,NULL,'2017-02-02 16:46:08','172.17.161.93',0,0,'04/01/2017'),(74,'TALDU','Romain','2 lotissement les pyrénées',21,'romain_taldu@hotmail.com','605339404',1,'noir','2017-03-09 14:05:18','172.17.161.93',0,0,'31/03/2017'),(75,'TALDU','Romain','2 lotissement les pyrénées',21,'romain_taldu@hotmail.com','605339404',1,'beige','2017-03-09 14:14:08','172.17.161.93',0,0,'30/03/2017'),(76,'TALDU','Romain','2 lotissement les pyrénées',21,'romain_taldu@hotmail.com','605339404',1,'','2017-03-09 14:14:38','172.17.161.93',0,0,'31/03/2017'),(78,'toto','fsdfg','dfghdfghdf',24,'fdgsdfgsd@fgsdfgsdf','dsfgsdf',1,NULL,'2017-03-09 14:43:45','172.17.161.93',1,1,'31/03/2017');
/*!40000 ALTER TABLE `usager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-14 15:36:07
