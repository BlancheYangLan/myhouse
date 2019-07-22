/*
Navicat MySQL Data Transfer

Source Server         : car
Source Server Version : 50510
Source Host           : localhost:3306
Source Database       : car

Target Server Type    : MYSQL
Target Server Version : 50510
File Encoding         : 65001

Date: 2018-11-12 16:18:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `paoche`
-- ----------------------------
DROP TABLE IF EXISTS `paoche`;
CREATE TABLE `paoche` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `madel` varchar(20) DEFAULT NULL,
  `price` float(20,2) DEFAULT NULL,
  `fdjlx` varchar(50) DEFAULT NULL,
  `zpl` varchar(50) DEFAULT NULL,
  `gjcc` varchar(50) DEFAULT NULL,
  `zdscgl` varchar(50) DEFAULT NULL,
  `fznj` varchar(50) DEFAULT NULL,
  `zdzs` varchar(50) DEFAULT NULL,
  `ysb` varchar(50) DEFAULT NULL,
  `cscd` varchar(50) DEFAULT NULL,
  `cskd` varchar(50) DEFAULT NULL,
  `csgd` varchar(50) DEFAULT NULL,
  `zj` varchar(50) DEFAULT NULL,
  `qlj` varchar(50) DEFAULT NULL,
  `hlj` varchar(50) DEFAULT NULL,
  `zz` varchar(50) DEFAULT NULL,
  `gz` varchar(50) DEFAULT NULL,
  `zlfb` varchar(50) DEFAULT NULL,
  `yxrj` varchar(50) DEFAULT NULL,
  `qlt` varchar(50) DEFAULT NULL,
  `hlt` varchar(50) DEFAULT NULL,
  `qzd` varchar(50) DEFAULT NULL,
  `hzd` varchar(50) DEFAULT NULL,
  `zgss` varchar(50) DEFAULT NULL,
  `0-100km/h` varchar(50) DEFAULT NULL,
  `0-200km/h` varchar(50) DEFAULT NULL,
  `100-0km/h` varchar(50) DEFAULT NULL,
  `gz/gl` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paoche
-- ----------------------------
INSERT INTO `paoche` VALUES ('1', '812 Superfast', '4988000.00', '	V12 - 65度夹角', '	6496 cc', '	94 mm x 78 mm', '	588 kW (800 cv) at 8,500 rpm', '	718 Nm at 7,000 rpm', '	8,900 rpm', '	13.6:1', '	4,657 mm', '	1,971 mm', '	1,276 mm', '	2,720 mm', '	1,672 mm', '	1,645 mm', '	1,630 kg', '	1,525 kg', '	47% 前 - 53% 后', '	92 l', '	275/35 ZR20; 10” J x 20”', '315/35 ZR20; 11.5” J x 20”', '398 mm x 38 mm', '360 mm x 32 mm', '340 km/h', '2.9 秒', '	7.9 秒', '32m', '1.9 kg');
INSERT INTO `paoche` VALUES ('2', '488 GTB', '2088000.00', 'V8 - 90°涡轮增压', '3.902 cm3', '86,5 x 83 mm (3.4 x 3.3 in)', '492 kW (670 CV) at 8000 rpm', '760 Nm at 3000 rpm in VII gear', '172 cv/l', '9.4:1', '4568 mm (179.8 in)', '	1952 mm (76.9 in)', '1213 mm (47.8 in)', '2650 mm (104.3 in)', '1679 mm (66.1 in)', '1647 mm (64.8 in)', '1475 Kg', '1370 Kg', '前41,5% –后 58,5%', '78 l', '245/35 ZR20 J9.0', '305/30 ZR 20 J11.0', '398 mm x 38 mm', '360 mm x 32 mm', '> 330 km/h', '3,0 s', '8,3 s', '32m', '2.0 kg');
INSERT INTO `paoche` VALUES ('3', 'GTC4Lusso', '2900000.00', 'V12 - 65°', '6262 cc', '	94 mm x 75,2 mm', '507 kW (690 CV) a 8.000 giri/min', '697 Nm a 5.750 rpm', '	8.250 giri/min', '13,5:1', '4.922 mm', '1.980 mm', '1.383 mm', '2.990 mm', '	1.674 mm', '1.668 mm', '	1.920 kg', '1.790 kg', '	前47% - 后 53%', '	91 l', '	245/35 ZR20; 8.5” J x 20”', '	295/35 ZR20”; 10.5” J x 20”', '398 mm x 38 mm', '	360 mm x 32 mm', '	335 km/h', '	3,4 秒', '	10,5 秒', '	34 m', '2,6 kg/cv');
INSERT INTO `paoche` VALUES ('4', 'GTC4Lusso T', '4600000.00', '	V8 - 90° turbo', '	3,855 cc', '	86.5 mm x 82 mm', '	449 kW (610 cv) at 7,500 rpm', '	760 Nm at 3,000 – 5,250 rpm', '	7,500 rpm', '9.4:1', '4,922 mm', '	1,980 mm', '1,383 mm', '2,990 mm', '1,674 mm', '1,668 mm', '1,865 kg', '1,740 kg', '4 6 %前 5 4 %后', '	91 l', '	245/35 ZR20”; 8.5” J x 20”', '	295/35 ZR20”; 10.5” J x 20”', '	398 mm x 38 mm', '	360 mm x 32 mm', '	>320 km/h', '3.5 sec', '10.8sec', '	34 m', '1.9 kg');
INSERT INTO `paoche` VALUES ('5', '488 Pista Sqider', '3600000.00', '	V8 – 90°双涡轮增压 – 干式油底壳', '3902 cc', '	86.5 mm x 82 mm', '530 kW (720 cv) @ 8000转/分', '	770 Nm @ 3000转/分，第七档', '8000转/分', '	9,6:1', '	4605 mm', '	1975 mm', '	1206 mm', '	2650 mm', '	1679 mm', '	1649 mm', '	1485 kg', '	1380 kg', '	前41.5% - 后58.5%', '	78 l', '	245/35 ZR 20 J9,0', '	305/30 ZR 20 J11.0', '	398 mm x 38 mm', '	360 x 233 x 32 mm', '	>320 km/h', '	2,85 秒', '8,3 s', '	29,5 m', '2.0 kg');
INSERT INTO `paoche` VALUES ('6', '488 Spider', '3800000.00', '	V8 - 90°涡轮增压', '	3902 cc (238.1 cu. in)', '	86.5 x 83 mm (3.4 x 3.3 in)', '	492 kW (670 cv) at 8000 rpm', '	760 Nm at 6750 rpm in VII gear', '	8.250 giri/min', '	9.4:1', '	4568 mm (179.8 in)', '	1952 mm (76.9 in)', '	1211 mm (47.7 in)', '	2650 mm (104.3 in)', '	1679 mm (66.1 in)', '	1647 mm (64.8 in)', '	1525 kg (3362 lb)', '	1420 kg (3131 lb)', '	前41,5% –后 58,5%', '	78 l', '	245/35 ZR20 J9.0', '	305/30 ZR 20 J11.0', '	398x223x36 毫米 (15.7 x 8.8 x 1.4 英寸)', '	360x233x32 毫米 (14.2 x 9.2 x 1.3 英寸)', '	> 325 km/h (203 mph)', '	(0 – 62 mph) 3.0 秒', '	(0 – 124 mph) 8.7 秒', '32m', '2,6 kg/cv');
INSERT INTO `paoche` VALUES ('7', '488 Pista', '3900000.00', '	V8 – 90°双涡轮增压 – 干式油底壳', '3.902 cm3', '86,5 x 83 mm (3.4 x 3.3 in)', '530 kW (720 cv) @ 8000转/分', '	770 Nm @ 3000转/分，第七档', '	8.250 giri/min', '13,5:1', '	4605 mm', '	1975 mm', '	1211 mm (47.7 in)', '2,990 mm', '1,674 mm', '1,668 mm', '1,865 kg', '1370 Kg', '	前41.5% - 后58.5%', '	91 l', '	245/35 ZR20 J9.0', '	305/30 ZR 20 J11.0', '	398 mm x 38 mm', '360 mm x 32 mm', '	>320 km/h', '3.5 sec', '8,3 s', '	34 m', '2,6 kg/cv');
INSERT INTO `paoche` VALUES ('8', 'Portofino', '4100000.00', '	V8 – 90°双涡轮增压 – 干式油底壳', '	3,855 cc', '	86.5 mm x 82 mm', '	588 kW (800 cv) at 8,500 rpm', '	760 Nm at 3,000 – 5,250 rpm', '8000转/分', '	9,6:1', '4568 mm (179.8 in)', '	1,980 mm', '	1211 mm (47.7 in)', '	2650 mm (104.3 in)', '	1679 mm', '	1649 mm', '1,865 kg', '1,740 kg', '	前41.5% - 后58.5%', '	91 l', '	245/35 ZR20 J9.0', '305/30 ZR 20 J11.0', '	398 mm x 38 mm', '360 mm x 32 mm', '	>320 km/h', '2.9 秒', '	10,5 秒', '32m', '2,6 kg/cv');
INSERT INTO `paoche` VALUES ('9', 'Monza SP1', '4836000.00', 'V12 - 65°', '3.902 cm3', '	94 mm x 75,2 mm', '530 kW (720 cv) @ 8000转/分', '	770 Nm @ 3000转/分，第七档', '	8.250 giri/min', '13,5:1', '4,922 mm', '	1,980 mm', '1,383 mm', '	2650 mm (104.3 in)', '1,674 mm', '1,668 mm', '	1525 kg (3362 lb)', '1370 Kg', '	前41,5% –后 58,5%', '	78 l', '265/30 - 19', '	345/30 - 20', '	398 x 223 x 36 mm', '	380 x 253 x 34 mm', '	超过 350 km/h', '	<3 秒', '<7 秒', '27m', '2.0 kg');
INSERT INTO `paoche` VALUES ('10', 'Monza SP2', '5300000.00', '	65-deg. V12', '	3,855 cc', '	86.5 mm x 82 mm', '	588 kW (800 cv) at 8,500 rpm', '	760 Nm at 3,000 – 5,250 rpm', '8000转/分', '	9,6:1', '4568 mm (179.8 in)', '	1975 mm', '1,383 mm', '2,990 mm', '	1679 mm', '	1649 mm', '	1525 kg (3362 lb)', '	1380 kg', '	前41,5% –后 58,5%', '	78 l', '265/30 - 19', '	345/30 - 20', '	398 x 223 x 36 mm', '	380 x 253 x 34 mm', '	超过 350 km/h', '	<3 秒', '<7 秒', '26m', '2.0 kg');
INSERT INTO `paoche` VALUES ('11', 'LaFerrari Aperta', '5600000.00', '	65-deg. V12', '	6262 cc', '94 x 75,2 mm', '530 kW (720 cv) @ 8000转/分', '	760 Nm at 3,000 – 5,250 rpm', '	9250 rpm', '	13.5:1', '4702 mm', '	1992 mm', '	1116 mm', '	2650 mm', '1,674 mm', '	1649 mm', '1475 Kg', '	1380 kg', '41% 前, 59% 后', null, '265/30 - 19', '	345/30 - 20', '	398 x 223 x 36 mm', '	380 x 253 x 34 mm', '	超过 350 km/h', '	<3 秒', '<7 秒', '25m', '2.0 kg');
