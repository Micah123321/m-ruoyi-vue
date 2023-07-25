/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.25 : Database - mimi-star
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `mimi_category` */

DROP TABLE IF EXISTS `mimi_category`;

CREATE TABLE `mimi_category` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `parent_id` int DEFAULT '0' COMMENT '所属分类ID',
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `ancestors` varchar(255) NOT NULL COMMENT '祖级列表',
  `order_num` int DEFAULT '0' COMMENT '排序',
  `pic` varchar(255) DEFAULT NULL COMMENT '标签图片',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='分类表';

/*Data for the table `mimi_category` */

insert  into `mimi_category`(`id`,`parent_id`,`name`,`ancestors`,`order_num`,`pic`,`is_show`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`,`del_flag`) values (1,0,'娱乐专区','1',1,'entertainment.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(2,0,'站长专栏','1',2,'webmaster.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(3,0,'教育培训','1',3,'education.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(4,0,'生活服务','1',4,'life.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(5,0,'游戏动漫','1',5,'game.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(6,1,'搜索网站','2',1,'search.jpg',1,NULL,'2023-07-24 16:12:47','admin','2023-07-24 16:12:47',NULL,0),(7,1,'购物网站','2',2,'shopping.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(8,1,'音乐网站','2',3,'music.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(9,1,'社交网站','2',4,'social.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(10,2,'搜索引擎','2',1,'engine.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(11,2,'站长工具','2',2,'tool.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(12,3,'在线教育','2',1,'online.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(13,3,'考试资料','2',2,'exam.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(14,4,'美食外卖','2',1,'food.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(15,4,'旅游住宿','2',2,'travel.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(16,5,'手游下载','2',1,'mobile.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0),(17,5,'动漫视频','2',2,'anime.jpg',1,NULL,'2023-07-24 16:12:47',NULL,'2023-07-24 16:12:47',NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
