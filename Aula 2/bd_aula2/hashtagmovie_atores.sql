-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: hashtagmovie
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `atores`
--

DROP TABLE IF EXISTS `atores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atores` (
  `id_ator` int DEFAULT NULL,
  `nome_ator` text,
  `ano_nascimento` int DEFAULT NULL,
  `nacionalidade` text,
  `sexo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atores`
--

LOCK TABLES `atores` WRITE;
/*!40000 ALTER TABLE `atores` DISABLE KEYS */;
INSERT INTO `atores` VALUES (1,'Abbie Cornish',1982,'Austrália','feminino'),(2,'Adam Sandler',1966,'EUA','masculino'),(3,'Al Pacino',1940,'EUA','masculino'),(4,'Amy Adams',1974,'EUA','feminino'),(5,'Andrea Riseborough',1981,'Reino Unido','feminino'),(6,'Anjelica Huston',1951,'EUA','feminino'),(7,'Annasophia Robb',1993,'EUA','feminino'),(8,'Anne Hathaway',1982,'EUA','feminino'),(9,'Anthony Hopkins',1937,'Reino Unido','masculino'),(10,'Barkhad Abdi',1985,'Somália','masculino'),(11,'Barry Pepper',1970,'Canadá','masculino'),(12,'Benicio Del Toro',1967,'Porto Rico','masculino'),(13,'Bette Midler',1945,'EUA','feminino'),(14,'Bill Nighy',1949,'Reino Unido','masculino'),(15,'Bridget Moynahan',1971,'EUA','feminino'),(16,'Bruce Dern',1936,'EUA','masculino'),(17,'Bruce McGill',1950,'EUA','masculino'),(18,'Bryce Dallas Howard',1981,'EUA','feminino'),(19,'Carice van Houten',1976,'Holanda','feminino'),(20,'Cate Blanchett',1969,'Austrália','feminino'),(21,'Catherine Keener',1959,'EUA','feminino'),(22,'Channing Tatum',1980,'EUA','masculino'),(23,'Charlize Theron',1975,'África do Sul','feminino'),(24,'Chris Cooper',1951,'EUA','masculino'),(25,'Christian Bale',1974,'Reino Unido','masculino'),(26,'Christina Ricci',1980,'EUA','feminino'),(27,'Christoph Waltz',1956,'Áustria','masculino'),(28,'Ciaran Hinds',1953,'Irlanda do Norte','masculino'),(29,'Colin Farrell',1976,'Irlanda','masculino'),(30,'Colin Firth',1960,'Reino Unido','masculino'),(31,'Daniel Craig',1968,'Reino Unido','masculino'),(32,'Daniel Radcliffe',1989,'Reino Unido','masculino'),(33,'Denzel Washington',1954,'EUA','masculino'),(34,'Diane Keaton',1946,'EUA','feminino'),(35,'Donald Sutherland',1935,'Canadá','masculino'),(36,'Eddie Murphy',1961,'EUA','masculino'),(37,'Eddie Redmayne',1982,'Reino Unido','masculino'),(38,'Ed Harris',1950,'EUA','masculino'),(39,'Edward Norton',1969,'EUA','masculino'),(40,'Elijah Wood',1981,'EUA','masculino'),(41,'Emma Stone',1988,'EUA','feminino'),(42,'Emma Watson',1990,'Reino Unido','feminino'),(43,'Ethan Hawke',1970,'EUA','masculino'),(44,'Fernando Tielve',1986,'Espanha','masculino'),(45,'Frances McDormand',1957,'EUA','feminino'),(46,'Freddie Highmore',1992,'Reino Unido','masculino'),(47,'Gene Hackman',1930,'EUA','masculino'),(48,'Geoffrey Rush',1951,'Austrália','masculino'),(49,'George Clooney',1961,'EUA','masculino'),(50,'Gwyneth Paltrow',1972,'EUA','feminino'),(51,'Haley Joel Osment',1988,'EUA','masculino'),(52,'Halle Berry',1966,'EUA','feminino'),(53,'Harrison Ford',1942,'EUA','masculino'),(54,'Heath Ledger',1979,'Austrália','masculino'),(55,'Hector Bordoni',1965,'Argentina','masculino'),(56,'Helen Hunt',1963,'EUA','feminino'),(57,'Helen Mirren',1945,'Reino Unido','feminino'),(58,'Hugh Grant',1960,'Reino Unido','masculino'),(59,'Hugh Jackman',1968,'Austrália','masculino'),(60,'Hugo Weaving',1960,'Austrália','masculino'),(61,'Ian McKellen',1939,'Reino Unido','masculino'),(62,'Irene Escolar',1988,'Espanha','feminino'),(63,'Jack Nicholson',1937,'EUA','masculino'),(64,'Jamie Foxx',1967,'EUA','masculino'),(65,'Javier Bardem',1969,'Espanha','masculino'),(66,'Jennifer Garner',1972,'EUA','feminino'),(67,'Jennifer Lawrence',1990,'EUA','feminino'),(68,'Jennifer Lopez',1969,'EUA','feminino'),(69,'Jeremy Northam',1961,'Reino Unido','masculino'),(70,'Jesse Eisenberg',1983,'EUA','masculino'),(71,'Jim Broadbent',1949,'Reino Unido','masculino'),(72,'John Cusack',1966,'EUA','masculino'),(73,'John Hawkes',1959,'EUA','masculino'),(74,'John Malkovich',1953,'EUA','masculino'),(75,'John Travolta',1954,'EUA','masculino'),(76,'Josh Brolin',1968,'EUA','masculino'),(77,'Josh Hutcherson',1992,'EUA','masculino'),(78,'Julie Christie',1940,'Reino Unido','feminino'),(79,'Kate Hudson',1979,'EUA','feminino'),(80,'Katie Holmes',1978,'EUA','feminino'),(81,'Keanu Reeves',1964,'Canadá','masculino'),(82,'Kerry Washington',1977,'EUA','feminino'),(83,'Kevin Breznahan',1968,'EUA','masculino'),(84,'Kristen Bell',1980,'EUA','feminino'),(85,'Leonardo DiCaprio',1974,'EUA','masculino'),(86,'Liam Hemsworth',1990,'Austrália','masculino'),(87,'Liam Neeson',1952,'Irlanda do Norte','masculino'),(88,'Lisa Kudrow',1963,'EUA','feminino'),(89,'Liv Tyler',1977,'EUA','feminino'),(90,'Maggie Gyllenhaal',1977,'EUA','feminino'),(91,'Marcia Gay Harden',1959,'EUA','feminino'),(92,'Marisa Tomei',1964,'EUA','feminino'),(93,'Mark Wahlberg',1971,'EUA','masculino'),(94,'Maryam Karimi',1980,'Afeganistão','feminino'),(95,'Matt Dillon',1964,'EUA','masculino'),(96,'Matthew McConaughey',1969,'EUA','masculino'),(97,'Mel Gibson',1956,'EUA','masculino'),(98,'Michael Caine',1933,'Reino Unido','masculino'),(99,'Michael Pena',1976,'EUA','masculino'),(100,'Mohamad Dolati',1989,'Bahrein','masculino'),(101,'Naomi Watts',1968,'Reino Unido','feminino'),(102,'Natalie Portman',1981,'Israel','feminino'),(103,'Natasha Richardson',1963,'Reino Unido','feminino'),(104,'Nick Stahl',1979,'EUA','masculino'),(105,'Nicolas Cage',1964,'EUA','masculino'),(106,'Nicole Kidman',1967,'Austrália','feminino'),(107,'Patrick Swayze',1952,'EUA','masculino'),(108,'Patrick Wilson',1973,'EUA','masculino'),(109,'Patton Oswalt',1969,'EUA','masculino'),(110,'Paul Reiser',1956,'EUA','masculino'),(111,'Philip Seymour Hoffman',1967,'EUA','masculino'),(112,'Rachel McAdams',1978,'Canadá','feminino'),(113,'Rachel Roberts',1927,'Reino Unido','feminino'),(114,'Ray Romano',1957,'EUA','masculino'),(115,'Regina King',1971,'EUA','feminino'),(116,'Renee Zellweger',1969,'EUA','feminino'),(117,'Rene Russo',1954,'EUA','feminino'),(118,'Richard Gere',1949,'EUA','masculino'),(119,'Robert De Niro',1943,'EUA','masculino'),(120,'Robert Duvall',1931,'EUA','masculino'),(121,'Robert Redford',1936,'EUA','masculino'),(122,'Robin Williams',1951,'EUA','masculino'),(123,'Rupert Grint',1988,'Reino Unido','masculino'),(124,'Sam Riley',1980,'Reino Unido','masculino'),(125,'Sandra Bullock',1964,'EUA','feminino'),(126,'Sarah Jessica Parker',1965,'EUA','feminino'),(127,'Scarlett Johansson',1984,'EUA','feminino'),(128,'Scott Cohen',1961,'EUA','masculino'),(129,'Scott Glenn',1939,'EUA','masculino'),(130,'Sean Bean',1959,'Reino Unido','masculino'),(131,'Sean Penn',1960,'EUA','masculino'),(132,'Shia LaBeouf',1986,'EUA','masculino'),(133,'Shohreh Aghdashloo',1952,'Irã','feminino'),(134,'Stephen Rea',1946,'Irlanda','masculino'),(135,'Susan Sarandon',1946,'EUA','feminino'),(136,'Tom Hanks',1956,'EUA','masculino'),(137,'Tommy Lee Jones',1946,'EUA','masculino'),(138,'Tom Wilkinson',1948,'Reino Unido','masculino'),(139,'Vanessa Hudgens',1988,'EUA','feminino'),(140,'Viggo Mortensen',1958,'EUA','masculino'),(141,'Viola Davis',1965,'EUA','feminino'),(142,'Violante Placido',1976,'Itália','feminino'),(143,'will.i.am',1975,'EUA','masculino'),(144,'William H. Macy',1950,'EUA','masculino'),(145,'Zooey Deschanel',1980,'EUA','feminino');
/*!40000 ALTER TABLE `atores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-01 10:45:57
