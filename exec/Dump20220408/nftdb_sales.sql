-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: j6d107.p.ssafy.io    Database: nftdb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_contract_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `completed_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `sale_yn` bit(1) DEFAULT NULL,
  `buyer_address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token_id` bigint NOT NULL,
  `seller_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sale_contract_address`),
  KEY `FKifjv4pfo6ibfpg3deu52gqevj` (`buyer_address`),
  KEY `FKfmhrkedihel43rjyyfsxxeu6a` (`token_id`),
  KEY `FK4ih3s6pmijt3nqvqydlwki7sc` (`seller_address`),
  CONSTRAINT `FK4ih3s6pmijt3nqvqydlwki7sc` FOREIGN KEY (`seller_address`) REFERENCES `user` (`address`),
  CONSTRAINT `FKfmhrkedihel43rjyyfsxxeu6a` FOREIGN KEY (`token_id`) REFERENCES `items` (`token_id`),
  CONSTRAINT `FKifjv4pfo6ibfpg3deu52gqevj` FOREIGN KEY (`buyer_address`) REFERENCES `user` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('0x0BDC1bE854eA2a58AB2788bf3EaEA9C822218330','2022-04-08 11:02:42.608487','2022-04-08 10:47:08.822106',_binary '','0x39410f7d3ca6f9f880ddbcd5337416d0ec343923',83,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x0c291F94EC60f6051C426c90064d5EeB02ea2F7e','2022-04-07 22:57:08.025177','2022-04-07 22:39:01.626148',_binary '','0x39410f7d3ca6f9f880ddbcd5337416d0ec343923',12,'0x76d7d3176ea7d79490576d2a8714d76d8cb69349'),('0x0Cc227C9d078f29Aa00dA31a609be7F23550055D',NULL,'2022-04-07 22:06:41.377646',_binary '\0',NULL,2,'0xe5460b34dea49d2b3abc8ac9c765517047310bca'),('0x138a8016A4187aF65eFB40a5fc690194bEFDF56a',NULL,'2022-04-08 10:43:06.745627',_binary '\0',NULL,72,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x179a2966DF14D521fBf34C885c4E145E3d348fCa',NULL,'2022-04-07 22:39:00.289927',_binary '\0',NULL,13,'0x76d7d3176ea7d79490576d2a8714d76d8cb69349'),('0x28feeC1a4B1080676B516F45c1eB0E763c67E950','2022-04-08 11:02:43.378645','2022-04-08 10:41:22.475993',_binary '','0xe5460b34dea49d2b3abc8ac9c765517047310bca',71,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x3C50C9bE5893375B0bb60C63e966A3D88520a519',NULL,'2022-04-08 10:44:47.628829',_binary '\0',NULL,74,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x4a14D444F6b2Ed2f395A296FDc7E033ad75D3114',NULL,'2022-04-08 10:52:42.451642',_binary '\0',NULL,88,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x4F2201C89debeDcE27b388d18cA7C46Fad18e346',NULL,'2022-04-08 10:48:05.148183',_binary '\0',NULL,84,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x57195c08B5C22eb095290a768ee21d772FC4674d','2022-04-08 10:00:20.593718','2022-04-08 04:51:21.420289',_binary '','0xe5460b34dea49d2b3abc8ac9c765517047310bca',20,'0xd124774f98f7fccab9d733b7fd8f0edc9660cd61'),('0x62A96E3D68589DaC453023045e7cDa6cE6F5284B',NULL,'2022-04-08 10:05:45.922851',_binary '\0',NULL,42,'0x20f997f732fd72c92f9fb0906a6e85f05d307c8e'),('0x6a28F3dAED6DeFFF9947831DFB5c7aAE0D294CF0','2022-04-08 04:48:19.384024','2022-04-07 22:39:22.478513',_binary '','0xd124774f98f7fccab9d733b7fd8f0edc9660cd61',15,'0x76d7d3176ea7d79490576d2a8714d76d8cb69349'),('0x6b763f99402e33954d72C12c3E2d0AE56fa6cf43',NULL,'2022-04-08 10:22:14.398654',_binary '\0',NULL,58,'0x39410f7d3ca6f9f880ddbcd5337416d0ec343923'),('0x6D9BF3840b896A8B729D3750BDaF30DA1D6347Ad',NULL,'2022-04-08 10:49:31.200463',_binary '\0',NULL,85,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x7438dcc20D5f8706081Ffc59B60037022717F8eF',NULL,'2022-04-08 10:33:26.895061',_binary '\0',NULL,63,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x75037f83618006a233260822278973f897B67126',NULL,'2022-04-08 10:46:41.237302',_binary '\0',NULL,82,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x7710C300e599B961526cb3533FC4e2D3979fFa64',NULL,'2022-04-08 10:51:32.427827',_binary '\0',NULL,87,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x81acb486dd25e9c8D20cd68f214814250845EC0B',NULL,'2022-04-08 10:50:32.878546',_binary '\0',NULL,86,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x91938a4572B066c980DB5Ae65a5ac5C7bA7fb65D',NULL,'2022-04-08 10:33:59.918726',_binary '\0',NULL,64,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x93FBeA32D4800a99BA0A872eEa6234bA33BE50cb',NULL,'2022-04-08 10:46:09.851836',_binary '\0',NULL,81,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x990fD9d5d8f0c308fE8486f825BE5411d5B2AAAA','2022-04-07 22:07:38.278066','2022-04-07 21:41:02.789818',_binary '','0xe5460b34dea49d2b3abc8ac9c765517047310bca',0,'0xd124774f98f7fccab9d733b7fd8f0edc9660cd61'),('0x9aD0CE733D6818BDa7107a77bC1b243E20883191',NULL,'2022-04-08 10:36:53.705827',_binary '\0',NULL,66,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x9e52C873110941cD6a2B8E6eE41CAb4DBDb060d7',NULL,'2022-04-08 10:32:20.062978',_binary '\0',NULL,62,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0x9eB256DF80567B4290c91c5343FDfa09F655ACf8',NULL,'2022-04-08 10:04:08.889269',_binary '\0',NULL,8,'0x39410f7d3ca6f9f880ddbcd5337416d0ec343923'),('0xA2FC032B99C718a4c6bDf7ADeCeC0e1b761D674F','2022-04-07 22:45:21.220076','2022-04-07 22:39:01.565087',_binary '','0xe5460b34dea49d2b3abc8ac9c765517047310bca',14,'0x76d7d3176ea7d79490576d2a8714d76d8cb69349'),('0xA63A631AAaafd79Df8608898908675926fCDbb22',NULL,'2022-04-07 22:39:37.847694',_binary '\0',NULL,16,'0x76d7d3176ea7d79490576d2a8714d76d8cb69349'),('0xbeDA7B553AbD67bdbbf22852a3D2B20FA9894455',NULL,'2022-04-07 22:43:45.017660',_binary '\0',NULL,18,'0x76d7d3176ea7d79490576d2a8714d76d8cb69349'),('0xc0Fd0E542FD576aff34492Ffe20e6829eCdFa0A4',NULL,'2022-04-08 10:45:24.313243',_binary '\0',NULL,79,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0xc7712c267F0666613Be5434071F73a5568Ac4792',NULL,'2022-04-07 21:41:58.583108',_binary '\0',NULL,1,'0xe5460b34dea49d2b3abc8ac9c765517047310bca'),('0xce39aba462e7CcC9062A40183e372653012D0aE5',NULL,'2022-04-08 10:37:43.876050',_binary '\0',NULL,67,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0xd7E648B6b95004c97be90Ec3A9A3DdFc49C42769',NULL,'2022-04-08 10:11:30.334296',_binary '\0',NULL,53,'0x20f997f732fd72c92f9fb0906a6e85f05d307c8e'),('0xDf1E1C6F296f22B3356244292d5d288d0c0DE03F',NULL,'2022-04-07 22:43:10.325883',_binary '\0',NULL,17,'0x76d7d3176ea7d79490576d2a8714d76d8cb69349'),('0xe3aB8a717Fe9777AD8036187e29396FBDc0ac5ae',NULL,'2022-04-08 10:43:58.990814',_binary '\0',NULL,73,'0xdf791410c4f64f20ca01025a73d2a0115353f360'),('0xEB18C650E37d3722F6e0d972D6514cd97f2C7b07','2022-04-08 10:03:37.487274','2022-04-08 10:02:24.348643',_binary '','0xe5460b34dea49d2b3abc8ac9c765517047310bca',6,'0x39410f7d3ca6f9f880ddbcd5337416d0ec343923'),('0xFe05C395F938154a3c3d4294F09d36a3Bb087c7E','2022-04-08 11:01:18.554955','2022-04-08 10:03:32.953665',_binary '','0xdf791410c4f64f20ca01025a73d2a0115353f360',7,'0x39410f7d3ca6f9f880ddbcd5337416d0ec343923'),('0xfE92eFed70d6DC199aee310a362DfdD1dB23f603',NULL,'2022-04-08 10:36:02.834323',_binary '\0',NULL,65,'0xdf791410c4f64f20ca01025a73d2a0115353f360');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-08 11:22:36