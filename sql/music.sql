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

 Date: 26/09/2023 15:34:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for search_data
-- ----------------------------
DROP TABLE IF EXISTS `search_data`;
CREATE TABLE `search_data`  (
  `data_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '歌名',
  `artist` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '描述',
  `release_date` date NULL DEFAULT NULL COMMENT '出版时间',
  `genre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '歌手',
  `popularity` int NULL DEFAULT NULL COMMENT '热度',
  PRIMARY KEY (`data_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of search_data
-- ----------------------------
INSERT INTO `search_data` VALUES (1, '清空', '遥遥领先', '2023-09-26', '艾辰', 297282205);
INSERT INTO `search_data` VALUES (2, '恭喜发财', '遥遥领先', '2023-09-26', '刘德华', 153390);
INSERT INTO `search_data` VALUES (3, 'for  ya', '遥遥领先', '2023-09-26', 'Okey.', 297496231);
INSERT INTO `search_data` VALUES (4, '好运来', '遥遥领先', '2023-09-26', '祖海', 213054628);
INSERT INTO `search_data` VALUES (5, '星辰大海', '遥遥领先', '2023-09-26', '七叔（叶泽浩）', 297088455);
INSERT INTO `search_data` VALUES (6, '策马正少年', '遥遥领先', '2023-09-26', '肖战', 297277345);
INSERT INTO `search_data` VALUES (7, '西楼别序', '遥遥领先', '2023-09-26', '尹昔眠/小田音乐社', 293602945);
INSERT INTO `search_data` VALUES (8, '等雾散去', '遥遥领先', '2023-09-26', '覆予/山止川行', 295945879);
INSERT INTO `search_data` VALUES (9, '恭喜发财2021', '遥遥领先', '2023-09-26', '刘德华/王宝强/刘昊然', 249117643);
INSERT INTO `search_data` VALUES (10, '财神来到我家门', '遥遥领先', '2023-09-26', '卓依婷', 182439);
INSERT INTO `search_data` VALUES (11, '平行世界', '遥遥领先', '2023-09-26', 'G.E.M. 邓紫棋', 297515609);
INSERT INTO `search_data` VALUES (12, '下雨天 (Live)', '遥遥领先', '2023-09-26', '单依纯', 297270399);
INSERT INTO `search_data` VALUES (13, '我在这 挺好的', '遥遥领先', '2023-09-26', '周深', 297721067);
INSERT INTO `search_data` VALUES (14, '牛气冲天 新年大吉祝福歌', '遥遥领先', '2023-09-26', '韩伊妹', 290293791);
INSERT INTO `search_data` VALUES (15, '不觉晓', '遥遥领先', '2023-09-26', '花小楼', 297277957);
INSERT INTO `search_data` VALUES (16, '漫长的告白', '遥遥领先', '2023-09-26', '双笙 (陈元汐)', 293824825);
INSERT INTO `search_data` VALUES (17, '我知道 (Live)', '遥遥领先', '2023-09-26', '何昶希', 297270402);
INSERT INTO `search_data` VALUES (18, '新年快乐', '遥遥领先', '2023-09-26', '卓依婷', 457760);
INSERT INTO `search_data` VALUES (19, '模拟星辰', '遥遥领先', '2023-09-26', '水调歌头/盛嘉禄', 296669188);
INSERT INTO `search_data` VALUES (20, '相生烈焰', '遥遥领先', '2023-09-26', '妄想嘉年华组委会', 297302927);
INSERT INTO `search_data` VALUES (21, '悬溺', '遥遥领先', '2023-09-26', '未知', 50442);
INSERT INTO `search_data` VALUES (22, '凄美地', '遥遥领先', '2023-09-26', '未知', 84695);
INSERT INTO `search_data` VALUES (23, '予你', '遥遥领先', '2023-09-26', '未知', 66891);
INSERT INTO `search_data` VALUES (24, '向云端', '遥遥领先', '2023-09-26', '未知', 27381);
INSERT INTO `search_data` VALUES (25, '我记得', '遥遥领先', '2023-09-26', '未知', 20362);
INSERT INTO `search_data` VALUES (26, '罗生门（Follow）', '遥遥领先', '2023-09-26', '未知', 26349);
INSERT INTO `search_data` VALUES (27, '如果呢', '遥遥领先', '2023-09-26', '未知', 76358);
INSERT INTO `search_data` VALUES (28, '把回忆拼好给你', '遥遥领先', '2023-09-26', '未知', 24113);
INSERT INTO `search_data` VALUES (29, '夏夜最后的烟火', '遥遥领先', '2023-09-26', '未知', 37397);
INSERT INTO `search_data` VALUES (30, '精卫', '遥遥领先', '2023-09-26', '未知', 94571);
INSERT INTO `search_data` VALUES (31, '达尔文', '遥遥领先', '2023-09-26', '未知', 10140);
INSERT INTO `search_data` VALUES (32, '我只能离开', '遥遥领先', '2023-09-26', '未知', 58132);
INSERT INTO `search_data` VALUES (33, '在你的身边', '遥遥领先', '2023-09-26', '未知', 13146);
INSERT INTO `search_data` VALUES (34, '笼', '遥遥领先', '2023-09-26', '未知', 43928);
INSERT INTO `search_data` VALUES (35, '我的美丽feat.海洋Bo', '遥遥领先', '2023-09-26', '未知', 96983);
INSERT INTO `search_data` VALUES (36, '唯一', '遥遥领先', '2023-09-26', '未知', 84920);
INSERT INTO `search_data` VALUES (37, '武家坡2021', '遥遥领先', '2023-09-26', '未知', 50693);
INSERT INTO `search_data` VALUES (38, '雪 Distance', '遥遥领先', '2023-09-26', '未知', 46007);
INSERT INTO `search_data` VALUES (39, '唯一', '遥遥领先', '2023-09-26', '未知', 78653);
INSERT INTO `search_data` VALUES (40, '情人', '遥遥领先', '2023-09-26', '未知', 18961);
INSERT INTO `search_data` VALUES (41, '暖一杯茶', '遥遥领先', '2023-09-26', '未知', 67039);
INSERT INTO `search_data` VALUES (42, '哪里都是你', '遥遥领先', '2023-09-26', '未知', 70099);
INSERT INTO `search_data` VALUES (43, '还是会想你', '遥遥领先', '2023-09-26', '未知', 40452);
INSERT INTO `search_data` VALUES (44, '天外来物', '遥遥领先', '2023-09-26', '未知', 39339);
INSERT INTO `search_data` VALUES (45, '九月底', '遥遥领先', '2023-09-26', '未知', 27703);
INSERT INTO `search_data` VALUES (46, '风驶过的声音是', '遥遥领先', '2023-09-26', '未知', 29833);
INSERT INTO `search_data` VALUES (47, 'Burn Me Down', '遥遥领先', '2023-09-26', '未知', 95577);
INSERT INTO `search_data` VALUES (48, '水星记', '遥遥领先', '2023-09-26', '未知', 15222);
INSERT INTO `search_data` VALUES (49, '小胡同', '遥遥领先', '2023-09-26', '未知', 66485);
INSERT INTO `search_data` VALUES (50, '想你时风起', '遥遥领先', '2023-09-26', '未知', 54947);
INSERT INTO `search_data` VALUES (51, '普通人生', '遥遥领先', '2023-09-26', '未知', 98719);
INSERT INTO `search_data` VALUES (52, '若把你', '遥遥领先', '2023-09-26', '未知', 35034);
INSERT INTO `search_data` VALUES (53, '你', '遥遥领先', '2023-09-26', '未知', 84334);
INSERT INTO `search_data` VALUES (54, '可不可以', '遥遥领先', '2023-09-26', '未知', 26960);
INSERT INTO `search_data` VALUES (55, '我们的歌', '遥遥领先', '2023-09-26', '未知', 19007);
INSERT INTO `search_data` VALUES (56, '致你', '遥遥领先', '2023-09-26', '未知', 21953);
INSERT INTO `search_data` VALUES (57, '风吹丹顶鹤', '遥遥领先', '2023-09-26', '未知', 62433);
INSERT INTO `search_data` VALUES (58, 'NUNA3.0', '遥遥领先', '2023-09-26', '未知', 97364);
INSERT INTO `search_data` VALUES (59, '给你呀（又名：for ya）', '遥遥领先', '2023-09-26', '未知', 49932);
INSERT INTO `search_data` VALUES (60, '苦茶子', '遥遥领先', '2023-09-26', '未知', 86718);
INSERT INTO `search_data` VALUES (61, '晚风', '遥遥领先', '2023-09-26', '未知', 85196);
INSERT INTO `search_data` VALUES (62, '多远都要在一起', '遥遥领先', '2023-09-26', '未知', 61125);
INSERT INTO `search_data` VALUES (63, '我只能离开', '遥遥领先', '2023-09-26', '未知', 30580);
INSERT INTO `search_data` VALUES (64, '起风了', '遥遥领先', '2023-09-26', '未知', 93432);
INSERT INTO `search_data` VALUES (65, '忘不掉的你', '遥遥领先', '2023-09-26', '未知', 45450);
INSERT INTO `search_data` VALUES (66, 'Letting Go', '遥遥领先', '2023-09-26', '未知', 10651);
INSERT INTO `search_data` VALUES (67, '爱人错过', '遥遥领先', '2023-09-26', '未知', 80364);
INSERT INTO `search_data` VALUES (68, '大梦 (Live)', '遥遥领先', '2023-09-26', '未知', 35118);
INSERT INTO `search_data` VALUES (69, '谁 (Live版)', '遥遥领先', '2023-09-26', '未知', 80175);
INSERT INTO `search_data` VALUES (70, '我看过', '遥遥领先', '2023-09-26', '未知', 98254);
INSERT INTO `search_data` VALUES (71, '再等冬天(Memories)', '遥遥领先', '2023-09-26', '未知', 88012);
INSERT INTO `search_data` VALUES (72, '可能', '遥遥领先', '2023-09-26', '未知', 54579);
INSERT INTO `search_data` VALUES (73, '遐想', '遥遥领先', '2023-09-26', '未知', 23321);
INSERT INTO `search_data` VALUES (74, 'Letting Go', '遥遥领先', '2023-09-26', '未知', 46372);
INSERT INTO `search_data` VALUES (75, '总有一天你会出现在我身边', '遥遥领先', '2023-09-26', '未知', 18553);
INSERT INTO `search_data` VALUES (76, '姑娘在远方', '遥遥领先', '2023-09-26', '未知', 63181);
INSERT INTO `search_data` VALUES (77, '带我去找夜生活', '遥遥领先', '2023-09-26', '未知', 21968);
INSERT INTO `search_data` VALUES (78, '与我无关', '遥遥领先', '2023-09-26', '未知', 31773);
INSERT INTO `search_data` VALUES (79, '孤雏', '遥遥领先', '2023-09-26', '未知', 16493);
INSERT INTO `search_data` VALUES (80, '晚安', '遥遥领先', '2023-09-26', '未知', 77510);
INSERT INTO `search_data` VALUES (81, 'If We Ever Broke Up', '遥遥领先', '2023-09-26', '未知', 41068);
INSERT INTO `search_data` VALUES (82, '最后一页', '遥遥领先', '2023-09-26', '未知', 76059);
INSERT INTO `search_data` VALUES (83, '沉沦与遐想', '遥遥领先', '2023-09-26', '未知', 71998);
INSERT INTO `search_data` VALUES (84, 'Shadow Of The Sun', '遥遥领先', '2023-09-26', '未知', 39626);
INSERT INTO `search_data` VALUES (85, '是你', '遥遥领先', '2023-09-26', '未知', 37295);
INSERT INTO `search_data` VALUES (86, '晚风心里吹', '遥遥领先', '2023-09-26', '未知', 38398);
INSERT INTO `search_data` VALUES (87, 'Dehors', '遥遥领先', '2023-09-26', '未知', 55322);
INSERT INTO `search_data` VALUES (88, '时空观影券', '遥遥领先', '2023-09-26', '未知', 53370);
INSERT INTO `search_data` VALUES (89, '形容', '遥遥领先', '2023-09-26', '未知', 93526);
INSERT INTO `search_data` VALUES (90, 'Empty Love', '遥遥领先', '2023-09-26', '未知', 17225);
INSERT INTO `search_data` VALUES (91, '我看过', '遥遥领先', '2023-09-26', '未知', 64924);
INSERT INTO `search_data` VALUES (92, '再见莫妮卡', '遥遥领先', '2023-09-26', '未知', 41265);
INSERT INTO `search_data` VALUES (93, '就让这大雨全都落下', '遥遥领先', '2023-09-26', '未知', 60771);
INSERT INTO `search_data` VALUES (94, '入秋', '遥遥领先', '2023-09-26', '未知', 51284);
INSERT INTO `search_data` VALUES (95, '11', '遥遥领先', '2023-09-26', '未知', 30761);
INSERT INTO `search_data` VALUES (96, 'April Encounter', '遥遥领先', '2023-09-26', '未知', 68839);
INSERT INTO `search_data` VALUES (97, '这世界那么多人', '遥遥领先', '2023-09-26', '未知', 54277);
INSERT INTO `search_data` VALUES (98, 'Baby, Don\'t Cry (人鱼的眼泪)', '遥遥领先', '2023-09-26', '未知', 17948);
INSERT INTO `search_data` VALUES (99, '一直很安静', '遥遥领先', '2023-09-26', '未知', 53828);
INSERT INTO `search_data` VALUES (100, '孤雏', '遥遥领先', '2023-09-26', '未知', 48636);
INSERT INTO `search_data` VALUES (101, '如果爱忘了', '遥遥领先', '2023-09-26', '未知', 59199);
INSERT INTO `search_data` VALUES (102, '特别的人', '遥遥领先', '2023-09-26', '未知', 77523);
INSERT INTO `search_data` VALUES (103, '会魔法的老人', '遥遥领先', '2023-09-26', '未知', 72125);
INSERT INTO `search_data` VALUES (104, '循迹', '遥遥领先', '2023-09-26', '未知', 33624);
INSERT INTO `search_data` VALUES (105, '飞天茅台', '遥遥领先', '2023-09-26', '未知', 20433);
INSERT INTO `search_data` VALUES (106, 'STAY', '遥遥领先', '2023-09-26', '未知', 12922);
INSERT INTO `search_data` VALUES (107, 'Daylight', '遥遥领先', '2023-09-26', '未知', 67993);
INSERT INTO `search_data` VALUES (108, '还是分开', '遥遥领先', '2023-09-26', '未知', 32907);
INSERT INTO `search_data` VALUES (109, '一程山路', '遥遥领先', '2023-09-26', '未知', 46485);
INSERT INTO `search_data` VALUES (110, 'golden hour', '遥遥领先', '2023-09-26', '未知', 17902);
INSERT INTO `search_data` VALUES (111, '第三人称', '遥遥领先', '2023-09-26', '未知', 17234);
INSERT INTO `search_data` VALUES (112, 'BABYDOLL (Speed)', '遥遥领先', '2023-09-26', '未知', 40021);
INSERT INTO `search_data` VALUES (113, '他只是经过', '遥遥领先', '2023-09-26', '未知', 72501);
INSERT INTO `search_data` VALUES (114, 'MOM', '遥遥领先', '2023-09-26', '未知', 77527);
INSERT INTO `search_data` VALUES (115, '初恋', '遥遥领先', '2023-09-26', '未知', 48663);
INSERT INTO `search_data` VALUES (116, '指纹', '遥遥领先', '2023-09-26', '未知', 15919);
INSERT INTO `search_data` VALUES (117, '永不失联的爱', '遥遥领先', '2023-09-26', '未知', 67814);
INSERT INTO `search_data` VALUES (118, '小城夏天', '遥遥领先', '2023-09-26', '未知', 82918);
INSERT INTO `search_data` VALUES (119, '我想念', '遥遥领先', '2023-09-26', '未知', 21719);
INSERT INTO `search_data` VALUES (120, '世间美好与你环环相扣', '遥遥领先', '2023-09-26', '未知', 19693);
INSERT INTO `search_data` VALUES (121, '三国恋', '遥遥领先', '2023-09-26', '未知', 33546);
INSERT INTO `search_data` VALUES (122, 'Moonlight', '遥遥领先', '2023-09-26', '未知', 72951);
INSERT INTO `search_data` VALUES (123, '消愁', '遥遥领先', '2023-09-26', '未知', 54282);
INSERT INTO `search_data` VALUES (124, '是非题·2023', '遥遥领先', '2023-09-26', '未知', 25152);
INSERT INTO `search_data` VALUES (125, '大眠 (完整版)', '遥遥领先', '2023-09-26', '未知', 63818);
INSERT INTO `search_data` VALUES (126, '溯 (Reverse)', '遥遥领先', '2023-09-26', '未知', 32679);
INSERT INTO `search_data` VALUES (127, '红色高跟鞋', '遥遥领先', '2023-09-26', '未知', 12729);
INSERT INTO `search_data` VALUES (128, '错位时空', '遥遥领先', '2023-09-26', '未知', 80831);
INSERT INTO `search_data` VALUES (129, '算了吧', '遥遥领先', '2023-09-26', '未知', 12871);
INSERT INTO `search_data` VALUES (130, '天若有情（女声版）', '遥遥领先', '2023-09-26', '未知', 84572);
INSERT INTO `search_data` VALUES (131, '谁', '遥遥领先', '2023-09-26', '未知', 45501);
INSERT INTO `search_data` VALUES (132, 'Slow Down', '遥遥领先', '2023-09-26', '未知', 70201);
INSERT INTO `search_data` VALUES (133, '精卫', '遥遥领先', '2023-09-26', '未知', 92488);
INSERT INTO `search_data` VALUES (134, '像我这样的人', '遥遥领先', '2023-09-26', '未知', 67494);
INSERT INTO `search_data` VALUES (135, '姑娘别哭泣 (弹唱版)', '遥遥领先', '2023-09-26', '未知', 19923);
INSERT INTO `search_data` VALUES (136, '爱情转移', '遥遥领先', '2023-09-26', '未知', 54160);
INSERT INTO `search_data` VALUES (137, '想去海边', '遥遥领先', '2023-09-26', '未知', 27217);
INSERT INTO `search_data` VALUES (138, '漠河舞厅·2022', '遥遥领先', '2023-09-26', '未知', 44327);
INSERT INTO `search_data` VALUES (139, '水墨', '遥遥领先', '2023-09-26', '未知', 60267);
INSERT INTO `search_data` VALUES (140, '倒数', '遥遥领先', '2023-09-26', '未知', 90465);
INSERT INTO `search_data` VALUES (141, '心许百年', '遥遥领先', '2023-09-26', '未知', 53767);
INSERT INTO `search_data` VALUES (142, '下雨天', '遥遥领先', '2023-09-26', '未知', 27274);
INSERT INTO `search_data` VALUES (143, 'Wake (Live)', '遥遥领先', '2023-09-26', '未知', 50058);
INSERT INTO `search_data` VALUES (144, '触碰不到的你', '遥遥领先', '2023-09-26', '未知', 22036);
INSERT INTO `search_data` VALUES (145, '忏悔录', '遥遥领先', '2023-09-26', '未知', 69103);
INSERT INTO `search_data` VALUES (146, '最佳损友', '遥遥领先', '2023-09-26', '未知', 91919);
INSERT INTO `search_data` VALUES (147, '孤勇者', '遥遥领先', '2023-09-26', '未知', 66434);
INSERT INTO `search_data` VALUES (148, '让我欢喜让我忧 (Live)', '遥遥领先', '2023-09-26', '未知', 14426);
INSERT INTO `search_data` VALUES (149, '爱似水仙', '遥遥领先', '2023-09-26', '未知', 20516);
INSERT INTO `search_data` VALUES (150, '他不懂', '遥遥领先', '2023-09-26', '未知', 26417);
INSERT INTO `search_data` VALUES (151, '出现又离开 (Live)', '遥遥领先', '2023-09-26', '未知', 78451);
INSERT INTO `search_data` VALUES (152, '谁家', '遥遥领先', '2023-09-26', '未知', 59439);
INSERT INTO `search_data` VALUES (153, '我好像在哪见过你', '遥遥领先', '2023-09-26', '未知', 39895);
INSERT INTO `search_data` VALUES (154, '黄昏晓', '遥遥领先', '2023-09-26', '未知', 46145);
INSERT INTO `search_data` VALUES (155, '有些', '遥遥领先', '2023-09-26', '未知', 71050);
INSERT INTO `search_data` VALUES (156, '好久不见', '遥遥领先', '2023-09-26', '未知', 63403);
INSERT INTO `search_data` VALUES (157, '三拜红尘凉', '遥遥领先', '2023-09-26', '未知', 75953);
INSERT INTO `search_data` VALUES (158, 'Letting Go (Live版)', '遥遥领先', '2023-09-26', '未知', 46855);
INSERT INTO `search_data` VALUES (159, '爱你没错', '遥遥领先', '2023-09-26', '未知', 90519);
INSERT INTO `search_data` VALUES (160, '篇章', '遥遥领先', '2023-09-26', '未知', 70265);
INSERT INTO `search_data` VALUES (161, '命运', '遥遥领先', '2023-09-26', '未知', 48667);
INSERT INTO `search_data` VALUES (162, '偏爱', '遥遥领先', '2023-09-26', '未知', 84029);
INSERT INTO `search_data` VALUES (163, 'Normal No More', '遥遥领先', '2023-09-26', '未知', 88659);
INSERT INTO `search_data` VALUES (164, '最好的我', '遥遥领先', '2023-09-26', '未知', 33386);
INSERT INTO `search_data` VALUES (165, '失眠飞行', '遥遥领先', '2023-09-26', '未知', 10200);
INSERT INTO `search_data` VALUES (166, '她说', '遥遥领先', '2023-09-26', '未知', 45682);
INSERT INTO `search_data` VALUES (167, '最好的安排', '遥遥领先', '2023-09-26', '未知', 16386);
INSERT INTO `search_data` VALUES (168, '断线', '遥遥领先', '2023-09-26', '未知', 20642);
INSERT INTO `search_data` VALUES (169, '意外', '遥遥领先', '2023-09-26', '未知', 31723);
INSERT INTO `search_data` VALUES (170, '麦恩莉', '遥遥领先', '2023-09-26', '未知', 83672);
INSERT INTO `search_data` VALUES (171, 'Memory Reboot', '遥遥领先', '2023-09-26', '未知', 15756);
INSERT INTO `search_data` VALUES (172, '呓语', '遥遥领先', '2023-09-26', '未知', 42794);
INSERT INTO `search_data` VALUES (173, '天若有情', '遥遥领先', '2023-09-26', '未知', 78467);
INSERT INTO `search_data` VALUES (174, '梦醒', '遥遥领先', '2023-09-26', '未知', 13292);
INSERT INTO `search_data` VALUES (175, '天天', '遥遥领先', '2023-09-26', '未知', 34165);
INSERT INTO `search_data` VALUES (176, '假装快乐', '遥遥领先', '2023-09-26', '未知', 35132);
INSERT INTO `search_data` VALUES (177, 'Peter Pan Was Right', '遥遥领先', '2023-09-26', '未知', 77780);
INSERT INTO `search_data` VALUES (178, '离别开出花', '遥遥领先', '2023-09-26', '未知', 53728);
INSERT INTO `search_data` VALUES (179, '我的一个道姑朋友', '遥遥领先', '2023-09-26', '未知', 55036);
INSERT INTO `search_data` VALUES (180, '将故事写成我们', '遥遥领先', '2023-09-26', '未知', 38670);
INSERT INTO `search_data` VALUES (181, '删了吧', '遥遥领先', '2023-09-26', '未知', 29774);
INSERT INTO `search_data` VALUES (182, '行走的鱼 (Live版)', '遥遥领先', '2023-09-26', '未知', 77492);
INSERT INTO `search_data` VALUES (183, '乌梅子酱', '遥遥领先', '2023-09-26', '未知', 23153);
INSERT INTO `search_data` VALUES (184, '你走以后1.0', '遥遥领先', '2023-09-26', '未知', 52154);
INSERT INTO `search_data` VALUES (185, '年少有为', '遥遥领先', '2023-09-26', '未知', 86090);
INSERT INTO `search_data` VALUES (186, '富士山下', '遥遥领先', '2023-09-26', '未知', 39437);
INSERT INTO `search_data` VALUES (187, '喜欢你', '遥遥领先', '2023-09-26', '未知', 42414);
INSERT INTO `search_data` VALUES (188, '山茶花读不懂白玫瑰', '遥遥领先', '2023-09-26', '未知', 25269);
INSERT INTO `search_data` VALUES (189, '危险派对', '遥遥领先', '2023-09-26', '未知', 66020);
INSERT INTO `search_data` VALUES (190, '声音', '遥遥领先', '2023-09-26', '未知', 77245);
INSERT INTO `search_data` VALUES (191, '浪漫主义', '遥遥领先', '2023-09-26', '未知', 70659);
INSERT INTO `search_data` VALUES (192, '你想要的', '遥遥领先', '2023-09-26', '未知', 77936);
INSERT INTO `search_data` VALUES (193, '夏天的风', '遥遥领先', '2023-09-26', '未知', 59049);
INSERT INTO `search_data` VALUES (194, '失语者', '遥遥领先', '2023-09-26', '未知', 40495);
INSERT INTO `search_data` VALUES (195, 'But U', '遥遥领先', '2023-09-26', '未知', 66968);
INSERT INTO `search_data` VALUES (196, '海底', '遥遥领先', '2023-09-26', '未知', 90176);
INSERT INTO `search_data` VALUES (197, '我都明白', '遥遥领先', '2023-09-26', '未知', 29384);
INSERT INTO `search_data` VALUES (198, 'Head In The Clouds', '遥遥领先', '2023-09-26', '未知', 54421);
INSERT INTO `search_data` VALUES (199, '算了', '遥遥领先', '2023-09-26', '未知', 12703);
INSERT INTO `search_data` VALUES (200, '想自由', '遥遥领先', '2023-09-26', '未知', 20208);
INSERT INTO `search_data` VALUES (201, '字字句句 (Live版)', '遥遥领先', '2023-09-26', '未知', 20195);
INSERT INTO `search_data` VALUES (202, '我只能离开（忘不掉的）', '遥遥领先', '2023-09-26', '未知', 46818);
INSERT INTO `search_data` VALUES (203, '不将就', '遥遥领先', '2023-09-26', '未知', 21381);
INSERT INTO `search_data` VALUES (204, '岁月神偷', '遥遥领先', '2023-09-26', '未知', 19918);
INSERT INTO `search_data` VALUES (205, 'Always Online', '遥遥领先', '2023-09-26', '未知', 87917);
INSERT INTO `search_data` VALUES (206, '如果可以', '遥遥领先', '2023-09-26', '未知', 64176);
INSERT INTO `search_data` VALUES (207, '后来的我们', '遥遥领先', '2023-09-26', '未知', 18429);
INSERT INTO `search_data` VALUES (208, '山楂树之恋', '遥遥领先', '2023-09-26', '未知', 47202);
INSERT INTO `search_data` VALUES (209, '美人鱼', '遥遥领先', '2023-09-26', '未知', 73749);
INSERT INTO `search_data` VALUES (210, '骗子', '遥遥领先', '2023-09-26', '未知', 78356);
INSERT INTO `search_data` VALUES (211, '开往早晨的午夜', '遥遥领先', '2023-09-26', '未知', 20716);
INSERT INTO `search_data` VALUES (212, 'Love Is Gone (Acoustic)', '遥遥领先', '2023-09-26', '未知', 75523);
INSERT INTO `search_data` VALUES (213, '孤身', '遥遥领先', '2023-09-26', '未知', 47779);
INSERT INTO `search_data` VALUES (214, '或许', '遥遥领先', '2023-09-26', '未知', 41631);
INSERT INTO `search_data` VALUES (215, '想想就烦', '遥遥领先', '2023-09-26', '未知', 32267);
INSERT INTO `search_data` VALUES (216, '小半', '遥遥领先', '2023-09-26', '未知', 66841);
INSERT INTO `search_data` VALUES (217, 'Paint The Town Red', '遥遥领先', '2023-09-26', '未知', 59675);
INSERT INTO `search_data` VALUES (218, '我走后', '遥遥领先', '2023-09-26', '未知', 23831);
INSERT INTO `search_data` VALUES (219, 'Kunup Biraymu', '遥遥领先', '2023-09-26', '未知', 30787);
INSERT INTO `search_data` VALUES (220, '麻雀', '遥遥领先', '2023-09-26', '未知', 29219);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '$2y$10$L3anwAftmJSJO2d53IzRi.Oo4H7ibusnV1lbfLxrSgF6Z0asHUvty', '2023-09-26 10:44:42');

SET FOREIGN_KEY_CHECKS = 1;
