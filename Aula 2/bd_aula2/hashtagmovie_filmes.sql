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
-- Table structure for table `filmes`
--

DROP TABLE IF EXISTS `filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmes` (
  `id_filme` int DEFAULT NULL,
  `titulo` text,
  `genero` text,
  `duracao` int DEFAULT NULL,
  `ano_lancamento` int DEFAULT NULL,
  `preco_aluguel` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES (1,'Que mulher é essa?','Comédia',93,2001,2.09),(2,'A Senha','Drama',99,2001,2.19),(3,'Do que as mulheres gostam','Comédia',127,2001,2.59),(4,'Dia de Treinamento','Drama',122,2001,1.79),(5,'O Senhor dos Anéis: A sociedade do anel','Ficção e Fantasia',178,2001,2.59),(6,'Harry Potter e a Pedra Filosofal','Ficção e Fantasia',152,2001,2.69),(7,'Os Excêntricos Tenenbaums','Comédia',110,2002,1.89),(8,'Seu marido e minha mulher','Comédia',91,2002,2.59),(9,'11 de setembro','Drama',134,2002,2.99),(10,'Simone','Drama',117,2002,2.69),(11,'É hora do show','Comédia',95,2002,1.79),(12,'O Senhor dos Anéis: As duas torres','Ficção e Fantasia',179,2002,2.39),(13,'Harry Potter e a Câmara Secreta','Ficção e Fantasia',161,2002,1.79),(14,'O Novato','Mistério e Suspense',115,2003,1.69),(15,'Alguém tem que ceder','Comédia',128,2003,1.69),(16,'A última noite','Drama',135,2003,1.59),(17,'Revelações','Mistério e Suspense',106,2003,1.99),(18,'Lições Para Toda a Vida','Drama',111,2003,1.69),(19,'21 gramas','Drama',124,2003,2.09),(20,'Simplesmente amor','Comédia',135,2003,2.29),(21,'O Senhor dos Anéis: O retorno do rei','Ficção e Fantasia',200,2003,1.99),(22,'Visões','Arte',107,2004,2.59),(23,'Dança comigo','Drama',106,2004,1.69),(24,'Uma Eleição Muito Atrapalhada','Comédia',110,2004,2.89),(25,'Bridget Jones: No Limite da Razão','Drama',108,2004,2.89),(26,'Ray','Drama',152,2004,2.59),(27,'Monster - Desejo Assassino','Drama',109,2004,2.09),(28,'Harry Potter e o Prisioneiro de Azkabam','Ficção e Fantasia',142,2004,1.69),(29,'Tudo por Dinheiro','Drama',122,2005,2.79),(30,'Capote','Drama',114,2005,2.39),(31,'Harry Potter e o Cálice de Fogo','Ficção e Fantasia',157,2005,2.69),(32,'Falsária','Drama',93,2006,2.89),(33,'V de Vingança','Drama',132,2006,1.59),(34,'Armações do Amor','Drama',97,2006,1.99),(35,'Happy Feet','Animação',108,2006,1.79),(36,'As Torres Gêmeas','Drama',129,2006,1.59),(37,'Candy','Drama',116,2006,1.59),(38,'A casa do lago','Drama',99,2006,2.49),(39,'Não estou lá','Drama',135,2007,1.79),(40,'Quando Me Apaixono','Drama',100,2007,1.99),(41,'O Reino','Drama',110,2007,2.09),(42,'Onde os Fracos Não Têm Vez','Drama',122,2007,1.49),(43,'Invasores','Mistério e Suspense',99,2007,2.09),(44,'Harry Potter e a Ordem da Fênix','Ficção e Fantasia',138,2007,2.49),(45,'Queime Depois de Ler','Drama',96,2008,2.39),(46,'Sleepwalking','Drama',101,2008,1.79),(47,'Um Amor de Tesouro','Ação e Aventura',112,2008,2.69),(48,'Astro Boy','Ação e Aventura',94,2009,2.89),(49,'Harry Potter e o Enigma do Príncipe','Ficção e Fantasia',153,2009,1.59),(50,'Inverno da Alma','Drama',100,2010,2.69),(51,'Uma Manhã Gloriosa','Comédia',107,2010,2.99),(52,'Jogo de Poder','Drama',108,2010,2.89),(53,'O Vencedor','Ação e Aventura',116,2010,2.49),(54,'Harry Potter e as Relíquias da Morte: Parte 1','Ficção e Fantasia',146,2010,2.79),(55,'Mulheres ao Ataque','Drama',102,2011,1.69),(56,'Cada Um Tem a Gêmea Que Merece','Comédia',91,2011,2.09),(57,'Jovens Adultos','Drama',94,2011,1.99),(58,'Histórias Cruzadas','Drama',146,2011,2.49),(59,'Pior dos Pecados','Mistério e Suspense',111,2011,2.39),(60,'Morte Negra','Drama',102,2011,2.69),(61,'Harry Potter e as Relíquias da Morte: Parte 2','Ficção e Fantasia',130,2011,1.99),(62,'As Sessões','Drama',95,2012,2.29),(63,'Django Livre','Ação e Aventura',165,2012,2.69),(64,'A Viagem','Drama',172,2012,2.89),(65,'Motoqueiro Fantasma - Espírito de Vingança','Ação e Aventura',96,2012,1.79),(66,'Jogos Vorazes','Drama',142,2012,1.59),(67,'O Ataque','Drama',131,2013,1.59),(68,'Sem proteção','Mistério e Suspense',125,2013,2.39),(69,'Sangue no Gelo','Mistério e Suspense',105,2013,2.49),(70,'Capitão Phillips','Drama',134,2013,1.59),(71,'Rio 2','Animação',101,2014,1.79);
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-01 10:45:58
