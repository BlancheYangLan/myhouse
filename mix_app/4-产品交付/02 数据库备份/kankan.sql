/*
Navicat MySQL Data Transfer

Source Server         : kankan
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : kankan

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2019-07-05 13:42:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_kankan_hotvideo`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_hotvideo`;
CREATE TABLE `t_kankan_hotvideo` (
  `videoId` int(10) NOT NULL,
  `makerId` int(10) DEFAULT NULL,
  `makeName` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `videoPath` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `videoType` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `videoMask` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `videoDiscribe` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `videoCollectNumber` int(10) DEFAULT NULL,
  `videoPreviewQuantity` int(10) DEFAULT NULL,
  PRIMARY KEY (`videoId`) USING BTREE,
  KEY `makerId` (`makerId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_hotvideo
-- ----------------------------
INSERT INTO `t_kankan_hotvideo` VALUES ('1', '1', '一条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '1', 'https://192.168.43.157:1443/img/hot_wanxia.jpg', '世界最深的湖-贝加尔湖世界最深的湖-贝加尔湖贝加尔湖', '2136', '3604');
INSERT INTO `t_kankan_hotvideo` VALUES ('2', '2', '两条鱼摆摆', 'https://192.168.43.157:1443/video/hot_fj.mp4', '2', 'https://192.168.43.157:1443/img/hot_xk.jpg', '即使跨过千山万水我依然不会放弃，我想知道\'你的名字', '4434', '5789');
INSERT INTO `t_kankan_hotvideo` VALUES ('3', '12', '三条鱼摆摆', 'https://192.168.43.157:1443/video/hot_starmovie.mp4', '1', 'https://192.168.43.157:1443/img/hot_nengya.jpg', '阳春三月下，路边一珠破土而出的生命', '5433', '3573');
INSERT INTO `t_kankan_hotvideo` VALUES ('4', '7', '四条鱼摆摆', 'https://192.168.43.157:1443/video/hot_starmovie.mp4', '1', 'https://192.168.43.157:1443/img/hot_xueshan.jpg', '玉龙雪山景区位于云南省丽江市玉龙纳西族自治县境内，国家5A级景区', '1212', '2360');
INSERT INTO `t_kankan_hotvideo` VALUES ('5', '22', '五条鱼摆摆', 'https://192.168.43.157:1443/video/hot_starmovie.mp4', '2', 'https://192.168.43.157:1443/img/hot_xingkong.JPG', '离家几许，见过了外面的千山万水，还是觉得家乡的星星漂亮', '5666', '2445');
INSERT INTO `t_kankan_hotvideo` VALUES ('6', '32', '六条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '1', 'https://192.168.43.157:1443/img/hot_fangzi.jpg', '安徽广德四合天堂山原生态度假山庄是竹林碧海间的心灵居所,四星级农家乐,森林旅游人家,天然氧吧。', '5656', '1227');
INSERT INTO `t_kankan_hotvideo` VALUES ('7', '3', '七条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '2', 'https://192.168.43.157:1443/img/hot_yunhai.jpg', '来过华山，才能明白这种独立山巅之上，望脚下云海似波涛翻涌，目所穷极，成片云海团团围绕。', '1214', '1222');
INSERT INTO `t_kankan_hotvideo` VALUES ('8', '99', '八条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '1', 'https://192.168.43.157:1443/img/hot_ditie.jpg', '出差回来啦，还是家乡的太阳温柔', '3754', '1122');
INSERT INTO `t_kankan_hotvideo` VALUES ('9', '18', '九条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '2', 'https://192.168.43.157:1443/img/hot_yazi.jpg', '国庆回老家休息，偷拍了几只野外的精灵', '9922', '2424');
INSERT INTO `t_kankan_hotvideo` VALUES ('10', '55', '十条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '1', 'https://192.168.43.157:1443/img/hot_leiyun.jpg', '在下落月门魔道子，敢问何方道友在此渡劫', '1321', '1278');
INSERT INTO `t_kankan_hotvideo` VALUES ('11', '23', '十一条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '2', 'https://192.168.43.157:1443/img/hot_titian.jpg', '梯田是在在丘陵山坡地上沿等高线方向修筑的条状阶台式或波浪式断面的田地。', '1211', '3551');
INSERT INTO `t_kankan_hotvideo` VALUES ('12', '33', '十二条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '2', 'https://192.168.43.157:1443/img/hot_xihu.jpg', '西湖,春来“花满苏堤柳满烟”，夏有“红衣绿扇映清波”，秋是“一色湖光万顷秋”', '3545', '8711');
INSERT INTO `t_kankan_hotvideo` VALUES ('13', '16', '十三条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '1', 'https://192.168.43.157:1443/img/hot_daomubiji.jpg', '《盗墓笔记》为什么张起灵可以长寿，张启山不可以', '3321', '2132');
INSERT INTO `t_kankan_hotvideo` VALUES ('14', '19', '十四条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '1', 'https://192.168.43.157:1443/img/hot_maifang.jpg', '李晨六千万四合院，张若昀九千万四合院，网友：真的仿的差距太大', '4421', '2123');
INSERT INTO `t_kankan_hotvideo` VALUES ('16', '78', '十六条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '1', 'https://192.168.43.157:1443/img/hot_huangma.jpg', '19岁！1.26亿！新C罗一夜刷新116年纪录 皇马曼城集体陪跑', '1231', '8944');
INSERT INTO `t_kankan_hotvideo` VALUES ('17', '456', '十七条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '2', 'https://192.168.43.157:1443/img/hot_leshi.jpg', '乐视体育被吊销、乐视影业股权被拍卖…“坑”里的张艺谋刘涛王思聪还好吗？\r\n金融投资报 2019-07-04 19:01:31', '3211', '2121');
INSERT INTO `t_kankan_hotvideo` VALUES ('18', '41', '十八条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '1', 'https://192.168.43.157:1443/img/hot_myword.jpg', '160亿贱卖了《我的世界》,游戏价值千亿，创始人过得怎么样？', '2132', '1231');
INSERT INTO `t_kankan_hotvideo` VALUES ('19', '123', '十九条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '1', 'https://192.168.43.157:1443/img/hot_paoche.jpg', '别说你买不起跑车，这三款平民跑车，你会选择哪一辆？', '4541', '2111');
INSERT INTO `t_kankan_hotvideo` VALUES ('20', '71', '二十条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '2', 'https://192.168.43.157:1443/img/hot_xiaomi.jpg', '小米奖励雷军99亿打破世界纪录？不久，阿里巴巴拿出了164亿……', '1231', '6545');
INSERT INTO `t_kankan_hotvideo` VALUES ('21', '62', '二十一条鱼摆摆', 'https://192.168.43.157:1443/video/hot_water.mp4', '1', 'https://192.168.43.157:1443/img/hot_dizheng.jpg', '为啥余震这么多？四川省地震局回答了', '3211', '5454');

-- ----------------------------
-- Table structure for `t_kankan_movie`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_movie`;
CREATE TABLE `t_kankan_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `movie_img` varchar(50) DEFAULT NULL,
  `movie_name` varchar(50) DEFAULT NULL,
  `movie_introduction` varchar(255) DEFAULT NULL,
  `movie_vip_id` int(11) DEFAULT NULL,
  `movie_plays` int(255) DEFAULT NULL,
  `movie_trailers_id` int(11) DEFAULT NULL,
  `movie_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `ids` (`movie_vip_id`) USING BTREE,
  KEY `ics` (`movie_trailers_id`) USING BTREE,
  CONSTRAINT `ics` FOREIGN KEY (`movie_trailers_id`) REFERENCES `t_kankan_trailers` (`trailers_id`),
  CONSTRAINT `ids` FOREIGN KEY (`movie_vip_id`) REFERENCES `t_kankan_vip_icon` (`vip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_movie
-- ----------------------------
INSERT INTO `t_kankan_movie` VALUES ('1', '2', 'movie_jq.jpg', '惊奇队长', '漫威超强女英雄SLAY全宇宙', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('2', '2', 'movie_xm.jpg', '夏目友人帐', '夏目再遇妖怪超奇妙', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('3', '2', 'movie_th.jpg', '头号玩家·全网独播', '斯皮尔伯格创造酷炫未来', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('4', '2', 'movie_hw.jpg', '轰天炮4', '够帅！李连杰飞踢躲子弹', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('5', '2', 'movie_xy.jpg', '下一任：前任', '品一品郑凯渣男撩妹高招', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('6', '2', 'movie_zy.jpg', '捉妖记2', '小怪物胡巴重出江湖', '0', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('7', '2', 'movie_ds.jpg', '的士速递5', '法国喜剧经典重启爆笑发车', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('8', '2', 'movie_mn.jpg', '木乃伊3', '吴京李连杰同门相杀精彩对打', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('9', '2', 'movie_qb.jpg', '拳霸2', '托尼·贾醉拳大战鳄鱼', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('10', '2', 'movie_dy.jpg', '毒液·致命守护者', '漫威暗黑英雄霸气登场', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('11', '2', 'movie_yd.jpg', '侠盗联盟', '刘德华舒淇飞天入海跨国盗宝', '0', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('12', '2', 'movie_ft.jpg', '反贪风暴4·新片热播', '古天乐卧底入狱遭暴打', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('13', '2', 'movie_yw.jpg', '一吻定情', '甜！林允一吻倾心王大陆', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('14', '2', 'movie_yw.jpg', '驯龙高手3·全网首播', '没牙仔弃女友选了小嗝嗝', '1', '5', '1', 'mov_bbb.mp4');
INSERT INTO `t_kankan_movie` VALUES ('15', '2', 'movie_am.jpg', '澳门风云3', '周润发刘德华上演王牌赌神', '0', '5', '1', 'mov_bbb.mp4');

-- ----------------------------
-- Table structure for `t_kankan_png`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_png`;
CREATE TABLE `t_kankan_png` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tvseries_png` varchar(255) DEFAULT NULL,
  `tvseries_describe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_png
-- ----------------------------
INSERT INTO `t_kankan_png` VALUES ('1', 'd1.png', '陈情令');
INSERT INTO `t_kankan_png` VALUES ('2', 'd2.png', '武侠必看');
INSERT INTO `t_kankan_png` VALUES ('3', 'd3.png', '豆瓣高分剧');
INSERT INTO `t_kankan_png` VALUES ('4', 'd4.png', '网络剧');
INSERT INTO `t_kankan_png` VALUES ('5', 'd5.png', '火锅剧');
INSERT INTO `t_kankan_png` VALUES ('6', 'd6.png', '原著小说');
INSERT INTO `t_kankan_png` VALUES ('7', 'd7.png', '甜宠剧场');
INSERT INTO `t_kankan_png` VALUES ('8', 'd8.png', '顶级美剧');
INSERT INTO `t_kankan_png` VALUES ('9', 'd9.png', '慢时光剧场');

-- ----------------------------
-- Table structure for `t_kankan_shuffling`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_shuffling`;
CREATE TABLE `t_kankan_shuffling` (
  `shuffling_id` int(11) NOT NULL AUTO_INCREMENT,
  `shuffling_img` varchar(60) DEFAULT NULL,
  `shuffling_describe` varchar(255) DEFAULT NULL,
  `shuffling_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shuffling_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_shuffling
-- ----------------------------
INSERT INTO `t_kankan_shuffling` VALUES ('1', 'lb1.jpg', '【明日之子】开口跪！医学少女《尘埃》惊艳华晨宇', null);
INSERT INTO `t_kankan_shuffling` VALUES ('2', 'lb2.jpg', '【秦岭神树·更新】无邪张起灵吴胖子秘境探险', null);
INSERT INTO `t_kankan_shuffling` VALUES ('3', 'lb3.jpg', '【斗罗大陆·更新】浑身解数！唐山大战大力王', null);
INSERT INTO `t_kankan_shuffling` VALUES ('4', 'lb4.jpg', '【带爸留学☀热播】孙红雷亲自教授曾舜晞谈恋爱', null);

-- ----------------------------
-- Table structure for `t_kankan_trailers`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_trailers`;
CREATE TABLE `t_kankan_trailers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trailers_id` int(11) DEFAULT NULL,
  `trailers_img` varchar(50) DEFAULT NULL,
  `trailers_describe` varchar(50) DEFAULT NULL,
  `trailers_url` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `trailers_id` (`trailers_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_trailers
-- ----------------------------
INSERT INTO `t_kankan_trailers` VALUES ('1', '1', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('2', '2', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('3', '3', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('4', '1', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('5', '1', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('6', '1', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('7', '1', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('8', '1', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('9', '1', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('10', '2', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('11', '2', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('12', '2', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('13', '2', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('14', '2', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('15', '2', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('16', '3', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('17', '3', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('18', '3', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('19', '3', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('20', '3', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('21', '4', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('22', '4', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('23', '4', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('24', '4', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('25', '4', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('26', '4', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('27', '4', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('28', '5', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('29', '5', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('30', '5', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('31', '5', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('32', '5', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('33', '5', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('34', '6', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('35', '6', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('36', '6', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('37', '6', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('38', '6', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('39', '6', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('40', '6', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('41', '7', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('42', '7', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('43', '7', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('44', '7', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('45', '7', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('46', '7', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('47', '7', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('48', '8', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('49', '8', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('50', '8', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('51', '8', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('52', '8', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('53', '8', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('54', '8', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('55', '8', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('56', '8', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('57', '9', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('58', '9', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('59', '9', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('60', '9', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('61', '9', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('62', '9', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('63', '9', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('64', '10', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('65', '10', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('66', '10', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('67', '10', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('68', '10', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('69', '10', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('70', '10', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('71', '11', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('72', '11', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('73', '11', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('74', '11', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('75', '11', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('76', '11', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('77', '11', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('78', '12', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('79', '12', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('80', '12', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('81', '12', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('82', '12', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('83', '12', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('84', '12', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('85', '13', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('86', '3', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('87', '13', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('88', '13', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('89', '13', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('90', '13', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('91', '13', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('92', '13', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('93', '14', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('94', '14', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('95', '14', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('96', '14', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('97', '15', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('98', '15', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('99', '15', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('100', '15', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('101', '15', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('102', '15', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('103', '14', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('104', '14', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');
INSERT INTO `t_kankan_trailers` VALUES ('105', '12', 'er.jpg', '《秦岭神树》揭秘麒麟血：比花露水还管用的麒麟竭！', 'mov_bbb.mp4');

-- ----------------------------
-- Table structure for `t_kankan_tvseries`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_tvseries`;
CREATE TABLE `t_kankan_tvseries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tvseries_id` int(11) DEFAULT NULL,
  `tvseries_img` varchar(50) DEFAULT NULL,
  `tvseries_name` varchar(50) DEFAULT NULL,
  `tvseries_introduction` varchar(255) DEFAULT NULL,
  `tvseries_score` float(4,1) DEFAULT NULL,
  `tvseries_vip_id` int(11) DEFAULT NULL,
  `tvseries_blues` int(4) DEFAULT NULL,
  `tvseries_plays` int(255) DEFAULT NULL,
  `tvseries_show` varchar(50) DEFAULT NULL,
  `tvseries_blues_id` int(11) DEFAULT NULL,
  `tvseries_trailers_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `vipID` (`tvseries_vip_id`) USING BTREE,
  KEY `bluesID` (`tvseries_blues_id`) USING BTREE,
  KEY `trailersID` (`tvseries_trailers_id`) USING BTREE,
  CONSTRAINT `bluesID` FOREIGN KEY (`tvseries_blues_id`) REFERENCES `t_kankan_tvseries_blues` (`blues_id`),
  CONSTRAINT `trailersID` FOREIGN KEY (`tvseries_trailers_id`) REFERENCES `t_kankan_trailers` (`trailers_id`),
  CONSTRAINT `vipID` FOREIGN KEY (`tvseries_vip_id`) REFERENCES `t_kankan_vip_icon` (`vip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_tvseries
-- ----------------------------
INSERT INTO `t_kankan_tvseries` VALUES ('1', '1', 'tvseries_tx.jpg', '听雪楼', '人中龙凤结局圆满！', '7.4', '1', '55', '21', '会员看全集', '1', '1');
INSERT INTO `t_kankan_tvseries` VALUES ('2', '1', 'tvseries.jpg', '秦岭神树[更新 会员先看]', '二月红徒弟“镜子迷宫”遇袭', '7.8', '1', '32', '21', '每周四五六20点更新2集，会员始终多看6集', '1', '1');
INSERT INTO `t_kankan_tvseries` VALUES ('3', '1', 'tvseries_mh.jpg', '美好时光[会员抢先看]', '易遥被唐小米打流产？', '7.5', '1', '6', '1', '会员每晚24点跟播卫视 非会员次日更新', '1', '1');
INSERT INTO `t_kankan_tvseries` VALUES ('4', '1', 'tvseries_db.jpg', '带爸留学[会员抢先看]', '泪崩！孙红雷缅怀前妻', '7.2', '1', '38', '17', '会员每晚22点跟播卫视，免费次日更新', '1', '1');
INSERT INTO `t_kankan_tvseries` VALUES ('5', '1', 'tvseries_sq.jpg', '神犬小七3[更新]', '姜潮被绑架小七及时救命！', '7.1', '1', '45', '1', '周一至周四20点更新2集，VIP抢先看8集', '1', '2');
INSERT INTO `t_kankan_tvseries` VALUES ('6', '1', 'tvseries_sn.jpg', '少年派[全集]', '妙妙三一开启大学旅程！', '8.5', '1', '41', '19', '限时免费', '1', '2');
INSERT INTO `t_kankan_tvseries` VALUES ('7', '1', 'tvseries_fy.jpg', '凤弈[会员看全集]', '魏广被迫重回战场', '7.4', '1', '41', '11', '每周二三四20点更新2集，会员看全集', '1', '2');
INSERT INTO `t_kankan_tvseries` VALUES ('8', '1', 'tvseries_gh.jpg', '共和国血脉', '热血励志战地爱情史诗', '7.6', '0', '35', '5', '每日24点跟播卫视/更新至35集', '2', '2');
INSERT INTO `t_kankan_tvseries` VALUES ('9', '1', 'tvseries_wx.jpg', '我心深触[会员抢先看]', '韩冰向逸飞坦言韩雪的存在', '7.7', '1', '24', '1', '每周三四五20点更新2集，会员提前看下周', '2', '3');
INSERT INTO `t_kankan_tvseries` VALUES ('10', '1', 'tvseries_cc.jpg', '匆匆那年[更新]', '陈寻方茴跨年夜烟火下拥吻', '8.9', '0', '22', '1', '每周四每周五20点更新2集，会员多看4集', '2', '3');
INSERT INTO `t_kankan_tvseries` VALUES ('11', '1', 'tvseries_jl.jpg', '绝路逢生[更新]', '杨烁被特务包围激烈枪战', '7.3', '0', '14', '1', '每晚24点跟播卫视/更新至14', '2', '3');
INSERT INTO `t_kankan_tvseries` VALUES ('12', '1', 'tvseries_sh.jpg', '沙海[限时免费]', '吴磊秦昊大漠决斗神秘生物', '8.3', '1', '52', '60', '会员看全集', '2', '3');
INSERT INTO `t_kankan_tvseries` VALUES ('13', '1', 'tvseries_cq.jpg', '陈情令[会员抢先看]', '玩家魏无羡g高阶兵器武力升级', '7.4', '1', '14', '5', '加更！每周一二三20点更新2集 会员始终多看4集', '2', '3');

-- ----------------------------
-- Table structure for `t_kankan_tvseries_blues`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_tvseries_blues`;
CREATE TABLE `t_kankan_tvseries_blues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blues_id` int(11) DEFAULT NULL,
  `blues_name` varchar(50) DEFAULT NULL,
  `blues_url` varchar(255) DEFAULT NULL,
  `blues_blue` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `blues_id` (`blues_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_tvseries_blues
-- ----------------------------
INSERT INTO `t_kankan_tvseries_blues` VALUES ('1', '1', '听雪楼', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('2', '1', '听雪楼', 'mov_bbb.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('4', '1', '听雪楼', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('5', '1', '听雪楼', 'mov_bbb.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('6', '1', '听雪楼', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('7', '1', '听雪楼', 'mov_bbb.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('8', '1', '听雪楼', 'hot_water.mp4', '7');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('9', '1', '听雪楼', 'mov_bbb.mp4', '8');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('10', '1', '听雪楼', 'hot_water.mp4', '9');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('11', '1', '听雪楼', 'mov_bbb.mp4', '10');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('12', '1', '听雪楼', 'hot_water.mp4', '11');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('13', '1', '听雪楼', 'mov_bbb.mp4', '12');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('14', '2', '沙海', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('15', '2', '沙海', 'mov_bbb.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('16', '2', '沙海', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('17', '2', '沙海', 'mov_bbb.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('18', '2', '沙海', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('19', '2', '沙海', 'mov_bbb.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('20', '2', '沙海', 'hot_water.mp4', '7');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('21', '2', '沙海', 'mov_bbb.mp4', '8');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('22', '2', '沙海', 'hot_water.mp4', '9');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('23', '2', '沙海', 'mov_bbb.mp4', '10');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('24', '2', '沙海', 'hot_water.mp4', '11');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('25', '2', '沙海', 'mov_bbb.mp4', '12');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('26', '2', '沙海', 'hot_water.mp4', '13');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('27', '3', '陈情令', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('28', '3', '陈情令', 'hot_water.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('29', '3', '陈情令', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('30', '3', '陈情令', 'hot_water.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('31', '3', '陈情令', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('32', '4', '陈情令', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('33', '4', '陈情令', 'hot_water.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('34', '4', '陈情令', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('35', '4', '陈情令', 'hot_water.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('36', '4', '陈情令', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('37', '4', '陈情令', 'hot_water.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('38', '5', '陈情令', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('39', '5', '陈情令', 'hot_water.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('40', '5', '陈情令', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('41', '5', '陈情令', 'hot_water.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('42', '5', '陈情令', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('43', '5', '陈情令', 'hot_water.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('44', '5', '陈情令', 'hot_water.mp4', '7');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('45', '5', '陈情令', 'hot_water.mp4', '8');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('46', '6', '陈情令', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('47', '6', '陈情令', 'hot_water.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('48', '6', '陈情令', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('49', '6', '陈情令', 'hot_water.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('50', '6', '陈情令', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('51', '6', '陈情令', 'hot_water.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('52', '6', '陈情令', 'hot_water.mp4', '7');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('53', '7', '陈情令', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('54', '7', '陈情令', 'hot_water.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('55', '7', '陈情令', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('56', '7', '陈情令', 'hot_water.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('57', '7', '陈情令', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('58', '7', '陈情令', 'hot_water.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('59', '8', '陈情令', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('60', '8', '陈情令', 'hot_water.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('61', '8', '陈情令', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('62', '8', '陈情令', 'hot_water.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('63', '8', '陈情令', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('64', '8', '陈情令', 'hot_water.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('65', '8', '陈情令', 'hot_water.mp4', '7');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('66', '8', '陈情令', 'hot_water.mp4', '8');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('67', '9', '陈情令', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('68', '9', '陈情令', 'hot_water.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('69', '9', '陈情令', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('70', '9', '陈情令', 'hot_water.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('71', '9', '陈情令', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('72', '9', '陈情令', 'hot_water.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('73', '9', '陈情令', 'hot_water.mp4', '7');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('74', '10', '陈情令', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('75', '10', '陈情令', 'hot_water.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('76', '10', '陈情令', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('77', '10', '陈情令', 'hot_water.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('78', '10', '陈情令', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('79', '10', '陈情令', 'hot_water.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('80', '10', '陈情令', 'hot_water.mp4', '7');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('81', '11', '陈情令', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('82', '11', '陈情令', 'hot_water.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('83', '11', '陈情令', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('84', '11', '陈情令', 'hot_water.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('85', '11', '陈情令', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('86', '11', '陈情令', 'hot_water.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('87', '11', '陈情令', 'hot_water.mp4', '7');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('88', '11', '陈情令', 'hot_water.mp4', '8');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('89', '12', '陈情令', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('90', '12', '陈情令', 'hot_water.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('91', '12', '陈情令', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('92', '12', '陈情令', 'hot_water.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('93', '12', '陈情令', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('94', '12', '陈情令', 'hot_water.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('95', '13', '陈情令', 'hot_water.mp4', '1');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('96', '13', '陈情令', 'hot_water.mp4', '2');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('97', '13', '陈情令', 'hot_water.mp4', '3');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('98', '13', '陈情令', 'hot_water.mp4', '4');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('99', '13', '陈情令', 'hot_water.mp4', '5');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('100', '13', '陈情令', 'hot_water.mp4', '6');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('101', '13', '陈情令', 'hot_water.mp4', '7');
INSERT INTO `t_kankan_tvseries_blues` VALUES ('102', '13', '陈情令', 'hot_water.mp4', '8');

-- ----------------------------
-- Table structure for `t_kankan_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_user`;
CREATE TABLE `t_kankan_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_number` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `user_name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `user_password` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `user_icon` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `user_type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_vouchers` int(4) DEFAULT '0',
  `user_sex` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `user_data` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `user_address` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `user_signature` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_user
-- ----------------------------
INSERT INTO `t_kankan_user` VALUES ('12', '13456879455', '张三', 'e10adc3949ba59abbe56e057f20f883e', 'https://192.168.43.157:1443/img/touxiang1.jpg', '0', '0', '男', '2010-01-01', '天津市 河东区', '1235665');
INSERT INTO `t_kankan_user` VALUES ('15', '13452662543', '李四', 'e10adc3949ba59abbe56e057f20f883e', 'https://192.168.43.157:1443/img/touxiang.jpg', '1', '0', null, null, null, null);
INSERT INTO `t_kankan_user` VALUES ('27', '13452662588', '王五', 'e10adc3949ba59abbe56e057f20f883e', 'https://192.168.43.157:1443/img/touxiang1.jpg', '2', '0', null, null, null, null);
INSERT INTO `t_kankan_user` VALUES ('28', '17256548521', '汪爱云', 'e10adc3949ba59abbe56e057f20f883e', 'https://192.168.43.157:1443/img/touxiang.jpg', '3', '0', null, null, null, null);
INSERT INTO `t_kankan_user` VALUES ('29', '13549848565', 'did', 'e10adc3949ba59abbe56e057f20f883e', 'https://192.168.43.175:1443/img/moren.png', null, '0', null, null, null, null);

-- ----------------------------
-- Table structure for `t_kankan_uservip`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_uservip`;
CREATE TABLE `t_kankan_uservip` (
  `userVip_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_number` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `vipStartDate` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `vipEndDate` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`userVip_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_uservip
-- ----------------------------
INSERT INTO `t_kankan_uservip` VALUES ('1', '13456879455', '2019-07-05', '2020-07-05');
INSERT INTO `t_kankan_uservip` VALUES ('2', '17256548521', null, null);

-- ----------------------------
-- Table structure for `t_kankan_vip`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_vip`;
CREATE TABLE `t_kankan_vip` (
  `vip_id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_service_type` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `price` int(4) DEFAULT NULL,
  `describe` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`vip_id`) USING BTREE,
  KEY `vip_service_type` (`vip_service_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_vip
-- ----------------------------
INSERT INTO `t_kankan_vip` VALUES ('1', '年度会员', '185', '24555');
INSERT INTO `t_kankan_vip` VALUES ('2', '季度会员', '50', 'klfjgjj');
INSERT INTO `t_kankan_vip` VALUES ('3', '包月会员', '20', '544');

-- ----------------------------
-- Table structure for `t_kankan_vipvideo`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_vipvideo`;
CREATE TABLE `t_kankan_vipvideo` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_name` varchar(255) NOT NULL,
  `video_px` varchar(255) NOT NULL,
  `video_dq` varchar(255) NOT NULL,
  `video_lx` varchar(255) NOT NULL,
  `video_lj` varchar(255) NOT NULL,
  `video_sp` varchar(255) NOT NULL,
  `video_jj` varchar(255) NOT NULL,
  PRIMARY KEY (`video_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_vipvideo
-- ----------------------------
INSERT INTO `t_kankan_vipvideo` VALUES ('1', '猫与猫奴', '1011', '2021', '3031', '/img/1.jpg', '/video/mov.mp4', '阿斯顿发送到');
INSERT INTO `t_kankan_vipvideo` VALUES ('2', '独享世界', '1012', '2021', '3032', '/img/2.jpg', '/video/movie.mp4', '打算');
INSERT INTO `t_kankan_vipvideo` VALUES ('4', '高楼大厦', '1011', '2022', '3033', '/img/3.jpg', '/video/gougou.mp4', '阿斯顿发送到');
INSERT INTO `t_kankan_vipvideo` VALUES ('6', '灵境', '1012', '2022', '3031', '/img/4.jpg', '/video/movie.mp4', '按时发散');
INSERT INTO `t_kankan_vipvideo` VALUES ('7', '我的绿帽子', '1011', '2021', '3033', '/img/5.jpg', '/video/mov.mp4', '案发生的');
INSERT INTO `t_kankan_vipvideo` VALUES ('8', '五彩缤纷', '1012', '2023', '3034', '/img/6.jpg', '/video/gougou.mp4', '阿发');
INSERT INTO `t_kankan_vipvideo` VALUES ('9', '我的世界', '1012', '2024', '3032', '/img/7.jpg', '/video/mov.mp4', '撒旦法');
INSERT INTO `t_kankan_vipvideo` VALUES ('10', '先有蛋？', '1011', '2021', '3031', '/img/8.jpg', '/video/movie.mp4', '的实干为');
INSERT INTO `t_kankan_vipvideo` VALUES ('11', '猫的朋友', '1011', '2022', '3034', '/img/9.jpg', '/video/gougou.mp4', '千万人');
INSERT INTO `t_kankan_vipvideo` VALUES ('12', '孤单的我', '1012', '2023', '3033', '/img/10.jpg', '/video/movie.mp4', '沃尔夫为');
INSERT INTO `t_kankan_vipvideo` VALUES ('13', '明天会更好', '1011', '2024', '3032', '/img/11.jpg', '/video/mov.mp4', '发生的恢复健康绝大部分看电视剧吧');

-- ----------------------------
-- Table structure for `t_kankan_vip_icon`
-- ----------------------------
DROP TABLE IF EXISTS `t_kankan_vip_icon`;
CREATE TABLE `t_kankan_vip_icon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_id` int(11) DEFAULT NULL,
  `vip_jpg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `vip_id` (`vip_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kankan_vip_icon
-- ----------------------------
INSERT INTO `t_kankan_vip_icon` VALUES ('1', '1', 'Vip.jpg');
INSERT INTO `t_kankan_vip_icon` VALUES ('2', '0', null);

-- ----------------------------
-- Table structure for `t_test_movie`
-- ----------------------------
DROP TABLE IF EXISTS `t_test_movie`;
CREATE TABLE `t_test_movie` (
  `movie_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(50) DEFAULT NULL,
  `movie_type` varchar(20) DEFAULT NULL,
  `movie_year` year(4) DEFAULT NULL,
  `movie_introduction` varchar(1000) DEFAULT NULL,
  `movie_director` varchar(50) DEFAULT NULL,
  `movie_picture` varchar(100) DEFAULT NULL,
  `movie_url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_test_movie
-- ----------------------------
INSERT INTO `t_test_movie` VALUES ('0000000001', '一个母亲的复仇', '犯罪', '2019', '本片改编自震惊印度的“德里黑公交案”。艾莉亚在一次派对活动后遭到强暴，面对凿凿证据，四名罪犯却被法庭判为无罪。艾莉亚的继母，戴维琪伤心欲绝，在走投无路后愤然决定亲手为女儿寻求正义。一场高能高智商的复仇大戏拉开序幕。正义到不了的地方，还有母亲！', '拉维·德耶瓦尔', '/img/yp1.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000002', '智深传2', '动作', '2019', '高衙内为得到林娘子设连环计陷害林冲，一面野猪林要杀林冲，一面又故意让林娘子得知消息支开鲁智深，可谓阴谋算尽。鲁智深本受林冲托付保护林娘子，林冲有难，只得想办法先救了林冲，再赶回来护着林娘子。可惜林冲对朝廷还抱有希望，执意去沧州受刑后重新做人，鲁智深无奈只得护送林冲到沧州。鲁智深送完林冲便马不停蹄赶回京城，哪知道高衙内早已布下重重机关，一方面试图阻止鲁智深回到京城，另一方面又对孤生一人的林娘子威逼利诱步步紧逼。鲁智深回途中遇到赏金杀手已然猜到高衙内的奸计。鲁智深一路赶回来，可谓是过五关斩六将，一路杀到京城，可惜还是来晚。林娘子为保贞洁自缢而死，鲁智深懊悔不已，为林娘子报仇雪恨之后，奔赴沧州而去。', '王厦', '/img/yp6.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000003', '虎口惊魂', '动作', '2019', '学者钱诚从虎口之中意外救下老同学瑶华，瑶华却因此陷入更深的情感危机并丧失自由，当钱诚意识到瑶华的困境，不顾危险将其营救出来，并且为之带来希望。故事中，钱诚善良勇敢，对感情坚定不移，对朋友满怀热忱。瑶华在极端艰苦的生活条件下，依然热爱生活，保持着初心。中华儿女的生活热情在莽莽雪原中，点亮了希望的星火。在朋友的帮助下，瑶华终于走出了生活的虎口。主角们经历重重困难与危险，终于走出了感情的困惑和绝望，获得新生。故事弘扬了真善美的价值观，善良的人重获新生，反派自食恶果。描绘了普通群众的善良和同情心，不同身份的人，面对他人的苦难，纷纷伸出援助之手。表现了中华民众的博爱精神，以及正义必将战胜邪恶的美好愿景。 ', '宛峰', '/img/yp2.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000004', '唐少女汐彦', '网络大电影', '2019', '某日，西域进献给唐皇的佛祖舍利不翼而飞，唐皇将此案交给刚正不阿又英俊潇洒的袁大人调查。袁大人刚得到消息，就听闻一位叫汐彦的少女亲来投案。袁大人在审问少女汐彦的过程中，发现此女跟此案并无多少干系。而少女汐彦亲来投案的缘由，竟是因为倾慕袁大人已久。这让刚正不阿的袁大人苦恼不已，就在袁大人被少女汐彦深深吸引的同时，袁大人发现自己好友竟亦恋慕汐彦已久。', ' 高翊浚', '/img/yp5.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000005', '最后的勇士', '动作', '2019', '伊万是个混日子的流浪男，经常假装自己会魔法，虚张声势弄虚作假帮助客户解 决问题以牟取暴利。某天他忽然去到一个可以让魔法成真的陌生地方。这个地方被称为贝罗里奥，这里居住着俄罗斯民间史诗里的人物。 伊万很惊讶地认识了科西切、芭芭雅嘎、Vodaynoy和Vasilisa。由于某种原因，他们都确信伊万是伊里亚·穆罗梅茨失去的儿子，认为他是拯救贝罗里奥的人。在这个童话世界里，一切都是颠倒过来的：善良战胜邪恶都是曾经的事，并且一个个的战士开始消失，而伊万恰好是最后一位将世界恢复平衡秩序的战士……', ' 戴米特里·迪亚琴科', '/img/yp4.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000006', '未来的你', '青春', '2019', '影片讲述了过气音乐才子苏哲和小镇女摄影师小米通过神秘的心灵感应，共享听觉和触觉，并跨越时空的爱情故事。两个受伤的人彼此依偎，互相安慰，慢慢爱上对方，可决定相约见面后，却发现二人彼此不在同一个时空，过去的她和未来的他该如何跨越时间和空间继续相爱？', ' 曾张粤紫', '/img/yp3.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000007', '噬魂剑', '惊悚', '2019', '清苑境内江湖第一大邪派青月堂突然一夜惨造灭门屠杀，堂主雷烈更是被吸成干尸，引起整个江湖的轰动，江湖传言“魔兵重临，冰魄噬魂；战狂梵天，灭世至尊”都说是魔兵噬魂剑所为。 　　江湖突然有消失二十年的噬魂剑传言，收到此传言，燕风清来到清苑寻找变二十年前和噬魂剑一起失踪的师兄下落，寻找过程中遇到遇到夜晚会变白发的江湖女贼玄晴，带着面具的神秘人，以及西北三雄和他们的主人曹无觞，几人之间展开噬魂剑的激烈争夺，最终有人以生命付出代价……', '李飞', '/img/yp7.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000008', '追龙', '动作', '2018', ' 电影讲述了香港现代史上两大著名狠角色大毒枭跛豪、五亿探长雷洛的传奇故事。 上世纪六七十年代，香港由英国殖民，权势腐败、社会混乱。1963年，穷困潦倒的青年阿豪偷渡至香港，抱着“生死有命、富贵在天”之心决意一搏人生。阿豪带着几个兄弟，从九龙城寨底层开始一路刀刃舔血，爬上香港毒品霸主之位，一手掌控香港十大黑帮，江湖人称“跛豪”。而雷洛则从一位普通探长一步步爬上华人总探长高位，统领全香港三万警察，手握香港治安“潜规则”。为垄断香港黄赌毒三大经济产业，跛豪与雷洛结拜为兄弟，两人一黑一白两手遮天，权势滔天，家财亿万，独霸香港岛……', '王晶', '/img/yp8.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000009', '道士下山', '动作', '2018', '不谙世事的小道士，因为闹粮荒离开道观下了山，一脚踏入了光怪陆离的万丈红尘之中，他以一颗赤子之心面对一切，才发现这个世界与他的想象有多么不同，他终于明白了临下山前师傅说过的一句话：“不择手段非豪杰，不改初衷真英雄” 。', ' 陈凯歌', '/img/yp9.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000010', '死亡飞车', '枪战', '2017', '本片翻拍自1975年的那部由史泰龙主演的《死亡飞车》。故事的背景设定在2020年的纽约，那时美国已人满为患，监狱里更是拥挤不堪。各式各样的罪犯聚集在监狱里，都翘首以待\"死亡飞车\"比赛的进行，这是世界上规模最大，同时也是最残忍的汽车比赛。你可以用各种喷火器、枪支、手榴弹武装自己的车子，同时也必须躲过其他罪犯对你有组织的枪击，直至冲过终点线。主人公杰森参加这种比赛已经有八年了，还剩六个星期他就可以出狱与家人团聚了。然而这时他被监狱的主管要求必须再进行一场比赛。为了赢得自由，杰森不得不答应下来，参与到这场死亡车赛之中.......', '保罗·安德森', '/img/yp10.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000011', '夏洛特烦恼', '青春', '2018', '昔日校花秋雅的婚礼正在隆重举行，学生时代暗恋秋雅的夏洛看着周围事业成功的老同学，心中泛起酸味，借着七分醉意大闹婚礼现场，甚至惹得妻子马冬梅现场发飙，而他发泄过后却在马桶上睡着了。梦里他重回校园，追求到他心爱的女孩、让失望的母亲重展笑颜、甚至成为无所不能的流行乐坛巨星…… 醉生梦死中，他发现身边人都在利用自己，只有马冬梅是最值得珍惜的', '彭大魔', '/img/yp11.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000012', '英伦对决', '惊悚', '2015', '关玉明和女儿小凡在英国伦敦过着相依为命的日子。关玉明经营着一间小小的餐馆，老老实实的靠着辛勤劳作养活家庭，从未有过想要僭越法律或是道德的念头。然而，上天并不眷顾这个善良的男人，在一场恐怖袭击中，小凡不幸成为了受害者之一。让关玉明无法接受的除了女儿的死之外，还有英国政府对此次事件的轻视和不作为。政府高官莱姆出现在了关玉明的视野之中，他坚信莱姆和恐怖组织以及事件的真相有着不可分割的联系。既然法律和正义无法还关玉明一个公道，关玉明决定用自己的力量来为女儿复仇。马丁·坎贝尔', '帕特里克·休斯', '/img/yp12.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000013', '门徒', '犯罪', '2015', ' 阿昆长年垄断了海洛因市场，虽视追随8年多的阿力为接班人，但阿昆一向小心行事，从没透露过货仓及加工场的位置。阿昆打算把自己的生意全权交由阿力打理，阿力渐渐知道了更多毒品市场中的秘密。8年来阿力以卧底的身份搜集毒贩的全部资料，但他对吸毒者阿芬投入了感情，阿芬却令他对自己边缘人的身份感到更加迷惘。斗志斗勇的过程中，阿力最终取得了阿昆的完全信任，8年来的追踪，也有了终结。', ' 尔冬升', '/img/yp13.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000014', '敢死队', '枪战', '2018', '巴尼·罗斯带领敢死队的老伙计李、贡纳等人驾驶直升机劫持火车，救出了被囚禁的用刀高手医生。经过短暂的休整，他们奔赴索马里潜入某倒卖军火组织的老巢中执行任务，谁知巴尼发现该组织老大竟然是当年本该死去的敢死队战友康拉德·斯通班克。一番激烈的交火过后，斯通班克成功逃脱，而敢死队方面则损失惨重。此役过后，不仅军方和敢死队藏着一股怒火，连斯通班克也被彻底激怒，最强的硬汉迎来生死对决。', '帕特里克·休斯', '/img/yp14.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000015', '次元警察', '犯罪', '2016', '一个三维代理的并行三维是可以抓住犯罪从不同的世界。当她抓到犯罪前，她的伙伴YUI就会出现。现在YUI是恐怖组织成员。她来保护遥，并在那里遇见了YUI。', 'Koichi Sakamoto', '/img/yp15.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000016', '死亡派对', '惊悚', '2017', '单身妈妈辛海伦在一个冰冷陌生的手术室中醒来，处于暂时失忆状态。在封闭的审讯室中，面对神秘的女侦探珍妮，辛海伦逐渐找回丢失的记忆。原来辛海伦和女儿思思在一个雨夜被几个神秘的黑衣人绑架，送到一个黑暗无边的巨大溶洞中参加一场名为“死亡派对”的杀人游戏。在“9 人当中最后只能有 1 人幸存”的残酷规则下，辛海伦究竟该如何保护女儿逃生？遥远神秘的南太平洋小城、鬼斧神工气氛惊悚的喀斯特地貌溶洞、冰冷凛冽无边无尽的地下暗河和那个昏暗绝望的封闭式审讯室中，隐藏在黑暗中的真相随着记忆的释放而被层层剥离。然而，当真相大白之际，一个隐藏在真相背后的惊天秘密也随之揭晓......', '解航', '/img/yp16.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000017', '魅妆', '惊悚', '2017', '繁华大都市某高档小区，居住着一对男女朋友。女人是当红悬疑小说作家李豌豆，其身为白领精英的男友丁朝阳此前曾有一段婚姻，但是妻子于5年前神秘失踪。某天，他们的门铃响起，从门镜望出去，外面竟然站着一头黑发、身穿白衣、血红色指甲并且露出诡异笑容的恐怖女子。诡异事件愈演愈烈，豌豆的生活被巨大的阴影笼罩着。在男友拒绝搬家的情况下，她开始尝试自行探究这一系列事件背后的原因。', '陈健', '/img/yp17.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000018', '狙击时刻', '枪战', '2016', '电影讲述了精英狙击手被国际特工重创后一次卧薪尝胆的反击之战，展现了非比寻常的魔鬼训练及残酷的丛林作战，在枪林弹雨中追捕国际犯罪集团，上演了一出丛林探险、秘境追踪的好戏…', '杨江', '/img/yp18.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000019', '杀破狼2', '动作', '2017', ' 香港卧底探员志杰（吴京 饰）不惜变成瘾君子，潜伏犯罪集团侦查幕后主脑洪先生（古天乐 饰）；直属上司兼叔父华哥（任达华 饰）决定终止行动，志杰却身份败露且人间蒸发。华哥违抗命令私自搜寻，辗转得悉志杰已被关进泰国某监狱，遂只身前赴营救。 泰国警察阿猜（托尼·贾 饰）为筹钱医 治患血癌的女儿转任狱警，负责看管志杰。志杰与阿猜语言不通、身份对立，却竟是唯一可拯救阿猜女儿的骨髓捐赠者，阿猜必须保住志杰的性命；但狱长（张晋 饰）为确保幕后交易运作正常，必须铲除志杰。 身体虚弱的洪先生带同胞弟（恭硕良 饰）突然出现，准备进行心脏移植手术自救；原来整个监狱是洪先生操控的活人体器官供应市场……', '郑保瑞', '/img/yp19.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000020', '红色警戒999', '枪战', '2018', '黑手党势力横行的亚特兰大阴云密布。现役警察、被警队除名的瘾君子、亡命匪徒组成的团伙受命于黑手党的蛇蝎美人头目，抢劫了市中心的金库却只为一个神秘保险箱。本以为可以借此金盆洗手的五人却被蛇蝎美人继续要挟完成一个不可能的抢劫任务 一场正邪难辨的暗处对决究竟谁将杀出生天……', ' 约翰·希尔寇特', '/img/yp20.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000021', '异形大战铁血战士2', '惊悚', '2018', '恶战结束，两名铁血战士带着死去同伴的尸体向家乡返航。令他们想不到的是，死去同伴的身体竟成为异形幼卵的栖息地，成熟的异形破胸而出，一场残酷的杀戮随即在飞船上进行，最终导致飞船坠毁在科罗拉多州的群山之中。幸存的异形逃出飞船，并开始恐怖的繁殖，而附近的康尼森小镇的居民也不可避免地成为异形狩猎和寄生的对象。与此同时，一个留在地球的铁血战士获知了同伴死前发出的信息，他决定与这群宿命的恶魔敌人奋战到底\r\n', ' Greg Strause', '/img/yp21.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000022', '青春派', '青春', '2018', '不疯狂，怎叫青春？居然（董子健 饰）在高考前拍毕业照时，当着全校师生的面，大声地用泰戈尔的诗句向暗恋了三年的黄晶晶（安悦溪 饰）表白，收获了甜蜜的初恋。但很快初恋的甜蜜就被闻讯赶来的母亲（咏梅 饰）破坏了，黄晶晶在居然母亲的刺激下傲然离去，居然伤心的想爬墙挽回初恋，却摔伤了尾骨。失恋加受伤的他高考失利，看着黄晶晶前往复旦的身影，决定复读追逐爱情。开始了一段疯狂的高三历程。 　　在每个青春的回忆中，一个深陷暗恋默默付出的女孩儿，几个情感丰富讲义气的哥们，一群各有故事特色十足的损友，一段所有人共有的回忆。这就是青春派——生活里总在闪烁，永不褪色的一段岁月。', '刘杰', '/img/yp22.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000023', '恶棍天使', '青春', '2018', '查小刀智商极高，但性格软弱怕事，莫非里不过是一介混混，但个性嚣张跋扈，一场车祸让两人相遇，莫非里毫无意外的狠狠在查小刀的身上诈了一笔。亲情淡漠，工作受挫，又遭恶人欺压，查小刀心灰意冷，无意之中得知了有一位名为折耳根的神医专治各种疑难杂症，于是便起了向他寻求良方的念头。\r\n', ' 俞白眉', '/img/yp23.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000024', '银河守卫队', '搞笑', '2018', '《银河守卫队》讲述了流落异星的孤儿瑞奇渴望加入银河守卫队，成为万众瞩目的超级英雄。在训练、战斗的过程中，他与机器人叮当并肩作战，共同成长，不但成功阻止了邪恶博士摧毁银河系的惊天大阴谋，而且领悟到了友谊的可贵，团结的无限能量以及英雄的真正含义。', '杰瑞卡·克莱兰', '/img/yp24.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000025', '巴黎假期', '青春', '2019', '在巴黎，女画家丁晓敏为帮男友徐晖实现艺术梦想甘愿停学打工牺牲自己，然而却惨遭抛弃，自此变得癫癫丧丧、自暴自弃。正巧，居家好男人林俊杰受邀来到巴黎打理酒庄，阴差阳错下假扮成gay和丁晓敏同居一屋。为了帮助丁晓敏走出感情创伤，林俊杰体贴地照顾起她的生活.', ' 阮世生', '/img/yp25.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000026', '我的少女时代', '青春', '2018', '成功白领林真心因被上司压迫、下属吐槽，陷入了少女时代的深深回忆。原来曾是平凡少女的真心有着一段爆笑却有充满甜蜜的初恋回忆。少女真心曾经暗恋校草欧阳非凡，却总是不敌校花陶敏敏的魅力，令她苦恼不已，一次意外却让她与校霸徐太宇组成了“失恋阵线联盟”，他们势要夺爱，上演了一幕幕生猛、搞笑的青春趣事，而在相处中两人的情感也发生了微妙的变化……若干年后，来到成人世界的林真心又能否重拾初心呢？\r\n', '陈玉珊', '/img/yp26.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000027', '这一刻，我要世界看见', '青春', '2018', '本片讲述的是一群年轻人在生活、社会、情感的重压之下，仍旧义无反顾的追求自己音乐梦想的故事。', '殷敬峰', '/img/yp27.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000028', '超能特工学院', '科幻', '2018', '《超能特工学院》是具有科幻背景的一部影片，有一个专门为超能少年开设的超能学院，而主角欧阳佐为了寻找失踪多年的父母，也来到学校探求真相。期间，他和一众伙伴经历了有趣的校园生活，并逐渐解揭开了超能学院背后的巨大阴谋。', '苏明', '/img/yp28.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000029', '寄生兽', '科幻', '2018', '在某个神秘的夜晚，可怕的孢子突然降临地球，它们钻进人类的身体，从而将其据为己有，并且将人类作为猎杀吞食的目标。高中生泉新一（染谷将太 饰）也险些被孢子控制大脑，结果这个待在右手中寄生兽“小右”（阿部隆史 饰）便与之展开了奇妙的共存。某天，学校里来了位新老师田宫良子（深津绘里 饰），她和小右都敏锐地察觉到对方的存在。田宫将A（池内万作 饰）和岛田秀雄（东出昌大 饰）介绍给小右，并邀请他加入全部由寄生兽组成的网络以谋求发展。在此期间，新一和小右遭到A的伏击，而相依为命的母亲（余贵美子 饰）也不慎沦为寄生兽的俘虏。为了保护最重要的人，新一只有向穷凶极恶的寄生兽展开攻击……', '山崎贵', '/img/yp29.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000030', '人猿帝国', '科幻', '2017', '公元2029年，飞行员利奥-戴维森(马克·沃尔伯格饰)驾驶着一架小型太空巡洋舰从空间站出发，意外地被卷进时间空洞，被迫降落在了一个陌生、奇异的猿人星球上。母猩猩艾丽(海伦娜·伯哈姆·卡特饰)被他的镇定、勇敢和坚毅所打动，帮助利奥暂时藏匿了起来。艾丽是猿人社会中的一名高层官员的女儿，她深信人类与猿类能够和谐相处，因此极力倡导人类解放。当她第一眼看到利奥时，就爱上了他并成为他的忠实同盟者。除艾丽之外，利奥又先后认识了两个同盟者：戴安娜(艾斯黛拉·沃伦饰)和林宝(保罗·加马迪饰)。在利奥的带领下，几人一边战斗，一边还要伺机闯入猿人星球的禁区，去揭开一个关于人类历史的重大秘密……', ' 那奇欧·维加隆多', '/img/yp30.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000031', '我的魔姬女友', '科幻', '2017', '馨蔚是被外星人植入了舒瑶的记忆并指派到地球执行命令的机器人，目的是为了寻找人类的弱点，好为将来的大肆侵略做准备。秦彦认为馨蔚就是舒瑶，想尽办法接近她试图唤醒她的情感。馨蔚被两人爱情的回忆打动，放弃了入侵地球的计划，而伙伴刘思齐却向秦彦和他们的孩子下了毒手，解药只有一瓶，该救谁，馨蔚陷入绝境之中…', '毛坚', '/img/yp31.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000032', '超级神仙石', '科幻', '2017', '在某个华人新村，有位勤奋、知足及孝顺的青年，名叫华仔。父亲早逝，母亲患病，家境贫穷的他决定去城市打拼赚钱。有一天，华仔遇上了企业家郭振，郭振连同伙伴Viva及柴光光计划与城中有钱的科学家赖因斯坦一起推出能为人们带来益处的“超级神仙石”。而善良的华仔被郭振打动继而为公司卖力，然而他却不知道这才是噩梦的开始。', '赖锦坤', '/img/yp32.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000033', '维尔博', '科幻', '2018', '少女莎拉与自己所处的世界格格不入，苦苦追寻生命意义的她踏上了一段惊险的旅程。', ' 爱德华多·查佩罗-杰克逊', '/img/yp33.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000034', '流浪地球', '科幻', '2019', '近未来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建造上万座发动机和转向发动机，推动地球离开太阳系，用2500年的时间奔往另外一个栖息之地。中国航天员刘培强（吴京 饰）在儿子刘启四岁那年前往国际空间站，和国际同侪肩负起领航者的重任。转眼刘启（屈楚萧 饰）长大，他带着妹妹朵朵（赵今麦 饰）偷偷跑到地表，偷开外公韩子昂（吴孟达 饰）的运输车，结果不仅遭到逮捕，还遭遇了全球发动机停摆的事件。为了修好发动机，阻止地球坠入木星，全球开始展开饱和式营救，连刘启他们的车也被强征加入。在与时间赛跑的过程中，无数的人前仆后继，奋不顾身，只为延续百代子孙生存的希望……', '郭帆', '/img/yp34.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000035', '头号玩家', '科幻', '2018', '故事发生在2045年，虚拟现实技术已经渗透到了人类生活的每一个角落。詹姆斯哈利迪一手建造了名为“绿洲”的虚拟现实游戏世界，临终前，他宣布自己在游戏中设置了一个彩蛋，找到这枚彩蛋的人即可成为绿洲的继承人。要找到这枚彩蛋，必须先获得三把钥匙，而寻找钥匙的线索就隐藏在詹姆斯的过往之中。 韦德、艾奇、大东和修是游戏中的好友，和之后遇见的阿尔忒弥斯一起，五人踏上了寻找彩蛋的征程。他们所要对抗的，是名为诺兰索伦托的大资本家', '史蒂文·斯皮尔伯格', '/img/yp35.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000036', '环太平洋：雷霆再起', '科幻', '2018', '在对抗外星人的入侵并成功封住虫洞的十年后，人类从废墟中站起来。他们忘记了恐惧，纵情狂欢，其中便包括斯特克·潘特考斯特将军的儿子杰克。在一次偷到废弃机甲零件的过程中，他偶然遭遇以一己之力组装迷你机甲的少女阿玛拉。此后，在姐姐森麻子的安排下，杰克和阿玛拉莫玉兰基地接受机甲驾驶员的培训工作。与此同时，总部位于上海的邵氏集团，在总裁邵丽雯的主持下，正致力于以无人机甲取代传统机甲。就在这关键时刻，一个与复仇流浪者极其相似的黑色机甲突然出现，并向人类展开了无情杀戮。', ' 斯蒂文·S·迪奈特', '/img/yp36.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000037', '湮灭', '科幻', '2018', '莉娜是一名生物学家，一年前，她的丈夫凯恩在参加一项秘密任务后神秘失踪，这一年间，莉娜一直生活在悲伤之中。某天，失忆的凯恩忽然出现在了莉娜的面前，之后晕倒被送入了医院。在那里，莉娜遇见了文崔斯博士。博士告诉莉娜，凯恩被派往了一块被“闪光”笼罩的未知区域，三年间，无数的队伍被派往区域内进行勘探，只有凯恩一人活着回来了。不仅如此，“闪光”正在不断的扩大。为了查明事情的真相，莉娜自愿加入了下一批被派遣的队伍之中，和她一同前往的，除了文崔斯博士外，还有安雅和乔茜。', '亚历克斯·加兰', '/img/yp37.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000038', '飞驰人生', '动作', '2019', '曾经在赛车界叱咤风云、如今却只能经营炒饭大排档的赛车手张驰决定重返车坛挑战年轻一代的天才。然而没钱没车没队友，甚至驾照都得重新考，这场笑料百出不断被打脸的复出之路，还有更多哭笑不得的窘境在等待着这位过气车神……', '韩寒', '/img/yp38.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000039', '白蛇：缘起', '动作', '2019', '晚唐年间，国师发动民众大量捕蛇。前去刺杀国师的白蛇意外失忆，被捕蛇村少年救下。为帮助少女找回记忆，两人踏上了一段冒险旅程。冒险的过程让两人感情迅速升温，但少女蛇妖的身份也逐渐显露，另一边国师与蛇族之间不可避免的大战也即将打响，两人的爱情将要接受巨大考验。', ' 赵霁', '/img/yp39.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000040', '灵魂摆渡黄泉', '动作', '2018', '八百里沙海无花无叶，一片荒凉。终日居于土堡内的少女三七，性格憨傻，样貌枯槁，被指婚给赵吏，赵吏却不愿娶她，她便唯有与一株将死未死的曼殊沙华为伴。 直到那一日，一个名叫长生的少年闯入土堡，漫长岁月，终起波澜。 三七情窦初开，曼殊沙华也悄然开放，可这时她却发现，原来长生的到来，给她带来的除了甜美的爱情，还有许多年前一个不为人知的秘密，和乌云般席卷而来的巨大阴谋。 黄沙漫卷，花开花落，而三七与她刚刚发芽的爱情，又将何去何从。', '巨兴茂', '/img/yp40.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000041', '陈翔六点半之铁头无敌', '动作', '2018', '七旬大爷老废年轻时在香港练功夫练成铁头无敌，如今老了铁头功却毫无用处，生活也穷困窘迫，甚至连家都被物业给抄了。老废面对惨淡人生，发出了要再奋斗一次的誓言，在所有人都嘲笑他的时候，一个废柴老头、一门没用的武功在新的环境下，却碰撞出了前所未有的火花，他也大器晚成、飞黄腾达……只不过，生活也变得错综复杂，面对家庭、事业、感情的冲击，他该如何抉择？', '陈翔', '/img/yp41.jpg', '../video/m2.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000042', '后来的我们', '青春', '2018', '这是一个爱情故事，关于一对异乡漂泊的年轻人。十年前，见清和小晓偶然地相识在归乡过年的火车上。两人怀揣着共同的梦想，一起在北京打拼，并开始了一段相聚相离的情感之路。十年后，见清和小晓在飞机上再次偶然重逢……命运似乎是一个轮回。在一次次的偶然下，平行线交叉，再平行，故事始终有“然后”。可后来的他们，学会如何去爱了吗？', '刘若英', '/img/yp42.jpg', '../video/m3.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000043', '比悲伤更悲伤的故事', '青春', '2019', '唱片制作人张哲凯和王牌作词人宋媛媛相依为命，两人自幼身世坎坷只有彼此为伴，他们是亲人、是朋友，也彷佛是命中注定的另一半。父亲罹患遗传重症而被母亲抛弃的哲凯，深怕自己随时会发病不久人世，始终没有跨出友谊的界线对媛媛展露爱意。眼见哲凯的病情加重，他暗自决定用剩余的生命完成他们之间的终曲，再为媛媛找个可以托付一生的好男人。这时，事业有 成温柔体贴的医生适时的出现让他成为照顾媛媛的最佳人选，二人按部就班发展着关系。一切看似都在哲凯的计划下进行。然而，故事远比这里所写更要悲伤...\r\n', '林孝谦', '/img/yp43.jpg', '../video/m1.mp4');
INSERT INTO `t_test_movie` VALUES ('0000000044', '阳台上', '青春', '2019', '《阳台上》讲述了一个关于“复仇”的故事。整日无所事事的张英雄一直生活在父母的溺爱下。父亲因为与拆迁工作人员陆志强发生冲突而忽然离世，张英雄决定要为父亲报仇。生性懦弱、摇摆不定的他却在不断偷窥、跟踪的“复仇”过程中，对陆志强的女儿陆珊珊产生了复杂而冲动的感情......', '张猛', '/img/yp44.jpg', '../video/m2.mp4');
