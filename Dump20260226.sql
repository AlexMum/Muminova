-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: avto_salon
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `авто`
--

DROP TABLE IF EXISTS `авто`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `авто` (
  `id_авто` int NOT NULL AUTO_INCREMENT,
  `id_марки` int NOT NULL,
  `название_модели` varchar(30) NOT NULL,
  `вес` decimal(6,2) NOT NULL,
  `мощность_двигателя` int NOT NULL,
  `количество_ведущих_осей` int NOT NULL,
  `год_выпуска` int NOT NULL,
  `id_схемы` int NOT NULL,
  `стоимость` decimal(20,2) NOT NULL,
  `id_завода` int NOT NULL,
  PRIMARY KEY (`id_авто`),
  KEY `id_схемы` (`id_схемы`),
  KEY `id_завода` (`id_завода`),
  KEY `id_марки` (`id_марки`),
  CONSTRAINT `авто_ibfk_1` FOREIGN KEY (`id_схемы`) REFERENCES `компоновочная_схема` (`id_схемы`),
  CONSTRAINT `авто_ibfk_2` FOREIGN KEY (`id_завода`) REFERENCES `заводы` (`id_завода`),
  CONSTRAINT `авто_ibfk_3` FOREIGN KEY (`id_марки`) REFERENCES `марка` (`id_марки`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `авто`
--

LOCK TABLES `авто` WRITE;
/*!40000 ALTER TABLE `авто` DISABLE KEYS */;
INSERT INTO `авто` VALUES (1,1,'Camry',1550.00,249,2,2023,1,2921625.00,1),(2,1,'RAV4',1680.00,203,4,2023,4,3142125.00,1),(3,2,'Golf',1350.00,150,2,2023,2,1950000.00,2),(4,2,'Tiguan',1650.00,180,4,2023,4,2450000.00,2),(5,3,'Solaris',1150.00,123,2,2023,1,2850000.00,3),(6,3,'Creta',1350.00,149,2,2023,4,1750000.00,3),(7,4,'Focus',1380.00,150,2,2023,2,1600000.00,4),(8,4,'Explorer',2100.00,300,4,2023,4,4500000.00,4),(9,5,'X5',2150.00,340,4,2023,4,6500000.00,5),(10,5,'3 Series',1550.00,184,2,2023,1,3800000.00,5),(11,6,'E-Class',1800.00,299,2,2023,1,5200000.00,6),(12,6,'GLC',1850.00,258,4,2023,4,4800000.00,6),(13,7,'Logan',1150.00,90,2,2023,1,950000.00,7),(14,7,'Duster',1350.00,150,2,2023,4,1450000.00,7),(15,8,'A6',1750.00,340,4,2023,1,5500000.00,8),(16,8,'Q7',2200.00,340,4,2023,4,6200000.00,8),(17,9,'Model 3',1750.00,283,2,2023,1,4200000.00,9),(18,9,'Model Y',2000.00,384,4,2023,4,5200000.00,9),(19,10,'Accord',1520.00,192,2,2023,1,2500000.00,10),(20,10,'CR-V',1650.00,190,4,2023,4,2800000.00,10),(21,1,'Corolla',1330.00,122,2,2023,1,2039625.00,1),(22,2,'Passat',1540.00,190,2,2023,1,2250000.00,2),(23,5,'X3',1850.00,249,4,2023,4,4800000.00,5),(24,6,'S-Class',2200.00,435,2,2023,1,8500000.00,6);
/*!40000 ALTER TABLE `авто` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `авто_по_маркам`
--

DROP TABLE IF EXISTS `авто_по_маркам`;
/*!50001 DROP VIEW IF EXISTS `авто_по_маркам`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `авто_по_маркам` AS SELECT 
 1 AS `название_марки`,
 1 AS `количество`,
 1 AS `средняя_цена`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `все_продажи`
--

DROP TABLE IF EXISTS `все_продажи`;
/*!50001 DROP VIEW IF EXISTS `все_продажи`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `все_продажи` AS SELECT 
 1 AS `id_продажи`,
 1 AS `дата_продажи`,
 1 AS `стоимость_продажи`,
 1 AS `способ_оплаты`,
 1 AS `фамилия_клиента`,
 1 AS `имя_клиента`,
 1 AS `номер_телефона_клиента`,
 1 AS `название_модели`,
 1 AS `название_марки`,
 1 AS `год_выпуска`,
 1 AS `фамилия_сотрудника`,
 1 AS `должность`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `заводы`
--

DROP TABLE IF EXISTS `заводы`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `заводы` (
  `id_завода` int NOT NULL AUTO_INCREMENT,
  `название_завода` varchar(30) NOT NULL,
  `факс` varchar(20) NOT NULL,
  `страна` varchar(30) NOT NULL,
  PRIMARY KEY (`id_завода`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `заводы`
--

LOCK TABLES `заводы` WRITE;
/*!40000 ALTER TABLE `заводы` DISABLE KEYS */;
INSERT INTO `заводы` VALUES (1,'Toyota Motor Corporation','+81-565-23-4567','Япония'),(2,'Volkswagen AG','+49-5361-987654','Германия'),(3,'Hyundai Motor Company','+82-2-3464-1111','Южная Корея'),(4,'Ford Motor Company','+1-313-322-3000','США'),(5,'BMW AG','+49-89-382-0','Германия'),(6,'Mercedes-Benz AG','+49-711-170','Германия'),(7,'Renault S.A.','+33-1-76-84-12-34','Франция'),(8,'Audi AG','+49-841-89-0','Германия'),(9,'Tesla, Inc.','+1-650-681-5000','США'),(10,'Honda Motor Co., Ltd.','+81-3-3423-1111','Япония');
/*!40000 ALTER TABLE `заводы` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `клиенты`
--

DROP TABLE IF EXISTS `клиенты`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `клиенты` (
  `id_клиента` int NOT NULL AUTO_INCREMENT,
  `фамилия` varchar(50) NOT NULL,
  `имя` varchar(50) NOT NULL,
  `отчество` varchar(50) DEFAULT NULL,
  `дата_рождения` date DEFAULT NULL,
  `номер_телефона` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `паспортные_данные` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_клиента`),
  UNIQUE KEY `номер_телефона` (`номер_телефона`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `паспортные_данные` (`паспортные_данные`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `клиенты`
--

LOCK TABLES `клиенты` WRITE;
/*!40000 ALTER TABLE `клиенты` DISABLE KEYS */;
INSERT INTO `клиенты` VALUES (1,'Иванов','Иван','Иванович',NULL,'+79999999999','ivanov@mail.ru','4510123456'),(2,'Петрова','Мария','Сергеевна',NULL,'+79162345678','petrova@mail.ru','4520234567'),(3,'Сидоров','Алексей','Владимирович',NULL,'+79163456789','sidorov@mail.ru','4530345678'),(4,'Козлова','Елена','Анатольевна',NULL,'+79164567890','kozlova@mail.ru','4540456789'),(5,'Васильев','Дмитрий','Петрович',NULL,'+79165678901','vasilev@mail.ru','4550567890');
/*!40000 ALTER TABLE `клиенты` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `компоновочная_схема`
--

DROP TABLE IF EXISTS `компоновочная_схема`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `компоновочная_схема` (
  `id_схемы` int NOT NULL AUTO_INCREMENT,
  `название_схемы` varchar(30) NOT NULL,
  PRIMARY KEY (`id_схемы`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `компоновочная_схема`
--

LOCK TABLES `компоновочная_схема` WRITE;
/*!40000 ALTER TABLE `компоновочная_схема` DISABLE KEYS */;
INSERT INTO `компоновочная_схема` VALUES (1,'Седан'),(2,'Хетчбек'),(3,'Универсал'),(4,'Внедорожник'),(5,'Купе'),(6,'Кабриолет'),(7,'Минивэн'),(8,'Пикап');
/*!40000 ALTER TABLE `компоновочная_схема` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `марка`
--

DROP TABLE IF EXISTS `марка`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `марка` (
  `id_марки` int NOT NULL AUTO_INCREMENT,
  `название_марки` varchar(30) NOT NULL,
  `средняя_стоимость` decimal(20,2) NOT NULL,
  PRIMARY KEY (`id_марки`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `марка`
--

LOCK TABLES `марка` WRITE;
/*!40000 ALTER TABLE `марка` DISABLE KEYS */;
INSERT INTO `марка` VALUES (1,'Toyota',2500000.00),(2,'Volkswagen',2200000.00),(3,'Hyundai',1800000.00),(4,'Ford',2100000.00),(5,'BMW',4500000.00),(6,'Mercedes-Benz',5000000.00),(7,'Renault',1500000.00),(8,'Audi',4200000.00),(9,'Tesla',6000000.00),(10,'Honda',2300000.00);
/*!40000 ALTER TABLE `марка` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `продажи`
--

DROP TABLE IF EXISTS `продажи`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `продажи` (
  `id_продажи` int NOT NULL AUTO_INCREMENT,
  `id_авто` int NOT NULL,
  `id_клиента` int NOT NULL,
  `id_сотрудника` int NOT NULL,
  `дата_продажи` datetime DEFAULT CURRENT_TIMESTAMP,
  `стоимость_продажи` decimal(10,2) NOT NULL,
  `способ_оплаты` varchar(30) DEFAULT NULL,
  `статус_продажи` varchar(20) DEFAULT 'завершена',
  `номер_договора` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_продажи`),
  UNIQUE KEY `номер_договора` (`номер_договора`),
  KEY `id_авто` (`id_авто`),
  KEY `id_клиента` (`id_клиента`),
  KEY `id_сотрудника` (`id_сотрудника`),
  CONSTRAINT `продажи_ibfk_1` FOREIGN KEY (`id_авто`) REFERENCES `авто` (`id_авто`),
  CONSTRAINT `продажи_ibfk_2` FOREIGN KEY (`id_клиента`) REFERENCES `клиенты` (`id_клиента`),
  CONSTRAINT `продажи_ibfk_3` FOREIGN KEY (`id_сотрудника`) REFERENCES `сотрудники` (`id_сотрудника`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `продажи`
--

LOCK TABLES `продажи` WRITE;
/*!40000 ALTER TABLE `продажи` DISABLE KEYS */;
INSERT INTO `продажи` VALUES (1,1,1,1,'2026-01-28 16:11:21',2650000.00,'наличные','завершена','ДГ-2023-001'),(2,3,2,1,'2026-01-28 16:11:21',2850000.00,'кредит','завершена','ДГ-2023-002'),(3,5,3,2,'2026-01-28 16:11:21',1950000.00,'рассрочка','завершена','ДГ-2023-003'),(5,9,5,3,'2026-01-28 16:11:21',1250000.00,'кредит','завершена','ДГ-2023-005'),(6,11,1,2,'2026-01-28 16:11:21',1750000.00,'наличные','завершена','ДГ-2023-006');
/*!40000 ALTER TABLE `продажи` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `продажи_с_полной_информацией`
--

DROP TABLE IF EXISTS `продажи_с_полной_информацией`;
/*!50001 DROP VIEW IF EXISTS `продажи_с_полной_информацией`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `продажи_с_полной_информацией` AS SELECT 
 1 AS `id_продажи`,
 1 AS `дата_продажи`,
 1 AS `стоимость_продажи`,
 1 AS `фамилия_клиента`,
 1 AS `имя_клиента`,
 1 AS `название_модели`,
 1 AS `название_марки`,
 1 AS `фамилия_сотрудника`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `сотрудники`
--

DROP TABLE IF EXISTS `сотрудники`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `сотрудники` (
  `id_сотрудника` int NOT NULL AUTO_INCREMENT,
  `фамилия` varchar(50) NOT NULL,
  `имя` varchar(50) NOT NULL,
  `отчество` varchar(50) DEFAULT NULL,
  `должность` varchar(50) NOT NULL,
  `номер_телефона` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `дата_приема_на_работу` date NOT NULL,
  `оклад` decimal(10,2) DEFAULT NULL,
  `паспортные_данные` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_сотрудника`),
  UNIQUE KEY `номер_телефона` (`номер_телефона`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `паспортные_данные` (`паспортные_данные`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `сотрудники`
--

LOCK TABLES `сотрудники` WRITE;
/*!40000 ALTER TABLE `сотрудники` DISABLE KEYS */;
INSERT INTO `сотрудники` VALUES (1,'Смирнов','Андрей','Валерьевич','Менеджер по продажам','+79166789012',NULL,'2023-01-15',75000.00,NULL),(2,'Кузнецова','Ольга','Игоревна','Старший менеджер','+79167890123',NULL,'2022-03-10',95000.00,NULL),(3,'Попов','Сергей','Александрович','Директор салона','+79168901234',NULL,'2021-05-20',155000.00,NULL),(4,'Федорова','Анна','Дмитриевна','Менеджер по кредитам','+79169012345',NULL,'2023-02-01',80000.00,NULL);
/*!40000 ALTER TABLE `сотрудники` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `статистика_по_маркам`
--

DROP TABLE IF EXISTS `статистика_по_маркам`;
/*!50001 DROP VIEW IF EXISTS `статистика_по_маркам`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `статистика_по_маркам` AS SELECT 
 1 AS `название_марки`,
 1 AS `всего_авто`,
 1 AS `средняя_цена`,
 1 AS `минимальная_цена`,
 1 AS `максимальная_цена`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `авто_по_маркам`
--

/*!50001 DROP VIEW IF EXISTS `авто_по_маркам`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `авто_по_маркам` AS select `m`.`название_марки` AS `название_марки`,count(`a`.`id_авто`) AS `количество`,avg(`a`.`стоимость`) AS `средняя_цена` from (`марка` `m` left join `авто` `a` on((`m`.`id_марки` = `a`.`id_марки`))) group by `m`.`название_марки` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `все_продажи`
--

/*!50001 DROP VIEW IF EXISTS `все_продажи`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `все_продажи` AS select `p`.`id_продажи` AS `id_продажи`,`p`.`дата_продажи` AS `дата_продажи`,`p`.`стоимость_продажи` AS `стоимость_продажи`,`p`.`способ_оплаты` AS `способ_оплаты`,`k`.`фамилия` AS `фамилия_клиента`,`k`.`имя` AS `имя_клиента`,`k`.`номер_телефона` AS `номер_телефона_клиента`,`a`.`название_модели` AS `название_модели`,`m`.`название_марки` AS `название_марки`,`a`.`год_выпуска` AS `год_выпуска`,`s`.`фамилия` AS `фамилия_сотрудника`,`s`.`должность` AS `должность` from ((((`продажи` `p` join `клиенты` `k` on((`p`.`id_клиента` = `k`.`id_клиента`))) join `авто` `a` on((`p`.`id_авто` = `a`.`id_авто`))) join `марка` `m` on((`a`.`id_марки` = `m`.`id_марки`))) join `сотрудники` `s` on((`p`.`id_сотрудника` = `s`.`id_сотрудника`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `продажи_с_полной_информацией`
--

/*!50001 DROP VIEW IF EXISTS `продажи_с_полной_информацией`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `продажи_с_полной_информацией` AS select `p`.`id_продажи` AS `id_продажи`,`p`.`дата_продажи` AS `дата_продажи`,`p`.`стоимость_продажи` AS `стоимость_продажи`,`k`.`фамилия` AS `фамилия_клиента`,`k`.`имя` AS `имя_клиента`,`a`.`название_модели` AS `название_модели`,`m`.`название_марки` AS `название_марки`,`s`.`фамилия` AS `фамилия_сотрудника` from ((((`продажи` `p` join `клиенты` `k` on((`p`.`id_клиента` = `k`.`id_клиента`))) join `авто` `a` on((`p`.`id_авто` = `a`.`id_авто`))) join `марка` `m` on((`a`.`id_марки` = `m`.`id_марки`))) join `сотрудники` `s` on((`p`.`id_сотрудника` = `s`.`id_сотрудника`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `статистика_по_маркам`
--

/*!50001 DROP VIEW IF EXISTS `статистика_по_маркам`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `статистика_по_маркам` AS select `m`.`название_марки` AS `название_марки`,count(`a`.`id_авто`) AS `всего_авто`,avg(`a`.`стоимость`) AS `средняя_цена`,min(`a`.`стоимость`) AS `минимальная_цена`,max(`a`.`стоимость`) AS `максимальная_цена` from (`марка` `m` left join `авто` `a` on((`m`.`id_марки` = `a`.`id_марки`))) group by `m`.`название_марки` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-26 14:05:56
