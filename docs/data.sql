-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: database_learning
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `coming_soon_course`
--

DROP TABLE IF EXISTS `coming_soon_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coming_soon_course` (
  `ID` int(11) NOT NULL,
  `COURSE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_idx` (`COURSE`),
  CONSTRAINT `fk` FOREIGN KEY (`COURSE`) REFERENCES `courses` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coming_soon_course`
--

LOCK TABLES `coming_soon_course` WRITE;
/*!40000 ALTER TABLE `coming_soon_course` DISABLE KEYS */;
INSERT INTO `coming_soon_course` VALUES (3,4),(1,6),(2,9);
/*!40000 ALTER TABLE `coming_soon_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(45) NOT NULL,
  `TEACHER` int(11) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `INFO` longtext,
  `FEE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_course_teacher_idx` (`TEACHER`),
  CONSTRAINT `fk_course_teacher` FOREIGN KEY (`TEACHER`) REFERENCES `teachers` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Văn Nghị Luận',1,'2016-05-05','Văn nghị luận là một thể loại văn học vô cùng quan trọng, khóa học này sẽ giúp các bạn làm văn nghị luận sao cho tốt',NULL),(2,'Lịch Sử Cổ Đại',2,'2015-06-09','Lịch sử là một phần không thể thiếu trong cuộc sống xa hội, và lịch sử cổ đại là một phần trong đó',NULL),(3,'Kinh Tế Việt Nam',3,'2015-09-06','Kinh tế nước ta đang biến đổi không ngừng, hãy xem nó đang chuyển biến thế nào nhé. ',NULL),(4,'Hệ Tuần Hoàn',4,'2015-12-12','Tim, các mạch máu hoạt động như thế nào ? Bạn sẽ biết được đầy đủ khi tham gia khóa học này',NULL),(5,'Truyện Kiều',5,'2015-07-03','Truyện Kiều, tên gốc là Đoạn trường tân thanh, là truyện thơ kinh điển trong Nền Văn học Việt Nam, được viết bằng chữ Nôm theo thể lục bát của Nguyễn Du.',NULL),(6,'Đinh Luật Newton',6,'2015-07-04','Newton và quả táo huyền thoại của ông sẽ được trình bày chi tiết ở đây. ',NULL),(7,'Bảng Chữ Cái Tiếng Nhật',7,'2017-09-05','Dành cho ai mới làm quen với tiếng Nhật. ',NULL),(8,'Toán học cao cấp 1',8,'2016-07-08','Bạn sẽ môn toán tuyệt vời và ứng dụng của nó là phong phú thế nào khi tham giá khóa học này.',NULL),(9,'Phát âm cơ bản Tiếng Anh',9,'2016-09-01','Phát âm tiếng anh cho người mới học.',NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrolled_students`
--

DROP TABLE IF EXISTS `enrolled_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrolled_students` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER` int(11) NOT NULL,
  `COURSE` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_enroll_user_idx` (`USER`),
  KEY `fk_enroll_course_idx` (`COURSE`),
  CONSTRAINT `fk_enroll_course` FOREIGN KEY (`COURSE`) REFERENCES `courses` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_enroll_user` FOREIGN KEY (`USER`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrolled_students`
--

LOCK TABLES `enrolled_students` WRITE;
/*!40000 ALTER TABLE `enrolled_students` DISABLE KEYS */;
INSERT INTO `enrolled_students` VALUES (1,1,3),(2,1,4),(3,1,5),(4,2,2),(5,2,3),(6,3,1),(7,3,4),(8,4,1);
/*!40000 ALTER TABLE `enrolled_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lessons` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE` int(11) NOT NULL,
  `TITLE` varchar(45) NOT NULL,
  `INFO` longtext,
  `VIDEO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_lesson_course_idx` (`COURSE`),
  CONSTRAINT `fk_lesson_course` FOREIGN KEY (`COURSE`) REFERENCES `courses` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,1,'Giới thiệu','Bạn sẽ biết được căn bản về môn học',NULL),(2,1,'Nội dung','Tìm hiểu kĩ hơn, sâu hơn về môn học này',NULL),(3,1,'Tổng kết','Tổng kết lại những gì đã học ',NULL),(4,2,'Giới thiệu','Bạn sẽ biết được căn bản về môn học',NULL),(5,2,'Nội dung','Tìm hiểu kĩ hơn, sâu hơn về môn học này',NULL),(6,2,'Tổng kết','Tổng kết lại những gì đã học ',NULL),(7,3,'Giới thiệu','Bạn sẽ biết được căn bản về môn học',NULL),(8,3,'Nội dung','Tìm hiểu kĩ hơn, sâu hơn về môn học này',NULL),(9,3,'Tổng kết','Tổng kết lại những gì đã học ',NULL),(10,4,'Giới thiệu','Bạn sẽ biết được căn bản về môn học',NULL),(11,4,'Nội dung','Tìm hiểu kĩ hơn, sâu hơn về môn học này',NULL),(12,4,'Tổng kết','Tổng kết lại những gì đã học ',NULL),(13,5,'Giới thiệu','Bạn sẽ biết được căn bản về môn học',NULL),(14,5,'Nội dung','Tìm hiểu kĩ hơn, sâu hơn về môn học này',NULL),(15,5,'Tổng kết','Tổng kết lại những gì đã học ',NULL),(16,6,'Giới thiệu','Bạn sẽ biết được căn bản về môn học',NULL),(17,6,'Nội dung','Tìm hiểu kĩ hơn, sâu hơn về môn học này',NULL),(18,6,'Tổng kết','Tổng kết lại những gì đã học ',NULL),(19,7,'Giới thiệu','Bạn sẽ biết được căn bản về môn học',NULL),(20,7,'Nội dung','Tìm hiểu kĩ hơn, sâu hơn về môn học này',NULL),(21,7,'Tổng kết','Tổng kết những gì đã học',NULL);
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pop_course`
--

DROP TABLE IF EXISTS `pop_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pop_course` (
  `ID` int(11) NOT NULL,
  `POP_COURSE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_course_idx` (`POP_COURSE`),
  CONSTRAINT `fk_course` FOREIGN KEY (`POP_COURSE`) REFERENCES `courses` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pop_course`
--

LOCK TABLES `pop_course` WRITE;
/*!40000 ALTER TABLE `pop_course` DISABLE KEYS */;
INSERT INTO `pop_course` VALUES (6,1),(1,2),(3,4),(2,5),(4,7),(5,8);
/*!40000 ALTER TABLE `pop_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Sử'),(2,'Ngữ Văn'),(3,'Lịch Sử'),(4,'Địa Lý'),(5,'Vật lý'),(6,'Tin học'),(7,'Thể dục'),(8,'Tiếng Anh'),(9,'Toán');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `SUBJECT` int(11) NOT NULL,
  `EMAIL` varchar(60) DEFAULT NULL,
  `INFO` varchar(45) DEFAULT NULL,
  `IMAGE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_subject_id_idx` (`SUBJECT`),
  CONSTRAINT `fk_teacher_subject` FOREIGN KEY (`SUBJECT`) REFERENCES `subjects` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Hồng Phú',2,'phuvh@gmail.com','Tiến Sĩ',NULL),(2,'Vĩnh Khoa',3,'khoanv@gmail.com','Mới tốt nghiệp',NULL),(3,'Minh Chính',4,'chinhvm@gmail.com','Giáo sư nổi tiếng',NULL),(4,'Nguyễn Thành',1,'thanhnv@gmail.com','Thạc sĩ',NULL),(5,'Bá Quân',2,'quantb@gmail.com','Thạc sĩ',NULL),(6,'Đức Trọng',5,'trongdd@gmail.com','Tiến sĩ',NULL),(7,'Trang Nguyễn',3,'trangnt69@gmail.com','4 năm kinh nghiệm',NULL),(8,'Trương Ngọc',9,'ngoc@gmail.com','Giáo sư toán học tại MIT',NULL),(9,'Trần Long',8,'longMy@gmail.com','Chuyên gia tiếng anh tại DHQG',NULL);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `GENDER` int(1) DEFAULT NULL,
  `IMAGE` varchar(45) DEFAULT NULL,
  `BALANCE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'thaoas','admin','Thao','thao_aa@yahoo.com','1980-09-07',0,NULL,1000000),(2,'sonnh','admin','Sơn','sonnh_sss@gmail.com','1995-07-08',0,NULL,1000000),(3,'namhs','admin','Nam','namnam@gmail.com','1994-08-02',0,NULL,1000000),(4,'hiensf','admin','Hiền','hien_sd@fpt.com.vn','1999-01-02',1,NULL,1000000),(5,'trangjs','admin','Trang','trangnt@gmail.com','1998-03-04',1,NULL,1000000);
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

-- Dump completed on 2015-11-16 20:15:41
