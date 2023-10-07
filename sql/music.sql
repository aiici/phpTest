/*
 Navicat Premium Data Transfer

 Source Server         : localTest
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : music

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 07/10/2023 14:41:51
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for search_data
-- ----------------------------
DROP TABLE IF EXISTS `search_data`;
CREATE TABLE `search_data`  (
  `data_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '歌名',
  `addr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `release_date` date NULL DEFAULT NULL COMMENT '出版时间',
  `genre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌手',
  `popularity` int NULL DEFAULT NULL COMMENT '热度',
  PRIMARY KEY (`data_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 221 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of search_data
-- ----------------------------
INSERT INTO `search_data` VALUES (1, '悬溺', 'https://music.163.com/song/media/outer/url?id=1397345903', '2023-09-28', '未知', 445329);
INSERT INTO `search_data` VALUES (2, '凄美地', 'https://music.163.com/song/media/outer/url?id=436346833', '2023-09-28', '未知', 652170);
INSERT INTO `search_data` VALUES (3, '予你', 'https://music.163.com/song/media/outer/url?id=1895330088', '2023-09-28', '未知', 384946);
INSERT INTO `search_data` VALUES (4, '向云端', 'https://music.163.com/song/media/outer/url?id=2049512697', '2023-09-28', '未知', 280489);
INSERT INTO `search_data` VALUES (5, '我记得', 'https://music.163.com/song/media/outer/url?id=1974443814', '2023-09-28', '未知', 507057);
INSERT INTO `search_data` VALUES (6, '罗生门（Follow）', 'https://music.163.com/song/media/outer/url?id=1456890009', '2023-09-28', '未知', 255891);
INSERT INTO `search_data` VALUES (7, '把回忆拼好给你', 'https://music.163.com/song/media/outer/url?id=1403318151', '2023-09-28', '未知', 619378);
INSERT INTO `search_data` VALUES (8, '如果呢', 'https://music.163.com/song/media/outer/url?id=1842728629', '2023-09-28', '未知', 462507);
INSERT INTO `search_data` VALUES (9, '唯一', 'https://music.163.com/song/media/outer/url?id=2083785152', '2023-09-28', '未知', 211112);
INSERT INTO `search_data` VALUES (10, '精卫', 'https://music.163.com/song/media/outer/url?id=1951069525', '2023-09-28', '未知', 674867);
INSERT INTO `search_data` VALUES (11, '夏夜最后的烟火', 'https://music.163.com/song/media/outer/url?id=1482867143', '2023-09-28', '未知', 387020);
INSERT INTO `search_data` VALUES (12, '达尔文', 'https://music.163.com/song/media/outer/url?id=2019573476', '2023-09-28', '未知', 1015898);
INSERT INTO `search_data` VALUES (13, '我只能离开', 'https://music.163.com/song/media/outer/url?id=1398283847', '2023-09-28', '未知', 949686);
INSERT INTO `search_data` VALUES (14, '在你的身边', 'https://music.163.com/song/media/outer/url?id=475479888', '2023-09-28', '未知', 957917);
INSERT INTO `search_data` VALUES (15, '我的美丽feat.海洋Bo', 'https://music.163.com/song/media/outer/url?id=1979417838', '2023-09-28', '未知', 369874);
INSERT INTO `search_data` VALUES (16, '武家坡2021', 'https://music.163.com/song/media/outer/url?id=1891431677', '2023-09-28', '未知', 226173);
INSERT INTO `search_data` VALUES (17, '唯一', 'https://music.163.com/song/media/outer/url?id=1807799505', '2023-09-28', '未知', 243500);
INSERT INTO `search_data` VALUES (18, 'Burn Me Down', 'https://music.163.com/song/media/outer/url?id=2051980983', '2023-09-28', '未知', 573254);
INSERT INTO `search_data` VALUES (19, '雪 Distance', 'https://music.163.com/song/media/outer/url?id=2026224214', '2023-09-28', '未知', 697806);
INSERT INTO `search_data` VALUES (20, '哪里都是你', 'https://music.163.com/song/media/outer/url?id=488249475', '2023-09-28', '未知', 39146);
INSERT INTO `search_data` VALUES (21, '暖一杯茶', 'https://music.163.com/song/media/outer/url?id=1371780785', '2023-09-28', '未知', 854191);
INSERT INTO `search_data` VALUES (22, '水星记', 'https://music.163.com/song/media/outer/url?id=441491828', '2023-09-28', '未知', 648591);
INSERT INTO `search_data` VALUES (23, '还是会想你', 'https://music.163.com/song/media/outer/url?id=1827600686', '2023-09-28', '未知', 52248);
INSERT INTO `search_data` VALUES (24, '风驶过的声音是', 'https://music.163.com/song/media/outer/url?id=2041974276', '2023-09-28', '未知', 866723);
INSERT INTO `search_data` VALUES (25, '想你时风起', 'https://music.163.com/song/media/outer/url?id=2062623445', '2023-09-28', '未知', 172103);
INSERT INTO `search_data` VALUES (26, '天外来物', 'https://music.163.com/song/media/outer/url?id=1463165983', '2023-09-28', '未知', 736316);
INSERT INTO `search_data` VALUES (27, '笼', 'https://music.163.com/song/media/outer/url?id=2057534370', '2023-09-28', '未知', 381963);
INSERT INTO `search_data` VALUES (28, '普通人生', 'https://music.163.com/song/media/outer/url?id=2041799838', '2023-09-28', '未知', 456077);
INSERT INTO `search_data` VALUES (29, '小胡同', 'https://music.163.com/song/media/outer/url?id=1926623288', '2023-09-28', '未知', 352796);
INSERT INTO `search_data` VALUES (30, '我们的歌', 'https://music.163.com/song/media/outer/url?id=2025533834', '2023-09-28', '未知', 961331);
INSERT INTO `search_data` VALUES (31, '可不可以', 'https://music.163.com/song/media/outer/url?id=553755659', '2023-09-28', '未知', 146955);
INSERT INTO `search_data` VALUES (32, '若把你', 'https://music.163.com/song/media/outer/url?id=865632948', '2023-09-28', '未知', 831892);
INSERT INTO `search_data` VALUES (33, '你', 'https://music.163.com/song/media/outer/url?id=1406083061', '2023-09-28', '未知', 844042);
INSERT INTO `search_data` VALUES (34, '致你', 'https://music.163.com/song/media/outer/url?id=1867217766', '2023-09-28', '未知', 812371);
INSERT INTO `search_data` VALUES (35, '风吹丹顶鹤', 'https://music.163.com/song/media/outer/url?id=1471761548', '2023-09-28', '未知', 702225);
INSERT INTO `search_data` VALUES (36, '给你呀（又名：for ya）', 'https://music.163.com/song/media/outer/url?id=1497588709', '2023-09-28', '未知', 1020316);
INSERT INTO `search_data` VALUES (37, '苦茶子', 'https://music.163.com/song/media/outer/url?id=1922888354', '2023-09-28', '未知', 441554);
INSERT INTO `search_data` VALUES (38, '起风了', 'https://music.163.com/song/media/outer/url?id=1330348068', '2023-09-28', '未知', 939602);
INSERT INTO `search_data` VALUES (39, '晚风', 'https://music.163.com/song/media/outer/url?id=1441758494', '2023-09-28', '未知', 1027547);
INSERT INTO `search_data` VALUES (40, '多远都要在一起', 'https://music.163.com/song/media/outer/url?id=30612793', '2023-09-28', '未知', 841192);
INSERT INTO `search_data` VALUES (41, '大梦 (Live)', 'https://music.163.com/song/media/outer/url?id=2083989384', '2023-09-28', '未知', 486339);
INSERT INTO `search_data` VALUES (42, '爱人错过', 'https://music.163.com/song/media/outer/url?id=1368754688', '2023-09-28', '未知', 227523);
INSERT INTO `search_data` VALUES (43, '忘不掉的你', 'https://music.163.com/song/media/outer/url?id=1851652156', '2023-09-28', '未知', 418375);
INSERT INTO `search_data` VALUES (44, 'Letting Go', 'https://music.163.com/song/media/outer/url?id=208891', '2023-09-28', '未知', 617142);
INSERT INTO `search_data` VALUES (45, '我只能离开', 'https://music.163.com/song/media/outer/url?id=2078383612', '2023-09-28', '未知', 779910);
INSERT INTO `search_data` VALUES (46, '可能', 'https://music.163.com/song/media/outer/url?id=1950343972', '2023-09-28', '未知', 948493);
INSERT INTO `search_data` VALUES (47, '谁 (Live版)', 'https://music.163.com/song/media/outer/url?id=566436427', '2023-09-28', '未知', 177965);
INSERT INTO `search_data` VALUES (48, '再等冬天(Memories)', 'https://music.163.com/song/media/outer/url?id=1927693793', '2023-09-28', '未知', 270045);
INSERT INTO `search_data` VALUES (49, 'NUNA3.0', 'https://music.163.com/song/media/outer/url?id=2080177728', '2023-09-28', '未知', 195057);
INSERT INTO `search_data` VALUES (50, '我看过', 'https://music.163.com/song/media/outer/url?id=1459935719', '2023-09-28', '未知', 319159);
INSERT INTO `search_data` VALUES (51, '一程山路', 'https://music.163.com/song/media/outer/url?id=1417849873', '2023-09-28', '未知', 248901);
INSERT INTO `search_data` VALUES (52, '姑娘在远方', 'https://music.163.com/song/media/outer/url?id=2022196813', '2023-09-28', '未知', 790686);
INSERT INTO `search_data` VALUES (53, '总有一天你会出现在我身边', 'https://music.163.com/song/media/outer/url?id=1303027499', '2023-09-28', '未知', 947223);
INSERT INTO `search_data` VALUES (54, '带我去找夜生活', 'https://music.163.com/song/media/outer/url?id=1410647903', '2023-09-28', '未知', 689123);
INSERT INTO `search_data` VALUES (55, 'If We Ever Broke Up', 'https://music.163.com/song/media/outer/url?id=2021343439', '2023-09-28', '未知', 560318);
INSERT INTO `search_data` VALUES (56, '遐想', 'https://music.163.com/song/media/outer/url?id=2018733994', '2023-09-28', '未知', 246557);
INSERT INTO `search_data` VALUES (57, '我看过', 'https://music.163.com/song/media/outer/url?id=2075085618', '2023-09-28', '未知', 307426);
INSERT INTO `search_data` VALUES (58, 'Shadow Of The Sun', 'https://music.163.com/song/media/outer/url?id=1968791360', '2023-09-28', '未知', 712542);
INSERT INTO `search_data` VALUES (59, 'Letting Go', 'https://music.163.com/song/media/outer/url?id=1923184888', '2023-09-28', '未知', 746349);
INSERT INTO `search_data` VALUES (60, 'Dehors', 'https://music.163.com/song/media/outer/url?id=1815725297', '2023-09-28', '未知', 381431);
INSERT INTO `search_data` VALUES (61, '与我无关', 'https://music.163.com/song/media/outer/url?id=1413585838', '2023-09-28', '未知', 190380);
INSERT INTO `search_data` VALUES (62, '最后一页', 'https://music.163.com/song/media/outer/url?id=247936', '2023-09-28', '未知', 270995);
INSERT INTO `search_data` VALUES (63, '晚安', 'https://music.163.com/song/media/outer/url?id=1359356908', '2023-09-28', '未知', 71643);
INSERT INTO `search_data` VALUES (64, '时空观影券', 'https://music.163.com/song/media/outer/url?id=2049529248', '2023-09-28', '未知', 779581);
INSERT INTO `search_data` VALUES (65, '晚风心里吹', 'https://music.163.com/song/media/outer/url?id=1929370102', '2023-09-28', '未知', 707457);
INSERT INTO `search_data` VALUES (66, '孤雏', 'https://music.163.com/song/media/outer/url?id=421486605', '2023-09-28', '未知', 726349);
INSERT INTO `search_data` VALUES (67, '离别开出花', 'https://music.163.com/song/media/outer/url?id=2061978961', '2023-09-28', '未知', 237926);
INSERT INTO `search_data` VALUES (68, 'Empty Love', 'https://music.163.com/song/media/outer/url?id=1435828582', '2023-09-28', '未知', 849982);
INSERT INTO `search_data` VALUES (69, '沉沦与遐想', 'https://music.163.com/song/media/outer/url?id=1492584510', '2023-09-28', '未知', 741157);
INSERT INTO `search_data` VALUES (70, '情人', 'https://music.163.com/song/media/outer/url?id=2082700997', '2023-09-28', '未知', 89010);
INSERT INTO `search_data` VALUES (71, '是你', 'https://music.163.com/song/media/outer/url?id=1966162185', '2023-09-28', '未知', 1066893);
INSERT INTO `search_data` VALUES (72, '再见莫妮卡', 'https://music.163.com/song/media/outer/url?id=1824045033', '2023-09-28', '未知', 775907);
INSERT INTO `search_data` VALUES (73, 'Baby, Don\'t Cry (人鱼的眼泪)', 'https://music.163.com/song/media/outer/url?id=26428032', '2023-09-28', '未知', 538943);
INSERT INTO `search_data` VALUES (74, '11', 'https://music.163.com/song/media/outer/url?id=1907766514', '2023-09-28', '未知', 837538);
INSERT INTO `search_data` VALUES (75, '形容', 'https://music.163.com/song/media/outer/url?id=1336856864', '2023-09-28', '未知', 136178);
INSERT INTO `search_data` VALUES (76, '一直很安静', 'https://music.163.com/song/media/outer/url?id=1968781675', '2023-09-28', '未知', 50693);
INSERT INTO `search_data` VALUES (77, '入秋', 'https://music.163.com/song/media/outer/url?id=1477144603', '2023-09-28', '未知', 926687);
INSERT INTO `search_data` VALUES (78, '这世界那么多人', 'https://music.163.com/song/media/outer/url?id=1842025914', '2023-09-28', '未知', 1021942);
INSERT INTO `search_data` VALUES (79, '就让这大雨全都落下', 'https://music.163.com/song/media/outer/url?id=1984475097', '2023-09-28', '未知', 504279);
INSERT INTO `search_data` VALUES (80, '如果爱忘了', 'https://music.163.com/song/media/outer/url?id=2021373243', '2023-09-28', '未知', 626949);
INSERT INTO `search_data` VALUES (81, 'STAY', 'https://music.163.com/song/media/outer/url?id=1859245776', '2023-09-28', '未知', 87461);
INSERT INTO `search_data` VALUES (82, '会魔法的老人', 'https://music.163.com/song/media/outer/url?id=1988564487', '2023-09-28', '未知', 922826);
INSERT INTO `search_data` VALUES (83, '孤雏', 'https://music.163.com/song/media/outer/url?id=1981557398', '2023-09-28', '未知', 871166);
INSERT INTO `search_data` VALUES (84, '还是分开', 'https://music.163.com/song/media/outer/url?id=465921195', '2023-09-28', '未知', 413928);
INSERT INTO `search_data` VALUES (85, '循迹', 'https://music.163.com/song/media/outer/url?id=2018432856', '2023-09-28', '未知', 370087);
INSERT INTO `search_data` VALUES (86, '特别的人', 'https://music.163.com/song/media/outer/url?id=28403111', '2023-09-28', '未知', 558452);
INSERT INTO `search_data` VALUES (87, 'Daylight', 'https://music.163.com/song/media/outer/url?id=1372188635', '2023-09-28', '未知', 379696);
INSERT INTO `search_data` VALUES (88, 'April Encounter', 'https://music.163.com/song/media/outer/url?id=551400874', '2023-09-28', '未知', 139494);
INSERT INTO `search_data` VALUES (89, 'golden hour', 'https://music.163.com/song/media/outer/url?id=1958557540', '2023-09-28', '未知', 703029);
INSERT INTO `search_data` VALUES (90, '指纹', 'https://music.163.com/song/media/outer/url?id=1887139866', '2023-09-28', '未知', 441965);
INSERT INTO `search_data` VALUES (91, 'BABYDOLL (Speed)', 'https://music.163.com/song/media/outer/url?id=1932769322', '2023-09-28', '未知', 333828);
INSERT INTO `search_data` VALUES (92, '世间美好与你环环相扣', 'https://music.163.com/song/media/outer/url?id=1363948882', '2023-09-28', '未知', 147025);
INSERT INTO `search_data` VALUES (93, '小城夏天', 'https://music.163.com/song/media/outer/url?id=1934251776', '2023-09-28', '未知', 1057719);
INSERT INTO `search_data` VALUES (94, '心许百年', 'https://music.163.com/song/media/outer/url?id=2005213526', '2023-09-28', '未知', 27858);
INSERT INTO `search_data` VALUES (95, '三国恋', 'https://music.163.com/song/media/outer/url?id=1947948874', '2023-09-28', '未知', 927972);
INSERT INTO `search_data` VALUES (96, '初恋', 'https://music.163.com/song/media/outer/url?id=1873049720', '2023-09-28', '未知', 668214);
INSERT INTO `search_data` VALUES (97, 'MOM', 'https://music.163.com/song/media/outer/url?id=1387581250', '2023-09-28', '未知', 666318);
INSERT INTO `search_data` VALUES (98, '永不失联的爱', 'https://music.163.com/song/media/outer/url?id=523250334', '2023-09-28', '未知', 708417);
INSERT INTO `search_data` VALUES (99, '第三人称', 'https://music.163.com/song/media/outer/url?id=502043537', '2023-09-28', '未知', 511167);
INSERT INTO `search_data` VALUES (100, '他只是经过', 'https://music.163.com/song/media/outer/url?id=1443838552', '2023-09-28', '未知', 894991);
INSERT INTO `search_data` VALUES (101, '红色高跟鞋', 'https://music.163.com/song/media/outer/url?id=208902', '2023-09-28', '未知', 934577);
INSERT INTO `search_data` VALUES (102, '我想念', 'https://music.163.com/song/media/outer/url?id=2071935674', '2023-09-28', '未知', 41809);
INSERT INTO `search_data` VALUES (103, '想去海边', 'https://music.163.com/song/media/outer/url?id=1413863166', '2023-09-28', '未知', 1041350);
INSERT INTO `search_data` VALUES (104, '消愁', 'https://music.163.com/song/media/outer/url?id=569200213', '2023-09-28', '未知', 1047739);
INSERT INTO `search_data` VALUES (105, '姑娘别哭泣 (弹唱版)', 'https://music.163.com/song/media/outer/url?id=2075896544', '2023-09-28', '未知', 147171);
INSERT INTO `search_data` VALUES (106, 'Moonlight', 'https://music.163.com/song/media/outer/url?id=2025082445', '2023-09-28', '未知', 21065);
INSERT INTO `search_data` VALUES (107, '像我这样的人', 'https://music.163.com/song/media/outer/url?id=569213220', '2023-09-28', '未知', 838587);
INSERT INTO `search_data` VALUES (108, '倒数', 'https://music.163.com/song/media/outer/url?id=1299550532', '2023-09-28', '未知', 241074);
INSERT INTO `search_data` VALUES (109, '溯 (Reverse)', 'https://music.163.com/song/media/outer/url?id=1294951288', '2023-09-28', '未知', 564473);
INSERT INTO `search_data` VALUES (110, '大眠 (完整版)', 'https://music.163.com/song/media/outer/url?id=1413142894', '2023-09-28', '未知', 716241);
INSERT INTO `search_data` VALUES (111, '爱情转移', 'https://music.163.com/song/media/outer/url?id=65536', '2023-09-28', '未知', 230027);
INSERT INTO `search_data` VALUES (112, '错位时空', 'https://music.163.com/song/media/outer/url?id=1808492017', '2023-09-28', '未知', 168237);
INSERT INTO `search_data` VALUES (113, 'Slow Down', 'https://music.163.com/song/media/outer/url?id=1356658022', '2023-09-28', '未知', 316199);
INSERT INTO `search_data` VALUES (114, 'Wake (Live)', 'https://music.163.com/song/media/outer/url?id=1873321491', '2023-09-28', '未知', 774983);
INSERT INTO `search_data` VALUES (115, '麦恩莉', 'https://music.163.com/song/media/outer/url?id=25648006', '2023-09-28', '未知', 214097);
INSERT INTO `search_data` VALUES (116, '漠河舞厅·2022', 'https://music.163.com/song/media/outer/url?id=1894094482', '2023-09-28', '未知', 335932);
INSERT INTO `search_data` VALUES (117, '飞天茅台', 'https://music.163.com/song/media/outer/url?id=2014046738', '2023-09-28', '未知', 268296);
INSERT INTO `search_data` VALUES (118, '天若有情（女声版）', 'https://music.163.com/song/media/outer/url?id=1931994283', '2023-09-28', '未知', 609235);
INSERT INTO `search_data` VALUES (119, '谁', 'https://music.163.com/song/media/outer/url?id=2026812798', '2023-09-28', '未知', 629922);
INSERT INTO `search_data` VALUES (120, '爱似水仙', 'https://music.163.com/song/media/outer/url?id=1975589384', '2023-09-28', '未知', 1039892);
INSERT INTO `search_data` VALUES (121, '他不懂', 'https://music.163.com/song/media/outer/url?id=28059417', '2023-09-28', '未知', 744707);
INSERT INTO `search_data` VALUES (122, '孤勇者', 'https://music.163.com/song/media/outer/url?id=1901371647', '2023-09-28', '未知', 187053);
INSERT INTO `search_data` VALUES (123, '算了吧', 'https://music.163.com/song/media/outer/url?id=1908049566', '2023-09-28', '未知', 97209);
INSERT INTO `search_data` VALUES (124, '最佳损友', 'https://music.163.com/song/media/outer/url?id=65800', '2023-09-28', '未知', 437309);
INSERT INTO `search_data` VALUES (125, '最好的安排', 'https://music.163.com/song/media/outer/url?id=2060669693', '2023-09-28', '未知', 664702);
INSERT INTO `search_data` VALUES (126, '精卫', 'https://music.163.com/song/media/outer/url?id=2019279516', '2023-09-28', '未知', 487652);
INSERT INTO `search_data` VALUES (127, '下雨天', 'https://music.163.com/song/media/outer/url?id=1426112587', '2023-09-28', '未知', 134153);
INSERT INTO `search_data` VALUES (128, '忏悔录', 'https://music.163.com/song/media/outer/url?id=1970396862', '2023-09-28', '未知', 560144);
INSERT INTO `search_data` VALUES (129, '收藏', 'https://music.163.com/song/media/outer/url?id=1496828617', '2023-09-28', '未知', 886414);
INSERT INTO `search_data` VALUES (130, '出现又离开 (Live)', 'https://music.163.com/song/media/outer/url?id=1363553440', '2023-09-28', '未知', 188403);
INSERT INTO `search_data` VALUES (131, '谁家', 'https://music.163.com/song/media/outer/url?id=2024225492', '2023-09-28', '未知', 433309);
INSERT INTO `search_data` VALUES (132, '让我欢喜让我忧 (Live)', 'https://music.163.com/song/media/outer/url?id=2067808196', '2023-09-28', '未知', 513555);
INSERT INTO `search_data` VALUES (133, '麻雀', 'https://music.163.com/song/media/outer/url?id=1407551413', '2023-09-28', '未知', 884392);
INSERT INTO `search_data` VALUES (134, '想自由', 'https://music.163.com/song/media/outer/url?id=1942734484', '2023-09-28', '未知', 966432);
INSERT INTO `search_data` VALUES (135, '篇章', 'https://music.163.com/song/media/outer/url?id=1943043408', '2023-09-28', '未知', 757523);
INSERT INTO `search_data` VALUES (136, '年少有为', 'https://music.163.com/song/media/outer/url?id=1293886117', '2023-09-28', '未知', 357832);
INSERT INTO `search_data` VALUES (137, '呓语', 'https://music.163.com/song/media/outer/url?id=1417862046', '2023-09-28', '未知', 1009953);
INSERT INTO `search_data` VALUES (138, 'Paint The Town Red', 'https://music.163.com/song/media/outer/url?id=2068309400', '2023-09-28', '未知', 975230);
INSERT INTO `search_data` VALUES (139, '山茶花读不懂白玫瑰', 'https://music.163.com/song/media/outer/url?id=2019620319', '2023-09-28', '未知', 880603);
INSERT INTO `search_data` VALUES (140, 'Letting Go (Live版)', 'https://music.163.com/song/media/outer/url?id=2048584480', '2023-09-28', '未知', 736475);
INSERT INTO `search_data` VALUES (141, '三拜红尘凉', 'https://music.163.com/song/media/outer/url?id=1969320038', '2023-09-28', '未知', 61542);
INSERT INTO `search_data` VALUES (142, '天天', 'https://music.163.com/song/media/outer/url?id=150633', '2023-09-28', '未知', 77682);
INSERT INTO `search_data` VALUES (143, 'Normal No More', 'https://music.163.com/song/media/outer/url?id=1440570723', '2023-09-28', '未知', 1026194);
INSERT INTO `search_data` VALUES (144, '触碰不到的你', 'https://music.163.com/song/media/outer/url?id=1454670699', '2023-09-28', '未知', 24575);
INSERT INTO `search_data` VALUES (145, '命运', 'https://music.163.com/song/media/outer/url?id=27591236', '2023-09-28', '未知', 631443);
INSERT INTO `search_data` VALUES (146, '有些', 'https://music.163.com/song/media/outer/url?id=1406649619', '2023-09-28', '未知', 256050);
INSERT INTO `search_data` VALUES (147, 'Memory Reboot', 'https://music.163.com/song/media/outer/url?id=2013880610', '2023-09-28', '未知', 77132);
INSERT INTO `search_data` VALUES (148, '将故事写成我们', 'https://music.163.com/song/media/outer/url?id=1391477429', '2023-09-28', '未知', 392264);
INSERT INTO `search_data` VALUES (149, '最好的我', 'https://music.163.com/song/media/outer/url?id=1975753397', '2023-09-28', '未知', 417193);
INSERT INTO `search_data` VALUES (150, '她说', 'https://music.163.com/song/media/outer/url?id=108242', '2023-09-28', '未知', 165284);
INSERT INTO `search_data` VALUES (151, '我好像在哪见过你', 'https://music.163.com/song/media/outer/url?id=417859631', '2023-09-28', '未知', 545489);
INSERT INTO `search_data` VALUES (152, '天若有情', 'https://music.163.com/song/media/outer/url?id=438204707', '2023-09-28', '未知', 667053);
INSERT INTO `search_data` VALUES (153, '删了吧', 'https://music.163.com/song/media/outer/url?id=1891469546', '2023-09-28', '未知', 118250);
INSERT INTO `search_data` VALUES (154, '失眠飞行', 'https://music.163.com/song/media/outer/url?id=1365898499', '2023-09-28', '未知', 283055);
INSERT INTO `search_data` VALUES (155, '我的一个道姑朋友', 'https://music.163.com/song/media/outer/url?id=1367452194', '2023-09-28', '未知', 347662);
INSERT INTO `search_data` VALUES (156, '你走以后1.0', 'https://music.163.com/song/media/outer/url?id=1363205817', '2023-09-28', '未知', 949788);
INSERT INTO `search_data` VALUES (157, '喜欢你', 'https://music.163.com/song/media/outer/url?id=28949444', '2023-09-28', '未知', 264015);
INSERT INTO `search_data` VALUES (158, '梦醒', 'https://music.163.com/song/media/outer/url?id=1395222212', '2023-09-28', '未知', 484087);
INSERT INTO `search_data` VALUES (159, '乌梅子酱', 'https://music.163.com/song/media/outer/url?id=1997438791', '2023-09-28', '未知', 375953);
INSERT INTO `search_data` VALUES (160, '是非题·2023', 'https://music.163.com/song/media/outer/url?id=2083509478', '2023-09-28', '未知', 788264);
INSERT INTO `search_data` VALUES (161, '偏爱', 'https://music.163.com/song/media/outer/url?id=86369', '2023-09-28', '未知', 782797);
INSERT INTO `search_data` VALUES (162, '危险派对', 'https://music.163.com/song/media/outer/url?id=1877996649', '2023-09-28', '未知', 259627);
INSERT INTO `search_data` VALUES (163, '富士山下', 'https://music.163.com/song/media/outer/url?id=65766', '2023-09-28', '未知', 700494);
INSERT INTO `search_data` VALUES (164, 'Peter Pan Was Right', 'https://music.163.com/song/media/outer/url?id=1942594143', '2023-09-28', '未知', 552561);
INSERT INTO `search_data` VALUES (165, '后来的我们', 'https://music.163.com/song/media/outer/url?id=422104138', '2023-09-28', '未知', 102701);
INSERT INTO `search_data` VALUES (166, '浪漫主义', 'https://music.163.com/song/media/outer/url?id=1887917182', '2023-09-28', '未知', 415870);
INSERT INTO `search_data` VALUES (167, 'Always Online', 'https://music.163.com/song/media/outer/url?id=108485', '2023-09-28', '未知', 302130);
INSERT INTO `search_data` VALUES (168, '算了', 'https://music.163.com/song/media/outer/url?id=2052409208', '2023-09-28', '未知', 368796);
INSERT INTO `search_data` VALUES (169, '美人鱼', 'https://music.163.com/song/media/outer/url?id=108931', '2023-09-28', '未知', 418599);
INSERT INTO `search_data` VALUES (170, '太聪明', 'https://music.163.com/song/media/outer/url?id=209397', '2023-09-28', '未知', 247578);
INSERT INTO `search_data` VALUES (171, '爱人呢', 'https://music.163.com/song/media/outer/url?id=399341494', '2023-09-28', '未知', 1017723);
INSERT INTO `search_data` VALUES (172, '失语者', 'https://music.163.com/song/media/outer/url?id=2006448864', '2023-09-28', '未知', 748001);
INSERT INTO `search_data` VALUES (173, '茫', 'https://music.163.com/song/media/outer/url?id=1495058484', '2023-09-28', '未知', 254080);
INSERT INTO `search_data` VALUES (174, '下坠Falling', 'https://music.163.com/song/media/outer/url?id=1328146041', '2023-09-28', '未知', 626753);
INSERT INTO `search_data` VALUES (175, '声音', 'https://music.163.com/song/media/outer/url?id=2031085185', '2023-09-28', '未知', 298459);
INSERT INTO `search_data` VALUES (176, 'Don\'t Go', 'https://music.163.com/song/media/outer/url?id=2084397731', '2023-09-28', '未知', 341604);
INSERT INTO `search_data` VALUES (177, 'Starboy', 'https://music.163.com/song/media/outer/url?id=431610014', '2023-09-28', '未知', 400144);
INSERT INTO `search_data` VALUES (178, 'So Far Away (Acoustic)', 'https://music.163.com/song/media/outer/url?id=1313584359', '2023-09-28', '未知', 114293);
INSERT INTO `search_data` VALUES (179, '最后一页（完整版）', 'https://music.163.com/song/media/outer/url?id=445154140', '2023-09-28', '未知', 727515);
INSERT INTO `search_data` VALUES (180, 'But U', 'https://music.163.com/song/media/outer/url?id=1459232593', '2023-09-28', '未知', 780417);
INSERT INTO `search_data` VALUES (181, '开往早晨的午夜', 'https://music.163.com/song/media/outer/url?id=449577636', '2023-09-28', '未知', 473067);
INSERT INTO `search_data` VALUES (182, '夏天的风', 'https://music.163.com/song/media/outer/url?id=1436709403', '2023-09-28', '未知', 114561);
INSERT INTO `search_data` VALUES (183, 'Kunup Biraymu', 'https://music.163.com/song/media/outer/url?id=2073773504', '2023-09-28', '未知', 995657);
INSERT INTO `search_data` VALUES (184, '虚拟', 'https://music.163.com/song/media/outer/url?id=421423808', '2023-09-28', '未知', 914987);
INSERT INTO `search_data` VALUES (185, 'One More Last Time', 'https://music.163.com/song/media/outer/url?id=1942576027', '2023-09-28', '未知', 211498);
INSERT INTO `search_data` VALUES (186, '你想要的', 'https://music.163.com/song/media/outer/url?id=1434309927', '2023-09-28', '未知', 472303);
INSERT INTO `search_data` VALUES (187, '海底', 'https://music.163.com/song/media/outer/url?id=1430583016', '2023-09-28', '未知', 574107);
INSERT INTO `search_data` VALUES (188, '断线', 'https://music.163.com/song/media/outer/url?id=496370620', '2023-09-28', '未知', 864645);
INSERT INTO `search_data` VALUES (189, '骗子', 'https://music.163.com/song/media/outer/url?id=1924343459', '2023-09-28', '未知', 1072071);
INSERT INTO `search_data` VALUES (190, 'Head In The Clouds', 'https://music.163.com/song/media/outer/url?id=1878812258', '2023-09-28', '未知', 558228);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (4, 'admin', '$2y$10$IrSqodct3I4R4pMYMUpa/.nsAZ5yDbIeZAamtdDaXGU94k8aHJ9cG', 1, '2023-09-28 14:08:19');
INSERT INTO `user` VALUES (7, 'abcd', '$2y$10$dfZBCRNLs.dA7bm4Niym7ej3JsYQZHlafmvfnSVFFg9CWqPoP1yU2', 2, '2023-10-07 14:19:41');
INSERT INTO `user` VALUES (8, 'aiici', '$2y$10$Q7utwuUB47ATbTt0kLR/muP1m/z6/HAA9h3IEHlQFiRwVTRNgJo0q', 1, '2023-10-07 14:29:54');

SET FOREIGN_KEY_CHECKS = 1;
