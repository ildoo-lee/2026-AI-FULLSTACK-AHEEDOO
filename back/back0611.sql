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
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorities` (
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES ('first@gmail.com','ROLE_MEMBER'),('a@a','ROLE_MEMBER'),('a@a','ROLE_ADMIN'),('b@b','ROLE_MEMBER'),('c@c','ROLE_MEMBER'),('d@d','ROLE_MEMBER'),('d@d','ROLE_MEMBER'),('d@d','ROLE_MEMBER'),('d@d','ROLE_MEMBER');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
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
-- Table structure for table `mvcboard`
--

DROP TABLE IF EXISTS `mvcboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mvcboard` (
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
-- Dumping data for table `mvcboard`
--

LOCK TABLES `mvcboard` WRITE;
/*!40000 ALTER TABLE `mvcboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `mvcboard` ENABLE KEYS */;
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
  `bname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bpass` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `btitle` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcontent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bhit` int NOT NULL DEFAULT '0',
  `bip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bfile` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'the703.png',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=520 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvcboard2`
--

LOCK TABLES `mvcboard2` WRITE;
/*!40000 ALTER TABLE `mvcboard2` DISABLE KEYS */;
INSERT INTO `mvcboard2` VALUES (2,'first','1111','첫번재 글쓰기','내용','2026-06-04 03:41:48',0,'192.168.40.23',NULL),(3,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-05 01:25:14',0,'192.168.40.46',NULL),(4,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-05 01:36:44',0,'192.168.40.46',NULL),(5,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-05 01:38:17',0,'192.168.40.46',NULL),(6,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-05 01:40:39',0,'192.168.40.46',NULL),(7,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-05 01:42:14',0,'192.168.40.46',NULL),(10,'test','1111','test','test','2026-06-05 02:23:30',0,'192.168.40.46',NULL),(11,'test','1111','test','test','2026-06-05 02:23:53',0,'192.168.40.46',NULL),(12,'test','1111','test','test','2026-06-05 02:24:12',0,'192.168.40.46',NULL),(14,'test111','111','test111','test111','2026-06-05 02:43:09',0,'192.168.40.46',NULL),(15,'test111','111','test111','test111','2026-06-05 02:43:26',0,'192.168.40.46',NULL),(16,'test111','111','아아아아아','아아아아','2026-06-05 02:44:09',0,'192.168.40.46',NULL),(18,'aaa','1111','aaa','aaa','2026-06-05 02:51:17',0,'192.168.40.46',NULL),(19,'123','123','123','123','2026-06-05 02:53:37',0,'192.168.40.46',NULL),(27,'123','123','123','123','2026-06-08 04:28:25',2,'192.168.40.46',NULL),(29,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:35:32',0,'192.168.40.23',NULL),(30,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(31,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(32,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(33,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(34,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(35,'test','1111','test','test','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(36,'test','1111','test','test','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(37,'test','1111','test','test','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(38,'test111','111','test111','test111','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(39,'test111','111','test111','test111','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(40,'test111','111','아아아아아','아아아아','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(41,'aaa','1111','aaa','aaa','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(42,'123','123','123','123','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(43,'123','123','123','123','2026-06-08 06:35:32',0,'192.168.40.46',NULL),(44,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:37:36',0,'192.168.40.23',NULL),(45,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(46,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(47,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(48,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(49,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(50,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(51,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(52,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(53,'test111','111','test111','test111','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(54,'test111','111','test111','test111','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(55,'test111','111','아아아아아','아아아아','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(56,'aaa','1111','aaa','aaa','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(57,'123','123','123','123','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(58,'123','123','123','123','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(59,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:37:36',0,'192.168.40.23',NULL),(60,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(61,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(62,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(63,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(64,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(65,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(66,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(67,'test','1111','test','test','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(68,'test111','111','test111','test111','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(69,'test111','111','test111','test111','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(70,'test111','111','아아아아아','아아아아','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(71,'aaa','1111','aaa','aaa','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(72,'123','123','123','123','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(73,'123','123','123','123','2026-06-08 06:37:36',0,'192.168.40.46',NULL),(75,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:38:24',0,'192.168.40.23',NULL),(76,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(77,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(78,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(79,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(80,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(81,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(82,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(83,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(84,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(85,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(86,'test111','111','아아아아아','아아아아','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(87,'aaa','1111','aaa','aaa','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(88,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(89,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(90,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:38:24',0,'192.168.40.23',NULL),(91,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(92,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(93,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(94,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(95,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(96,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(97,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(98,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(99,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(100,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(101,'test111','111','아아아아아','아아아아','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(102,'aaa','1111','aaa','aaa','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(103,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(104,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(105,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:38:24',0,'192.168.40.23',NULL),(106,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(107,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(108,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(109,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(110,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(111,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(112,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(113,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(114,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(115,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(116,'test111','111','아아아아아','아아아아','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(117,'aaa','1111','aaa','aaa','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(118,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(119,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(120,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:38:24',0,'192.168.40.23',NULL),(121,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(122,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(123,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(124,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(125,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(126,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(127,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(128,'test','1111','test','test','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(129,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(130,'test111','111','test111','test111','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(131,'test111','111','아아아아아','아아아아','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(132,'aaa','1111','aaa','aaa','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(133,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(134,'123','123','123','123','2026-06-08 06:38:24',0,'192.168.40.46',NULL),(138,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23',NULL),(139,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(140,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(141,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(142,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(143,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(144,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(145,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(146,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(147,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(148,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(149,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(150,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(151,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(152,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(153,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23',NULL),(154,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(155,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(156,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(157,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(158,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(159,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(160,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(161,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(162,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(163,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(164,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(165,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(166,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(167,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(168,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23',NULL),(169,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(170,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(171,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(172,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(173,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(174,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(175,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(176,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(177,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(178,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(179,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(180,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(181,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(182,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(183,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23',NULL),(184,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(185,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(186,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(187,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(188,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(189,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(190,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(191,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(192,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(193,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(194,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(195,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(196,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(197,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(198,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23',NULL),(199,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(200,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(201,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(202,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(203,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(204,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(205,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(206,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(207,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(208,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(209,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(210,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(211,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(212,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(213,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23',NULL),(214,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(215,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(216,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(217,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(218,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(219,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(220,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(221,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(222,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(223,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(224,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(225,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(226,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(227,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(228,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23',NULL),(229,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(230,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(231,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(232,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(233,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(234,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(235,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(236,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(237,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(238,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(239,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(240,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(241,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(242,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(243,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:16',0,'192.168.40.23',NULL),(244,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(245,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(246,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(247,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(248,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(249,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(250,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(251,'test','1111','test','test','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(252,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(253,'test111','111','test111','test111','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(254,'test111','111','아아아아아','아아아아','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(255,'aaa','1111','aaa','aaa','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(256,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(257,'123','123','123','123','2026-06-08 06:41:16',0,'192.168.40.46',NULL),(265,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(266,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(267,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(268,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(269,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(270,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(271,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(272,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(273,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(274,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(275,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(276,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(277,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(278,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(279,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(280,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(281,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(282,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(283,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(284,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(285,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(286,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(287,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(288,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(289,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(290,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(291,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(292,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(293,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(294,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(295,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(296,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(297,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(298,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(299,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(300,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(301,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(302,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(303,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(304,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(305,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(306,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(307,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(308,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(309,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(310,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(311,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(312,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(313,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(314,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(315,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(316,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(317,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(318,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(319,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(320,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(321,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(322,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(323,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(324,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(325,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(326,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(327,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(328,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(329,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(330,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(331,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(332,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(333,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(334,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(335,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(336,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(337,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(338,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(339,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(340,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(341,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(342,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(343,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(344,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(345,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(346,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(347,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(348,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(349,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(350,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(351,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(352,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(353,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(354,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(355,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(356,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(357,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(358,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(359,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(360,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(361,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(362,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(363,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(364,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(365,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(366,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(367,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(368,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(369,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(370,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(371,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(372,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(373,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(374,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(375,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(376,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(377,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(378,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(379,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(380,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(381,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(382,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(383,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(384,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(385,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(386,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(387,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(388,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(389,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(390,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(391,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(392,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(393,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(394,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(395,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(396,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(397,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(398,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(399,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(400,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(401,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(402,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(403,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(404,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(405,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(406,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(407,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(408,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(409,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(410,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(411,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(412,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(413,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(414,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(415,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(416,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(417,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(418,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(419,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(420,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(421,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(422,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(423,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(424,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(425,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(426,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(427,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(428,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(429,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(430,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(431,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(432,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(433,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(434,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(435,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(436,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(437,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(438,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(439,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(440,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(441,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(442,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(443,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(444,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(445,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(446,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(447,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(448,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(449,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(450,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(451,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(452,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(453,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(454,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(455,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(456,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(457,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(458,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(459,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(460,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(461,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(462,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(463,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(464,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(465,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(466,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(467,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(468,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(469,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(470,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(471,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(472,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(473,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(474,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(475,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(476,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(477,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(478,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(479,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(480,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(481,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(482,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(483,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(484,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(485,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(486,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(487,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(488,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(489,'123','123','123','123','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(490,'first','1111','첫번재 글쓰기','내용','2026-06-08 06:41:18',0,'192.168.40.23',NULL),(491,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(492,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(493,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(494,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',13,'192.168.40.46',NULL),(495,'first','1111','service-첫번재 글쓰기','service-내용','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(496,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(497,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(498,'test','1111','test','test','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(499,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(500,'test111','111','test111','test111','2026-06-08 06:41:18',0,'192.168.40.46',NULL),(501,'test111','111','아아아아아','아아아아','2026-06-08 06:41:18',6,'192.168.40.46',NULL),(502,'aaa','1111','aaa','aaa','2026-06-08 06:41:18',4,'192.168.40.46','aaaaaaaa.png'),(503,'123','123','123','123','2026-06-08 06:41:18',20,'192.168.40.46','aaaaaaaa.png');
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
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `bpass` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `udate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uno`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'bbb','2222','bbb@gmail.com','010-2222-2222','2026-05-26 15:54:10','192.168.0.101'),(3,'ccc','1111','ccc@gmail.com','010-3333-3333','2026-05-29 06:46:58','192.168.40.23'),(5,'aaa','1111','aaa@gmail.com','010-1111-1111','2026-06-09 03:21:04','192.168.40.46'),(6,'first','1111','first@gmail.com','010-1111-1111','2026-06-09 06:30:49','192.168.40.46'),(7,'1','$2a$10$uZz8Z4vMjubO0fEGaE0vMuepU4anATNFvaAWEKIUAtT2d2NyQxfae','first@gmail.com','010-000-0000','2026-06-09 07:56:13','192.168.40.46'),(8,'a','$2a$10$K65uBALhQ80JFbNN8UKCq.DNqqVhMDXUK31sWKz7l3JF2wwRigJ86','a@a','010-0000-0000','2026-06-09 08:29:14','192.168.40.46'),(9,'b','b','b@b','010-0000-0000','2026-06-10 06:55:10','192.168.40.46'),(10,'c','$2a$10$5UR1GBE0KIdbfTnJ5CQ9rO4Blpt4gA3QyjeMaMexmaKOmm2W1dq92','c@c','010-0000-0000','2026-06-10 07:10:17','192.168.40.46'),(11,'d','$2a$10$zzgY8K06nkVmg0.V30uETeZHEjEvrpSgDC3xk9WVAnm40IxvzAYkm','d@d','010-0000-0000','2026-06-10 07:46:07','192.168.40.46'),(12,'e','$2a$10$UghGSdAyLM/yXASYM5FcY.MiYqJu3fQOm13GgYbTUT0OnwX.cCR5a','d@d','010-0000-0000','2026-06-10 08:01:41','192.168.40.46'),(13,'f','$2a$10$DlTN6z3Lw52S/HefrzdHYe/x/JpMKgMq4A5FQIUoWCoajxr.i6RCO','d@d','010-0000-0000','2026-06-10 08:15:49','192.168.40.46'),(14,'g','$2a$10$/E.x9vukdkjGXvoZUmpSIuqryTqY89t/8o3YlmPuTkn1AyXUt0oO.','d@d','010-0000-0000','2026-06-10 08:18:36','192.168.40.46');
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

-- Dump completed on 2026-06-11  4:57:53
