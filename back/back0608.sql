-- MySQL dump 10.13  Distrib 8.4.9, for Win64 (x86_64)
--
-- Host: localhost    Database: mbasic
-- ------------------------------------------------------
-- Server version	8.4.9

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
-- Table structure for table `alter_coffee2`
--

DROP TABLE IF EXISTS `alter_coffee2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alter_coffee2` (
  `cno` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cprice` int NOT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alter_coffee2`
--

LOCK TABLES `alter_coffee2` WRITE;
/*!40000 ALTER TABLE `alter_coffee2` DISABLE KEYS */;
/*!40000 ALTER TABLE `alter_coffee2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atest`
--

DROP TABLE IF EXISTS `atest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atest` (
  `num` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atest`
--

LOCK TABLES `atest` WRITE;
/*!40000 ALTER TABLE `atest` DISABLE KEYS */;
INSERT INTO `atest` VALUES (1),(2),(3),(4),(5),(6);
/*!40000 ALTER TABLE `atest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coffee`
--

DROP TABLE IF EXISTS `coffee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coffee` (
  `cno` int NOT NULL,
  `cname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cprice` int NOT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coffee`
--

LOCK TABLES `coffee` WRITE;
/*!40000 ALTER TABLE `coffee` DISABLE KEYS */;
/*!40000 ALTER TABLE `coffee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control`
--

DROP TABLE IF EXISTS `control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `control` (
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control`
--

LOCK TABLES `control` WRITE;
/*!40000 ALTER TABLE `control` DISABLE KEYS */;
INSERT INTO `control` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contron`
--

DROP TABLE IF EXISTS `contron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contron` (
  `no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contron`
--

LOCK TABLES `contron` WRITE;
/*!40000 ALTER TABLE `contron` DISABLE KEYS */;
/*!40000 ALTER TABLE `contron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_userinfo`
--

DROP TABLE IF EXISTS `date_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date_userinfo` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date_userinfo`
--

LOCK TABLES `date_userinfo` WRITE;
/*!40000 ALTER TABLE `date_userinfo` DISABLE KEYS */;
INSERT INTO `date_userinfo` VALUES (1,'aaa',11,'2022-12-30 00:00:00'),(2,'bbb',22,'2022-11-30 00:00:00'),(3,'ccc',33,'2022-10-30 00:00:00'),(4,'ddd',44,'2022-09-30 00:00:00');
/*!40000 ALTER TABLE `date_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delete_emp`
--

DROP TABLE IF EXISTS `delete_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delete_emp` (
  `empno` int NOT NULL AUTO_INCREMENT,
  `ename` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mgr` int DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `sal` int DEFAULT NULL,
  `comm` int DEFAULT NULL,
  `deptmo` int DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB AUTO_INCREMENT=7935 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delete_emp`
--

LOCK TABLES `delete_emp` WRITE;
/*!40000 ALTER TABLE `delete_emp` DISABLE KEYS */;
/*!40000 ALTER TABLE `delete_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `deptno` int NOT NULL AUTO_INCREMENT,
  `dname` varchar(20) NOT NULL,
  `loc` varchar(20) NOT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (10,'ACCOUNTING','NEW YORK'),(20,'RESEARCH','DALLAS'),(30,'SALES','CHICAGO'),(40,'OPERATIONS','BOSTON');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `empno` int NOT NULL AUTO_INCREMENT,
  `ename` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mgr` int DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `sal` int DEFAULT NULL,
  `comm` int DEFAULT NULL,
  `deptno` int DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB AUTO_INCREMENT=7935 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20),(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30),(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30),(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10),(7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20),(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10),(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30),(7876,'ADAMS','CLERK',7788,'1987-05-23',1100,NULL,20),(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30),(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20),(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_select_userinfo`
--

DROP TABLE IF EXISTS `fn_select_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fn_select_userinfo` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_select_userinfo`
--

LOCK TABLES `fn_select_userinfo` WRITE;
/*!40000 ALTER TABLE `fn_select_userinfo` DISABLE KEYS */;
INSERT INTO `fn_select_userinfo` VALUES (1,'aaa',11,'aaa@gmail.com'),(2,'bbb',22,'bbb@gmail.com'),(3,'ccc',33,'ccc@gmail.com'),(4,'ddd',44,'ddd@gmail.com'),(5,'abc',55,'abc@gmail.com'),(6,'bca',66,'bca@gmail.com');
/*!40000 ALTER TABLE `fn_select_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_select_userinfo2`
--

DROP TABLE IF EXISTS `fn_select_userinfo2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fn_select_userinfo2` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `age` int NOT NULL,
  `email` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_select_userinfo2`
--

LOCK TABLES `fn_select_userinfo2` WRITE;
/*!40000 ALTER TABLE `fn_select_userinfo2` DISABLE KEYS */;
INSERT INTO `fn_select_userinfo2` VALUES (1,'aaaaa',11,'aaa@gmail.com'),(2,'bbaab',22,'bbb@gmail.com'),(3,'ccaac',33,'ccc@gmail.com'),(4,'ddddd',44,'ddd@gmail.com'),(5,'abc',55,'abc@gmail.com'),(6,'baaca',66,'bca@gmail.com');
/*!40000 ALTER TABLE `fn_select_userinfo2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_userinfo`
--

DROP TABLE IF EXISTS `group_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_userinfo` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `sex` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kor` int DEFAULT NULL,
  `eng` int DEFAULT NULL,
  `math` int DEFAULT NULL,
  `ban` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sns` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_userinfo`
--

LOCK TABLES `group_userinfo` WRITE;
/*!40000 ALTER TABLE `group_userinfo` DISABLE KEYS */;
INSERT INTO `group_userinfo` VALUES (1,'first',11,NULL,100,100,99,'A','n'),(2,'second',22,'m',89,92,78,'B','y'),(3,'third',33,'m',90,92,97,'A','y'),(4,'fourth',44,'f',40,42,67,'C','n'),(5,'fifth',55,'f',89,86,99,'B','y'),(6,'sixth',66,'m',10,20,44,'C','n');
/*!40000 ALTER TABLE `group_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `if_userinfo`
--

DROP TABLE IF EXISTS `if_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `if_userinfo` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int DEFAULT '0',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sns` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `if_userinfo`
--

LOCK TABLES `if_userinfo` WRITE;
/*!40000 ALTER TABLE `if_userinfo` DISABLE KEYS */;
INSERT INTO `if_userinfo` VALUES (1,'first',11,NULL,'n'),(2,'second',122,'m','y'),(3,'third',33,'m','y'),(4,'fourth',44,'f','n'),(5,'fifth',55,'f','y'),(6,'sixth',66,'m','n');
/*!40000 ALTER TABLE `if_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_userban`
--

DROP TABLE IF EXISTS `join_userban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `join_userban` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ban` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_userban`
--

LOCK TABLES `join_userban` WRITE;
/*!40000 ALTER TABLE `join_userban` DISABLE KEYS */;
INSERT INTO `join_userban` VALUES (1,'first','A'),(2,'second','B'),(3,'third','A'),(4,'fourth','C'),(5,'fifth','B'),(6,'sixth','C');
/*!40000 ALTER TABLE `join_userban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_userinfo`
--

DROP TABLE IF EXISTS `join_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `join_userinfo` (
  `no` int NOT NULL DEFAULT '0',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_userinfo`
--

LOCK TABLES `join_userinfo` WRITE;
/*!40000 ALTER TABLE `join_userinfo` DISABLE KEYS */;
INSERT INTO `join_userinfo` VALUES (1,'first',11),(2,'second',22),(3,'third',33),(4,'fourth',44);
/*!40000 ALTER TABLE `join_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcvboard1`
--

DROP TABLE IF EXISTS `mcvboard1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcvboard1` (
  `bno` int NOT NULL AUTO_INCREMENT,
  `bname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bpass` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `btitle` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bhit` int NOT NULL DEFAULT '0',
  `bip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcvboard1`
--

LOCK TABLES `mcvboard1` WRITE;
/*!40000 ALTER TABLE `mcvboard1` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcvboard1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milk`
--

DROP TABLE IF EXISTS `milk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `milk` (
  `mno` int NOT NULL,
  `mname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mprice` int NOT NULL,
  `mnum` int DEFAULT NULL,
  `mtotal` int DEFAULT NULL,
  PRIMARY KEY (`mno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milk`
--

LOCK TABLES `milk` WRITE;
/*!40000 ALTER TABLE `milk` DISABLE KEYS */;
INSERT INTO `milk` VALUES (1,'white',1500,NULL,NULL),(2,'choco',1800,NULL,NULL),(3,'banana',1800,NULL,NULL);
/*!40000 ALTER TABLE `milk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milk_order`
--

DROP TABLE IF EXISTS `milk_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `milk_order` (
  `ono` int NOT NULL AUTO_INCREMENT,
  `oname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `onum` int NOT NULL,
  `odata` datetime DEFAULT CURRENT_TIMESTAMP,
  `oip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ono`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milk_order`
--

LOCK TABLES `milk_order` WRITE;
/*!40000 ALTER TABLE `milk_order` DISABLE KEYS */;
INSERT INTO `milk_order` VALUES (1,'banana',1,'2026-05-19 18:16:42','198.160.0.1'),(2,'choco',50,'2026-05-19 18:16:43','198.160.0.1'),(3,'white',3,'2026-05-19 18:16:44','198.160.0.1');
/*!40000 ALTER TABLE `milk_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvcboard1`
--

DROP TABLE IF EXISTS `mvcboard1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mvcboard1` (
  `bno` int NOT NULL AUTO_INCREMENT,
  `bname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bpass` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `btitle` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bhit` int NOT NULL DEFAULT '0',
  `bip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvcboard1`
--

LOCK TABLES `mvcboard1` WRITE;
/*!40000 ALTER TABLE `mvcboard1` DISABLE KEYS */;
INSERT INTO `mvcboard1` VALUES (7,'둘리','1111','둘리','둘리','2026-05-26 02:19:28',3,'192.168.40.9'),(8,'마이콜','1111','마이콜','마이콜','2026-05-26 02:19:44',3,'192.168.40.9'),(9,'희동이','1111','희동이','희동이','2026-05-26 02:20:03',1,'192.168.40.9'),(10,'또치','1111','또치','또치','2026-05-26 02:20:54',1,'192.168.40.9'),(11,'도우너','1111','도우너','도우너','2026-05-26 02:21:13',5,'192.168.40.9'),(12,'손오공','1111','son@gmail.com','010-1111-1111','2026-05-29 05:49:26',0,'192.168.40.23'),(13,'손오공','1111','son@gmail.com','010-1111-1111','2026-05-29 06:35:00',1,'192.168.40.23');
/*!40000 ALTER TABLE `mvcboard1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvcboard2`
--

DROP TABLE IF EXISTS `mvcboard2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mvcboard2` (
  `bno` int NOT NULL AUTO_INCREMENT,
  `bname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bpass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btitle` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcontent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bhit` int NOT NULL DEFAULT '0',
  `bip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bfile` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT 'the703.png',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=520 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvcboard2`
--

LOCK TABLES `mvcboard2` WRITE;
/*!40000 ALTER TABLE `mvcboard2` DISABLE KEYS */;
INSERT INTO `mvcboard2` VALUES (2,'first','1111','첫번재 글쓰기','내용','2026-06-04 03:41:48',0,'192.168.40.23','the703.png'),(3,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-05 01:25:14',0,'192.168.40.46','the703.png'),(4,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-05 01:36:44',0,'192.168.40.46','the703.png'),(5,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-05 01:38:17',0,'192.168.40.46','the703.png'),(6,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-05 01:40:39',0,'192.168.40.46','the703.png'),(7,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-05 01:42:14',0,'192.168.40.46','the703.png'),(10,'test','1111','test','test','2026-06-05 02:23:30',0,'192.168.40.46','the703.png'),(11,'test','1111','test','test','2026-06-05 02:23:53',0,'192.168.40.46','the703.png'),(12,'test','1111','test','test','2026-06-05 02:24:12',0,'192.168.40.46','the703.png'),(14,'test111','111','test111','test111','2026-06-05 02:43:09',0,'192.168.40.46','the703.png'),(15,'test111','111','test111','test111','2026-06-05 02:43:26',0,'192.168.40.46','the703.png'),(16,'test111','111','아아아아아','아아아아','2026-06-05 02:44:09',0,'192.168.40.46','the703.png'),(18,'aaa','1111','aaa','aaa','2026-06-05 02:51:17',0,'192.168.40.46','the703.png'),(19,'123','123','123','123','2026-06-05 02:53:37',0,'192.168.40.46','the703.png'),(27,'123','123','123','123','2026-06-08 04:28:25',2,'192.168.40.46','spring3.png'),(29,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:35:32',0,'192.168.40.23','the703.png'),(30,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(31,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(32,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(33,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(34,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(35,'test','1111','test','test','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(36,'test','1111','test','test','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(37,'test','1111','test','test','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(38,'test111','111','test111','test111','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(39,'test111','111','test111','test111','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(40,'test111','111','아아아아아','아아아아','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(41,'aaa','1111','aaa','aaa','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(42,'123','123','123','123','2026-06-08 06:35:32',0,'192.168.40.46','the703.png'),(43,'123','123','123','123','2026-06-08 06:35:32',0,'192.168.40.46','spring3.png'),(44,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:37:36',0,'192.168.40.23','the703.png'),(45,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(46,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(47,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(48,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(49,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(50,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(51,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(52,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(53,'test111','111','test111','test111','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(54,'test111','111','test111','test111','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(55,'test111','111','아아아아아','아아아아','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(56,'aaa','1111','aaa','aaa','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(57,'123','123','123','123','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(58,'123','123','123','123','2026-06-08 06:37:36',0,'192.168.40.46','spring3.png'),(59,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:37:36',0,'192.168.40.23','the703.png'),(60,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(61,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(62,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(63,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(64,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(65,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(66,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(67,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(68,'test111','111','test111','test111','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(69,'test111','111','test111','test111','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(70,'test111','111','아아아아아','아아아아','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(71,'aaa','1111','aaa','aaa','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(72,'123','123','123','123','2026-06-08 06:37:36',0,'192.168.40.46','the703.png'),(73,'123','123','123','123','2026-06-08 06:37:36',0,'192.168.40.46','spring3.png'),(75,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:38:24',0,'192.168.40.23','the703.png'),(76,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(77,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(78,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(79,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(80,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(81,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(82,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(83,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(84,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(85,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(86,'test111','111','아아아아아','아아아아','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(87,'aaa','1111','aaa','aaa','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(88,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(89,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46','spring3.png'),(90,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:38:24',0,'192.168.40.23','the703.png'),(91,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(92,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(93,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(94,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(95,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(96,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(97,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(98,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(99,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(100,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(101,'test111','111','아아아아아','아아아아','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(102,'aaa','1111','aaa','aaa','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(103,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(104,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46','spring3.png'),(105,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:38:24',0,'192.168.40.23','the703.png'),(106,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(107,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(108,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(109,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(110,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(111,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(112,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(113,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(114,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(115,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(116,'test111','111','아아아아아','아아아아','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(117,'aaa','1111','aaa','aaa','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(118,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(119,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46','spring3.png'),(120,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:38:24',0,'192.168.40.23','the703.png'),(121,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(122,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(123,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(124,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(125,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(126,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(127,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(128,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(129,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(130,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(131,'test111','111','아아아아아','아아아아','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(132,'aaa','1111','aaa','aaa','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(133,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46','the703.png'),(134,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46','spring3.png'),(138,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23','the703.png'),(139,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(140,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(141,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(142,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(143,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(144,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(145,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(146,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(147,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(148,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(149,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(150,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(151,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(152,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','spring3.png'),(153,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23','the703.png'),(154,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(155,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(156,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(157,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(158,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(159,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(160,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(161,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(162,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(163,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(164,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(165,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(166,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(167,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','spring3.png'),(168,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23','the703.png'),(169,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(170,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(171,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(172,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(173,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(174,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(175,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(176,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(177,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(178,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(179,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(180,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(181,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(182,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','spring3.png'),(183,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23','the703.png'),(184,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(185,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(186,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(187,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(188,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(189,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(190,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(191,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(192,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(193,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(194,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(195,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(196,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(197,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','spring3.png'),(198,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23','the703.png'),(199,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(200,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(201,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(202,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(203,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(204,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(205,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(206,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(207,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(208,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(209,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(210,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(211,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(212,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','spring3.png'),(213,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23','the703.png'),(214,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(215,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(216,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(217,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(218,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(219,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(220,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(221,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(222,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(223,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(224,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(225,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(226,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(227,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','spring3.png'),(228,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23','the703.png'),(229,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(230,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(231,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(232,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(233,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(234,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(235,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(236,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(237,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(238,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(239,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(240,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(241,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(242,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','spring3.png'),(243,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23','the703.png'),(244,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(245,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(246,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(247,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(248,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(249,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(250,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(251,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(252,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(253,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(254,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(255,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(256,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','the703.png'),(257,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46','spring3.png'),(265,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(266,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(267,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(268,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(269,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(270,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(271,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(272,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(273,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(274,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(275,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(276,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(277,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(278,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(279,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(280,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(281,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(282,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(283,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(284,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(285,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(286,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(287,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(288,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(289,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(290,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(291,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(292,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(293,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(294,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(295,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(296,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(297,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(298,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(299,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(300,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(301,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(302,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(303,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(304,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(305,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(306,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(307,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(308,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(309,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(310,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(311,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(312,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(313,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(314,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(315,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(316,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(317,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(318,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(319,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(320,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(321,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(322,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(323,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(324,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(325,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(326,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(327,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(328,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(329,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(330,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(331,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(332,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(333,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(334,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(335,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(336,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(337,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(338,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(339,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(340,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(341,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(342,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(343,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(344,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(345,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(346,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(347,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(348,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(349,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(350,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(351,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(352,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(353,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(354,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(355,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(356,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(357,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(358,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(359,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(360,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(361,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(362,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(363,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(364,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(365,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(366,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(367,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(368,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(369,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(370,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(371,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(372,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(373,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(374,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(375,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(376,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(377,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(378,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(379,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(380,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(381,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(382,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(383,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(384,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(385,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(386,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(387,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(388,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(389,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(390,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(391,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(392,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(393,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(394,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(395,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(396,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(397,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(398,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(399,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(400,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(401,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(402,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(403,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(404,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(405,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(406,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(407,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(408,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(409,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(410,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(411,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(412,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(413,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(414,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(415,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(416,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(417,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(418,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(419,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(420,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(421,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(422,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(423,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(424,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(425,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(426,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(427,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(428,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(429,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(430,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(431,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(432,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(433,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(434,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(435,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(436,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(437,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(438,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(439,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(440,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(441,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(442,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(443,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(444,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(445,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(446,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(447,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(448,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(449,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(450,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(451,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(452,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(453,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(454,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(455,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(456,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(457,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(458,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(459,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(460,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(461,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(462,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(463,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(464,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(465,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(466,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(467,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(468,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(469,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(470,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(471,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(472,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(473,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(474,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(475,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(476,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(477,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(478,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(479,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(480,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(481,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(482,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(483,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(484,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(485,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(486,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(487,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(488,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(489,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46','spring3.png'),(490,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23','the703.png'),(491,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(492,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(493,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(494,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(495,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(496,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(497,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(498,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(499,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(500,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(501,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(502,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46','the703.png'),(503,'123','123','123','123','2026-06-08 06:41:18',12,'192.168.40.46','the703.png');
/*!40000 ALTER TABLE `mvcboard2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salgrade`
--

DROP TABLE IF EXISTS `salgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salgrade` (
  `grade` int NOT NULL AUTO_INCREMENT,
  `losal` int DEFAULT NULL,
  `hisal` int DEFAULT NULL,
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salgrade`
--

LOCK TABLES `salgrade` WRITE;
/*!40000 ALTER TABLE `salgrade` DISABLE KEYS */;
INSERT INTO `salgrade` VALUES (1,700,1200),(2,1201,1400),(3,1401,2000),(4,2001,3000),(5,3001,9999);
/*!40000 ALTER TABLE `salgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sjava` int NOT NULL,
  `sjsp` int NOT NULL,
  `sspring` int NOT NULL,
  `sproject` int NOT NULL,
  `stotal` int DEFAULT NULL,
  `ssavg` int DEFAULT NULL,
  `semail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_userinfo`
--

DROP TABLE IF EXISTS `select_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `select_userinfo` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_userinfo`
--

LOCK TABLES `select_userinfo` WRITE;
/*!40000 ALTER TABLE `select_userinfo` DISABLE KEYS */;
INSERT INTO `select_userinfo` VALUES (1,'first',11),(2,'second',22),(3,'third',33),(4,'fourth',44),(5,'fifth',55),(6,'sixth',66),(7,'seventh',NULL);
/*!40000 ALTER TABLE `select_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_userinfo`
--

DROP TABLE IF EXISTS `sub_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_userinfo` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `sex` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kor` int DEFAULT NULL,
  `eng` int DEFAULT NULL,
  `math` int DEFAULT NULL,
  `ban` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sns` char(2) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_userinfo`
--

LOCK TABLES `sub_userinfo` WRITE;
/*!40000 ALTER TABLE `sub_userinfo` DISABLE KEYS */;
INSERT INTO `sub_userinfo` VALUES (1,'first',11,NULL,100,100,99,'A','n'),(2,'second',22,'m',89,92,78,'B','y'),(3,'third',33,'m',90,92,97,'A','y'),(4,'fourth',44,'f',40,42,67,'C','n'),(5,'fifth',55,'f',89,86,99,'B','y'),(6,'sixth',66,'m',10,20,44,'C','n');
/*!40000 ALTER TABLE `sub_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t1` (
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t1`
--

LOCK TABLES `t1` WRITE;
/*!40000 ALTER TABLE `t1` DISABLE KEYS */;
/*!40000 ALTER TABLE `t1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t2`
--

DROP TABLE IF EXISTS `t2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t2` (
  `jumin` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`jumin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t2`
--

LOCK TABLES `t2` WRITE;
/*!40000 ALTER TABLE `t2` DISABLE KEYS */;
/*!40000 ALTER TABLE `t2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `update_score`
--

DROP TABLE IF EXISTS `update_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `update_score` (
  `sno` int NOT NULL DEFAULT '0',
  `sname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sjava` int NOT NULL,
  `sjsp` int NOT NULL,
  `sspring` int NOT NULL,
  `sproject` int NOT NULL,
  `stotal` int DEFAULT NULL,
  `ssavg` double DEFAULT NULL,
  `semail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `update_score`
--

LOCK TABLES `update_score` WRITE;
/*!40000 ALTER TABLE `update_score` DISABLE KEYS */;
INSERT INTO `update_score` VALUES (2,'second',92,78,88,100,376,94,'second@gmail.com'),(3,'ccc',90,90,90,80,350,88,'ccc@gmail.com'),(4,'ddd',78,89,68,98,333,83,'admin@gmail.com'),(5,'abc',89,98,69,77,333,83,'blackstdudent@gmail.com'),(1,'aaa',100,100,100,100,400,100,'first@gmail.com');
/*!40000 ALTER TABLE `update_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,'first',NULL),(2,'second',22),(3,'third',33),(4,'fourth',44),(13,'first',11),(14,'first',11),(15,'abc',NULL),(16,'bbb',NULL),(17,'길동',11),(18,'길동',11),(19,'길동',11),(20,'길동',11),(21,'길동',11),(22,'길동',11),(23,'길동',11),(24,'길동',11),(25,'길동',11),(26,'길동',11),(27,'길동',11);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo2`
--

DROP TABLE IF EXISTS `userinfo2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo2` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo2`
--

LOCK TABLES `userinfo2` WRITE;
/*!40000 ALTER TABLE `userinfo2` DISABLE KEYS */;
/*!40000 ALTER TABLE `userinfo2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo_e`
--

DROP TABLE IF EXISTS `userinfo_e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo_e` (
  `no` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo_e`
--

LOCK TABLES `userinfo_e` WRITE;
/*!40000 ALTER TABLE `userinfo_e` DISABLE KEYS */;
INSERT INTO `userinfo_e` VALUES (1,'hi@gmail.com',10),(2,'hi@gmail.com',1),(3,'hello@gmail.com',100);
/*!40000 ALTER TABLE `userinfo_e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo_ex`
--

DROP TABLE IF EXISTS `userinfo_ex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo_ex` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo_ex`
--

LOCK TABLES `userinfo_ex` WRITE;
/*!40000 ALTER TABLE `userinfo_ex` DISABLE KEYS */;
INSERT INTO `userinfo_ex` VALUES (1,'first',11),(2,'second',22),(3,'third',33),(4,'fourth',44),(9,'first',11),(10,'second',22),(11,'third',33),(12,'fourth',44);
/*!40000 ALTER TABLE `userinfo_ex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo_re1`
--

DROP TABLE IF EXISTS `userinfo_re1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo_re1` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo_re1`
--

LOCK TABLES `userinfo_re1` WRITE;
/*!40000 ALTER TABLE `userinfo_re1` DISABLE KEYS */;
INSERT INTO `userinfo_re1` VALUES (1,'first',11),(2,'second',22),(3,'third',33),(4,'fourth',44);
/*!40000 ALTER TABLE `userinfo_re1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo_select`
--

DROP TABLE IF EXISTS `userinfo_select`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo_select` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo_select`
--

LOCK TABLES `userinfo_select` WRITE;
/*!40000 ALTER TABLE `userinfo_select` DISABLE KEYS */;
/*!40000 ALTER TABLE `userinfo_select` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uno` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bpass` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `udate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'aaa','1111','aaa@gmail.com','010-1111-1111','2026-05-26 09:13:53','192.168.0.1'),(2,'bbb','2222','bbb@gmail.com','010-2222-2222','2026-05-26 15:54:10','192.168.0.101'),(3,'ccc','1111','ccc@gmail.com','010-3333-3333','2026-05-29 06:46:58','192.168.40.23');
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

-- Dump completed on 2026-06-08 18:10:34
