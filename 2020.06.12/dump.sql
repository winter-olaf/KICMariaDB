-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sample
-- ------------------------------------------------------
-- Server version	10.3.23-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `deptno` int(2) NOT NULL,
  `dname` varchar(14) DEFAULT NULL,
  `loc` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
-- Table structure for table `dept_idx`
--

DROP TABLE IF EXISTS `dept_idx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_idx` (
  `deptno` int(2) NOT NULL,
  `dname` varchar(14) DEFAULT NULL,
  `loc` varchar(13) DEFAULT NULL,
  UNIQUE KEY `deptno` (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_idx`
--

LOCK TABLES `dept_idx` WRITE;
/*!40000 ALTER TABLE `dept_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `dept_idx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `empno` int(4) NOT NULL,
  `ename` varchar(10) DEFAULT NULL,
  `job` varchar(9) DEFAULT NULL,
  `mgr` int(4) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `sal` decimal(7,2) DEFAULT NULL,
  `comm` decimal(7,2) DEFAULT NULL,
  `deptno` int(2) DEFAULT NULL,
  PRIMARY KEY (`empno`),
  KEY `idx_emp` (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (7369,'SMITH','CLERK',7902,'2010-12-17',800.00,NULL,20),(7499,'ALLEN','SALESMAN',7698,'2011-02-20',1600.00,300.00,30),(7521,'WARD','SALESMAN',7698,'2011-02-22',1250.00,500.00,30),(7566,'JONES','MANAGER',7839,'2011-04-02',2975.00,NULL,20),(7654,'MARTIN','SALESMAN',7698,'2011-09-28',1250.00,1400.00,30),(7698,'BLAKE','MANAGER',7839,'2011-05-01',2850.00,NULL,30),(7782,'CLARK','MANAGER',7839,'2011-06-09',2450.00,NULL,10),(7788,'SCOTT','ANALYST',7566,'2017-07-13',3000.00,NULL,20),(7839,'KING','PRESIDENT',NULL,'2011-11-17',5000.00,NULL,10),(7844,'TURNER','SALESMAN',7698,'2011-09-08',1500.00,0.00,30),(7876,'ADAMS','CLERK',7788,'2017-07-13',1100.00,NULL,20),(7900,'JAMES','CLERK',7698,'2011-12-03',950.00,NULL,30),(7902,'FORD','ANALYST',7566,'2011-12-03',3000.00,NULL,20),(7934,'MILLER','CLERK',7782,'2012-01-23',1300.00,NULL,10);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salgrade`
--

DROP TABLE IF EXISTS `salgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salgrade` (
  `grade` int(1) DEFAULT NULL,
  `losal` decimal(7,2) DEFAULT NULL,
  `hisal` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salgrade`
--

LOCK TABLES `salgrade` WRITE;
/*!40000 ALTER TABLE `salgrade` DISABLE KEYS */;
INSERT INTO `salgrade` VALUES (1,700.00,1200.00),(2,1201.00,1400.00),(3,1401.00,2000.00),(4,2001.00,3000.00),(5,3001.00,9999.00);
/*!40000 ALTER TABLE `salgrade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-12 16:48:48
