-- MySQL Database Design created in MySQLWorkbench

-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: en1ehf30yom7txe7.cbetxkdyhwsb.us-east-1.rds.amazonaws.com    Database: io64wq7jxkqkvcbo
-- ------------------------------------------------------
-- Server version	8.0.23

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `ordertotal` varchar(45) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (9,'msmith','54.9'),(10,'msmith','64.9'),(11,'msmith','89.8');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL,
  `product` varchar(45) NOT NULL,
  `size` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'White Floral Dress','S','1','39.95'),(2,'Yellow Sweater','S','2','29.95'),(3,'Yellow Sweater','S','2','29.95'),(4,'Yellow Sweater','S','2','29.95'),(5,'Gray Sweatpants','S','1','19.95'),(6,'White Floral Dress','S','1','39.95'),(7,'Black Leggings','S','1','19.95'),(8,'Cargo Shorts','S','1','24.95'),(9,'Red Skirt','S','1','24.95'),(9,'Yellow Sweater','S','1','29.95'),(10,'Red Floral Dress','XL','1','34.95'),(10,'White Pants','S','1','29.95'),(11,'Striped Shirt','M','3','19.95'),(11,'Red Flannel','L','1','29.95');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productid` int NOT NULL AUTO_INCREMENT,
  `productname` varchar(45) NOT NULL,
  `size` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `description` varchar(200) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `photo` varchar(45) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (4,'Cargo Shorts','S','Men','24.95','Light beige cargo shorts with multiple pockets.','100','cargoShorts.jpeg'),(5,'Cargo Shorts','M','Men','24.95','Light beige cargo shorts with multiple pockets.','100','cargoShorts.jpeg'),(6,'Cargo Shorts','L','Men','24.95','Light beige cargo shorts with multiple pockets.','100','cargoShorts.jpeg'),(7,'Cargo Shorts','XL','Men','24.95','Light beige cargo shorts with multiple pockets.','100','cargoShorts.jpeg'),(8,'Dark Jeans','S','Men','39.95','Dark wash denim jeans in a bootcut.','100','darkJeans.jpeg'),(9,'Dark Jeans','M','Men','39.95','Dark wash denim jeans in a bootcut.','100','darkJeans.jpeg'),(10,'Dark Jeans','L','Men','39.95','Dark wash denim jeans in a bootcut.','100','darkJeans.jpeg'),(11,'Dark Jeans','XL','Men','39.95','Dark wash denim jeans in a bootcut.','100','darkJeans.jpeg'),(12,'Gray Sweatpants','S','Men','19.95','Gray cotton sweatpants with a drawstring waist.','100','graySweats.jpeg'),(13,'Gray Sweatpants','M','Men','19.95','Gray cotton sweatpants with a drawstring waist.','100','graySweats.jpeg'),(14,'Gray Sweatpants','L','Men','19.95','Gray cotton sweatpants with a drawstring waist.','100','graySweats.jpeg'),(15,'Gray Sweatpants','XL','Men','19.95','Gray cotton sweatpants with a drawstring waist.','100','graySweats.jpeg'),(16,'Yellow Trousers','S','Men','39.95','Casual yellow trousers with a snug fit.','100','yellowTrousers.jpeg'),(17,'Yellow Trousers','M','Men','39.95','Casual yellow trousers with a snug fit.','100','yellowTrousers.jpeg'),(18,'Yellow Trousers','L','Men','39.95','Casual yellow trousers with a snug fit.','100','yellowTrousers.jpeg'),(19,'Yellow Trousers','XL','Men','39.95','Casual yellow trousers with a snug fit.','100','yellowTrousers.jpeg'),(20,'Red Flannel','S','Men','29.95','Checkered red and white flannel shirt.','100','redFlannel.jpeg'),(21,'Red Flannel','M','Men','29.95','Checkered red and white flannel shirt.','100','redFlannel.jpeg'),(22,'Red Flannel','L','Men','29.95','Checkered red and white flannel shirt.','100','redFlannel.jpeg'),(23,'Red Flannel','XL','Men','29.95','Checkered red and white flannel shirt.','100','redFlannel.jpeg'),(24,'Black Polo','S','Men','24.95','Casual black collared polo shirt.','100','blackPolo.jpeg'),(25,'Black Polo','M','Men','24.95','Casual black collared polo shirt.','100','blackPolo.jpeg'),(26,'Black Polo','L','Men','24.95','Casual black collared polo shirt.','100','blackPolo.jpeg'),(27,'Black Polo','XL','Men','24.95','Casual black collared polo shirt.','100','blackPolo.jpeg'),(28,'Blue Collared Shirt','S','Men','34.95','Professional collared shirt in a light blue.','100','blueCollared.jpeg'),(29,'Blue Collared Shirt','M','Men','34.95','Professional collared shirt in a light blue.','100','blueCollared.jpeg'),(30,'Blue Collared Shirt','L','Men','34.95','Professional collared shirt in a light blue.','100','blueCollared.jpeg'),(31,'Blue Collared Shirt','XL','Men','34.95','Professional collared shirt in a light blue.','100','blueCollared.jpeg'),(32,'Floral Collared','S','Men','34.95','Professional collared shirt in a floral pattern.','100','floralCollared.jpeg'),(33,'Floral Collared','M','Men','34.95','Professional collared shirt in a floral pattern.','100','floralCollared.jpeg'),(34,'Floral Collared','L','Men','34.95','Professional collared shirt in a floral pattern.','100','floralCollared.jpeg'),(35,'Floral Collared','XL','Men','34.95','Professional collared shirt in a floral pattern.','100','floralCollared.jpeg'),(36,'Black Peacoat','S','Men','59.95','Warm, black peacoat with front pockets.','100','blackPeacoat.jpeg'),(37,'Black Peacoat','M','Men','59.95','Warm, black peacoat with front pockets.','100','blackPeacoat.jpeg'),(38,'Black Peacoat','L','Men','59.95','Warm, black peacoat with front pockets.','100','blackPeacoat.jpeg'),(39,'Black Peacoat','XL','Men','59.95','Warm, black peacoat with front pockets.','100','blackPeacoat.jpeg'),(40,'Leather Jacket','S','Men','49.95','Black leather jacket with short collar.','100','leatherJacket.jpeg'),(41,'Leather Jacket','M','Men','49.95','Black leather jacket with short collar.','100','leatherJacket.jpeg'),(42,'Leather Jacket','L','Men','49.95','Black leather jacket with short collar.','100','leatherJacket.jpeg'),(43,'Leather Jacket','XL','Men','49.95','Black leather jacket with short collar.','100','leatherJacket.jpeg'),(44,'Black Leggings','S','Women','19.95','Black cotton leggings.','100','blackLeggings.jpeg'),(45,'Black Leggings','M','Women','19.95','Black cotton leggings.','100','blackLeggings.jpeg'),(46,'Black Leggings','L','Women','19.95','Black cotton leggings.','100','blackLeggings.jpeg'),(47,'Black Leggings','XL','Women','19.95','Black cotton leggings.','100','blackLeggings.jpeg'),(48,'Jean Shorts','S','Women','24.95','Medium wash denim shorts with worn look.','100','jeanShorts.jpeg'),(49,'Jean Shorts','M','Women','24.95','Medium wash denim shorts with worn look.','100','jeanShorts.jpeg'),(50,'Jean Shorts','L','Women','24.95','Medium wash denim shorts with worn look.','100','jeanShorts.jpeg'),(51,'Jean Shorts','XL','Women','24.95','Medium wash denim shorts with worn look.','100','jeanShorts.jpeg'),(52,'Red Skirt','S','Women','24.95','Red, pleated knee-length skirt.','100','redSkirt.jpeg'),(53,'Red Skirt','M','Women','24.95','Red, pleated knee-length skirt.','100','redSkirt.jpeg'),(54,'Red Skirt','L','Women','24.95','Red, pleated knee-length skirt.','100','redSkirt.jpeg'),(55,'Red Skirt','XL','Women','24.95','Red, pleated knee-length skirt.','100','redSkirt.jpeg'),(56,'White Pants','S','Women','29.95','Casual white linen pants.','100','whitePants.jpeg'),(57,'White Pants','M','Women','29.95','Casual white linen pants.','100','whitePants.jpeg'),(58,'White Pants','L','Women','29.95','Casual white linen pants.','100','whitePants.jpeg'),(59,'White Pants','XL','Women','29.95','Casual white linen pants.','100','whitePants.jpeg'),(60,'White Floral Dress','S','Women','39.95','White floral and lace patterned dress.','100','whiteDress.jpeg'),(61,'White Floral Dress','M','Women','39.95','White floral and lace patterned dress.','100','whiteDress.jpeg'),(62,'White Floral Dress','L','Women','39.95','White floral and lace patterned dress.','100','whiteDress.jpeg'),(63,'White Floral Dress','XL','Women','39.95','White floral and lace patterned dress.','100','whiteDress.jpeg'),(64,'Red Floral Dress','S','Women','34.95','Casual red dress with floral pattern.','100','floralDress.jpeg'),(65,'Red Floral Dress','M','Women','34.95','Casual red dress with floral pattern.','100','floralDress.jpeg'),(66,'Red Floral Dress','L','Women','34.95','Casual red dress with floral pattern.','100','floralDress.jpeg'),(67,'Red Floral Dress','XL','Women','34.95','Casual red dress with floral pattern.','100','floralDress.jpeg'),(68,'Yellow Sweater','S','Women','29.95','Chunky, oversized yellow sweater.','100','yellowSweater.jpeg'),(69,'Yellow Sweater','M','Women','29.95','Chunky, oversized yellow sweater.','100','yellowSweater.jpeg'),(70,'Yellow Sweater','L','Women','29.95','Chunky, oversized yellow sweater.','100','yellowSweater.jpeg'),(71,'Yellow Sweater','XL','Women','29.95','Chunky, oversized yellow sweater.','100','yellowSweater.jpeg'),(72,'Striped Shirt','S','Women','19.95','Simple black and white striped tee.','100','stripedShirt.jpeg'),(73,'Striped Shirt','M','Women','19.95','Simple black and white striped tee.','100','stripedShirt.jpeg'),(74,'Striped Shirt','L','Women','19.95','Simple black and white striped tee.','100','stripedShirt.jpeg'),(75,'Striped Shirt','XL','Women','19.95','Simple black and white striped tee.','100','stripedShirt.jpeg'),(76,'Orange Cardigan','S','Women','24.95','Oversized orange sweater cardigan.','100','orangeCardigan.jpeg'),(77,'Orange Cardigan','M','Women','24.95','Oversized orange sweater cardigan.','100','orangeCardigan.jpeg'),(78,'Orange Cardigan','L','Women','24.95','Oversized orange sweater cardigan.','100','orangeCardigan.jpeg'),(79,'Orange Cardigan','XL','Women','24.95','Oversized orange sweater cardigan.','100','orangeCardigan.jpeg'),(80,'Denim Jacket','S','Women','44.95','Faded, medium wash denim jacket.','100','denimJacket.jpeg'),(81,'Denim Jacket','M','Women','44.95','Faded, medium wash denim jacket.','100','denimJacket.jpeg'),(82,'Denim Jacket','L','Women','44.95','Faded, medium wash denim jacket.','100','denimJacket.jpeg'),(83,'Denim Jacket','XL','Women','44.95','Faded, medium wash denim jacket.','100','denimJacket.jpeg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `zip` int NOT NULL,
  `country` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'msmith','puppy','fake3@gmail.com','Meaghan','Smith','123 Sesame Street',45362,'US');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-17 22:52:23
