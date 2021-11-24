-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: the_lost_traveller_db
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `comment` text NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (4,1,4,' CALLATE LA BOCA PELAO QUE EL POST ESTA EN BOMBA','2021-11-17 21:12:49'),(5,104,4,' hey kaefece vete pa la chucha yo cuesto 5 palo en combo','2021-11-17 21:12:49'),(6,105,4,' chupalo macdonal eres un perron','2021-11-17 21:12:49'),(7,10,4,' un viejo sabio chino japones llamado confucion que imvento la confucion una vez dijo un provervio que dicta chin chan chun chingat umadre','2021-11-17 21:12:49'),(8,46,4,' aaaaaa todos son unos idiotassss','2021-11-17 21:12:49'),(11,1,8,' que plenota este post esta en bomba','2021-11-17 22:22:45'),(12,55,8,' ihhh estoy totalmente de acuerdo','2021-11-17 22:22:45'),(13,58,7,' heyyyy dejate de cuecadas que el porno esta pritty','2021-11-17 22:22:45'),(14,50,10,' plenota esta tambien','2021-11-17 22:22:45'),(15,46,10,' estoy de acuerdo con el comentarion de arriba','2021-11-17 22:22:45');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images_metadata`
--

DROP TABLE IF EXISTS `images_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images_metadata` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int DEFAULT NULL,
  `image_metadata` text,
  PRIMARY KEY (`image_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `images_metadata_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images_metadata`
--

LOCK TABLES `images_metadata` WRITE;
/*!40000 ALTER TABLE `images_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `images_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `title` (`title`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (4,57,'el porno es bueno','el porno es bueno para el alma y la mente ya que la alimentay adsjnfakalnmandfl','2021-10-28 20:44:42',1),(5,1,'el porno no es bueno','el porno no es bueno mata el alma y la envenena','2021-10-28 20:44:42',1),(6,9,'el porno es intermedio','estos chucha de su madre peleando cuando esa vaina no jode pero tampoco es buena me cago en la puta xdeddxd solo quiero escribir como imbecil xdxdxxdxd','2021-10-28 20:44:42',1),(7,46,'por que hablan tanto de porno chuhca','hey vallanse todos a la verga con su porno de la mierda xdxdxdddd estoy hablando como un loquendo dentro de mi cabeza y xdxdxdddddddd soy el tio de cj','2021-10-28 20:44:42',1),(8,58,'ohhh baby, gravy goes near yo bitch desapear y call that she magic','xxdddddddddxdddhladkjhflajkdnclkdjhalksjdhlfkejanalskdjfhalkxjcnlaksmnel','2021-10-28 20:44:42',0),(9,59,'my heart breaks when you call my phone why dont you just leave me alone','i cant scape you khow my heart is racing no no, you took my place y cant take it back take it back ....','2021-10-28 20:44:42',1),(10,59,'they wanna see you doing bad','one day i fell and i  got up and i told myself i was always gonna kill shit and fom taht day on, i swear to god ive benn winning, ive been winning','2021-10-28 20:44:42',0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replies` (
  `reply_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `comment_id` int DEFAULT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `user_id` (`user_id`),
  KEY `comment_id` (`comment_id`),
  CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES (1,9,15,' que estas de acuerdo maricon chupamedias'),(2,52,11,' plenototaaaaaaa'),(3,104,13,' deja de pajearte y comprate un bigmag'),(4,57,6,' macdonal es mejor loco si o que'),(5,8,6,' ihhhhhhhhhhhhhhhhh');
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(400) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `alias` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `alias_UNIQUE` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Password123#@!','chuchi','dios','chuxi','chuxi@gmail.com',1),(6,'agus0201','agustin','vergara','chuxi01','algs@gmail.com',1),(7,'281029','jose','marquinez','josem28','josem28@hotmail.com',1),(8,'jonathan07','jonathan','vergara','jonny','jonny07@gmail.com',1),(9,'error','bruh','jonny','alias','bruh@hotmail.com',1),(10,'hola','hola01','hola02','hihaoxiao','aldd@gmail.com',1),(46,'ahadegg','adrian','vearga','adrianannn','Adrian.55818851J@random.names',1),(47,'hfasjjj335','pedro','zanchez','pedritokquito','Pedro.78522059J@random.names',1),(48,'fadeatt644','pablo','marquinez','pablotupapi','Pablo.93733268B@random.names',1),(49,'faf3444677','marta','martinez','chuchamequedesinidieas','Marta.55741882W@random.names',1),(50,'fadfvv767','javier','xd','queperezaxd','Javier.54966248C@random.names',1),(51,'agagvvr4777','milagros','caca','afdlkfjahsd','Milagros.90074144A@random.names',1),(52,'facvv4577','carlos','andrez','xdddnsn','Carlos.63291957M@random.names',1),(53,'vavvv47778a','carmen','chucha','carmenesunaputa','Carmen.57408761W@random.names',1),(54,'favvdaa6634','laura','pinga','lauramelapela','Laura.57774589S@random.names',1),(55,'jfhgn666','maria','dolores','maria1155','Maria Dolores.71788005Z@random.names',1),(56,'gdfjdsi888656','maria','dolores','dolordeculo07','Maria Dolores.30948169J@random.names',1),(57,'vsfxc7','jose','maria','josesito','Jose Maria.24963969E@random.names',1),(58,'vfxdr777','carlos','ruiz','carlitos--2','Carlos.94783133H@random.names',1),(59,'bdgfdgdudf','maria','andrea','maricona22','Maria.58935447V@random.names',1),(104,'5palosencombo','ronald','mcdonald','macdonal','macdonal@gmail.com',1),(105,'mcdonaldperron','coronel','sanders','KAEFECE','kfc@kfc.com',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-23 21:52:33
