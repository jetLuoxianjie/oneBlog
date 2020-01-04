-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: myblog
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Java基础','Java相关语法,数据结构,算法,实用类库'),(2,'JavaWeb','SSM相关框架实战'),(3,'Golang基础','Go语言相关语法,数据结构,算法,优秀工具'),(4,'Go web updated','Go语言开发Web后端'),(7,'前后端分离','前后端分离实战'),(8,'ajax','ajax test'),(9,'pl1','use plugin'),(14,'pl68','pl6');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
INSERT INTO `label` VALUES (1,'java','java demo'),(2,'golang','golang demo'),(3,'html','html demo'),(4,'vue','vue.js demo'),(5,'tools','工具推荐'),(6,'post test','post test'),(7,'test2_updated','test2'),(11,'d2','d2 admin 的label'),(12,'linux','linux Linux相关文章');
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(5000) NOT NULL DEFAULT '',
  `summary` varchar(200) NOT NULL DEFAULT '',
  `attachment` varchar(255) NOT NULL DEFAULT '',
  `category_id` bigint(20) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `reply_count` bigint(20) NOT NULL DEFAULT '0',
  `reply_last_user_id` bigint(20) NOT NULL DEFAULT '0',
  `updated` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  `reply_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topic_created` (`created`),
  KEY `topic_views` (`views`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,0,'update topic 01','## update Topic Test','update topic 01','https://i.loli.net/2019/02/16/5c67ed3313420.png',7,NULL,0,'destory',0,0,'2019-02-17 05:33:33','2019-02-17 05:33:33',NULL),(2,0,'Test Update Topic Content','string','string','https://i.loli.net/2019/02/16/5c67ed3313420.png',2,NULL,0,'destory',0,0,'2019-02-16 07:14:44','2019-02-16 07:14:44',NULL),(13,0,'D2Admin test','## day12\n\n**使用 qs 配合axios可以传递表单数据不使用的话,传递的是json数据**\n','this is a demo','https://i.loli.net/2019/02/16/5c67ed3313420.png',3,NULL,0,'sinsksmell',0,0,NULL,NULL,NULL),(14,0,'D2 Test02','## day12\n\n**使用 qs 配合axios可以传递表单数据不使用的话,传递的是json数据**\n\n','测试删除表后的结果','https://i.loli.net/2019/02/16/5c67ed3313420.png',2,NULL,0,'destory',0,0,NULL,NULL,NULL),(15,0,'最终添加测试','**使用 qs 配合axios可以传递表单数据不使用的话,传递的是json数据**\n\n``` js\n//跨域post实例，用到了qs组件来避开ajax信使请求，并兼容Android。\n\nimport axios from \'axios\';\nimport qs from \'qs\';\n\naxios.post(\'http://www.xyz.com/request\', qs.stringify(params))\n.then(response => {\n  console.log(response);\n})\n.catch(err => {\n  console.log(err);\n});\n\n```\n\n**Beego开启swagger自动更新**\n> bee run -downdoc=true -gendoc=true \n> 设计一个 json返回数据格式\n> >\n> >Msg : \"OK\" \n\n\n**后端的基本增删改查已经完成**\n> 数据库 文章 E—R图\n\n![](https://i.loli.net/2019/01/31/5c52a462d49ab.png)\n\n> 添加关联后的结构:\n\n\n| 项目名称|使用技术栈 	|项目介绍	|\n|:---:|:---:|:---:|\n|MyBlog| 前后端分离: Vue.js+Beego RESTful + CMS(网站后台内容管理)  | 项目介绍|\n| OA	|MVC| SSM +权限管理|\n| 载荷发生器| golang原生库 | 模拟用户对网站进行高并发请求,最高可达每秒上百万请求 |\n| 豆瓣电影小程序 | vue.js + 开放api | 获取豆瓣上评分较高的电影 |\n\n','这是最终的测试','https://i.loli.net/2019/02/16/5c67ed3313420.png',1,NULL,0,'sinsksmell',0,0,NULL,NULL,NULL),(16,0,'封装axios_Updated2','## day12\n\n**使用 qs 配合axios可以传递表单数据不使用的话,传递的是json数据**\n\n``` js\n跨域post实例，用到了qs组件来避开ajax信使请求，并兼容Android。\n\nimport axios from \'axios\';\nimport qs from \'qs\';\n\naxios.post(\'http://www.xyz.com/request\', qs.stringify(params))\n.then(response => {\n  console.log(response);\n})\n.catch(err => {\n  console.log(err);\n});\n\n```\n\n**Beego开启swagger自动更新**\n> bee run -downdoc=true -gendoc=true \n> 设计一个 json返回数据格式\n> >\n> >Msg : \"OK\" \n\n\n**后端的基本增删改查已经完成**\n> 数据库 文章 E—R图\n\n![](https://i.loli.net/2019/01/31/5c52a462d49ab.png)\n\n> 添加关联后的结构:\n\n\n| 项目名称|使用技术栈 	|项目介绍	|\n|:---:|:---:|:---:|\n|MyBlog| 前后端分离: Vue.js+Beego RESTful + CMS(网站后台内容管理)  | 项目介绍|\n| OA	|MVC| SSM +权限管理|\n| 载荷发生器| golang原生库 | 模拟用户对网站进行高并发请求,最高可达每秒上百万请求 |\n| 豆瓣电影小程序 | vue.js + 开放api | 获取豆瓣上评分较高的电影 |\n\n','将接口,请求地址全部改为封装后的axios','https://i.loli.net/2019/02/16/5c67ed2fa465e.jpg',3,NULL,0,'sinksmell',0,0,'2019-02-25 09:47:49','2019-02-25 09:47:49',NULL);
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic_labels`
--

DROP TABLE IF EXISTS `topic_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `topic_labels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic_labels`
--

LOCK TABLES `topic_labels` WRITE;
/*!40000 ALTER TABLE `topic_labels` DISABLE KEYS */;
INSERT INTO `topic_labels` VALUES (6,13,2),(7,13,3),(10,14,1),(11,14,3),(12,15,1),(13,15,2),(14,15,4),(16,2,2),(17,1,2),(18,1,3),(19,1,1),(25,16,1),(26,16,2);
/*!40000 ALTER TABLE `topic_labels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-26 19:16:59
