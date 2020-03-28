-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: king
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4-log

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) NOT NULL,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `content` mediumtext NOT NULL COMMENT '正文',
  `read_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读数',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '喜欢数',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态 0:关闭 1:启用',
  `created_at` int(10) unsigned NOT NULL COMMENT '创建时间',
  `modified_at` int(10) unsigned NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,1,'11','  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。',0,0,0,0,1585119113,1585292720,0);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '描述',
  `picture` varchar(255) NOT NULL DEFAULT '' COMMENT '类型图标',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0:关闭 1:启用',
  `created_on` int(10) unsigned NOT NULL,
  `modified_on` int(10) unsigned NOT NULL,
  `deleted_on` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_id` int(10) unsigned NOT NULL COMMENT '内容id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父评论',
  `content` mediumtext NOT NULL COMMENT '评论内容',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内容类型 0:文章 1:谈论',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态 0:关闭 1:启用',
  `created_at` int(10) unsigned NOT NULL COMMENT '创建时间',
  `modified_at` int(10) unsigned NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='评论';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,0,'121',0,0,1,1585119113,1585119113,0);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_statistics`
--

DROP TABLE IF EXISTS `data_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_statistics` (
  `data_id` int(10) unsigned NOT NULL,
  `read_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读数',
  `read_day` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读数 日',
  `read_weekly` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读数 周',
  `read_month` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读数 月',
  `read_year` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读数 年',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `collect_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型 0:文章 1:谈论'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='数据统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_statistics`
--

