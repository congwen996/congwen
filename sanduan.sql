/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50612
Source Host           : 127.0.0.1:3306
Source Database       : sanduan

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2015-10-27 12:04:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ecm_address
-- ----------------------------
DROP TABLE IF EXISTS `ecm_address`;
CREATE TABLE `ecm_address` (
  `addr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `region_id` int(10) unsigned DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `phone_tel` varchar(60) DEFAULT NULL,
  `phone_mob` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`addr_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_address
-- ----------------------------
INSERT INTO `ecm_address` VALUES ('1', '3', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888');
INSERT INTO `ecm_address` VALUES ('66', '855', '测试分成', '1402', '中国	湖北	孝感	应城市', '测试分成', '测试分成', '18144982994', '18144982994');
INSERT INTO `ecm_address` VALUES ('4', '21', '224', '2276', '中国	山东	济宁	邹城市', '45252545252', '273500', '111111111111', '11111111111');
INSERT INTO `ecm_address` VALUES ('5', '27', '呜呜呜', '279', '中国	甘肃	嘉峪关	嘉峪关市', '呃呃呃呃', '', '13304766575', '');
INSERT INTO `ecm_address` VALUES ('7', '56', '破坏上下班', '45', '中国	安徽	巢湖	庐江县', '上在职夺取', '525252', '13800138000', '13800138000');
INSERT INTO `ecm_address` VALUES ('8', '64', '黄', '435', '中国	广东	揭阳	榕城区', '仙桥', '', '18354227232', '');
INSERT INTO `ecm_address` VALUES ('9', '66', '黄', '2230', '中国	山东	青岛	胶州市', '青岛工学院', '', '18354227232', '');
INSERT INTO `ecm_address` VALUES ('10', '80', '呵呵', '1', '中国', '好的', '123456', '13686878789', '13696963633');
INSERT INTO `ecm_address` VALUES ('11', '87', '欧阳鲁林', '409', '中国	广东	佛山	顺德区', '解放路36号', '', '18975577981', '02081346639');
INSERT INTO `ecm_address` VALUES ('12', '90', '露露', '417', '中国	广东	河源	龙川县', '韩国', '', '13555555555', '12855855');
INSERT INTO `ecm_address` VALUES ('13', '93', '2342', '4', '中国	北京	北京	东城区', '234234', '2342', '13800138000', '');
INSERT INTO `ecm_address` VALUES ('14', '96', '有', '4', '中国	北京	北京	东城区', '大家', '621000', '13444555', '');
INSERT INTO `ecm_address` VALUES ('15', '100', 'zaixialei', '1', '中国', '玫瑰陈', '454550', '', '13346796685');
INSERT INTO `ecm_address` VALUES ('16', '107', '舅舅家j', '1', '中国', '不能难看', '', '13761477312', '');
INSERT INTO `ecm_address` VALUES ('17', '118', '小鸡', '279', '中国	甘肃	嘉峪关	嘉峪关市', '基本安路', '', '13389562345', '');
INSERT INTO `ecm_address` VALUES ('18', '125', '科技', '9', '中国	北京	北京	宣武区', '健康快乐', '', '13599998888', '');
INSERT INTO `ecm_address` VALUES ('19', '130', '啊', '279', '中国	甘肃	嘉峪关	嘉峪关市', 'qqq', '', '13800000000', '');
INSERT INTO `ecm_address` VALUES ('20', '133', 'qqq', '1', '中国', 'ww', '', '13800000000', '');
INSERT INTO `ecm_address` VALUES ('21', '170', '热热', '5', '中国	北京	北京	西城区', '热热而二丰富的发的', '', '', '14444444444');
INSERT INTO `ecm_address` VALUES ('22', '183', 'qewewqqw', '2831', '中国	四川	自贡	大安区', 'qwewqwqeqw', 'qwewqeqweqw', '123456', '');
INSERT INTO `ecm_address` VALUES ('23', '190', '测试', '1660', '中国	江苏	苏州	金阊区', '测试', '', '18896575873', '');
INSERT INTO `ecm_address` VALUES ('24', '99', '连志宝', '2953', '中国	新疆	乌鲁木齐	头屯河区', '西环北路799号', '', '17709918190', '09913770373');
INSERT INTO `ecm_address` VALUES ('25', '194', '一直', '417', '中国	广东	河源	龙川县', '考虑考虑', '', '13553263256', '');
INSERT INTO `ecm_address` VALUES ('26', '198', '刚刚好', '264', '中国	甘肃	定西	通渭县', '市区突突突天', '', '12345678912', '');
INSERT INTO `ecm_address` VALUES ('27', '202', '吕亚龙', '2463', '中国	山西	朔州	朔城区', '华源', '', '13834448214', '13834448214');
INSERT INTO `ecm_address` VALUES ('28', '210', 'rgvb', '1635', '中国	吉林	延边	延吉市', 'dfgbsdbsd', '', '15143333333', '2347899');
INSERT INTO `ecm_address` VALUES ('29', '209', 'rrrrr', '1635', '中国	吉林	延边	延吉市', 'eeeeeeeeeee', '133000', '34242424', '13134343234');
INSERT INTO `ecm_address` VALUES ('30', '236', '阮晓蔓', '1', '中国', '惠州市惠城区演达大道46号惠州学院九栋', '', '15768651697', '631697');
INSERT INTO `ecm_address` VALUES ('32', '243', '崔萍', '1899', '中国	辽宁	沈阳	和平区', '长白岛', '', '13909833226', '');
INSERT INTO `ecm_address` VALUES ('33', '244', 'p', '3', '中国	北京	北京', '北京', '', '666666', '666666');
INSERT INTO `ecm_address` VALUES ('34', '206', '王测试', '2317', '中国	山东	泰安	新泰市', '新泰', '', '18766657898', '18766657898');
INSERT INTO `ecm_address` VALUES ('35', '246', 'p', '3', '中国	北京	北京', 'p', '', '1399999999', '666666');
INSERT INTO `ecm_address` VALUES ('36', '201', '方芳芳', '3', '中国	北京	北京', '反反复复', '', '', '13333333333');
INSERT INTO `ecm_address` VALUES ('37', '258', '麻麻', '7', '中国	北京	北京	朝阳区', '健康快乐健康快乐', '', '13566669999', '');
INSERT INTO `ecm_address` VALUES ('38', '296', 'jdjj', '37', '中国	安徽	蚌埠	东市区', '柳州市桂中大道阳光100', '', '', '15577752555');
INSERT INTO `ecm_address` VALUES ('39', '303', '测试', '230', '中国	福建	厦门	集美区', '还不', '', '12586895896', '86886668');
INSERT INTO `ecm_address` VALUES ('40', '335', 'julley', '428', '中国	广东	江门	蓬江区', '泰和广场', '', '13286173101', '');
INSERT INTO `ecm_address` VALUES ('41', '351', 'Cs', '187', '中国	福建	宁德	霞浦县', 'Cs', '', '13875221212', '');
INSERT INTO `ecm_address` VALUES ('42', '366', '李涛', '465', '中国	广东	汕头', '龙眼西2巷6号', '', '13068927736', '13068927736');
INSERT INTO `ecm_address` VALUES ('43', '368', '金', '410', '中国	广东	佛山	三水区', '3467', '', '13677646777', '13746463446');
INSERT INTO `ecm_address` VALUES ('44', '416', '（24688', '3206', '中国	浙江', '灯火', '', '135567777', '3356678');
INSERT INTO `ecm_address` VALUES ('45', '417', '批准的', '36', '中国	安徽	蚌埠	中市区', '仿佛规范', '', '13764657576', '3578888');
INSERT INTO `ecm_address` VALUES ('46', '419', 'hhh', '23', '中国	安徽	安庆', '比比画画', '', '1378770909', '');
INSERT INTO `ecm_address` VALUES ('47', '420', '给狗狗', '22', '中国	安徽', 'v 会根据 v 吧', '', '13787879900', '');
INSERT INTO `ecm_address` VALUES ('48', '1', '王仁', '1797', '中国	江西	抚州	南城县', '好人网', '251500', '18678383791', '18678383791');
INSERT INTO `ecm_address` VALUES ('49', '449', '大超', '376', '中国	广东	东莞	万江区', '蔚蓝路36号', '446565', '15705227266', '');
INSERT INTO `ecm_address` VALUES ('50', '472', '刘二', '189', '中国	福建	宁德	屏南县', '波兰街', '342500', '18546321235', '');
INSERT INTO `ecm_address` VALUES ('51', '475', 'hhhh', '279', '中国	甘肃	嘉峪关	嘉峪关市', 'jjhh', '', '18366663333', '15033336666');
INSERT INTO `ecm_address` VALUES ('52', '587', '11111', '1369', '中国	湖北	十堰', '1111', '', '111111111', '111111');
INSERT INTO `ecm_address` VALUES ('53', '597', '324324', '1', '中国', '324324', '32432', '432324324', '32432432');
INSERT INTO `ecm_address` VALUES ('54', '603', '王慧志', '805', '中国	河北	石家庄	裕华区', '育才', '', '15368963358', '');
INSERT INTO `ecm_address` VALUES ('55', '628', 'rocky', '3263', '中国	浙江	宁波	海曙区', '阳刚广场', '', '13566302276', '');
INSERT INTO `ecm_address` VALUES ('62', '714', '阿涛', '365', '中国	广东	深圳	南山区', '南新路', '', '13825200198', '13825200198');
INSERT INTO `ecm_address` VALUES ('57', '652', '李小姐', '350', '中国	广东	广州	天河区', '新城花园E幢2203室', '510520', '', '13899001234');
INSERT INTO `ecm_address` VALUES ('58', '654', '黄亚东', '1', '中国', '湖北省随州市场', '', '15997864455', '15997864555');
INSERT INTO `ecm_address` VALUES ('59', '691', 'jiamengdian', '993', '中国	河南	郑州	郑东新区', 'jiamengdian', '450000', '12345678901', '12343545899');
INSERT INTO `ecm_address` VALUES ('60', '694', '测试', '1', '中国', '嗯', '', '18325749062', '1862874906');
INSERT INTO `ecm_address` VALUES ('61', '666', '也嗯', '986', '中国	河南	郑州	金水区', 'all 几口就继续吐', '', '15166228787', '');
INSERT INTO `ecm_address` VALUES ('63', '720', '涵试中', '1', '中国', '理我的孩子伤不起', '', '13800138000', '13800138000');
INSERT INTO `ecm_address` VALUES ('64', '720', '去啊去啊', '1', '中国', '痛苦聚聚看咯', '', '13800138000', '88552233');
INSERT INTO `ecm_address` VALUES ('65', '699', '把', '281', '中国	甘肃	金昌	金川区', '张晓', '', '2225588', '4461278');
INSERT INTO `ecm_address` VALUES ('67', '969', '欧阳', '431', '中国	广东	江门	开平市', '他妈呀呀呀', '', '588885555', '');
INSERT INTO `ecm_address` VALUES ('68', '972', '欧', '410', '中国	广东	佛山	三水区', '幽默感', '', '5866555886', '');
INSERT INTO `ecm_address` VALUES ('69', '486', 'hhn', '588', '中国	广西	防城港', '像个个个', '', '589856699', '');
INSERT INTO `ecm_address` VALUES ('70', '602', 'fgfd', '610', '中国	广西	河池	大化', 's', '4', '', '15177524125');

-- ----------------------------
-- Table structure for ecm_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `ecm_auth_group`;
CREATE TABLE `ecm_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_auth_group
-- ----------------------------
INSERT INTO `ecm_auth_group` VALUES ('1', '默认工作组', '1', '1,2');
INSERT INTO `ecm_auth_group` VALUES ('2', '新闻管理', '1', '2');

-- ----------------------------
-- Table structure for ecm_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `ecm_auth_group_access`;
CREATE TABLE `ecm_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_auth_group_access
-- ----------------------------
INSERT INTO `ecm_auth_group_access` VALUES ('16', '1');

-- ----------------------------
-- Table structure for ecm_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `ecm_auth_rule`;
CREATE TABLE `ecm_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_auth_rule
-- ----------------------------
INSERT INTO `ecm_auth_rule` VALUES ('1', 'Admin/Index/index', '默认', '1', '1', '');
INSERT INTO `ecm_auth_rule` VALUES ('2', 'Admin/News/del', '新闻删除操作', '1', '1', '');

-- ----------------------------
-- Table structure for ecm_brand
-- ----------------------------
DROP TABLE IF EXISTS `ecm_brand`;
CREATE TABLE `ecm_brand` (
  `brand_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) NOT NULL DEFAULT '',
  `brand_logo` varchar(255) DEFAULT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `if_show` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `tag` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`brand_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_brand
-- ----------------------------
INSERT INTO `ecm_brand` VALUES ('147', '米其林', 'data/files/mall/brand/147.jpg', '1', '1', '11', '1', '轮胎');
INSERT INTO `ecm_brand` VALUES ('148', '固特异', 'data/files/mall/brand/148.jpg', '2', '1', '11', '1', '轮胎');
INSERT INTO `ecm_brand` VALUES ('149', '普利司通', 'data/files/mall/brand/149.jpg', '3', '1', '11', '1', '轮胎');
INSERT INTO `ecm_brand` VALUES ('150', '邓禄普', 'data/files/mall/brand/150.jpg', '4', '1', '11', '1', '轮胎');
INSERT INTO `ecm_brand` VALUES ('151', '前进', 'data/files/mall/brand/151.jpg', '5', '1', '11', '1', '轮胎');
INSERT INTO `ecm_brand` VALUES ('152', '朝阳', 'data/files/mall/brand/152.jpg', '6', '1', '11', '1', '轮胎');
INSERT INTO `ecm_brand` VALUES ('153', '双钱', 'data/files/mall/brand/153.jpg', '7', '1', '11', '1', '轮胎');
INSERT INTO `ecm_brand` VALUES ('154', '回力', 'data/files/mall/brand/154.jpg', '8', '1', '11', '1', '轮胎');
INSERT INTO `ecm_brand` VALUES ('155', '风神', 'data/files/mall/brand/155.jpg', '9', '1', '11', '1', '轮胎');
INSERT INTO `ecm_brand` VALUES ('156', '多力通', 'data/files/mall/brand/156.jpg', '10', '1', '11', '1', '轮胎');
INSERT INTO `ecm_brand` VALUES ('157', '东洋', 'data/files/mall/brand/157.jpg', '11', '1', '11', '1', '轮胎');
INSERT INTO `ecm_brand` VALUES ('82', '宝马', 'data/files/mall/brand/82.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('83', '奥迪', 'data/files/mall/brand/83.jpg', '1', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('84', '奔驰', 'data/files/mall/brand/84.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('85', '本田', 'data/files/mall/brand/85.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('86', '雪佛兰', 'data/files/mall/brand/86.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('87', '大众', 'data/files/mall/brand/87.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('88', '雷克萨斯', 'data/files/mall/brand/88.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('89', '别克', 'data/files/mall/brand/89.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('90', '长安', 'data/files/mall/brand/90.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('91', '福特', 'data/files/mall/brand/91.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('92', '起亚', 'data/files/mall/brand/92.gif', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('93', '宝骏', 'data/files/mall/brand/93.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('94', '福田', 'data/files/mall/brand/94.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('95', '奇瑞', 'data/files/mall/brand/95.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('96', 'MG', 'data/files/mall/brand/96.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('97', '雪铁龙', 'data/files/mall/brand/97.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('98', '日产', 'data/files/mall/brand/98.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('99', '一汽', 'data/files/mall/brand/99.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('100', '现代', 'data/files/mall/brand/100.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('101', '比亚迪', 'data/files/mall/brand/101.gif', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('102', '丰田', 'data/files/mall/brand/102.jpg', '255', '1', '0', '1', '汽车');
INSERT INTO `ecm_brand` VALUES ('158', '海尔', 'data/files/mall/brand/158.jpg', '255', '0', '666', '0', '电器');

-- ----------------------------
-- Table structure for ecm_cart
-- ----------------------------
DROP TABLE IF EXISTS `ecm_cart`;
CREATE TABLE `ecm_cart` (
  `rec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL DEFAULT '',
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `specification` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `goods_image` varchar(255) DEFAULT NULL,
  `group_id` int(10) unsigned DEFAULT NULL,
  `old_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `isdel` tinyint(1) NOT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=576 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_cart
-- ----------------------------
INSERT INTO `ecm_cart` VALUES ('30', '15', '06faeb2af0109a646abe83416bb45bdb', '2', '51', '飞利浦新安怡标准口径奶嘴', '51', '', '14.00', '1', 'data/files/store_2/goods_173/small_201312262206139520.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('62', '42', 'e840be4432bc2249c295c472ad628432', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('365', '392', '2112f34bdda258371a27f6764ef1741e', '2', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('53', '35', '1d5eca24b5cdc5bb8f6bc2ce41ce8a1f', '2', '95', 'HTC 8S（A620t）3G手机TD-SCDMA/GSM', '95', '', '688.00', '1', 'data/files/store_2/goods_134/small_201312262305341913.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('52', '35', '1d5eca24b5cdc5bb8f6bc2ce41ce8a1f', '2', '96', '诺基亚（NOKIA） Lumia 720T 3G手机 TD-SCDMA/GSM', '96', '', '1749.00', '1', 'data/files/store_2/goods_170/small_201312262306104597.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('51', '35', '1d5eca24b5cdc5bb8f6bc2ce41ce8a1f', '2', '85', '先锋 电暖气CY11BB-11 DS1102 油汀11片 赠晾衣架加湿盒', '85', '', '399.00', '1', 'data/files/store_2/goods_6/small_201312262256466045.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('50', '35', '1d5eca24b5cdc5bb8f6bc2ce41ce8a1f', '2', '88', '美妙足浴盆MM-13H全盖泡脚加热足浴器足浴盆泡脚盆', '88', '', '249.00', '1', 'data/files/store_2/goods_124/small_201312262258442397.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('362', '213', '562f24ccef5e7f383ddf45847334d149', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('399', '461', 'cc3e81a6a6eb086e4e5fd81b39861ad4', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('47', '30', 'f20e563cc40661a965951cd559824635', '2', '97', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '97', '', '1549.00', '1', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('19', '10', '3f662738e64de86d4cb363c0bb518da1', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('31', '16', '354ddc1f79ad85e7a53903ac55336823', '2', '66', '2支装妙洁C型点断式垃圾袋(中)', '66', '', '2.90', '1', 'data/files/store_2/goods_186/small_201312262223061143.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('366', '392', '2112f34bdda258371a27f6764ef1741e', '92', '108', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  74Q82', '112', '', '169.00', '1', 'data/files/store_92/goods_176/small_201502250349364336.jpeg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('82', '69', '06982126bbff9edbd71eb4ad88ef4ba3', '2', '11', '海泉 贡梨', '11', '', '25.50', '1', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('368', '404', '427c888be1afeef34403eae135d1d3fc', '2', '113', '2015妮维雅女士新款内衣多种颜色可选', '123', '颜色:黑 尺码:XL', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('474', '698', '78ff879fe9eb088ef769f8b8dd49fc15', '2', '93', '三星(samsung)s5698 3G手机 TD-SCDMA/GSM', '93', '', '199.00', '1', 'data/files/store_2/goods_48/small_201312262304085587.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('93', '79', '402cf1238987ee969f56633afb0f588f', '2', '13', '海泉 进口车厘子 圣诞款', '13', '', '108.00', '1', 'data/files/store_2/goods_2/small_201312262103227833.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('126', '104', 'e764c13bb9a246b94248a7aa4e557669', '2', '8', '杰记美国无籽黑提（清香蜜甜，爽脆无渣）', '8', '', '38.80', '1', 'data/files/store_2/goods_63/small_201312262057435880.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('113', '93', '', '2', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('128', '111', '', '2', '47', '川南干爹风味豆豉210g', '47', '', '5.50', '1', 'data/files/store_2/goods_76/small_201312262157569987.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('129', '111', '', '2', '22', '华佗十全补酒700ml', '22', '', '36.00', '1', 'data/files/store_2/goods_6/small_201312262113269791.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('130', '113', 'be065bf18b1c0d990f1db8a7d5b69f46', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('132', '114', '6f226cd553c356a17121cf67d85b9001', '2', '13', '海泉 进口车厘子 圣诞款', '13', '', '108.00', '2', 'data/files/store_2/goods_2/small_201312262103227833.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('195', '170', '', '2', '10', '杰记 国产 新鲜 香甜 库尔勒香梨礼盒', '10', '', '108.80', '1', 'data/files/store_2/goods_31/small_201312262100319871.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('198', '171', 'fed6fa7517cdde797b2f088f21a436d8', '2', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('283', '259', 'edd830228a4f8080273623cc493db3ab', '2', '112', 'sdffsfasd', '118', '颜色:hei 大小:小', '33.00', '2', 'data/files/store_2/goods_36/small_201503182027165431.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('222', '197', '', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('254', '219', '18357701ae38c97d0e57ec7369dda04d', '2', '12', '杰记 国产 红肉 新鲜 红心蜜柚', '12', '', '28.50', '5', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('208', '219', 'b1e58ed0089548099caccffeb1ab8574', '2', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '2', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('205', '219', '8ac82f0e7792eb18c3d5a8fdcc576b76', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '2', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('253', '219', '18357701ae38c97d0e57ec7369dda04d', '2', '58', '飞利浦新安怡智能蒸汽消毒锅', '58', '', '774.00', '3', 'data/files/store_2/goods_106/small_201312262211467126.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('184', '219', 'd00a92f71771a1a195b8b03d5260e448', '2', '11', '海泉 贡梨', '11', '', '25.50', '4', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('320', '212', 'a6e6a7822710090f49ca32e3c98862b3', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('313', '219', 'a89be65638110f90ec93e555dd6b8f0e', '2', '91', 'HTC T528t 双卡双待双通TD-SCDMA/GSM', '91', '', '1298.00', '2', 'data/files/store_2/goods_155/small_201312262302356953.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('155', '124', 'ba9982c792a9fad8c4a9086f31bbaeb4', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('168', '219', 'a240ecf313e12813ebf3d5700b9a3211', '2', '38', '澳门香记特产 XO酱金钱猪肉脯/肉干 250g 特价 嘴馋了', '38', '', '21.00', '2', 'data/files/store_2/goods_80/small_201312262148001815.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('178', '145', '37d9641c14efcf713ed12df409cfab30', '2', '9', '海泉 进口红提 新鲜配送', '9', '', '50.00', '1', 'data/files/store_2/goods_120/small_201312262058402887.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('249', '217', '', '2', '27', '上海老酒六年陈500ml', '27', '', '666.00', '1', 'data/files/store_2/goods_160/small_201312262119204138.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('169', '141', '', '2', '98', '酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM', '98', '', '1588.00', '1', 'data/files/store_2/goods_107/small_201312262308271759.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('280', '251', '427595ea268334667aadbc78ca6340d1', '2', '76', 'Miiow猫人 2013新款夏季女士性感豹纹印花舒适中腰提臀三角裤1397...', '76', '', '390.00', '1', 'data/files/store_2/goods_98/small_201312262238182827.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('206', '179', '8bd66263a5bb37bf7425401d78a86b86', '2', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('248', '217', '', '2', '112', 'sdffsfasd', '116', '', '33.00', '1', 'data/files/store_2/goods_36/small_201503182027165431.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('330', '306', 'e280f0cb8a0974304da1532792c9c634', '2', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('257', '306', '4162aab9dbe3d13240001037e9b0bddb', '2', '36', '泰国进口天然零食品 特级泰国植生桂圆肉干 龙眼肉 果干蜜饯 140g...', '36', '', '22.00', '1', 'data/files/store_2/goods_113/small_201312262145134866.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('358', '306', '54b49ec902f8ab2458847e0327e8f2ec', '2', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('318', '269', '', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('303', '306', 'ffb98521d41897db578233d9ff578255', '2', '73', '新品女装 荷叶边外衫 碎花裙 裙子夏季两件套 麻棉长袖连衣裙F512...', '73', '', '750.00', '1', 'data/files/store_2/goods_142/small_201312262235429182.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('357', '384', '54b49ec902f8ab2458847e0327e8f2ec', '2', '12', '杰记 国产 红肉 新鲜 红心蜜柚', '12', '', '28.50', '1', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('331', '322', '3c68d4d9cab62e6a3d4986c27cc301d0', '2', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('327', '305', '7ba9d7980fe5d8e3b6d7bd413a2fe56e', '92', '106', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  82K601', '110', '', '1.00', '1', 'data/files/store_92/goods_19/small_201502250356598324.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('336', '334', '', '92', '107', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  81K501', '111', '', '109.00', '1', 'data/files/store_92/goods_174/small_201502250349344691.jpeg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('333', '320', '1b5be38f1c621c9ce6c874dae77db116', '2', '97', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '97', '', '1549.00', '1', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('407', '476', '510dead3bb5075afcb40df4c4b68f67c', '2', '99', '测试商品', '100', '颜色:红色 尺码:M', '0.19', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('403', '475', '35dfbcddd0bcefd67433e62e901836d3', '2', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('409', '0', '487813f0a776bf2c07375707a39fa360', '2', '99', '测试商品', '102', '颜色:绿色 尺码:M', '0.39', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('391', '434', '4f51af1be89fc971a21b6378076fcaf0', '2', '49', '川崎火锅调料海麻辣100g', '49', '', '2.60', '1', 'data/files/store_2/goods_162/small_201312262159227323.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('397', '459', '2b781a61096b4a7cc9067779f367b192', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('410', '480', '813ad6579f427adc43fc2b0d0b5781e7', '2', '98', '酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM', '98', '', '1588.00', '1', 'data/files/store_2/goods_107/small_201312262308271759.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('417', '487', '4fa14e720b6e5a8cbd9ac85dc3dd737c', '452', '167', '2015依一秀水新款夏装F5508', '180', '', '192.00', '1', '2418cbf6447ae470334884f355a354b4;494cc0db2db8afd747cef4b9cc654490;4cd75bb1f7ee30fd87c66d6419cbbd90;6f6a9dc3faaa44ecd915dbb6f061e350;d7152f60609a88b264c0642e565a0bfc;', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('422', '549', '449c92d55ebb433a4a076cf006e36310', '2', '97', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '97', '', '1549.00', '1', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('439', '580', '70086f717d7f54d49acb7240f092a29f', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('426', '588', 'b727932bd4b6c94ac45247952a0add0c', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('457', '665', '04dc85b5d8a131b231f52eed737e01ae', '2', '8', '杰记美国无籽黑提（清香蜜甜，爽脆无渣）', '8', '', '38.80', '1', 'data/files/store_2/goods_63/small_201312262057435880.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('428', '590', 'ac547c951ee64a1b95df6f9005c40353', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('473', '700', '1972429b6599a4d162012c3bb3a6b960', '2', '319', '金朗点秒机', '332', '', '1200.00', '1', '', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('527', '959', '062baca4dc48fcb5838f7784920c6f92', '2', '82', '飞利浦 充电剃须刀HQ6076 弹出式修发器刀头水洗', '82', '', '499.00', '1', 'data/files/store_2/goods_9/small_201312262253293800.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('546', '1003', '51219112c002431fef600a17ba9b03c3', '2', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('492', '720', '1125e080a334f5097d0afd5acefa16e4', '2', '99', '测试商品', '101', '颜色:绿色 尺码:S', '0.29', '2', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('493', '722', 'f9970f1018b87e4b2757e7c6528d16b3', '100', '333', '学院风小清新女生必备款春装新款女装3D狮子头显瘦简约条纹短袖T恤4-9', '346', '', '39.00', '1', 'data/files/store_100/goods_71/small_201504231011116069.jpeg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('548', '486', '848033caad9a0c9c95b4d71856584760', '2', '2', '袋装水果', '2', '', '100.00', '1', 'data/files/store_2/goods_198/small_201312262049586818.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('549', '1003', '51219112c002431fef600a17ba9b03c3', '2', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('551', '1014', 'f3884031291f127ccd93689ce6932e02', '2', '94', '华为（Huawei）T8951（G510）3G手机 TD-SCDMA/GSM', '94', '', '599.00', '1', 'data/files/store_2/goods_93/small_201312262304537590.jpg', '0', '0.00', '0');
INSERT INTO `ecm_cart` VALUES ('569', '970', '5dec0ce443eab31fcf2ca27aa50623f6', '2', '347', '测试商品', '359', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_108/small_201505030025082592.jpeg', '0', '0.00', '0');

-- ----------------------------
-- Table structure for ecm_category_goods
-- ----------------------------
DROP TABLE IF EXISTS `ecm_category_goods`;
CREATE TABLE `ecm_category_goods` (
  `cate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cate_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_category_goods
-- ----------------------------
INSERT INTO `ecm_category_goods` VALUES ('448', '1');
INSERT INTO `ecm_category_goods` VALUES ('448', '2');
INSERT INTO `ecm_category_goods` VALUES ('448', '3');
INSERT INTO `ecm_category_goods` VALUES ('448', '4');
INSERT INTO `ecm_category_goods` VALUES ('448', '5');
INSERT INTO `ecm_category_goods` VALUES ('448', '6');
INSERT INTO `ecm_category_goods` VALUES ('448', '7');
INSERT INTO `ecm_category_goods` VALUES ('448', '8');
INSERT INTO `ecm_category_goods` VALUES ('448', '9');
INSERT INTO `ecm_category_goods` VALUES ('448', '10');
INSERT INTO `ecm_category_goods` VALUES ('448', '12');
INSERT INTO `ecm_category_goods` VALUES ('448', '13');
INSERT INTO `ecm_category_goods` VALUES ('448', '14');
INSERT INTO `ecm_category_goods` VALUES ('448', '15');
INSERT INTO `ecm_category_goods` VALUES ('448', '99');
INSERT INTO `ecm_category_goods` VALUES ('448', '335');
INSERT INTO `ecm_category_goods` VALUES ('448', '347');
INSERT INTO `ecm_category_goods` VALUES ('449', '16');
INSERT INTO `ecm_category_goods` VALUES ('449', '19');
INSERT INTO `ecm_category_goods` VALUES ('449', '20');
INSERT INTO `ecm_category_goods` VALUES ('449', '21');
INSERT INTO `ecm_category_goods` VALUES ('449', '22');
INSERT INTO `ecm_category_goods` VALUES ('449', '23');
INSERT INTO `ecm_category_goods` VALUES ('449', '24');
INSERT INTO `ecm_category_goods` VALUES ('449', '25');
INSERT INTO `ecm_category_goods` VALUES ('450', '30');
INSERT INTO `ecm_category_goods` VALUES ('450', '31');
INSERT INTO `ecm_category_goods` VALUES ('450', '34');
INSERT INTO `ecm_category_goods` VALUES ('450', '35');
INSERT INTO `ecm_category_goods` VALUES ('450', '36');
INSERT INTO `ecm_category_goods` VALUES ('450', '37');
INSERT INTO `ecm_category_goods` VALUES ('472', '345');
INSERT INTO `ecm_category_goods` VALUES ('472', '346');

-- ----------------------------
-- Table structure for ecm_cate_pvs
-- ----------------------------
DROP TABLE IF EXISTS `ecm_cate_pvs`;
CREATE TABLE `ecm_cate_pvs` (
  `cate_id` int(11) NOT NULL,
  `pvs` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_cate_pvs
-- ----------------------------
INSERT INTO `ecm_cate_pvs` VALUES ('19', '1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
INSERT INTO `ecm_cate_pvs` VALUES ('20', '1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
INSERT INTO `ecm_cate_pvs` VALUES ('97', '1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
INSERT INTO `ecm_cate_pvs` VALUES ('1', '1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14;6:1');
INSERT INTO `ecm_cate_pvs` VALUES ('470', '6:16;6:17;6:18;6:19');
INSERT INTO `ecm_cate_pvs` VALUES ('14', '3:3:10;5:13:14');

-- ----------------------------
-- Table structure for ecm_collect
-- ----------------------------
DROP TABLE IF EXISTS `ecm_collect`;
CREATE TABLE `ecm_collect` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'goods',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`,`type`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_collect
-- ----------------------------
INSERT INTO `ecm_collect` VALUES ('2', 'goods', '58', '', '1423892775');
INSERT INTO `ecm_collect` VALUES ('2', 'goods', '73', '', '1424490411');
INSERT INTO `ecm_collect` VALUES ('118', 'store', '92', '', '1425935981');
INSERT INTO `ecm_collect` VALUES ('133', 'goods', '14', '', '1426026541');
INSERT INTO `ecm_collect` VALUES ('133', 'store', '2', '', '1426026567');
INSERT INTO `ecm_collect` VALUES ('235', 'store', '2', '', '1426911300');
INSERT INTO `ecm_collect` VALUES ('2', 'store', '2', '', '1427830748');
INSERT INTO `ecm_collect` VALUES ('712', 'goods', '99', '', '1429688553');
INSERT INTO `ecm_collect` VALUES ('879', 'goods', '91', '', '1430247394');
INSERT INTO `ecm_collect` VALUES ('1', 'goods', '99', '', '1430282670');
INSERT INTO `ecm_collect` VALUES ('3', 'goods', '347', '', '1437154450');
INSERT INTO `ecm_collect` VALUES ('3', 'goods', '99', '', '1437188164');
INSERT INTO `ecm_collect` VALUES ('3', 'goods', '22', '', '1437343897');
INSERT INTO `ecm_collect` VALUES ('3', 'goods', '15', '', '1437344402');
INSERT INTO `ecm_collect` VALUES ('2', 'goods', '347', '', '1437763061');

-- ----------------------------
-- Table structure for ecm_gcategory
-- ----------------------------
DROP TABLE IF EXISTS `ecm_gcategory`;
CREATE TABLE `ecm_gcategory` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cate_name` varchar(100) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `if_show` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`cate_id`),
  KEY `store_id` (`store_id`,`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=474 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_gcategory
-- ----------------------------
INSERT INTO `ecm_gcategory` VALUES ('1', '0', '果蔬生鲜', '0', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('2', '0', '休闲食品、酒水饮料', '0', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('3', '0', '进口食品、进口乳品', '0', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('4', '0', '粮油干货、厨房调料', '0', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('5', '0', '美容化妆、个人护理', '0', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('6', '0', '母婴用品、 玩具', '0', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('7', '0', '厨房、清洁、卫浴用品', '0', '255', '0');
INSERT INTO `ecm_gcategory` VALUES ('8', '0', '家居生活、汽车用品', '0', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('9', '0', '大家电、生活电器', '0', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('10', '0', '服饰箱包鞋靴、 运动', '0', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('11', '0', '钟表、 礼品、 图书报刊', '0', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('14', '0', '水果', '1', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('15', '0', '蔬菜', '1', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('16', '0', '肉类', '1', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('17', '0', '面豆制品', '1', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('18', '0', '南北干货', '1', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('19', '0', '苹果', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('20', '0', '葡萄', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('21', '0', '红提', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('22', '0', '柚子', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('23', '0', '西瓜', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('24', '0', '甜瓜', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('25', '0', '芒果', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('26', '0', '橙梨', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('27', '0', '柠檬', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('28', '0', '桃子', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('29', '0', '石榴', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('30', '0', '蓝莓', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('31', '0', '木瓜', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('32', '0', '哈密瓜', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('33', '0', '火龙果', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('34', '0', '车厘子', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('35', '0', '黑布林', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('36', '0', '猕猴桃', '14', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('37', '0', '美食净菜', '15', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('38', '0', '葱姜蒜', '15', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('39', '0', '菌菇类', '15', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('40', '0', '有机类', '15', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('41', '0', '瓜果类', '15', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('42', '0', '叶菜', '15', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('43', '0', '根类', '15', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('44', '0', '豆类', '15', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('45', '0', '茎类', '15', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('46', '0', '牛肉', '16', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('47', '0', '猪肉', '16', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('48', '0', '鸡肉', '16', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('49', '0', '鸭肉', '16', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('50', '0', '生鲜豆品', '17', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('51', '0', '熟食豆品', '17', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('52', '0', '淀粉制品', '17', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('53', '0', '香菇', '18', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('54', '0', '枸杞', '18', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('55', '0', '桂圆', '18', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('56', '0', '莲子', '18', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('57', '0', '木耳', '18', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('58', '0', '银耳', '18', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('59', '0', '黄花菜', '18', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('60', '0', '百合干', '18', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('61', '0', '休闲零食', '2', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('62', '0', '饼干糕点', '2', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('63', '0', '牛奶乳品', '2', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('64', '0', '酒类商城', '2', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('65', '0', '糖/巧克力', '2', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('66', '0', '饮料饮品', '2', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('67', '0', '冲调饮品', '2', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('68', '0', '坚果', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('69', '0', '鱼干/海味即食', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('70', '0', '薯片', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('71', '0', '枣类', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('72', '0', '炒货', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('73', '0', '禽类', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('74', '0', '葡萄干', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('75', '0', '蜜饯', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('76', '0', '小食', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('77', '0', '肉干肉脯/豆干/熟食', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('78', '0', '新疆红枣', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('79', '0', '膨化', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('80', '0', '果冻/布丁', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('81', '0', '海苔', '61', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('82', '0', '饼干', '62', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('83', '0', '蛋糕', '62', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('84', '0', '传统糕点', '62', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('85', '0', '月饼', '62', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('86', '0', '西式糕点', '62', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('87', '0', '其它小点心', '62', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('88', '0', '风味奶', '63', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('89', '0', '纯牛奶', '63', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('90', '0', '酸奶', '63', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('91', '0', '儿童奶', '63', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('92', '0', '啤酒', '64', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('93', '0', '进口啤酒', '64', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('94', '0', '进口葡萄酒', '64', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('95', '0', '白酒', '64', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('96', '0', '黄酒', '64', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('97', '0', '葡萄酒/红酒', '64', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('98', '0', '滋补酒', '64', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('99', '0', '果酒', '64', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('100', '0', '巧克力', '65', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('101', '0', '糖果', '65', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('102', '0', '口香糖', '65', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('103', '0', '功能饮料', '66', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('104', '0', '碳酸饮料', '66', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('105', '0', '果汁/蔬菜汁', '66', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('106', '0', '茶饮料', '66', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('107', '0', '水', '66', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('108', '0', '果味饮料', '66', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('109', '0', '咖啡饮料', '66', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('110', '0', '乳品', '66', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('111', '0', '茶叶', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('112', '0', '咖啡', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('113', '0', '奶茶', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('114', '0', '奶粉', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('115', '0', '藕粉', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('116', '0', '冲饮麦片', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('117', '0', '芝麻糊', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('118', '0', '冲饮果汁', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('119', '0', '豆奶', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('120', '0', '姜汤', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('121', '0', '蜂蜜', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('122', '0', '咖啡伴侣', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('123', '0', '其它冲饮品', '67', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('124', '0', '进口零食', '3', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('125', '0', '饼干糕点', '3', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('126', '0', '糖巧克力', '3', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('127', '0', '牛奶乳品', '3', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('128', '0', '水及饮料', '3', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('129', '0', '进口冲饮', '3', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('130', '0', '进口米面', '3', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('131', '0', '果干坚果', '3', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('132', '0', '进口膨化/薯片', '124', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('133', '0', '进口海产品', '124', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('134', '0', '进口果冻/布丁', '124', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('135', '0', '进口话梅', '124', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('136', '0', '进口肉制品', '124', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('137', '0', '进口山楂类', '124', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('138', '0', '进口凉果/蜜饯', '124', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('139', '0', '进口饼干', '125', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('140', '0', '进口曲奇', '125', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('141', '0', '进口威化', '125', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('142', '0', '进口糕点', '125', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('143', '0', '进口糖果', '126', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('144', '0', '进口巧克力', '126', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('145', '0', '粮油米面', '4', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('146', '0', '调味果酱', '4', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('147', '0', '水果蔬菜生鲜', '4', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('148', '0', '方便速食', '4', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('149', '0', '冷冻食品', '4', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('150', '0', '杂粮', '145', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('151', '0', '国产大米', '145', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('152', '0', '面粉/食用粉', '145', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('153', '0', '豆类', '145', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('154', '0', '玉米', '145', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('155', '0', '黑米', '145', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('156', '0', '糯米', '145', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('157', '0', '糙米', '145', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('158', '0', '食用油', '145', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('159', '0', '粉丝', '145', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('160', '0', '面条/挂面', '145', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('161', '0', '面部护理', '5', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('162', '0', '男士护理', '5', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('163', '0', '魅力香氛', '5', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('164', '0', '女性护理', '5', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('165', '0', '成人用品', '5', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('166', '0', '彩妆个护', '5', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('167', '0', '口腔护理', '5', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('168', '0', '洗发护发', '5', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('169', '0', '身体护理', '5', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('170', '0', '乳液', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('171', '0', '面霜', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('172', '0', '精华', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('173', '0', '防晒', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('174', '0', '眼膜', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('175', '0', '眼霜/眼部精华', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('176', '0', '唇部护理', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('177', '0', '面膜', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('178', '0', '护肤套装', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('179', '0', '卸妆', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('180', '0', '洁面', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('181', '0', '去角质', '161', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('182', '0', '哺育用品', '6', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('183', '0', '妈妈专区', '6', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('184', '0', '奶粉', '6', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('185', '0', '纸尿裤/湿巾', '6', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('186', '0', '婴儿辅食', '6', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('187', '0', '孕婴营养品', '6', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('188', '0', '玩具', '6', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('189', '0', '洗护用品', '6', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('190', '0', '童车童床', '6', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('191', '0', '服饰寝具', '6', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('192', '0', '奶瓶', '182', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('193', '0', '奶嘴', '182', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('194', '0', '吸奶器', '182', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('195', '0', '暖奶/消毒餐具', '182', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('196', '0', '水具', '182', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('197', '0', '牙胶/安抚辅助用品', '182', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('198', '0', '家纺日用', '8', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('199', '0', '居家日用', '8', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('200', '0', '宠物用品', '8', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('201', '0', '家具灯具', '8', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('202', '0', '汽车用品', '8', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('203', '0', '家装建材', '8', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('204', '0', '园艺用品', '8', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('205', '0', '床品件套', '198', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('206', '0', '枕芯枕套', '198', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('207', '0', '被子', '198', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('208', '0', '床单被罩', '198', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('209', '0', '毛毯/被', '198', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('210', '0', '抱枕坐垫', '198', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('211', '0', '蚊帐/凉席', '198', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('212', '0', '毛巾家纺', '198', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('213', '0', '床垫/床褥', '198', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('214', '0', '大家电', '9', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('215', '0', '厨房电器', '9', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('216', '0', '生活电器', '9', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('217', '0', '影音电器', '9', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('218', '0', '个护健康', '9', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('219', '0', '冰箱', '214', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('220', '0', '空调', '214', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('221', '0', '洗衣机', '214', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('222', '0', '电视机', '214', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('223', '0', '女装精品', '10', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('224', '0', '男装精品', '10', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('225', '0', '内衣服饰', '10', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('226', '0', '户外鞋服', '10', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('227', '0', '户外装备', '10', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('228', '0', '体育娱乐', '10', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('229', '0', '健身运动', '10', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('230', '0', '饰品配件', '10', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('231', '0', '童装', '10', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('232', '0', '鞋子', '10', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('233', '0', '箱包', '10', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('234', '0', '皮草/皮衣', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('235', '0', '羽绒服', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('236', '0', '羊毛/羊绒', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('237', '0', '棉衣/棉服', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('238', '0', '呢大衣', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('239', '0', '连衣裙', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('240', '0', 'T恤', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('241', '0', '衬衫', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('242', '0', '裤子', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('243', '0', '半身裙', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('244', '0', '马夹', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('245', '0', '蕾丝衫/雪纺衫', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('246', '0', '针织衫/毛衣', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('247', '0', '外套', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('248', '0', '西装', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('249', '0', '卫衣/绒衫', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('250', '0', '风衣', '223', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('251', '0', '皮衣/皮草', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('252', '0', '羽绒服', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('253', '0', '棉衣', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('254', '0', '毛衫/羊绒', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('255', '0', '夹克', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('256', '0', 'T恤', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('257', '0', '卫衣', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('258', '0', '衬衫', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('259', '0', '长裤', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('260', '0', '短裤/中裤', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('261', '0', '风衣', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('262', '0', '西服', '224', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('263', '0', '图书', '11', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('264', '0', '杂志', '11', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('265', '0', '钟表', '11', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('266', '0', '翡翠玉石', '11', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('267', '0', '时尚饰品', '11', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('268', '0', '保健滋补', '11', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('269', '0', '特色礼品', '11', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('270', '0', '珍珠/水晶', '11', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('271', '0', '金/银/钻饰', '11', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('272', '0', '金镶玉', '266', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('273', '0', '和田玉', '266', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('274', '0', '翡翠', '266', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('275', '0', '彩色宝石', '266', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('276', '0', '琥珀', '266', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('277', '0', '其他玉石', '266', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('311', '0', '风味奶', '127', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('312', '0', '纯牛奶', '127', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('313', '0', '酸奶', '127', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('314', '0', '儿童奶', '127', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('315', '0', '进口果汁饮料', '128', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('316', '0', '进口咖啡', '129', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('317', '0', '进口茶叶', '129', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('318', '0', '进口蜂蜜', '129', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('319', '0', '进口奶茶/柚子茶', '129', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('320', '0', '进口麦片', '129', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('321', '0', '进口速食', '130', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('322', '0', '进口调味品', '130', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('323', '0', '进口油', '130', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('324', '0', '进口果干', '131', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('325', '0', '进口坚果', '131', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('326', '0', '酱油', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('327', '0', '食糖', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('328', '0', '鸡精/味精', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('329', '0', '盐', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('330', '0', '醋制品', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('331', '0', '腌制酱菜', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('332', '0', '调味料', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('333', '0', '腐乳', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('334', '0', '调味酱', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('335', '0', '料酒', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('336', '0', '调味油', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('337', '0', '果酱', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('338', '0', '其它调味品', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('339', '0', '烘焙原料/辅料', '146', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('340', '0', '香水', '163', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('341', '0', '精油芳疗', '163', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('342', '0', '香体走珠', '163', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('343', '0', '避孕套', '165', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('344', '0', '润滑剂', '165', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('345', '0', '成人卫生垫', '165', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('346', '0', '牙膏', '167', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('347', '0', '牙刷', '167', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('348', '0', '漱口水', '167', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('349', '0', '洗浴用品', '169', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('350', '0', '手足护理', '169', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('351', '0', '身体乳', '169', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('352', '0', '美体塑身', '169', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('353', '0', '1段奶粉', '184', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('354', '0', '2段奶粉', '184', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('355', '0', '3段奶粉', '184', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('356', '0', '4段奶粉', '184', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('357', '0', '5段奶粉', '184', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('358', '0', '米粉/米糊/汤粥', '186', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('359', '0', '面食类', '186', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('360', '0', '饼干/磨牙棒', '186', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('361', '0', '肉松/鱼松', '186', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('362', '0', '婴幼儿降火食品', '186', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('363', '0', '宝宝护肤', '189', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('364', '0', '护理用品', '189', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('365', '0', '洗浴用品', '189', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('366', '0', '清洁用品', '189', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('367', '0', '礼盒套装', '189', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('368', '0', '婴儿服', '191', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('369', '0', '婴儿家纺', '191', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('370', '0', '婴儿鞋袜', '191', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('371', '0', '安全用品', '191', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('372', '0', '床', '201', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('373', '0', '沙发', '201', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('374', '0', '柜类', '201', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('375', '0', '架类', '201', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('376', '0', '桌/椅/凳', '201', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('377', '0', '灯具', '201', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('378', '0', '鲜花', '204', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('379', '0', '盆栽', '204', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('380', '0', '园艺工具', '204', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('381', '0', '音响/音箱', '217', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('382', '0', '影碟机/DVD', '217', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('383', '0', '耳机/耳麦', '217', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('384', '0', '收音机', '217', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('385', '0', '其它影音产品', '217', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('386', '0', '靴子', '232', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('387', '0', '单鞋', '232', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('388', '0', '休闲鞋', '232', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('389', '0', '凉鞋', '232', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('390', '0', '皮鞋', '232', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('391', '0', '太阳眼镜', '230', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('392', '0', '腰带/皮带', '230', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('393', '0', '手套', '230', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('394', '0', '围巾/围脖', '230', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('395', '0', '网球', '228', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('396', '0', '足球', '228', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('397', '0', '排球', '228', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('398', '0', '乒乓球', '228', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('399', '0', '篮球', '228', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('400', '0', '户外服装', '226', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('401', '0', '户外鞋袜', '226', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('402', '0', '户外配饰', '226', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('403', '0', '时尚生活杂志', '264', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('404', '0', '娱乐休闲杂志', '264', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('405', '0', '教育科技杂志', '264', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('406', '0', '商业时政杂志', '264', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('407', '0', '文化艺术杂志', '264', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('408', '0', '美食礼品', '269', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('409', '0', '美酒礼品', '269', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('410', '0', '茗茶礼品', '269', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('473', '970', '打印机', '0', '255', '0');
INSERT INTO `ecm_gcategory` VALUES ('472', '970', '电脑', '0', '255', '0');
INSERT INTO `ecm_gcategory` VALUES ('471', '0', '主板', '470', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('444', '0', '方便面', '148', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('445', '0', '速食品', '148', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('446', '0', '罐头', '148', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('447', '0', '冷藏即食', '148', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('448', '2', '女士内衣', '0', '255', '0');
INSERT INTO `ecm_gcategory` VALUES ('449', '2', '男士内衣', '0', '255', '0');
INSERT INTO `ecm_gcategory` VALUES ('450', '2', '特价促销', '0', '255', '0');
INSERT INTO `ecm_gcategory` VALUES ('463', '59', '休闲零食', '0', '255', '0');
INSERT INTO `ecm_gcategory` VALUES ('464', '59', '糖果/巧克力', '0', '255', '0');
INSERT INTO `ecm_gcategory` VALUES ('465', '59', '饼干/糕点', '0', '255', '0');
INSERT INTO `ecm_gcategory` VALUES ('466', '59', '方便速食', '0', '255', '0');
INSERT INTO `ecm_gcategory` VALUES ('467', '59', '肉干肉脯/豆干/熟食', '463', '255', '1');
INSERT INTO `ecm_gcategory` VALUES ('468', '168', '外卖', '0', '255', '0');
INSERT INTO `ecm_gcategory` VALUES ('470', '0', '电脑', '0', '255', '1');

-- ----------------------------
-- Table structure for ecm_goods
-- ----------------------------
DROP TABLE IF EXISTS `ecm_goods`;
CREATE TABLE `ecm_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'material',
  `goods_name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `cate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cate_name` varchar(255) NOT NULL DEFAULT '',
  `brand` varchar(100) NOT NULL,
  `spec_qty` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `spec_name_1` varchar(60) NOT NULL DEFAULT '',
  `spec_name_2` varchar(60) NOT NULL DEFAULT '',
  `if_show` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `closed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `close_reason` varchar(255) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `default_spec` int(11) unsigned NOT NULL DEFAULT '0',
  `default_image` varchar(255) NOT NULL DEFAULT '',
  `recommended` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cate_id_1` int(10) unsigned NOT NULL DEFAULT '0',
  `cate_id_2` int(10) unsigned NOT NULL DEFAULT '0',
  `cate_id_3` int(10) unsigned NOT NULL DEFAULT '0',
  `cate_id_4` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tags` varchar(102) NOT NULL,
  `if_open` tinyint(3) NOT NULL DEFAULT '0',
  `recom` varchar(100) NOT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `store_id` (`store_id`),
  KEY `cate_id` (`cate_id`),
  KEY `cate_id_1` (`cate_id_1`),
  KEY `cate_id_2` (`cate_id_2`),
  KEY `cate_id_3` (`cate_id_3`),
  KEY `cate_id_4` (`cate_id_4`),
  KEY `brand` (`brand`(10)),
  KEY `tags` (`tags`)
) ENGINE=MyISAM AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_goods
-- ----------------------------
INSERT INTO `ecm_goods` VALUES ('1', '2', 'material', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '', '19', '网上菜场、果蔬生鲜	水果	苹果', '', '0', '', '', '1', '0', null, '1388033366', '1388033366', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '1', '1', '14', '19', '0', '8.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('2', '2', 'material', '袋装水果', '', '19', '网上菜场、果蔬生鲜	水果	苹果', '', '0', '', '', '1', '0', null, '1388033524', '1388033524', '2', 'data/files/store_2/goods_198/small_201312262049586818.jpg', '1', '1', '14', '19', '0', '100.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('3', '2', 'material', '海泉 野生苹果 新品上架 馈赠佳品 有糖心哦~', '', '19', '网上菜场、果蔬生鲜	水果	苹果', '', '0', '', '', '1', '0', null, '1388033588', '1388033588', '3', 'data/files/store_2/goods_148/small_201312262052284448.jpg', '1', '1', '14', '19', '0', '68.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('4', '2', 'material', '杰记 新鲜脆甜 高山红苹果', '', '19', '网上菜场、果蔬生鲜	水果	苹果', '', '0', '', '', '1', '0', null, '1388033671', '1388033671', '4', 'data/files/store_2/goods_57/small_201312262054174988.jpg', '1', '1', '14', '19', '0', '69.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('5', '2', 'material', '杰记 新鲜脆甜 高山红苹果', '', '19', '网上菜场、果蔬生鲜	水果	苹果', '', '0', '', '', '1', '0', null, '1388033715', '1388033715', '5', 'data/files/store_2/goods_99/small_201312262054594117.jpg', '1', '1', '14', '19', '0', '10.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('6', '2', 'material', '杰记 进口 新鲜 新西兰 爵士 苹果', '', '19', '网上菜场、果蔬生鲜	水果	苹果', '', '0', '', '', '1', '0', null, '1388033757', '1388033757', '6', 'data/files/store_2/goods_136/small_201312262055366831.jpg', '1', '1', '14', '19', '0', '32.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('7', '2', 'material', '杰记 进口 新鲜 果大味甜 红蛇果', '', '19', '网上菜场、果蔬生鲜	水果	苹果', '', '0', '', '', '1', '0', null, '1388033798', '1388033798', '7', 'data/files/store_2/goods_180/small_201312262056209107.jpg', '1', '1', '14', '19', '0', '65.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('8', '2', 'material', '杰记美国无籽黑提（清香蜜甜，爽脆无渣）', '', '20', '网上菜场、果蔬生鲜	水果	葡萄', '', '0', '', '', '1', '0', null, '1388033867', '1388033867', '8', 'data/files/store_2/goods_63/small_201312262057435880.jpg', '1', '1', '14', '20', '0', '38.80', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('9', '2', 'material', '海泉 进口红提 新鲜配送', '', '21', '网上菜场、果蔬生鲜	水果	红提', '', '0', '', '', '1', '0', null, '1388033923', '1388033923', '9', 'data/files/store_2/goods_120/small_201312262058402887.jpg', '1', '1', '14', '21', '0', '50.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('10', '2', 'material', '杰记 国产 新鲜 香甜 库尔勒香梨礼盒', '', '26', '网上菜场、果蔬生鲜	水果	橙梨', '', '0', '', '', '1', '0', null, '1388034036', '1388034036', '10', 'data/files/store_2/goods_31/small_201312262100319871.jpg', '1', '1', '14', '26', '0', '108.80', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('11', '2', 'material', '海泉 贡梨', '', '26', '网上菜场、果蔬生鲜	水果	橙梨', '', '0', '', '', '1', '0', null, '1388034078', '1388034078', '11', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '1', '1', '14', '26', '0', '25.50', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('12', '2', 'material', '杰记 国产 红肉 新鲜 红心蜜柚', '', '22', '网上菜场、果蔬生鲜	水果	柚子', '', '0', '', '', '1', '0', null, '1388034154', '1388034154', '12', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '1', '1', '14', '22', '0', '28.50', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('13', '2', 'material', '海泉 进口车厘子 圣诞款', '', '34', '网上菜场、果蔬生鲜	水果	车厘子', '', '0', '', '', '1', '0', null, '1388034228', '1388034228', '13', 'data/files/store_2/goods_2/small_201312262103227833.jpg', '1', '1', '14', '34', '0', '108.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('14', '2', 'material', '海泉 进口 红心火龙果 新鲜配送', '', '33', '网上菜场、果蔬生鲜	水果	火龙果', '', '0', '', '', '1', '0', null, '1388034294', '1388034294', '14', 'data/files/store_2/goods_77/small_201312262104371080.jpg', '1', '1', '14', '33', '0', '21.80', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('15', '2', 'material', '海泉 进口柠檬 尤力克 新鲜配送', '', '27', '网上菜场、果蔬生鲜	水果	柠檬', '', '0', '', '', '1', '0', null, '1388034356', '1388034356', '15', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '1', '1', '14', '27', '0', '30.60', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('16', '2', 'material', '椰岛鹿龟酒二星礼盒（500ml*2）', '', '98', '休闲食品、酒水饮料	酒类商城	滋补酒', '', '0', '', '', '1', '0', null, '1388034478', '1388034478', '16', 'data/files/store_2/goods_69/small_201312262107499378.jpg', '1', '2', '64', '98', '0', '92.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('17', '2', 'material', '椰岛鹿龟酒三星（露酒）礼盒2瓶装（500ml*2） 养生保健补酒', '', '98', '休闲食品、酒水饮料	酒类商城	滋补酒', '', '0', '', '', '1', '0', null, '1388034535', '1388034535', '17', 'data/files/store_2/goods_129/small_201312262108507192.jpg', '1', '2', '64', '98', '0', '110.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('18', '2', 'material', '沙洲优黄花开富贵480ml/瓶', '', '96', '休闲食品、酒水饮料	酒类商城	黄酒', '', '0', '', '', '1', '0', null, '1388034582', '1388034582', '18', 'data/files/store_2/goods_166/small_201312262109269656.jpg', '1', '2', '64', '96', '0', '32.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('19', '2', 'material', '50°红心如意郎酒500ml', '', '97', '休闲食品、酒水饮料	酒类商城	葡萄酒/红酒', '', '0', '', '', '1', '0', null, '1388034641', '1388034641', '19', 'data/files/store_2/goods_28/small_201312262110282113.jpg', '1', '2', '64', '97', '0', '52.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('20', '2', 'material', '口子窖白酒（五年）46度 400ml', '', '97', '休闲食品、酒水饮料	酒类商城	葡萄酒/红酒', '', '0', '', '', '1', '0', null, '1388034702', '1388034702', '20', 'data/files/store_2/goods_51/small_201312262110515808.jpg', '1', '2', '64', '97', '0', '95.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('21', '2', 'material', '【量贩购】张裕窖藏二年干红葡萄酒750ml×2瓶（每个ID限购5组）', '', '97', '休闲食品、酒水饮料	酒类商城	葡萄酒/红酒', '', '0', '', '', '1', '0', null, '1388034760', '1388034760', '21', 'data/files/store_2/goods_124/small_201312262112041198.jpg', '1', '2', '64', '97', '0', '72.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('22', '2', 'material', '华佗十全补酒700ml', '', '95', '休闲食品、酒水饮料	酒类商城	白酒', '', '0', '', '', '1', '0', null, '1388034838', '1388034838', '22', 'data/files/store_2/goods_6/small_201312262113269791.jpg', '1', '2', '64', '95', '0', '36.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('23', '2', 'material', '双沟珍宝坊 君坊 41.8度 480ml+68度 20ml', '', '94', '休闲食品、酒水饮料	酒类商城	进口葡萄酒', '', '0', '', '', '1', '0', null, '1388034891', '1388034891', '23', 'data/files/store_2/goods_71/small_201312262114315846.jpg', '1', '2', '64', '94', '0', '128.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('24', '2', 'material', '42°洋河大曲青瓷500ml', '', '99', '休闲食品、酒水饮料	酒类商城	果酒', '', '0', '', '', '1', '0', null, '1388034944', '1388034944', '24', 'data/files/store_2/goods_141/small_201312262115417011.jpg', '1', '2', '64', '99', '0', '62.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('25', '2', 'material', '沙洲优黄(干黄) 480ml/瓶', '', '97', '休闲食品、酒水饮料	酒类商城	葡萄酒/红酒', '', '0', '', '', '1', '0', null, '1388035006', '1388035006', '25', 'data/files/store_2/goods_3/small_201312262116433996.jpg', '1', '2', '64', '97', '0', '350.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('26', '2', 'material', '乌毡帽十年陈 350ml', '', '97', '休闲食品、酒水饮料	酒类商城	葡萄酒/红酒', '', '0', '', '', '1', '0', null, '1388035091', '1388035091', '26', 'data/files/store_2/goods_86/small_201312262118061068.jpg', '1', '2', '64', '97', '0', '100.00', ',330,', '0', '');
INSERT INTO `ecm_goods` VALUES ('27', '2', 'material', '上海老酒六年陈500ml', '', '97', '休闲食品、酒水饮料	酒类商城	葡萄酒/红酒', '', '0', '', '', '1', '0', null, '1388035163', '1388035163', '27', 'data/files/store_2/goods_160/small_201312262119204138.jpg', '1', '2', '64', '97', '0', '666.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('28', '2', 'material', '【量贩购】多力橄榄葵花油2.5L×2瓶 礼盒装 过节送礼更合适（每个I...', '', '158', '粮油干货、厨房调料	粮油米面	食用油', '', '0', '', '', '1', '0', null, '1388036097', '1388036097', '28', 'data/files/store_2/goods_92/small_201312262134527551.jpg', '1', '4', '145', '158', '0', '108.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('29', '2', 'material', '银鹭好粥道 黑米杂粮八宝粥280g', '', '150', '粮油干货、厨房调料	粮油米面	杂粮', '', '0', '', '', '1', '0', null, '1388036198', '1388036198', '29', 'data/files/store_2/goods_192/small_201312262136326387.jpg', '1', '4', '145', '150', '0', '3.60', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('30', '2', 'material', '纽天然三叶草蜂蜜250g（新西兰）', '', '132', '进口食品、进口乳品	进口零食	进口膨化/薯片', '', '0', '', '', '1', '0', null, '1388036332', '1388036332', '30', 'data/files/store_2/goods_111/small_201312262138315559.jpg', '1', '3', '124', '132', '0', '59.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('31', '2', 'material', '台湾进口零食品 张君雅系列 拉面条饼和风鸡汁味 嘴馋了', '', '132', '进口食品、进口乳品	进口零食	进口膨化/薯片', '', '0', '', '', '1', '0', null, '1388036394', '1388036394', '31', 'data/files/store_2/goods_189/small_201312262139497936.jpg', '1', '3', '124', '132', '0', '6.90', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('32', '2', 'material', '正宗99能量棒 台湾北田棒蛋黄夹心 180克 特价 嘴馋了', '', '132', '进口食品、进口乳品	进口零食	进口膨化/薯片', '', '0', '', '', '1', '0', null, '1388036467', '1388036467', '32', 'data/files/store_2/goods_62/small_201312262141025440.jpg', '1', '3', '124', '132', '0', '10.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('33', '2', 'material', '印度尼西亚进口啪啪通虾片85克', '', '132', '进口食品、进口乳品	进口零食	进口膨化/薯片', '', '0', '', '', '1', '0', null, '1388036528', '1388036528', '33', 'data/files/store_2/goods_125/small_201312262142056946.jpg', '1', '3', '124', '132', '0', '16.80', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('34', '2', 'material', '正品马来西亚 可康牌多口味果冻（含椰果）480g 嘴馋了', '', '134', '进口食品、进口乳品	进口零食	进口果冻/布丁', '', '0', '', '', '1', '0', null, '1388036590', '1388036590', '34', 'data/files/store_2/goods_185/small_201312262143054186.jpg', '1', '3', '124', '134', '0', '12.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('35', '2', 'material', '可康果冻布丁 480g(80gX6杯) 邻客小食', '', '134', '进口食品、进口乳品	进口零食	进口果冻/布丁', '', '0', '', '', '1', '0', null, '1388036650', '1388036650', '35', 'data/files/store_2/goods_42/small_201312262144021189.jpg', '1', '3', '124', '134', '0', '12.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('36', '2', 'material', '泰国进口天然零食品 特级泰国植生桂圆肉干 龙眼肉 果干蜜饯 140g...', '', '138', '进口食品、进口乳品	进口零食	进口凉果/蜜饯', '', '0', '', '', '1', '0', null, '1388036717', '1388036717', '36', 'data/files/store_2/goods_113/small_201312262145134866.jpg', '1', '3', '124', '138', '0', '22.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('37', '2', 'material', '优之良品贵妃梅200克', '', '138', '进口食品、进口乳品	进口零食	进口凉果/蜜饯', '', '0', '', '', '1', '0', null, '1388036809', '1388036809', '37', 'data/files/store_2/goods_7/small_201312262146474624.jpg', '1', '3', '124', '138', '0', '20.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('38', '2', 'material', '澳门香记特产 XO酱金钱猪肉脯/肉干 250g 特价 嘴馋了', '', '136', '进口食品、进口乳品	进口零食	进口肉制品', '', '0', '', '', '1', '0', null, '1388036884', '1388036884', '38', 'data/files/store_2/goods_80/small_201312262148001815.jpg', '1', '3', '124', '136', '0', '21.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('39', '2', 'material', '韩国进口小零食 托马斯小火车鳕鱼肠400g', '', '136', '进口食品、进口乳品	进口零食	进口肉制品', '', '0', '', '', '1', '0', null, '1388036943', '1388036943', '39', 'data/files/store_2/goods_139/small_201312262148598688.jpg', '1', '3', '124', '136', '0', '80.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('40', '2', 'material', '味好美脆皮香酥炸鸡配料45g', '', '332', '粮油干货、厨房调料	调味果酱	调味料', '', '0', '', '', '1', '0', null, '1388037104', '1388037104', '40', 'data/files/store_2/goods_95/small_201312262151359791.jpg', '1', '4', '146', '332', '0', '2.20', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('41', '2', 'material', '味好美鱼香肉丝调料35g', '', '332', '粮油干货、厨房调料	调味果酱	调味料', '', '0', '', '', '1', '0', null, '1388037142', '1388037142', '41', 'data/files/store_2/goods_130/small_201312262152104798.jpg', '1', '4', '146', '332', '0', '2.50', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('42', '2', 'material', '王守义十三香40g', '', '332', '粮油干货、厨房调料	调味果酱	调味料', '', '0', '', '', '1', '0', null, '1388037251', '1388037251', '42', 'data/files/store_2/goods_47/small_201312262154079508.jpg', '1', '4', '146', '332', '0', '2.30', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('43', '2', 'material', '味好美咖喱粉30g', '', '332', '粮油干货、厨房调料	调味果酱	调味料', '', '0', '', '', '1', '0', null, '1388037302', '1388037302', '43', 'data/files/store_2/goods_93/small_201312262154537504.jpg', '1', '4', '146', '332', '0', '7.30', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('44', '2', 'material', '川南火锅底料150g', '', '332', '粮油干货、厨房调料	调味果酱	调味料', '', '0', '', '', '1', '0', null, '1388037356', '1388037356', '44', 'data/files/store_2/goods_144/small_201312262155447040.jpg', '1', '4', '146', '332', '0', '4.10', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('45', '2', 'material', '郫县红油豆瓣 1.05kg', '', '332', '粮油干货、厨房调料	调味果酱	调味料', '', '0', '', '', '1', '0', null, '1388037389', '1388037389', '45', 'data/files/store_2/goods_178/small_201312262156186146.jpg', '1', '4', '146', '332', '0', '14.80', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('46', '2', 'material', '川郫红油郫县豆瓣500g', '', '332', '粮油干货、厨房调料	调味果酱	调味料', '', '0', '', '', '1', '0', null, '1388037427', '1388037427', '46', 'data/files/store_2/goods_11/small_201312262156516537.jpg', '1', '4', '146', '332', '0', '5.80', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('47', '2', 'material', '川南干爹风味豆豉210g', '', '332', '粮油干货、厨房调料	调味果酱	调味料', '', '0', '', '', '1', '0', null, '1388037481', '1388037481', '47', 'data/files/store_2/goods_76/small_201312262157569987.jpg', '1', '4', '146', '332', '0', '5.50', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('48', '2', 'material', '川崎火锅调料海鲜100g', '', '332', '粮油干货、厨房调料	调味果酱	调味料', '', '0', '', '', '1', '0', null, '1388037529', '1388037529', '48', 'data/files/store_2/goods_111/small_201312262158319438.jpg', '1', '4', '146', '332', '0', '2.60', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('49', '2', 'material', '川崎火锅调料海麻辣100g', '', '332', '粮油干货、厨房调料	调味果酱	调味料', '', '0', '', '', '1', '0', null, '1388037569', '1388037569', '49', 'data/files/store_2/goods_162/small_201312262159227323.jpg', '1', '4', '146', '332', '0', '2.60', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('50', '2', 'material', '新安怡 婴儿保湿润肤乳液200ML', '', '364', '母婴用品、 玩具	洗护用品	护理用品', '', '0', '', '', '1', '0', null, '1388037930', '1388037930', '50', 'data/files/store_2/goods_127/small_201312262205276887.jpg', '1', '6', '189', '364', '0', '74.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('51', '2', 'material', '飞利浦新安怡标准口径奶嘴', '', '364', '母婴用品、 玩具	洗护用品	护理用品', '', '0', '', '', '1', '0', null, '1388037976', '1388037976', '51', 'data/files/store_2/goods_173/small_201312262206139520.jpg', '1', '6', '189', '364', '0', '14.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('52', '2', 'material', '飞利浦新安怡幼儿食物储存盒', '', '364', '母婴用品、 玩具	洗护用品	护理用品', '', '0', '', '', '1', '0', null, '1388038076', '1388038076', '52', 'data/files/store_2/goods_72/small_201312262207528762.jpg', '1', '6', '189', '364', '0', '144.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('53', '2', 'material', 'Pigeon贝亲 婴儿沐浴露', '', '364', '母婴用品、 玩具	洗护用品	护理用品', '', '0', '', '', '1', '0', null, '1388038125', '1388038125', '53', 'data/files/store_2/goods_102/small_201312262208227300.jpg', '1', '6', '189', '364', '0', '17.50', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('54', '2', 'material', '飞利浦新安怡微波炉蒸汽消毒锅套餐', '', '364', '母婴用品、 玩具	洗护用品	护理用品', '', '0', '', '', '1', '0', null, '1388038164', '1388038164', '54', 'data/files/store_2/goods_135/small_201312262208557042.jpg', '1', '6', '189', '364', '0', '354.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('55', '2', 'material', '飞利浦新安怡4合1电子蒸汽消毒锅', '', '364', '母婴用品、 玩具	洗护用品	护理用品', '', '0', '', '', '1', '0', null, '1388038205', '1388038205', '55', 'data/files/store_2/goods_176/small_201312262209361435.jpg', '1', '6', '189', '364', '0', '679.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('56', '2', 'material', '飞利浦新安怡手动吸乳器外出旅行组合套装', '', '364', '母婴用品、 玩具	洗护用品	护理用品', '', '0', '', '', '1', '0', null, '1388038246', '1388038246', '56', 'data/files/store_2/goods_16/small_201312262210162177.jpg', '1', '6', '189', '364', '0', '606.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('57', '2', 'material', '飞利浦新安怡对装乳头矫正器', '', '364', '母婴用品、 玩具	洗护用品	护理用品', '', '0', '', '', '1', '0', null, '1388038292', '1388038292', '57', 'data/files/store_2/goods_57/small_201312262210575290.jpg', '1', '6', '189', '364', '0', '374.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('58', '2', 'material', '飞利浦新安怡智能蒸汽消毒锅', '', '364', '母婴用品、 玩具	洗护用品	护理用品', '', '0', '', '', '1', '0', null, '1388038343', '1388038343', '58', 'data/files/store_2/goods_106/small_201312262211467126.jpg', '1', '6', '189', '364', '0', '774.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('59', '2', 'material', '飞利浦新安怡标准口径奶嘴', '', '364', '母婴用品、 玩具	洗护用品	护理用品', '', '0', '', '', '1', '0', null, '1388038380', '1388038380', '59', 'data/files/store_2/goods_152/small_201312262212327144.jpg', '1', '6', '189', '364', '0', '12.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('60', '2', 'material', '希乐上品真空保温泡茶杯 XS-400-3', '', '7', '厨房、清洁、卫浴用品', '', '0', '', '', '1', '0', null, '1388038694', '1388038694', '60', 'data/files/store_2/goods_90/small_201312262218109004.jpg', '1', '7', '0', '0', '0', '35.80', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('61', '2', 'material', '妙洁圆形耐热玻璃保鲜盒800ml MCOGBC80', '', '7', '厨房、清洁、卫浴用品', '', '0', '', '', '1', '0', null, '1388038738', '1388038738', '61', 'data/files/store_2/goods_114/small_201312262218342575.jpg', '1', '7', '0', '0', '0', '24.90', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('62', '2', 'material', '(原装进口)韩国爱敬aekyung全彩护色洗衣液1L', '', '7', '厨房、清洁、卫浴用品', '', '0', '', '', '1', '0', null, '1388038787', '1388038787', '62', 'data/files/store_2/goods_153/small_201312262219138421.jpg', '1', '7', '0', '0', '0', '46.60', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('63', '2', 'material', '品诚尚品惠 Supor/苏泊尔 T0908Q厨具套装典雅系列不锈钢锅铲汤勺...', '', '7', '厨房、清洁、卫浴用品', '', '0', '', '', '1', '0', null, '1388038827', '1388038827', '63', 'data/files/store_2/goods_6/small_201312262220067431.jpg', '1', '7', '0', '0', '0', '215.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('64', '2', 'material', '乐扣保鲜盒6件多规格套装微波炉烤箱耐热玻璃LLG224S902 44763当...', '', '7', '厨房、清洁、卫浴用品', '', '0', '', '', '1', '0', null, '1388038876', '1388038876', '64', 'data/files/store_2/goods_41/small_201312262220415407.jpg', '1', '7', '0', '0', '0', '202.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('65', '2', 'material', '妙洁手压旋拖1*4', '', '7', '厨房、清洁、卫浴用品', '', '0', '', '', '1', '0', null, '1388038973', '1388038973', '65', 'data/files/store_2/goods_143/small_201312262222237668.jpg', '1', '7', '0', '0', '0', '158.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('66', '2', 'material', '2支装妙洁C型点断式垃圾袋(中)', '', '7', '厨房、清洁、卫浴用品', '', '0', '', '', '1', '0', null, '1388039008', '1388039008', '66', 'data/files/store_2/goods_186/small_201312262223061143.jpg', '1', '7', '0', '0', '0', '2.90', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('67', '2', 'material', '妙洁C型魔吸胶棉拖把', '', '7', '厨房、清洁、卫浴用品', '', '0', '', '', '1', '0', null, '1388039047', '1388039047', '67', 'data/files/store_2/goods_26/small_201312262223464846.jpg', '1', '7', '0', '0', '0', '23.80', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('68', '2', 'material', '汰渍全效炫白加衣领净精华洗衣粉560克', '', '7', '厨房、清洁、卫浴用品', '', '0', '', '', '1', '0', null, '1388039114', '1388039114', '68', 'data/files/store_2/goods_91/small_201312262224518849.jpg', '1', '7', '0', '0', '0', '5.10', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('69', '2', 'material', '【量贩购】奥妙 全自动含金纺馨香精华深层洁净洗衣液 3kg（怡神薰...', '', '7', '厨房、清洁、卫浴用品', '', '0', '', '', '1', '0', null, '1388039145', '1388039145', '69', 'data/files/store_2/goods_131/small_201312262225311490.jpg', '1', '7', '0', '0', '0', '45.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('70', '2', 'material', '韩版夏季新款连衣裙 纯色露肩 雪纺假两件套 连衣短裙5776', '', '239', '服饰箱包鞋靴、 运动	女装精品	连衣裙', '', '0', '', '', '1', '0', null, '1388039629', '1388039629', '70', 'data/files/store_2/goods_195/small_201312262233156335.jpg', '1', '10', '223', '239', '0', '850.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('71', '2', 'material', '春装新款 韩版 气质修身 蕾丝拼接 圆领长袖 性感 连衣短裙L4666', '', '239', '服饰箱包鞋靴、 运动	女装精品	连衣裙', '', '0', '', '', '1', '0', null, '1388039672', '1388039672', '71', 'data/files/store_2/goods_44/small_201312262234045839.jpg', '1', '10', '223', '239', '0', '750.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('72', '2', 'material', '时尚休闲 气质雪纺条纹两件套 长袖不规则连衣裙7938', '', '239', '服饰箱包鞋靴、 运动	女装精品	连衣裙', '', '0', '', '', '1', '0', null, '1388039729', '1388039729', '72', 'data/files/store_2/goods_113/small_201312262235137180.jpg', '1', '10', '223', '239', '0', '690.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('73', '2', 'material', '新品女装 荷叶边外衫 碎花裙 裙子夏季两件套 麻棉长袖连衣裙F512...', '', '239', '服饰箱包鞋靴、 运动	女装精品	连衣裙', '', '0', '', '', '1', '0', null, '1388039774', '1388039774', '73', 'data/files/store_2/goods_142/small_201312262235429182.jpg', '1', '10', '223', '239', '0', '850.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('74', '2', 'material', '皇后大街2013春装新款圆领收腰中袖蕾丝连衣裙修身显瘦打底裙L234...', '', '239', '服饰箱包鞋靴、 运动	女装精品	连衣裙', '', '0', '', '', '1', '0', null, '1388039823', '1388039823', '74', 'data/files/store_2/goods_189/small_201312262236298305.jpg', '1', '10', '223', '239', '0', '2090.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('75', '2', 'material', '棉先生原创 2012新品 韩版黑色西服两粒扣休闲小西装外套 S5455', '', '262', '服饰箱包鞋靴、 运动	男装精品	西服', '', '0', '', '', '1', '0', null, '1388039883', '1388039883', '75', 'data/files/store_2/goods_38/small_201312262237189780.jpg', '1', '10', '224', '262', '0', '173.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('76', '2', 'material', 'Miiow猫人 2013新款夏季女士性感豹纹印花舒适中腰提臀三角裤1397...', '', '249', '服饰箱包鞋靴、 运动	女装精品	卫衣/绒衫', '', '0', '', '', '1', '0', null, '1388039951', '1388039951', '76', 'data/files/store_2/goods_98/small_201312262238182827.jpg', '1', '10', '223', '249', '0', '390.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('77', '2', 'material', '韩国品牌 SATSUN 专柜正品 超弹修身小腿裤 明线装饰 特价促销', '', '245', '服饰箱包鞋靴、 运动	女装精品	蕾丝衫/雪纺衫', '', '0', '', '', '1', '0', null, '1388040028', '1388040028', '77', 'data/files/store_2/goods_179/small_201312262239393163.jpg', '1', '10', '223', '245', '0', '169.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('78', '2', 'material', '（冰爽特价）韩国品牌 SATSUN 专柜正品 拉链装饰牛仔短裤', '', '245', '服饰箱包鞋靴、 运动	女装精品	蕾丝衫/雪纺衫', '', '0', '', '', '1', '0', null, '1388040081', '1388040081', '78', 'data/files/store_2/goods_54/small_201312262240547284.jpg', '1', '10', '223', '245', '0', '129.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('79', '2', 'material', '全棉弹力抓绒小腿裤 保暖舒适 雪花修身小腿裤 春...', '', '235', '服饰箱包鞋靴、 运动	女装精品	羽绒服', '', '0', '', '', '1', '0', null, '1388040133', '1388040133', '79', 'data/files/store_2/goods_97/small_201312262241379970.jpg', '1', '10', '223', '235', '0', '69.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('80', '2', 'material', '【量贩购】顶瓜瓜专柜 顶呱呱男女保暖内衣 加厚加绒套装DNBMD-T2...', '', '236', '服饰箱包鞋靴、 运动	女装精品	羊毛/羊绒', '', '0', '', '', '1', '0', null, '1388040198', '1388040198', '80', 'data/files/store_2/goods_156/small_201312262242365477.jpg', '1', '10', '223', '236', '0', '89.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('81', '2', 'material', '艾美特PTC陶瓷暖风机HP2028UR 取暖器 电暖器 遥控加湿', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388040743', '1388040743', '81', 'data/files/store_2/goods_111/small_201312262251512164.jpg', '1', '9', '216', '0', '0', '699.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('82', '2', 'material', '飞利浦 充电剃须刀HQ6076 弹出式修发器刀头水洗', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388040835', '1388040835', '82', 'data/files/store_2/goods_9/small_201312262253293800.jpg', '1', '9', '216', '0', '0', '499.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('83', '2', 'material', 'Joyoung/九阳 JYC-21GS08 电磁炉 健康双环火 触摸 节能 正品特价...', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388040935', '1388040935', '83', 'data/files/store_2/goods_80/small_201312262254404774.jpg', '1', '9', '216', '0', '0', '269.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('84', '2', 'material', 'Joyoung/九阳JYK-17F05A特价不锈钢多功能电热开水煲壶联保正品 ...', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388040980', '1388040980', '84', 'data/files/store_2/goods_155/small_201312262255558436.jpg', '1', '9', '216', '0', '0', '170.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('85', '2', 'material', '先锋 电暖气CY11BB-11 DS1102 油汀11片 赠晾衣架加湿盒', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388041028', '1388041028', '85', 'data/files/store_2/goods_6/small_201312262256466045.jpg', '1', '9', '216', '0', '0', '399.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('86', '2', 'material', 'Joyoung/九阳 C21-SC007 九阳电磁炉 超薄 二级能效 整板触摸屏', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388041065', '1388041065', '86', 'data/files/store_2/goods_49/small_201312262257294186.jpg', '1', '9', '216', '0', '0', '259.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('87', '2', 'material', '道尔顿PF前置折叠棉滤芯', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388041106', '1388041106', '87', 'data/files/store_2/goods_86/small_201312262258066317.jpg', '1', '9', '216', '0', '0', '88.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('88', '2', 'material', '美妙足浴盆MM-13H全盖泡脚加热足浴器足浴盆泡脚盆', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388041146', '1388041146', '88', 'data/files/store_2/goods_124/small_201312262258442397.jpg', '1', '9', '216', '0', '0', '249.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('89', '2', 'material', '美妙足浴盆MM-12E/02E足浴器按摩正品 洗脚盆加热泡脚盆', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388041200', '1388041200', '89', 'data/files/store_2/goods_180/small_201312262259401924.jpg', '1', '9', '216', '0', '0', '239.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('90', '2', 'material', '品诚尚品惠 Midea/美的 DE12G13 全不锈钢豆浆机多功能无网 3.4KG', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388041280', '1388041280', '90', 'data/files/store_2/goods_60/small_201312262301006712.jpg', '1', '9', '216', '0', '0', '270.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('91', '2', 'material', 'HTC T528t 双卡双待双通TD-SCDMA/GSM', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388041380', '1388041380', '91', 'data/files/store_2/goods_155/small_201312262302356953.jpg', '1', '9', '216', '0', '0', '1298.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('92', '2', 'material', '中兴（ZTE）U960s3 3G手机 TD-SCDMA/GSM', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388041427', '1388041427', '92', 'data/files/store_2/goods_3/small_201312262303231812.jpg', '1', '9', '216', '0', '0', '495.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('93', '2', 'material', '三星(samsung)s5698 3G手机 TD-SCDMA/GSM', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388041471', '1388041471', '93', 'data/files/store_2/goods_48/small_201312262304085587.jpg', '1', '9', '216', '0', '0', '199.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('94', '2', 'material', '华为（Huawei）T8951（G510）3G手机 TD-SCDMA/GSM', '', '216', '大家电、生活电器	生活电器', '', '0', '', '', '1', '0', null, '1388041510', '1388041510', '94', 'data/files/store_2/goods_93/small_201312262304537590.jpg', '1', '9', '216', '0', '0', '599.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('97', '2', 'material', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '', '216', '大家电、生活电器	生活电器', '', '2', '尺', '号', '1', '0', null, '1388041645', '1430849936', '363', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '1', '9', '216', '0', '0', '900.00', '', '1', '');
INSERT INTO `ecm_goods` VALUES ('99', '2', 'material', 'testing', '<p><img src=\"/data/files/store_2/goods_123/201406260258439769.jpg\" alt=\"\" /></p>', '19', '网上菜场、果蔬生鲜	水果	苹果', '', '2', '颜色', '尺码', '1', '0', null, '1403693943', '1429991232', '99', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '1', '1', '14', '19', '0', '0.10', '', '0', '0.3');
INSERT INTO `ecm_goods` VALUES ('335', '2', 'material', '春季新品女装 气质百搭领系带竖条纹长袖雪纺衬衫 F10', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 750.0px;color: #000000;line-height: 19.0px;font-family: 微软雅黑;font-size: 13.0px;border-collapse: collapse;border-spacing: 0.0px;\"><tr align=\"middle\" bgcolor=\"#707070\" style=\"color: #ffffff;\"><td width=\"93\">尺码</td><td width=\"93\">衣长</td><td width=\"93\">胸围</td><td width=\"93\">腰围</td><td width=\"93\">肩宽</td><td width=\"93\">袖长</td><td width=\"93\">袖围</td><td width=\"93\"></td></tr><tr align=\"middle\"><td><span style=\"margin: 0.0px;padding: 0.0px;outline: 0.0px;border: 0.0px currentcolor;color: #444444;vertical-align: baseline;background-image: none;background-attachment: scroll;background-repeat: repeat repeat;background-color: transparent;\"><span style=\"margin: 0.0px;padding: 0.0px;outline: 0.0px;border: 0.0px currentcolor;font-family: microsoft yahei;vertical-align: baseline;background-image: none;background-attachment: scroll;background-repeat: repeat repeat;background-color: transparent;\">均码</span></span></td><td>62</td><td><span style=\"margin: 0.0px;padding: 0.0px;outline: 0.0px;border: 0.0px currentcolor;color: #444444;vertical-align: baseline;background-image: none;background-attachment: scroll;background-repeat: repeat repeat;background-color: transparent;\"><span style=\"margin: 0.0px;padding: 0.0px;outline: 0.0px;border: 0.0px currentcolor;font-family: microsoft yahei;vertical-align: baseline;background-image: none;background-attachment: scroll;background-repeat: repeat repeat;background-color: transparent;\"><span style=\"margin: 0.0px;padding: 0.0px;outline: 0.0px;border: 0.0px currentcolor;font-size: 10.5pt;vertical-align: baseline;background-image: none;background-attachment: scroll;background-repeat: repeat repeat;background-color: transparent;\"><span style=\"margin: 0.0px;padding: 0.0px;outline: 0.0px;border: 0.0px currentcolor;font-family: 微软雅黑;font-size: 10.5pt;vertical-align: baseline;background-image: none;background-attachment: scroll;background-repeat: repeat repeat;background-color: transparent;\"><span style=\"margin: 0.0px;padding: 0.0px;outline: 0.0px;border: 0.0px currentcolor;color: #000000;vertical-align: baseline;background-image: none;background-attachment: scroll;background-repeat: repeat repeat;background-color: transparent;\">83</span></span></span></span></span></td><td>78</td><td>35.5</td><td><span style=\"margin: 0.0px;padding: 0.0px;outline: 0.0px;border: 0.0px currentcolor;font-size: 10.5pt;vertical-align: baseline;background-image: none;background-attachment: scroll;background-repeat: repeat repeat;background-color: transparent;\"><span style=\"margin: 0.0px;padding: 0.0px;outline: 0.0px;border: 0.0px currentcolor;color: #000000;vertical-align: baseline;background-image: none;background-attachment: scroll;background-repeat: repeat repeat;background-color: transparent;\">59</span></span></td><td><span style=\"margin: 0.0px;padding: 0.0px;outline: 0.0px;border: 0.0px currentcolor;font-size: 10.5pt;vertical-align: baseline;background-image: none;background-attachment: scroll;background-repeat: repeat repeat;background-color: transparent;\"><span style=\"margin: 0.0px;padding: 0.0px;outline: 0.0px;border: 0.0px currentcolor;color: #000000;vertical-align: baseline;background-image: none;background-attachment: scroll;background-repeat: repeat repeat;background-color: transparent;\">31</span></span></td></tr></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><em><img align=\"absmiddle\" height=\"400\" src=\"http://gd2.alicdn.com/imgextra/i2/542444536/TB2N5g9bpXXXXakXpXXXXXXXXXX-542444536.jpg\" width=\"400\" /><img align=\"absmiddle\" height=\"4623\" src=\"http://gd4.alicdn.com/imgextra/i4/542444536/TB23Cs8bpXXXXa8XpXXXXXXXXXX-542444536.jpg\" width=\"750\" /></em></p><p>&nbsp;</p><p>&nbsp;</p><p><img align=\"absmiddle\" height=\"4924\" src=\"http://gd2.alicdn.com/imgextra/i2/542444536/TB25nJXbFXXXXcSXXXXXXXXXXXX-542444536.jpg\" width=\"750\" /></p><p>&nbsp;</p><p>&nbsp;</p><p><img align=\"absmiddle\" height=\"3485\" src=\"http://gd2.alicdn.com/imgextra/i2/542444536/TB29wlbbFXXXXb1XXXXXXXXXXXX-542444536.jpg\" width=\"750\" /></p><p><img align=\"absmiddle\" height=\"4434\" src=\"http://gd2.alicdn.com/imgextra/i2/542444536/TB2yVs8bpXXXXcoXpXXXXXXXXXX-542444536.jpg\" width=\"750\" /></p><p>&nbsp;</p><p>&nbsp;</p><p><img align=\"absmiddle\" height=\"4506\" src=\"http://gd4.alicdn.com/imgextra/i4/542444536/TB2rnldbFXXXXaKXXXXXXXXXXXX-542444536.jpg\" width=\"750\" /></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><img align=\"absmiddle\" height=\"549\" src=\"http://gd3.alicdn.com/imgextra/i3/542444536/TB2_zI.bpXXXXXwXpXXXXXXXXXX-542444536.jpg\" width=\"549\" /></p>', '19', '果蔬生鲜	水果	苹果', '', '0', '', '', '0', '0', null, '1430279749', '1430279749', '0', 'data/files/store_2/goods_83/small_201504291958031037.jpeg', '0', '1', '14', '19', '0', '0.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('347', '2', 'material', '测试商品', '<p><img src=\"http://127.0.0.1/data/files/store_2/goods_123/201406260258439769.jpg\" alt=\"\" /></p>', '19', '果蔬生鲜	水果	苹果', '', '2', '颜色', '尺码', '1', '0', null, '1430555101', '1430555955', '359', 'data/files/store_2/goods_108/small_201505030025082592.jpeg', '1', '1', '14', '19', '0', '0.10', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('345', '970', 'material', '联想笔记本', '', '471', '电脑	主板', '', '0', '', '', '1', '0', null, '1430355906', '1430355906', '357', 'data/files/store_970/goods_16/small_201504301703362317.png', '1', '470', '471', '0', '0', '1.00', '', '0', '');
INSERT INTO `ecm_goods` VALUES ('346', '970', 'material', '联想电脑', '<p>非导体规定法国大法官</p>', '471', '电脑	主板', '', '0', '', '', '1', '0', null, '1430358210', '1430358902', '358', 'data/files/store_970/goods_5/small_201504301743259444.jpg', '1', '470', '471', '0', '0', '100.00', '', '0', '');

-- ----------------------------
-- Table structure for ecm_goods_image
-- ----------------------------
DROP TABLE IF EXISTS `ecm_goods_image`;
CREATE TABLE `ecm_goods_image` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `image_url` varchar(255) NOT NULL DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `file_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=260 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_goods_image
-- ----------------------------
INSERT INTO `ecm_goods_image` VALUES ('1', '1', 'data/files/store_2/goods_110/201312262048304586.jpg', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '1', '1');
INSERT INTO `ecm_goods_image` VALUES ('2', '2', 'data/files/store_2/goods_198/201312262049586818.jpg', 'data/files/store_2/goods_198/small_201312262049586818.jpg', '1', '2');
INSERT INTO `ecm_goods_image` VALUES ('3', '3', 'data/files/store_2/goods_148/201312262052284448.jpg', 'data/files/store_2/goods_148/small_201312262052284448.jpg', '1', '3');
INSERT INTO `ecm_goods_image` VALUES ('4', '4', 'data/files/store_2/goods_57/201312262054174988.jpg', 'data/files/store_2/goods_57/small_201312262054174988.jpg', '1', '4');
INSERT INTO `ecm_goods_image` VALUES ('5', '5', 'data/files/store_2/goods_99/201312262054594117.jpg', 'data/files/store_2/goods_99/small_201312262054594117.jpg', '1', '5');
INSERT INTO `ecm_goods_image` VALUES ('6', '6', 'data/files/store_2/goods_136/201312262055366831.jpg', 'data/files/store_2/goods_136/small_201312262055366831.jpg', '1', '6');
INSERT INTO `ecm_goods_image` VALUES ('7', '7', 'data/files/store_2/goods_180/201312262056209107.jpg', 'data/files/store_2/goods_180/small_201312262056209107.jpg', '1', '7');
INSERT INTO `ecm_goods_image` VALUES ('8', '8', 'data/files/store_2/goods_63/201312262057435880.jpg', 'data/files/store_2/goods_63/small_201312262057435880.jpg', '1', '8');
INSERT INTO `ecm_goods_image` VALUES ('9', '9', 'data/files/store_2/goods_120/201312262058402887.jpg', 'data/files/store_2/goods_120/small_201312262058402887.jpg', '1', '9');
INSERT INTO `ecm_goods_image` VALUES ('10', '10', 'data/files/store_2/goods_31/201312262100319871.jpg', 'data/files/store_2/goods_31/small_201312262100319871.jpg', '1', '10');
INSERT INTO `ecm_goods_image` VALUES ('11', '11', 'data/files/store_2/goods_75/201312262101158858.jpg', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '1', '11');
INSERT INTO `ecm_goods_image` VALUES ('12', '12', 'data/files/store_2/goods_144/201312262102246687.jpg', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '1', '12');
INSERT INTO `ecm_goods_image` VALUES ('13', '13', 'data/files/store_2/goods_2/201312262103227833.jpg', 'data/files/store_2/goods_2/small_201312262103227833.jpg', '1', '13');
INSERT INTO `ecm_goods_image` VALUES ('14', '14', 'data/files/store_2/goods_77/201312262104371080.jpg', 'data/files/store_2/goods_77/small_201312262104371080.jpg', '1', '14');
INSERT INTO `ecm_goods_image` VALUES ('15', '15', 'data/files/store_2/goods_153/201312262105539118.jpg', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '1', '15');
INSERT INTO `ecm_goods_image` VALUES ('16', '16', 'data/files/store_2/goods_69/201312262107499378.jpg', 'data/files/store_2/goods_69/small_201312262107499378.jpg', '1', '16');
INSERT INTO `ecm_goods_image` VALUES ('17', '17', 'data/files/store_2/goods_129/201312262108507192.jpg', 'data/files/store_2/goods_129/small_201312262108507192.jpg', '1', '17');
INSERT INTO `ecm_goods_image` VALUES ('18', '17', 'data/files/store_2/goods_130/201312262108508363.jpg', 'data/files/store_2/goods_130/small_201312262108508363.jpg', '255', '18');
INSERT INTO `ecm_goods_image` VALUES ('19', '18', 'data/files/store_2/goods_166/201312262109269656.jpg', 'data/files/store_2/goods_166/small_201312262109269656.jpg', '1', '19');
INSERT INTO `ecm_goods_image` VALUES ('20', '19', 'data/files/store_2/goods_28/201312262110282113.jpg', 'data/files/store_2/goods_28/small_201312262110282113.jpg', '1', '20');
INSERT INTO `ecm_goods_image` VALUES ('21', '20', 'data/files/store_2/goods_51/201312262110515808.jpg', 'data/files/store_2/goods_51/small_201312262110515808.jpg', '1', '21');
INSERT INTO `ecm_goods_image` VALUES ('22', '21', 'data/files/store_2/goods_124/201312262112041198.jpg', 'data/files/store_2/goods_124/small_201312262112041198.jpg', '1', '22');
INSERT INTO `ecm_goods_image` VALUES ('23', '22', 'data/files/store_2/goods_6/201312262113269791.jpg', 'data/files/store_2/goods_6/small_201312262113269791.jpg', '1', '23');
INSERT INTO `ecm_goods_image` VALUES ('24', '23', 'data/files/store_2/goods_71/201312262114315846.jpg', 'data/files/store_2/goods_71/small_201312262114315846.jpg', '1', '24');
INSERT INTO `ecm_goods_image` VALUES ('25', '24', 'data/files/store_2/goods_141/201312262115417011.jpg', 'data/files/store_2/goods_141/small_201312262115417011.jpg', '1', '25');
INSERT INTO `ecm_goods_image` VALUES ('26', '25', 'data/files/store_2/goods_3/201312262116433996.jpg', 'data/files/store_2/goods_3/small_201312262116433996.jpg', '1', '26');
INSERT INTO `ecm_goods_image` VALUES ('27', '26', 'data/files/store_2/goods_86/201312262118061068.jpg', 'data/files/store_2/goods_86/small_201312262118061068.jpg', '1', '27');
INSERT INTO `ecm_goods_image` VALUES ('28', '27', 'data/files/store_2/goods_160/201312262119204138.jpg', 'data/files/store_2/goods_160/small_201312262119204138.jpg', '1', '28');
INSERT INTO `ecm_goods_image` VALUES ('29', '28', 'data/files/store_2/goods_92/201312262134527551.jpg', 'data/files/store_2/goods_92/small_201312262134527551.jpg', '1', '29');
INSERT INTO `ecm_goods_image` VALUES ('30', '29', 'data/files/store_2/goods_192/201312262136326387.jpg', 'data/files/store_2/goods_192/small_201312262136326387.jpg', '1', '30');
INSERT INTO `ecm_goods_image` VALUES ('31', '30', 'data/files/store_2/goods_111/201312262138315559.jpg', 'data/files/store_2/goods_111/small_201312262138315559.jpg', '1', '31');
INSERT INTO `ecm_goods_image` VALUES ('32', '31', 'data/files/store_2/goods_189/201312262139497936.jpg', 'data/files/store_2/goods_189/small_201312262139497936.jpg', '1', '32');
INSERT INTO `ecm_goods_image` VALUES ('33', '32', 'data/files/store_2/goods_62/201312262141025440.jpg', 'data/files/store_2/goods_62/small_201312262141025440.jpg', '1', '33');
INSERT INTO `ecm_goods_image` VALUES ('34', '33', 'data/files/store_2/goods_125/201312262142056946.jpg', 'data/files/store_2/goods_125/small_201312262142056946.jpg', '1', '34');
INSERT INTO `ecm_goods_image` VALUES ('35', '34', 'data/files/store_2/goods_185/201312262143054186.jpg', 'data/files/store_2/goods_185/small_201312262143054186.jpg', '1', '35');
INSERT INTO `ecm_goods_image` VALUES ('36', '35', 'data/files/store_2/goods_42/201312262144021189.jpg', 'data/files/store_2/goods_42/small_201312262144021189.jpg', '1', '36');
INSERT INTO `ecm_goods_image` VALUES ('37', '36', 'data/files/store_2/goods_113/201312262145134866.jpg', 'data/files/store_2/goods_113/small_201312262145134866.jpg', '1', '37');
INSERT INTO `ecm_goods_image` VALUES ('38', '37', 'data/files/store_2/goods_7/201312262146474624.jpg', 'data/files/store_2/goods_7/small_201312262146474624.jpg', '1', '38');
INSERT INTO `ecm_goods_image` VALUES ('39', '38', 'data/files/store_2/goods_80/201312262148001815.jpg', 'data/files/store_2/goods_80/small_201312262148001815.jpg', '1', '39');
INSERT INTO `ecm_goods_image` VALUES ('40', '39', 'data/files/store_2/goods_139/201312262148598688.jpg', 'data/files/store_2/goods_139/small_201312262148598688.jpg', '1', '40');
INSERT INTO `ecm_goods_image` VALUES ('41', '40', 'data/files/store_2/goods_95/201312262151359791.jpg', 'data/files/store_2/goods_95/small_201312262151359791.jpg', '1', '41');
INSERT INTO `ecm_goods_image` VALUES ('42', '41', 'data/files/store_2/goods_130/201312262152104798.jpg', 'data/files/store_2/goods_130/small_201312262152104798.jpg', '1', '42');
INSERT INTO `ecm_goods_image` VALUES ('43', '42', 'data/files/store_2/goods_47/201312262154079508.jpg', 'data/files/store_2/goods_47/small_201312262154079508.jpg', '1', '43');
INSERT INTO `ecm_goods_image` VALUES ('44', '43', 'data/files/store_2/goods_93/201312262154537504.jpg', 'data/files/store_2/goods_93/small_201312262154537504.jpg', '1', '44');
INSERT INTO `ecm_goods_image` VALUES ('45', '44', 'data/files/store_2/goods_144/201312262155447040.jpg', 'data/files/store_2/goods_144/small_201312262155447040.jpg', '1', '45');
INSERT INTO `ecm_goods_image` VALUES ('46', '45', 'data/files/store_2/goods_178/201312262156186146.jpg', 'data/files/store_2/goods_178/small_201312262156186146.jpg', '1', '46');
INSERT INTO `ecm_goods_image` VALUES ('47', '46', 'data/files/store_2/goods_11/201312262156516537.jpg', 'data/files/store_2/goods_11/small_201312262156516537.jpg', '1', '47');
INSERT INTO `ecm_goods_image` VALUES ('48', '47', 'data/files/store_2/goods_76/201312262157569987.jpg', 'data/files/store_2/goods_76/small_201312262157569987.jpg', '1', '48');
INSERT INTO `ecm_goods_image` VALUES ('49', '48', 'data/files/store_2/goods_111/201312262158319438.jpg', 'data/files/store_2/goods_111/small_201312262158319438.jpg', '1', '49');
INSERT INTO `ecm_goods_image` VALUES ('50', '49', 'data/files/store_2/goods_162/201312262159227323.jpg', 'data/files/store_2/goods_162/small_201312262159227323.jpg', '1', '50');
INSERT INTO `ecm_goods_image` VALUES ('51', '50', 'data/files/store_2/goods_127/201312262205276887.jpg', 'data/files/store_2/goods_127/small_201312262205276887.jpg', '1', '51');
INSERT INTO `ecm_goods_image` VALUES ('52', '51', 'data/files/store_2/goods_173/201312262206139520.jpg', 'data/files/store_2/goods_173/small_201312262206139520.jpg', '1', '52');
INSERT INTO `ecm_goods_image` VALUES ('53', '52', 'data/files/store_2/goods_72/201312262207528762.jpg', 'data/files/store_2/goods_72/small_201312262207528762.jpg', '1', '53');
INSERT INTO `ecm_goods_image` VALUES ('54', '53', 'data/files/store_2/goods_102/201312262208227300.jpg', 'data/files/store_2/goods_102/small_201312262208227300.jpg', '1', '54');
INSERT INTO `ecm_goods_image` VALUES ('55', '54', 'data/files/store_2/goods_135/201312262208557042.jpg', 'data/files/store_2/goods_135/small_201312262208557042.jpg', '1', '55');
INSERT INTO `ecm_goods_image` VALUES ('56', '55', 'data/files/store_2/goods_176/201312262209361435.jpg', 'data/files/store_2/goods_176/small_201312262209361435.jpg', '1', '56');
INSERT INTO `ecm_goods_image` VALUES ('57', '56', 'data/files/store_2/goods_16/201312262210162177.jpg', 'data/files/store_2/goods_16/small_201312262210162177.jpg', '1', '57');
INSERT INTO `ecm_goods_image` VALUES ('58', '57', 'data/files/store_2/goods_57/201312262210575290.jpg', 'data/files/store_2/goods_57/small_201312262210575290.jpg', '1', '58');
INSERT INTO `ecm_goods_image` VALUES ('59', '58', 'data/files/store_2/goods_106/201312262211467126.jpg', 'data/files/store_2/goods_106/small_201312262211467126.jpg', '1', '59');
INSERT INTO `ecm_goods_image` VALUES ('60', '59', 'data/files/store_2/goods_152/201312262212327144.jpg', 'data/files/store_2/goods_152/small_201312262212327144.jpg', '1', '60');
INSERT INTO `ecm_goods_image` VALUES ('61', '60', 'data/files/store_2/goods_90/201312262218109004.jpg', 'data/files/store_2/goods_90/small_201312262218109004.jpg', '1', '61');
INSERT INTO `ecm_goods_image` VALUES ('62', '61', 'data/files/store_2/goods_114/201312262218342575.jpg', 'data/files/store_2/goods_114/small_201312262218342575.jpg', '1', '62');
INSERT INTO `ecm_goods_image` VALUES ('63', '62', 'data/files/store_2/goods_153/201312262219138421.jpg', 'data/files/store_2/goods_153/small_201312262219138421.jpg', '1', '63');
INSERT INTO `ecm_goods_image` VALUES ('64', '63', 'data/files/store_2/goods_6/201312262220067431.jpg', 'data/files/store_2/goods_6/small_201312262220067431.jpg', '1', '64');
INSERT INTO `ecm_goods_image` VALUES ('65', '64', 'data/files/store_2/goods_41/201312262220415407.jpg', 'data/files/store_2/goods_41/small_201312262220415407.jpg', '1', '65');
INSERT INTO `ecm_goods_image` VALUES ('66', '65', 'data/files/store_2/goods_143/201312262222237668.jpg', 'data/files/store_2/goods_143/small_201312262222237668.jpg', '1', '66');
INSERT INTO `ecm_goods_image` VALUES ('67', '66', 'data/files/store_2/goods_186/201312262223061143.jpg', 'data/files/store_2/goods_186/small_201312262223061143.jpg', '1', '67');
INSERT INTO `ecm_goods_image` VALUES ('68', '67', 'data/files/store_2/goods_26/201312262223464846.jpg', 'data/files/store_2/goods_26/small_201312262223464846.jpg', '1', '68');
INSERT INTO `ecm_goods_image` VALUES ('70', '68', 'data/files/store_2/goods_91/201312262224518849.jpg', 'data/files/store_2/goods_91/small_201312262224518849.jpg', '1', '70');
INSERT INTO `ecm_goods_image` VALUES ('71', '69', 'data/files/store_2/goods_131/201312262225311490.jpg', 'data/files/store_2/goods_131/small_201312262225311490.jpg', '1', '71');
INSERT INTO `ecm_goods_image` VALUES ('72', '70', 'data/files/store_2/goods_195/201312262233156335.jpg', 'data/files/store_2/goods_195/small_201312262233156335.jpg', '1', '72');
INSERT INTO `ecm_goods_image` VALUES ('73', '71', 'data/files/store_2/goods_44/201312262234045839.jpg', 'data/files/store_2/goods_44/small_201312262234045839.jpg', '1', '73');
INSERT INTO `ecm_goods_image` VALUES ('74', '72', 'data/files/store_2/goods_113/201312262235137180.jpg', 'data/files/store_2/goods_113/small_201312262235137180.jpg', '1', '74');
INSERT INTO `ecm_goods_image` VALUES ('75', '73', 'data/files/store_2/goods_142/201312262235429182.jpg', 'data/files/store_2/goods_142/small_201312262235429182.jpg', '1', '75');
INSERT INTO `ecm_goods_image` VALUES ('76', '74', 'data/files/store_2/goods_189/201312262236298305.jpg', 'data/files/store_2/goods_189/small_201312262236298305.jpg', '1', '76');
INSERT INTO `ecm_goods_image` VALUES ('77', '75', 'data/files/store_2/goods_38/201312262237189780.jpg', 'data/files/store_2/goods_38/small_201312262237189780.jpg', '1', '77');
INSERT INTO `ecm_goods_image` VALUES ('78', '76', 'data/files/store_2/goods_98/201312262238182827.jpg', 'data/files/store_2/goods_98/small_201312262238182827.jpg', '1', '78');
INSERT INTO `ecm_goods_image` VALUES ('79', '77', 'data/files/store_2/goods_179/201312262239393163.jpg', 'data/files/store_2/goods_179/small_201312262239393163.jpg', '1', '79');
INSERT INTO `ecm_goods_image` VALUES ('80', '78', 'data/files/store_2/goods_54/201312262240547284.jpg', 'data/files/store_2/goods_54/small_201312262240547284.jpg', '1', '80');
INSERT INTO `ecm_goods_image` VALUES ('81', '79', 'data/files/store_2/goods_97/201312262241379970.jpg', 'data/files/store_2/goods_97/small_201312262241379970.jpg', '1', '81');
INSERT INTO `ecm_goods_image` VALUES ('82', '80', 'data/files/store_2/goods_156/201312262242365477.jpg', 'data/files/store_2/goods_156/small_201312262242365477.jpg', '1', '82');
INSERT INTO `ecm_goods_image` VALUES ('83', '81', 'data/files/store_2/goods_111/201312262251512164.jpg', 'data/files/store_2/goods_111/small_201312262251512164.jpg', '1', '83');
INSERT INTO `ecm_goods_image` VALUES ('84', '82', 'data/files/store_2/goods_9/201312262253293800.jpg', 'data/files/store_2/goods_9/small_201312262253293800.jpg', '1', '84');
INSERT INTO `ecm_goods_image` VALUES ('85', '83', 'data/files/store_2/goods_80/201312262254404774.jpg', 'data/files/store_2/goods_80/small_201312262254404774.jpg', '1', '85');
INSERT INTO `ecm_goods_image` VALUES ('86', '84', 'data/files/store_2/goods_155/201312262255558436.jpg', 'data/files/store_2/goods_155/small_201312262255558436.jpg', '1', '86');
INSERT INTO `ecm_goods_image` VALUES ('87', '85', 'data/files/store_2/goods_6/201312262256466045.jpg', 'data/files/store_2/goods_6/small_201312262256466045.jpg', '1', '87');
INSERT INTO `ecm_goods_image` VALUES ('88', '86', 'data/files/store_2/goods_49/201312262257294186.jpg', 'data/files/store_2/goods_49/small_201312262257294186.jpg', '1', '88');
INSERT INTO `ecm_goods_image` VALUES ('89', '87', 'data/files/store_2/goods_86/201312262258066317.jpg', 'data/files/store_2/goods_86/small_201312262258066317.jpg', '1', '89');
INSERT INTO `ecm_goods_image` VALUES ('90', '88', 'data/files/store_2/goods_124/201312262258442397.jpg', 'data/files/store_2/goods_124/small_201312262258442397.jpg', '1', '90');
INSERT INTO `ecm_goods_image` VALUES ('91', '89', 'data/files/store_2/goods_180/201312262259401924.jpg', 'data/files/store_2/goods_180/small_201312262259401924.jpg', '1', '91');
INSERT INTO `ecm_goods_image` VALUES ('92', '90', 'data/files/store_2/goods_60/201312262301006712.jpg', 'data/files/store_2/goods_60/small_201312262301006712.jpg', '1', '92');
INSERT INTO `ecm_goods_image` VALUES ('93', '91', 'data/files/store_2/goods_155/201312262302356953.jpg', 'data/files/store_2/goods_155/small_201312262302356953.jpg', '1', '93');
INSERT INTO `ecm_goods_image` VALUES ('94', '92', 'data/files/store_2/goods_3/201312262303231812.jpg', 'data/files/store_2/goods_3/small_201312262303231812.jpg', '1', '94');
INSERT INTO `ecm_goods_image` VALUES ('95', '93', 'data/files/store_2/goods_48/201312262304085587.jpg', 'data/files/store_2/goods_48/small_201312262304085587.jpg', '1', '95');
INSERT INTO `ecm_goods_image` VALUES ('96', '94', 'data/files/store_2/goods_93/201312262304537590.jpg', 'data/files/store_2/goods_93/small_201312262304537590.jpg', '1', '96');
INSERT INTO `ecm_goods_image` VALUES ('99', '97', 'data/files/store_2/goods_27/201312262307078496.jpg', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '1', '99');
INSERT INTO `ecm_goods_image` VALUES ('104', '99', 'data/files/store_2/goods_123/201406260258439769.jpg', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '1', '104');
INSERT INTO `ecm_goods_image` VALUES ('109', '0', 'data/files/store_92/goods_173/201502250342535741.jpg', 'data/files/store_92/goods_173/small_201502250342535741.jpg', '255', '112');
INSERT INTO `ecm_goods_image` VALUES ('242', '335', 'data/files/store_2/goods_83/201504291958031037.jpeg', 'data/files/store_2/goods_83/small_201504291958031037.jpeg', '255', '257');
INSERT INTO `ecm_goods_image` VALUES ('247', '347', 'data/files/store_2/goods_108/201505030025082592.jpeg', 'data/files/store_2/goods_108/small_201505030025082592.jpeg', '1', '264');
INSERT INTO `ecm_goods_image` VALUES ('245', '345', 'data/files/store_970/goods_16/201504301703362317.png', 'data/files/store_970/goods_16/small_201504301703362317.png', '1', '261');
INSERT INTO `ecm_goods_image` VALUES ('246', '346', 'data/files/store_970/goods_5/201504301743259444.jpg', 'data/files/store_970/goods_5/small_201504301743259444.jpg', '1', '263');
INSERT INTO `ecm_goods_image` VALUES ('228', '335', 'data/files/store_2/goods_54/201504291957341609.jpeg', 'data/files/store_2/goods_54/small_201504291957341609.jpeg', '255', '243');
INSERT INTO `ecm_goods_image` VALUES ('248', '99', 'data/files/store_2/goods_152/201507191455523638.jpg', 'data/files/store_2/goods_152/small_201507191455523638.jpg', '255', '265');
INSERT INTO `ecm_goods_image` VALUES ('249', '99', 'data/files/store_2/goods_152/201507191455525187.jpg', 'data/files/store_2/goods_152/small_201507191455525187.jpg', '255', '266');
INSERT INTO `ecm_goods_image` VALUES ('250', '99', 'data/files/store_2/goods_152/201507191455525544.jpg', 'data/files/store_2/goods_152/small_201507191455525544.jpg', '255', '267');
INSERT INTO `ecm_goods_image` VALUES ('251', '99', 'data/files/store_2/goods_152/201507191455527648.jpg', 'data/files/store_2/goods_152/small_201507191455527648.jpg', '255', '268');
INSERT INTO `ecm_goods_image` VALUES ('252', '0', 'data/files/store_2/goods_133/201507191505338871.jpg', 'data/files/store_2/goods_133/small_201507191505338871.jpg', '255', '269');
INSERT INTO `ecm_goods_image` VALUES ('253', '0', 'data/files/store_2/goods_133/201507191505334633.jpg', 'data/files/store_2/goods_133/small_201507191505334633.jpg', '255', '270');
INSERT INTO `ecm_goods_image` VALUES ('254', '0', 'data/files/store_2/goods_133/201507191505334989.jpg', 'data/files/store_2/goods_133/small_201507191505334989.jpg', '255', '271');
INSERT INTO `ecm_goods_image` VALUES ('255', '0', 'data/files/store_2/goods_133/201507191505344391.jpg', 'data/files/store_2/goods_133/small_201507191505344391.jpg', '255', '272');
INSERT INTO `ecm_goods_image` VALUES ('256', '0', 'data/files/store_970/goods_46/201507191510468515.jpg', 'data/files/store_970/goods_46/small_201507191510468515.jpg', '255', '273');
INSERT INTO `ecm_goods_image` VALUES ('257', '0', 'data/files/store_970/goods_46/201507191510466851.jpg', 'data/files/store_970/goods_46/small_201507191510466851.jpg', '255', '274');
INSERT INTO `ecm_goods_image` VALUES ('258', '0', 'data/files/store_970/goods_46/201507191510461419.jpg', 'data/files/store_970/goods_46/small_201507191510461419.jpg', '255', '275');
INSERT INTO `ecm_goods_image` VALUES ('259', '0', 'data/files/store_970/goods_46/201507191510464989.jpg', 'data/files/store_970/goods_46/small_201507191510464989.jpg', '255', '276');

-- ----------------------------
-- Table structure for ecm_goods_prop
-- ----------------------------
DROP TABLE IF EXISTS `ecm_goods_prop`;
CREATE TABLE `ecm_goods_prop` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `shanchu` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_goods_prop
-- ----------------------------
INSERT INTO `ecm_goods_prop` VALUES ('1', '品牌', '1', '255', '1');
INSERT INTO `ecm_goods_prop` VALUES ('2', '类别', '1', '255', '1');
INSERT INTO `ecm_goods_prop` VALUES ('3', '规格', '1', '255', '1');
INSERT INTO `ecm_goods_prop` VALUES ('4', '产地', '1', '255', '1');
INSERT INTO `ecm_goods_prop` VALUES ('5', '价格区间', '1', '255', '1');

-- ----------------------------
-- Table structure for ecm_goods_prop_value
-- ----------------------------
DROP TABLE IF EXISTS `ecm_goods_prop_value`;
CREATE TABLE `ecm_goods_prop_value` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `prop_value` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_goods_prop_value
-- ----------------------------
INSERT INTO `ecm_goods_prop_value` VALUES ('1', '1', '红富士', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('2', '2', '苹果', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('3', '3', '礼盒装', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('4', '4', '国产', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('5', '5', '0-50', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('6', '1', '杰记水果', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('7', '2', '梨子', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('8', '2', '葡萄', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('9', '2', '红提', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('10', '3', '礼袋装', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('11', '4', '进口', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('12', '5', '50-100', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('13', '5', '100-200', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('14', '5', '200-500', '1', '255');
INSERT INTO `ecm_goods_prop_value` VALUES ('15', '4', '北京', '1', '255');

-- ----------------------------
-- Table structure for ecm_goods_pvs
-- ----------------------------
DROP TABLE IF EXISTS `ecm_goods_pvs`;
CREATE TABLE `ecm_goods_pvs` (
  `goods_id` int(11) NOT NULL,
  `pvs` text NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_goods_pvs
-- ----------------------------
INSERT INTO `ecm_goods_pvs` VALUES ('1', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('2', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('3', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('4', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('5', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('6', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('7', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('8', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('19', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('20', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('21', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('25', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('26', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('27', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('99', '5:12;4:11;3:3;2:2;1:6');
INSERT INTO `ecm_goods_pvs` VALUES ('112', '1:6;2:7;3:10;4:11;5:12');
INSERT INTO `ecm_goods_pvs` VALUES ('113', '1:1;2:2;3:10;4:4;5:5');

-- ----------------------------
-- Table structure for ecm_goods_statistics
-- ----------------------------
DROP TABLE IF EXISTS `ecm_goods_statistics`;
CREATE TABLE `ecm_goods_statistics` (
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `collects` int(10) unsigned NOT NULL DEFAULT '0',
  `carts` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_goods_statistics
-- ----------------------------
INSERT INTO `ecm_goods_statistics` VALUES ('1', '219', '0', '25', '15', '1', '1');
INSERT INTO `ecm_goods_statistics` VALUES ('2', '93', '0', '11', '5', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('3', '81', '0', '5', '3', '1', '1');
INSERT INTO `ecm_goods_statistics` VALUES ('4', '53', '0', '3', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('5', '38', '0', '4', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('6', '52', '0', '4', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('7', '52', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('8', '77', '0', '6', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('9', '72', '0', '6', '4', '1', '1');
INSERT INTO `ecm_goods_statistics` VALUES ('10', '81', '0', '5', '2', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('11', '167', '0', '12', '8', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('12', '165', '0', '28', '8', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('13', '156', '0', '13', '6', '1', '1');
INSERT INTO `ecm_goods_statistics` VALUES ('14', '192', '1', '7', '5', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('15', '286', '1', '47', '24', '3', '3');
INSERT INTO `ecm_goods_statistics` VALUES ('16', '67', '0', '5', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('17', '59', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('18', '62', '0', '2', '2', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('19', '81', '0', '3', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('20', '38', '0', '1', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('21', '66', '0', '8', '3', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('22', '54', '1', '6', '3', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('23', '29', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('24', '51', '0', '3', '2', '2', '2');
INSERT INTO `ecm_goods_statistics` VALUES ('25', '65', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('26', '47', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('27', '88', '0', '6', '5', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('28', '20', '0', '2', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('29', '15', '0', '5', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('30', '31', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('31', '40', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('32', '36', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('33', '45', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('34', '42', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('35', '31', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('36', '48', '0', '3', '2', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('37', '35', '0', '2', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('38', '49', '0', '4', '2', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('39', '63', '0', '9', '7', '1', '1');
INSERT INTO `ecm_goods_statistics` VALUES ('40', '29', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('41', '38', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('42', '32', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('43', '39', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('44', '29', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('45', '26', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('46', '34', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('47', '37', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('48', '46', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('49', '37', '0', '2', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('50', '30', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('51', '39', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('52', '33', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('53', '26', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('54', '32', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('55', '17', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('56', '28', '0', '1', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('57', '28', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('58', '60', '1', '4', '2', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('59', '34', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('60', '28', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('61', '24', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('62', '33', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('63', '28', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('64', '26', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('65', '31', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('66', '24', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('67', '23', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('68', '36', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('69', '28', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('70', '16', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('71', '17', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('72', '24', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('73', '74', '1', '4', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('74', '32', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('75', '32', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('76', '31', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('77', '27', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('78', '31', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('79', '35', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('80', '32', '0', '1', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('81', '20', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('82', '33', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('83', '22', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('84', '24', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('85', '27', '0', '1', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('86', '31', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('87', '24', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('88', '38', '0', '3', '1', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('89', '40', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('90', '56', '0', '2', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('91', '55', '1', '3', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('92', '46', '0', '3', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('93', '53', '0', '2', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('94', '77', '0', '4', '2', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('97', '141', '0', '16', '8', '15', '2');
INSERT INTO `ecm_goods_statistics` VALUES ('99', '22', '3', '4', '0', '11', '12');
INSERT INTO `ecm_goods_statistics` VALUES ('335', '0', '0', '0', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('347', '36', '2', '2', '0', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('345', '27', '0', '5', '5', '0', '0');
INSERT INTO `ecm_goods_statistics` VALUES ('346', '14', '0', '4', '4', '0', '0');

-- ----------------------------
-- Table structure for ecm_member
-- ----------------------------
DROP TABLE IF EXISTS `ecm_member`;
CREATE TABLE `ecm_member` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `real_name` varchar(60) DEFAULT NULL,
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `phone_tel` varchar(60) DEFAULT NULL,
  `phone_mob` varchar(60) DEFAULT NULL,
  `im_qq` varchar(60) DEFAULT NULL,
  `im_msn` varchar(60) DEFAULT NULL,
  `im_skype` varchar(60) DEFAULT NULL,
  `im_yahoo` varchar(60) DEFAULT NULL,
  `im_aliww` varchar(60) DEFAULT NULL,
  `reg_time` int(10) unsigned DEFAULT '0',
  `last_login` int(10) unsigned DEFAULT NULL,
  `last_ip` varchar(15) DEFAULT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `ugrade` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `portrait` varchar(255) DEFAULT NULL,
  `outer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `activation` varchar(60) DEFAULT NULL,
  `feed_config` text NOT NULL,
  `growth` int(20) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL,
  `sname` varchar(150) NOT NULL,
  `is_qr` int(11) NOT NULL,
  `tuijian_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `outer_id` (`outer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_member
-- ----------------------------
INSERT INTO `ecm_member` VALUES ('1', 'admin', 'admin@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, null, null, '', '', null, null, null, '1388016632', '1437256652', '127.0.0.1', '772', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('2', 'seller', '123456@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '0', '0000-00-00', null, null, '33333333333333', '', null, null, null, '1388031020', '1437517002', '127.0.0.1', '615', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('3', 'buyer', '123456@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1388031042', '1437691092', '127.0.0.1', '92', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('5', '玉州宝-媒', '2082824785@qq.com', 'ccebce360744ce7ef79a8717a85a1fc8', null, '0', null, null, null, null, null, null, null, null, '1423260453', '1423260453', '222.85.132.197', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/09C7928333ECD4E891BC8BC1468D8947/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('799', 'T丶estim', '1436677025@qq.com', '52352f80403747c8bfa092c170b74312', null, '0', null, null, null, null, null, null, null, null, '1429836180', '1429836180', '60.208.217.17', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/94132CAB64892B41E853AD65872232B8/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('783', 'ee7pp', 'ee7pp@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429828372', '1429828372', '124.192.131.129', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('8', '达州商务', '277152819@qq.com', '96e79218965eb72c92a549dd5a330112', '', '0', null, null, null, '', '', null, null, null, '1423264413', '1429405026', '27.158.75.191', '12', '1', '', '0', null, '', '1000', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('9', '待人如己', '1112273813@qq.com', '88bb38da78937c5d84de9a6deb30afac', null, '0', null, null, null, null, null, null, null, null, '1423264463', '1423264463', '39.77.189.158', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/BD77B24FD95FB6B26DCC2F813C380B2E/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('754', 'e51th', 'e51th@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429791633', '1429791633', '66.249.65.57', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('755', 'e76xc', 'e76xc@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795384', '1429795384', '101.226.169.207', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('800', '狼族', '268392676@qq.com', '65de8f36f33673f6dbf7f4185184f5c8', null, '0', null, null, null, null, null, null, null, null, '1429839051', '1429839051', '221.195.57.30', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/71665DF8490F4845314BC7F43A2F8347/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('13', 'yajiew', '850633043@qq.com', 'a66abb5684c45962d887564f08346e8d', null, '0', null, null, null, null, null, null, null, null, '1423339945', '1423339945', '59.172.51.235', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('798', 'A丰达电器', 'czmxjd@126.com', '2db4c8c056974a3cb0b1722594b1d468', null, '0', null, null, null, null, null, null, null, null, '1429835882', '1429835882', '111.161.26.202', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('797', 'ep0xg', 'ep0xg@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429831575', '1429831575', '36.99.31.149', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('271', '雷', '948601728@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427085990', '1427085990', '116.248.96.205', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/559F3CB3B5B25BB30213640D834D8608/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('18', '坐看鲰鲰', '442553734@qq.com', 'c58908989c6a6f632ec306bb366c3c50', null, '0', null, null, null, null, null, null, null, null, '1423413818', '1423413818', '125.75.114.57', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('20', '欧美服饰', 'zaixiaolei@163.com', '25f9e794323b453885f5181f1b624d0b', null, '0', null, null, null, null, null, null, null, null, '1423416061', '1423416061', '182.118.178.98', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('21', 'vm14234262414', 'vm14234262414@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423426241', '1423426241', '111.37.29.31', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('22', '何卓权', '302777166@qq.com', 'e03fdeb836bb71cc287fb34969b09b4f', null, '0', null, null, null, null, null, null, null, null, '1423433015', '1423433015', '183.51.176.129', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('23', 'ixt', 'shuyan510258365@qq.com', '8ffd4bbb83e37cec349e7c5a632fbb5e', null, '0', null, null, null, null, null, null, null, null, '1423436570', '1423444786', '180.125.247.105', '2', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('709', '14297119707736', '1429711970@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429683170', '1430010089', '110.72.41.112', '2', '1', 'images/head/1430040747.jpg', '0', null, '', '0', '2', '超级店铺', '1', '578');
INSERT INTO `ecm_member` VALUES ('577', '14294104291988', '1429410429@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429381629', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('25', '世纪名足', '2311846586@QQ.COM', '27b71b12bca00ea0d47707b50c85584c', null, '0', null, null, null, null, null, null, null, null, '1423458282', '1423458282', '111.8.185.95', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('26', '敬亭山', '57795851@qq.com', '9dd275dd85e86699320ccba654913572', null, '0', null, null, null, null, null, null, null, null, '1423462492', '1423462492', '116.117.72.202', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/00BF932AE3524E88BEA7F80857AB79A7/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('27', 'vm14234632097', 'vm14234632097@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423463209', '1423463209', '116.117.72.202', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('28', 'vm14234650287', 'vm14234650287@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423465028', '1423465028', '14.29.126.39', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('29', 'vm14234723231', 'vm14234723231@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423472323', '1423472323', '180.143.188.228', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('30', 'vm14235484646', 'vm14235484646@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423703711', '1423703711', '220.166.83.254', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('31', 'vm14237042309', 'vm14237042309@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423704230', '1423704230', '112.64.235.248', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('32', 'vm14237061809', 'vm14237061809@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423706180', '1423706201', '122.200.91.178', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('33', 'vm14237127485', 'vm14237127485@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423712748', '1423712748', '60.180.227.246', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('34', '佳润超市', '157390346@qq.com', 'f094ee400599bd4a4f2515f8a17f6c8d', null, '0', null, null, null, null, null, null, null, null, '1423717311', '1424973809', '218.8.16.128', '2', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('35', 'vm14237593524', 'vm14237593524@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423759352', '1423759352', '60.10.71.205', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('36', 'vm14237593536', 'vm14237593536@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423759353', '1423759353', '101.226.33.222', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('37', 'vm14237617586', 'vm14237617586@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423761758', '1423761758', '139.205.152.3', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('38', 'vm14237685777', 'vm14237685777@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423768577', '1423768577', '116.9.38.12', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('39', 'vm14237797777', 'vm14237797777@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423779777', '1423779777', '182.118.20.161', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('40', '222222', '2222@163.com', 'e3ceb5881a0a1fdaad01296d7554868d', null, '0', null, null, null, null, null, null, null, null, '1423810825', '1423810825', '175.155.69.138', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('41', 'vm14238288081', 'vm14238288081@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423828808', '1423828808', '220.181.108.157', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('42', 'vm14238456106', 'vm14238456106@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423845610', '1423845610', '111.175.41.186', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('43', '小肖oО°', '149113702@qq.com', '4424344659c010c837e4d223c0b4a990', null, '0', null, null, null, null, null, null, null, null, '1423891834', '1429911966', '183.222.9.195', '3', '1', 'http://q.qlogo.cn/qqapp/101168325/641A4D71E0854941021FB8CDE6729515/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('44', 'lvzhishuang', '1610826668@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1423899094', '1423899094', '27.198.128.94', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('46', '千丈之松', '561246511@qq.com', '3e137a9d42b2d6351ce2096b99c1b89d', null, '0', null, null, null, null, null, null, null, null, '1423951288', '1423951288', '122.113.40.170', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/562A775705209FD9D0D4BEB22CA8126A/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('47', 'bdxybg', 'yongli7424@126.com', 'f84d8e552de8a9e752a982a5b3aec833', null, '0', null, null, null, null, null, null, null, null, '1423966361', '1423966361', '27.187.179.132', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('48', '訫哩囿妳', '1224318372@qq.com', '80ec125ffcd8eb8737a84dc2a7c806b6', null, '0', null, null, null, null, null, null, null, null, '1423976206', '1423976206', '180.130.151.215', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/507FC9F2FE3DC4A4343CA68A2650D229/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('50', 'vm14239897496', 'vm14239897496@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1423989749', '1423989749', '68.180.228.175', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('51', 'liukeqqs', '364923792@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1423996575', '1423996575', '58.251.249.22', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('52', '中', '548278826@qq.com', '23fda4b7cf5f42eb5ddc40ad696b34f2', null, '0', null, null, null, null, null, null, null, null, '1424041406', '1424041406', '180.107.160.58', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/07500BBAA414F3C4CC8FF42D1D08225F/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('53', 'vm14240680765', 'vm14240680765@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424068076', '1424128136', '112.239.92.61', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('54', 'vm14240894122', 'vm14240894122@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424089412', '1424089412', '123.125.71.26', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('55', 'shenda', '844100775@qq.com', '0a1aadf0f91f927ec8832648a41e2b1e', null, '0', null, null, null, null, null, null, null, null, '1424115643', '1424130163', '112.239.92.61', '3', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('56', 'babgsfc', 'babgsfc@qq.com', 'a8a01545be8125d8c10d3e69c168dde3', null, '0', null, null, null, null, null, null, null, null, '1424120519', '1424204298', '106.38.238.32', '8', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('59', 'huang', '690700147@qq.com', 'd38a403079d91dfdce951b6b5c3b9e5d', '', '1', null, null, null, '690700147', '', null, null, null, '1424215530', '1427319123', '219.128.161.210', '10', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('57', 'vm14241272172', 'vm14241272172@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424127217', '1424127217', '118.120.246.251', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('58', 'vm14241377322', 'vm14241377322@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424137732', '1424137732', '60.191.192.204', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('60', '123456', 'dff@163.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1424233512', '1427934472', '144.12.101.172', '4', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('61', 'qweqwe', 'lalashucai@126.com', 'efe6398127928f1b2e9ef3207fb82663', null, '0', null, null, null, null, null, null, null, null, '1424249407', '1424249407', '110.243.0.214', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('62', 'qweqweqq', 'qqweqwe@126.com', 'dad0dbe4a438630aba5376e44cf87410', null, '0', null, null, null, null, null, null, null, null, '1424249579', '1424249579', '110.243.0.214', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('63', 'jiangfeng_577', 'jiangfeng_577@163.com', 'e902f037d62a21e542334395b7905bdb', null, '0', null, null, null, null, null, null, null, null, '1424317697', '1424317697', '1.181.190.211', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('64', 'vm14243742239', 'vm14243742239@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424374223', '1424493473', '183.9.109.106', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('65', 'vm14243964244', 'vm14243964244@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424396425', '1424396425', '14.17.29.85', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('66', 'vm14243964251', 'vm14243964251@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424396425', '1424396517', '117.136.40.23', '3', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('67', 'ヾAlways√', '1688179440@qq.com', '2b5a309d1412ec94f4ccef09c33144eb', null, '0', null, null, null, null, null, null, null, null, '1424429529', '1424429529', '10.139.10.194', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/A94CB8781A162997EC4D4955D2F3EBFD/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('68', 'vm14244603198', 'vm14244603198@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424460319', '1424460319', '14.29.125.153', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('69', 'wwp', '2108001882@qq.com', 'cdc2e2cbe8f99d2908471b71ad927069', null, '0', null, null, null, null, null, null, null, null, '1424460622', '1424925059', '218.19.97.104', '4', '1', 'http://q.qlogo.cn/qqapp/101168325/D56AD9CBC52CF4B92AF838B88704790E/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('70', '斯为凡夫', '1286470801@qq.com', 'ef968b2f36bb6abc0617d987dcd849b1', null, '0', null, null, null, null, null, null, null, null, '1424479159', '1424479159', '180.165.144.93', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/62E6364E343BA7B6AA1EE05B3903701C/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('71', '酷酷—未', '966988522@qq.com', '8ea1cbe13976bf7ea117c85ee81ecfab', null, '0', null, null, null, null, null, null, null, null, '1424479209', '1425083904', '180.136.233.194', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/7BC74B1E7617F1C2DE7BDD7698EB0DF7/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('72', '', '369808039@qq.com', '0e15dd91fe9753bb095b27b71bb67aa7', '', '0', '0000-00-00', null, null, '', '', null, null, null, '1424487996', '1424487996', '113.228.240.64', '1', '1', 'data/files/mall/portrait/1/72.jpg', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('73', 'vm14244909655', 'vm14244909655@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424490965', '1424651129', '113.228.240.64', '2', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('74', 'vm14245196499', 'vm14245196499@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424519649', '1424519649', '124.72.109.164', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('75', 'vm14245200708', 'vm14245200708@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424520070', '1424520070', '124.72.109.164', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('76', 'vm14245200702', 'vm14245200702@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424520070', '1424520070', '101.226.33.222', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('77', 'vm14245726856', 'vm14245726856@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424572685', '1424572685', '71.176.66.25', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('78', 'vm14246247641', 'vm14246247641@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424624764', '1424624764', '121.31.251.51', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('79', 'vm14246301874', 'vm14246301874@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424630187', '1424630431', '120.82.140.33', '12', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('80', 'vm14231934603', 'vm14231934603@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424647914', '1424647914', '183.252.52.58', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('81', 'vm14246511298', 'vm14246511298@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424651129', '1424651129', '180.153.206.35', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('82', 'vm14246512935', 'vm14246512935@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424651293', '1424653745', '113.228.240.64', '4', '1', null, '0', null, '', '84', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('83', 'vm14246537784', 'vm14246537784@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424653778', '1424653778', '113.228.240.64', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('84', 'vm14246537958', 'vm14246537958@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424653795', '1424653795', '113.228.240.64', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('85', 'vm14246538083', 'vm14246538083@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424653808', '1424653808', '113.228.240.64', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('86', 'jdgjdjd', 'gsdfgs@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1424653875', '1424653875', '113.228.240.64', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('87', '金源印刷', '24591455@qq.com', 'ef0d7d31a48b8bdb1e422d88df919454', null, '0', null, null, null, null, null, null, null, null, '1424697291', '1424697291', '223.152.207.46', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/A3AECDA39C46407B836B6A02CD211355/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('88', 'vm14246990413', 'vm14246990413@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424699041', '1424699041', '123.125.71.80', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('89', 'a163', 'ghhjj@bhh.cc', '58cf703f664397ec4f0ac359b84b565c', null, '0', null, null, null, null, null, null, null, null, '1424709760', '1424709760', '39.75.74.157', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('90', '8888', 'eee@111.com', '21218cca77804d2ba1922c33e0151105', null, '0', null, null, null, null, null, null, null, null, '1424719851', '1424719851', '111.3.155.90', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('91', 'vm14247628239', 'vm14247628239@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424762823', '1424762823', '38.111.147.83', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('92', 'yijian', '123456@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1424777615', '1424779559', '14.20.176.12', '5', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('93', 'vm14247790455', 'vm14247790455@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424779045', '1424779380', '14.20.176.12', '3', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('94', '叶子', '447260576@qq.com', '4df1b489a1c470fd3c761f79f0c66cf3', null, '0', null, null, null, null, null, null, null, null, '1424827272', '1424827272', '60.12.219.184', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/CCE3ED683EF9C316A2DE58D6E2F1C01F/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('95', '9967', '1111@124.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424846999', '1424846999', '123.233.27.171', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('96', 'king', '1601472298@qq.com', 'c8228c415509cfd8b8fc0e3932b1a0fc', null, '0', null, null, null, null, null, null, null, null, '1424889730', '1424890159', '175.155.143.109', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/11E1F66F6B17D0B8202BA867CA199A94/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('97', 'vm14249166703', 'vm14249166703@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424916670', '1424916670', '1.62.73.134', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('98', 'vm14249245072', 'vm14249245072@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1424924507', '1424924507', '110.82.200.129', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('99', '不想起名', '211193872@qq.com', '805ab8cc080fe439aefe0fd03effd74d', null, '0', null, null, null, null, null, null, null, null, '1425002286', '1426498648', '49.113.198.229', '3', '1', 'http://q.qlogo.cn/qqapp/101168325/9867B871738AAB7AFCCBC197809E133D/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('100', '☜ 宝贝驾', '1472835052@qq.com', '7d0c12e785625675a333e580843547d5', null, '0', null, null, null, null, null, null, null, null, '1425018826', '1429725912', '125.43.178.68', '4', '1', 'http://q.qlogo.cn/qqapp/101168325/7CA3E9D3F129DA4B801DC127F2570923/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('101', 'vm14250189446', 'vm14250189446@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425018944', '1425018944', '182.118.20.206', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('102', 'vm14250773199', 'vm14250773199@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425077319', '1425077319', '221.204.173.16', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('103', 'vm14250778405', 'vm14250778405@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425077840', '1425077906', '14.18.243.111', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('104', '熊仔饼干', '2022718645@qq.com', 'b1106aabf5692e655c40a496d9212b00', null, '0', null, null, null, null, null, null, null, null, '1425099873', '1425099959', '113.103.5.159', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/718070714233C2498AEE0B5A5DFC5DC8/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('105', 'molechan', '1141112001@qq.com', 'dd7f82edcd2bcc4a87fe427b1d130391', null, '0', null, null, null, null, null, null, null, null, '1425104992', '1425104992', '223.73.23.186', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/73D0C52A93D20B6877CD4A54FC145A94/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('106', '123456qe', 'rrtfe@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1425107351', '1425107351', '118.78.87.112', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('107', '阿贝尼', '17808274@qq.com', 'ae15e73724dc5944928186cfe9e3891d', null, '0', null, null, null, null, null, null, null, null, '1425113161', '1425113161', '183.194.103.9', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/D86670207DA47CBFB2158B4B53125668/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('108', 'vm14251509901', 'vm14251509901@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425150990', '1425150990', '85.25.246.62', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('109', '用心良苦', '1822181239@qq.com', 'b5ad54d785f5e3760a8a7c58930dbf24', null, '0', null, null, null, null, null, null, null, null, '1425165719', '1425165719', '112.26.80.175', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/23ACBBA1CFB5A92ACA2E13FA564E92EC/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('110', '1914142279', '1914142279@qq.com', 'a8d0b91779f40ef42e97742addc3ce52', null, '0', null, null, null, null, null, null, null, null, '1425184844', '1425184844', '183.5.237.173', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('111', 'vm14251906358', 'vm14251906358@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425190635', '1425190635', '14.205.154.238', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('112', '时光', '1519451993@qq.com', '7efdc65ec2ffce0bd042bb251df995db', null, '0', null, null, null, null, null, null, null, null, '1425190805', '1425190805', '139.206.192.141', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/515CBB13CA47EA5B362047BCD9DE718C/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('113', 'vm14251914994', 'vm14251914994@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425191499', '1425191499', '121.12.106.82', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('114', 'docnn', 'docnn@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1425231427', '1425231455', '110.152.6.48', '2', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('115', '1234567', '5554444@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1425879594', '1425934703', '101.22.196.8', '3', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('116', 'vm14258920623', 'vm14258920623@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425892062', '1425892062', '101.65.0.193', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('117', 'vm14259183922', 'vm14259183922@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425918392', '1425918392', '101.22.196.8', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('118', 'vm14258382886', 'vm14258382886@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425925146', '1426011341', '119.57.132.87', '3', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('119', '一路向北', '1482127326@qq.com', '4a998b1fe1056e9c11e6d228b060a3e1', null, '0', null, null, null, null, null, null, null, null, '1425928928', '1425928928', '223.199.102.180', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/FA643D5F5B8154197F70AD4390444D7E/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('120', 'wangweibin', 'huangheyingshi@163.com', '512d15942511fd6bd5ea176f7074690d', null, '0', null, null, null, null, null, null, null, null, '1425930373', '1425930373', '27.38.52.142', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('121', 'vm14259459308', 'vm14259459308@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425945930', '1425945930', '113.120.118.70', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('122', 'vm14259528335', 'vm14259528335@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425952833', '1425952833', '10.111.0.121', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('123', '诚信', '1006292858@qq.com', '329e5102311908f8c27e7f080eadfb97', null, '0', null, null, null, null, null, null, null, null, '1425957787', '1425957863', '222.244.242.111', '3', '1', 'http://q.qlogo.cn/qqapp/101168325/7D16E5FC464B845AEE65CADCA85BF108/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('124', '万付支付', '1724613770@qq.com', '8ff94cb1445d6617b4ea79f6213dc437', null, '0', null, null, null, null, null, null, null, null, '1425962218', '1425962218', '221.231.6.221', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/6113856590C68B657530C7ED39572D07/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('125', 'vm14259641673', 'vm14259641673@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425964167', '1425964167', '60.10.71.68', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('126', 'vm14259641675', 'vm14259641675@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425964167', '1425964167', '180.153.206.20', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('127', 'vm14259641679', 'vm14259641679@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1425964167', '1425964167', '101.226.33.199', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('128', 'pennyglory', 'pennyglory@163.com', '43b97fdbf027a75be50858f96497bea7', '李文君', '1', '1987-05-17', null, null, '408549697', '', null, null, null, '1426013325', '1426013325', '113.96.89.194', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('129', '雅兰雪芳', '633488250@qq.com', 'de96f22725461a2651befe1c9497b649', null, '0', null, null, null, null, null, null, null, null, '1426013802', '1426013802', '183.224.91.9', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/F817F7EB162D4874BDEE1BE0EDA79F75/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('130', 'vm14260238232', 'vm14260238232@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426023823', '1426023823', '113.236.240.41', '1', '1', null, '0', null, '', '8', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('131', 'vm14260238695', 'vm14260238695@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426023869', '1426023869', '220.181.127.233', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('132', 'vm14260238909', 'vm14260238909@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426023890', '1426023890', '220.181.132.197', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('133', 'buyer1', '12@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '0', '0000-00-00', null, null, '', '', null, null, null, '1426025215', '1426110273', '113.236.240.41', '4', '1', 'data/files/mall/portrait/1/133.jpg', '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('134', 'vm14260260971', 'vm14260260971@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426026097', '1426026097', '113.134.111.148', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('135', '万家生活', '1949649946@qq.com', 'ba2f29197a19ca7557b034e7b0d34240', null, '0', null, null, null, null, null, null, null, null, '1426026267', '1426026267', '113.134.111.148', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/D09A927D5BA7894C9AAA689786E4DD7C/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('136', '天利和人', '298319157@qq.com', 'c899b91d4f84a46a11a29a3d1b992f10', null, '0', null, null, null, null, null, null, null, null, '1426027737', '1426027737', '112.243.26.66', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/B26F43EB817BA466E9260AB6D073932D/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('137', 'vm14260314406', 'vm14260314406@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426031440', '1426031440', '116.1.50.173', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('138', '小鱼鱼', '815984819@qq.com', '25f9e794323b453885f5181f1b624d0b', null, '0', null, null, null, null, null, null, null, null, '1426033230', '1426033230', '116.1.50.173', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('139', '机遇。', '343047117@qq.com', '8efa0c448b17b8a3ba1eaa5bc5ebad70', null, '0', null, null, null, null, null, null, null, null, '1426039710', '1426039710', '123.52.131.20', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/1A906BA1CEA6C937F399D10D2CD7ABB6/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('140', 'vm14260470184', 'vm14260470184@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426047018', '1426047018', '123.125.71.52', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('141', '潇哥', '2035238196@qq.com', 'fa9d93674a207312db26613adf71f1ec', null, '0', null, null, null, null, null, null, null, null, '1426103649', '1426963902', '14.209.182.88', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/DD440A26A86BD05FDA7B8CA0F1913F6A/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('142', '简', '2080274874@qq.com', '29ba404910fc4eb9fbb8b0f7d8e09874', null, '0', null, null, null, null, null, null, null, null, '1426113140', '1426113140', '183.5.241.202', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/0A6C2A53EEFA0CF7F4F630D499B36771/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('143', '天空之城', '370799323@qq.com', 'b6eaf65ec73693eb7f69a8b726ca1b2d', null, '0', null, null, null, null, null, null, null, null, '1426118371', '1426118371', '175.17.155.149', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/B10A71473E4942C7F65C917750A76EB5/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('144', 'kongbai0012', 'ch3851478115@163.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1426118819', '1426118819', '119.142.131.68', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('145', '刘小哥', '1764277569@qq.com', '1669b15aa524bcba654b5328775c103f', null, '0', null, null, null, null, null, null, null, null, '1426133731', '1426133731', '125.79.45.154', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/4E22F932F9EBDE7603F62BA99D88AC3F/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('146', 'vm14261351478', 'vm14261351478@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426135147', '1426135147', '203.106.159.147', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('147', 'hgdasr', '2345678@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1426140054', '1426140438', '124.135.254.232', '3', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('148', 'vm14261409522', 'vm14261409522@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426140952', '1426140952', '119.136.114.17', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('149', 'vm14261410118', 'vm14261410118@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426141011', '1426577555', '101.254.190.167', '5', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('150', 'vm14261840517', 'vm14261840517@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426184051', '1426470365', '49.72.198.131', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('151', '我就是我', '877616356@qq.com', 'b29696aab5940c334dc5c00d018ab99f', null, '0', null, null, null, null, null, null, null, null, '1426184216', '1426184216', '106.111.90.17', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/8E1BE202C2C64477B1B0795E1A091E44/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('152', 'vm14261956991', 'vm14261956991@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426195699', '1426195699', '182.118.25.241', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('153', '', '1059347273@qq.com', '09d4124f724f1720e1822346a1cd9650', null, '0', null, null, null, null, null, null, null, null, '1426207228', '1426291317', '119.0.128.195', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/5123A0D82FB00CCEEF59FEB0E70492FB/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('154', '888888', 'admin@163.com', '21218cca77804d2ba1922c33e0151105', null, '0', null, null, null, null, null, null, null, null, '1426210298', '1426210298', '59.42.210.20', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('155', 'vm14262129573', 'vm14262129573@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426212957', '1426212994', '119.0.128.195', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('156', 'vm14262134762', 'vm14262134762@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426213476', '1426213476', '101.226.33.224', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('157', 'vm14262198598', 'vm14262198598@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426219859', '1426219859', '14.219.252.191', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('158', '宝马', '1216491214@qq.com', '45b1351d611a6dd3ee052e2acf50a90c', null, '0', null, null, null, null, null, null, null, null, '1426223202', '1426223202', '218.107.214.169', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/FB04046A674B407CDEA442B975D43E86/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('159', 'ltailt', 'lting216@163.com', '11a35bc9653ce44b2a186a1392b646b3', null, '0', null, null, null, null, null, null, null, null, '1426226575', '1426226575', '183.30.218.136', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('160', 'xfx', 'qw778989@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1426262971', '1426262971', '218.71.151.177', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('161', 'vm14262879002', 'vm14262879002@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426287900', '1426287900', '36.44.220.171', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('162', 'vm14262879008', 'vm14262879008@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426287900', '1426287900', '112.64.235.87', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('163', '昌诚微信', '2076828774@qq.com', 'e5681d17f370351fab26d11c71cf8c60', null, '0', null, null, null, null, null, null, null, null, '1426294085', '1426294085', '106.6.110.197', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/C6406CD24E9B17B2D6ED7646630CA375/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('164', 'vm14262946839', 'vm14262946839@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426294683', '1426294683', '223.152.205.187', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('165', '成茂科技', '1075131245@qq.com', 'f8ce8a32eb453c51fbf5b2565afcd209', null, '0', null, null, null, null, null, null, null, null, '1426299530', '1426299530', '222.75.186.131', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/335810252E85FDFA4932CDA64C9361AC/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('166', '来福/ws梯', '1313614680@qq.com', '56bfe1e2d5d26d3828f6203de8962350', null, '0', null, null, null, null, null, null, null, null, '1426311241', '1426311241', '125.113.153.204', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/B3CAFAB8AED9B75FE70C177167E509E6/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('167', '遗忘DE城市', '73922180@qq.com', '16be40a19a3633ec58773ee05681ab2a', null, '0', null, null, null, null, null, null, null, null, '1426312323', '1426312323', '139.205.13.219', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/EFF7D8B47DB4876829825CAE640C3BA6/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('168', 'vm14263277266', 'vm14263277266@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426327726', '1426327948', '112.252.163.37', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('169', 'vm14263737468', 'vm14263737468@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426373746', '1426374268', '183.252.52.214', '3', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('170', 'vm14263741552', 'vm14263741552@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426374155', '1426374155', '36.32.161.194', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('171', 'vm14263760311', 'vm14263760311@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426376031', '1426376031', '112.5.243.202', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('172', 'vm14263760318', 'vm14263760318@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426376031', '1426376031', '222.73.77.54', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('173', '米米的小屋', 'mx8084@126.com', '3b60471848ea536278b0c753ce1064c6', null, '0', null, null, null, null, null, null, null, null, '1426387276', '1426387437', '110.6.34.48', '2', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('174', '性感一夏', '1761097120@qq.com', 'a8d90802e1024947beac56d8c1a28835', null, '0', null, null, null, null, null, null, null, null, '1426392853', '1426392853', '39.187.215.34', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('175', '10000', '10000@qq.com', 'd0970714757783e6cf17b26fb8e2298f', null, '0', null, null, null, null, null, null, null, null, '1426397017', '1430317873', '59.45.81.214', '3', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('176', 'xiaowu16633', '476797883@qq.com', '155ba39d8e055fbbe3dacbb479b5676a', null, '0', null, null, null, null, null, null, null, null, '1426435907', '1426435907', '221.1.139.225', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('177', 'Mexifan D', '1561635869@qq.com', 'dadad86baa185b29ffadde62491e9c40', null, '0', null, null, null, null, null, null, null, null, '1426444124', '1426444124', '111.160.170.158', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/561F6B1468E1D37964317E88CFE6EEDF/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('178', '灿烂明天', '1786180145@qq.com', 'a70b2bfff0a0f2c510f63d51a2464aba', null, '0', null, null, null, null, null, null, null, null, '1426450502', '1426450502', '175.152.94.106', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/501C56CFF8E840759E966A4C53D08C3F/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('179', 'liyongfu', '779672275@163.com', '6e32e32950cde705403b6c4fd843a067', null, '0', null, null, null, null, null, null, null, null, '1426461023', '1426461023', '221.209.60.82', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('180', 'vm14264628584', 'vm14264628584@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426462858', '1426462858', '121.19.81.172', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('181', 'vm14264638429', 'vm14264638429@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426463842', '1426463842', '121.19.81.172', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('182', 'demo', 'demo@163.com', 'c514c91e4ed341f263e458d44b3bb0a7', null, '0', null, null, null, null, null, null, null, null, '1426465547', '1426465547', '59.42.210.20', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('183', 'vm14264658763', 'vm14264658763@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426465876', '1426465876', '60.31.42.118', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('184', 'vm14264668843', 'vm14264668843@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426466884', '1426466884', '122.193.89.90', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('185', 'zbfgc', 'sfsffs@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1426468858', '1426468858', '115.215.224.101', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('186', '一分利', '2428882150@qq.com', '11a1bb7307e6a1fa0d5041de92abf5ef', null, '0', null, null, null, null, null, null, null, null, '1426471219', '1426471219', '36.40.213.69', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('187', 'vm14264723889', 'vm14264723889@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426472388', '1426472388', '66.249.67.77', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('188', 'vm14264726854', 'vm14264726854@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426472685', '1426472685', '66.249.67.77', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('189', 'vm14264799266', 'vm14264799266@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426479926', '1426479926', '42.120.161.57', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('190', 'Somnr▼', '2034607070@qq.com', '00707ec00fd13c3c9d5e681fc936580f', null, '0', null, null, null, null, null, null, null, null, '1426485725', '1427154551', '211.103.79.110', '7', '1', 'http://q.qlogo.cn/qqapp/101168325/59C1A91143C74717801A2664472A1966/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('191', 'vm14265221926', 'vm14265221926@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426522192', '1426522195', '218.85.192.111', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('192', 'vm14265269477', 'vm14265269477@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426526947', '1426526947', '220.181.108.150', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('193', '博士℡', '76569619@qq.com', 'f2d115ac5b573f3f54f7eec5b62baa40', null, '0', null, null, null, null, null, null, null, null, '1426532394', '1426533530', '116.114.135.98', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/B7420D2651447964FAD3D7D894A6E129/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('194', 'vm14265372226', 'vm14265372226@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426537222', '1426561529', '221.214.171.240', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('195', 'vm14265372222', 'vm14265372222@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426537222', '1426537222', '101.226.65.104', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('196', 'vm14265449683', 'vm14265449683@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426544968', '1426544969', '140.246.57.2', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('197', 'vm14265523245', 'vm14265523245@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426552324', '1426552324', '27.28.114.29', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('198', 'vm14265528847', 'vm14265528847@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426552884', '1426552884', '27.28.114.29', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('199', 'vm14265558747', 'vm14265558747@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426555874', '1426555893', '61.181.143.226', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('200', '泰康器械', '287300618@qq.com', 'fdb3d3eda81b03c27223cf52e2f618b2', null, '0', null, null, null, null, null, null, null, null, '1426556127', '1426556297', '112.227.82.151', '2', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('201', 'fjfj99', '11111@qq.com', '1d96b8e836c548cb78019af211e3155f', null, '0', null, null, null, null, null, null, null, null, '1426568792', '1427003306', '59.61.166.161', '3', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('202', '亿天网路', '2114645034@qq.com', '4348bde042d553731dbb31e4381913e7', null, '0', null, null, null, null, null, null, null, null, '1426594181', '1426645869', '171.119.202.104', '3', '1', 'http://q.qlogo.cn/qqapp/101168325/0992CC4DD19F64566EDBF4CEAC461DEE/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('203', 'vm14266135088', 'vm14266135088@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426613508', '1426613508', '61.167.156.69', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('204', '周哥哥', '1625269278@qq.com', '9817240e7570e91bbfb26799071e8a7d', null, '0', null, null, null, null, null, null, null, null, '1426613551', '1426613834', '61.167.156.69', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/54E54BCD357B086A6C1DE6B855D33919/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('205', 'mmmg', '33350214@qq.com', 'd8e423a9d5eb97da9e2d58cd57b92808', null, '0', null, null, null, null, null, null, null, null, '1426631067', '1426631067', '60.166.134.215', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('206', 'whqwhq743', 'fgbjuh@126.com', 'aec60231d83fe6cf81444bc536596887', null, '0', null, null, null, null, null, null, null, null, '1426639739', '1427048277', '182.35.35.133', '20', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('207', 'vm14266398058', 'vm14266398058@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426639805', '1426639805', '182.118.22.226', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('208', 'whqwhq', 'fghg@126.com', 'aec60231d83fe6cf81444bc536596887', null, '0', null, null, null, null, null, null, null, null, '1426641282', '1426641282', '182.35.60.155', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('209', '延边生活', '1496729551@qq.com', '6187207c919f52d08f03ee4c4f6ed88b', 'dfsafasf', '1', '0000-00-00', null, null, '373201074', '', null, null, null, '1426646306', '1426992470', '119.50.124.38', '4', '1', 'http://q.qlogo.cn/qqapp/101168325/D1D4C67DCF6B699C60E1EFE0D84C9546/100', '0', null, '', '2', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('210', 'ybztv8090', 'tyhff@123.com', 'b9c09dc407b831b4d99d36d5e844937f', null, '0', null, null, null, null, null, null, null, null, '1426656719', '1426657296', '222.162.88.110', '2', '1', null, '0', null, '', '14', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('211', 'aiq3049', 'aiq3049aiq3049aiq3049aiq3049aiq3049aiq3049aiq3049aiq3049aiq3', 'f2c74bc5deb29cd14a21291a4a3d1c40', null, '0', null, null, null, null, null, null, null, null, '1426660377', '1426660377', '171.35.96.156', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('212', 'wgn306572312', '306572312@qq.com', 'c617c68a2dd9308cae7c0299de2f6dac', null, '0', null, null, null, null, null, null, null, null, '1426669573', '1426669573', '163.179.238.247', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('213', '毒不死的', '527529009@qq.com', 'db53ccfa69164f2b92c10992660ad277', null, '0', null, null, null, null, null, null, null, null, '1426671137', '1427620423', '124.79.213.255', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/F733D4508DB8229D52C46AD19699CB39/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('214', 'vm14266989163', 'vm14266989163@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426698916', '1426698916', '101.226.166.232', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('215', 'vm14266990134', 'vm14266990134@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426699013', '1426699013', '182.118.25.233', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('216', 'vm14267304783', 'vm14267304783@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426730478', '1426730478', '42.85.218.172', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('217', 'aa', '720511678@qq.com', '1fd4437ad9e1493a0bce03cc304fada5', null, '0', null, null, null, null, null, null, null, null, '1426742545', '1426742545', '110.248.207.15', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/46DEE31E2ED2832FA0B5E08E107204C6/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('218', 'vm14267484923', 'vm14267484923@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426748492', '1426748492', '119.130.86.84', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('219', 'ping', '249151650@qq.com', '3b510d6e2961824d56dae26ec6ff92ce', null, '0', null, null, null, null, null, null, null, null, '1426750233', '1426750233', '119.130.86.84', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/1BED5AC86B049EF3209A0B0B3CB210A4/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('220', '敖谦', '984293339@qq.com', '0dfbaffff6d83423fe26b3d32c2e82fe', null, '0', null, null, null, null, null, null, null, null, '1426752621', '1426752621', '111.194.141.18', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/7868BCDDADB7BEBE83F155DE1B5A5C26/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('221', 'babudog', '1318345477@qq.com', '1cca9a0756c761bfd4893c523c7fb4db', null, '0', null, null, null, null, null, null, null, null, '1426792118', '1426792118', '14.158.207.136', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('222', 'vm14267933122', 'vm14267933122@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426793312', '1426793363', '171.94.141.37', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('223', 'vm14268173562', 'vm14268173562@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426817356', '1426817356', '182.118.20.161', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('224', 'vm14268174376', 'vm14268174376@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426817437', '1426817437', '101.226.166.232', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('225', 'vm14268174651', 'vm14268174651@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426817465', '1426817465', '182.118.25.214', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('226', 'vm14268175967', 'vm14268175967@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426817596', '1426817596', '182.118.22.223', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('227', 'vm14268178727', 'vm14268178727@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426817872', '1426817872', '182.118.25.237', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('228', 'tianzhiqiyu', '15336358111@189.cn', 'eb13ab4e0b3c704de15ed302041df01a', null, '0', null, null, null, null, null, null, null, null, '1426826006', '1426826006', '182.42.155.200', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('229', 'vm14268375078', 'vm14268375078@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426837507', '1426837507', '182.118.22.247', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('230', 'vm14268375624', 'vm14268375624@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426837562', '1426837562', '101.226.169.217', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('231', 'vm14268375865', 'vm14268375865@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426837586', '1426837586', '182.118.20.234', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('232', '淡定', '1011212245@qq.com', '03e275e7dd73c2198215402040985c10', null, '0', null, null, null, null, null, null, null, null, '1426893269', '1426893269', '113.73.79.157', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/6B239283692D8062C463DD641A60CECA/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('233', '吴春江', '525470348@qq.com', '083b3bcd3ab3fb475118f466f737f7df', null, '0', null, null, null, null, null, null, null, null, '1426893790', '1426893790', '119.187.127.82', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/00F9FB8B0112390E070EFEA55F727BA3/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('234', 'vm14269022679', 'vm14269022679@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426902267', '1427087092', '117.24.17.132', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('235', 'vm14269110419', 'vm14269110419@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426911041', '1427788834', '110.248.230.48', '19', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('236', '馒头', '112446126@qq.com', 'd51867677daf866088fa93a21645e1ea', null, '0', null, null, null, null, null, null, null, null, '1426918826', '1426918826', '183.232.39.76', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/E1CA0FAC3FEED3CEC4C966AC1CE3816C/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('237', 'vm14269515763', 'vm14269515763@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426951576', '1426951576', '101.226.169.215', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('238', 'vm14269516624', 'vm14269516624@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426951662', '1426951662', '182.118.22.227', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('239', 'vm14269517527', 'vm14269517527@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426951752', '1426951752', '101.226.168.202', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('240', 'vm14269518368', 'vm14269518368@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426951836', '1426951836', '101.226.166.226', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('241', 'vm14269518478', 'vm14269518478@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426951847', '1426951847', '101.226.168.250', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('242', 'vm14269701119', 'vm14269701119@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426970111', '1426970111', '157.55.39.51', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('243', '似水流年', '512853972@qq.com', 'd00b96d870383bb5ac7ff0d614e6fbe2', null, '0', null, null, null, null, null, null, null, null, '1426977847', '1426978891', '123.184.215.104', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/FC94A34EFA20E9F48881CD11820DF3B2/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('244', 'vm14269909921', 'vm14269909921@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426990992', '1426993051', '110.248.207.15', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('245', 'vm14269977946', 'vm14269977946@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1426997794', '1426997794', '123.149.87.232', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('246', 'vm14270008657', 'vm14270008657@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427000865', '1427000865', '110.248.207.15', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('247', 'vm14270008665', 'vm14270008665@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427000866', '1427000866', '180.153.213.141', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('248', 'vm14270079667', 'vm14270079667@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427007966', '1427147038', '113.228.240.233', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('249', 'vm14270080063', 'vm14270080063@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427008006', '1427008006', '220.181.127.233', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('250', 'vm14270080781', 'vm14270080781@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427008078', '1427008078', '101.199.108.118', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('251', 'godaddy', '2028790071@qq.com', 'f694b1cdcab80444b691288431e415fb', null, '0', null, null, null, null, null, null, null, null, '1427009743', '1427009743', '110.52.135.43', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/8A90A775F6FAD119269CEA34940A22B1/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('252', 'vm14270195458', 'vm14270195458@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427019545', '1427019545', '101.226.167.229', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('253', 'vm14270196023', 'vm14270196023@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427019602', '1427019602', '101.226.168.243', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('254', 'vm14270197184', 'vm14270197184@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427019718', '1427019718', '182.118.25.239', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('255', 'vm14270197986', 'vm14270197986@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427019798', '1427019798', '182.118.21.219', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('256', 'vm14270198366', 'vm14270198366@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427019836', '1427019836', '182.118.22.223', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('257', 'vm14270362304', 'vm14270362304@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427036230', '1427036230', '157.55.39.51', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('258', 'vm14270392762', 'vm14270392762@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427039276', '1427043056', '222.161.208.14', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('259', 'vm14270392814', 'vm14270392814@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427039281', '1427039547', '218.11.179.100', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('260', 'zgj963', '825152711@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1427047022', '1427047022', '14.146.17.122', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('261', 'igo530', '111@163.com', 'b311bfcd1b30d0b49914d8e99616bbb5', null, '0', null, null, null, null, null, null, null, null, '1427049380', '1427049380', '219.146.175.138', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('262', 'vm14270518118', 'vm14270518118@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427051811', '1427051811', '27.205.93.224', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('263', 'vm14270518115', 'vm14270518115@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427051811', '1427051811', '112.64.235.246', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('264', '哈哈', '649303341@qq.com', '214282e82de9c0605d86d18144201427', null, '0', null, null, null, null, null, null, null, null, '1427062120', '1427062607', '202.63.167.46', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/44997AC8335E11657D751C9E118D394B/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('265', 'vm14270627699', 'vm14270627699@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427062769', '1427080809', '218.9.39.129', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('269', 'vm14270807499', 'vm14270807499@126.com', 'e3ceb5881a0a1fdaad01296d7554868d', null, '0', null, null, null, null, null, null, null, null, '1427080749', '1427170892', '183.252.52.214', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('270', 'vm14270859506', 'vm14270859506@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427085950', '1427085950', '117.136.11.76', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('272', 'vm14270866155', 'vm14270866155@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427086615', '1427086615', '180.153.213.141', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('273', 'vm14271126014', 'vm14271126014@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427112601', '1427112601', '101.226.168.252', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('274', 'vm14271127248', 'vm14271127248@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427112724', '1427112724', '182.118.22.204', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('275', 'vm14271128021', 'vm14271128021@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427112802', '1427112802', '182.118.22.230', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('276', 'vm14271128303', 'vm14271128303@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427112830', '1427112830', '182.118.25.223', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('277', 'vm14271128675', 'vm14271128675@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427112867', '1427112867', '182.118.22.212', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('278', 'vm14271128944', 'vm14271128944@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427112894', '1427112894', '182.118.21.240', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('279', 'vm14271382747', 'vm14271382747@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427138274', '1427138304', '175.9.55.4', '10', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('280', 'vm14271412634', 'vm14271412634@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427141263', '1427141263', '60.216.195.98', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('281', 'vm14271436934', 'vm14271436934@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427143693', '1427143693', '61.155.31.50', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('282', 'ntlhua', 'ntlhua@163.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1427144882', '1427144882', '112.2.30.188', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('283', 'vm14271466766', 'vm14271466766@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427146676', '1427146676', '221.224.254.238', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('284', 'vm14271470381', 'vm14271470381@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427147038', '1427147038', '180.153.214.200', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('285', 'vm14271470383', 'vm14271470383@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427147038', '1427147038', '101.226.68.217', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('286', 'vm14271470391', 'vm14271470391@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427147039', '1427147039', '180.153.206.25', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('287', 'vm14271470768', 'vm14271470768@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427147076', '1427147076', '220.181.127.233', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('288', 'vm14271471313', 'vm14271471313@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427147131', '1427147131', '101.199.108.54', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('289', 'vm14271513497', 'vm14271513497@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427151349', '1427151349', '113.205.41.125', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('290', 'vm14271517742', 'vm14271517742@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427151774', '1427151774', '27.18.95.105', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('291', 'vm14271555096', 'vm14271555096@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427155509', '1427155520', '119.187.127.82', '3', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('292', 'vm14271611835', 'vm14271611835@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427161183', '1427161183', '182.202.31.97', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('293', '1820', 'chentao20090212@sina.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1427161305', '1427161305', '210.82.109.25', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('294', 'vm14271629361', 'vm14271629361@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427162936', '1427162936', '222.69.140.242', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('295', 'SAPEOO', '839384916@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427163808', '1427163808', '118.77.230.198', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/E3C6ACA47A23792F6279F77F359E70FA/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('296', '二哥', '1088319894@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427168941', '1427168941', '124.226.36.246', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/9C0BDD2A3A5CA80C06CF017022BBCD6A/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('297', '15121823771', '2456573964@qq.com', 'e687395e6cbf9233899967aeaa228345', null, '0', null, null, null, null, null, null, null, null, '1427170918', '1427170918', '36.103.219.31', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('298', '再多一天', '136846952@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427170974', '1427170974', '36.103.219.31', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/2A721AB8479B2C1D04B9C33AF75CBB65/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('299', 'pop-data', '412770770@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427171486', '1427171486', '123.80.176.27', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/B874ACA204E3A7EA5E78DE4E90DE344A/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('300', 'vm14271849775', 'vm14271849775@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427184977', '1427184980', '117.24.17.132', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('301', 'vm14272010993', 'vm14272010993@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427201099', '1427201099', '111.22.233.118', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('302', 'lll', 'dfg@AAS.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1427223502', '1427223502', '121.34.163.189', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('303', 'vm14272239978', 'vm14272239978@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427223997', '1427223997', '110.80.69.8', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('304', 'vm14272239972', 'vm14272239972@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427223997', '1427223997', '180.153.206.35', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('305', 'vm14272274161', 'vm14272274161@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427227416', '1427227426', '110.80.69.8', '3', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('306', '风声', '858408521@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427236999', '1427236999', '117.90.71.164', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/56D284E89EA18264902C6D6D2F27A660/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('307', '聚展', '123456@163.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1427242980', '1427242980', '59.42.210.20', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('308', 'vm14272433802', 'vm14272433802@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427243380', '1427243380', '110.208.5.228', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('309', 'vm14272572708', 'vm14272572708@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427257270', '1427257270', '101.226.169.206', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('310', 'vm14272573916', 'vm14272573916@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427257391', '1427257391', '182.118.25.213', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('311', 'vm14272574677', 'vm14272574677@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427257467', '1427257467', '182.118.21.212', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('312', 'vm14272574776', 'vm14272574776@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427257477', '1427257477', '101.226.169.226', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('313', 'vm14272576294', 'vm14272576294@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427257629', '1427257629', '182.118.21.233', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('314', 'vm14272576688', 'vm14272576688@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427257668', '1427257668', '182.118.21.229', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('315', 'vm14272577595', 'vm14272577595@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427257759', '1427257759', '101.226.166.233', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('316', 'rhan520', 'rh520@163.com', '25d55ad283aa400af464c76d713c07ad', null, '0', null, null, null, null, null, null, null, null, '1427258449', '1427331047', '101.254.197.103', '3', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('317', 'vm14272970757', 'vm14272970757@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427297075', '1427297075', '122.232.25.191', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('318', 'vm14273017752', 'vm14273017752@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427301775', '1427301775', '111.22.233.29', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('319', 'vm14273115178', 'vm14273115178@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427311517', '1427311517', '1.69.36.73', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('320', 'hzp', 'sdeed@163.com', '21218cca77804d2ba1922c33e0151105', null, '0', null, null, null, null, null, null, null, null, '1427312367', '1427312367', '59.42.210.20', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('321', 'vm14273125203', 'vm14273125203@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427312520', '1427312520', '119.253.39.113', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('322', '黄㊞☎在', '7998213@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427319813', '1427319813', '117.36.6.67', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/841BE060B8C47B952815DF7C285C6BB4/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('323', '张万茂', '168298451@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427321269', '1427321269', '221.221.12.101', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/AA7BC1311E7023ECEE79439263349D98/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('324', 'vm14273279049', 'vm14273279049@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427327904', '1427327904', '101.226.168.253', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('325', 'vm14273279204', 'vm14273279204@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427327920', '1427327920', '182.118.25.236', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('326', 'vm14273279992', 'vm14273279992@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427327999', '1427327999', '182.118.20.215', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('327', 'vm14273287576', 'vm14273287576@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427328757', '1427328757', '101.226.166.246', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('328', 'vm14273287838', 'vm14273287838@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427328783', '1427328783', '101.226.166.241', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('329', 'vm14273290111', 'vm14273290111@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427329011', '1427329011', '101.226.166.236', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('330', 'vm14273291826', 'vm14273291826@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427329182', '1427329182', '101.226.166.214', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('331', 'vm14273293583', 'vm14273293583@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427329358', '1427329358', '101.226.167.250', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('332', 'vm14273508866', 'vm14273508866@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427350886', '1427350886', '123.125.71.92', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('333', 'vm14273618647', 'vm14273618647@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427361864', '1427361864', '101.226.89.116', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('334', 'vm14273618643', 'vm14273618643@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427361864', '1427361912', '202.105.176.233', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('335', 'julley', 'julley@uuo.cn', 'ed69494555dfaf8f7eb50784b174c40b', null, '0', null, null, null, null, null, null, null, null, '1427361952', '1427361952', '202.105.176.233', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('336', 'vm14273740834', 'vm14273740834@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427374083', '1427374083', '101.226.166.203', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('337', 'vm14273741216', 'vm14273741216@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427374121', '1427374121', '182.118.25.211', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('338', 'vm14273741439', 'vm14273741439@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427374143', '1427374143', '101.226.167.236', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('339', 'vm14273744328', 'vm14273744328@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427374432', '1427374432', '182.118.22.223', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('340', 'vm14273745173', 'vm14273745173@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427374517', '1427374517', '182.118.20.168', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('341', 'vm14273746743', 'vm14273746743@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427374674', '1427374674', '101.226.167.199', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('342', 'vm14273747775', 'vm14273747775@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427374777', '1427374777', '182.118.20.212', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('343', 'vm14273836828', 'vm14273836828@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427383682', '1427383682', '220.181.108.149', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('344', 'vm14274111229', 'vm14274111229@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427411122', '1427411122', '182.207.29.144', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('345', 'vm14274161229', 'vm14274161229@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427416122', '1427416122', '183.60.62.44', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('346', 'vm14274161227', 'vm14274161227@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427416122', '1427416122', '118.249.163.188', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('347', 'vm14274273117', 'vm14274273117@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427427311', '1427427311', '183.218.173.46', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('348', 'vm14274381068', 'vm14274381068@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427438106', '1427438106', '36.32.97.132', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('349', 'vm14274381066', 'vm14274381066@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427438106', '1427438106', '180.153.163.210', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('350', 'vm14274396745', 'vm14274396745@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427439674', '1427439674', '38.111.147.83', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('351', 'vm14274487967', 'vm14274487967@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427448796', '1427449420', '14.30.4.108', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('352', 'vm14274660162', 'vm14274660162@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427466016', '1427466016', '36.99.31.44', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('353', 'vm14274841362', 'vm14274841362@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427484136', '1427484136', '119.86.100.41', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('354', 'vm14274927848', 'vm14274927848@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427492784', '1427492784', '101.226.166.198', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('355', 'vm14274927871', 'vm14274927871@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427492787', '1427492787', '182.118.25.241', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('356', 'vm14274928828', 'vm14274928828@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427492882', '1427492882', '101.226.167.219', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('357', 'vm14274929905', 'vm14274929905@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427492990', '1427492990', '101.226.166.195', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('358', 'vm14274935221', 'vm14274935221@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427493522', '1427493522', '101.226.167.199', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('359', 'vm14274935234', 'vm14274935234@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427493523', '1427493523', '101.226.167.201', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('360', 'vm14274946717', 'vm14274946717@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427494671', '1427494671', '101.226.166.235', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('361', '齐市(英皇)', '59955440@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427496519', '1427496519', '125.211.196.6', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/12A39398AF79DE929DB3B1CDE3DD533A/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('362', 'vm14274993002', 'vm14274993002@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427499300', '1427499300', '36.99.31.162', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('363', 'testshao', 'testshao@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1427500045', '1427500045', '182.151.126.172', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('364', 'vm14275068139', 'vm14275068139@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427506813', '1427506813', '118.116.40.174', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('365', 'vm14275076286', 'vm14275076286@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427507628', '1427507628', '61.48.58.9', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('366', '科技文化', '1597039763@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427512827', '1427512827', '211.162.34.251', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/C16A05DA55BAC7B509321DFBBD62455D/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('367', 'vm14275138839', 'vm14275138839@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427513883', '1427513883', '120.210.181.207', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('368', '启云网络', '1711404789@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427513946', '1427513946', '211.162.34.251', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/001C087286DAE4A690FF56F89B741654/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('369', 'vm14275188835', 'vm14275188835@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427518883', '1427518958', '60.208.152.61', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('370', 'vm14275189607', 'vm14275189607@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427518960', '1427518960', '112.65.193.16', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('371', 'vm14275510374', 'vm14275510374@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427551037', '1427551037', '183.239.132.69', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('372', 'vm14275570935', 'vm14275570935@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427557093', '1427557093', '182.118.22.223', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('373', 'vm14275571302', 'vm14275571302@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427557130', '1427557130', '182.118.21.228', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('374', 'vm14275571526', 'vm14275571526@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427557152', '1427557152', '182.118.25.231', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('375', 'vm14275572468', 'vm14275572468@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427557246', '1427557246', '101.226.168.229', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('376', 'vm14275573223', 'vm14275573223@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427557322', '1427557322', '101.226.167.237', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('377', 'vm14275573325', 'vm14275573325@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427557332', '1427557332', '101.226.166.195', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('378', 'vm14275575708', 'vm14275575708@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427557570', '1427557570', '182.118.20.163', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('379', 'vm14275576279', 'vm14275576279@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427557627', '1427557627', '110.19.44.33', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('380', 'vm14275760196', 'vm14275760196@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427576019', '1427576019', '111.22.233.12', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('381', 'vm14275810509', 'vm14275810509@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427581050', '1427581050', '36.99.31.99', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('382', 'vm14275853069', 'vm14275853069@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427585306', '1427585306', '183.131.11.83', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('383', 'vm14275939708', 'vm14275939708@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427593970', '1427593970', '123.125.71.83', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('384', 'vm14276042103', 'vm14276042103@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427604210', '1427604210', '222.94.82.177', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('385', 'Airey', 'aireylous@hotmail.com', 'f71914baf55e70a697ab28c74aa0d53a', null, '0', null, null, null, null, null, null, null, null, '1427611388', '1427611388', '113.105.12.150', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('386', 'asp2010', '1450632861@qq.com', 'fb7b72d60d4552748ed91e1e9fab1670', null, '0', null, null, null, null, null, null, null, null, '1427613513', '1427613513', '106.115.65.196', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('387', 'vm14276138992', 'vm14276138992@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427613899', '1427613899', '106.115.65.196', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('388', 'vm14276416278', 'vm14276416278@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427641627', '1427641627', '1.93.52.93', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('389', 'vm14276483715', 'vm14276483715@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427648371', '1427648371', '115.159.83.230', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('390', 'vm14276570333', 'vm14276570333@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427657033', '1427657033', '202.155.230.46', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('391', 'vm14276570348', 'vm14276570348@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427657034', '1427657034', '202.155.230.46', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('392', '包头男女', '1447708187@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427661244', '1427673483', '111.126.252.168', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/7E5BFBEAD5DA135CA29B7D3B9C3E2C81/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('393', 'vm14276650069', 'vm14276650069@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427665006', '1427665006', '101.226.166.217', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('394', 'vm14276650446', 'vm14276650446@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427665044', '1427665044', '182.118.21.234', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('395', 'vm14276650492', 'vm14276650492@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427665049', '1427665049', '101.226.166.237', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('396', 'vm14276650527', 'vm14276650527@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427665052', '1427665052', '182.118.25.201', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('397', 'vm14276650933', 'vm14276650933@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427665093', '1427665093', '101.226.166.201', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('398', 'vm14276651089', 'vm14276651089@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427665108', '1427665108', '182.118.25.221', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('399', 'vm14276651163', 'vm14276651163@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427665116', '1427665116', '101.226.167.225', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('400', 'vm14276651828', 'vm14276651828@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427665182', '1427665182', '182.118.22.213', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('401', 'vm14276678077', 'vm14276678077@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427667807', '1427667807', '183.252.52.222', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('402', 'vm14276694797', 'vm14276694797@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427669479', '1427669479', '112.14.148.62', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('403', '司空见惯', '1135856740@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427674128', '1427674128', '175.155.13.9', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/B0C6DE9C8A50B75C0266187F399470D9/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('404', '慧海云际', '1231618919@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427678784', '1427678784', '222.129.37.46', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/844598BFD7800FFC13305F50D6FBB345/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('405', '紫菱', '19417173@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427679819', '1427679819', '111.126.252.168', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/7D45D30310B98C78CB4BD267C96AE7C7/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('406', 'vm14276849489', 'vm14276849489@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427684948', '1427684948', '113.97.2.174', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('407', 'vm14276885181', 'vm14276885181@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427688518', '1427688518', '101.226.166.217', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('408', 'vm14276898521', 'vm14276898521@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427689852', '1427689852', '123.182.99.166', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('409', 'vm14276982779', 'vm14276982779@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427698277', '1427698277', '188.165.15.207', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('410', 'success', '135197160@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427702016', '1427702016', '119.130.85.24', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/F182A8953F27AC82B849383FE6B5B89A/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('411', 'dywsj', 'dyxiaoli007@163.com', '560ee9d287b0187302b8f5dd4d6a0223', null, '0', null, null, null, null, null, null, null, null, '1427705092', '1427705092', '119.187.218.216', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('412', '大年初一', '62791089@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427725791', '1427725791', '106.86.18.167', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/66A86D56D186A516234E4A3C7666FDE4/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('413', 'vm14277310282', 'vm14277310282@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427731028', '1427731028', '66.249.67.77', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('414', 'zhaoyanming', '2628458508@qq.com', '77ab41cfd1d6ae006fa6e10986447b33', null, '0', null, null, null, null, null, null, null, null, '1427735302', '1427735302', '219.155.82.196', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('415', 'vm14277461896', 'vm14277461896@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427746189', '1427746189', '183.13.88.48', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('416', 'vm14277575589', 'vm14277575589@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427757558', '1427757725', '122.230.23.98', '3', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('417', '蒲公英的', '24577887@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1427761601', '1427761601', '180.175.145.24', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('418', 'vm14277622947', 'vm14277622947@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427762294', '1427762294', '125.42.198.151', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('419', 'vm14277688357', 'vm14277688357@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427768835', '1427768893', '118.250.183.153', '3', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('420', 'vm14277730936', 'vm14277730936@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427773093', '1427773093', '106.16.88.136', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('421', 'vm14277730939', 'vm14277730939@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427773093', '1427773093', '180.153.206.26', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('422', 'vm14277731296', 'vm14277731296@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427773129', '1427773129', '101.226.66.191', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('423', 'vm14277794126', 'vm14277794126@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427779412', '1427779412', '101.226.168.221', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('424', 'vm14277794123', 'vm14277794123@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427779412', '1427779412', '182.118.22.231', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('425', 'vm14277794567', 'vm14277794567@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427779456', '1427779456', '101.226.168.219', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('426', 'vm14277794718', 'vm14277794718@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427779471', '1427779471', '101.226.169.206', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('427', 'vm14277794765', 'vm14277794765@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427779476', '1427779476', '182.118.20.217', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('428', 'vm14277794798', 'vm14277794798@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427779479', '1427779479', '101.226.167.236', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('429', 'vm14277794838', 'vm14277794838@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427779483', '1427779483', '182.118.25.216', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('430', 'vm14277794848', 'vm14277794848@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427779484', '1427779484', '182.118.20.166', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('431', 'vm14277795775', 'vm14277795775@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427779577', '1427779577', '101.226.166.199', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('432', 'admin888', 'admin888@qq.com', '7fef6171469e80d32c0559f88b377245', null, '0', null, null, null, null, null, null, null, null, '1427779658', '1427871868', '112.242.70.154', '3', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('433', 'lalala', 'lalala@qq.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427781101', '1430181381', '112.5.248.153', '10', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('434', 'vm14277814656', 'vm14277814656@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427781465', '1427781465', '112.242.70.154', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('435', 'vm14277814651', 'vm14277814651@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427781465', '1427781465', '112.90.78.25', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('436', 'vm14278062761', 'vm14278062761@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427806276', '1427806276', '182.118.20.173', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('437', 'vm14278065453', 'vm14278065453@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427806545', '1427806545', '101.226.166.241', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('438', 'vm14278065657', 'vm14278065657@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427806565', '1427806565', '182.118.20.216', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('439', 'vm14278066394', 'vm14278066394@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427806639', '1427806639', '182.118.20.202', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('440', 'vm14278066792', 'vm14278066792@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427806679', '1427806679', '101.226.167.222', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('441', 'vm14278066952', 'vm14278066952@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427806695', '1427806695', '182.118.22.211', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('442', 'vm14278067019', 'vm14278067019@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427806701', '1427806701', '182.118.22.142', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('443', 'vm14278067118', 'vm14278067118@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427806711', '1427806711', '101.226.169.222', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('444', 'vm14278067934', 'vm14278067934@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427806793', '1427806793', '182.118.25.203', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('445', 'vm14278072331', 'vm14278072331@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427807233', '1427807233', '182.118.22.213', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('446', '明丰达童', '1913173325@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427826110', '1427863203', '175.43.121.191', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/1F2461AA5A21B6891B61D6CD84B79903/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('447', 'xiaoziang', 'yinhuali0907@qq.com', '72e3ffc33ecedb5f036f7f86423f18dc', null, '0', null, null, null, null, null, null, null, null, '1427826375', '1427826375', '113.57.191.76', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('448', '阳光', '522710774@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427831309', '1427831309', '120.195.5.10', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/CE0777D77FDD6EED371CDE8ACFAD8C9E/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('449', 'vm14278313329', 'vm14278313329@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427831332', '1427831332', '120.195.5.10', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('450', '无为', '289015609@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427832415', '1427832513', '211.157.180.58', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/CB2047209F8BDAAF34C550678C53BA83/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('451', '网商', '261727347@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427836828', '1427836828', '171.119.243.200', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/753FF0A5FAF30FE3959DD78496E3F6A0/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('452', 'xinhua', '111@qq.com', 'edbe0e66fce2809e396fedd5c47ac8f8', null, '0', null, null, null, null, null, null, null, null, '1427837398', '1427847942', '171.119.243.200', '6', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('453', 'yuanliang', '444@qq.com', '9f9c4359acca5dd0d00b275a6e9c5713', '', '0', null, null, null, '', '', null, null, null, '1427839211', '1427839382', '171.119.243.200', '2', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('454', '金玉良言', '1030098978@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427842925', '1427842925', '182.85.172.73', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/BA6C77C5EB0190797149E98041955CE5/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('455', 'vm14278455456', 'vm14278455456@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427845545', '1427845545', '66.249.73.148', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('456', 'vm14278455546', 'vm14278455546@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427845554', '1427845554', '66.249.73.164', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('457', 'Bonine', '32924552@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427851143', '1427851143', '222.90.164.107', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/6270BAE11D199AF25DDEB18E157967E2/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('458', '美菱电器', '2106343389@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427856809', '1427856809', '106.37.236.213', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/08500BF5EC4118C03A91C78F06B17CF5/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('459', '爱你依旧', '171494788@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427856911', '1427856911', '106.37.236.213', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/E60FC0BF3EF09580157D74FEB90BC0B5/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('460', 'vm14278701087', 'vm14278701087@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427870108', '1427870108', '220.181.108.176', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('461', '追风的牛', '1585065007@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427874433', '1427874433', '111.227.239.231', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/0B88C0C82BC0BBCD899FF11F1422942C/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('462', 'vm14278880939', 'vm14278880939@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427888093', '1427888093', '101.226.166.238', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('463', 'vm14278880969', 'vm14278880969@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427888096', '1427888096', '182.118.21.225', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('464', 'vm14278881003', 'vm14278881003@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427888100', '1427888100', '101.226.168.221', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('465', 'vm14278882139', 'vm14278882139@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427888213', '1427888213', '182.118.25.235', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('466', 'vm14278883041', 'vm14278883041@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427888304', '1427888304', '182.118.20.173', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('467', 'vm14278883586', 'vm14278883586@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427888358', '1427888358', '101.226.167.218', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('468', 'vm14278883685', 'vm14278883685@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427888368', '1427888368', '182.118.20.236', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('469', 'vm14278884524', 'vm14278884524@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427888452', '1427888452', '101.226.166.251', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('470', 'vm14278884534', 'vm14278884534@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427888453', '1427888453', '182.118.20.167', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('471', 'vm14278885188', 'vm14278885188@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427888518', '1427888518', '182.118.20.226', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('472', '刘海山', '629918342@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427909022', '1427909022', '211.141.132.10', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/8B578FF7F097522AB2B58DFE5F6C93E4/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('473', 'vm14279125393', 'vm14279125393@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427912539', '1427912539', '123.163.10.3', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('474', 'vm14279128105', 'vm14279128105@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427912810', '1427912810', '112.64.235.246', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('475', 'vm14279170084', 'vm14279170084@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427917008', '1427917008', '112.64.235.254', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('476', 'vm14279224279', 'vm14279224279@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427922427', '1427922427', '223.145.84.19', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('477', 'vm14279224844', 'vm14279224844@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427922484', '1427922484', '112.64.235.249', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('478', 'golfmis', '136132009@qq.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427925280', '1427925280', '113.68.208.172', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('479', '526789', '7410156@qq.com', 'acec46bcb8c6d17f256565a1f773b427', null, '0', null, null, null, null, null, null, null, null, '1427932616', '1427932616', '61.53.206.148', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('480', 'vm14279475347', 'vm14279475347@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427947534', '1427947534', '123.136.107.86', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('481', '软月互动-', '68036007@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427947831', '1427947831', '49.77.135.114', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/0B25508898AF1AC80EE59826E4D7A231/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('482', '万永红', '275914356@qq.com', 'c95fd32d02afebfff729c4b44b551b69', null, '0', null, null, null, null, null, null, null, null, '1427948705', '1427948705', '122.188.171.241', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('483', 'vm14279494845', 'vm14279494845@126.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1427949484', '1427949484', '61.187.249.250', '1', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('484', '水清不养', '2070741875@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1427955424', '1427955424', '113.200.175.42', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/C4F1C05E7A7F9052C89E42B3A09C7B93/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('485', 'e2mkb', 'e2mkb@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429184931', '1429184931', '136.243.36.99', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('486', 'e2rci', 'e2rci@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429184937', '1430292099', '223.73.8.184', '6', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('487', 'seoeu.cn', '474563448@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1429203492', '1429297553', '49.68.231.23', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/B9EE201EE5D473CA9DF65A7CCEF82653/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('488', '众淘电商', '595229053@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1429206536', '1429206536', '222.93.88.166', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/98C30592D778375D70A01B264437D15D/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('489', 'eu2m7', 'eu2m7@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429212769', '1429212769', '116.114.148.165', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('490', 'ebdqa', 'ebdqa@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429212838', '1429212838', '116.114.148.165', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('491', 'ek505', 'ek505@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429212843', '1429212843', '116.114.148.165', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('492', '十堰微营', '480378911@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1429215373', '1429215373', '171.43.73.8', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/DD6D8EA350BA5508CBF61D62286A7DA2/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('493', '异域布衣', '1086665837@vchuang.cn', '14e1b600b1fd579f47433b88e8d85291', null, '0', null, null, null, null, null, null, null, null, '1429220325', '1430350367', '114.97.96.153', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/7947379F88E64CF001E8C6F3FD3C7910/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('494', '544306857', 'admin@23451.com.cn', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429225726', '1429225726', '61.48.45.116', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('495', 'eso3q', 'eso3q@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429227248', '1429227248', '139.203.133.196', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('496', 'elaac', 'elaac@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228472', '1429228472', '182.118.21.248', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('497', 'ebs68', 'ebs68@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228492', '1429228492', '101.226.168.229', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('498', 'ea663', 'ea663@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228500', '1429228501', '101.226.169.219', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('499', 'eedz8', 'eedz8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228516', '1429228516', '182.118.25.207', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('500', 'ex3hv', 'ex3hv@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228567', '1429228567', '182.118.22.216', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('501', 'ecz5k', 'ecz5k@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228597', '1429228597', '182.118.20.215', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('502', 'e1b5q', 'e1b5q@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228606', '1429228606', '182.118.20.236', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('503', 'epls0', 'epls0@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228611', '1429228612', '182.118.21.206', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('504', 'ergw8', 'ergw8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228612', '1429228612', '182.118.22.224', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('505', 'eot99', 'eot99@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228716', '1429228716', '101.226.169.218', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('506', 'er65u', 'er65u@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228749', '1429228749', '182.118.20.212', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('507', 'e0yd4', 'e0yd4@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429228780', '1429228780', '101.226.166.200', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('508', 'es4oy', 'es4oy@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429229169', '1429229169', '182.118.20.169', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('509', 'ehi85', 'ehi85@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429229179', '1429229179', '182.118.21.245', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('510', 'ezfxj', 'ezfxj@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429229200', '1429229200', '182.118.21.240', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('511', 'ebdxa', 'ebdxa@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429229275', '1429229275', '182.118.20.174', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('512', 'erb1y', 'erb1y@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429229294', '1429229294', '182.118.21.253', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('513', 'e0vqy', 'e0vqy@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429229331', '1429229331', '182.118.21.238', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('514', 'el7ge', 'el7ge@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429229400', '1429229400', '101.226.169.213', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('515', 'eg0sp', 'eg0sp@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429231239', '1429231240', '101.226.168.239', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('516', 'dd168', '36050789@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429242944', '1429242944', '111.85.126.27', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('518', 'ei3nd', 'ei3nd@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429288852', '1429288852', '182.118.22.224', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('519', 'eblzq', 'eblzq@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429288896', '1429288896', '101.226.166.195', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('520', 'ezxk1', 'ezxk1@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429288903', '1429288903', '101.226.166.249', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('521', 'eoanf', 'eoanf@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429288905', '1429288905', '182.118.20.225', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('522', 'e2xp4', 'e2xp4@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289010', '1429289011', '101.226.166.201', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('523', 'e0t8q', 'e0t8q@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289060', '1429289060', '182.118.20.223', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('524', 'eoylp', 'eoylp@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289077', '1429289077', '182.118.22.208', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('525', 'ekbu7', 'ekbu7@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289079', '1429289079', '101.226.168.225', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('526', 'eoeq6', 'eoeq6@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289088', '1429289088', '101.226.168.197', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('527', 'e95v9', 'e95v9@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289088', '1429289088', '182.118.25.220', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('528', 'evykl', 'evykl@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289126', '1429289126', '182.118.22.142', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('529', 'exe60', 'exe60@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289142', '1429289142', '182.118.22.223', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('530', 'edzl8', 'edzl8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289142', '1429289142', '182.118.21.219', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('531', 'e1s3v', 'e1s3v@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289163', '1429289163', '182.118.25.239', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('532', 'e0acu', 'e0acu@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289178', '1429289178', '182.118.22.229', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('533', 'e8ii3', 'e8ii3@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289230', '1429289230', '182.118.20.225', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('534', 'essbz', 'essbz@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289298', '1429289298', '182.118.20.168', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('535', 'eo6dv', 'eo6dv@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289327', '1429289327', '101.226.167.233', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('536', 'eh0hx', 'eh0hx@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289359', '1429289359', '182.118.25.231', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('537', 'ezf1o', 'ezf1o@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289367', '1429289367', '182.118.21.250', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('538', 'em6t3', 'em6t3@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429289979', '1429289979', '101.226.167.196', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('541', 'e0zel', 'e0zel@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429300388', '1429300388', '113.142.128.197', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('542', '网站设计', '492826195@qq.com', '80df42d916ea9b012f18d96657088a55', null, '0', null, null, null, null, null, null, null, null, '1429339984', '1429339984', '157.255.16.38', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/80D6270F7B013D03EECA1A00824D14F3/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('547', 'emzyr', 'emzyr@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429346425', '1429346425', '101.226.169.200', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('548', '只要你过', '2042360792@qq.com', '218bd6af5850e4b1a85547a95ac5ca10', null, '0', null, null, null, null, null, null, null, null, '1429346807', '1429346807', '119.115.29.112', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/F8FACD6E7B03917F3A961FCF10467E51/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('549', '阿涛', 'zty@sz1010.com', 'ceb28185cf736b4c4e53341be5ebfa80', null, '0', null, null, null, null, null, null, null, null, '1429347025', '1429347025', '115.153.47.107', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('550', 'e0mip', 'e0mip@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429349553', '1429349553', '211.97.5.80', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('551', '新世纪网', '1359999657@qq.com', '55eab86a9a7206a1174fe6a27092051b', null, '0', null, null, null, null, null, null, null, null, '1429354330', '1429354330', '183.41.52.253', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/F6D9B7DD0A9E68897B223F4F636C1DC7/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('573', 'eks7f', 'eks7f@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429378500', '1429378500', '101.226.167.204', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('553', 'eai9n', 'eai9n@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429355215', '1429355215', '101.226.166.218', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('554', 'e2t3j', 'e2t3j@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429374626', '1429374626', '101.226.168.199', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('555', 'etoyz', 'etoyz@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429374671', '1429374672', '101.226.166.197', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('556', 'e2apx', 'e2apx@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429374702', '1429374702', '101.226.167.209', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('557', 'emz6r', 'emz6r@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429374904', '1429374904', '182.118.20.233', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('558', 'ehdqz', 'ehdqz@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429374954', '1429374954', '182.118.25.235', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('559', 'ecilq', 'ecilq@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429374970', '1429374970', '182.118.20.218', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('560', 'ehvdg', 'ehvdg@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429374991', '1429374991', '182.118.20.227', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('561', 'enexh', 'enexh@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429374996', '1429374996', '182.118.25.202', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('562', 'emo32', 'emo32@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429375033', '1429375033', '182.118.20.229', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('563', 'ek0m8', 'ek0m8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429375080', '1429375080', '182.118.20.228', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('564', 'e6wmy', 'e6wmy@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429375126', '1429375127', '182.118.22.230', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('565', 'e2uh5', 'e2uh5@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429375169', '1429375169', '182.118.21.204', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('566', 'eu525', 'eu525@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429375183', '1429375183', '182.118.20.167', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('567', 'e7l6k', 'e7l6k@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429375185', '1429375186', '182.118.25.208', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('568', 'euwjf', 'euwjf@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429375291', '1429375291', '182.118.20.163', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('569', 'e0ag8', 'e0ag8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429375317', '1429375317', '182.118.20.222', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('570', 'ekdoc', 'ekdoc@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429375755', '1429375755', '101.226.167.246', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('571', 'eskf8', 'eskf8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429375990', '1429375990', '101.226.169.219', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('578', '14294106291539', '1429410629@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429381829', '1429778347', '112.5.248.238', '5', '1', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEINtX4noxoseMNPHQmCq1qeSx1gUwmeNibib3iabCf3ibuFMFA1HqVViaoQMs27B6FTsZEGB8oKLK2UMtQ/0', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('579', '14294117388762', '1429411738@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429382938', '1430193406', '115.153.47.110', '26', '1', 'http://wx.qlogo.cn/mmopen/yldx7XTWvLXFrHrNDTK14oFGialNFQficbtdlqdwtAm6iaTYOq8TicjWzCvJlVtdcztlfcM7uDIdlaeBjCTgFiaZTiaIvJg2XnF0RS/0', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('580', '14294120379195', '1429412037@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429383237', '1429597878', '58.251.146.196', '5', '1', 'http://wx.qlogo.cn/mmopen/yldx7XTWvLXWbtviaaYicBhEuj3dZw8Sdlic1dpJ7lIMzXrZ6icIetppXLmPskSnQL1TjJFJqLnuzIRdaGiaA7HtU5AlQRofC6icNo/0', '0', null, '', '0', '2', '超级店铺1', '1', '579');
INSERT INTO `ecm_member` VALUES ('581', 'ooicecoffee', '173265558@qq.com', 'b3e3e703e9b7922749a0083324120fae', null, '0', null, null, null, null, null, null, null, null, '1429386373', '1429386373', '182.110.138.164', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('582', 'e6zd4', 'e6zd4@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429389794', '1429389794', '118.187.21.35', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('583', 'icarsales', '123@aliyun.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429389903', '1429389903', '118.187.21.35', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('584', '愿得一人', '2034218476@qq.com', '77165d060925ba3257431279f4fe6e31', null, '0', null, null, null, null, null, null, null, null, '1429390502', '1429390502', '27.158.75.191', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/6BD4027A29DDFE94560AB32FCE75EE78/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('585', '14294212192979', '1429421219@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429392419', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('586', '14294246206391', '1429424620@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429395820', null, null, '0', '1', '', '0', null, '', '0', '2', '超级店铺1', '0', '0');
INSERT INTO `ecm_member` VALUES ('587', 'etvu4', 'etvu4@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429395858', '1429395858', '113.240.111.58', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('588', '14294319653625', '1429431966@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429403166', '1429403228', '171.43.73.8', '1', '1', 'http://wx.qlogo.cn/mmopen/ibIrkGmFzWs2qxScVU4JuxHAQ2bMqDA4Ogmt6ic8z18yNt2oazrMquYpHHfOCYdgvAcHn1KU6qFzvcarONZNSDALDL0S3w0oiap/0', '0', null, '', '0', '2', '超级店铺1', '0', '0');
INSERT INTO `ecm_member` VALUES ('589', 'eg7c6', 'eg7c6@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429407771', '1429407772', '115.211.92.105', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('590', 'e94o0', 'e94o0@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429407841', '1429407841', '115.211.92.105', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('591', '14294378045141', '1429437804@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429409004', null, null, '0', '1', '', '0', null, '', '0', '2', '超级店铺1', '0', '0');
INSERT INTO `ecm_member` VALUES ('592', 'e86m8', 'e86m8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429409030', '1429409030', '115.211.92.105', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('593', 'edr44', 'edr44@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429409030', '1429409030', '112.65.193.15', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('594', '缘', '580193722@qq.com', '9b02f9704ef3640f9069ead416b82a83', null, '0', null, null, null, null, null, null, null, null, '1429411490', '1429411490', '211.162.33.222', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/C1495F8F6E2DC9223E3997D30DE6DBB6/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('595', '14294424642492', '1429442464@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429413664', null, null, '0', '1', '', '0', null, '', '0', '2', '超级店铺1', '0', '0');
INSERT INTO `ecm_member` VALUES ('596', '轩瑄', '125651626@qq.com', '78c3577ffb8ac440e31b6847ee64d02d', null, '0', null, null, null, null, null, null, null, null, '1429419976', '1429419976', '110.19.230.12', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('597', '贱男春', '1510004248@qq.com', '0c767bac936d80c9cc3f4b982a218d27', null, '0', null, null, null, null, null, null, null, null, '1429422366', '1429422366', '180.107.46.54', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/8D45052C9F49AC8FD9C1ECC058308B8D/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('598', '14294521901712', '1429452190@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429423390', null, null, '0', '1', '', '0', null, '', '0', '2', '超级店铺1', '0', '0');
INSERT INTO `ecm_member` VALUES ('599', 'vm14290806042', 'vm14290806042@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429428684', '1429641830', '27.158.75.191', '4', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('600', 'emz2i', 'emz2i@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429437896', '1429437896', '123.179.132.205', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('601', 'ech86', 'ech86@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429437896', '1429437896', '180.153.163.189', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('602', '123', '261788906@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429437997', '1430358946', '171.39.153.115', '6', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('603', '$*懿*$', '489279528@qq.com', 'cf356cc34f2424063148bfc1a43fa734', null, '0', null, null, null, null, null, null, null, null, '1429444667', '1429444667', '110.176.7.228', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/0598F412D2075F1B5B0AC705817060ED/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('604', '14294899174958', '1429489917@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429461117', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('605', 'e2opg', 'e2opg@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429463330', '1429463330', '182.118.20.214', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('606', 'eq975', 'eq975@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429463408', '1429463408', '182.118.20.170', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('607', 'erpp5', 'erpp5@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464007', '1429464007', '101.226.166.244', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('608', 'e8wop', 'e8wop@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464048', '1429464048', '101.226.168.247', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('609', 'e4v01', 'e4v01@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464091', '1429464091', '182.118.22.232', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('610', 'ezzzo', 'ezzzo@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464106', '1429464107', '182.118.20.230', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('611', 'eqkk7', 'eqkk7@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464133', '1429464133', '182.118.22.230', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('612', 'eue4q', 'eue4q@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464148', '1429464148', '182.118.20.217', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('613', 'ehvab', 'ehvab@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464176', '1429464176', '182.118.20.227', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('614', '14294930286911', '1429493028@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429464228', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELTy60mEtOLZYnqkJ96dsoHkCeNFlqXd0uGmiaV0TdqskzgZGExgCyBGlHyUElIzticobUjnN3wANnA/0', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('615', 'edar3', 'edar3@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464362', '1429464362', '101.226.166.224', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('616', 'egixs', 'egixs@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464365', '1429464365', '101.226.167.233', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('617', 'eeu5j', 'eeu5j@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464377', '1429464377', '182.118.20.251', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('618', 'e3b44', 'e3b44@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464481', '1429464481', '182.118.22.243', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('619', 'eqzr3', 'eqzr3@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464491', '1429464492', '182.118.22.141', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('620', 'ef0i7', 'ef0i7@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464553', '1429464553', '182.118.21.242', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('621', 'e37if', 'e37if@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464597', '1429464597', '101.226.168.243', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('622', 'e59i7', 'e59i7@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464862', '1429464862', '182.118.22.208', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('623', 'e489r', 'e489r@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429464957', '1429464957', '182.118.25.239', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('624', 'e0wgo', 'e0wgo@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429465049', '1429465049', '101.226.168.244', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('625', 'ea5rh', 'ea5rh@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429465812', '1434516893', '127.0.0.1', '3', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('626', 'e62dr', 'e62dr@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429472962', '1429472962', '119.123.26.160', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('627', 'e2itb', 'e2itb@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429478940', '1429478940', '115.211.92.105', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('628', 'rocky', '1171160506@qq.com', '6ec2e8e929c83641b96ed442ef91c0ee', null, '0', null, null, null, null, null, null, null, null, '1429480571', '1429480571', '183.133.117.168', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1020', 'eqxgg', 'eqxgg@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430360003', '1430360003', '66.249.65.57', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1021', 'edwyj', 'edwyj@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430360036', '1430360036', '66.249.65.59', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('630', '寻路', '943681512@qq.com', '5794dcb86dd56dbf370bc55b4f73610f', null, '0', null, null, null, null, null, null, null, null, '1429488375', '1429488375', '61.134.97.230', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/7910B431EBC4A35B0C274A53ABC15A64/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('631', '14295172064626', '1429517206@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429488406', '1429492530', '112.90.37.222', '1', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('714', '14297592093886', 'zty@sz1010.com', 'ceb28185cf736b4c4e53341be5ebfa80', '', '0', null, null, null, '', '', null, null, null, '1429730409', '1430031538', '58.254.168.9', '16', '2', '', '0', null, '', '1000', '2', '超级店铺', '1', '579');
INSERT INTO `ecm_member` VALUES ('716', 'euvf7', 'euvf7@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429743738', '1429743739', '111.161.26.199', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('633', '14295220429525', '1429522042@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429493242', '1430031959', '112.90.37.252', '3', '1', 'http://wx.qlogo.cn/mmopen/ibIrkGmFzWs3cATCc1P4I2aQ1AJziatrawhrlUXHknwJwHUwPvsYAzTNTAaKMWbAYaN53uibxPuYHib8uPg8QZ6Wjue8DPFw81TV/0', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('634', '14295339533212', '1429533953@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429505153', '1429507765', '223.240.118.36', '2', '1', '', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('635', 'esc8r', 'esc8r@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429519391', '1429526845', '157.255.16.45', '3', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('636', 'e6kyr', 'e6kyr@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429519408', '1429519408', '223.104.24.165', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('637', 'ekafz', 'ekafz@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429519535', '1429519535', '101.226.33.222', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('638', '14295488611533', '1429548861@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429520061', '1429526892', '157.255.16.45', '1', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('639', '1429548888300', '1429548888@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429520088', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('640', 'efqdj', 'efqdj@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429549102', '1429549102', '182.118.20.212', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('641', 'eq0w0', 'eq0w0@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429549721', '1429549721', '182.118.25.234', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('642', 'en4z8', 'en4z8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429549723', '1429549723', '182.118.22.228', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('643', 'e1q24', 'e1q24@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429549761', '1429549761', '182.118.22.215', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('644', 'epxct', 'epxct@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429549847', '1429549847', '101.226.169.217', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('645', 'eogcq', 'eogcq@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429550155', '1429550155', '101.226.166.231', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('646', 'eq73e', 'eq73e@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429550267', '1429550267', '182.118.20.226', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('647', 'emghl', 'emghl@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429550343', '1429550343', '101.226.168.252', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('648', 'esbw1', 'esbw1@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429550399', '1429550399', '182.118.20.226', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('649', 'eew3a', 'eew3a@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429550884', '1429550884', '101.226.168.251', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('650', 'ed5hu', 'ed5hu@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429550968', '1429550968', '182.118.20.211', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('651', 'e8kcg', 'e8kcg@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429552320', '1429552321', '101.226.167.236', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('652', 'beijing', 'sdfsdd@163.com', '0420a206ae8b77b60f314a33b38c875a', null, '0', null, null, null, null, null, null, null, null, '1429559388', '1429559388', '121.12.109.96', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('653', 'ehhdy', 'ehhdy@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429562465', '1429562465', '157.55.39.66', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('654', '随州街', '1477802806@qq.com', 'fb74eddeec3aabc3da012d8cf2948934', null, '0', null, null, null, null, null, null, null, null, '1429564466', '1429759262', '113.200.136.228', '7', '1', 'http://q.qlogo.cn/qqapp/101168325/735F96EE6149DCE21A678228D94AA755/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('655', '14295942168918', '1429594216@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429565416', '1430231873', '59.45.67.214', '1', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('656', 'e38fy', 'e38fy@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429565446', '1429565446', '59.47.9.132', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('657', 'eluac', 'eluac@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429565529', '1429565529', '59.47.9.132', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('658', 'e43yt', 'e43yt@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429565534', '1429565534', '59.47.9.132', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('659', 'ex82y', 'ex82y@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429565538', '1429565538', '59.47.9.132', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('660', 'esqev', 'esqev@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429565546', '1429565546', '59.47.9.132', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('661', '14296032234615', '1429603223@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429574423', '1429574554', '223.96.158.6', '1', '1', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAPq8BsHJbIIQIticIFbJqPqOyHIuX9gHZjER7MXDL3FJ6bvKLbm7TLPkdt7mbSibyVpjZRYlqVxkSA/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('662', 'ecey7', 'ecey7@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429575745', '1429575745', '220.181.108.147', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('663', 'e3jwd', 'e3jwd@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429581596', '1429581596', '117.176.140.134', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('664', 'dujiajiyimj', '635333588@qq.com', 'a7aefb62467a4e14225bf61ade89273c', null, '0', null, null, null, null, null, null, null, null, '1429586365', '1429586365', '218.65.65.112', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('665', '江淮网', '647925483@qq.com', 'd0d9ba8dd347cc6d7bb5f1ac85561fe5', null, '0', null, null, null, null, null, null, null, null, '1429590559', '1429590559', '223.245.131.122', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/AB772E1AC3202CDB74A1981EFA7F7218/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('666', '东营通科', '1242148174@qq.com', '6224c9e1cef0745c8d26683cf5f807fb', null, '0', null, null, null, null, null, null, null, null, '1429596184', '1429682400', '223.96.158.6', '10', '1', 'http://q.qlogo.cn/qqapp/101168325/69CFE8C5E75CE2FE9F33C5E037A5B9EB/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('667', 'edn68', 'edn68@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429616662', '1429616662', '101.226.167.196', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('668', 'e69ik', 'e69ik@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429616702', '1429616702', '182.118.25.207', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('669', 'ehd15', 'ehd15@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429616737', '1429616738', '101.226.166.207', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('670', 'eshrf', 'eshrf@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429616751', '1429616751', '182.118.21.248', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('671', 'eayda', 'eayda@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429616765', '1429616765', '182.118.25.205', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('672', 'ezbc6', 'ezbc6@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429616885', '1429616885', '101.226.166.208', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('673', 'evs71', 'evs71@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429616941', '1429616941', '182.118.25.210', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('674', 'e1xuc', 'e1xuc@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429616964', '1429616964', '182.118.22.248', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('675', 'eg34a', 'eg34a@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617055', '1429617055', '101.226.169.219', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('676', 'er4l9', 'er4l9@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617076', '1429617076', '101.226.166.241', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('677', 'ef21g', 'ef21g@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617114', '1429617114', '101.226.167.246', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('678', 'ewy2m', 'ewy2m@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617118', '1429617118', '101.226.167.240', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('679', 'ex9ci', 'ex9ci@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617153', '1429617153', '182.118.21.254', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('680', 'eo1pf', 'eo1pf@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617157', '1429617157', '101.226.168.203', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('681', 'e7sgn', 'e7sgn@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617201', '1429617201', '101.226.168.203', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('682', 'emtuc', 'emtuc@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617358', '1429617358', '182.118.25.234', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('683', 'etefi', 'etefi@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617373', '1429617373', '182.118.22.228', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('684', 'ek3p4', 'ek3p4@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617488', '1429617488', '182.118.21.202', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('685', 'eb6gs', 'eb6gs@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617562', '1429617562', '182.118.20.212', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('686', 'euxc5', 'euxc5@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429617574', '1429617574', '182.118.20.166', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('687', 'eh5lw', 'eh5lw@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429618020', '1429618021', '182.118.20.215', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('688', 'ec23o', 'ec23o@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429638333', '1429638333', '114.111.167.84', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('689', 'eent9', 'eent9@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429639914', '1429639914', '119.6.100.239', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('690', '1429670599216', '1429670599@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429641799', null, null, '0', '1', '', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('691', 'jiamengdian', '1@qq.com', '8b1fee89769bba1cbe5567c84fa41907', null, '0', null, null, null, null, null, null, null, null, '1429643300', '1429729129', '59.40.41.10', '4', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('692', '666999', '666999@qq.com', '73fee192744f842a611a5ec336459f5c', '', '0', null, null, null, '', '', null, null, null, '1429643453', null, null, '0', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('693', 'hahaha', 'hahaha@qq.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1429645326', '1429645326', '183.252.52.201', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('694', 'ed5ls', 'ed5ls@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429650329', '1429650329', '117.176.140.154', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('695', '14296934579287', '1429693457@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429664657', '1429755165', '60.8.224.86', '2', '1', 'http://wx.qlogo.cn/mmopen/SYeWkon6C6LH3icXjHI9djgAE8R6akYvQ3uEQWrBW4B17pej2Ph9t2HfSdSAf96McKBsyGicXR4WXarHDFdsQmVA/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('696', 'ebbfg', 'ebbfg@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429664685', '1429664686', '60.8.224.86', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('697', 'e8g7r', 'e8g7r@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429665015', '1429665015', '60.8.224.86', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('698', 'e0r7q', 'e0r7q@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429665015', '1429665015', '60.8.224.86', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('699', '否定先生', '1741808949@qq.com', '33c437a2a30791907ee1956b5e87b284', null, '0', null, null, null, null, null, null, null, null, '1429665238', '1429753913', '60.8.224.86', '3', '1', 'http://q.qlogo.cn/qqapp/101168325/1D9D0D43E124D18D4977956FADD42A8C/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('700', 'golfnid', '878027248@qq.com', 'c822c1b63853ed273b89687ac505f9fa', null, '0', null, null, null, null, null, null, null, null, '1429665273', '1429665273', '58.62.27.54', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('701', 'ez2wt', 'ez2wt@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429665496', '1429665496', '112.64.235.248', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('702', '14296948864520', '1429694886@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429666086', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('703', 'eu9e8', 'eu9e8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429673766', '1429673766', '183.252.52.201', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('704', '14297051723540', '1429705172@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429676372', '1430294867', '223.73.8.184', '12', '1', 'http://wx.qlogo.cn/mmopen/lQseJf2LKCjJu0vjV1MrOcsyvibI6GpWfI1BB2w70dJIoYd4RX8eYm3NnVmYe65zu3V5Srue1N2ehpYc7Rbia4eGheic9oCqHLb/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('705', 'ehe2m', 'ehe2m@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429676689', '1429676689', '223.73.8.61', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('706', 'emj5v', 'emj5v@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429680410', '1429680410', '182.150.147.79', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('859', '14300448954878', '1430044895@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430016095', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5z4L8KtClcwGSrXVhwcCulGzrfxNfkBfHh1wicPdjzjmHTyDbMbzCYSEA9rDothZBGMtr2JbOWGnmSbh0bWQ2icemuuXYOdcoxI/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('710', 'ebolt', 'ebolt@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429684300', '1429684300', '114.111.167.84', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('711', 'em10l', 'em10l@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429684306', '1429684306', '114.111.167.84', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('712', 'eu8ia', 'eu8ia@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429688430', '1429688430', '223.73.8.61', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('713', 'e9kxx', 'e9kxx@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429688430', '1429688430', '101.226.89.123', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('715', 'lovecy99', 'lovecy99@163.com', '188347acaf61aa116d98cb8e747dfee5', null, '0', null, null, null, null, null, null, null, null, '1429736973', '1430066854', '39.75.191.229', '2', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('717', 'ej3fk', 'ej3fk@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429743745', '1429743745', '111.161.26.199', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('718', 'heya112', '1415401819@qq.com', '3546f828f5c000bee712efd64b462e24', null, '0', null, null, null, null, null, null, null, null, '1429744882', '1429744882', '1.192.126.241', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('719', '14297776303425', '1429777630@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429748830', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/ibIrkGmFzWs1yr8Brxnq6rIYfO3s8iclscA2ZP3InibM5koek6OBZUd0Gkl2kibseRLwUAJksibWYBGPYpubOs2yAzoicqmE7cXepic/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('720', 'ek2t7', 'ek2t7@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429748913', '1429748913', '175.25.160.60', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('721', 'ewska', 'ewska@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429749719', '1429749719', '112.64.235.247', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('722', 'e957s', 'e957s@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429750241', '1429750242', '125.82.189.33', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('723', 'e5f1l', 'e5f1l@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429750241', '1429750242', '180.153.214.199', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('724', 'ecdjd', 'ecdjd@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429751054', '1429751054', '180.153.201.216', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('725', '14297811732101', '1429781173@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429752373', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/SYeWkon6C6LJY81licnWlOBDUicaLCTicEL1T4hYWKrGp2PAmD3y7jgq3mvtmYGqrG920RfxvxAk5H5GCiavrTolNA/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('726', '1429788547391', '1429788547@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429759747', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('727', 'e7qxu', 'e7qxu@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429764610', '1429764610', '101.226.168.232', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('728', 'eqlr2', 'eqlr2@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429764640', '1429764640', '101.226.166.225', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('729', 'ea2bi', 'ea2bi@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429764665', '1429764665', '101.226.166.199', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('730', 'ey3ud', 'ey3ud@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429764707', '1429764707', '101.226.168.231', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('731', 'ezvj9', 'ezvj9@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429764757', '1429764757', '182.118.22.216', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('732', 'exfqy', 'exfqy@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429764771', '1429764771', '101.226.166.227', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('733', 'eo7h5', 'eo7h5@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429764844', '1429764844', '182.118.25.227', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('734', 'e8z50', 'e8z50@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429764861', '1429764861', '182.118.22.202', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('735', 'ekg55', 'ekg55@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429764982', '1429764982', '101.226.169.226', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('736', 'e1354', 'e1354@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429764994', '1429764994', '101.226.166.230', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('737', 'e8nk8', 'e8nk8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765002', '1429765002', '182.118.21.227', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('738', 'eg2z2', 'eg2z2@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765006', '1429765006', '182.118.22.236', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('739', 'e4922', 'e4922@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765014', '1429765014', '182.118.22.212', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('740', 'e7ku8', 'e7ku8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765017', '1429765017', '182.118.25.213', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('741', 'euw65', 'euw65@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765065', '1429765066', '101.226.167.220', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('742', 'eghil', 'eghil@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765078', '1429765078', '101.226.166.234', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('743', 'eakoq', 'eakoq@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765177', '1429765177', '182.118.25.213', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('744', 'ebw1d', 'ebw1d@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765534', '1429765535', '182.118.21.245', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('745', 'ef84h', 'ef84h@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765573', '1429765574', '182.118.21.209', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('746', 'eptlw', 'eptlw@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765576', '1429765576', '182.118.21.246', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('747', 'eriid', 'eriid@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765722', '1429765722', '182.118.20.164', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('748', 'eetbd', 'eetbd@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765779', '1429765779', '101.226.167.228', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('749', 'ebnsx', 'ebnsx@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765842', '1429765842', '101.226.169.218', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('750', 'exy8f', 'exy8f@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429765967', '1429765967', '101.226.168.240', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('751', '续﹡緣', '1441471752@qq.com', '2336333c959d9b79e23de02dd0512d72', null, '0', null, null, null, null, null, null, null, null, '1429767644', '1429767644', '42.48.214.66', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/9CFE1EA23DD5CC5E1B0A4B7765435198/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('752', '14298033194523', '1429803319@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429774519', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/4ytK9uoWicJWMBquoP4Nc5plKre7ib9jbdj6bue99jTrcb9riaY2hNycDVc7j9deiayOqCPlhs2jialiaj51AaZj3G7vbdYyr9SSOt/0', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('753', 'e5g59', 'e5g59@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429774586', '1429774586', '106.92.245.17', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('756', 'e4b70', 'e4b70@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795513', '1429795513', '101.226.168.197', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('757', 'ech47', 'ech47@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795557', '1429795557', '182.118.22.227', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('758', 'ecbz3', 'ecbz3@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795609', '1429795609', '182.118.21.241', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('759', 'e6tk4', 'e6tk4@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795646', '1429795646', '182.118.21.247', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('760', 'elg4p', 'elg4p@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795682', '1429795683', '182.118.25.215', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('761', 'ez31g', 'ez31g@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795751', '1429795751', '182.118.21.247', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('762', 'e2k2e', 'e2k2e@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795859', '1429795859', '182.118.21.253', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('763', 'e5x0k', 'e5x0k@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795949', '1429795949', '101.226.166.220', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('764', 'ebj9b', 'ebj9b@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795955', '1429795955', '182.118.20.217', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('765', 'ew61e', 'ew61e@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795970', '1429795970', '101.226.168.230', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('766', 'ebudh', 'ebudh@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795984', '1429795984', '182.118.20.226', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('767', 'esi4h', 'esi4h@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429795997', '1429795997', '182.118.22.211', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('768', 'e3wzq', 'e3wzq@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429796066', '1429796066', '101.226.166.224', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('769', 'eu3fc', 'eu3fc@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429796139', '1429796139', '182.118.25.226', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('770', 'ed36q', 'ed36q@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429796157', '1429796157', '182.118.20.249', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('771', 'e7cqe', 'e7cqe@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429796317', '1429796317', '182.118.25.214', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('772', 'emrqf', 'emrqf@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429796388', '1429796388', '101.226.168.254', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('773', 'ebrcb', 'ebrcb@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429796482', '1429796482', '182.118.20.219', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('774', 'evuzl', 'evuzl@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429796577', '1429796577', '182.118.20.165', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('775', 'elcf3', 'elcf3@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429796585', '1429796585', '182.118.20.217', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('776', 'ea7ga', 'ea7ga@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429798378', '1429798378', '101.226.166.215', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('777', 'e57wp', 'e57wp@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429798889', '1429798889', '101.226.167.200', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('778', '14298394778340', '1429839477@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429810677', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('779', '夜深人静', '1603630013@qq.com', '4b76abebeb8de30ececc647d795b8e76', null, '0', null, null, null, null, null, null, null, null, '1429811071', '1429811071', '60.6.231.56', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/1A8A14D423DBCE9155A290F34115D490/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('780', 'eydlt', 'eydlt@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429827598', '1429827598', '136.243.16.7', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('786', 'e9fbg', 'e9fbg@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429829357', '1429829357', '124.192.131.129', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('787', 'epu4u', 'epu4u@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429829395', '1429829396', '220.181.127.233', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('788', 'e9k4g', 'e9k4g@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429829467', '1429829467', '101.199.108.120', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('791', 'eyou2', 'eyou2@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429829642', '1429829642', '101.199.112.53', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('792', 'ehx89', 'ehx89@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429829645', '1429829645', '101.199.108.51', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('801', '1429870109815', '1429870110@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429841310', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('794', 'ec12t', 'ec12t@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429830168', '1429830168', '101.226.66.179', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('802', 'ezicw', 'ezicw@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429866505', '1429866505', '198.245.49.180', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('803', 'ekcoo', 'ekcoo@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429866514', '1429866514', '198.245.49.180', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('804', 'e5fx9', 'e5fx9@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429866524', '1429866524', '198.245.49.180', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('805', 'ep8sq', 'ep8sq@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429866531', '1429866531', '198.245.49.180', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('806', 'efyka', 'efyka@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429866547', '1429866547', '198.245.49.180', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('807', 'ethn0', 'ethn0@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429866579', '1429866579', '198.245.49.180', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('808', 'edcz6', 'edcz6@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429869990', '1429869990', '101.226.166.209', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('809', 'ez9m9', 'ez9m9@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429886668', '1429886669', '148.251.124.173', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('810', 'eawxt', 'eawxt@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429891121', '1429891121', '120.5.196.160', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('811', '1429929016960', '1429929016@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429900216', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('812', 'eyhuv', 'eyhuv@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429906906', '1429906906', '223.73.8.255', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('813', '14299360534333', '1429936053@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429907253', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('814', 'es57e', 'es57e@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909020', '1429909020', '182.118.25.205', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('815', 'esp32', 'esp32@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909038', '1429909038', '101.226.166.253', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('816', 'evwfv', 'evwfv@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909634', '1429909635', '182.118.20.253', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('817', 'elnzm', 'elnzm@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909650', '1429909650', '182.118.22.228', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('818', 'e26fz', 'e26fz@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909662', '1429909663', '101.226.169.212', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('819', 'e6w9h', 'e6w9h@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909670', '1429909670', '101.226.166.219', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('820', 'en9un', 'en9un@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909689', '1429909689', '101.226.167.209', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('821', 'eag8o', 'eag8o@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909800', '1429909800', '182.118.22.216', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('822', 'eejvc', 'eejvc@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909822', '1429909822', '182.118.22.224', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('823', 'ejw6c', 'ejw6c@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909864', '1429909864', '101.226.169.214', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('824', 'e1ynn', 'e1ynn@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909867', '1429909867', '101.226.167.237', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('825', 'edzf4', 'edzf4@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909868', '1429909868', '182.118.21.226', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('826', 'efin2', 'efin2@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909930', '1429909930', '182.118.20.163', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('827', 'e1gx8', 'e1gx8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429909959', '1429909959', '101.226.166.251', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('828', 'ehxw4', 'ehxw4@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429910573', '1429910573', '182.118.25.224', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('829', 'ecbim', 'ecbim@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429911090', '1429911091', '101.226.166.238', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('830', 'es7fg', 'es7fg@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429911996', '1429911996', '183.222.9.195', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('831', '14299489081240', '1429948908@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429920108', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('832', 'cuizheng6688', 'cuizheng6688@163.com', '90aa749bb3e674a757b41cd6460cfcf6', null, '0', null, null, null, null, null, null, null, null, '1429921281', '1429921281', '42.56.187.247', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('833', 'ehndt', 'ehndt@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429932893', '1429932893', '207.46.13.98', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('834', 'Demon977', '275538022@qq.com', '73e44bf98f48e080e4ccfe42cd103b30', null, '0', null, null, null, null, null, null, null, null, '1429940725', '1429940725', '211.143.105.164', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('835', '1429978082433', '1429978082@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429949282', '1429983389', '59.55.75.172', '1', '1', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBjclmicB0XsIlMdfebW6ZZZ6wKBOrFZYYEDxhNMbGKTD1yHq9OjQffnomdCKBag8OTeIR4icfIqM7A/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('836', 'ei36f', 'ei36f@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979144', '1429979144', '182.118.20.217', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('837', 'ehtgb', 'ehtgb@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979196', '1429979196', '101.226.168.251', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('838', 'epab2', 'epab2@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979227', '1429979227', '182.118.22.216', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('839', 'ebpic', 'ebpic@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979260', '1429979260', '101.226.169.216', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('840', 'eplvm', 'eplvm@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979322', '1429979322', '182.118.20.229', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('841', 'evku8', 'evku8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979400', '1429979400', '182.118.20.166', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('842', 'eu095', 'eu095@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979429', '1429979430', '182.118.21.210', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('843', 'ee7ed', 'ee7ed@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979432', '1429979432', '182.118.21.236', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('844', 'eh93y', 'eh93y@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979433', '1429979433', '182.118.21.204', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('845', 'eznpz', 'eznpz@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979497', '1429979497', '101.226.168.234', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('846', 'e9vuz', 'e9vuz@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979550', '1429979550', '182.118.20.254', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('847', 'eu1pj', 'eu1pj@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979571', '1429979571', '101.226.167.241', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('848', 'e588c', 'e588c@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979590', '1429979590', '182.118.22.216', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('849', 'e3wos', 'e3wos@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979731', '1429979731', '182.118.20.230', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('850', 'eq3i8', 'eq3i8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429979844', '1429979844', '182.118.20.201', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('851', 'eessu', 'eessu@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429980002', '1429980002', '182.118.25.211', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('852', 'eutbg', 'eutbg@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429980188', '1429980188', '182.118.20.168', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('853', 'ef7dk', 'ef7dk@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1429980729', '1429980729', '182.118.20.174', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('854', 'a101', 'a101@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429989116', '1429989116', '110.72.41.112', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('855', 't101', 't101@qq.com', '670b14728ad9902aecba32e22fa4f6bd', '', '0', '0000-00-00', null, null, '', '', null, null, null, '1429989437', '1430111241', '110.72.46.121', '3', '1', 'data/files/mall/portrait/2/855.png', '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('856', 't102', 't102@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1429989518', '1430180813', '110.72.46.121', '11', '1', 'images/head/1430105372.jpg', '0', null, '', '5', '0', '', '0', '2');
INSERT INTO `ecm_member` VALUES ('857', '14300296134486', '1430029613@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430000813', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('858', 'e865j', 'e865j@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430003437', '1430003437', '207.46.13.90', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('860', 'en9qw', 'en9qw@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430017270', '1430017270', '220.181.108.78', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('861', 'hahaha01', 'hahaha01@qq.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1430024361', '1430024361', '112.5.248.238', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('862', 't103', 't103@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430026765', '1430026765', '110.72.41.112', '1', '1', null, '0', null, '', '5', '0', '', '0', '2');
INSERT INTO `ecm_member` VALUES ('863', '14300604757548', '1430060475@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430031675', '1430031776', '58.254.168.9', '2', '1', 'http://wx.qlogo.cn/mmopen/SYeWkon6C6Lkr8txNDUibSTicciagWOBL2CVnN6Sic6NksoWqic3XKKWX517E9tVEk165mP9BsOIj14JBBoQUm18A5HwkYllCr8FJ/0', '0', null, '', '0', '2', '超级店铺', '1', '579');
INSERT INTO `ecm_member` VALUES ('864', 't104', 't102@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430032471', '1430032471', '110.72.41.112', '1', '1', null, '0', null, '', '5', '0', '', '0', '856');
INSERT INTO `ecm_member` VALUES ('865', 't105', 't104@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430032569', '1430032569', '110.72.41.112', '1', '1', null, '0', null, '', '5', '0', '', '0', '864');
INSERT INTO `ecm_member` VALUES ('866', 'ejoyz', 'ejoyz@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430057976', '1430057976', '38.111.147.83', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('867', 'ewt0g', 'ewt0g@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430059024', '1430059025', '157.55.39.126', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('868', 'taotaobai', 'cp080@qq.com', 'ef147da54fdc6e1aef196f3b4ec3df39', null, '0', null, null, null, null, null, null, null, null, '1430076582', '1430076582', '14.210.38.210', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('869', '14301139877920', '1430113987@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430085187', '1430085263', '120.33.79.29', '1', '1', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLB2GG8lU5cfTqFK5g23LSciapB7wQLf8O8Gh698TnVmadjMogr0QfvfnZ2NSgV5ic1U6ibAY4icvBKlSw/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('870', 'e9jzl', 'e9jzl@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430091797', '1430091797', '113.200.85.1', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('871', 'jkoojk', 'jkoojk@163.com', '8fe278670122b8ae853f3b59f9e1a40e', null, '0', null, null, null, null, null, null, null, null, '1430092252', '1430092252', '113.132.20.178', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('872', 'e1pbk', 'e1pbk@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430093207', '1430093207', '180.153.213.141', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('873', 'zf123', '510653480@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '0', null, null, null, '', '', null, null, null, '1430096065', '1430161786', '60.168.92.200', '5', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('874', '1430129600613', '1430129600@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430100800', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('875', 'eq5nx', 'eq5nx@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430102148', '1430102148', '36.56.236.15', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('876', '14301311965279', '1430131196@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430102396', '1430102621', '222.216.163.225', '1', '1', 'http://wx.qlogo.cn/mmopen/yldx7XTWvLVZMlRn4AoLmQPTt19fVNHEWOSpDeqftpiaLR6CHw1G1vdYoAfnfO2dnA3HmhLm993ylAcMIq7FYArc7mfqlVuU9/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('877', 'eqw51', 'eqw51@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430102558', '1430102558', '36.56.236.15', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('878', 'ken', '1336377746@qq.com', 'e0ec57a3156843e04607f50bf21f3ee0', null, '0', null, null, null, null, null, null, null, null, '1430103006', '1430103006', '223.73.92.82', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/73EB4068C77EE0DD9ED1CCB73B8EF40E/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('879', 'ehkne', 'ehkne@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430103743', '1430247162', '183.238.42.116', '3', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('880', 'e389k', 'e389k@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430106922', '1430106922', '221.179.85.87', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('881', '14301407166446', '1430140716@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430111916', '1430112034', '221.223.139.52', '1', '1', 'http://wx.qlogo.cn/mmopen/ibIrkGmFzWs1yr8Brxnq6rBCYD7XswU2Nu2zdsNY3on8VovAdpzA9kAMLF56ZguwZvtiak7RW7gcbtJrK0QMhY4NK1R5ibXGNyF/0', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('882', 'ebw5p', 'ebw5p@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430112166', '1430112166', '223.73.8.190', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('883', '1430141079733', '1430141079@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430112279', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/ibIrkGmFzWs1yr8Brxnq6rF9Q0xCZYwF8U5rRX6u142Egtic94AZuicQcRia8WzALgx9dP5hQfcnmdicibnn92yaUNuKGM8U7QeuyO/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('884', 'efkyr', 'efkyr@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430115919', '1430115919', '182.118.20.201', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('885', 'eq4ih', 'eq4ih@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116108', '1430116108', '101.226.166.237', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('886', 'eol4e', 'eol4e@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116272', '1430116272', '182.118.25.227', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('887', 'epnfn', 'epnfn@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116291', '1430116291', '182.118.22.204', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('888', 'etu2t', 'etu2t@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116306', '1430116306', '182.118.22.208', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('889', 'ed7m7', 'ed7m7@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116307', '1430116307', '101.226.167.199', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('890', 'ezkox', 'ezkox@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116343', '1430116343', '101.226.169.221', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('891', 'eb1vw', 'eb1vw@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116344', '1430116344', '101.226.167.208', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('892', 'evesl', 'evesl@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116349', '1430116349', '101.226.166.207', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('893', 'e96h2', 'e96h2@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116379', '1430116379', '182.118.20.205', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('894', 'e6pf4', 'e6pf4@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116420', '1430116420', '182.118.25.222', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('895', 'ejcdc', 'ejcdc@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116449', '1430116449', '182.118.22.247', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('896', 'epotm', 'epotm@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116461', '1430116461', '182.118.25.206', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('897', 'e1e0c', 'e1e0c@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116494', '1430116494', '101.226.167.195', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('898', 'ecohn', 'ecohn@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116566', '1430116566', '182.118.20.233', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('899', 'e3m0k', 'e3m0k@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116570', '1430116570', '101.226.166.212', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('900', 'e698e', 'e698e@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116587', '1430116587', '182.118.20.215', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('901', 'ehkbu', 'ehkbu@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116591', '1430116591', '101.226.166.201', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('902', 'ezafl', 'ezafl@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116684', '1430116684', '182.118.22.219', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('903', 'e8e91', 'e8e91@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116686', '1430116686', '101.226.168.213', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('904', 'ey11d', 'ey11d@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116722', '1430116722', '182.118.20.230', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('905', 'e4vcc', 'e4vcc@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116755', '1430116755', '182.118.20.234', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('906', 'ep1hm', 'ep1hm@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430116772', '1430116773', '101.226.167.213', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('907', 'e8vz6', 'e8vz6@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430117031', '1430117031', '182.118.20.165', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('908', 'effbx', 'effbx@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430122928', '1430122928', '117.136.20.176', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('909', 'ecyfm', 'ecyfm@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430146673', '1430146673', '157.55.39.126', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('910', '14301837668124', '1430183766@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430154966', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('911', 'IT-FIX之家', '888910121@qq.com', '873c107cbfc8d447622df870fd10f5b4', null, '0', null, null, null, null, null, null, null, null, '1430157348', '1430157348', '49.82.204.71', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/B79EA6A3C3F5821FC928A3E0B1F303F7/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('912', 'e4y1i', 'e4y1i@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430161731', '1430161731', '36.56.234.9', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('913', '14301930533222', '1430193053@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430164253', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/ibIrkGmFzWs1yr8Brxnq6rKwpd0nYEqGf61FIGBX1Hv6c22PiayNopR6e076mT6LiasNY5Gbacib2xaNCbsTBb2h11EkAtA3kic8d/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('914', '14301988716053', '1430198871@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430170071', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/ibIrkGmFzWs1yr8Brxnq6rPQUSF3ib0oLr0GFLBU2h6Mz3tWkPv53vY74PrEFOictNibGk8ia0HCm2kiaIcKLzMicr36K9CeLibTHWibia/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('915', '14302062708107', '1430206270@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430177470', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/ibIrkGmFzWs3UiaUrJWYJ9nyjUBq2Y4jmb027V1GvuiaVBuH0UMGM3F774RnpIa0Tl6RHSIbhfRdXYyRVI5BlT6ibHDg3rE192icL/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('916', 'tao', 'tao@qq.com', 'ee061adbd33c103d422808d8c3bf3d23', null, '0', null, null, null, null, null, null, null, null, '1430177568', '1430177568', '110.248.222.180', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('917', '14302085469835', '1430208546@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430179746', '1430201919', '110.72.46.121', '11', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('918', 'eljtj', 'eljtj@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430179967', '1430179967', '182.118.22.222', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('919', 'ehfo1', 'ehfo1@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430179987', '1430179987', '182.118.25.231', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('920', 'euwxj', 'euwxj@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430180053', '1430180053', '101.226.167.216', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('921', 'etsmq', 'etsmq@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430180079', '1430180079', '182.118.25.231', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('922', 'e8qib', 'e8qib@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430180087', '1430180087', '182.118.21.220', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('923', 'e8fn8', 'e8fn8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430180092', '1430180092', '182.118.22.212', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('924', 'eo5oj', 'eo5oj@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430180159', '1430180159', '182.118.22.220', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('925', 'ef8wz', 'ef8wz@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430180390', '1430180390', '182.118.22.207', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('926', 'eflk3', 'eflk3@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430180446', '1430180447', '182.118.20.169', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('927', 'e0fbu', 'e0fbu@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430180618', '1430180618', '101.226.166.199', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('943', '购物中心', '1656920450@qq.com', '76dd4350bf9de35ebb847edfc8cb45fe', null, '0', null, null, null, null, null, null, null, null, '1430190952', '1430190952', '122.5.241.217', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/5CF4A365129EF4ACCEA630193894E37F/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('928', '14302110859951', '1430211085@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430182285', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/SYeWkon6C6Lkr8txNDUibSe7SIdVkiahSLbv3l1vhrOG2USU1niczdnBGtm2seiaic9iaQwIp0cWfBQc0xkSQBibdlQdSd1uvIJAVtq/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('929', 'ef18k', 'ef18k@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430182299', '1430182300', '101.226.168.241', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('930', '14302112011382', '1430211201@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430182401', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('931', 'ej8ey', 'ej8ey@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430184132', '1430184132', '121.40.180.33', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('932', 'evhfv', 'evhfv@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430184134', '1430184134', '121.40.180.33', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('933', 'ec9gr', 'ec9gr@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430184137', '1430184137', '121.40.180.33', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('934', 'enfu1', 'enfu1@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430184138', '1430184138', '121.40.180.33', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('935', 'ez3xb', 'ez3xb@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430184138', '1430184138', '121.40.180.33', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('936', 'efy0c', 'efy0c@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430184139', '1430184139', '121.40.180.33', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('937', 'eo0jk', 'eo0jk@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430184139', '1430184139', '121.40.180.33', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('938', 'e89ye', 'e89ye@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430184140', '1430184140', '121.40.180.33', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('939', 'ew8k2', 'ew8k2@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430184143', '1430184143', '121.40.180.33', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('940', 'eztei', 'eztei@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430184143', '1430184143', '121.40.180.33', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('941', '好又多', '87025936@qq.com', 'bed4f522b1a9fd32b79698ce476718fa', null, '0', null, null, null, null, null, null, null, null, '1430184618', '1430243241', '114.103.122.147', '2', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('942', '14302158842348', '1430215884@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430187084', '1430187084', '125.91.95.19', '1', '1', 'http://wx.qlogo.cn/mmopen/VxAibURetNq9UP7KwPiaAdB4c8BRL70mybv4qibeCOqWneov9sficSIx2xnhmZtTLOdDjiaicnpoc2jTf1Ficg2FMMs7OvBInEf3vZt/0', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('944', '馨安', '1638123603@qq.com', '4354ccbab815709e1c6a13e1a5249347', null, '0', null, null, null, null, null, null, null, null, '1430195684', '1430195684', '211.143.105.161', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/466A1BBE11F25D282D7D736A7A324373/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('945', 'emmvs', 'emmvs@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430205003', '1430205003', '223.73.8.184', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('946', 'eevn4', 'eevn4@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430235544', '1430235544', '207.46.13.90', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('947', 'ed3r1', 'ed3r1@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430235610', '1430235610', '157.55.39.126', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('948', 'ekicl', 'ekicl@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430235611', '1430235611', '157.55.39.126', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('949', '14302654372470', '1430265437@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430236637', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('950', 'eqwqb', 'eqwqb@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430238497', '1430238497', '183.238.42.116', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('951', 'eqtk4', 'eqtk4@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430238497', '1430238497', '180.153.206.36', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('952', 'ejnjs', 'ejnjs@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430244585', '1430244586', '183.238.42.116', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('953', 'e4wkf', 'e4wkf@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430245089', '1430245089', '112.64.235.248', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('954', 'e03qb', 'e03qb@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430247163', '1430247163', '101.226.66.175', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('955', 'ew83r', 'ew83r@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430247973', '1430247973', '112.64.235.251', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('956', 'lj830609', '327399319@qq.com', '1010c52d64bb8df2c00da145046676b8', null, '0', null, null, null, null, null, null, null, null, '1430249877', '1430249877', '202.101.102.202', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('957', '家书', '1490848171@qq.com', 'df8769e2b77b6424fee5232233344a02', null, '0', null, null, null, null, null, null, null, null, '1430255290', '1430255290', '112.234.206.219', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/22125CAB82EF06882E40E0F725E8FBCE/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('958', '大灰狼', 'wjwi@sohu.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430258527', '1430258758', '114.245.210.178', '2', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('959', 'Postcard', '1831995048@qq.com', 'b85c4d61d9e4f16d333ded8f8c60c62a', null, '0', null, null, null, null, null, null, null, null, '1430259121', '1430259121', '116.248.99.247', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/8890032B0613BB74F395EC61CE63C441/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('960', 'e4q7n', 'e4q7n@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430259978', '1430259978', '122.96.31.30', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('961', 'ekv1o', 'ekv1o@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430259978', '1430259978', '101.226.89.116', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('962', '14302911568167', '1430291156@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430262356', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('963', 'e390u', 'e390u@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430262540', '1430262540', '221.179.85.214', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('964', '14302915017972', '1430291501@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430262701', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/VxAibURetNqicVATp2HCcrsia8QIQVZpTdibTm1CpfJ17Wp8w9tqo3wWb6CLzLrQ5KibI5UFF5pvbS488aibzkCGHzk8Sz7VBIEBiaB/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('965', 'eehj9', 'eehj9@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430262860', '1430262860', '157.55.39.125', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('966', 'e2b17', 'e2b17@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430262861', '1430262861', '157.55.39.125', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('967', 'ej183', 'ej183@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430265786', '1430265786', '223.73.8.184', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('968', '14302951877562', '1430295187@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430266387', null, null, '0', '1', '', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('969', 'e59pv', 'e59pv@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430274060', '1430274060', '223.73.8.184', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('970', '\\整个百度', '10140832@qq.com', '9405e2d36bf9bb5247c727a3f1ffb498', '', '0', '0000-00-00', null, null, '123456789', '', null, null, null, '1430281617', '1437261019', '127.0.0.1', '27', '1', 'data/files/mall/portrait/2/970.png', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('971', '14303107623204', '1430310762@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430281962', null, null, '0', '1', '', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('972', 'ew131', 'ew131@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430282238', '1430282238', '223.73.8.184', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('973', 'e0b04', 'e0b04@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430282672', '1430282672', '180.153.206.35', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('974', '14303137288110', '1430313728@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430284928', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/yldx7XTWvLXWbtviaaYicBhOCoVRq4BWeDNibsqX84vVZogM471IoaOM4WnLdHjiaErlpfIyFT0hB4s9nyUBntqPRUNgwicrQjTib5/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('975', 'etxs5', 'etxs5@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286312', '1430286312', '101.226.167.196', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('976', 'eilxx', 'eilxx@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286374', '1430286374', '182.118.22.225', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('977', 'enrie', 'enrie@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286435', '1430286435', '101.226.167.244', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('978', 'e4x8m', 'e4x8m@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286460', '1430286460', '182.118.25.208', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('979', 'eb9le', 'eb9le@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286470', '1430286470', '182.118.22.225', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('980', 'e8x4a', 'e8x4a@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286515', '1430286515', '101.226.167.246', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('981', 'e1moa', 'e1moa@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286574', '1430286575', '207.46.13.55', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('982', 'ew6fa', 'ew6fa@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286622', '1430286622', '182.118.20.237', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('983', 'e4ttb', 'e4ttb@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286628', '1430286628', '182.118.20.203', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('984', 'ei6ll', 'ei6ll@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286649', '1430286650', '182.118.25.217', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('985', 'etjda', 'etjda@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286757', '1430286757', '101.226.168.229', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('986', 'edrsj', 'edrsj@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286769', '1430286769', '182.118.21.214', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('987', 'e0vcg', 'e0vcg@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286819', '1430286819', '101.226.166.195', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('988', 'emzue', 'emzue@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286819', '1430286819', '101.226.166.195', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('989', 'egqxf', 'egqxf@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286835', '1430286835', '182.118.22.212', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('990', 'e8t9q', 'e8t9q@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286841', '1430286841', '182.118.25.227', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('991', 'e8f3i', 'e8f3i@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286857', '1430286857', '182.118.21.221', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('992', 'e7ppr', 'e7ppr@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286924', '1430286924', '182.118.21.204', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('993', 'erybo', 'erybo@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430286952', '1430286952', '182.118.22.212', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('994', 'etz4y', 'etz4y@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430287012', '1430287012', '101.226.168.197', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('995', 'ee56o', 'ee56o@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430287106', '1430287106', '182.118.22.211', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('996', 'e5agi', 'e5agi@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430287153', '1430287153', '101.226.166.225', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('997', 'ee95s', 'ee95s@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430288233', '1430288233', '101.226.166.215', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('998', 'epuwq', 'epuwq@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430288403', '1430288403', '101.226.167.227', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('999', 'eu0tt', 'eu0tt@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430288835', '1430288835', '101.226.166.211', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1000', 'er6fe', 'er6fe@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430288873', '1430288873', '101.226.169.206', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1001', 'e34d8', 'e34d8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430289154', '1430289154', '101.226.166.240', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1002', '14303199194271', '1430319919@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430291119', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/yldx7XTWvLXWbtviaaYicBhBvDg8cgPnBJVwmdKL6ricTicbTeaR96g3VxMfkZY9SvM6ruLqFMC2HUpktnt5fE0B1KycQ1ichSvFV/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('1003', '钟嘉源', '300435310@qq.com', '2361cffebe349cc7677797148c22b53c', null, '0', null, null, null, null, null, null, null, null, '1430291291', '1430294020', '59.36.89.85', '2', '1', 'http://q.qlogo.cn/qqapp/101168325/FD8B78A019DC9AAC649BDE1286F4E422/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1004', 'esur0', 'esur0@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430294256', '1430294256', '223.73.8.184', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1005', 'e3e2b', 'e3e2b@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430294256', '1430294256', '180.153.206.38', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1006', '何亚', '1874847267@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430326648', '1430326648', '1.192.126.241', '1', '1', null, '0', null, '', '5', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1007', 'eztbd', 'eztbd@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430328076', '1430328076', '222.173.88.22', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1008', 'e2jtt', 'e2jtt@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430328179', '1430328179', '180.153.214.182', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1009', 'Manager Liu', '1882064509@qq.com', '61bf0ecf41c2e701c359f302430d5ddb', null, '0', null, null, null, null, null, null, null, null, '1430328995', '1430328995', '123.162.133.12', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/1E6D0091A6CD7E5A6AE5F671E6960FE9/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1010', 'e4o36', 'e4o36@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430330446', '1430330446', '183.238.42.116', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1011', '14303612462619', '1430361246@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430332446', null, null, '0', '1', 'http://wx.qlogo.cn/mmopen/yldx7XTWvLXWbtviaaYicBhDvYmQqBrkhXLf6k6xnzyicDvdR4SzxZB46sdJR01DzmBlNria7FZMWibNCyW1lHciaqZY1XyeKawGrH/0', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('1012', '14303684098641', '1430368409@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430339609', null, null, '0', '1', '', '0', null, '', '0', '2', '超级店铺', '0', '0');
INSERT INTO `ecm_member` VALUES ('1013', 'eo5ox', 'eo5ox@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430340944', '1430340944', '183.238.42.116', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1014', 'emc9c', 'emc9c@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430343751', '1430343751', '60.1.192.34', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1015', 'ecrq8', 'ecrq8@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430343798', '1430343798', '221.179.85.87', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1016', '67890', '1111@qq.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1430344159', '1430344159', '27.27.60.203', '1', '1', null, '0', null, '', '5', '0', '', '0', '2');
INSERT INTO `ecm_member` VALUES ('1017', '嘉音', '1047998169@qq.com', 'd6d81bcdd5c6a1fba8af82428680a07f', null, '0', null, null, null, null, null, null, null, null, '1430348303', '1430348303', '60.1.192.34', '1', '1', 'http://q.qlogo.cn/qqapp/101168325/D1E6A6DE9D58D4D1F856FDB6734182EB/100', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1018', 'eo6zr', 'eo6zr@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1430352565', '1430352565', '221.179.85.214', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1019', '14303849104974', '1430384910@qq.com', '670b14728ad9902aecba32e22fa4f6bd', null, '0', null, null, null, null, null, null, null, null, '1430356110', null, null, '0', '1', '', '0', null, '', '0', '0', '', '0', '0');
INSERT INTO `ecm_member` VALUES ('1022', '345', 'wewe@qq.com', '96e79218965eb72c92a549dd5a330112', null, '0', null, null, null, null, null, null, null, null, '1430950856', '1430950856', '127.0.0.1', '1', '1', null, '0', null, '', '5', '0', '', '0', '2');
INSERT INTO `ecm_member` VALUES ('1023', 'ep4uu', 'ep4uu@126.com', 'e10adc3949ba59abbe56e057f20f883e', null, '0', null, null, null, null, null, null, null, null, '1437340600', '1437340600', '127.0.0.1', '2', '1', null, '0', null, '', '0', '0', '', '0', '0');

-- ----------------------------
-- Table structure for ecm_order
-- ----------------------------
DROP TABLE IF EXISTS `ecm_order`;
CREATE TABLE `ecm_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT 'material',
  `extension` varchar(10) NOT NULL DEFAULT '',
  `seller_id` int(10) unsigned NOT NULL DEFAULT '0',
  `seller_name` varchar(100) DEFAULT NULL,
  `buyer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `buyer_name` varchar(100) DEFAULT NULL,
  `buyer_email` varchar(60) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `payment_id` int(10) unsigned DEFAULT NULL,
  `payment_name` varchar(100) DEFAULT NULL,
  `payment_bank` varchar(100) NOT NULL,
  `payment_code` varchar(20) NOT NULL DEFAULT '',
  `out_trade_sn` varchar(20) NOT NULL DEFAULT '',
  `pay_time` int(10) unsigned DEFAULT NULL,
  `pay_message` varchar(255) NOT NULL DEFAULT '',
  `ship_time` int(10) unsigned DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `finished_time` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `evaluation_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `evaluation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `anonymous` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `pay_alter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ship_type` varchar(255) DEFAULT '',
  `express_company` varchar(150) NOT NULL,
  `trade_no` varchar(150) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `order_sn` (`order_sn`,`seller_id`),
  KEY `seller_name` (`seller_name`),
  KEY `buyer_name` (`buyer_name`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_order
-- ----------------------------
INSERT INTO `ecm_order` VALUES ('1', '1335948628', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1388043112', '1', '支付宝', '', 'alipay', '1335948628', null, '', null, null, '0', '32.00', '0.00', '32.10', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('2', '1503306357', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1422898116', '0', '站内宝', '', 'sft', '', '1422926928', '', null, null, '0', '30.60', '0.00', '30.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('213', '1511358886', 'material', 'normal', '2', '超级店铺', '714', '14297592093886', 'zty@sz1010.com', '20', '1429851704', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '30.60', '0.00', '30.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('212', '1511385429', 'material', 'normal', '2', '超级店铺', '714', '14297592093886', 'zty@sz1010.com', '20', '1429849743', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '28.50', '0.00', '28.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('165', '1510714599', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1429311401', '38', '支付宝手机支付', '', 'alipaywap', '1510714599', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('9', '1503942607', 'material', 'normal', '2', '超级店铺', '21', 'vm14234262414', 'vm14234262414@126.com', '11', '1423426281', '0', null, '', '', '', null, '', null, null, '0', '56.10', '0.00', '56.10', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('10', '1503941619', 'material', 'normal', '2', '超级店铺', '27', 'vm14234632097', 'vm14234632097@126.com', '11', '1423463255', '0', null, '', '', '', null, '', null, null, '0', '0.10', '0.00', '0.10', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('11', '1503911106', 'material', 'normal', '2', '超级店铺', '27', 'vm14234632097', 'vm14234632097@126.com', '11', '1423463316', '0', null, '', '', '', null, '', null, null, '0', '8.00', '0.00', '8.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('12', '1503912559', 'material', 'normal', '2', '超级店铺', '29', 'vm14234723231', 'vm14234723231@126.com', '11', '1423472413', '0', null, '', '', '', null, '', null, null, '0', '688.00', '0.00', '688.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('13', '1504291853', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1423680263', '0', null, '', '', '', null, '', null, null, '0', '32.00', '0.00', '32.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('14', '1504212106', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1423680416', '0', null, '', '', '', null, '', null, null, '0', '1588.00', '0.00', '1588.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('15', '1504253527', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1423681014', '0', null, '', '', '', '1423729954', '', null, null, '0', '0.10', '0.00', '0.10', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('16', '1504224896', 'material', 'normal', '2', '超级店铺', '33', 'vm14237127485', 'vm14237127485@126.com', '20', '1423712806', '0', null, '', '', '', '1423729936', '', null, null, '0', '161.00', '0.00', '161.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('17', '1504315639', 'material', 'normal', '2', '超级店铺', '38', 'vm14237685777', 'vm14237685777@126.com', '11', '1423768630', '0', null, '', '', '', null, '', null, null, '0', '25.60', '0.00', '25.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('18', '1504313982', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '40', '1423806387', '17', '到店付款', '', 'cos', '', null, '', '1423806452', '12341512', '1423806464', '0.10', '0.00', '0.10', '1', '1423806469', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('214', '1511365745', 'material', 'normal', '2', '超级店铺', '714', '14297592093886', 'zty@sz1010.com', '40', '1429857828', '46', '预存款', '', 'deposit', '', null, '', '1429858703', '11313', '1429858790', '30.60', '0.00', '30.60', '1', '1429858807', '0', '', '0', '', 'lianbangkuaidi', '');
INSERT INTO `ecm_order` VALUES ('21', '1504716330', 'material', 'normal', '2', '超级店铺', '56', 'babgsfc', 'babgsfc@qq.com', '0', '1424121611', '5', '到店付款', '', 'cos', '', null, '', null, null, '0', '95.00', '0.00', '100.00', '0', '0', '0', '', '1', '', '', '');
INSERT INTO `ecm_order` VALUES ('22', '1504730470', 'material', 'normal', '2', '超级店铺', '56', 'babgsfc', 'babgsfc@qq.com', '0', '1424121770', '6', '微信扫码支付', '', 'wxnative', '1504730470', null, '', null, null, '0', '21.80', '0.00', '21.80', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('23', '1504736852', 'material', 'normal', '2', '超级店铺', '56', 'babgsfc', 'babgsfc@qq.com', '0', '1424121856', '4', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '21.80', '0.00', '21.80', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('24', '1504733270', 'material', 'normal', '2', '超级店铺', '56', 'babgsfc', 'babgsfc@qq.com', '11', '1424122178', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('25', '1504737473', 'material', 'normal', '2', '超级店铺', '53', 'vm14240680765', 'vm14240680765@126.com', '0', '1424128265', '5', '到店付款', '', 'cos', '', null, '', null, null, '0', '2254.00', '0.00', '2254.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('26', '1505062135', 'material', 'normal', '2', '超级店铺', '64', 'vm14243742239', 'vm14243742239@126.com', '11', '1424374323', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('27', '1505015320', 'material', 'normal', '2', '超级店铺', '66', 'vm14243964251', 'vm14243964251@126.com', '11', '1424396503', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('28', '1505076530', 'material', 'normal', '2', '超级店铺', '66', 'vm14243964251', 'vm14243964251@126.com', '20', '1424396600', '0', null, '', '', '', '1424648374', '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('29', '1505109575', 'material', 'normal', '2', '超级店铺', '73', 'vm14244909655', 'vm14244909655@126.com', '11', '1424491034', '0', null, '', '', '', null, '', null, null, '0', '108.00', '0.00', '108.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('30', '1505393537', 'material', 'normal', '2', '超级店铺', '80', 'vm14231934603', 'vm14231934603@126.com', '40', '1424647935', '3', '货到付款', '', 'cod', '', '1424648944', '', '1424648901', '44', '1424648944', '0.09', '0.00', '0.09', '1', '1427243358', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('31', '1505333373', 'material', 'normal', '2', '超级店铺', '73', 'vm14244909655', 'vm14244909655@126.com', '40', '1424651178', '3', '货到付款', '', 'cod', '', '1425854830', '', '1424651434', '123', '1425854830', '108.00', '0.00', '108.00', '1', '1429176182', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('32', '1505318560', 'material', 'normal', '2', '超级店铺', '82', 'vm14246512935', 'vm14246512935@126.com', '40', '1424651329', '0', null, '', '', '', '1424651635', '', '1424651642', '1', '1424651661', '1588.00', '0.00', '1588.00', '1', '1424651675', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('33', '1505327698', 'material', 'normal', '2', '超级店铺', '87', '金源印刷', '24591455@qq.com', '11', '1424697405', '0', null, '', '', '', null, '', null, null, '0', '1837.09', '0.00', '1837.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('34', '1505424483', 'material', 'normal', '2', '超级店铺', '90', '8888', 'eee@111.com', '11', '1424719939', '10', '支付宝手机支付', '', 'alipaywap', '1505424483', null, '', null, null, '0', '1588.00', '0.00', '1588.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('35', '1505416979', 'material', 'normal', '2', '超级店铺', '90', '8888', 'eee@111.com', '20', '1424720988', '7', '微信jsapi支付', '', 'wxjsapi', '1505416979', '1426050590', '', null, null, '0', '688.00', '0.00', '688.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('36', '1505437971', 'material', 'normal', '92', '123', '93', 'vm14247790455', 'vm14247790455@126.com', '11', '1424779085', '34', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '298.00', '0.00', '322.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('37', '1505419338', 'material', 'normal', '92', '123', '93', 'vm14247790455', 'vm14247790455@126.com', '11', '1424779153', '34', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '109.00', '0.00', '131.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('38', '1505408746', 'material', 'normal', '92', '123', '93', 'vm14247790455', 'vm14247790455@126.com', '40', '1424779393', '34', '支付宝免签接口', '', 'alipayfree', '', '1424779595', '', '1424779643', '123456789', '1425854830', '1.00', '0.00', '1.00', '1', '1429176182', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('39', '1505622615', 'material', 'normal', '2', '超级店铺', '96', 'king', '1601472298@qq.com', '20', '1424889814', '7', '微信jsapi支付', '', 'wxjsapi', '1505622615', '1426050588', '', null, null, '0', '25.50', '0.00', '25.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('40', '1505635084', 'material', 'normal', '2', '超级店铺', '96', 'king', '1601472298@qq.com', '20', '1424889891', '6', '微信扫码支付', '', 'wxnative', '1505635084', '1426050584', '', null, null, '0', '30.60', '0.00', '30.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('41', '1505614731', 'material', 'normal', '2', '超级店铺', '96', 'king', '1601472298@qq.com', '20', '1424890416', '0', null, '', '', '', '1426050581', '', null, null, '0', '25.50', '0.00', '25.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('42', '1505682282', 'material', 'normal', '2', '超级店铺', '96', 'king', '1601472298@qq.com', '20', '1424890453', '0', null, '', '', '', '1426050578', '', null, null, '0', '25.50', '0.00', '25.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('43', '1505746851', 'material', 'normal', '2', '超级店铺', '100', '☜ 宝贝驾', '1472835052@qq.com', '20', '1425018917', '11', '支付宝', '', 'alipay', '1505746851', '1426050575', '', null, null, '0', '108.80', '0.00', '108.80', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('44', '1505818283', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '40', '1425103859', '0', null, '', '', '', '1426040349', '', '1426040411', '1201642711267', '1426646639', '0.09', '0.00', '0.09', '1', '1429242077', '0', '', '0', 'yunda', '', '');
INSERT INTO `ecm_order` VALUES ('45', '1505820048', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1425103874', '0', null, '', '', '', '1426050572', '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('46', '1505801284', 'material', 'normal', '2', '超级店铺', '107', '阿贝尼', '17808274@qq.com', '20', '1425113214', '0', null, '', '', '', '1426050570', '', null, null, '0', '8.00', '0.00', '8.00', '0', '0', '0', '牛奶', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('47', '1506720984', 'material', 'normal', '2', '超级店铺', '115', '1234567', '5554444@qq.com', '20', '1425879653', '0', null, '', '', '', '1426050568', '', null, null, '0', '28.50', '0.00', '28.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('48', '1506804931', 'material', 'normal', '2', '超级店铺', '118', 'vm14258382886', 'vm14258382886@126.com', '20', '1425928359', '0', null, '', '', '', '1426050565', '', null, null, '0', '108.00', '0.00', '108.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('49', '1506811381', 'material', 'normal', '2', '超级店铺', '125', 'vm14259641673', 'vm14259641673@126.com', '20', '1425964206', '7', '微信jsapi支付', '', 'wxjsapi', '1506811381', '1426050541', '', null, null, '0', '0.10', '0.00', '0.10', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('50', '1506897126', 'material', 'normal', '92', '123', '125', 'vm14259641673', 'vm14259641673@126.com', '11', '1425964292', '32', '支付宝', '', 'alipay', '11506897126', null, '', null, null, '0', '109.00', '0.00', '109.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('51', '1506957596', 'material', 'normal', '92', '123', '130', 'vm14260238232', 'vm14260238232@126.com', '11', '1426023903', '34', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '189.00', '0.00', '189.00', '0', '0', '0', 'xl', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('52', '1506916210', 'material', 'normal', '2', '超级店铺', '130', 'vm14260238232', 'vm14260238232@126.com', '20', '1426023965', '7', '微信jsapi支付', '', 'wxjsapi', '1506916210', '1426026279', '', null, null, '0', '68.00', '0.00', '68.00', '0', '0', '0', 'qq', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('53', '1506960262', 'material', 'normal', '2', '超级店铺', '130', 'vm14260238232', 'vm14260238232@126.com', '40', '1426024042', '3', '货到付款', '', 'cod', '', '1426024186', '', '1426024156', '1', '1426024186', '68.00', '0.00', '68.00', '1', '1426024204', '0', 'w', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('54', '1506987589', 'material', 'normal', '2', '超级店铺', '130', 'vm14260238232', 'vm14260238232@126.com', '20', '1426024908', '0', null, '', '', '', '1426050563', '', null, null, '0', '68.00', '0.00', '68.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('55', '1506915528', 'material', 'normal', '2', '超级店铺', '133', 'buyer1', '12@qq.com', '0', '1426025513', '0', '站内宝', '', 'sft', '', '1426054340', '', '1426040303', '1201642711267', '0', '30.60', '0.00', '30.60', '0', '0', '0', '', '0', 'yunda', '', '');
INSERT INTO `ecm_order` VALUES ('56', '1506907623', 'material', 'normal', '2', '超级店铺', '134', 'vm14260260971', 'vm14260260971@126.com', '20', '1426026180', '0', null, '', '', '', '1426050556', '', null, null, '0', '30.70', '0.00', '30.70', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('57', '1506918505', 'material', 'normal', '2', '超级店铺', '133', 'buyer1', '12@qq.com', '0', '1426027750', '0', null, '', '', '', '1426050553', '', '1426134929', '1201642711267', '0', '28.50', '0.00', '28.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('58', '1506992034', 'material', 'normal', '2', '超级店铺', '137', 'vm14260314406', 'vm14260314406@126.com', '40', '1426031700', '11', '支付宝', '', 'alipay', '1506992034', '1426050548', '', '1426135454', '1201642711267', '1426743029', '80.00', '0.00', '80.00', '1', '1429338342', '0', '', '0', '', 'yunda', '');
INSERT INTO `ecm_order` VALUES ('59', '1507073023', 'material', 'normal', '2', '超级店铺', '133', 'buyer1', '12@qq.com', '10', '1426110301', '3', '货到付款', '', 'cod', '', null, '', null, null, '0', '21.80', '0.00', '21.80', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('60', '1507072771', 'material', 'normal', '2', '超级店铺', '133', 'buyer1', '12@qq.com', '40', '1426110521', '3', '货到付款', '', 'cod', '', '1426981792', '', '1426374401', '55454545454', '1426981792', '8.00', '0.00', '8.00', '1', '1429574423', '0', '', '0', '', 'shunfeng', '');
INSERT INTO `ecm_order` VALUES ('61', '1507034189', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1426133449', '0', null, '', '', '', null, '', null, null, '0', '50.00', '0.00', '50.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('62', '1507053534', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1426133466', '4', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '50.00', '0.00', '50.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('63', '1507000228', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '40', '1426133526', '4', '支付宝免签接口', '', 'alipayfree', '', '1426235209', '', '1426235223', 'ttttt', '1426841491', '50.00', '0.00', '50.00', '1', '1429434839', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('64', '1507096299', 'material', 'normal', '92', '123', '145', '刘小哥', '1764277569@qq.com', '11', '1426133778', '34', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('65', '1507070525', 'material', 'normal', '92', '123', '145', '刘小哥', '1764277569@qq.com', '11', '1426134027', '34', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('66', '1507101612', 'material', 'normal', '92', '123', '2', 'seller', '123456@qq.com', '11', '1426235097', '0', null, '', '', '', null, '', null, null, '0', '109.00', '0.00', '109.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('67', '1507105888', 'material', 'normal', '92', '123', '2', 'seller', '123456@qq.com', '11', '1426235164', '0', null, '', '', '', null, '', null, null, '0', '189.00', '0.00', '189.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('68', '1507255713', 'material', 'normal', '2', '超级店铺', '160', 'xfx', 'qw778989@qq.com', '11', '1426263055', '0', null, '', '', '', null, '', null, null, '0', '0.39', '0.00', '0.39', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('69', '1507235415', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1426308872', '4', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '183.60', '0.00', '183.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('70', '1507342842', 'material', 'normal', '92', '123', '170', 'vm14263741552', 'vm14263741552@126.com', '11', '1426374210', '34', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('71', '1507390286', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1426402346', '0', null, '', '', '', null, '', null, null, '0', '8.09', '0.00', '8.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('72', '1507354609', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1426402502', '0', null, '', '', '', null, '', null, null, '0', '8.00', '0.00', '8.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('73', '1507435995', 'material', 'normal', '2', '超级店铺', '183', 'vm14264658763', 'vm14264658763@126.com', '10', '1426465988', '3', '货到付款', '', 'cod', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('74', '1507402801', 'material', 'normal', '2', '超级店铺', '190', 'Somnr▼', '2034607070@qq.com', '11', '1426486885', '0', null, '', '', '', null, '', null, null, '0', '41.00', '0.00', '41.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('75', '1507484464', 'material', 'normal', '92', '123', '99', '不想起名', '211193872@qq.com', '11', '1426498734', '32', '支付宝', '', 'alipay', '11507484464', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('76', '1507468793', 'material', 'normal', '92', '123', '99', '不想起名', '211193872@qq.com', '11', '1426498834', '34', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '169.00', '0.00', '169.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('77', '1507563417', 'material', 'normal', '92', '123', '194', 'vm14265372226', 'vm14265372226@126.com', '11', '1426537251', '0', null, '', '', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('78', '1507530227', 'material', 'normal', '2', '超级店铺', '197', 'vm14265523245', 'vm14265523245@126.com', '11', '1426552408', '7', '微信jsapi支付', '', 'wxjsapi', '1507530227', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('79', '1507504126', 'material', 'normal', '92', '123', '198', 'vm14265528847', 'vm14265528847@126.com', '11', '1426552956', '0', null, '', '', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('80', '1507585093', 'material', 'normal', '2', '超级店铺', '198', 'vm14265528847', 'vm14265528847@126.com', '11', '1426553072', '7', '微信jsapi支付', '', 'wxjsapi', '1507585093', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('81', '1507511968', 'material', 'normal', '2', '超级店铺', '198', 'vm14265528847', 'vm14265528847@126.com', '40', '1426553135', '11', '支付宝', '', 'alipay', '1507511968', '1426562706', '', '1426566522', '1201642711267', '1427172352', '0.09', '0.00', '0.09', '1', '1429765820', '0', '', '0', '', 'yunda', '');
INSERT INTO `ecm_order` VALUES ('82', '1507500755', 'material', 'normal', '92', '123', '194', 'vm14265372226', 'vm14265372226@126.com', '11', '1426561546', '34', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('83', '1507564590', 'material', 'normal', '2', '超级店铺', '149', 'vm14261410118', 'vm14261410118@126.com', '11', '1426577016', '0', null, '', '', '', null, '', null, null, '0', '1434.60', '0.00', '1434.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('84', '1507500062', 'material', 'normal', '2', '超级店铺', '149', 'vm14261410118', 'vm14261410118@126.com', '10', '1426591977', '3', '货到付款', '', 'cod', '', null, '', null, null, '0', '0.29', '0.00', '0.29', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('85', '1507523190', 'material', 'normal', '2', '超级店铺', '202', '亿天网路', '2114645034@qq.com', '11', '1426594506', '10', '支付宝手机支付', '', 'alipaywap', '1507523190', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('86', '1507545088', 'material', 'normal', '2', '超级店铺', '202', '亿天网路', '2114645034@qq.com', '11', '1426594729', '4', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('87', '1507506146', 'material', 'normal', '2', '超级店铺', '202', '亿天网路', '2114645034@qq.com', '11', '1426594810', '7', '微信jsapi支付', '', 'wxjsapi', '1507506146', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('88', '1507535041', 'material', 'normal', '2', '超级店铺', '202', '亿天网路', '2114645034@qq.com', '11', '1426594885', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('89', '1507603654', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '10', '1426614737', '5', '到店付款', '', 'cos', '', null, '', null, null, '0', '324.00', '0.00', '324.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('90', '1507605411', 'material', 'normal', '2', '超级店铺1', '210', 'ybztv8090', 'tyhff@123.com', '20', '1426657426', '5', '到店付款', '', 'cos', '', null, '', null, null, '0', '172.40', '0.00', '172.40', '0', '0', '0', 'Dvgsfsgbd\r\n\r\nFcvvvbb', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('91', '1507754071', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1426742740', '4', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '666.00', '0.00', '666.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('92', '1507741177', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1426744485', '6', '微信扫码支付', '', 'wxnative', '1507741177', null, '', null, null, '0', '666.00', '0.00', '666.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('93', '1507747238', 'material', 'normal', '2', '超级店铺1', '209', '延边生活', '1496729551@qq.com', '11', '1426746467', '0', null, '', '', '', null, '', null, null, '0', '1582.00', '0.00', '1582.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('94', '1507887404', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1426795161', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('95', '1507971346', 'material', 'normal', '2', '超级店铺1', '235', 'vm14269110419', 'vm14269110419@126.com', '20', '1426911179', '11', '支付宝', '', 'alipay', '1507971346', '1426914342', '', null, null, '0', '80.00', '0.00', '80.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('96', '1508045205', 'material', 'normal', '2', '超级店铺1', '243', '似水流年', '512853972@qq.com', '11', '1426977920', '7', '微信jsapi支付', '', 'wxjsapi', '1508045205', null, '', null, null, '0', '3.60', '0.00', '3.60', '0', '0', '0', '我来试一试', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('97', '1508026342', 'material', 'normal', '2', '超级店铺1', '243', '似水流年', '512853972@qq.com', '11', '1426978911', '0', null, '', '', '', null, '', null, null, '0', '300.00', '0.00', '300.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('98', '1508017669', 'material', 'normal', '2', '超级店铺1', '243', '似水流年', '512853972@qq.com', '11', '1426978966', '10', '支付宝手机支付', '', 'alipaywap', '1508017669', null, '', null, null, '0', '30.60', '0.00', '30.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('99', '1508006361', 'material', 'normal', '2', '超级店铺1', '244', 'vm14269909921', 'vm14269909921@126.com', '11', '1426991253', '6', '微信扫码支付', '', 'wxnative', '1508006361', null, '', null, null, '0', '21.80', '0.00', '21.80', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('100', '1508092682', 'material', 'normal', '2', '超级店铺1', '244', 'vm14269909921', 'vm14269909921@126.com', '11', '1426991721', '4', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '21.80', '0.00', '21.80', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('101', '1508016364', 'material', 'normal', '2', '超级店铺1', '209', '延边生活', '1496729551@qq.com', '20', '1426992525', '5', '到店付款', '', 'cos', '', null, '', null, null, '0', '33.09', '0.00', '33.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('102', '1508074611', 'material', 'normal', '2', '超级店铺1', '206', 'whqwhq743', 'fgbjuh@126.com', '11', '1426999632', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '238.60', '0.00', '238.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('103', '1508076174', 'material', 'normal', '2', '超级店铺1', '246', 'vm14270008657', 'vm14270008657@126.com', '11', '1427000935', '39', '微信jsapi支付', '', 'wxjsapi', '1508076174', null, '', null, null, '0', '80.00', '0.00', '80.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('104', '1508009923', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1427001086', '39', '微信jsapi支付', '', 'wxjsapi', '1508009923', null, '', null, null, '0', '80.00', '0.00', '80.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('105', '1508033407', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1427001140', '0', null, '', '', '', null, '', null, null, '0', '80.00', '0.00', '80.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('106', '1508064856', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1427001171', '38', '支付宝手机支付', '', 'alipaywap', '1508064856', null, '', null, null, '0', '80.00', '0.00', '80.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('107', '1508029341', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1427001201', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '80.00', '0.00', '80.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('108', '1508017586', 'material', 'normal', '2', '超级店铺1', '201', 'fjfj99', '11111@qq.com', '40', '1427003336', '33', '支付宝免签接口', '', 'alipayfree', '', '1427016343', '', '1427016367', '13696333333', '1427624463', '0.09', '0.00', '0.09', '1', '1430217319', '0', '', '0', '', 'shunfeng', '');
INSERT INTO `ecm_order` VALUES ('109', '1508074359', 'material', 'normal', '2', '超级店铺1', '258', 'vm14270392762', 'vm14270392762@126.com', '0', '1427039318', '0', null, '', '', '', null, '', null, null, '0', '66.00', '0.00', '66.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('110', '1508165564', 'material', 'normal', '2', '超级店铺1', '258', 'vm14270392762', 'vm14270392762@126.com', '11', '1427043158', '0', null, '', '', '', null, '', null, null, '0', '85600.00', '0.00', '85600.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('111', '1508129284', 'material', 'normal', '2', '超级店铺1', '206', 'whqwhq743', 'fgbjuh@126.com', '0', '1427047473', '38', '支付宝手机支付', '', 'alipaywap', '1508129284', null, '', null, null, '0', '50.00', '0.00', '50.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('112', '1508116418', 'material', 'normal', '2', '超级店铺1', '206', 'whqwhq743', 'fgbjuh@126.com', '11', '1427047530', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '50.00', '0.00', '50.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('113', '1508112306', 'material', 'normal', '2', '超级店铺1', '206', 'whqwhq743', 'fgbjuh@126.com', '11', '1427047935', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('114', '1508121276', 'material', 'normal', '2', '超级店铺1', '264', '哈哈', '649303341@qq.com', '0', '1427062192', '38', '支付宝手机支付', '', 'alipaywap', '1508121276', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('115', '1508130607', 'material', 'normal', '2', '超级店铺1', '264', '哈哈', '649303341@qq.com', '40', '1427062650', '38', '支付宝手机支付', '', 'alipaywap', '1508130607', '1427358718', '', '1427358798', '33442222', '1429176182', '1.00', '0.00', '1.00', '1', '1433314175', '0', '', '0', '', 'debangwuliu', '');
INSERT INTO `ecm_order` VALUES ('116', '1508162060', 'material', 'normal', '2', '超级店铺1', '265', 'vm14270627699', 'vm14270627699@126.com', '11', '1427062805', '38', '支付宝手机支付', '', 'alipaywap', '1508162060', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('117', '1508124805', 'material', 'normal', '2', '超级店铺1', '265', 'vm14270627699', 'vm14270627699@126.com', '11', '1427063062', '38', '支付宝手机支付', '', 'alipaywap', '1508124805', null, '', null, null, '0', '50.00', '0.00', '50.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('118', '1508144811', 'material', 'normal', '2', '超级店铺1', '265', 'vm14270627699', 'vm14270627699@126.com', '40', '1427063141', '33', '支付宝免签接口', '', 'alipayfree', '', '1427076891', '', '1427076921', '100286744450', '1427684314', '0.09', '0.00', '0.09', '1', '1430276954', '0', '', '0', '', 'yuantong', '');
INSERT INTO `ecm_order` VALUES ('119', '1508239273', 'material', 'normal', '2', '超级店铺1', '190', 'Somnr▼', '2034607070@qq.com', '11', '1427146378', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('120', '1508210413', 'material', 'normal', '2', '超级店铺1', '296', '二哥', '1088319894@vchuang.cn', '11', '1427168994', '39', '微信jsapi支付', '', 'wxjsapi', '1508210413', null, '', null, null, '0', '30.60', '0.00', '30.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('121', '1508204520', 'material', 'normal', '2', '超级店铺1', '296', '二哥', '1088319894@vchuang.cn', '11', '1427169681', '38', '支付宝手机支付', '', 'alipaywap', '1508204520', null, '', null, null, '0', '38.60', '0.00', '38.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('122', '1508336032', 'material', 'normal', '2', '超级店铺1', '303', 'vm14272239978', 'vm14272239978@126.com', '40', '1427224043', '0', null, '', '', '', '1427232147', '', '1427232202', '123', '1427838593', '1.00', '0.00', '1.00', '1', '1430531095', '0', '哦我哦', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('123', '1508461446', 'material', 'normal', '2', '超级店铺1', '335', 'julley', 'julley@uuo.cn', '11', '1427362037', '39', '微信jsapi支付', '', 'wxjsapi', '1508461446', null, '', null, null, '0', '0.50', '0.00', '0.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('124', '1508593146', 'material', 'normal', '2', '超级店铺1', '351', 'vm14274487967', 'vm14274487967@126.com', '11', '1427449479', '38', '支付宝手机支付', '', 'alipaywap', '1508593146', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('125', '1508668146', 'material', 'normal', '2', '超级店铺1', '353', 'vm14274841362', 'vm14274841362@126.com', '0', '1427484196', '38', '支付宝手机支付', '', 'alipaywap', '1508668146', null, '', null, null, '0', '688.00', '0.00', '688.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('126', '1508619146', 'material', 'normal', '2', '超级店铺1', '353', 'vm14274841362', 'vm14274841362@126.com', '11', '1427484403', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('127', '1508670770', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1427507733', '38', '支付宝手机支付', '', 'alipaywap', '1508670770', null, '', null, null, '0', '1045.69', '0.00', '1045.69', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('128', '1508661736', 'material', 'normal', '2', '超级店铺1', '366', '科技文化', '1597039763@vchuang.cn', '0', '1427513037', '38', '支付宝手机支付', '', 'alipaywap', '1508661736', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '好', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('129', '1508632905', 'material', 'normal', '2', '超级店铺1', '366', '科技文化', '1597039763@vchuang.cn', '11', '1427513247', '39', '微信jsapi支付', '', 'wxjsapi', '1508632905', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('130', '1508656349', 'material', 'normal', '2', '超级店铺1', '368', '启云网络', '1711404789@vchuang.cn', '11', '1427514070', '38', '支付宝手机支付', '', 'alipaywap', '1508656349', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('131', '1508699458', 'material', 'normal', '2', '超级店铺1', '368', '启云网络', '1711404789@vchuang.cn', '11', '1427514149', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('132', '1508684665', 'material', 'normal', '2', '超级店铺1', '369', 'vm14275188835', 'vm14275188835@126.com', '20', '1427518938', '39', '微信jsapi支付', '', 'wxjsapi', '1508684665', '1427614975', '', null, null, '0', '298.00', '0.00', '298.00', '0', '0', '0', '可以做', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('133', '1508842857', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '20', '1427683186', '38', '站内宝', '', 'sft', '', '1427712005', '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('134', '1508851026', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '20', '1427684467', '0', '站内宝', '', 'sft', '', '1427713278', '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('135', '1508812070', 'material', 'normal', '2', '超级店铺1', '412', '大年初一', '62791089@vchuang.cn', '11', '1427725836', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '298.00', '0.00', '298.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('136', '1508987609', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1427749775', '41', '银联在线', '', 'unionpay', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('137', '1508905179', 'material', 'normal', '2', '超级店铺1', '416', 'vm14277575589', 'vm14277575589@126.com', '11', '1427757649', '38', '支付宝手机支付', '', 'alipaywap', '1508905179', null, '', null, null, '0', '32.00', '0.00', '32.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('138', '1508924804', 'material', 'normal', '2', '超级店铺1', '416', 'vm14277575589', 'vm14277575589@126.com', '11', '1427758353', '39', '微信jsapi支付', '', 'wxjsapi', '1508924804', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('139', '1508935901', 'material', 'normal', '2', '超级店铺1', '416', 'vm14277575589', 'vm14277575589@126.com', '11', '1427758461', '41', '银联在线', '', 'unionpay', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('140', '1508968454', 'material', 'normal', '2', '超级店铺1', '416', 'vm14277575589', 'vm14277575589@126.com', '11', '1427759149', '0', null, '', '', '', null, '', null, null, '0', '100.00', '0.00', '100.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('141', '1508920459', 'material', 'normal', '2', '超级店铺1', '416', 'vm14277575589', 'vm14277575589@126.com', '11', '1427759284', '0', null, '', '', '', null, '', null, null, '0', '100.00', '0.00', '100.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('142', '1508903366', 'material', 'normal', '2', '超级店铺1', '417', '蒲公英的', '24577887@qq.com', '11', '1427761671', '38', '支付宝手机支付', '', 'alipaywap', '1508903366', null, '', null, null, '0', '8.00', '0.00', '8.00', '0', '0', '0', 'v 个风风光光', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('143', '1508912896', 'material', 'normal', '2', '超级店铺1', '417', '蒲公英的', '24577887@qq.com', '11', '1427762146', '0', null, '', '', '', null, '', null, null, '0', '30.60', '0.00', '30.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('144', '1508950247', 'material', 'normal', '2', '超级店铺1', '419', 'vm14277688357', 'vm14277688357@126.com', '11', '1427768873', '39', '微信jsapi支付', '', 'wxjsapi', '1508950247', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('145', '1508921233', 'material', 'normal', '2', '超级店铺1', '419', 'vm14277688357', 'vm14277688357@126.com', '11', '1427768937', '38', '支付宝手机支付', '', 'alipaywap', '1508921233', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('146', '1508934115', 'material', 'normal', '2', '超级店铺1', '419', 'vm14277688357', 'vm14277688357@126.com', '11', '1427768972', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('147', '1508941617', 'material', 'normal', '2', '超级店铺1', '420', 'vm14277730936', 'vm14277730936@126.com', '11', '1427773242', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('148', '1508950157', 'material', 'normal', '2', '超级店铺1', '1', 'admin', 'admin@qq.com', '11', '1427783198', '38', '支付宝手机支付', '', 'alipaywap', '1508950157', null, '', null, null, '0', '28.50', '0.00', '28.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('149', '1508961537', 'material', 'normal', '2', '超级店铺1', '1', 'admin', 'admin@qq.com', '11', '1427783230', '39', '微信jsapi支付', '', 'wxjsapi', '1508961537', null, '', null, null, '0', '25.50', '0.00', '25.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('150', '1508973566', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1427787659', '41', '银联在线', '', 'unionpay', '', null, '', null, null, '0', '37.00', '0.00', '37.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('151', '1508954266', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1427787718', '44', '微信扫码支付', '', 'wxnative', '1508954266', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('152', '1509092650', 'material', 'normal', '2', '超级店铺1', '449', 'vm14278313329', 'vm14278313329@126.com', '11', '1427831445', '0', null, '', '', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('153', '1509006009', 'material', 'normal', '2', '超级店铺1', '432', 'admin888', 'admin888@qq.com', '11', '1427871336', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '666.00', '0.00', '666.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('154', '1509146368', 'material', 'normal', '2', '超级店铺1', '472', '刘海山', '629918342@vchuang.cn', '0', '1427909178', '38', '支付宝手机支付', '', 'alipaywap', '1509146368', null, '', null, null, '0', '28.50', '0.00', '28.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('155', '1509126814', 'material', 'normal', '2', '超级店铺1', '472', '刘海山', '629918342@vchuang.cn', '0', '1427909278', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('156', '1509149919', 'material', 'normal', '2', '超级店铺1', '472', '刘海山', '629918342@vchuang.cn', '11', '1427909343', '41', '银联在线', '', 'unionpay', '', null, '', null, null, '0', '298.00', '0.00', '298.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('157', '1509158364', 'material', 'normal', '2', '超级店铺1', '475', 'vm14279170084', 'vm14279170084@126.com', '11', '1427917105', '39', '微信jsapi支付', '', 'wxjsapi', '1509158364', null, '', null, null, '0', '79.20', '0.00', '79.20', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('158', '1509171705', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1427922371', '0', null, '', '', '', null, '', null, null, '0', '36.00', '0.00', '36.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('159', '1510632236', 'material', 'normal', '2', '超级店铺1', '489', 'eu2m7', 'eu2m7@126.com', '11', '1429212794', '41', '银联在线', '', 'unionpay', '', null, '', null, null, '0', '2.60', '0.00', '2.60', '0', '0', '0', 'dsf', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('160', '1510643437', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1429240640', '0', null, '', '', '', null, '', null, null, '0', '30.60', '0.00', '30.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('161', '1510654694', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1429240757', '0', null, '', '', '', null, '', null, null, '0', '21.00', '0.00', '21.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('162', '1510799912', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1429299034', '38', '支付宝手机支付', '', 'alipaywap', '1510799912', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('163', '1510709359', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '11', '1429299100', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('164', '1510721732', 'material', 'normal', '2', '超级店铺1', '3', 'buyer', '123456@qq.com', '20', '1429299337', '0', '站内宝', '', 'sft', '', '1429340115', '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('166', '1510878786', 'material', 'normal', '2', '超级店铺1', '587', 'etvu4', 'etvu4@126.com', '11', '1429395925', '44', '微信扫码支付', '', 'wxnative', '1510878786', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('167', '1510822588', 'material', 'normal', '2', '超级店铺1', '589', 'eg7c6', 'eg7c6@126.com', '11', '1429407806', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('168', '1510859155', 'material', 'normal', '2', '超级店铺1', '592', 'e86m8', 'e86m8@126.com', '11', '1429409071', '39', '微信jsapi支付', '', 'wxjsapi', '1510859155', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('169', '1510887810', 'material', 'normal', '2', '超级店铺1', '597', '贱男春', '1510004248@qq.com', '11', '1429422454', '0', null, '', '', '', null, '', null, null, '0', '1588.00', '0.00', '1588.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('170', '1510886331', 'material', 'normal', '2', '超级店铺1', '603', '$*懿*$', '489279528@qq.com', '11', '1429444764', '38', '支付宝手机支付', '', 'alipaywap', '1510886331', null, '', null, null, '0', '1380.00', '0.00', '1380.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('171', '1510908798', 'material', 'normal', '2', '超级店铺', '628', 'rocky', '1171160506@qq.com', '11', '1429480624', '0', null, '', '', '', null, '', null, null, '0', '8.00', '0.00', '8.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('204', '1511221288', 'material', 'normal', '2', '超级店铺', '699', '否定先生', '1741808949@qq.com', '11', '1429753283', '6', '微信扫码支付', '', 'wxnative', '1511221288', null, '', null, null, '0', '0.10', '0.00', '0.10', '0', '0', '0', '测试用', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('217', '1511570601', 'material', 'normal', '2', '超级店铺', '855', 't101', 't101@qq.com', '40', '1429994844', '46', '预存款', '', 'deposit', '', null, '', '1429994969', '3333333', '1430849730', '0.09', '0.00', '0.09', '1', '1433722082', '0', '', '0', '', 'bangsongwuliu', '');
INSERT INTO `ecm_order` VALUES ('174', '1511091503', 'material', 'normal', '2', '超级店铺', '652', 'beijing', 'sdfsdd@163.com', '11', '1429559632', '11', '支付宝', '', 'alipay', '1511091503', null, '', null, null, '0', '30.60', '0.00', '30.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('175', '1511017980', 'material', 'normal', '2', '超级店铺', '652', 'beijing', 'sdfsdd@163.com', '11', '1429559740', '0', null, '', '', '', null, '', null, null, '0', '72.00', '0.00', '72.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('176', '1511056449', 'material', 'normal', '2', '超级店铺', '654', '随州街', '1477802806@qq.com', '20', '1429565542', '7', '微信jsapi支付', '', 'wxjsapi', '1511056449', '1429574352', '', null, null, '0', '152.60', '0.00', '152.60', '0', '0', '0', '嫂子', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('177', '1511041973', 'material', 'normal', '2', '超级店铺', '654', '随州街', '1477802806@qq.com', '11', '1429565787', '4', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '28.50', '0.00', '28.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('178', '1511084264', 'material', 'normal', '2', '超级店铺', '654', '随州街', '1477802806@qq.com', '10', '1429567137', '3', '货到付款', '', 'cod', '', null, '', null, null, '0', '599.00', '0.00', '599.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('179', '1511071877', 'material', 'normal', '2', '超级店铺', '654', '随州街', '1477802806@qq.com', '10', '1429567250', '5', '到店付款', '', 'cos', '', null, '', null, null, '0', '136.50', '0.00', '136.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('180', '1511086151', 'material', 'normal', '2', '超级店铺', '654', '随州街', '1477802806@qq.com', '11', '1429567303', '0', null, '', '', '', null, '', null, null, '0', '28.50', '0.00', '28.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('181', '1511040496', 'material', 'normal', '2', '超级店铺', '654', '随州街', '1477802806@qq.com', '10', '1429567388', '3', '货到付款', '', 'cod', '', null, '', null, null, '0', '688.00', '0.00', '688.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('182', '1511054658', 'material', 'normal', '2', '超级店铺', '654', '随州街', '1477802806@qq.com', '11', '1429567408', '0', null, '', '', '', null, '', null, null, '0', '688.00', '0.00', '688.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('183', '1511006663', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '40', '1429573314', '0', null, '', '', '', '1429573349', '', '1429573366', '234156728384', '1430179984', '30.69', '0.00', '30.69', '1', '1433314175', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('184', '1511097492', 'material', 'normal', '2', '超级店铺', '665', '江淮网', '647925483@qq.com', '11', '1429590604', '0', null, '', '', '', null, '', null, null, '0', '25.50', '0.00', '25.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('185', '1511004227', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1429601713', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.01', '0.08', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('186', '1511056887', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1429601757', '0', '站内宝', '', 'sft', '', '1429630569', '', null, null, '0', '0.09', '0.01', '0.08', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('187', '1511071814', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1429607450', '0', '站内宝', '', 'sft', '', '1429636256', '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('188', '1511098680', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1429610877', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('189', '1511064454', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '40', '1429610954', '46', '预存款', '', 'deposit', '', null, '', null, null, '1429768143', '0.09', '0.00', '0.09', '1', '1433314175', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('190', '1511159581', 'material', 'normal', '2', '超级店铺', '691', 'jiamengdian', '1@qq.com', '20', '1429644013', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '1198.00', '0.00', '1198.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('191', '1511133775', 'material', 'normal', '2', '超级店铺', '694', 'ed5ls', 'ed5ls@126.com', '11', '1429650484', '11', '支付宝', '', 'alipay', '1511133775', null, '', null, null, '0', '1588.00', '0.00', '1588.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('192', '1511177783', 'material', 'normal', '2', '超级店铺', '666', '东营通科', '1242148174@qq.com', '11', '1429682508', '11', '支付宝', '', 'alipay', '1511177783', null, '', null, null, '0', '0.39', '0.00', '0.39', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('193', '1511195454', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1429683469', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '8.00', '0.00', '8.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('194', '1511144570', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1429683852', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '8.00', '0.00', '8.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('195', '1511172560', 'material', 'normal', '2', '超级店铺', '709', '14297119707736', '1429711970@qq.com', '40', '1429684019', '11', '支付宝', '', 'alipay', '1511172560', '1429684090', '', '1429684097', '666', '1429686580', '1200.00', '0.00', '1200.00', '1', '1433314175', '0', '', '0', '', 'anxindakuaixi', '');
INSERT INTO `ecm_order` VALUES ('196', '1511181477', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1429685799', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '8.00', '0.00', '8.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('197', '1511107659', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1429686215', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '0.10', '0.00', '0.10', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('198', '1511153354', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1429686330', '0', null, '', '', '', null, '', null, null, '0', '0.10', '0.00', '0.10', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('199', '1511131324', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1429686447', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '0.10', '0.00', '0.10', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('200', '1511179463', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1429687020', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '0.10', '0.00', '0.10', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('216', '1511581577', 'material', 'normal', '2', '超级店铺', '855', 't101', 't101@qq.com', '40', '1429993664', '46', '预存款', '', 'deposit', '', '1429994306', '', '1429994313', '666666', '1430849730', '0.09', '0.00', '0.09', '1', '1433722082', '0', '', '0', '', 'bangsongwuliu', '');
INSERT INTO `ecm_order` VALUES ('205', '1511299733', 'material', 'normal', '2', '超级店铺', '699', '否定先生', '1741808949@qq.com', '11', '1429753397', '4', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '0.10', '0.00', '0.10', '0', '0', '0', '测试', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('206', '1511266169', 'material', 'normal', '2', '超级店铺', '699', '否定先生', '1741808949@qq.com', '11', '1429753571', '7', '微信jsapi支付', '', 'wxjsapi', '1511266169', null, '', null, null, '0', '0.10', '0.00', '0.10', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('207', '1511200600', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1429767745', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '666.00', '0.00', '666.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('215', '1511322552', 'material', 'normal', '2', '超级店铺', '714', '14297592093886', 'zty@sz1010.com', '20', '1429864982', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '25.50', '0.00', '25.50', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('209', '1511272053', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '40', '1429767815', '46', '预存款', '', 'deposit', '', null, '', '1429767869', '1511272053', '1429767897', '62.00', '0.00', '62.00', '1', '1433314175', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('210', '1511267393', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '40', '1429767962', '46', '预存款', '', 'deposit', '', null, '', '1429767993', '1511267393', '1429768016', '62.00', '0.00', '62.00', '1', '1433314175', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('211', '1511287143', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1429777233', '0', null, '', '', '', null, '', null, null, '0', '8.00', '0.00', '8.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('218', '1511524464', 'material', 'normal', '2', '超级店铺', '855', 't101', 't101@qq.com', '40', '1429995035', '46', '预存款', '', 'deposit', '', null, '', '1429995067', '3333333', '1430849730', '0.09', '0.00', '0.09', '1', '1433722082', '0', '', '0', '', 'anxindakuaixi', '');
INSERT INTO `ecm_order` VALUES ('219', '1511599971', 'material', 'normal', '2', '超级店铺', '855', 't101', 't101@qq.com', '40', '1429995163', '46', '预存款', '', 'deposit', '', null, '', '1429995274', 'dd', '1430849730', '0.09', '0.00', '0.09', '1', '1433722082', '0', '', '0', '', 'dsukuaidi', '');
INSERT INTO `ecm_order` VALUES ('220', '1511544290', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '40', '1430023004', '0', null, '', '', '', '1430123150', '', '1430123182', '11234546586', '1430849730', '30.60', '0.00', '30.60', '1', '1433722082', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('221', '1511525394', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1430034673', '7', '微信jsapi支付', '', 'wxjsapi', '1511525394', null, '', null, null, '0', '8.00', '0.00', '8.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('222', '1511670653', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1430146499', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('223', '1511625224', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1430146538', '7', '微信jsapi支付', '', 'wxjsapi', '1511625224', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('224', '1511793916', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1430178536', '6', '微信扫码支付', '', 'wxnative', '1511793916', null, '', null, null, '0', '30.60', '0.00', '30.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('225', '1511780094', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1430178565', '7', '微信jsapi支付', '', 'wxjsapi', '1511780094', null, '', null, null, '0', '30.60', '0.00', '30.60', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('226', '1511787591', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1430179872', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('227', '1511857033', 'material', 'normal', '2', '超级店铺', '956', 'lj830609', '327399319@qq.com', '11', '1430249929', '0', null, '', '', '', null, '', null, null, '0', '1549.00', '0.00', '1549.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('228', '1511883224', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1430268940', '46', '预存款', '', 'deposit', '', '1430284625', '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('229', '1511869721', 'material', 'normal', '2', '超级店铺', '1', 'admin', 'admin@qq.com', '11', '1430270911', '6', '微信扫码支付', '', 'wxnative', '1511869721', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('230', '1511873867', 'material', 'normal', '2', '超级店铺', '1', 'admin', 'admin@qq.com', '0', '1430271008', '7', '微信jsapi支付', '', 'wxjsapi', '1511873867', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('231', '1511892187', 'material', 'normal', '2', '超级店铺', '1', 'admin', 'admin@qq.com', '0', '1430271034', '11', '支付宝', '', 'alipay', '1511892187', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('232', '1511806293', 'material', 'normal', '2', '超级店铺', '1', 'admin', 'admin@qq.com', '0', '1430271252', '0', null, '', '', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('233', '1511864735', 'material', 'normal', '2', '超级店铺', '969', 'e59pv', 'e59pv@126.com', '11', '1430274675', '6', '微信扫码支付', '', 'wxnative', '1511864735', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('234', '1511878737', 'material', 'normal', '2', '超级店铺', '969', 'e59pv', 'e59pv@126.com', '11', '1430274979', '11', '支付宝', '', 'alipay', '1511878737', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '崔姐', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('235', '1511832477', 'material', 'normal', '2', '超级店铺', '969', 'e59pv', 'e59pv@126.com', '11', '1430275088', '4', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('236', '1511835325', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1430281394', '7', '微信jsapi支付', '', 'wxjsapi', '1511835325', null, '', null, null, '0', '10.00', '0.00', '10.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('237', '1511874971', 'material', 'normal', '2', '超级店铺', '972', 'ew131', 'ew131@126.com', '11', '1430282298', '7', '微信jsapi支付', '', 'wxjsapi', '1511874971', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('238', '1511859026', 'material', 'normal', '2', '超级店铺', '972', 'ew131', 'ew131@126.com', '11', '1430282410', '6', '微信扫码支付', '', 'wxnative', '1511859026', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('239', '1511816160', 'material', 'normal', '2', '超级店铺', '1', 'admin', 'admin@qq.com', '11', '1430287655', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('240', '1511814420', 'material', 'normal', '2', '超级店铺', '486', 'e2rci', 'e2rci@126.com', '20', '1430290386', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('241', '1511896822', 'material', 'normal', '2', '超级店铺', '486', 'e2rci', 'e2rci@126.com', '20', '1430292358', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '0.09', '0.00', '0.09', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('242', '1511930610', 'material', 'normal', '2', '超级店铺', '1017', '嘉音', '1047998169@qq.com', '10', '1430348770', '3', '货到付款', '', 'cod', '', null, '', null, null, '0', '8.00', '0.00', '8.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('243', '1511924684', 'material', 'normal', '970', '电子商务', '602', '123', '123@qq.com', '11', '1430356125', '52', '预存款', '', 'deposit', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('244', '1511945928', 'material', 'normal', '970', '电子商务', '602', '123', '123@qq.com', '11', '1430356206', '0', null, '', '', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('245', '1511950123', 'material', 'normal', '970', '电子商务', '602', '123', '123@qq.com', '11', '1430357182', '52', '预存款', '', 'deposit', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('246', '1511920507', 'material', 'normal', '970', '电子商务', '602', '123', '261788906@qq.com', '11', '1430357791', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('247', '1511921414', 'material', 'normal', '970', '电子商务', '602', '123', '261788906@qq.com', '11', '1430357949', '47', '支付宝', '', 'alipay', '1511921414', null, '', null, null, '0', '1.00', '0.00', '1.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('248', '1511949013', 'material', 'normal', '970', '电子商务', '602', '123', '261788906@qq.com', '11', '1430358951', '0', null, '', '', '', null, '', null, null, '0', '80.00', '0.00', '80.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('249', '1511932162', 'material', 'normal', '970', '电子商务', '602', '123', '261788906@qq.com', '11', '1430358990', '33', '支付宝免签接口', '', 'alipayfree', '', null, '', null, null, '0', '80.00', '0.00', '80.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('250', '1511979542', 'material', 'normal', '970', '电子商务', '602', '123', '261788906@qq.com', '11', '1430359089', '52', '预存款', '', 'deposit', '', null, '', null, null, '0', '80.00', '0.00', '80.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('251', '1511911803', 'material', 'normal', '970', '电子商务', '602', '123', '261788906@qq.com', '11', '1430359249', '53', '银行汇款', '', 'bank', '', null, '45562525555555555555  六点', null, null, '0', '80.00', '0.00', '80.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('252', '1512147431', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '40', '1430556060', '11', '支付宝', '', 'alipay', '1512147431', '1430557018', '', '1430557024', '11111111', '1430557084', '1549.00', '10.00', '1539.00', '1', '1430557091', '0', '', '0', '', 'dsukuaidi', '');
INSERT INTO `ecm_order` VALUES ('253', '1512187440', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1430557162', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '1549.00', '10.00', '1539.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('254', '1512100603', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1430557762', '9', '支付宝网银', 'ICBCBTB', 'alipay_bank', '1512100603', null, '', null, null, '0', '1549.00', '10.00', '1539.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('255', '1512153326', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1430557797', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '1549.00', '10.00', '1539.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('256', '1512119194', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '20', '1430558942', '46', '预存款', '', 'deposit', '', null, '', null, null, '0', '1549.00', '10.00', '1539.00', '0', '0', '0', '', '0', '', '', '');
INSERT INTO `ecm_order` VALUES ('257', '1512175274', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '40', '1430559034', '46', '预存款', '', 'deposit', '', null, '', '1430559128', '11111111', '1430559151', '1549.00', '10.00', '1539.00', '1', '1430559155', '0', '', '0', '', 'bangsongwuliu', '');
INSERT INTO `ecm_order` VALUES ('258', '1520053984', 'material', 'normal', '2', '超级店铺', '3', 'buyer', '123456@qq.com', '11', '1437346355', '9', '支付宝网银', 'CDCB', 'alipay_bank', '1520053984', null, '', null, null, '0', '36.00', '0.00', '36.00', '0', '0', '0', '', '0', '', '', '');

-- ----------------------------
-- Table structure for ecm_order_extm
-- ----------------------------
DROP TABLE IF EXISTS `ecm_order_extm`;
CREATE TABLE `ecm_order_extm` (
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `region_id` int(10) unsigned DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `phone_tel` varchar(60) DEFAULT NULL,
  `phone_mob` varchar(60) DEFAULT NULL,
  `shipping_id` int(10) unsigned DEFAULT NULL,
  `shipping_name` varchar(100) DEFAULT NULL,
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`order_id`),
  KEY `consignee` (`consignee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_order_extm
-- ----------------------------
INSERT INTO `ecm_order_extm` VALUES ('1', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '快递', '0.10');
INSERT INTO `ecm_order_extm` VALUES ('2', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('212', '阿涛', '365', '中国	广东	深圳	南山区', '南新路', '', '13825200198', '13825200198', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('165', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('9', '224', '2276', '中国	山东	济宁	邹城市', '45252545252', '273500', '111111111111', '11111111111', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('10', '呜呜呜', '279', '中国	甘肃	嘉峪关	嘉峪关市', '呃呃呃呃', '', '13304766575', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('11', '呜呜呜', '279', '中国	甘肃	嘉峪关	嘉峪关市', '呃呃呃呃', '', '13304766575', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('12', '吻', '576', '中国	广西	北海	海城区', '广西北海市地角', '536000', '13977937730', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('13', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('14', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('15', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('16', '萨达', '43', '中国	安徽	巢湖', '大的', '萨达', '13734444444', '4121115', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('17', 'vv', '22', '中国	安徽', '干干净净', '', '18655575544', '4555644', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('18', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('213', '阿涛', '365', '中国	广东	深圳	南山区', '南新路', '', '13825200198', '13825200198', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('21', '破坏上下班', '45', '中国	安徽	巢湖	庐江县', '上在职夺取', '525252', '13800138000', '13800138000', '1', '包邮', '5.00');
INSERT INTO `ecm_order_extm` VALUES ('22', '破坏上下班', '45', '中国	安徽	巢湖	庐江县', '上在职夺取', '525252', '13800138000', '13800138000', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('23', '破坏上下班', '45', '中国	安徽	巢湖	庐江县', '上在职夺取', '525252', '13800138000', '13800138000', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('24', '破坏上下班', '45', '中国	安徽	巢湖	庐江县', '上在职夺取', '', '13800138000', '13800138000', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('25', '********', '1030', '中国	河南	安阳', '88888888', '', '888888888', '88888888888888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('26', '黄', '435', '中国	广东	揭阳	榕城区', '仙桥', '', '18354227232', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('27', '黄', '1', '中国', '3421', '', '18354227232', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('28', '黄', '2230', '中国	山东	青岛	胶州市', '青岛工学院', '', '18354227232', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('29', '空间里', '269', '中国	甘肃	甘南', '啊啊啊', '', '588888', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('30', '呵呵', '1', '中国', '好的', '123456', '13686878789', '13696963633', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('31', 'ss', '1', '中国', 'xd', '', '445556665', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('32', 'sdfsd', '1', '中国', 'sdfsdf', '12312', '456456456', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('33', '欧阳鲁林', '409', '中国	广东	佛山	顺德区', '解放路36号', '', '18975577981', '02081346639', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('34', '露露', '417', '中国	广东	河源	龙川县', '韩国', '', '13555555555', '12855855', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('35', '露露', '417', '中国	广东	河源	龙川县', '韩国', '', '13555555555', '12855855', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('36', '2342', '4', '中国	北京	北京	东城区', '234234', '2342', '13800138000', '', '5', '顺风', '24.00');
INSERT INTO `ecm_order_extm` VALUES ('37', '2342', '4', '中国	北京	北京	东城区', '234234', '2342', '13800138000', '', '5', '顺风', '22.00');
INSERT INTO `ecm_order_extm` VALUES ('38', '2342', '4', '中国	北京	北京	东城区', '234234', '2342', '13800138000', '', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('39', '有', '4', '中国	北京	北京	东城区', '大家', '621000', '13444555', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('40', '有', '4', '中国	北京	北京	东城区', '大家', '621000', '13444555', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('41', '有', '4', '中国	北京	北京	东城区', '大家', '', '13444555', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('42', '有', '4', '中国	北京	北京	东城区', '大家', '', '13444555', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('43', 'zaixialei', '1', '中国', '玫瑰陈', '454550', '', '13346796685', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('44', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('45', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('46', '舅舅家j', '1', '中国', '不能难看', '', '13761477312', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('47', '1111', '3398', '111', '旅途愉快', '', '555555888', '555555555', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('48', '小鸡', '279', '中国	甘肃	嘉峪关	嘉峪关市', '基本安路', '', '13389562345', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('49', '科技', '9', '中国	北京	北京	宣武区', '健康快乐', '', '13599998888', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('50', '科技', '9', '中国	北京	北京	宣武区', '健康快乐', '', '13599998888', '', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('51', '啊', '279', '中国	甘肃	嘉峪关	嘉峪关市', 'qqq', '', '13800000000', '', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('52', '啊', '279', '中国	甘肃	嘉峪关	嘉峪关市', 'qqq', '', '13800000000', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('53', '啊', '279', '中国	甘肃	嘉峪关	嘉峪关市', 'qqq', '', '13800000000', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('54', '啊', '279', '中国	甘肃	嘉峪关	嘉峪关市', 'qqq', '', '13800000000', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('55', 'qqq', '1', '中国', 'ww', '', '13800000000', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('56', 'dfdfdf', '1', '中国', 'asdasdasd', '111111', '11111111111', '11111111111', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('57', 'qqq', '1', '中国', 'ww', '', '13800000000', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('58', '语气', '3398', '111', '地球火星', '8888888', '5588662', '6666666', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('59', 'qqq', '1', '中国', 'ww', '', '13800000000', '', '6', '货到付款', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('60', 'qqq', '1', '中国', 'ww', '', '13800000000', '', '6', '货到付款', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('61', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('62', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('63', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('64', 'asda', '152', '中国	福建	福州	台江区', 'asdasd', 'a', '151613111561', '262222222', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('65', 'asssdad', '4', '中国	北京	北京	东城区', 'adsasdads', '122112', '12212121221', '12121212122', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('66', '111', '410', '中国	广东	佛山	三水区', '444444', '', '11111111', '1111111', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('67', '11111', '6', '中国	北京	北京	海淀区', 'eeee', '', '1111111', '11111111', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('68', '111', '269', '中国	甘肃	甘南', '111', '315700', '15397218471', '15397218471', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('69', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('70', '热热', '5', '中国	北京	北京	西城区', '热热而二丰富的发的', '', '', '14444444444', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('71', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('72', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('73', 'qewewqqw', '2831', '中国	四川	自贡	大安区', 'qwewqwqeqw', 'qwewqeqweqw', '123456', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('74', '测试', '1660', '中国	江苏	苏州	金阊区', '测试', '', '18896575873', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('75', '连志宝', '2953', '中国	新疆	乌鲁木齐	头屯河区', '西环北路799号', '', '17709918190', '09913770373', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('76', '连志宝', '2953', '中国	新疆	乌鲁木齐	头屯河区', '西环北路799号', '', '17709918190', '09913770373', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('77', '一直', '417', '中国	广东	河源	龙川县', '考虑考虑', '', '13553263256', '', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('78', 'aaa', '1', '中国', 'aaa', '', '12345678912', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('79', '刚刚好', '169', '中国	福建	龙岩	上杭县', '纠结旅途天', '', '12345678978', '', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('80', '刚刚好', '264', '中国	甘肃	定西	通渭县', '市区突突突天', '', '12345678912', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('81', '刚刚好', '264', '中国	甘肃	定西	通渭县', '市区突突突天', '', '12345678912', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('82', '一直', '417', '中国	广东	河源	龙川县', '考虑考虑', '', '13553263256', '', '5', '顺风', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('83', 'e', '408', '中国	广东	佛山	南海区', 'wee', '', '15506622699', '', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('84', '德上的', '175', '中国	福建	南平	武夷山市', '的打的人', '', '15506622699', '', '6', '货到付款', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('85', '吕亚龙', '2463', '中国	山西	朔州	朔城区', '华源', '', '13834448214', '13834448214', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('86', '吕亚龙', '2463', '中国	山西	朔州	朔城区', '华源', '', '13834448214', '13834448214', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('87', '吕亚龙', '2463', '中国	山西	朔州	朔城区', '华源', '', '13834448214', '13834448214', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('88', '吕亚龙', '2463', '中国	山西	朔州	朔城区', '华源', '', '13834448214', '13834448214', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('89', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('90', 'rgvb', '1635', '中国	吉林	延边	延吉市', 'dfgbsdbsd', '', '15143333333', '2347899', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('91', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('92', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('93', 'rrrrr', '1635', '中国	吉林	延边	延吉市', 'eeeeeeeeeee', '133000', '34242424', '13134343234', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('94', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('95', 'h', '23', '中国	安徽	安庆', 'h', '666666', '13696963555', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('96', '崔萍', '1899', '中国	辽宁	沈阳	和平区', '长白岛', '', '13909833226', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('97', '崔萍', '1899', '中国	辽宁	沈阳	和平区', '长白岛', '', '13909833226', '', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('98', '崔萍', '1899', '中国	辽宁	沈阳	和平区', '长白岛', '', '13909833226', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('99', 'p', '3', '中国	北京	北京', '北京', '', '666666', '666666', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('100', 'p', '3', '中国	北京	北京', '北京', '', '666666', '666666', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('101', 'rrrrr', '1635', '中国	吉林	延边	延吉市', 'eeeeeeeeeee', '133000', '34242424', '13134343234', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('102', '王测试', '2317', '中国	山东	泰安	新泰市', '新泰', '', '18766657898', '18766657898', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('103', 'p', '3', '中国	北京	北京', 'p', '', '1399999999', '666666', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('104', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('105', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '6', '货到付款', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('106', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '6', '货到付款', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('107', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('108', '方芳芳', '3', '中国	北京	北京', '反反复复', '', '', '13333333333', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('109', '麻麻', '7', '中国	北京	北京	朝阳区', '健康快乐健康快乐', '', '13566669999', '', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('110', '麻麻', '7', '中国	北京	北京	朝阳区', '健康快乐健康快乐', '', '13566669999', '', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('111', '王测试', '2317', '中国	山东	泰安	新泰市', '新泰', '', '18766657898', '18766657898', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('112', '王测试', '2317', '中国	山东	泰安	新泰市', '新泰', '', '18766657898', '18766657898', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('113', '王测试', '2317', '中国	山东	泰安	新泰市', '新泰', '', '18766657898', '18766657898', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('114', 'hhh', '323', '中国	甘肃	庆阳	庆城县', 'ddv', '', '13811118367', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('115', 'ddv', '279', '中国	甘肃	嘉峪关	嘉峪关市', 'xcz', '', '13811118367', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('116', '简单看时间长', '1795', '中国	江西	抚州', '无法', '', '', '13811118367', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('117', '再续费', '2128', '中国	宁夏	银川	西夏区', '风湿膏', '', '', '13811118367', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('118', '佛挡杀佛', '2014', '中国	内蒙古	呼和浩特	回民区', '额无法', '', '', '13811118367', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('119', '测试', '1660', '中国	江苏	苏州	金阊区', '测试', '', '18896575873', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('120', 'jdjj', '37', '中国	安徽	蚌埠	东市区', '柳州市桂中大道阳光100', '', '', '15577752555', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('121', 'jdjj', '37', '中国	安徽	蚌埠	东市区', '柳州市桂中大道阳光100', '', '', '15577752555', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('122', '测试', '230', '中国	福建	厦门	集美区', '还不', '', '12586895896', '86886668', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('123', 'julley', '428', '中国	广东	江门	蓬江区', '泰和广场', '', '13286173101', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('124', 'Cs', '187', '中国	福建	宁德	霞浦县', 'Cs', '', '13875221212', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('125', '空间', '417', '中国	广东	河源	龙川县', '咯女太累了旅途进来了', '', '15687878787', '25685478855', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('126', '考虑考虑', '592', '中国	广西	防城港	上思县', '爸爸爸爸爸爸吧', '', '12255555555', '22222222222', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('127', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('128', '李涛', '465', '中国	广东	汕头', '龙眼西2巷6号', '', '13068927736', '13068927736', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('129', '李涛', '465', '中国	广东	汕头', '龙眼西2巷6号', '', '13068927736', '13068927736', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('130', '金', '410', '中国	广东	佛山	三水区', '3467', '', '13677646777', '13746463446', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('131', '金', '410', '中国	广东	佛山	三水区', '3467', '', '13677646777', '13746463446', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('132', '咯OK了', '689', '中国	贵州	黔东南', 'A口', '', '138799', '1368856989', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('133', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('134', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('135', '韵', '347', '中国	广东', '和规范等到', '', '12367604712', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('136', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('137', '1', '3206', '中国	浙江', '吴邦国', '', '', '113456778887', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('138', '（24688', '3206', '中国	浙江', '灯火', '', '135567777', '3356678', '6', '货到付款', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('139', '（24688', '3206', '中国	浙江', '灯火', '', '135567777', '3356678', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('140', '（24688', '3206', '中国	浙江', '灯火', '', '135567777', '3356678', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('141', '（24688', '3206', '中国	浙江', '灯火', '', '135567777', '3356678', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('142', '批准的', '36', '中国	安徽	蚌埠	中市区', '仿佛规范', '', '13764657576', '3578888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('143', '批准的', '36', '中国	安徽	蚌埠	中市区', '仿佛规范', '', '13764657576', '3578888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('144', '哥哥', '3', '中国	北京	北京', '好怀念你不够好', '', '13787879090', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('145', 'hhh', '23', '中国	安徽	安庆', '比比画画', '', '1378770909', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('146', 'hhh', '23', '中国	安徽	安庆', '比比画画', '', '1378770909', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('147', '给狗狗', '22', '中国	安徽', 'v 会根据 v 吧', '', '13787879900', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('148', '王仁', '1797', '中国	江西	抚州	南城县', '好人网', '251500', '18678383791', '18678383791', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('149', '王仁', '1797', '中国	江西	抚州	南城县', '好人网', '251500', '18678383791', '18678383791', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('150', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('151', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('152', '大超', '376', '中国	广东	东莞	万江区', '蔚蓝路36号', '446565', '15705227266', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('153', '王仁', '1646', '中国	江苏	南京	鼓楼区', '渤海路', '251520', '15867856796', '4157111', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('154', '刘二', '189', '中国	福建	宁德	屏南县', '波兰街', '342500', '18546321235', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('155', '刘二', '189', '中国	福建	宁德	屏南县', '波兰街', '342500', '18546321235', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('156', '刘二', '189', '中国	福建	宁德	屏南县', '波兰街', '342500', '18546321235', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('157', 'hhhh', '279', '中国	甘肃	嘉峪关	嘉峪关市', 'jjhh', '', '18366663333', '15033336666', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('158', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('159', 'sdf', '89', '中国	安徽	黄山	屯溪区', 'dd', '', '2347678637', '786324', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('160', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('161', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '6', '货到付款', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('162', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('163', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('164', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('166', '11111', '1369', '中国	湖北	十堰', '1111', '', '111111111', '111111', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('167', '超级买家', '1', '中国', '请如实填写收货人详细地址', '1', '1111111', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('168', '咯末', '1', '中国', '3333333', '', '33336666', '99699999', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('169', '324324', '1', '中国', '324324', '32432', '432324324', '32432432', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('170', '王慧志', '805', '中国	河北	石家庄	裕华区', '育才', '', '15368963358', '', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('171', 'rocky', '3263', '中国	浙江	宁波	海曙区', '阳刚广场', '', '13566302276', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('204', '测试', '8', '中国	北京	北京	崇文区', '详细地址', '', '15515515515', '15515515516', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('215', '阿涛', '365', '中国	广东	深圳	南山区', '南新路', '', '13825200198', '13825200198', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('174', '李小姐', '350', '中国	广东	广州	天河区', '中山路12号', '510520', '', '13899001234', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('175', '李小姐', '350', '中国	广东	广州	天河区', '新城花园E幢2203室', '510520', '', '13899001234', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('176', '黄亚东', '1379', '中国	湖北	随州	曾都区', '湖北省随州市场', '', '15997864455', '15997864455', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('177', '黄亚东', '1', '中国', '湖北省随州市场', '', '15997864455', '15997864555', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('178', '黄亚东', '1', '中国', '湖北省随州市场', '', '15997864455', '15997864555', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('179', '黄亚东', '1', '中国', '湖北省随州市场', '', '15997864455', '15997864555', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('180', '黄亚东', '1', '中国', '湖北省随州市场', '', '15997864455', '15997864555', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('181', '黄亚东', '1', '中国', '湖北省随州市场', '', '15997864455', '15997864555', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('182', '黄亚东', '1', '中国', '湖北省随州市场', '', '15997864455', '15997864555', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('183', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('184', '张云海', '1', '中国', '供电局', '232101', '13329281660', '13329281660', '6', '货到付款', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('185', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('186', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('187', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('188', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('189', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('190', 'jiamengdian', '993', '中国	河南	郑州	郑东新区', 'jiamengdian', '450000', '12345678901', '12343545899', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('191', '测试', '1', '中国', '嗯', '', '18325749062', '1862874906', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('192', '也嗯', '986', '中国	河南	郑州	金水区', 'all 几口就继续吐', '', '15166228787', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('193', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('194', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('195', '啊信同学', '22', '中国	安徽', '合肥东方银座', '52800', '18144982993', '18777361790', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('196', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('197', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('198', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('199', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('200', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('216', '测试分成', '1402', '中国	湖北	孝感	应城市', '测试分成', '测试分成', '18144982994', '18144982994', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('205', '把', '281', '中国	甘肃	金昌	金川区', '张晓', '', '2225588', '4461278', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('206', '把', '281', '中国	甘肃	金昌	金川区', '张晓', '', '2225588', '4461278', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('207', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('214', '阿涛', '365', '中国	广东	深圳	南山区', '南新路', '', '13825200198', '13825200198', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('209', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('210', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('211', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('217', '测试分成', '1402', '中国	湖北	孝感	应城市', '测试分成', '测试分成', '18144982994', '18144982994', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('218', '测试分成', '1402', '中国	湖北	孝感	应城市', '测试分成', '测试分成', '18144982994', '18144982994', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('219', '测试分成', '1402', '中国	湖北	孝感	应城市', '测试分成', '测试分成', '18144982994', '18144982994', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('220', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('221', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('222', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('223', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('224', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('225', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('226', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('227', 'fasd', '36', '中国	安徽	蚌埠	中市区', 'asdfas', 'fasdf', '', '123456789871', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('228', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('229', '王仁', '1797', '中国	江西	抚州	南城县', '好人网', '251500', '18678383791', '18678383791', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('230', '王仁', '1797', '中国	江西	抚州	南城县', '好人网', '251500', '18678383791', '18678383791', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('231', '王仁', '1797', '中国	江西	抚州	南城县', '好人网', '251500', '18678383791', '18678383791', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('232', '王仁', '1797', '中国	江西	抚州	南城县', '好人网', '251500', '18678383791', '18678383791', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('233', '欧阳', '1', '中国', '用量大闸蟹', '', '8888888888', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('234', '欧阳', '431', '中国	广东	江门	开平市', '他妈呀呀呀', '', '588885555', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('235', '欧阳', '431', '中国	广东	江门	开平市', '他妈呀呀呀', '', '588885555', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('236', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('237', '588888', '348', '中国	广东	广州', '中午休闲', '', '8885855', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('238', '欧', '410', '中国	广东	佛山	三水区', '幽默感', '', '5866555886', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('239', '王仁', '1797', '中国	江西	抚州	南城县', '好人网', '251500', '18678383791', '18678383791', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('240', 'sdfs', '372', '中国	广东	潮州	饶平县', '存在着', '', '7777777', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('241', 'hhn', '588', '中国	广西	防城港', '像个个个', '', '589856699', '', '1', '包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('242', '李', '805', '中国	河北	石家庄	裕华区', '恒大雅苑', '', '15698562345', '', '6', '货到付款', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('243', 'fgfd  ', '610', '中国	广西	河池	大化', 's ', '4', '', '15177524125', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('244', 'fgfd', '610', '中国	广西	河池	大化', 's', '4', '', '15177524125', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('245', 'fgfd', '610', '中国	广西	河池	大化', 's', '4', '', '15177524125', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('246', 'fgfd', '610', '中国	广西	河池	大化', 's', '4', '', '15177524125', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('247', 'fgfd', '610', '中国	广西	河池	大化', 's', '4', '', '15177524125', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('248', 'fgfd', '610', '中国	广西	河池	大化', 's', '4', '', '15177524125', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('249', 'fgfd', '610', '中国	广西	河池	大化', 's', '4', '', '15177524125', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('250', 'fgfd', '610', '中国	广西	河池	大化', 's', '4', '', '15177524125', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('251', 'fgfd', '610', '中国	广西	河池	大化', 's', '4', '', '15177524125', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('252', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('253', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('254', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('255', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('256', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('257', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '0', '商家包邮', '0.00');
INSERT INTO `ecm_order_extm` VALUES ('258', '超级买家', '1', '中国', '请如实填写收货人详细地址', '', '', '8888888', '1', '包邮', '0.00');

-- ----------------------------
-- Table structure for ecm_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `ecm_order_goods`;
CREATE TABLE `ecm_order_goods` (
  `rec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL DEFAULT '',
  `spec_id` int(10) unsigned NOT NULL DEFAULT '0',
  `specification` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `goods_image` varchar(255) DEFAULT NULL,
  `evaluation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `credit_value` tinyint(1) NOT NULL DEFAULT '0',
  `is_valid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `group_id` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL,
  `recom` varchar(100) NOT NULL,
  `name` int(11) NOT NULL,
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`,`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=292 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_order_goods
-- ----------------------------
INSERT INTO `ecm_order_goods` VALUES ('1', '1', '18', '沙洲优黄花开富贵480ml/瓶', '18', '', '32.00', '1', 'data/files/store_2/goods_166/small_201312262109269656.jpg', '0', '232342', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('2', '2', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '3432543', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('3', '3', '98', '酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM', '98', '', '1588.00', '1', 'data/files/store_2/goods_107/small_201312262308271759.jpg', '0', 'good!', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('4', '4', '19', '50°红心如意郎酒500ml', '19', '', '52.00', '1', 'data/files/store_2/goods_28/small_201312262110282113.jpg', '0', 'nice!', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('192', '165', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '3333', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('9', '9', '11', '海泉 贡梨', '11', '颜色:红 尺码:L', '25.50', '1', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '0', '不错，很喜欢！', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('10', '9', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '65365', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('11', '10', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '7647', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('12', '11', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '467456', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('13', '12', '95', 'HTC 8S（A620t）3G手机TD-SCDMA/GSM', '95', '', '688.00', '1', 'data/files/store_2/goods_134/small_201312262305341913.jpg', '0', '65765', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('14', '13', '18', '沙洲优黄花开富贵480ml/瓶', '18', '', '32.00', '1', 'data/files/store_2/goods_166/small_201312262109269656.jpg', '0', 'e56', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('15', '14', '98', '酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM', '98', '', '1588.00', '1', 'data/files/store_2/goods_107/small_201312262308271759.jpg', '0', 'tyrtr', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('16', '15', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', 'wrwetwer', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('17', '16', '80', '【量贩购】顶瓜瓜专柜 顶呱呱男女保暖内衣 加厚加绒套装DNBMD-T2...', '80', '', '89.00', '1', 'data/files/store_2/goods_156/small_201312262242365477.jpg', '0', 'tst', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('18', '16', '21', '【量贩购】张裕窖藏二年干红葡萄酒750ml×2瓶（每个ID限购5组）', '21', '', '72.00', '1', 'data/files/store_2/goods_124/small_201312262112041198.jpg', '0', 'wertwerw', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('19', '17', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', 'fger', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('20', '17', '11', '海泉 贡梨', '11', '颜色:红色 尺码:S', '25.50', '1', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '0', '一般般，感觉有些贵。。。', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('21', '18', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', 'fsdrgsr', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('22', '19', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', 'rwtgrre', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('23', '20', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', 'erwtw', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('24', '21', '20', '口子窖白酒（五年）46度 400ml', '20', '', '95.00', '1', 'data/files/store_2/goods_51/small_201312262110515808.jpg', '0', 'wt4twe', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('25', '22', '14', '海泉 进口 红心火龙果 新鲜配送', '14', '', '21.80', '1', 'data/files/store_2/goods_77/small_201312262104371080.jpg', '0', 'fdgsser', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('26', '23', '14', '海泉 进口 红心火龙果 新鲜配送', '14', '', '21.80', '1', 'data/files/store_2/goods_77/small_201312262104371080.jpg', '0', 'sdgrsg', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('27', '24', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', 'fhtrt', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('28', '25', '27', '上海老酒六年陈500ml', '27', '', '666.00', '1', 'data/files/store_2/goods_160/small_201312262119204138.jpg', '0', 'sertey', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('29', '25', '98', '酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM', '98', '', '1588.00', '1', 'data/files/store_2/goods_107/small_201312262308271759.jpg', '0', 'kiuiutut', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('30', '26', '99', '测试商品', '101', '颜色:绿色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', 'werweqerew', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('31', '27', '99', '测试商品', '100', '颜色:红色 尺码:M', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', 'rtwertwere', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('32', '28', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', 'ewrtewew', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('33', '29', '13', '海泉 进口车厘子 圣诞款', '13', '', '108.00', '1', 'data/files/store_2/goods_2/small_201312262103227833.jpg', '0', 'wertwerwe', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('34', '30', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', 'wrtwer', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('35', '31', '13', '海泉 进口车厘子 圣诞款', '13', '', '108.00', '1', 'data/files/store_2/goods_2/small_201312262103227833.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('36', '32', '98', '酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM', '98', '', '1588.00', '1', 'data/files/store_2/goods_107/small_201312262308271759.jpg', '3', 'ghdghdfh', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('37', '33', '98', '酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM', '98', '', '1588.00', '1', 'data/files/store_2/goods_107/small_201312262308271759.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('38', '33', '88', '美妙足浴盆MM-13H全盖泡脚加热足浴器足浴盆泡脚盆', '88', '', '249.00', '1', 'data/files/store_2/goods_124/small_201312262258442397.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('39', '33', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('40', '34', '98', '酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM', '98', '', '1588.00', '1', 'data/files/store_2/goods_107/small_201312262308271759.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('41', '35', '95', 'HTC 8S（A620t）3G手机TD-SCDMA/GSM', '95', '', '688.00', '1', 'data/files/store_2/goods_134/small_201312262305341913.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('42', '36', '109', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  74Q42', '113', '', '189.00', '1', 'data/files/store_92/goods_173/small_201502250349338078.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('43', '36', '106', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  82K601', '110', '', '109.00', '1', 'data/files/store_92/goods_19/small_201502250356598324.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('44', '37', '106', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  82K601', '110', '', '109.00', '1', 'data/files/store_92/goods_19/small_201502250356598324.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('45', '38', '106', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  82K601', '110', '', '1.00', '1', 'data/files/store_92/goods_19/small_201502250356598324.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('46', '39', '11', '海泉 贡梨', '11', '颜色:绿色 尺码:S', '25.50', '1', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '0', '很好，下次还会再来^--^', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('47', '40', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('48', '41', '11', '海泉 贡梨', '11', '颜色:绿色 尺码:S', '25.50', '1', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '0', 'good!', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('49', '42', '11', '海泉 贡梨', '11', '颜色:绿色 尺码:S', '25.50', '1', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '0', '一如既往的好，好评！', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('50', '43', '10', '杰记 国产 新鲜 香甜 库尔勒香梨礼盒', '10', '', '108.80', '1', 'data/files/store_2/goods_31/small_201312262100319871.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('51', '44', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('52', '45', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('53', '46', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('54', '47', '12', '杰记 国产 红肉 新鲜 红心蜜柚', '12', '', '28.50', '1', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('55', '48', '13', '海泉 进口车厘子 圣诞款', '13', '', '108.00', '1', 'data/files/store_2/goods_2/small_201312262103227833.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('56', '49', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('57', '50', '107', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  81K501', '111', '', '109.00', '1', 'data/files/store_92/goods_174/small_201502250349344691.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('58', '51', '109', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  74Q42', '113', '', '189.00', '1', 'data/files/store_92/goods_173/small_201502250349338078.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('59', '52', '3', '海泉 野生苹果 新品上架 馈赠佳品 有糖心哦~', '3', '', '68.00', '1', 'data/files/store_2/goods_148/small_201312262052284448.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('60', '53', '3', '海泉 野生苹果 新品上架 馈赠佳品 有糖心哦~', '3', '', '68.00', '1', 'data/files/store_2/goods_148/small_201312262052284448.jpg', '3', '号', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('61', '54', '3', '海泉 野生苹果 新品上架 馈赠佳品 有糖心哦~', '3', '', '68.00', '1', 'data/files/store_2/goods_148/small_201312262052284448.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('62', '55', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('63', '56', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.10', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('64', '56', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('65', '57', '12', '杰记 国产 红肉 新鲜 红心蜜柚', '12', '', '28.50', '1', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('66', '58', '39', '韩国进口小零食 托马斯小火车鳕鱼肠400g', '39', '', '80.00', '1', 'data/files/store_2/goods_139/small_201312262148598688.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('67', '59', '14', '海泉 进口 红心火龙果 新鲜配送', '14', '', '21.80', '1', 'data/files/store_2/goods_77/small_201312262104371080.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('68', '60', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('69', '61', '9', '海泉 进口红提 新鲜配送', '9', '', '50.00', '1', 'data/files/store_2/goods_120/small_201312262058402887.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('70', '62', '9', '海泉 进口红提 新鲜配送', '9', '', '50.00', '1', 'data/files/store_2/goods_120/small_201312262058402887.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('71', '63', '9', '海泉 进口红提 新鲜配送', '9', '', '50.00', '1', 'data/files/store_2/goods_120/small_201312262058402887.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('72', '64', '106', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  82K601', '110', '', '1.00', '1', 'data/files/store_92/goods_19/small_201502250356598324.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('73', '65', '106', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  82K601', '110', '', '1.00', '1', 'data/files/store_92/goods_19/small_201502250356598324.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('74', '66', '107', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  81K501', '111', '', '109.00', '1', 'data/files/store_92/goods_174/small_201502250349344691.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('75', '67', '109', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  74Q42', '113', '', '189.00', '1', 'data/files/store_92/goods_173/small_201502250349338078.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('76', '68', '99', '测试商品', '102', '颜色:绿色 尺码:M', '0.39', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('77', '69', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '6', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('78', '70', '106', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  82K601', '110', '', '1.00', '1', 'data/files/store_92/goods_19/small_201502250356598324.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('79', '71', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('80', '71', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('81', '72', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('82', '73', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('83', '74', '38', '澳门香记特产 XO酱金钱猪肉脯/肉干 250g 特价 嘴馋了', '38', '', '21.00', '1', 'data/files/store_2/goods_80/small_201312262148001815.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('84', '74', '37', '优之良品贵妃梅200克', '37', '', '20.00', '1', 'data/files/store_2/goods_7/small_201312262146474624.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('85', '75', '106', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  82K601', '110', '', '1.00', '1', 'data/files/store_92/goods_19/small_201502250356598324.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('86', '76', '108', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  74Q82', '112', '', '169.00', '1', 'data/files/store_92/goods_176/small_201502250349364336.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('87', '77', '106', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  82K601', '110', '', '1.00', '1', 'data/files/store_92/goods_19/small_201502250356598324.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('88', '78', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('89', '79', '106', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  82K601', '110', '', '1.00', '1', 'data/files/store_92/goods_19/small_201502250356598324.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('90', '80', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('91', '81', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('92', '82', '106', '11.11购物狂欢节欧美高档男女童装宝贝小朋友孩子  82K601', '110', '', '1.00', '1', 'data/files/store_92/goods_19/small_201502250356598324.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('93', '83', '13', '海泉 进口车厘子 圣诞款', '13', '', '108.00', '13', 'data/files/store_2/goods_2/small_201312262103227833.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('94', '83', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('95', '84', '99', '测试商品', '101', '颜色:绿色 尺码:S', '0.29', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('96', '85', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('97', '86', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('98', '87', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('99', '88', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('100', '89', '13', '海泉 进口车厘子 圣诞款', '13', '', '108.00', '3', 'data/files/store_2/goods_2/small_201312262103227833.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('101', '90', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('102', '90', '10', '杰记 国产 新鲜 香甜 库尔勒香梨礼盒', '10', '', '108.80', '1', 'data/files/store_2/goods_31/small_201312262100319871.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('103', '90', '112', 'sdffsfasd', '116', '', '33.00', '1', 'data/files/store_2/goods_36/small_201503182027165431.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('104', '91', '27', '上海老酒六年陈500ml', '27', '', '666.00', '1', 'data/files/store_2/goods_160/small_201312262119204138.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('105', '92', '27', '上海老酒六年陈500ml', '27', '', '666.00', '1', 'data/files/store_2/goods_160/small_201312262119204138.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('106', '93', '112', 'sdffsfasd', '116', '', '33.00', '1', 'data/files/store_2/goods_36/small_201503182027165431.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('107', '93', '97', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '97', '', '1549.00', '1', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('108', '94', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('109', '95', '39', '韩国进口小零食 托马斯小火车鳕鱼肠400g', '39', '', '80.00', '1', 'data/files/store_2/goods_139/small_201312262148598688.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('110', '96', '29', '银鹭好粥道 黑米杂粮八宝粥280g', '29', '', '3.60', '1', 'data/files/store_2/goods_192/small_201312262136326387.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('111', '97', '2', '袋装水果', '2', '', '100.00', '3', 'data/files/store_2/goods_198/small_201312262049586818.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('112', '98', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('113', '99', '14', '海泉 进口 红心火龙果 新鲜配送', '14', '', '21.80', '1', 'data/files/store_2/goods_77/small_201312262104371080.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('114', '100', '14', '海泉 进口 红心火龙果 新鲜配送', '14', '', '21.80', '1', 'data/files/store_2/goods_77/small_201312262104371080.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('115', '101', '112', 'sdffsfasd', '116', '', '33.00', '1', 'data/files/store_2/goods_36/small_201503182027165431.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('116', '101', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('117', '102', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('118', '102', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('119', '102', '2', '袋装水果', '2', '', '100.00', '2', 'data/files/store_2/goods_198/small_201312262049586818.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('120', '103', '39', '韩国进口小零食 托马斯小火车鳕鱼肠400g', '39', '', '80.00', '1', 'data/files/store_2/goods_139/small_201312262148598688.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('121', '104', '39', '韩国进口小零食 托马斯小火车鳕鱼肠400g', '39', '', '80.00', '1', 'data/files/store_2/goods_139/small_201312262148598688.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('122', '105', '39', '韩国进口小零食 托马斯小火车鳕鱼肠400g', '39', '', '80.00', '1', 'data/files/store_2/goods_139/small_201312262148598688.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('123', '106', '39', '韩国进口小零食 托马斯小火车鳕鱼肠400g', '39', '', '80.00', '1', 'data/files/store_2/goods_139/small_201312262148598688.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('124', '107', '39', '韩国进口小零食 托马斯小火车鳕鱼肠400g', '39', '', '80.00', '1', 'data/files/store_2/goods_139/small_201312262148598688.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('125', '108', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('126', '109', '112', 'sdffsfasd', '118', '颜色:hei 大小:小', '33.00', '2', 'data/files/store_2/goods_36/small_201503182027165431.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('127', '110', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '50.00', '500', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('128', '110', '113', '2015妮维雅女士新款内衣多种颜色可选', '123', '颜色:黑 尺码:XL', '50.00', '651', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('129', '110', '113', '2015妮维雅女士新款内衣多种颜色可选', '125', '颜色:大红 尺码:XXL', '50.00', '180', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('130', '110', '113', '2015妮维雅女士新款内衣多种颜色可选', '126', '颜色:杏色 尺码:XXL', '50.00', '381', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('131', '111', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '50.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('132', '112', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '50.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('133', '113', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('134', '114', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('135', '115', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('136', '116', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('137', '117', '9', '海泉 进口红提 新鲜配送', '9', '', '50.00', '1', 'data/files/store_2/goods_120/small_201312262058402887.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('138', '118', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('139', '119', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('140', '120', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('141', '121', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('142', '121', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('143', '122', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('144', '123', '113', '2015妮维雅女士新款内衣多种颜色可选', '123', '颜色:黑 尺码:XL', '0.50', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('145', '124', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('146', '125', '95', 'HTC 8S（A620t）3G手机TD-SCDMA/GSM', '95', '', '688.00', '1', 'data/files/store_2/goods_134/small_201312262305341913.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('147', '126', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('148', '127', '73', '新品女装 荷叶边外衫 碎花裙 裙子夏季两件套 麻棉长袖连衣裙F512...', '73', '', '396.00', '1', 'data/files/store_2/goods_142/small_201312262235429182.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('149', '127', '21', '【量贩购】张裕窖藏二年干红葡萄酒750ml×2瓶（每个ID限购5组）', '21', '', '50.00', '1', 'data/files/store_2/goods_124/small_201312262112041198.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('150', '127', '58', '飞利浦新安怡智能蒸汽消毒锅', '58', '', '500.00', '1', 'data/files/store_2/goods_106/small_201312262211467126.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('151', '127', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('152', '127', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('153', '127', '4', '杰记 新鲜脆甜 高山红苹果', '4', '', '69.00', '1', 'data/files/store_2/goods_57/small_201312262054174988.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('154', '128', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('155', '129', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('156', '130', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('157', '131', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('158', '132', '114', '预售韩都衣舍韩版2015夏装新款女装宽松小脚背带牛仔裤CQ4030莀', '127', '', '298.00', '1', 'data/files/store_2/goods_93/small_201503281114539137.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('159', '133', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('160', '134', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('161', '135', '114', '预售韩都衣舍韩版2015夏装新款女装宽松小脚背带牛仔裤CQ4030莀', '127', '', '298.00', '1', 'data/files/store_2/goods_93/small_201503281114539137.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('162', '136', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('163', '137', '6', '杰记 进口 新鲜 新西兰 爵士 苹果', '6', '', '32.00', '1', 'data/files/store_2/goods_136/small_201312262055366831.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('164', '138', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('165', '139', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('166', '140', '2', '袋装水果', '2', '', '100.00', '1', 'data/files/store_2/goods_198/small_201312262049586818.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('167', '141', '2', '袋装水果', '2', '', '100.00', '1', 'data/files/store_2/goods_198/small_201312262049586818.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('168', '142', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('169', '143', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('170', '144', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('171', '145', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('172', '146', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('173', '147', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('174', '148', '12', '杰记 国产 红肉 新鲜 红心蜜柚', '12', '', '28.50', '1', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('175', '149', '11', '海泉 贡梨', '11', '颜色:红 尺码:L', '25.50', '1', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '0', 'nice!', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('176', '150', '22', '华佗十全补酒700ml', '22', '', '36.00', '1', 'data/files/store_2/goods_6/small_201312262113269791.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('177', '150', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('178', '151', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('179', '152', '113', '2015妮维雅女士新款内衣多种颜色可选', '119', '颜色:红 尺码:L', '1.00', '1', 'data/files/store_2/goods_52/small_201503230817323015.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('180', '153', '27', '上海老酒六年陈500ml', '27', '', '666.00', '1', 'data/files/store_2/goods_160/small_201312262119204138.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('181', '154', '12', '杰记 国产 红肉 新鲜 红心蜜柚', '12', '', '28.50', '1', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('182', '155', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('183', '156', '114', '预售韩都衣舍韩版2015夏装新款女装宽松小脚背带牛仔裤CQ4030莀', '127', '', '298.00', '1', 'data/files/store_2/goods_93/small_201503281114539137.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('184', '157', '115', '火龙果 中国水果', '128', '', '79.20', '1', 'data/files/store_2/goods_109/small_201504011138299707.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('185', '158', '22', '华佗十全补酒700ml', '22', '', '36.00', '1', 'data/files/store_2/goods_6/small_201312262113269791.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('186', '159', '49', '川崎火锅调料海麻辣100g', '49', '', '2.60', '1', 'data/files/store_2/goods_162/small_201312262159227323.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('187', '160', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('188', '161', '38', '澳门香记特产 XO酱金钱猪肉脯/肉干 250g 特价 嘴馋了', '38', '', '21.00', '1', 'data/files/store_2/goods_80/small_201312262148001815.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('189', '162', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('190', '163', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('191', '164', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('193', '166', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('194', '167', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('195', '168', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('196', '169', '98', '酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM', '98', '', '1588.00', '1', 'data/files/store_2/goods_107/small_201312262308271759.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('197', '170', '58', '飞利浦新安怡智能蒸汽消毒锅', '58', '', '774.00', '1', 'data/files/store_2/goods_106/small_201312262211467126.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('198', '170', '56', '飞利浦新安怡手动吸乳器外出旅行组合套装', '56', '', '606.00', '1', 'data/files/store_2/goods_16/small_201312262210162177.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('199', '171', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('200', '172', '99', '测试商品', '102', '颜色:绿色 尺码:M', '0.39', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('201', '173', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('202', '174', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('203', '175', '21', '【量贩购】张裕窖藏二年干红葡萄酒750ml×2瓶（每个ID限购5组）', '21', '', '72.00', '1', 'data/files/store_2/goods_124/small_201312262112041198.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('204', '176', '36', '泰国进口天然零食品 特级泰国植生桂圆肉干 龙眼肉 果干蜜饯 140g...', '36', '', '22.00', '1', 'data/files/store_2/goods_113/small_201312262145134866.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('205', '176', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('206', '176', '2', '袋装水果', '2', '', '100.00', '1', 'data/files/store_2/goods_198/small_201312262049586818.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('207', '177', '12', '杰记 国产 红肉 新鲜 红心蜜柚', '12', '', '28.50', '1', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('208', '178', '94', '华为（Huawei）T8951（G510）3G手机 TD-SCDMA/GSM', '94', '', '599.00', '1', 'data/files/store_2/goods_93/small_201312262304537590.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('209', '179', '12', '杰记 国产 红肉 新鲜 红心蜜柚', '12', '', '28.50', '1', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('210', '179', '13', '海泉 进口车厘子 圣诞款', '13', '', '108.00', '1', 'data/files/store_2/goods_2/small_201312262103227833.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('211', '180', '12', '杰记 国产 红肉 新鲜 红心蜜柚', '12', '', '28.50', '1', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('212', '181', '95', 'HTC 8S（A620t）3G手机TD-SCDMA/GSM', '95', '', '688.00', '1', 'data/files/store_2/goods_134/small_201312262305341913.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('213', '182', '95', 'HTC 8S（A620t）3G手机TD-SCDMA/GSM', '95', '', '688.00', '1', 'data/files/store_2/goods_134/small_201312262305341913.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('214', '183', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('215', '183', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('216', '184', '11', '海泉 贡梨', '11', '颜色:红 尺码:L', '25.50', '1', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '0', '非常不错，值得！', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('217', '185', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('218', '186', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('219', '187', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('220', '188', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('221', '189', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('222', '190', '94', '华为（Huawei）T8951（G510）3G手机 TD-SCDMA/GSM', '94', '', '599.00', '2', 'data/files/store_2/goods_93/small_201312262304537590.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('223', '191', '98', '酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM', '98', '', '1588.00', '1', 'data/files/store_2/goods_107/small_201312262308271759.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('224', '192', '99', '测试商品', '102', '颜色:绿色 尺码:M', '0.39', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('225', '193', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('226', '194', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('227', '195', '319', '金朗点秒机', '332', '', '1200.00', '1', 'data/files/mall/settings/default_goods_image.png', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('228', '196', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('229', '197', '318', '测试商品', '331', '', '0.10', '1', 'data/files/store_2/goods_80/small_201504221338007501.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('230', '198', '318', '测试商品', '331', '', '0.10', '1', 'data/files/store_2/goods_80/small_201504221338007501.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('231', '199', '318', '测试商品', '331', '', '0.10', '1', 'data/files/store_2/goods_80/small_201504221338007501.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('232', '200', '318', '测试商品', '331', '', '0.10', '1', 'data/files/store_2/goods_80/small_201504221338007501.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('233', '201', '36', '泰国进口天然零食品 特级泰国植生桂圆肉干 龙眼肉 果干蜜饯 140g...', '36', '', '22.00', '1', 'data/files/store_2/goods_113/small_201312262145134866.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('234', '202', '328', '女装学院风小清新女生必备款新款韩国设计学院风清新甜美收腰雪纺连衣裙4-9', '341', '', '58.00', '1', 'data/files/store_100/goods_36/small_201504231010363955.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('235', '203', '328', '女装学院风小清新女生必备款新款韩国设计学院风清新甜美收腰雪纺连衣裙4-9', '341', '', '58.00', '1', 'data/files/store_100/goods_36/small_201504231010363955.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('236', '203', '329', '女装学院风小清新女生必备款新款时尚百搭字母短袖T恤宽松打底衫上衣4-9', '342', '', '35.00', '1', 'data/files/store_100/goods_19/small_201504231010198269.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('237', '204', '318', '测试商品', '331', '', '0.10', '1', 'data/files/store_2/goods_80/small_201504221338007501.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('238', '205', '318', '测试商品', '331', '', '0.10', '1', 'data/files/store_2/goods_80/small_201504221338007501.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('239', '206', '318', '测试商品', '331', '', '0.10', '1', 'data/files/store_2/goods_80/small_201504221338007501.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('240', '207', '27', '上海老酒六年陈500ml', '27', '', '666.00', '1', 'data/files/store_2/goods_160/small_201312262119204138.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('241', '208', '333', '学院风小清新女生必备款春装新款女装3D狮子头显瘦简约条纹短袖T恤4-9', '346', '', '39.00', '1', 'data/files/store_100/goods_71/small_201504231011116069.jpeg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('242', '209', '24', '42°洋河大曲青瓷500ml', '24', '', '62.00', '1', 'data/files/store_2/goods_141/small_201312262115417011.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('243', '210', '24', '42°洋河大曲青瓷500ml', '24', '', '62.00', '1', 'data/files/store_2/goods_141/small_201312262115417011.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('244', '211', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('245', '212', '12', '杰记 国产 红肉 新鲜 红心蜜柚', '12', '', '28.50', '1', 'data/files/store_2/goods_144/small_201312262102246687.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('246', '213', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('247', '214', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '3', '很好啊....', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('248', '215', '11', '海泉 贡梨', '11', '颜色:红 尺码:L', '25.50', '1', 'data/files/store_2/goods_75/small_201312262101158858.jpg', '0', '比实体店便宜不少，不错！', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('249', '216', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('250', '217', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('251', '218', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('252', '219', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '3', '', '1', '1', '0', '0', '0.027', '856');
INSERT INTO `ecm_order_goods` VALUES ('253', '220', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('254', '221', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('255', '222', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('256', '223', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('257', '224', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('258', '225', '15', '海泉 进口柠檬 尤力克 新鲜配送', '15', '', '30.60', '1', 'data/files/store_2/goods_153/small_201312262105539118.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('259', '226', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('260', '227', '97', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '97', '', '1549.00', '1', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('261', '228', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('262', '229', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('263', '230', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('264', '231', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('265', '232', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('266', '233', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('267', '234', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('268', '235', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('269', '236', '5', '杰记 新鲜脆甜 高山红苹果', '5', '', '10.00', '1', 'data/files/store_2/goods_99/small_201312262054594117.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('270', '237', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('271', '238', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('272', '239', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('273', '240', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('274', '241', '99', '测试商品', '99', '颜色:红色 尺码:S', '0.09', '1', 'data/files/store_2/goods_123/small_201406260258439769.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('275', '242', '1', '合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链', '1', '', '8.00', '1', 'data/files/store_2/goods_110/small_201312262048304586.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('276', '243', '345', '联想笔记本', '357', '', '1.00', '1', 'data/files/store_970/goods_16/small_201504301703362317.png', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('277', '244', '345', '联想笔记本', '357', '', '1.00', '1', 'data/files/store_970/goods_16/small_201504301703362317.png', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('278', '245', '345', '联想笔记本', '357', '', '1.00', '1', 'data/files/store_970/goods_16/small_201504301703362317.png', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('279', '246', '345', '联想笔记本', '357', '', '1.00', '1', 'data/files/store_970/goods_16/small_201504301703362317.png', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('280', '247', '345', '联想笔记本', '357', '', '1.00', '1', 'data/files/store_970/goods_16/small_201504301703362317.png', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('281', '248', '346', '联想电脑', '358', '', '80.00', '1', 'data/files/store_970/goods_5/small_201504301743259444.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('282', '249', '346', '联想电脑', '358', '', '80.00', '1', 'data/files/store_970/goods_5/small_201504301743259444.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('283', '250', '346', '联想电脑', '358', '', '80.00', '1', 'data/files/store_970/goods_5/small_201504301743259444.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('284', '251', '346', '联想电脑', '358', '', '80.00', '1', 'data/files/store_970/goods_5/small_201504301743259444.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('285', '252', '97', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '97', '', '1549.00', '1', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '3', '', '1', '1', '0', '0', '0', '2');
INSERT INTO `ecm_order_goods` VALUES ('286', '253', '97', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '97', '', '1549.00', '1', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('287', '254', '97', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '97', '', '1549.00', '1', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('288', '255', '97', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '97', '', '1549.00', '1', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('289', '256', '97', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '97', '', '1549.00', '1', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '0', '', '0', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('290', '257', '97', '三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待', '97', '', '1549.00', '1', 'data/files/store_2/goods_27/small_201312262307078496.jpg', '3', '', '1', '1', '0', '0', '', '0');
INSERT INTO `ecm_order_goods` VALUES ('291', '258', '22', '华佗十全补酒700ml', '22', '', '36.00', '1', 'data/files/store_2/goods_6/small_201312262113269791.jpg', '0', '', '0', '1', '0', '0', '', '0');

-- ----------------------------
-- Table structure for ecm_order_log
-- ----------------------------
DROP TABLE IF EXISTS `ecm_order_log`;
CREATE TABLE `ecm_order_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `operator` varchar(60) NOT NULL DEFAULT '',
  `order_status` varchar(60) NOT NULL DEFAULT '',
  `changed_status` varchar(60) NOT NULL DEFAULT '',
  `remark` varchar(255) DEFAULT NULL,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_order_log
-- ----------------------------
INSERT INTO `ecm_order_log` VALUES ('6', '16', 'seller', '等待买家付款', '买家已付款', '', '1423729936');
INSERT INTO `ecm_order_log` VALUES ('7', '15', 'seller', '等待买家付款', '买家已付款', '', '1423729954');
INSERT INTO `ecm_order_log` VALUES ('8', '18', 'seller', '已提交', '买家已付款', '', '1423806443');
INSERT INTO `ecm_order_log` VALUES ('9', '18', 'seller', '买家已付款', '卖家已发货', '', '1423806452');
INSERT INTO `ecm_order_log` VALUES ('10', '18', 'buyer', '卖家已发货', '交易完成', '买家确认收货', '1423806464');
INSERT INTO `ecm_order_log` VALUES ('11', '21', 'seller', '已提交', '已提交', '调整费用', '1424121712');
INSERT INTO `ecm_order_log` VALUES ('12', '21', 'seller', '已提交', '已提交', '调整费用', '1424121713');
INSERT INTO `ecm_order_log` VALUES ('13', '21', 'seller', '已提交', '交易关闭', '买家主动要求', '1424121731');
INSERT INTO `ecm_order_log` VALUES ('14', '23', 'babgsfc', '等待买家付款', '交易关闭', '改选其他卖家', '1424121915');
INSERT INTO `ecm_order_log` VALUES ('15', '22', 'babgsfc', '等待买家付款', '交易关闭', '改选其他商品', '1424121938');
INSERT INTO `ecm_order_log` VALUES ('16', '25', 'vm14240680765', '已提交', '交易关闭', '改选其他商品', '1424128842');
INSERT INTO `ecm_order_log` VALUES ('17', '20', 'seller', '等待买家付款', '买家已付款', '', '1424129023');
INSERT INTO `ecm_order_log` VALUES ('18', '19', 'seller', '等待买家付款', '买家已付款', '', '1424129050');
INSERT INTO `ecm_order_log` VALUES ('19', '28', 'seller', '等待买家付款', '买家已付款', '收到', '1424648374');
INSERT INTO `ecm_order_log` VALUES ('20', '30', 'seller', '已提交', '买家已付款', '', '1424648893');
INSERT INTO `ecm_order_log` VALUES ('21', '30', 'seller', '买家已付款', '卖家已发货', '', '1424648901');
INSERT INTO `ecm_order_log` VALUES ('22', '30', 'seller', '卖家已发货', '交易完成', '', '1424648944');
INSERT INTO `ecm_order_log` VALUES ('23', '31', 'seller', '已提交', '买家已付款', '', '1424651422');
INSERT INTO `ecm_order_log` VALUES ('24', '31', 'seller', '买家已付款', '卖家已发货', '', '1424651434');
INSERT INTO `ecm_order_log` VALUES ('25', '32', 'seller', '等待买家付款', '买家已付款', '', '1424651635');
INSERT INTO `ecm_order_log` VALUES ('26', '32', 'seller', '买家已付款', '卖家已发货', '', '1424651642');
INSERT INTO `ecm_order_log` VALUES ('27', '32', 'vm14246512935', '卖家已发货', '交易完成', '买家确认收货', '1424651661');
INSERT INTO `ecm_order_log` VALUES ('28', '38', 'yijian', '等待买家付款', '买家已付款', 'ok', '1424779595');
INSERT INTO `ecm_order_log` VALUES ('29', '38', 'yijian', '买家已付款', '卖家已发货', '', '1424779643');
INSERT INTO `ecm_order_log` VALUES ('30', '31', '0', '卖家已发货', '交易完成', '', '1425854830');
INSERT INTO `ecm_order_log` VALUES ('31', '38', '0', '卖家已发货', '交易完成', '', '1425854830');
INSERT INTO `ecm_order_log` VALUES ('32', '31', '0', '卖家已发货', '交易完成', '', '1425854830');
INSERT INTO `ecm_order_log` VALUES ('33', '53', 'seller', '已提交', '买家已付款', '', '1426024128');
INSERT INTO `ecm_order_log` VALUES ('34', '53', 'seller', '买家已付款', '卖家已发货', '', '1426024156');
INSERT INTO `ecm_order_log` VALUES ('35', '53', 'seller', '卖家已发货', '交易完成', '', '1426024186');
INSERT INTO `ecm_order_log` VALUES ('36', '52', 'seller', '等待买家付款', '买家已付款', '', '1426026279');
INSERT INTO `ecm_order_log` VALUES ('37', '55', 'seller', '买家已付款', '卖家已发货', '', '1426040303');
INSERT INTO `ecm_order_log` VALUES ('38', '44', 'seller', '等待买家付款', '买家已付款', '', '1426040349');
INSERT INTO `ecm_order_log` VALUES ('39', '44', 'seller', '买家已付款', '卖家已发货', '', '1426040411');
INSERT INTO `ecm_order_log` VALUES ('40', '49', 'seller', '等待买家付款', '买家已付款', '', '1426050541');
INSERT INTO `ecm_order_log` VALUES ('41', '58', 'seller', '等待买家付款', '买家已付款', '', '1426050548');
INSERT INTO `ecm_order_log` VALUES ('42', '57', 'seller', '等待买家付款', '买家已付款', '', '1426050553');
INSERT INTO `ecm_order_log` VALUES ('43', '56', 'seller', '等待买家付款', '买家已付款', '', '1426050556');
INSERT INTO `ecm_order_log` VALUES ('44', '54', 'seller', '等待买家付款', '买家已付款', '', '1426050563');
INSERT INTO `ecm_order_log` VALUES ('45', '48', 'seller', '等待买家付款', '买家已付款', '', '1426050565');
INSERT INTO `ecm_order_log` VALUES ('46', '47', 'seller', '等待买家付款', '买家已付款', '', '1426050568');
INSERT INTO `ecm_order_log` VALUES ('47', '46', 'seller', '等待买家付款', '买家已付款', '', '1426050570');
INSERT INTO `ecm_order_log` VALUES ('48', '45', 'seller', '等待买家付款', '买家已付款', '', '1426050572');
INSERT INTO `ecm_order_log` VALUES ('49', '43', 'seller', '等待买家付款', '买家已付款', '', '1426050575');
INSERT INTO `ecm_order_log` VALUES ('50', '42', 'seller', '等待买家付款', '买家已付款', '', '1426050578');
INSERT INTO `ecm_order_log` VALUES ('51', '41', 'seller', '等待买家付款', '买家已付款', '', '1426050581');
INSERT INTO `ecm_order_log` VALUES ('52', '40', 'seller', '等待买家付款', '买家已付款', '', '1426050584');
INSERT INTO `ecm_order_log` VALUES ('53', '39', 'seller', '等待买家付款', '买家已付款', '', '1426050588');
INSERT INTO `ecm_order_log` VALUES ('54', '35', 'seller', '等待买家付款', '买家已付款', '', '1426050590');
INSERT INTO `ecm_order_log` VALUES ('55', '55', 'seller', '卖家已发货', '交易关闭', '买家主动要求', '1426050796');
INSERT INTO `ecm_order_log` VALUES ('56', '60', 'seller', '已提交', '买家已付款', '111', '1426131686');
INSERT INTO `ecm_order_log` VALUES ('57', '57', 'seller', '买家已付款', '卖家已发货', '', '1426134929');
INSERT INTO `ecm_order_log` VALUES ('58', '58', 'seller', '买家已付款', '卖家已发货', '', '1426135454');
INSERT INTO `ecm_order_log` VALUES ('59', '57', 'seller', '卖家已发货', '交易关闭', '无法备齐货物', '1426135474');
INSERT INTO `ecm_order_log` VALUES ('60', '63', 'seller', '等待买家付款', '买家已付款', '', '1426235209');
INSERT INTO `ecm_order_log` VALUES ('61', '63', 'seller', '买家已付款', '卖家已发货', '', '1426235223');
INSERT INTO `ecm_order_log` VALUES ('62', '60', 'seller', '买家已付款', '卖家已发货', '个风格风格', '1426374401');
INSERT INTO `ecm_order_log` VALUES ('63', '81', 'seller', '等待买家付款', '买家已付款', '', '1426562706');
INSERT INTO `ecm_order_log` VALUES ('64', '81', 'seller', '买家已付款', '卖家已发货', '', '1426566522');
INSERT INTO `ecm_order_log` VALUES ('65', '44', '0', '卖家已发货', '交易完成', '', '1426646639');
INSERT INTO `ecm_order_log` VALUES ('66', '58', '0', '卖家已发货', '交易完成', '', '1426743029');
INSERT INTO `ecm_order_log` VALUES ('67', '63', '0', '卖家已发货', '交易完成', '', '1426841491');
INSERT INTO `ecm_order_log` VALUES ('68', '95', 'seller', '等待买家付款', '买家已付款', '', '1426914342');
INSERT INTO `ecm_order_log` VALUES ('69', '60', '0', '卖家已发货', '交易完成', '', '1426981792');
INSERT INTO `ecm_order_log` VALUES ('70', '60', '0', '卖家已发货', '交易完成', '', '1426981792');
INSERT INTO `ecm_order_log` VALUES ('71', '101', 'seller', '已提交', '买家已付款', 'dgdgd', '1426993526');
INSERT INTO `ecm_order_log` VALUES ('72', '90', 'seller', '已提交', '买家已付款', 'jjjjjjjjjjjj', '1427001300');
INSERT INTO `ecm_order_log` VALUES ('73', '108', 'seller', '等待买家付款', '买家已付款', 'gg', '1427016343');
INSERT INTO `ecm_order_log` VALUES ('74', '108', 'seller', '买家已付款', '卖家已发货', '', '1427016367');
INSERT INTO `ecm_order_log` VALUES ('75', '109', 'seller', '等待买家付款', '交易关闭', '不是有效的订单', '1427039466');
INSERT INTO `ecm_order_log` VALUES ('76', '111', 'whqwhq743', '等待买家付款', '交易关闭', '其他原因', '1427047518');
INSERT INTO `ecm_order_log` VALUES ('77', '114', '哈哈', '等待买家付款', '交易关闭', '改选其他商品', '1427062374');
INSERT INTO `ecm_order_log` VALUES ('78', '118', 'seller', '等待买家付款', '买家已付款', '', '1427076891');
INSERT INTO `ecm_order_log` VALUES ('79', '118', 'seller', '买家已付款', '卖家已发货', '', '1427076921');
INSERT INTO `ecm_order_log` VALUES ('80', '81', '0', '卖家已发货', '交易完成', '', '1427172352');
INSERT INTO `ecm_order_log` VALUES ('81', '122', 'seller', '等待买家付款', '买家已付款', '', '1427232147');
INSERT INTO `ecm_order_log` VALUES ('82', '122', 'seller', '买家已付款', '卖家已发货', '456', '1427232202');
INSERT INTO `ecm_order_log` VALUES ('83', '122', 'seller', '卖家已发货', '卖家已发货', 'hddgh', '1427232214');
INSERT INTO `ecm_order_log` VALUES ('84', '115', 'seller', '等待买家付款', '买家已付款', 'ss', '1427358718');
INSERT INTO `ecm_order_log` VALUES ('85', '115', 'seller', '买家已付款', '卖家已发货', '33', '1427358798');
INSERT INTO `ecm_order_log` VALUES ('86', '125', 'vm14274841362', '等待买家付款', '交易关闭', '改选其他商品', '1427484469');
INSERT INTO `ecm_order_log` VALUES ('87', '128', '科技文化', '等待买家付款', '交易关闭', '改选其他商品', '1427513298');
INSERT INTO `ecm_order_log` VALUES ('88', '132', 'seller', '等待买家付款', '买家已付款', '', '1427614975');
INSERT INTO `ecm_order_log` VALUES ('89', '108', '0', '卖家已发货', '交易完成', '', '1427624463');
INSERT INTO `ecm_order_log` VALUES ('90', '118', '0', '卖家已发货', '交易完成', '', '1427684314');
INSERT INTO `ecm_order_log` VALUES ('91', '122', '0', '卖家已发货', '交易完成', '', '1427838593');
INSERT INTO `ecm_order_log` VALUES ('92', '154', '刘海山', '等待买家付款', '交易关闭', '改选其他商品', '1427909255');
INSERT INTO `ecm_order_log` VALUES ('93', '155', '刘海山', '等待买家付款', '交易关闭', '改选其他商品', '1427909328');
INSERT INTO `ecm_order_log` VALUES ('94', '115', '0', '已发货', '已完成', '', '1429176182');
INSERT INTO `ecm_order_log` VALUES ('95', '183', 'seller', '等待买家付款', '买家已付款', '', '1429573349');
INSERT INTO `ecm_order_log` VALUES ('96', '183', 'seller', '买家已付款', '卖家已发货', '', '1429573366');
INSERT INTO `ecm_order_log` VALUES ('97', '176', 'seller', '等待买家付款', '买家已付款', '', '1429574352');
INSERT INTO `ecm_order_log` VALUES ('98', '195', 'seller', '等待买家付款', '买家已付款', '', '1429684090');
INSERT INTO `ecm_order_log` VALUES ('99', '195', 'seller', '买家已付款', '卖家已发货', 'eeeee', '1429684097');
INSERT INTO `ecm_order_log` VALUES ('100', '195', '14297119707736', '卖家已发货', '交易完成', '买家确认收货', '1429686183');
INSERT INTO `ecm_order_log` VALUES ('101', '195', '14297119707736', '卖家已发货', '交易完成', '买家确认收货', '1429686296');
INSERT INTO `ecm_order_log` VALUES ('102', '195', '14297119707736', '卖家已发货', '交易完成', '买家确认收货', '1429686327');
INSERT INTO `ecm_order_log` VALUES ('103', '195', '14297119707736', '卖家已发货', '交易完成', '买家确认收货', '1429686443');
INSERT INTO `ecm_order_log` VALUES ('104', '195', '14297119707736', '卖家已发货', '交易完成', '买家确认收货', '1429686516');
INSERT INTO `ecm_order_log` VALUES ('105', '195', '14297119707736', '卖家已发货', '交易完成', '买家确认收货', '1429686580');
INSERT INTO `ecm_order_log` VALUES ('106', '209', 'seller', '买家已付款', '卖家已发货', '', '1429767869');
INSERT INTO `ecm_order_log` VALUES ('107', '209', 'buyer', '卖家已发货', '交易完成', '买家确认收货', '1429767897');
INSERT INTO `ecm_order_log` VALUES ('108', '210', 'seller', '买家已付款', '卖家已发货', '', '1429767993');
INSERT INTO `ecm_order_log` VALUES ('109', '210', 'buyer', '卖家已发货', '交易完成', '买家确认收货', '1429768016');
INSERT INTO `ecm_order_log` VALUES ('110', '189', '0', '买家已付款', '交易完成', '卖家同意退款，该订单中的所有商品都处于处理完毕状态，故订单状态自动转为已完成', '1429768143');
INSERT INTO `ecm_order_log` VALUES ('111', '214', 'seller', '买家已付款', '卖家已发货', '', '1429858703');
INSERT INTO `ecm_order_log` VALUES ('112', '214', '14297592093886', '卖家已发货', '交易完成', '买家确认收货', '1429858790');
INSERT INTO `ecm_order_log` VALUES ('113', '216', 'seller', '等待买家付款', '买家已付款', '', '1429994306');
INSERT INTO `ecm_order_log` VALUES ('114', '216', 'seller', '买家已付款', '卖家已发货', 'ddddddd', '1429994313');
INSERT INTO `ecm_order_log` VALUES ('115', '216', 't101', '卖家已发货', '交易完成', '买家确认收货', '1429994335');
INSERT INTO `ecm_order_log` VALUES ('116', '217', 'seller', '买家已付款', '卖家已发货', 'yyyyyyy', '1429994969');
INSERT INTO `ecm_order_log` VALUES ('117', '217', 't101', '卖家已发货', '交易完成', '买家确认收货', '1429994975');
INSERT INTO `ecm_order_log` VALUES ('118', '217', 't101', '卖家已发货', '交易完成', '买家确认收货', '1429994980');
INSERT INTO `ecm_order_log` VALUES ('119', '218', 'seller', '买家已付款', '卖家已发货', '222222', '1429995067');
INSERT INTO `ecm_order_log` VALUES ('120', '218', 't101', '卖家已发货', '交易完成', '买家确认收货', '1429995085');
INSERT INTO `ecm_order_log` VALUES ('121', '219', 'seller', '买家已付款', '卖家已发货', 'dd', '1429995274');
INSERT INTO `ecm_order_log` VALUES ('122', '219', 't101', '卖家已发货', '交易完成', '买家确认收货', '1429995290');
INSERT INTO `ecm_order_log` VALUES ('123', '220', 'seller', '等待买家付款', '买家已付款', '线下付款', '1430123150');
INSERT INTO `ecm_order_log` VALUES ('124', '220', 'seller', '买家已付款', '卖家已发货', '', '1430123182');
INSERT INTO `ecm_order_log` VALUES ('125', '183', '0', '卖家已发货', '交易完成', '', '1430179984');
INSERT INTO `ecm_order_log` VALUES ('126', '232', 'admin', '等待买家付款', '交易关闭', '其他原因', '1430271835');
INSERT INTO `ecm_order_log` VALUES ('127', '231', 'admin', '等待买家付款', '交易关闭', '改选其他商品', '1430271897');
INSERT INTO `ecm_order_log` VALUES ('128', '230', 'admin', '等待买家付款', '交易关闭', '改选其他配送方式', '1430271913');
INSERT INTO `ecm_order_log` VALUES ('129', '228', 'seller', '等待买家付款', '买家已付款', '', '1430284625');
INSERT INTO `ecm_order_log` VALUES ('130', '252', 'seller', '等待买家付款', '买家已付款', '', '1430557018');
INSERT INTO `ecm_order_log` VALUES ('131', '252', 'seller', '买家已付款', '卖家已发货', '', '1430557024');
INSERT INTO `ecm_order_log` VALUES ('132', '252', 'buyer', '卖家已发货', '交易完成', '买家确认收货', '1430557084');
INSERT INTO `ecm_order_log` VALUES ('133', '257', 'seller', '买家已付款', '卖家已发货', '', '1430559128');
INSERT INTO `ecm_order_log` VALUES ('134', '257', 'buyer', '卖家已发货', '交易完成', '买家确认收货', '1430559151');
INSERT INTO `ecm_order_log` VALUES ('135', '217', '0', '卖家已发货', '交易完成', '', '1430849730');
INSERT INTO `ecm_order_log` VALUES ('136', '216', '0', '卖家已发货', '交易完成', '', '1430849730');
INSERT INTO `ecm_order_log` VALUES ('137', '218', '0', '卖家已发货', '交易完成', '', '1430849730');
INSERT INTO `ecm_order_log` VALUES ('138', '219', '0', '卖家已发货', '交易完成', '', '1430849730');
INSERT INTO `ecm_order_log` VALUES ('139', '220', '0', '卖家已发货', '交易完成', '', '1430849730');

-- ----------------------------
-- Table structure for ecm_payment
-- ----------------------------
DROP TABLE IF EXISTS `ecm_payment`;
CREATE TABLE `ecm_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(10) unsigned NOT NULL DEFAULT '0',
  `payment_code` varchar(20) NOT NULL DEFAULT '',
  `payment_name` varchar(100) NOT NULL DEFAULT '',
  `payment_desc` varchar(255) DEFAULT NULL,
  `config` text,
  `is_online` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`payment_id`),
  KEY `store_id` (`store_id`),
  KEY `payment_code` (`payment_code`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_payment
-- ----------------------------
INSERT INTO `ecm_payment` VALUES ('3', '2', 'cod', '货到付款', 'ok', '', '0', '1', '1');
INSERT INTO `ecm_payment` VALUES ('2', '2', 'bank', '银行汇款', '', '', '0', '1', '0');
INSERT INTO `ecm_payment` VALUES ('4', '2', 'alipayfree', '支付宝免签接口', '', 'a:2:{s:18:\"alipayfree_account\";s:17:\"whqwhq741@126.com\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('5', '2', 'cos', '到店付款', 'ok', '', '0', '1', '0');
INSERT INTO `ecm_payment` VALUES ('6', '2', 'wxnative', '微信扫码支付', '', 'a:5:{s:5:\"appid\";s:18:\"wxd58a555551eb4b0c\";s:5:\"mchid\";s:10:\"1220360701\";s:3:\"key\";s:32:\"7b54d71fa0db7f1f58925a26a421b7ea\";s:9:\"appsecret\";s:32:\"ef9bb711068b5060677e99a8667b6b3e\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('7', '2', 'wxjsapi', '微信jsapi支付', '', 'a:5:{s:5:\"appid\";s:18:\"wxd58a555551eb4b0c\";s:5:\"mchid\";s:10:\"1220360701\";s:3:\"key\";s:32:\"7b54d71fa0db7f1f58925a26a421b7ea\";s:9:\"appsecret\";s:32:\"ef9bb711068b5060677e99a8667b6b3e\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('8', '2', 'sft', '站内宝', '', '', '0', '1', '0');
INSERT INTO `ecm_payment` VALUES ('9', '2', 'alipay_bank', '支付宝网银', '', 'a:5:{s:14:\"alipay_account\";s:15:\"yuhui.f@163.com\";s:10:\"alipay_key\";s:3:\"111\";s:14:\"alipay_partner\";s:3:\"222\";s:14:\"alipay_service\";s:25:\"create_direct_pay_by_user\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('10', '2', 'alipaywap', '支付宝手机支付', '', 'a:4:{s:14:\"alipay_account\";s:15:\"yuhui.f@163.com\";s:10:\"alipay_key\";s:3:\"111\";s:14:\"alipay_partner\";s:3:\"222\";s:5:\"pcode\";s:0:\"\";}', '1', '0', '0');
INSERT INTO `ecm_payment` VALUES ('11', '2', 'alipay', '支付宝', '', 'a:5:{s:14:\"alipay_account\";s:18:\"dfgfgdfd.f@163.com\";s:10:\"alipay_key\";s:3:\"111\";s:14:\"alipay_partner\";s:3:\"222\";s:14:\"alipay_service\";s:21:\"trade_create_by_buyer\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('36', '2', 'alipayplat', '支付宝平台支付', '', 'a:2:{s:18:\"alipayplat_account\";s:0:\"\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('22', '55', 'wxjsapi', '微信jsapi支付', '', 'a:5:{s:5:\"appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:3:\"key\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('23', '59', 'alipay', '支付宝', '', 'a:5:{s:14:\"alipay_account\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_partner\";s:0:\"\";s:14:\"alipay_service\";s:21:\"trade_create_by_buyer\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('24', '59', 'alipaywap', '支付宝手机支付', '', 'a:4:{s:14:\"alipay_account\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_partner\";s:0:\"\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('25', '59', 'sft', '站内宝', '', '', '0', '1', '0');
INSERT INTO `ecm_payment` VALUES ('26', '59', 'wxjsapi', '微信jsapi支付', '', 'a:5:{s:5:\"appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:3:\"key\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('27', '59', 'wxnative', '微信扫码支付', '', 'a:5:{s:5:\"appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:3:\"key\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('28', '59', 'cos', '到店付款', '', '', '0', '1', '0');
INSERT INTO `ecm_payment` VALUES ('29', '59', 'cod', '货到付款', '', '', '0', '1', '0');
INSERT INTO `ecm_payment` VALUES ('30', '59', 'alipayfree', '支付宝免签接口', '', 'a:2:{s:18:\"alipayfree_account\";s:0:\"\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('31', '59', 'alipay_bank', '支付宝网银', '', 'a:5:{s:14:\"alipay_account\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_partner\";s:0:\"\";s:14:\"alipay_service\";s:25:\"create_direct_pay_by_user\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('32', '92', 'alipay', '支付宝', '23434', 'a:5:{s:14:\"alipay_account\";s:15:\"82265147@qq.com\";s:10:\"alipay_key\";s:12:\"dfgdfg345345\";s:14:\"alipay_partner\";s:16:\"2088102536219865\";s:14:\"alipay_service\";s:21:\"trade_create_by_buyer\";s:5:\"pcode\";s:1:\"1\";}', '1', '1', '1');
INSERT INTO `ecm_payment` VALUES ('33', '0', 'alipayfree', '支付宝免签接口', '支付宝免签接口', 'a:2:{s:18:\"alipayfree_account\";s:11:\"15177387895\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '1');
INSERT INTO `ecm_payment` VALUES ('34', '92', 'alipayfree', '支付宝免签接口', '快捷支付', 'a:2:{s:18:\"alipayfree_account\";s:15:\"82265147@qq.com\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '1');
INSERT INTO `ecm_payment` VALUES ('35', '168', 'cod', '货到付款', '', '', '0', '1', '0');
INSERT INTO `ecm_payment` VALUES ('45', '666', 'alipayfree', '支付宝免签接口', '', 'a:2:{s:18:\"alipayfree_account\";s:14:\"netsd8@126.com\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('46', '2', 'deposit', '预存款', '', 'a:1:{s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('47', '0', 'alipay', '支付宝', '', 'a:5:{s:14:\"alipay_account\";s:15:\"yuhui.f@163.com\";s:10:\"alipay_key\";s:3:\"111\";s:14:\"alipay_partner\";s:3:\"222\";s:14:\"alipay_service\";s:25:\"create_direct_pay_by_user\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('51', '714', 'sft', '站内宝', '', '', '0', '1', '0');
INSERT INTO `ecm_payment` VALUES ('41', '0', 'unionpay', '银联在线', '', 'a:3:{s:16:\"unionpay_account\";s:4:\"1111\";s:12:\"unionpay_key\";s:4:\"1111\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('43', '452', 'alipay', '支付宝', '2', 'a:5:{s:14:\"alipay_account\";s:1:\"2\";s:10:\"alipay_key\";s:1:\"2\";s:14:\"alipay_partner\";s:2:\"22\";s:14:\"alipay_service\";s:25:\"create_direct_pay_by_user\";s:5:\"pcode\";s:3:\"222\";}', '1', '1', '2');
INSERT INTO `ecm_payment` VALUES ('48', '666', 'wxjsapi', '微信jsapi支付', '', 'a:5:{s:5:\"appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:3:\"key\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('52', '0', 'deposit', '预存款', '', 'a:1:{s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `ecm_payment` VALUES ('53', '0', 'bank', '银行汇款', '', '', '0', '1', '0');
INSERT INTO `ecm_payment` VALUES ('54', '0', 'alipay_bank', '支付宝网银', '', 'a:5:{s:14:\"alipay_account\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_partner\";s:0:\"\";s:14:\"alipay_service\";s:25:\"create_direct_pay_by_user\";s:5:\"pcode\";s:0:\"\";}', '1', '1', '0');

-- ----------------------------
-- Table structure for ecm_recommended_goods
-- ----------------------------
DROP TABLE IF EXISTS `ecm_recommended_goods`;
CREATE TABLE `ecm_recommended_goods` (
  `recom_id` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '255',
  PRIMARY KEY (`recom_id`,`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ecm_recommended_goods
-- ----------------------------
INSERT INTO `ecm_recommended_goods` VALUES ('2', '27', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '26', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '25', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '24', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '23', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '22', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '21', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '20', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '19', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '18', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '17', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '16', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '15', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '14', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '13', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '12', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '11', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '10', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '9', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '8', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '7', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '6', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '5', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '4', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '3', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '2', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('1', '1', '255');
INSERT INTO `ecm_recommended_goods` VALUES ('2', '88', '255');

-- ----------------------------
-- Table structure for ecm_users
-- ----------------------------
DROP TABLE IF EXISTS `ecm_users`;
CREATE TABLE `ecm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) COLLATE utf8_bin NOT NULL,
  `upwd` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `tel` varchar(255) COLLATE utf8_bin NOT NULL,
  `addTime` datetime NOT NULL,
  `loginTimes` int(11) NOT NULL,
  `permission` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of ecm_users
-- ----------------------------
INSERT INTO `ecm_users` VALUES ('18', 'zhangfei', '123', 'aaa@qq.com', '15545565255', '2014-05-03 21:35:47', '0', '0');
INSERT INTO `ecm_users` VALUES ('17', 'liubei', '123', '372997384@qq.com', '18686839102', '2014-05-03 21:32:34', '1', '0');
INSERT INTO `ecm_users` VALUES ('16', 'admin', '123', 'hurricane361@163.com', '18686839102', '2014-04-25 23:02:12', '88', '1');
INSERT INTO `ecm_users` VALUES ('19', 'demo', '123', '', '', '0000-00-00 00:00:00', '0', '0');
