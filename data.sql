-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: aventura_embalsa
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Dumping data for table `actividadPaquete`
--

LOCK TABLES `actividadPaquete` WRITE;
/*!40000 ALTER TABLE `actividadPaquete` DISABLE KEYS */;
INSERT INTO `actividadPaquete` VALUES (1,1,2,'2018-06-25 23:11:31','2018-06-25 23:11:31'),(2,1,1,'2018-06-25 23:11:31','2018-06-25 23:11:31');
/*!40000 ALTER TABLE `actividadPaquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (1,'1','sdfasdfasdsdfasdfasdsdfasdfasd','<p>sdfasdfasd</p><p>sdfasdfasd</p><p>sdfasdfasd</p><p>sdfasdfasd</p><p>sdfasdfasd</p>','<p>sdfasdfasd</p><p>sdfasdfasd</p><p>sdfasdfasd</p><p>sdfasdfasd</p><p>sdfasdfasd</p><p>sdfasdfasd</p><p>sdfasdfasd</p>','21','21','0',1,1,1,'2018-06-25 20:47:12','2018-06-25 23:35:05'),(2,'1','dfdfghg','<p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p>','<p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p><p>dfdfghg</p>','255','250','15',1,1,1,'2018-06-25 20:54:33','2018-06-25 23:35:05');
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'sdfasdfasd','2018-06-25 20:46:43','2018-06-25 20:46:43');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'actividad_1529948832.jpg',1,'2018-06-25 20:47:12','2018-06-25 20:47:12'),(2,'actividad_1529949273.jpg',2,'2018-06-25 20:54:34','2018-06-25 20:54:34');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `imagesEventos`
--

LOCK TABLES `imagesEventos` WRITE;
/*!40000 ALTER TABLE `imagesEventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagesEventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `informaciones`
--

LOCK TABLES `informaciones` WRITE;
/*!40000 ALTER TABLE `informaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `informaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_04_21_102742_add_proveedores_table',1),(4,'2018_05_07_151815_add_categories_table',1),(5,'2018_05_07_151827_add_actividades_table',1),(6,'2018_05_07_151839_add_images_table',1),(7,'2018_05_07_151847_add_eventos_table',1),(8,'2018_05_07_151902_add_images_eventos',1),(9,'2018_05_07_151915_add_paquetes_table',1),(10,'2018_05_15_221132_add_actividades_for_paquete',1),(11,'2018_05_21_124958_add_information_table',1),(12,'2018_05_28_174433_actividades_post_view',1),(13,'2018_05_28_180512_actividades_by_category',1),(14,'2018_06_18_120810_informacion_post_view',1),(15,'2018_06_18_130142_eventos_post_view',1),(16,'2018_06_25_203938_paquetes_post_view',2),(17,'2018_06_25_210318_actividades_by_paquetes_view',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paquetes`
--

LOCK TABLES `paquetes` WRITE;
/*!40000 ALTER TABLE `paquetes` DISABLE KEYS */;
INSERT INTO `paquetes` VALUES (1,'1','sdgfsdfgsdf','<p>sdgfsdfgsdf</p><p>sdgfsdfgsdf</p><p>sdgfsdfgsdf</p><p>sdgfsdfgsdf</p><p>sdgfsdfgsdf</p><p>sdgfsdfgsdf</p><p>sdgfsdfgsdf</p><p>sdgfsdfgsdf</p><p>sdgfsdfgsdf</p><p>sdgfsdfgsdfsdgfsdfgsdf</p>','134','145','0','2018-06-18','2018-08-08',1,'2018-06-25 23:11:31','2018-06-25 23:39:02');
/*!40000 ALTER TABLE `paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'sdaSDAsdASDASdAadfasdfasf','sdaSDAsdASDASdAadfasdfasfsdaSDAsdASDASdAadfasdfasf','sdaSDAsdASDASdAadfasdfasfsdaSDAsdASDASdAadfasdfasf','sdaSDAsdASDASdAadfasdfasfsdaSDAsdASDASdAadfasdfasf',NULL,'2018-06-25 23:09:01','2018-06-25 23:09:01');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Matias Quevedo','matiasquevedo.sabbath@gmail.com','$2y$10$Yn5WB15aj6cOhWJSELQFHe5jn.gJyabQEHlsNt55pRywKf/K5VR7u','admin',NULL,'2018-06-25 23:07:48','2018-06-25 23:07:48');
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

-- Dump completed on 2018-06-26  8:40:34