LOCK TABLES `data_statistics` WRITE;
/*!40000 ALTER TABLE `data_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '名称',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '分类标签 0:功能建议 1:性能问题',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '反馈内容',
  `picture` varchar(255) DEFAULT NULL COMMENT '图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0:未处理 1:已处理',
  `created_at` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `modified_at` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  `deleted_at` int(10) unsigned DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='意见反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'1213',1,'13631303285',1,'ecshi',NULL,0,1585100249,1585100249,NULL);
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `follow_id` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followers`
--

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendly_links`
--

DROP TABLE IF EXISTS `friendly_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendly_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '名称',
  `picture` varchar(255) NOT NULL DEFAULT '' COMMENT '图标',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `weight` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '权重',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态 0:关闭 1:启用',
  `created_at` int(10) unsigned NOT NULL COMMENT '创建时间',
  `modified_at` int(10) unsigned NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendly_links`
--

LOCK TABLES `friendly_links` WRITE;
/*!40000 ALTER TABLE `friendly_links` DISABLE KEYS */;
INSERT INTO `friendly_links` VALUES (1,'12','2a7fcdc0-cd4f-4818-8886-fe79337bb816.jpg','12','http://baidu.com',0,1,1585386713,1585386713,0);
/*!40000 ALTER TABLE `friendly_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_menu`
--

DROP TABLE IF EXISTS `goadmin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_menu`
--

LOCK TABLES `goadmin_menu` WRITE;
/*!40000 ALTER TABLE `goadmin_menu` DISABLE KEYS */;
INSERT INTO `goadmin_menu` VALUES (1,0,1,1,'Admin','fa-tasks','',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,1,1,1,'Users','fa-users','/info/manager',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(3,1,1,2,'Roles','fa-user','/info/roles',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(4,1,1,3,'Permission','fa-ban','/info/permission',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(5,1,1,4,'Menu','fa-bars','/menu',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(6,1,1,5,'Operation log','fa-history','/info/op',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(8,0,0,6,'内容','fa-bars','','','2020-03-24 07:10:12','2020-03-24 07:10:12'),(9,8,0,6,'标签','fa-bars','/info/tags','','2020-03-25 02:08:04','2020-03-25 10:08:47'),(10,0,0,13,'后勤','fa-bars','','','2020-03-25 08:14:07','2020-03-27 11:41:11'),(11,10,0,13,'意见反馈','fa-bars','/info/feedbacks','','2020-03-25 08:14:23','2020-03-25 08:14:23'),(12,0,0,9,'app用户','fa-bars','','','2020-03-27 03:39:03','2020-03-27 03:39:03'),(13,12,0,9,'用户','fa-bars','/info/users','','2020-03-27 03:39:34','2020-03-27 11:38:24'),(14,12,0,10,'粉丝','fa-bars','/info/followers','','2020-03-27 03:40:21','2020-03-27 11:38:30'),(15,12,0,11,'用户组','fa-bars','/info/groups','','2020-03-27 03:41:03','2020-03-27 03:41:03'),(16,8,0,7,'博文','fa-bars','/info/articles','','2020-03-27 03:41:45','2020-03-27 03:41:45'),(17,8,0,8,'讨论','fa-bars','/info/topics','','2020-03-27 03:41:59','2020-03-27 03:41:59'),(18,12,0,12,'人气值','fa-bars','/info/reputation_logs','','2020-03-27 03:42:25','2020-03-27 03:42:25'),(19,10,0,14,'举报','fa-bars','/info/reports','','2020-03-27 03:42:54','2020-03-27 03:42:54'),(20,10,0,15,'友链','fa-bars','/info/friendly_links','','2020-03-27 03:43:12','2020-03-27 03:43:12'),(21,8,0,11,'栏目','fa-bars','/info/categories','','2020-03-27 07:53:40','2020-03-27 07:53:40'),(22,8,0,11,'评论','fa-bars','/info/comments','','2020-03-28 03:07:47','2020-03-28 03:07:47');
/*!40000 ALTER TABLE `goadmin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_operation_log`
--

DROP TABLE IF EXISTS `goadmin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_operation_log`
--

LOCK TABLES `goadmin_operation_log` WRITE;
/*!40000 ALTER TABLE `goadmin_operation_log` DISABLE KEYS */;
INSERT INTO `goadmin_operation_log` VALUES (1,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-23 01:40:20','2020-03-23 01:40:20'),(2,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-23 01:40:40','2020-03-23 01:40:40'),(3,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 01:40:41','2020-03-23 01:40:41'),(4,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-23 01:40:41','2020-03-23 01:40:41'),(5,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:40:42','2020-03-23 01:40:42'),(6,1,'/admin/info/op','GET','127.0.0.1','','2020-03-23 01:40:42','2020-03-23 01:40:42'),(7,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:40:44','2020-03-23 01:40:44'),(8,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:46:30','2020-03-23 01:46:30'),(9,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:47:51','2020-03-23 01:47:51'),(10,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:47:54','2020-03-23 01:47:54'),(11,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:48:35','2020-03-23 01:48:35'),(12,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:49:18','2020-03-23 01:49:18'),(13,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:49:19','2020-03-23 01:49:19'),(14,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-23 01:49:25','2020-03-23 01:49:25'),(15,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 01:49:26','2020-03-23 01:49:26'),(16,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-23 01:49:27','2020-03-23 01:49:27'),(17,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 01:50:25','2020-03-23 01:50:25'),(18,1,'/admin/info/op','GET','127.0.0.1','','2020-03-23 01:50:26','2020-03-23 01:50:26'),(19,1,'/admin/info/op','GET','127.0.0.1','','2020-03-23 03:06:57','2020-03-23 03:06:57'),(20,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 03:07:01','2020-03-23 03:07:01'),(21,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 03:07:04','2020-03-23 03:07:04'),(22,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-23 03:07:05','2020-03-23 03:07:05'),(23,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 03:07:56','2020-03-23 03:07:56'),(24,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-23 03:07:58','2020-03-23 03:07:58'),(25,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 03:08:01','2020-03-23 03:08:01'),(26,1,'/admin/info/roles/new','GET','127.0.0.1','','2020-03-23 03:09:23','2020-03-23 03:09:23'),(27,1,'/admin/new/roles','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/roles?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"f37f3392-fc5b-4fb6-b5ae-6f0566550bde\"],\"name\":[\"121\"],\"permission_id[]\":[\"\"],\"slug\":[\"32\"]}','2020-03-23 03:09:28','2020-03-23 03:09:28'),(28,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 03:09:32','2020-03-23 03:09:32'),(29,1,'/admin/delete/roles','POST','127.0.0.1','','2020-03-23 03:09:36','2020-03-23 03:09:36'),(30,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-23 03:09:36','2020-03-23 03:09:36'),(31,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-23 03:53:09','2020-03-23 03:53:09'),(32,1,'/admin/menu','GET','127.0.0.1','','2020-03-23 03:53:11','2020-03-23 03:53:11'),(33,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-24 07:07:20','2020-03-24 07:07:20'),(34,1,'/admin/info/op','GET','127.0.0.1','','2020-03-24 07:07:22','2020-03-24 07:07:22'),(35,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:07:43','2020-03-24 07:07:43'),(36,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-24 07:09:31','2020-03-24 07:09:31'),(37,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:35','2020-03-24 07:09:35'),(38,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:44','2020-03-24 07:09:44'),(39,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:44','2020-03-24 07:09:44'),(40,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:46','2020-03-24 07:09:46'),(41,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:46','2020-03-24 07:09:46'),(42,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(43,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(44,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(45,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(46,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(47,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(48,1,'/admin/menu/delete','POST','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(49,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:47','2020-03-24 07:09:47'),(50,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:09:49','2020-03-24 07:09:49'),(51,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"04712b6d-616a-414f-85c1-ee1c8c59bce8\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"0\"],\"title\":[\"内容\"],\"uri\":[\"\"]}','2020-03-24 07:10:12','2020-03-24 07:10:12'),(52,1,'/admin/menu','GET','127.0.0.1','','2020-03-24 07:10:15','2020-03-24 07:10:15'),(53,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 02:07:27','2020-03-25 02:07:27'),(54,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 02:07:29','2020-03-25 02:07:29'),(55,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-25 02:07:30','2020-03-25 02:07:30'),(56,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-25 02:07:31','2020-03-25 02:07:31'),(57,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-25 02:07:31','2020-03-25 02:07:31'),(58,1,'/admin/info/op','GET','127.0.0.1','','2020-03-25 02:07:32','2020-03-25 02:07:32'),(59,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 02:07:39','2020-03-25 02:07:39'),(60,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 02:07:41','2020-03-25 02:07:41'),(61,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"b2bdc9ce-4b5c-4d6a-ba62-ebfd6ea74f89\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"8\"],\"title\":[\"标签\"],\"uri\":[\"/tags\"]}','2020-03-25 02:08:04','2020-03-25 02:08:04'),(62,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 02:08:18','2020-03-25 02:08:18'),(63,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:08:27','2020-03-25 02:08:27'),(64,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:11:06','2020-03-25 02:11:06'),(65,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 02:11:11','2020-03-25 02:11:11'),(66,1,'/admin/menu/edit/show','GET','127.0.0.1','','2020-03-25 02:11:14','2020-03-25 02:11:14'),(67,1,'/admin/menu/edit','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"57b0e81e-4efa-4785-b67c-fc44f517209e\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"9\"],\"parent_id\":[\"8\"],\"title\":[\"标签\"],\"uri\":[\"info/tags\"]}','2020-03-25 02:11:20','2020-03-25 02:11:20'),(68,1,'/admin/menu/edit/show','GET','127.0.0.1','','2020-03-25 02:11:26','2020-03-25 02:11:26'),(69,1,'/admin/menu/edit','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"138924f1-5abd-4bca-826a-05b084309c18\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"9\"],\"parent_id\":[\"8\"],\"title\":[\"标签\"],\"uri\":[\"/info/tags\"]}','2020-03-25 02:11:32','2020-03-25 02:11:32'),(70,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 02:11:41','2020-03-25 02:11:41'),(71,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:11:44','2020-03-25 02:11:44'),(72,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:44','2020-03-25 02:15:44'),(73,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:45','2020-03-25 02:15:45'),(74,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:46','2020-03-25 02:15:46'),(75,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:46','2020-03-25 02:15:46'),(76,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:46','2020-03-25 02:15:46'),(77,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:15:46','2020-03-25 02:15:46'),(78,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:29:15','2020-03-25 02:29:15'),(79,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:35:20','2020-03-25 02:35:20'),(80,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 02:35:27','2020-03-25 02:35:27'),(81,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:02:17','2020-03-25 03:02:17'),(82,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:02:22','2020-03-25 03:02:22'),(83,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:47','2020-03-25 03:03:47'),(84,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:47','2020-03-25 03:03:47'),(85,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:47','2020-03-25 03:03:47'),(86,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:47','2020-03-25 03:03:47'),(87,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:48','2020-03-25 03:03:48'),(88,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:03:48','2020-03-25 03:03:48'),(89,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:06:34','2020-03-25 03:06:34'),(90,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:06:34','2020-03-25 03:06:34'),(91,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:06:35','2020-03-25 03:06:35'),(92,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:06:35','2020-03-25 03:06:35'),(93,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:06:35','2020-03-25 03:06:35'),(94,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:09:53','2020-03-25 03:09:53'),(95,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:09:55','2020-03-25 03:09:55'),(96,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:10:07','2020-03-25 03:10:07'),(97,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 03:10:11','2020-03-25 03:10:11'),(98,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-25 03:10:12','2020-03-25 03:10:12'),(99,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-25 03:10:12','2020-03-25 03:10:12'),(100,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-25 03:10:13','2020-03-25 03:10:13'),(101,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 03:10:13','2020-03-25 03:10:13'),(102,1,'/admin/info/op','GET','127.0.0.1','','2020-03-25 03:10:13','2020-03-25 03:10:13'),(103,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:10:15','2020-03-25 03:10:15'),(104,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:30:10','2020-03-25 03:30:10'),(105,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:31:06','2020-03-25 03:31:06'),(106,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:10','2020-03-25 03:31:10'),(107,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:18','2020-03-25 03:31:18'),(108,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:20','2020-03-25 03:31:20'),(109,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:21','2020-03-25 03:31:21'),(110,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:21','2020-03-25 03:31:21'),(111,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:22','2020-03-25 03:31:22'),(112,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:22','2020-03-25 03:31:22'),(113,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:22','2020-03-25 03:31:22'),(114,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:22','2020-03-25 03:31:22'),(115,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:22','2020-03-25 03:31:22'),(116,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:23','2020-03-25 03:31:23'),(117,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:23','2020-03-25 03:31:23'),(118,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:23','2020-03-25 03:31:23'),(119,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:24','2020-03-25 03:31:24'),(120,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:24','2020-03-25 03:31:24'),(121,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:24','2020-03-25 03:31:24'),(122,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:31:31','2020-03-25 03:31:31'),(123,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:31:33','2020-03-25 03:31:33'),(124,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:32:02','2020-03-25 03:32:02'),(125,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:32:09','2020-03-25 03:32:09'),(126,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:32:12','2020-03-25 03:32:12'),(127,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:35:27','2020-03-25 03:35:27'),(128,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:36:43','2020-03-25 03:36:43'),(129,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:36:46','2020-03-25 03:36:46'),(130,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"bc9bad15-e673-4630-85d2-d9aa9478a06b\"],\"created_on\":[\"\"],\"deleted_on\":[\"\"],\"modified_on\":[\"\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 03:36:50','2020-03-25 03:36:50'),(131,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c80d1abd-3dc8-4b25-a064-a4d18796f9fa\"],\"created_on\":[\"\"],\"deleted_on\":[\"\"],\"modified_on\":[\"\"],\"name\":[\"\"],\"status\":[\"0\"]}','2020-03-25 03:40:59','2020-03-25 03:40:59'),(132,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 03:41:27','2020-03-25 03:41:27'),(133,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:41:30','2020-03-25 03:41:30'),(134,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:41:33','2020-03-25 03:41:33'),(135,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"590ed0d4-5c33-48ed-ba45-39f74498bec5\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 03:41:36','2020-03-25 03:41:36'),(136,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"f6c9f120-1e9e-4671-8f36-665ca7dd63b4\"],\"name\":[\"\"],\"status\":[\"0\"]}','2020-03-25 03:41:43','2020-03-25 03:41:43'),(137,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:43:10','2020-03-25 03:43:10'),(138,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c9c56242-f1d9-4882-8fb2-f930e547e31f\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 03:43:13','2020-03-25 03:43:13'),(139,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"0e6c9645-c971-42a4-8047-e479a2922f60\"],\"name\":[\"\"],\"status\":[\"0\"]}','2020-03-25 03:43:24','2020-03-25 03:43:24'),(140,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:47:01','2020-03-25 03:47:01'),(141,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"e65de5ca-f608-4cf5-95de-8394496cd8f5\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 03:47:09','2020-03-25 03:47:09'),(142,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 03:48:21','2020-03-25 03:48:21'),(143,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"6e422cd1-8e70-4c2a-8637-a1644758a107\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 03:48:25','2020-03-25 03:48:25'),(144,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"4ca11b31-67cd-4ecb-94f7-bdb6f6dcc159\"],\"name\":[\"\"],\"status\":[\"0\"]}','2020-03-25 03:48:40','2020-03-25 03:48:40'),(145,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:48:47','2020-03-25 03:48:47'),(146,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:49:20','2020-03-25 03:49:20'),(147,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:56:22','2020-03-25 03:56:22'),(148,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:57:41','2020-03-25 03:57:41'),(149,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 03:59:34','2020-03-25 03:59:34'),(150,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 03:59:38','2020-03-25 03:59:38'),(151,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"4846de04-aa33-4f46-9f74-4e573a906fa3\"],\"id\":[\"1\"],\"name\":[\"1213\"],\"status\":[\"1\"]}','2020-03-25 03:59:42','2020-03-25 03:59:42'),(152,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 06:03:01','2020-03-25 06:03:01'),(153,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:03:05','2020-03-25 06:03:05'),(154,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:03:07','2020-03-25 06:03:07'),(155,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"3df9f378-62d1-4b41-9961-98d11987d7fe\"],\"name\":[\"于文浩\"],\"status\":[\"0\"]}','2020-03-25 06:03:10','2020-03-25 06:03:10'),(156,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:05:53','2020-03-25 06:05:53'),(157,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"http://127.0.0.1:9033/admin/new/tags\"],\"__go_admin_t_\":[\"6b1332e3-c305-4c2f-9c1b-0c139accaa3c\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:05:56','2020-03-25 06:05:56'),(158,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:06:54','2020-03-25 06:06:54'),(159,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"http://127.0.0.1:9033/admin/new/tags\"],\"__go_admin_t_\":[\"fe2b44be-8a9b-4048-8d75-586909efe78c\"],\"created_on\":[\"1585116253\"],\"modified_on\":[\"1585116253\"],\"name\":[\"于文浩\"],\"status\":[\"0\"]}','2020-03-25 06:06:58','2020-03-25 06:06:58'),(160,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:07:27','2020-03-25 06:07:27'),(161,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"http://127.0.0.1:9033/admin/new/tags\"],\"__go_admin_t_\":[\"e790f0f2-0a51-42a7-a577-da16e24d8d9b\"],\"created_on\":[\"1585116292\"],\"modified_on\":[\"1585116292\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:07:37','2020-03-25 06:07:37'),(162,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:30:26','2020-03-25 06:30:26'),(163,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:30:28','2020-03-25 06:30:28'),(164,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c0d73d5d-a5fd-4690-919c-00d9ae8ca479\"],\"created_on\":[\"1585117668\"],\"modified_on\":[\"1585117668\"],\"name\":[\"\"],\"status\":[\"0\"]}','2020-03-25 06:30:32','2020-03-25 06:30:32'),(165,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:30:35','2020-03-25 06:30:35'),(166,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"c9b0a439-8d7b-48bc-8e50-1f0cf07e0ad2\"],\"created_on\":[\"1585117674\"],\"modified_on\":[\"1585117674\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:30:38','2020-03-25 06:30:38'),(167,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:30:40','2020-03-25 06:30:40'),(168,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:31:36','2020-03-25 06:31:36'),(169,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"1\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"b0f33107-fe74-427c-bf23-ad3c655e8b35\"],\"created_on\":[\"1585117734\"],\"id\":[\"2\"],\"modified_on\":[\"1585117734\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:31:39','2020-03-25 06:31:39'),(170,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:32:04','2020-03-25 06:32:04'),(171,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"5dec92c3-fc33-4eea-acf9-5dcb5273aa9e\"],\"id\":[\"2\"],\"modified_on\":[\"1585117764\"],\"name\":[\"资讯\"],\"status\":[\"1\"]}','2020-03-25 06:32:08','2020-03-25 06:32:08'),(172,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:33:49','2020-03-25 06:33:49'),(173,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:33:53','2020-03-25 06:33:53'),(174,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"4afa761c-cee1-42b2-a7c8-b31105cf2d99\"],\"id\":[\"2\"],\"modified_at\":[\"2020-03-25 14:31:18\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:34:02','2020-03-25 06:34:02'),(175,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:35:35','2020-03-25 06:35:35'),(176,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"7b10899d-5d57-472a-8883-c1e6772d64e5\"],\"id\":[\"2\"],\"modified_at\":[\"2020-03-25 14:32:56\"],\"name\":[\"资讯\"],\"status\":[\"1\"]}','2020-03-25 06:35:40','2020-03-25 06:35:40'),(177,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:41:06','2020-03-25 06:41:06'),(178,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"0dbff129-d6b3-4eff-a4d5-bb63613d3190\"],\"id\":[\"2\"],\"modified_at\":[\"2020-03-25 14:38:24\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:41:09','2020-03-25 06:41:09'),(179,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:42:02','2020-03-25 06:42:02'),(180,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_post_type\":[\"0\"],\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"8b1a2240-bf8e-4881-9bdb-4e67185ee660\"],\"id\":[\"2\"],\"modified_at\":[\"2020-03-25 14:39:20\"],\"name\":[\"资讯\"],\"status\":[\"1\"]}','2020-03-25 06:42:04','2020-03-25 06:42:04'),(181,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:51:00','2020-03-25 06:51:00'),(182,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 06:51:03','2020-03-25 06:51:03'),(183,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"ce600b68-cb41-4e51-ac7c-38a52e330436\"],\"id\":[\"2\"],\"modified_at\":[\"2020-03-25 14:48:21\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:51:06','2020-03-25 06:51:06'),(184,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:54:29','2020-03-25 06:54:29'),(185,1,'/admin/info/tags/new','GET','127.0.0.1','','2020-03-25 06:54:32','2020-03-25 06:54:32'),(186,1,'/admin/new/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"e2a24973-6306-47a4-9f6d-6645e70c9d14\"],\"created_at\":[\"1585119113\"],\"id\":[\"3\"],\"modified_at\":[\"1585119113\"],\"name\":[\"资讯\"],\"status\":[\"0\"]}','2020-03-25 06:54:38','2020-03-25 06:54:38'),(187,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:55:46','2020-03-25 06:55:46'),(188,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:55:47','2020-03-25 06:55:47'),(189,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:55:49','2020-03-25 06:55:49'),(190,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:55:49','2020-03-25 06:55:49'),(191,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 06:55:49','2020-03-25 06:55:49'),(192,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:00:53','2020-03-25 07:00:53'),(193,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:01:21','2020-03-25 07:01:21'),(194,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:03:18','2020-03-25 07:03:18'),(195,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:03:25','2020-03-25 07:03:25'),(196,1,'/admin/info/tags/edit','GET','127.0.0.1','','2020-03-25 07:03:47','2020-03-25 07:03:47'),(197,1,'/admin/edit/tags','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/tags?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"09e8e8e2-9acb-4c36-9f84-8d1d11e2632b\"],\"id\":[\"3\"],\"modified_at\":[\"1585119665\"],\"name\":[\"资讯\"],\"status\":[\"1\"]}','2020-03-25 07:03:50','2020-03-25 07:03:50'),(198,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:03:51','2020-03-25 07:03:51'),(199,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:07:36','2020-03-25 07:07:36'),(200,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:07:38','2020-03-25 07:07:38'),(201,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:08:47','2020-03-25 07:08:47'),(202,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:08:53','2020-03-25 07:08:53'),(203,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:09:12','2020-03-25 07:09:12'),(204,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:09:14','2020-03-25 07:09:14'),(205,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:11:14','2020-03-25 07:11:14'),(206,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:15:26','2020-03-25 07:15:26'),(207,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:16:46','2020-03-25 07:16:46'),(208,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:19:22','2020-03-25 07:19:22'),(209,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:19:24','2020-03-25 07:19:24'),(210,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:19:26','2020-03-25 07:19:26'),(211,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:22:05','2020-03-25 07:22:05'),(212,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:22:08','2020-03-25 07:22:08'),(213,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:22:12','2020-03-25 07:22:12'),(214,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:22:35','2020-03-25 07:22:35'),(215,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:34','2020-03-25 07:23:34'),(216,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:41','2020-03-25 07:23:41'),(217,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:43','2020-03-25 07:23:43'),(218,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:44','2020-03-25 07:23:44'),(219,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:44','2020-03-25 07:23:44'),(220,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:44','2020-03-25 07:23:44'),(221,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-25 07:23:45','2020-03-25 07:23:45'),(222,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-25 08:13:24','2020-03-25 08:13:24'),(223,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 08:13:27','2020-03-25 08:13:27'),(224,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"23fc1941-c1f9-480a-bf3f-e93b0910135e\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"0\"],\"title\":[\"后勤\"],\"uri\":[\"\"]}','2020-03-25 08:14:07','2020-03-25 08:14:07'),(225,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"3f984e30-f8fb-49dc-98b8-0263cd715618\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"10\"],\"title\":[\"意见反馈\"],\"uri\":[\"/info/feedbacks\"]}','2020-03-25 08:14:24','2020-03-25 08:14:24'),(226,1,'/admin/menu','GET','127.0.0.1','','2020-03-25 08:14:27','2020-03-25 08:14:27'),(227,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 08:14:29','2020-03-25 08:14:29'),(228,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:25','2020-03-25 09:04:25'),(229,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:33','2020-03-25 09:04:33'),(230,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:34','2020-03-25 09:04:34'),(231,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:36','2020-03-25 09:04:36'),(232,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:36','2020-03-25 09:04:36'),(233,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:36','2020-03-25 09:04:36'),(234,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:04:37','2020-03-25 09:04:37'),(235,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:59:18','2020-03-25 09:59:18'),(236,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:59:20','2020-03-25 09:59:20'),(237,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:59:21','2020-03-25 09:59:21'),(238,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:59:21','2020-03-25 09:59:21'),(239,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 09:59:58','2020-03-25 09:59:58'),(240,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 10:02:15','2020-03-25 10:02:15'),(241,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 10:02:31','2020-03-25 10:02:31'),(242,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 10:06:18','2020-03-25 10:06:18'),(243,1,'/admin/update/feedbacks','POST','127.0.0.1','','2020-03-25 10:06:20','2020-03-25 10:06:20'),(244,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 10:06:24','2020-03-25 10:06:24'),(245,1,'/admin/update/feedbacks','POST','127.0.0.1','','2020-03-25 10:06:25','2020-03-25 10:06:25'),(246,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-25 10:06:26','2020-03-25 10:06:26'),(247,1,'/admin/update/feedbacks','POST','127.0.0.1','','2020-03-25 10:06:29','2020-03-25 10:06:29'),(248,1,'/admin/update/feedbacks','POST','127.0.0.1','','2020-03-25 10:06:30','2020-03-25 10:06:30'),(249,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-26 08:59:51','2020-03-26 08:59:51'),(250,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-26 08:59:53','2020-03-26 08:59:53'),(251,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-26 08:59:54','2020-03-26 08:59:54'),(252,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-26 08:59:56','2020-03-26 08:59:56'),(253,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-26 09:00:00','2020-03-26 09:00:00'),(254,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-27 03:38:32','2020-03-27 03:38:32'),(255,1,'/admin/menu','GET','127.0.0.1','','2020-03-27 03:38:45','2020-03-27 03:38:45'),(256,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"e60769b9-e39d-4169-ba99-e40185e7b6ba\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"\"],\"title\":[\"app用户\"],\"uri\":[\"\"]}','2020-03-27 03:39:03','2020-03-27 03:39:03'),(257,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"ae037aeb-87fb-4f4b-adbe-3e6707d7c90c\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"12\"],\"title\":[\"用户管理\"],\"uri\":[\"/info/users\"]}','2020-03-27 03:39:34','2020-03-27 03:39:34'),(258,1,'/admin/menu','GET','127.0.0.1','','2020-03-27 03:39:44','2020-03-27 03:39:44'),(259,1,'/admin/info/users','GET','127.0.0.1','','2020-03-27 03:39:46','2020-03-27 03:39:46'),(260,1,'/admin/menu','GET','127.0.0.1','','2020-03-27 03:40:09','2020-03-27 03:40:09'),(261,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"2bd682f4-c46f-4c36-86b8-12478161aed4\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"12\"],\"title\":[\"粉丝管理\"],\"uri\":[\"/info/followers\"]}','2020-03-27 03:40:21','2020-03-27 03:40:21'),(262,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"d5c44554-5524-4d0a-be1d-4b41fd2f680a\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"12\"],\"title\":[\"用户组\"],\"uri\":[\"/info/groups\"]}','2020-03-27 03:41:03','2020-03-27 03:41:03'),(263,1,'/admin/menu/edit/show','GET','127.0.0.1','','2020-03-27 03:41:07','2020-03-27 03:41:07'),(264,1,'/admin/menu/edit','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"f46b851c-d3b3-4cf0-9360-502404761460\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"13\"],\"parent_id\":[\"12\"],\"title\":[\"用户\"],\"uri\":[\"/info/users\"]}','2020-03-27 03:41:11','2020-03-27 03:41:11'),(265,1,'/admin/menu/edit/show','GET','127.0.0.1','','2020-03-27 03:41:14','2020-03-27 03:41:14'),(266,1,'/admin/menu/edit','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"a23864fd-4217-4e1b-ac13-881ec50bc0c2\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"14\"],\"parent_id\":[\"12\"],\"title\":[\"粉丝\"],\"uri\":[\"/info/followers\"]}','2020-03-27 03:41:18','2020-03-27 03:41:18'),(267,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"351aed0b-1bfa-4bad-95f1-532d8389a560\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"8\"],\"title\":[\"博文\"],\"uri\":[\"/info/articles\"]}','2020-03-27 03:41:45','2020-03-27 03:41:45'),(268,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"c56e95ba-fb0e-4060-85f1-a8080acdb008\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"8\"],\"title\":[\"讨论\"],\"uri\":[\"/info/topics\"]}','2020-03-27 03:41:59','2020-03-27 03:41:59'),(269,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"5afd2bc4-55f4-4d15-8038-d641215e39ff\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"12\"],\"title\":[\"人气值\"],\"uri\":[\"/info/reputation_logs\"]}','2020-03-27 03:42:25','2020-03-27 03:42:25'),(270,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"eb372215-3027-4b7d-9f26-f6e782e8ced0\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"10\"],\"title\":[\"举报\"],\"uri\":[\"/info/reports\"]}','2020-03-27 03:42:54','2020-03-27 03:42:54'),(271,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"ef612e06-43cb-4cdf-baed-b7080d1cb0fc\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"10\"],\"title\":[\"友链\"],\"uri\":[\"/info/friendly_links\"]}','2020-03-27 03:43:12','2020-03-27 03:43:12'),(272,1,'/admin/menu/order','POST','127.0.0.1','','2020-03-27 03:43:34','2020-03-27 03:43:34'),(273,1,'/admin/menu','GET','127.0.0.1','','2020-03-27 03:43:34','2020-03-27 03:43:34'),(274,1,'/admin/menu/edit/show','GET','127.0.0.1','','2020-03-27 03:43:54','2020-03-27 03:43:54'),(275,1,'/admin/menu/edit','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"64e4c071-b834-4e25-89c7-9039f1ed0d4a\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"10\"],\"parent_id\":[\"0\"],\"title\":[\"后勤\"],\"uri\":[\"\"]}','2020-03-27 03:43:58','2020-03-27 03:43:58'),(276,1,'/admin/menu/order','POST','127.0.0.1','','2020-03-27 03:44:05','2020-03-27 03:44:05'),(277,1,'/admin/menu','GET','127.0.0.1','','2020-03-27 03:44:05','2020-03-27 03:44:05'),(278,1,'/admin/menu','GET','127.0.0.1','','2020-03-27 03:44:07','2020-03-27 03:44:07'),(279,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-27 03:44:11','2020-03-27 03:44:11'),(280,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 03:44:12','2020-03-27 03:44:12'),(281,1,'/admin/info/topics','GET','127.0.0.1','','2020-03-27 03:44:14','2020-03-27 03:44:14'),(282,1,'/admin/info/users','GET','127.0.0.1','','2020-03-27 03:44:16','2020-03-27 03:44:16'),(283,1,'/admin/info/followers','GET','127.0.0.1','','2020-03-27 03:44:17','2020-03-27 03:44:17'),(284,1,'/admin/info/groups','GET','127.0.0.1','','2020-03-27 03:44:17','2020-03-27 03:44:17'),(285,1,'/admin/info/reputation_logs','GET','127.0.0.1','','2020-03-27 03:44:18','2020-03-27 03:44:18'),(286,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-27 03:44:20','2020-03-27 03:44:20'),(287,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-27 03:44:20','2020-03-27 03:44:20'),(288,1,'/admin/info/friendly_links','GET','127.0.0.1','','2020-03-27 03:44:20','2020-03-27 03:44:20'),(289,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-27 03:44:21','2020-03-27 03:44:21'),(290,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-27 03:44:21','2020-03-27 03:44:21'),(291,1,'/admin/menu','GET','127.0.0.1','','2020-03-27 03:44:23','2020-03-27 03:44:23'),(292,1,'/admin/menu','GET','127.0.0.1','','2020-03-27 03:47:08','2020-03-27 03:47:08'),(293,1,'/admin/info/friendly_links','GET','127.0.0.1','','2020-03-27 03:47:21','2020-03-27 03:47:21'),(294,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-27 03:47:22','2020-03-27 03:47:22'),(295,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-27 03:47:28','2020-03-27 03:47:28'),(296,1,'/admin/info/reputation_logs','GET','127.0.0.1','','2020-03-27 03:47:28','2020-03-27 03:47:28'),(297,1,'/admin/info/groups','GET','127.0.0.1','','2020-03-27 03:47:29','2020-03-27 03:47:29'),(298,1,'/admin/info/followers','GET','127.0.0.1','','2020-03-27 03:47:30','2020-03-27 03:47:30'),(299,1,'/admin/info/followers','GET','127.0.0.1','','2020-03-27 03:47:31','2020-03-27 03:47:31'),(300,1,'/admin/info/users','GET','127.0.0.1','','2020-03-27 03:47:31','2020-03-27 03:47:31'),(301,1,'/admin/info/topics','GET','127.0.0.1','','2020-03-27 03:47:32','2020-03-27 03:47:32'),(302,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 03:47:33','2020-03-27 03:47:33'),(303,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 03:47:33','2020-03-27 03:47:33'),(304,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-27 03:47:34','2020-03-27 03:47:34'),(305,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-27 03:47:41','2020-03-27 03:47:41'),(306,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 03:48:08','2020-03-27 03:48:08'),(307,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 03:59:21','2020-03-27 03:59:21'),(308,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 03:59:22','2020-03-27 03:59:22'),(309,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-27 06:14:15','2020-03-27 06:14:15'),(310,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-27 06:16:17','2020-03-27 06:16:17'),(311,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:16:18','2020-03-27 06:16:18'),(312,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-27 06:16:20','2020-03-27 06:16:20'),(313,1,'/admin/info/tags/detail','GET','127.0.0.1','','2020-03-27 06:16:22','2020-03-27 06:16:22'),(314,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-27 06:16:27','2020-03-27 06:16:27'),(315,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-27 06:17:38','2020-03-27 06:17:38'),(316,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:17:41','2020-03-27 06:17:41'),(317,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-27 06:17:42','2020-03-27 06:17:42'),(318,1,'/admin/info/topics','GET','127.0.0.1','','2020-03-27 06:17:45','2020-03-27 06:17:45'),(319,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:17:46','2020-03-27 06:17:46'),(320,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:18:40','2020-03-27 06:18:40'),(321,1,'/admin/info/articles/detail','GET','127.0.0.1','','2020-03-27 06:18:43','2020-03-27 06:18:43'),(322,1,'/admin/info/articles/detail','GET','127.0.0.1','','2020-03-27 06:34:30','2020-03-27 06:34:30'),(323,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:34:38','2020-03-27 06:34:38'),(324,1,'/admin/info/articles/detail','GET','127.0.0.1','','2020-03-27 06:34:42','2020-03-27 06:34:42'),(325,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:34:49','2020-03-27 06:34:49'),(326,1,'/admin/update/articles','POST','127.0.0.1','','2020-03-27 06:34:50','2020-03-27 06:34:50'),(327,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:34:53','2020-03-27 06:34:53'),(328,1,'/admin/update/articles','POST','127.0.0.1','','2020-03-27 06:34:54','2020-03-27 06:34:54'),(329,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:35:38','2020-03-27 06:35:38'),(330,1,'/admin/info/articles/detail','GET','127.0.0.1','','2020-03-27 06:35:39','2020-03-27 06:35:39'),(331,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:38:27','2020-03-27 06:38:27'),(332,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:38:28','2020-03-27 06:38:28'),(333,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 06:38:31','2020-03-27 06:38:31'),(334,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 06:42:26','2020-03-27 06:42:26'),(335,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:57:07','2020-03-27 06:57:07'),(336,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 06:57:09','2020-03-27 06:57:09'),(337,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 06:58:09','2020-03-27 06:58:09'),(338,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 06:58:28','2020-03-27 06:58:28'),(339,1,'/admin/edit/articles','POST','127.0.0.1','{\"__checkbox__status\":[\"on\"],\"__go_admin_previous_\":[\"/admin/info/articles?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"74dc6735-f9bc-425e-803e-3271cf7f4367\"],\"content\":[\"  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。\"],\"modified_at\":[\"2020-03-25 14:51:53\"],\"status\":[\"0\"]}','2020-03-27 06:58:34','2020-03-27 06:58:34'),(340,1,'/admin/edit/articles','POST','127.0.0.1','{\"__checkbox__status\":[\"on\"],\"__go_admin_previous_\":[\"/admin/info/articles?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"74dc6735-f9bc-425e-803e-3271cf7f4367\"],\"content\":[\"  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。\"],\"modified_at\":[\"2020-03-25 14:51:53\"],\"status\":[\"0\"]}','2020-03-27 06:58:37','2020-03-27 06:58:37'),(341,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:58:47','2020-03-27 06:58:47'),(342,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 06:58:49','2020-03-27 06:58:49'),(343,1,'/admin/edit/articles','POST','127.0.0.1','{\"__checkbox__status\":[\"on\"],\"__go_admin_previous_\":[\"/admin/info/articles?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"54fb5127-c158-42df-9389-b1f6ac2c91ee\"],\"content\":[\"  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。\"],\"modified_at\":[\"2020-03-25 14:51:53\"],\"status\":[\"0\"]}','2020-03-27 06:58:53','2020-03-27 06:58:53'),(344,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 06:59:54','2020-03-27 06:59:54'),(345,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:00:40','2020-03-27 07:00:40'),(346,1,'/admin/edit/articles','POST','127.0.0.1','{\"__checkbox__status\":[\"on\"],\"__go_admin_previous_\":[\"/admin/info/articles?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"aa67e0ee-1cb3-4def-bfe3-1661e268caeb\"],\"content\":[\"  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。\"],\"id\":[\"1\"],\"modified_at\":[\"2020-03-25 14:51:53\"],\"status\":[\"0\"]}','2020-03-27 07:00:44','2020-03-27 07:00:44'),(347,1,'/admin/edit/articles','POST','127.0.0.1','{\"__go_admin_previous_\":[\"http://127.0.0.1:9033/admin/info/articles/edit?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"f1ff8639-f08d-4b4a-ab8c-619f45c0ee1f\"],\"content\":[\"  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。\"],\"id\":[\"1\"],\"modified_at\":[\"2020-03-25 14:51:53\"],\"status\":[\"1\"]}','2020-03-27 07:00:52','2020-03-27 07:00:52'),(348,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:00:58','2020-03-27 07:00:58'),(349,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:00:59','2020-03-27 07:00:59'),(350,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:01:00','2020-03-27 07:01:00'),(351,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:01:00','2020-03-27 07:01:00'),(352,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:01:01','2020-03-27 07:01:01'),(353,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:01:01','2020-03-27 07:01:01'),(354,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:01:02','2020-03-27 07:01:02'),(355,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:01:02','2020-03-27 07:01:02'),(356,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:01:02','2020-03-27 07:01:02'),(357,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:01:03','2020-03-27 07:01:03'),(358,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 07:01:05','2020-03-27 07:01:05'),(359,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:01:09','2020-03-27 07:01:09'),(360,1,'/admin/edit/articles','POST','127.0.0.1','{\"__checkbox__status\":[\"on\"],\"__go_admin_previous_\":[\"/admin/info/articles?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"9840b3da-211f-4858-8da2-cf3bb862e77a\"],\"content\":[\"  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。\"],\"id\":[\"1\"],\"modified_at\":[\"2020-03-25 14:51:53\"],\"status\":[\"0\"]}','2020-03-27 07:01:14','2020-03-27 07:01:14'),(361,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:05:59','2020-03-27 07:05:59'),(362,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 07:06:04','2020-03-27 07:06:04'),(363,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:06:08','2020-03-27 07:06:08'),(364,1,'/admin/edit/articles','POST','127.0.0.1','{\"__checkbox__status\":[\"on\"],\"__go_admin_previous_\":[\"/admin/info/articles?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"7ec2dece-c0db-4746-961f-7f664ff855ef\"],\"content\":[\"  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。\"],\"id\":[\"1\"],\"modified_at\":[\"2020-03-25 14:51:53\"],\"modifield_at\":[\"1585292603\"],\"status\":[\"0\"]}','2020-03-27 07:06:11','2020-03-27 07:06:11'),(365,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 07:08:00','2020-03-27 07:08:00'),(366,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:08:02','2020-03-27 07:08:02'),(367,1,'/admin/edit/articles','POST','127.0.0.1','{\"__checkbox__status\":[\"on\"],\"__go_admin_previous_\":[\"/admin/info/articles?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"f759b50f-360e-4b6c-856e-c01b9b63be60\"],\"content\":[\"  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。\"],\"id\":[\"1\"],\"modified_at\":[\"1585292720\"],\"status\":[\"0\"]}','2020-03-27 07:08:08','2020-03-27 07:08:08'),(368,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 07:08:11','2020-03-27 07:08:11'),(369,1,'/admin/info/articles/edit','GET','127.0.0.1','','2020-03-27 07:08:14','2020-03-27 07:08:14'),(370,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 07:11:03','2020-03-27 07:11:03'),(371,1,'/admin/info/topics','GET','127.0.0.1','','2020-03-27 07:11:08','2020-03-27 07:11:08'),(372,1,'/admin/info/topics','GET','127.0.0.1','','2020-03-27 07:49:44','2020-03-27 07:49:44'),(373,1,'/admin/info/topics','GET','127.0.0.1','','2020-03-27 07:50:18','2020-03-27 07:50:18'),(374,1,'/admin/update/topics','POST','127.0.0.1','','2020-03-27 07:50:21','2020-03-27 07:50:21'),(375,1,'/admin/info/topics','GET','127.0.0.1','','2020-03-27 07:50:23','2020-03-27 07:50:23'),(376,1,'/admin/update/topics','POST','127.0.0.1','','2020-03-27 07:50:25','2020-03-27 07:50:25'),(377,1,'/admin/info/topics/edit','GET','127.0.0.1','','2020-03-27 07:50:27','2020-03-27 07:50:27'),(378,1,'/admin/info/topics/edit','GET','127.0.0.1','','2020-03-27 07:51:15','2020-03-27 07:51:15'),(379,1,'/admin/edit/topics','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/topics?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"690bd178-611c-4c48-806f-24372d704959\"],\"content\":[\"  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。\"],\"status\":[\"1\"]}','2020-03-27 07:51:20','2020-03-27 07:51:20'),(380,1,'/admin/info/topics','GET','127.0.0.1','','2020-03-27 07:52:09','2020-03-27 07:52:09'),(381,1,'/admin/info/topics/edit','GET','127.0.0.1','','2020-03-27 07:52:11','2020-03-27 07:52:11'),(382,1,'/admin/edit/topics','POST','127.0.0.1','{\"__checkbox__status\":[\"on\"],\"__go_admin_previous_\":[\"/admin/info/topics?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"7520e4ba-cc97-4d13-ab81-170d77683157\"],\"content\":[\"  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。\"],\"id\":[\"1\",\"1\"],\"modified_at\":[\"1585295369\"],\"status\":[\"0\"]}','2020-03-27 07:52:17','2020-03-27 07:52:17'),(383,1,'/admin/menu','GET','127.0.0.1','','2020-03-27 07:52:56','2020-03-27 07:52:56'),(384,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"1d1b67f7-fd84-490f-a73e-92bb70bf48be\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"8\"],\"title\":[\"栏目\"],\"uri\":[\"/info/categories\"]}','2020-03-27 07:53:40','2020-03-27 07:53:40'),(385,1,'/admin/menu','GET','127.0.0.1','','2020-03-27 07:54:33','2020-03-27 07:54:33'),(386,1,'/admin/info/categories','GET','127.0.0.1','','2020-03-27 07:54:38','2020-03-27 07:54:38'),(387,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-27 08:18:32','2020-03-27 08:18:32'),(388,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-27 08:18:35','2020-03-27 08:18:35'),(389,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-27 08:18:35','2020-03-27 08:18:35'),(390,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-27 08:18:36','2020-03-27 08:18:36'),(391,1,'/admin/info/topics','GET','127.0.0.1','','2020-03-27 08:18:37','2020-03-27 08:18:37'),(392,1,'/admin/info/topics','GET','127.0.0.1','','2020-03-27 08:18:38','2020-03-27 08:18:38'),(393,1,'/admin/info/categories','GET','127.0.0.1','','2020-03-27 08:18:38','2020-03-27 08:18:38'),(394,1,'/admin/info/categories','GET','127.0.0.1','','2020-03-27 08:18:42','2020-03-27 08:18:42'),(395,1,'/admin/info/categories','GET','127.0.0.1','','2020-03-27 08:18:43','2020-03-27 08:18:43'),(396,1,'/admin/info/categories','GET','127.0.0.1','','2020-03-27 08:18:44','2020-03-27 08:18:44'),(397,1,'/admin/info/categories','GET','127.0.0.1','','2020-03-27 08:18:44','2020-03-27 08:18:44'),(398,1,'/admin/info/categories','GET','127.0.0.1','','2020-03-27 08:32:25','2020-03-27 08:32:25'),(399,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-28 03:07:05','2020-03-28 03:07:05'),(400,1,'/admin/menu','GET','127.0.0.1','','2020-03-28 03:07:23','2020-03-28 03:07:23'),(401,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"1282dc3e-f534-427e-ac19-de19cdb4c4fc\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"8\"],\"title\":[\"评论\"],\"uri\":[\"/info/comments\"]}','2020-03-28 03:07:47','2020-03-28 03:07:47'),(402,1,'/admin/menu','GET','127.0.0.1','','2020-03-28 03:07:49','2020-03-28 03:07:49'),(403,1,'/admin/menu','GET','127.0.0.1','','2020-03-28 03:07:49','2020-03-28 03:07:49'),(404,1,'/admin/info/comments','GET','127.0.0.1','','2020-03-28 03:07:52','2020-03-28 03:07:52'),(405,1,'/admin/info/comments','GET','127.0.0.1','','2020-03-28 03:11:08','2020-03-28 03:11:08'),(406,1,'/admin/info/comments/detail','GET','127.0.0.1','','2020-03-28 03:11:30','2020-03-28 03:11:30'),(407,1,'/admin/info/comments/detail','GET','127.0.0.1','','2020-03-28 03:24:08','2020-03-28 03:24:08'),(408,1,'/admin/info/comments','GET','127.0.0.1','','2020-03-28 03:24:14','2020-03-28 03:24:14'),(409,1,'/admin/info/comments','GET','127.0.0.1','','2020-03-28 03:24:17','2020-03-28 03:24:17'),(410,1,'/admin/info/comments','GET','127.0.0.1','','2020-03-28 03:24:18','2020-03-28 03:24:18'),(411,1,'/admin/info/comments','GET','127.0.0.1','','2020-03-28 03:25:17','2020-03-28 03:25:17'),(412,1,'/admin/info/comments/detail','GET','127.0.0.1','','2020-03-28 03:25:19','2020-03-28 03:25:19'),(413,1,'/admin/info/comments/detail','GET','127.0.0.1','','2020-03-28 03:28:57','2020-03-28 03:28:57'),(414,1,'/admin/info/comments/detail','GET','127.0.0.1','','2020-03-28 03:29:44','2020-03-28 03:29:44'),(415,1,'/admin/info/comments/detail','GET','127.0.0.1','','2020-03-28 03:29:48','2020-03-28 03:29:48'),(416,1,'/admin/info/comments/detail','GET','127.0.0.1','','2020-03-28 03:29:48','2020-03-28 03:29:48'),(417,1,'/admin/info/comments/detail','GET','127.0.0.1','','2020-03-28 03:32:07','2020-03-28 03:32:07'),(418,1,'/admin/info/comments','GET','127.0.0.1','','2020-03-28 03:32:12','2020-03-28 03:32:12'),(419,1,'/admin/info/comments/detail','GET','127.0.0.1','','2020-03-28 03:32:13','2020-03-28 03:32:13'),(420,1,'/admin/info/comments','GET','127.0.0.1','','2020-03-28 03:32:16','2020-03-28 03:32:16'),(421,1,'/admin/info/comments','GET','127.0.0.1','','2020-03-28 03:36:46','2020-03-28 03:36:46'),(422,1,'/admin/info/comments/edit','GET','127.0.0.1','','2020-03-28 03:36:48','2020-03-28 03:36:48'),(423,1,'/admin/info/users','GET','127.0.0.1','','2020-03-28 03:47:16','2020-03-28 03:47:16'),(424,1,'/admin/info/users','GET','127.0.0.1','','2020-03-28 03:54:56','2020-03-28 03:54:56'),(425,1,'/admin/info/groups','GET','127.0.0.1','','2020-03-28 03:54:57','2020-03-28 03:54:57'),(426,1,'/admin/info/groups','GET','127.0.0.1','','2020-03-28 04:00:43','2020-03-28 04:00:43'),(427,1,'/admin/info/groups','GET','127.0.0.1','','2020-03-28 04:01:42','2020-03-28 04:01:42'),(428,1,'/admin/info/groups','GET','127.0.0.1','','2020-03-28 04:02:36','2020-03-28 04:02:36'),(429,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-28 06:10:24','2020-03-28 06:10:24'),(430,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-28 06:10:26','2020-03-28 06:10:26'),(431,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 06:10:27','2020-03-28 06:10:27'),(432,1,'/admin/info/friendly_links','GET','127.0.0.1','','2020-03-28 06:10:28','2020-03-28 06:10:28'),(433,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 06:10:28','2020-03-28 06:10:28'),(434,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-28 06:10:29','2020-03-28 06:10:29'),(435,1,'/admin/info/users','GET','127.0.0.1','','2020-03-28 06:10:30','2020-03-28 06:10:30'),(436,1,'/admin/info/followers','GET','127.0.0.1','','2020-03-28 06:10:31','2020-03-28 06:10:31'),(437,1,'/admin/info/followers','GET','127.0.0.1','','2020-03-28 06:10:31','2020-03-28 06:10:31'),(438,1,'/admin/info/groups','GET','127.0.0.1','','2020-03-28 06:10:32','2020-03-28 06:10:32'),(439,1,'/admin/info/reputation_logs','GET','127.0.0.1','','2020-03-28 06:10:32','2020-03-28 06:10:32'),(440,1,'/admin/info/tags','GET','127.0.0.1','','2020-03-28 06:10:34','2020-03-28 06:10:34'),(441,1,'/admin/info/articles','GET','127.0.0.1','','2020-03-28 06:10:34','2020-03-28 06:10:34'),(442,1,'/admin/info/topics','GET','127.0.0.1','','2020-03-28 06:10:35','2020-03-28 06:10:35'),(443,1,'/admin/info/categories','GET','127.0.0.1','','2020-03-28 06:10:35','2020-03-28 06:10:35'),(444,1,'/admin/info/comments','GET','127.0.0.1','','2020-03-28 06:10:36','2020-03-28 06:10:36'),(445,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-28 06:10:38','2020-03-28 06:10:38'),(446,1,'/admin/info/roles','GET','127.0.0.1','','2020-03-28 06:10:38','2020-03-28 06:10:38'),(447,1,'/admin/info/permission','GET','127.0.0.1','','2020-03-28 06:10:39','2020-03-28 06:10:39'),(448,1,'/admin/menu','GET','127.0.0.1','','2020-03-28 06:10:39','2020-03-28 06:10:39'),(449,1,'/admin/info/op','GET','127.0.0.1','','2020-03-28 06:10:40','2020-03-28 06:10:40'),(450,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-28 06:10:46','2020-03-28 06:10:46'),(451,1,'/admin/info/op','GET','127.0.0.1','','2020-03-28 06:19:24','2020-03-28 06:19:24'),(452,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 06:50:21','2020-03-28 06:50:21'),(453,1,'/admin/info/friendly_links','GET','127.0.0.1','','2020-03-28 06:50:21','2020-03-28 06:50:21'),(454,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 06:50:23','2020-03-28 06:50:23'),(455,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-28 06:50:24','2020-03-28 06:50:24'),(456,1,'/admin/info/groups','GET','127.0.0.1','','2020-03-28 06:56:03','2020-03-28 06:56:03'),(457,1,'/admin/info/groups','GET','127.0.0.1','','2020-03-28 06:56:08','2020-03-28 06:56:08'),(458,1,'/admin/info/groups/new','GET','127.0.0.1','','2020-03-28 06:56:11','2020-03-28 06:56:11'),(459,1,'/admin/new/groups','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/groups?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"4b884134-028d-4cb1-98cd-bd808b159d87\"],\"created_at\":[\"1585378423\"],\"id\":[\"1\"],\"modified_at\":[\"1585378423\"],\"name\":[\"管理员\"],\"sort\":[\"100\"],\"status\":[\"1\"]}','2020-03-28 06:56:32','2020-03-28 06:56:32'),(460,1,'/admin/update/groups','POST','127.0.0.1','','2020-03-28 06:56:39','2020-03-28 06:56:39'),(461,1,'/admin/info/groups','GET','127.0.0.1','','2020-03-28 06:56:39','2020-03-28 06:56:39'),(462,1,'/admin/info/groups/edit','GET','127.0.0.1','','2020-03-28 06:56:44','2020-03-28 06:56:44'),(463,1,'/admin/edit/groups','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/groups?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"a34386ad-5eb7-4242-a707-7b488edb744b\"],\"id\":[\"1\"],\"modified_at\":[\"1585378446\"],\"name\":[\"管理员\"],\"sort\":[\"100\"],\"status\":[\"1\"]}','2020-03-28 06:56:56','2020-03-28 06:56:56'),(464,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 07:07:07','2020-03-28 07:07:07'),(465,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 07:07:08','2020-03-28 07:07:08'),(466,1,'/admin/info/friendly_links','GET','127.0.0.1','','2020-03-28 07:07:09','2020-03-28 07:07:09'),(467,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 07:07:10','2020-03-28 07:07:10'),(468,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-28 07:07:11','2020-03-28 07:07:11'),(469,1,'/admin/info/friendly_links','GET','127.0.0.1','','2020-03-28 07:07:12','2020-03-28 07:07:12'),(470,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 07:07:13','2020-03-28 07:07:13'),(471,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-28 07:07:14','2020-03-28 07:07:14'),(472,1,'/admin/info/users','GET','127.0.0.1','','2020-03-28 07:07:17','2020-03-28 07:07:17'),(473,1,'/admin/info/followers','GET','127.0.0.1','','2020-03-28 07:07:17','2020-03-28 07:07:17'),(474,1,'/admin/info/followers','GET','127.0.0.1','','2020-03-28 07:07:18','2020-03-28 07:07:18'),(475,1,'/admin/info/groups','GET','127.0.0.1','','2020-03-28 07:07:19','2020-03-28 07:07:19'),(476,1,'/admin/info/reputation_logs','GET','127.0.0.1','','2020-03-28 07:07:19','2020-03-28 07:07:19'),(477,1,'/admin/info/reputation_logs','GET','127.0.0.1','','2020-03-28 07:30:45','2020-03-28 07:30:45'),(478,1,'/admin/info/manager','GET','127.0.0.1','','2020-03-28 08:15:15','2020-03-28 08:15:15'),(479,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 08:15:18','2020-03-28 08:15:18'),(480,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-28 08:15:22','2020-03-28 08:15:22'),(481,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 08:15:23','2020-03-28 08:15:23'),(482,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 08:15:50','2020-03-28 08:15:50'),(483,1,'/admin/info/friendly_links','GET','127.0.0.1','','2020-03-28 08:16:22','2020-03-28 08:16:22'),(484,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-28 08:16:25','2020-03-28 08:16:25'),(485,1,'/admin/info/friendly_links','GET','127.0.0.1','','2020-03-28 08:16:26','2020-03-28 08:16:26'),(486,1,'/admin/info/followers','GET','127.0.0.1','','2020-03-28 08:16:29','2020-03-28 08:16:29'),(487,1,'/admin/info/users','GET','127.0.0.1','','2020-03-28 08:16:30','2020-03-28 08:16:30'),(488,1,'/admin/info/users','GET','127.0.0.1','','2020-03-28 08:20:07','2020-03-28 08:20:07'),(489,1,'/admin/info/reports','GET','127.0.0.1','','2020-03-28 08:20:09','2020-03-28 08:20:09'),(490,1,'/admin/info/friendly_links','GET','127.0.0.1','','2020-03-28 08:20:13','2020-03-28 08:20:13'),(491,1,'/admin/info/feedbacks','GET','127.0.0.1','','2020-03-28 08:20:16','2020-03-28 08:20:16'),(492,1,'/admin/info/friendly_links','GET','127.0.0.1','','2020-03-28 08:20:17','2020-03-28 08:20:17'),(493,1,'/admin/info/friendly_links','GET','127.0.0.1','','2020-03-28 09:13:06','2020-03-28 09:13:06'),(494,1,'/admin/info/friendly_links/new','GET','127.0.0.1','','2020-03-28 09:13:10','2020-03-28 09:13:10'),(495,1,'/admin/info/friendly_links/new','GET','127.0.0.1','','2020-03-28 09:14:30','2020-03-28 09:14:30'),(496,1,'/admin/new/friendly_links','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/friendly_links?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"f7334733-4af7-46e3-b52a-741b51dca233\"],\"created_at\":[\"1585386713\"],\"description\":[\"12\"],\"id\":[\"1\"],\"modified_at\":[\"1585386713\"],\"name\":[\"12\"],\"picture\":[\"2a7fcdc0-cd4f-4818-8886-fe79337bb816.jpg\"],\"picture__delete_flag\":[\"0\"],\"status\":[\"1\"],\"url\":[\"http://baidu.com\"]}','2020-03-28 09:14:42','2020-03-28 09:14:42');
/*!40000 ALTER TABLE `goadmin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_permissions`
--

DROP TABLE IF EXISTS `goadmin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_permissions`
--

LOCK TABLES `goadmin_permissions` WRITE;
/*!40000 ALTER TABLE `goadmin_permissions` DISABLE KEYS */;
INSERT INTO `goadmin_permissions` VALUES (1,'All permission','*','','*','2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,'Dashboard','dashboard','GET,PUT,POST,DELETE','/','2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_role_menu`
--

DROP TABLE IF EXISTS `goadmin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_role_menu` (
  `role_id` int(11) unsigned NOT NULL,
  `menu_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_role_menu`
--

LOCK TABLES `goadmin_role_menu` WRITE;
/*!40000 ALTER TABLE `goadmin_role_menu` DISABLE KEYS */;
INSERT INTO `goadmin_role_menu` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(1,8,'2019-09-11 10:20:55','2019-09-11 10:20:55'),(2,8,'2019-09-11 10:20:55','2019-09-11 10:20:55');
/*!40000 ALTER TABLE `goadmin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_role_permissions`
--

DROP TABLE IF EXISTS `goadmin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_role_permissions` (
  `role_id` int(11) unsigned NOT NULL,
  `permission_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_role_permissions` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_role_permissions`
--

LOCK TABLES `goadmin_role_permissions` WRITE;
/*!40000 ALTER TABLE `goadmin_role_permissions` DISABLE KEYS */;
INSERT INTO `goadmin_role_permissions` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(1,2,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,2,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_role_users`
--

DROP TABLE IF EXISTS `goadmin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_role_users` (
  `role_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_user_roles` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_role_users`
--

LOCK TABLES `goadmin_role_users` WRITE;
/*!40000 ALTER TABLE `goadmin_role_users` DISABLE KEYS */;
INSERT INTO `goadmin_role_users` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,2,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_roles`
--

DROP TABLE IF EXISTS `goadmin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_roles`
--

LOCK TABLES `goadmin_roles` WRITE;
/*!40000 ALTER TABLE `goadmin_roles` DISABLE KEYS */;
INSERT INTO `goadmin_roles` VALUES (1,'Administrator','administrator','2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,'Operator','operator','2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_session`
--

DROP TABLE IF EXISTS `goadmin_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_session` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `values` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_session`
--

LOCK TABLES `goadmin_session` WRITE;
/*!40000 ALTER TABLE `goadmin_session` DISABLE KEYS */;
INSERT INTO `goadmin_session` VALUES (13,'6389aff2-a099-4d85-a576-ba807855f13d','{\"user_id\":1}','2020-03-28 08:15:15','2020-03-28 08:15:15');
/*!40000 ALTER TABLE `goadmin_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_user_permissions`
--

DROP TABLE IF EXISTS `goadmin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_user_permissions` (
  `user_id` int(11) unsigned NOT NULL,
  `permission_id` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_user_permissions` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_user_permissions`
--

LOCK TABLES `goadmin_user_permissions` WRITE;
/*!40000 ALTER TABLE `goadmin_user_permissions` DISABLE KEYS */;
INSERT INTO `goadmin_user_permissions` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,2,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_users`
--

DROP TABLE IF EXISTS `goadmin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goadmin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_users`
--

LOCK TABLES `goadmin_users` WRITE;
/*!40000 ALTER TABLE `goadmin_users` DISABLE KEYS */;
INSERT INTO `goadmin_users` VALUES (1,'admin','$2a$10$AEJ0QFyKOw1U.QHSLEC3u.sW2QBETmPNrLZPCmxNKyOVr0hFiKIo6','admin','','tlNcBVK9AvfYH7WEnwB1RKvocJu8FfRy4um3DJtwdHuJy0dwFsLOgAc0xUfh','2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,'operator','$2a$10$rVqkOzHjN2MdlEprRflb1eGP0oZXuSrbJLOmJagFsCd81YZm0bsh.','Operator','',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `sort` tinyint(1) unsigned DEFAULT '1' COMMENT '序号',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 0:关闭 1:启用',
  `created_at` int(10) unsigned NOT NULL COMMENT '创建时间',
  `modified_at` int(10) unsigned NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'管理员',100,1,1585378423,1585378446,0);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `data_id` int(10) NOT NULL COMMENT '内容id',
  `type_id` tinyint(1) NOT NULL COMMENT '内容类型 0:',
  `comment_id` int(10) NOT NULL COMMENT '回复评论id',
  `content` varchar(100) NOT NULL COMMENT '回复内容',
  `created_at` int(10) NOT NULL COMMENT '创建时间',
  `modified_at` int(10) unsigned NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `data_id` int(10) unsigned NOT NULL COMMENT '内容id',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内容类型 0:文章 1:讨论',
  `report_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '举报类型',
  `content` mediumtext NOT NULL COMMENT '举报内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0:未处理 1:已经处理',
  `created_at` int(10) unsigned NOT NULL COMMENT '创建时间',
  `modified_at` int(10) unsigned NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) unsigned DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputation_logs`
--

DROP TABLE IF EXISTS `reputation_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reputation_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `data_id` int(10) unsigned NOT NULL COMMENT '内容id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '内容类型 0:文章 1:讨论 2:评论',
  `action` varchar(10) NOT NULL COMMENT '操作 up:添加 down:下降',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '声望值',
  `created_at` int(10) unsigned NOT NULL COMMENT '创建时间',
  `modified_at` int(10) NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputation_logs`
--

LOCK TABLES `reputation_logs` WRITE;
/*!40000 ALTER TABLE `reputation_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `reputation_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned NOT NULL,
  `modified_at` int(10) unsigned NOT NULL,
  `deleted_at` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (3,'资讯',1,1585119113,1585119665,0);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_sync_post_record`
--

DROP TABLE IF EXISTS `tl_sync_post_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_sync_post_record` (
  `from_post_id` varchar(100) NOT NULL COMMENT '传过来id',
  `post_id` int(10) unsigned DEFAULT NULL COMMENT '内容id',
  PRIMARY KEY (`from_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_sync_post_record`
--

LOCK TABLES `tl_sync_post_record` WRITE;
/*!40000 ALTER TABLE `tl_sync_post_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `tl_sync_post_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `content` mediumtext NOT NULL COMMENT '正文',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态 0:关闭 1:启用',
  `created_at` int(10) unsigned NOT NULL COMMENT '创建时间',
  `modified_at` int(10) unsigned NOT NULL COMMENT '最近更新时间',
  `deleted_at` int(10) unsigned DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='讨论';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,1,'11','  每天十分钟，把握财经要点。  欢迎来到时代早课。  今天是2020年3月27日星期五。  1、【北上资金昨日净流出13.58亿海螺水泥净卖出1.47亿】  北上资金昨日净流出13.58亿元。沪股通方面，海螺水泥净卖出1.47亿，兴业银行净卖出1.13亿。深股通方面，洋河股份净卖出3.42亿，云南白药净卖出2.47亿。  2、【龙虎榜：闻泰科技复牌跌停一机构席位买入逾4亿元】  3月26日，闻泰科技(600745)复牌跌停，全天成交44亿元。盘后数据显示，两个机构席位合计买入4.84亿元，其中买一位置机构席位买入4.18亿元；三个机构席位合计卖出4.67亿元，北向资金卖出2.05亿元，卖一席位国泰君安宁波彩虹北路卖出3.18亿元。消息面上，闻泰科技拟63.34亿元收购安世剩余股份。  3、【百亿级私募仓位上周创近两年多新高】  私募排排网3月26日发布的国内股票私募基金仓位监测数据显示，在此前一周大举加仓7.08个百分点后，上周（3月16日至3月20日）百亿级私募在A股震荡下挫的市道中再度强势加仓5.58个百分点，目前其84.18%的平均仓位水平，已升至2018年2月14日以来的近两年多新高（按周度数据计算）。  4、【商务部：支持符合条件的国家级经开区高水平建设国际合作园区】  商务部办公厅印发《关于统筹做好新冠肺炎疫情防控和经济发展全面做好国家级经开区工作的通知》，通知要求，要深入推进“放管服”改革，加大向国家级经开区赋权力度。要做好特殊时期招商、安商、稳商工作，创新和优化招商引资方式，用足用好外经贸发展专项资金，争取新落地一批投资项目。支持符合条件的国家级经开区高水平建设国际合作园区。  5、【保险行业协会：2019年寿险电销保费首次出现下滑经营主体持续减少】  中国保险行业协会今天对外发布2019年度寿险电话营销行业发展形势分析报告。总体来看，2019年寿险电销市场规模保费首次出现下滑，累计实现规模保费175.5亿元，较2018年同比下滑17.8%。从经营主体来看，自2014年以来，经营寿险电销业务的公司逐年减少，2019年有3家公司逐步退出寿险电销市场，1家公司加入。  6、【广东324家上市公司全部复工125家公司复产率达100%】  据广东证监局数据，截至3月25日，广东辖区324家上市公司全部复工，其中，269家公司复工率超90%，77家公司复工率达100%，占比分别为83%、24%；222家公司复产率超90%，125家公司复产率达100%，占比分别为69%、39%，复工复产情况好于全国平均水平。  7、【金融委办公室地方协调机制（重庆市）成立】  3月26日，人民银行重庆营业管理部组织召开国务院金融委办公室地方协调机制（重庆市）第一次会议。此举，标志着金融委办公室地方协调机制在重庆市正式落地运行。  8、【我国率先实现水平井钻采深海“可燃冰”】  在水深1225米的海域，我国一举攻克深海浅软地层水平井钻采核心技术，成为全球首个采用水平井钻采技术试采海域天然气水合物的国家。  9、【外汇局：2019年12月末我国银行业对外金融资产11709亿美元】  外汇局：2019年12月末，我国银行业对外金融资产11709亿美元，对外负债13301亿美元，对外净负债1591亿美元，其中，人民币净负债3243亿美元，外币净资产1652亿美元。  10、【新世界发展(00017)3月26日斥2464.96万港元回购300万股】  新世界发展(00017)公布，于2020年03月26日，该公司以每股8.16-8.28港元的价格回购300万股，斥资2464.96万港元。  11、【寒武纪科创板上市申请获受理：阿里创投、科大讯飞等持股拟募资28亿元】  上交所3月26日消息，受理中科寒武纪科技股份有限公司科创板上市申请，保荐机构中信证券。公司选择第二款上市标准，预计上市后总市值不低于15亿元。公司实控人为陈天石，阿里创投、科大讯飞、湖北联想等持股。寒武纪拟发行不超过4010万股，募集资金投资于新一代云端训练芯片及系统等4个项目，拟使用募投资金约28亿元。2019年度，公司营收4.44亿元，净利润为亏损11.79亿元。  12、【广哈通信：拟收购健新科技45%股权】  广哈通信3月26日晚间公告，公司与张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）、温志成、钱涛、温利兰、广州创盈健科投资合伙企业（有限合伙）等8位股权出让方签署了《投资意向书》，出让方拟转让持有的健新科技45%股权；张振华、唐票林、刘勇、新余健云投资管理中心（有限合伙）作为业绩承诺方，另将其持有的健新科技6%的股份所对应的股东表决权授权予公司行使。本次交易构成重大资产重组。  13、【微信小范围上线“分付”功能】  微信小范围上线了“分付”功能。用户在使用微信支付时，可以使用“分付”先付款，再进行分期付款。开通微信分付和消费过程中，用户无需提前申请分期，在支付时直接选择分期即可。支付时，用户也不用提前取现，付款时直接选择“分付付款”即可。每期最低还款10%。分付会按照用户实际使用天数计算，还款时支付累计的利息。还款后，本金减少，利息也减少，随借随还。  14、【拼多多：全球7所博物馆将上拼多多直播带货】  3月27日，大都会艺术博物馆、汉景帝阳陵博物院、海南省博物馆、西汉南越王博物馆等全球七所顶级博物馆，将在拼多多开启直播，并上线销售近千种博物馆特色精华周边。  15、【格力申请涉及区块链技术的机器人相关专利】  天眼查数据显示，近日，由格力电器全资持股的珠海格力智能装备有限公司新增多项专利信息。公司申请了“防止机器人记录数据被篡改的方法和装置”专利，涉及区块链技术，用这种方法和装置实现极高的机器人应用记录数据防篡改的安全性。  16、【万科A：基本盘业绩稳定性高，地产+价值逐步凸显】  光大证券指出，2019年利润释放节奏趋于平滑，中期业绩稳定性较高。短期内土储无需过度担忧，拿地权益比例回升趋势明显。地产+业务健康发展，价值将逐步凸显。考虑到疫情对公司销售、拿地、竣工的短期影响，小幅下调2020-2021年预测EPS至3.96、4.55元（原为4.04、4.69元），引入2022年预测EPS为5.17元，3年CAGR约14.5%。公司经营风格稳健，信用优势明显，拥有较强的抗风险能力。中长期来看，重点布局的地产+领域均具备广泛需求，可提供充足的发展空间。  17、【佳宁娜(00126)完成出售连云港物业】  佳宁娜(00126)发布公告，就此前拟1.6亿元出售连云港物业。卖方已履行其于转让协议项下的所有义务，而买方已根据转让协议支付第三笔款项。因此，出售事项被视为已于2020年3月25日完成。  18、【大悦城地产(00207)附属拟发行不超过15亿元境内债券】  大悦城地产(00207)发布公告，该公司间接非全资附属公司中粮置业投资有限公司(发行人)将首期发行规模为不超过人民币15亿元境内债券。首期债券将分为两个品种：3年期固定利率债券(品种一债券);及5年期固定利率债券(品种二债券)。首期债券设品种间回拨选择权，回拨比例不受限制。  19、【通用股份：控股股东红豆集团拟增持1%-2%公司股份】  通用股份公告，公司控股股东红豆集团及其一致行动人拟计划自2020年3月27日起12个月内，通过上海证券交易所交易系统增持公司A股股份，累计增持比例不低于当前公司已发行总股份的1%，不超过当前公司已发行总股份的2%，增持股份价格不超过8.00元/股。  20、【美图吴欣鸿：合作开发小游戏，美图秀秀将内测电商直播】  3月26日，美图公司举行2019年全年业绩发布会电话会议，美图公司CEO吴欣鸿透露，4月份，美图秀秀将内测电商直播。此外，公司与第三方合作在线小游戏，目前已经接入3家小游戏的厂商，未来还会陆续接入。',0,1585119113,1585295369,NULL);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) NOT NULL COMMENT '用户昵称',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别 0:女 1:男',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `reputation` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '声望',
  `group_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '分组id',
  `join_time` int(10) unsigned NOT NULL COMMENT '加入时间',
  `join_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '加入ip',
  `last_login_time` int(10) unsigned NOT NULL COMMENT '最近登陆时间',
  `created_at` int(10) unsigned NOT NULL COMMENT '创建时间',
  `modified_at` int(10) unsigned NOT NULL COMMENT '更新时间',
  `deleted_at` int(10) unsigned DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2020-03-28 10:01:12
