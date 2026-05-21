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
  `cname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `coffee`
--

DROP TABLE IF EXISTS `coffee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coffee` (
  `cno` int NOT NULL,
  `cname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `delete_emp`
--

DROP TABLE IF EXISTS `delete_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delete_emp` (
  `empno` int NOT NULL AUTO_INCREMENT,
  `ename` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `dname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (10,'ACCOUNTING','NEW YORK'),(20,'RESEARCH','DALLAS');
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
  `ename` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(20) CHARACTER SET utf8mb3 NOT NULL,
  `age` int NOT NULL,
  `email` varchar(20) CHARACTER SET utf8mb3 NOT NULL,
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
-- Dumping data for table `group_userinfo`
--

LOCK TABLES `group_userinfo` WRITE;
/*!40000 ALTER TABLE `group_userinfo` DISABLE KEYS */;
INSERT INTO `group_userinfo` VALUES (1,'first',11,NULL,100,100,99,'A','n'),(2,'second',22,'m',89,92,78,'B','y'),(3,'third',33,'m',90,92,97,'A','y'),(4,'fourth',44,'f',40,42,67,'C','n'),(5,'fifth',55,'f',89,86,99,'B','y'),(6,'sixth',66,'m',10,20,44,'C','n');
/*!40000 ALTER TABLE `group_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milk`
--

DROP TABLE IF EXISTS `milk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `milk` (
  `mno` int NOT NULL,
  `mname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `oname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onum` int NOT NULL,
  `odata` datetime DEFAULT CURRENT_TIMESTAMP,
  `oip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ono`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milk_order`
--

LOCK TABLES `milk_order` WRITE;
/*!40000 ALTER TABLE `milk_order` DISABLE KEYS */;
INSERT INTO `milk_order` VALUES (1,'banana',1,'2026-05-19 18:16:42','198.160.0.1'),(2,'choco',50,'2026-05-19 18:16:43','198.160.0.1'),(3,'white',3,'2026-05-19 18:16:44','198.160.0.1'),(4,'choco',4,'2026-05-20 17:26:56','192.168.40.9'),(5,'white',100,'2026-05-20 17:33:24','192.168.40.9'),(6,'white',70,'2026-05-21 13:13:59','192.168.40.9'),(7,'banana',30,'2026-05-21 13:14:20','192.168.40.9');
/*!40000 ALTER TABLE `milk_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salagrade`
--

DROP TABLE IF EXISTS `salagrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salagrade` (
  `grade` int NOT NULL AUTO_INCREMENT,
  `losal` int DEFAULT NULL,
  `hisal` int DEFAULT NULL,
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salagrade`
--

LOCK TABLES `salagrade` WRITE;
/*!40000 ALTER TABLE `salagrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `salagrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sjava` int NOT NULL,
  `sjsp` int NOT NULL,
  `sspring` int NOT NULL,
  `sproject` int NOT NULL,
  `stotal` int DEFAULT NULL,
  `ssavg` int DEFAULT NULL,
  `semail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t1` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `sname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sjava` int NOT NULL,
  `sjsp` int NOT NULL,
  `sspring` int NOT NULL,
  `sproject` int NOT NULL,
  `stotal` int DEFAULT NULL,
  `ssavg` double DEFAULT NULL,
  `semail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `userinfo_ex`
--

DROP TABLE IF EXISTS `userinfo_ex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo_ex` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-21 14:12:41
