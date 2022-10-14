/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : wx

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 12/07/2021 11:20:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_info_list
-- ----------------------------
DROP TABLE IF EXISTS `user_info_list`;
CREATE TABLE `user_info_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unionid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qr_scene` int(11) NULL DEFAULT NULL,
  `subscribe` int(11) NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tagid_list` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `groupid` int(11) NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subscribe_time` int(11) NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subscribe_scene` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qr_scene_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info_list
-- ----------------------------
INSERT INTO `user_info_list` VALUES (1, '中国', 'o1NeOwXIsuBXvtdTnIsXM2afW1h4', 0, 1, '潍坊', 'oEq7rw8Ew7yvZlQCyAO3J-Hq4zr4', '[]', 1, 0, 'zh_CN', '', 1619407077, '山东', 'ADD_SCENE_PROFILE_CARD', '.net', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE0piarRDRt6fNacFY6Dp9Wr2ZIuowmZ6rUibfLuQibOpA4RO6S1DfBiaV1wacV74ziaiaIwvFwibGXVvZFJRL3UemZz3TP/132', '', '范夕辉', '13255360399');
INSERT INTO `user_info_list` VALUES (2, '涓浗', 'o1NeOwWwUd7WgqBqtNwWrpYAyKOw', 0, 1, '娼嶅潑', 'oEq7rwwy9qYsgkI77BQsPQBIMS-o', '[2,101]', 1, 2, 'zh_CN', '', 1596011724, '灞变笢', 'ADD_SCENE_QR_CODE', '璇稿煄婧愭櫉绮锤:濞勬爲鍐涳紞15666886995', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEKpjMYyW7P2YM7UpNicnbxvENYy7RIEBibXZTxUOTlL0hnA8KoeYiaKjtmMjZvJAN8icjYs5icbvp8iaeaA/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (3, '涓浗', 'o1NeOweS-4DRhYmqp4HXM7OSnU4o', 0, 1, '娼嶅潑', 'oEq7rw8uk3xB2AOaAFcYIOHXUPAc', '[]', 1, 0, 'zh_CN', '', 1602724252, '灞变笢', 'ADD_SCENE_SEARCH', '濂嬫枟涔嬭矾鍔犳弧娌�', 'http://thirdwx.qlogo.cn/mmopen/QAm7hEbaujTHcu7ibFgIGnJL1gDvwRCsVLsbuust2bHZMHicsOu399YevsYK76nARyTSOjKVWwdwmkG3cKc7iaRjA/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (4, '涓浗', 'o1NeOwfG7663DXAuCR-x9sgJelqU', 0, 1, '涓存矀', 'oEq7rw3RHWbsFPCaH-ucdWKOhSjI', '[2]', 1, 2, 'zh_CN', '', 1597311131, '灞变笢', 'ADD_SCENE_QR_CODE', 'Gao', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLCBU5XKHBmW4exicIJjicPk8nKzphT2HHrymCCqvIVDfN4HibJ9Umoics6RjnI3FeIzibtp7zLv0t2vQNw/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (5, '涓浗', 'o1NeOwSQc_nNDGeMoncqAaBobbOM', 0, 1, '娼嶅潑', 'oEq7rw1KTten-4MdRX1nAPiCsSi0', '[2]', 1, 2, 'zh_CN', '', 1596717708, '灞变笢', 'ADD_SCENE_QR_CODE', '璇稿煄婧愭櫉绮锤锛氬畞涓ヤ紵15864324333', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5FiaUNZIJ3icc0ia4EjOck8ibWPfhw79VAL75XMFhQpHtXedPibvnibqqkicTNB1j1HBG5OBcDY2Dnlg27g/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (6, '涓浗', 'o1NeOwcA4ghBDYuOZDwvbq0zePro', 0, 1, '娼嶅潑', 'oEq7rw_25a16CGS3ykDxBZJxZZ74', '[]', 0, 0, 'zh_CN', '', 1621050377, '灞变笢', 'ADD_SCENE_QR_CODE', '浜庝附鍚�13562603999', 'http://thirdwx.qlogo.cn/mmopen/Xib0hvw7mHbicBYqGAZNQ1fIPzTU41WPVSW8s4D0BI1dT0bNuVicIViaHXYnl4GKFOOz8tQiagDpqj6A8HiadJAdn2uE75au1aLjcP/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (7, '涓浗', 'o1NeOwTXxs7obfUkMw0Z3bVtie84', 0, 1, '娼嶅潑', 'oEq7rw5xu5Ldg_t0HCDwJOw3SPrw', '[2]', 1, 2, 'zh_CN', '', 1607061999, '灞变笢', 'ADD_SCENE_SEARCH', '绠℃仼杩�13656366608', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM68hWTQxiadSF2iarmkGnHTGSGCqJhcgFIphTodxA4rIic1fhpuNEGiaQBHrX0qRb0OxMS2BVXVIbaFXQ/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (8, '涓浗', 'o1NeOwQTGXt07jC6pxm5Fxvt-k80', 0, 1, '娼嶅潑', 'oEq7rw10YkNw_TH7MfTW8EjsRG1A', '[]', 1, 0, 'zh_CN', '', 1596704721, '灞变笢', 'ADD_SCENE_QR_CODE', '璇稿煄婧愭櫉绮锤', 'http://thirdwx.qlogo.cn/mmopen/Xib0hvw7mHbicBYqGAZNQ1fFY3S1L2RA9g5OqcgljaeykHjKrBJibxhVrpVsa1JVic3m7tsDX3BkEL7ZnkNnDvKVx1icMe9FzaAfN/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (9, '涓浗', 'o1NeOwZbxXPJPafClfWYi3HYfIOo', 0, 1, '寰愬窞', 'oEq7rwyYrQaK2rb9Co7e6ZAaFHsY', '[]', 1, 0, 'zh_CN', '', 1609647167, '姹熻嫃', 'ADD_SCENE_QR_CODE', '姹熻嫃寰愬窞  寮犲畧鏄�15050835187', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM55B3wSNqFt3w0zdTSWib9AkibrVicaVRMqCxGlXdicXqiaZG9KX000eOQxjDBiczQEr8vnWC8ibCSYUia2WA/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (10, '涓浗', 'o1NeOwdBpX2k4cOTuwPa3o_FG2HM', 0, 1, '鐭冲搴�', 'oEq7rwyH4Gr5cTBlZRnBsinIRx6k', '[]', 1, 0, 'zh_CN', '', 1619427647, '娌冲寳', 'ADD_SCENE_SEARCH', '杈版湀鍗佷簩', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAynzWn3U4icRVy13j89Rf3eIPwekJqDSxsflA45wtY64vuzJhFBC7JHrTxUsrcP0qYpcx7eDjmx0g/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (11, '涓浗', 'o1NeOwXIsuBXvtdTnIsXM2afW1h4', 0, 1, '娼嶅潑', 'oEq7rw8Ew7yvZlQCyAO3J-Hq4zr4', '[]', 1, 0, 'zh_CN', '', 1619407077, '灞变笢', 'ADD_SCENE_PROFILE_CARD', '.net', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE0piarRDRt6fNacFY6Dp9Wr2ZIuowmZ6rUibfLuQibOpA4RO6S1DfBiaV1wacV74ziaiaIwvFwibGXVvZFJRL3UemZz3TP/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (12, '涓浗', 'o1NeOwZgKlax5aykKOPD5xsrZzXs', 0, 1, '娼嶅潑', 'oEq7rwwztyxqeLoBPHkvkRPoP8HU', '[]', 1, 0, 'zh_CN', '', 1611789503, '灞变笢', 'ADD_SCENE_QR_CODE', 'A鐜夌背鎺ヨ揣璇稿煄鐜嬪繝鑳�13356751239', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWQIXmVxRpVicnQY2O1BoI62xsic9pzXVo7SdFfmhbJl4WcIO7cZUmdstbUdp3Wg6AKvVdTYtOzj3POWDcpaic8RTDO/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (13, '涓浗', 'o1NeOwcwMf85n9R7nYQZ_Z1lZIuI', 0, 1, '娼嶅潑', 'oEq7rw0kSeI3AT7dr_IY6xhEkyfg', '[2]', 1, 2, 'zh_CN', '', 1596721023, '灞变笢', 'ADD_SCENE_QR_CODE', '椋炶穬骞冲嚒', 'http://thirdwx.qlogo.cn/mmopen/QAm7hEbaujR3G6V455ZGh3Yicg1wnHZgXelHYR7iaRKrNeIiadQM90Lh9SOWz3P2Gn9uEsHJKHoW6ZEqds5Yd7p6w/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (14, '涓浗', 'o1NeOwYsD_jX4ZGRji1wGpdRcV6M', 0, 1, '闈掑矝', 'oEq7rwxrg6NIngn2Ovqvj31mBY0w', '[2]', 0, 2, 'zh_CN', '', 1595301733, '灞变笢', 'ADD_SCENE_QR_CODE', '閫熺編鐗笹PS鍟嗗姟', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaFwI4Cm5TJP3e1ce3UtSyZQaIYtab3psCkwSrPPAQSZ0xnEh9LVRZA6R1OvicZtrsRAH3LF8GnE8hR3BWPtWmibWy/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (15, '涓浗', 'o1NeOwSCBh3nP3f2i1xU4ShWVqk4', 0, 1, '娼嶅潑', 'oEq7rw2fxy3j3bfNwuhklfvHeY1s', '[2]', 1, 2, 'zh_CN', '', 1596708264, '灞变笢', 'ADD_SCENE_QR_CODE', '璇稿煄鏉庡啗13506467663', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWQIXmVxRpVicncRdallwcTubgfK8j6136yOG0cKCsYMQ0FNDos09L3YiciaLLZXBNBjgJG7wwgKa1iawtwN5SQmTGmv/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (16, '涓浗', 'o1NeOwXdtK2I8e8KaZRg8-v2lMHk', 0, 1, '娼嶅潑', 'oEq7rw1roIc6_riaGCwlBN4dlZOE', '[2]', 1, 2, 'zh_CN', '', 1596698773, '灞变笢', 'ADD_SCENE_QR_CODE', '璇稿煄婧愭櫉绮锤-瀹夋煆鐓�-13371450888', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaELNXxJk3X2ia8mMktGBSe7a8FvMoquG1VicMSSuetc7K9e0GO5WeRt9jJSbL3bxe2nfNRQMNusdeOfg/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (17, '涓浗', 'o1NeOwVint3xKUAhKTd9Pi7NItKg', 0, 1, '娼嶅潑', 'oEq7rw-TODUfTi83hsPUYyPyLTXM', '[]', 1, 0, 'zh_CN', '', 1607405017, '灞变笢', 'ADD_SCENE_SEARCH', '鏉庝寒', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE0piarRDRt6fNRq0fSGcLSvA7icmRfYocyeiapvRmmIiaBADBibNe8eZZueW658iazdraiaTeDHdH3e7jIm7R0WqYRnSkN/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (18, '涓浗', 'o1NeOwXMwIvZFfRc1b3qIGNWXGW8', 0, 1, '娼嶅潑', 'oEq7rw4MSOyYLiLSKH5J3GudGEj0', '[]', 2, 0, 'zh_CN', '', 1608031903, '灞变笢', 'ADD_SCENE_SEARCH', '寮樿僵鍐滀笟 锝� 鍒樼帀宄�   13666361556', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLB6bFjCUhqT4dbKicOQIcWXFETgUVu6T6SEymyavTsw1mneEYoNZ78kqNNkWkfsicdsMu7EB5lcn2hA/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (19, '涓浗', 'o1NeOwfGAq2L6GKCsADSELbpYNlk', 0, 1, '娼嶅潑', 'oEq7rw4Pr8csy2h3-gjc_10cq-vY', '[]', 1, 0, 'zh_CN', '', 1607862697, '灞变笢', 'ADD_SCENE_QR_CODE', '娼嶅潑瀹忓悏绮补瀛欏鍕�13806470233', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6InK1Cf6P4cf7VTx1WXLzic94l9sJKzPV0jnVTDDfC4kWqvlwcHZ4licc0SjqwBI7lw0p0ibPPzVApxDF8eR89kAZibqJ3XW5Y15E/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (20, '涓浗', 'o1NeOwePs2F9vzEahWrHPR6GQhog', 0, 1, '涓存矀', 'oEq7rwxfREKmcrl4aLAzEFxO6ZMA', '[]', 1, 0, 'zh_CN', '', 1615717197, '灞变笢', 'ADD_SCENE_QR_CODE', '寮犲媷13705498082', 'http://thirdwx.qlogo.cn/mmopen/Xib0hvw7mHbicBYqGAZNQ1fK9licCChqwHGNuO6llISknU4gEvRdYw7PjGu6mODhupc3wf4J47RydC5IxOrSdibmFiaJJPluLBzR3/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (21, '涓浗', 'o1NeOwSR2jlJAsJ27NK9ZF188-w0', 0, 1, '娼嶅潑', 'oEq7rw-k2MlOV79PvVtIf2fj0v-Q', '[]', 1, 0, 'zh_CN', '', 1607348763, '灞变笢', 'ADD_SCENE_QR_CODE', '瀹夋簮绮锤', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE0piarRDRt6fNeDX4EZ9iaLhlT2pOF5RGg0BFYaIG3libHFyT0aKFNOQZ2cR46AMFHn81iaMYDVFOibDrEparwjauQ3W/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (22, '涓浗', 'o1NeOwUt65LplP5MY8pi1rNSNzbQ', 0, 1, '娼嶅潑', 'oEq7rw5ZqBTngYKqsV-ODVDebUZ0', '[]', 1, 0, 'zh_CN', '', 1611789603, '灞变笢', 'ADD_SCENE_QR_CODE', '钁ｈ緣', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE0piarRDRt6fNT44kSryNMMoKgEIrVaxiaPVpUIKb6c9TZiaX49VAN5sYsU1zD9751YA19QySxXiaOKnmOXctiawOGwv/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (23, '涓浗', 'o1NeOwfKQEdCoNoeNXuKZGA3k8y8', 0, 1, '娼嶅潑', 'oEq7rwyiMM5-M7zaQPyGsWu4hkyE', '[2]', 1, 2, 'zh_CN', '', 1596717610, '灞变笢', 'ADD_SCENE_QR_CODE', '璇稿煄婧愭櫉绮锤锛氬垬姝ｅ府15715497877', 'http://thirdwx.qlogo.cn/mmopen/QAm7hEbaujSOMkpicj9TlVicx1WEicWicZSPiahRjeBVRhQ1pInqa9qh0tzfuZruPnzByzp1oOdYwTPHjCf0xquhD8A/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (24, '涓浗', 'o1NeOwYtfgk4DxIafhMc4EpngdhU', 0, 1, '涓存矀', 'oEq7rw0uc8n1aGf8Vmm9t5cyjs3A', '[]', 2, 0, 'zh_CN', '', 1610087666, '灞变笢', 'ADD_SCENE_QR_CODE', '灞变笢鐜夌背璐攢闂甸潠闆�13791598168', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaHkMcB8tKiaJa9NAhIX5DYAibwibGA7toicNT8l6AUENPYsqrciawkxctmiavz3zbN0Jh5N0aytRrgoWyIbLNAia66Yey7/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (25, '涓浗', 'o1NeOwVOCaSukezlkgVBwEQXFXfg', 0, 1, '娼嶅潑', 'oEq7rwz2XC_suj0Zx1oplj1LUX7w', '[]', 1, 0, 'zh_CN', '', 1607386950, '灞变笢', 'ADD_SCENE_QR_CODE', '钖涚淮娉�', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaFsZQyun1JzA6OxI5xMauKHibMAVUT8ffwbajgJeBjgL0aRGmnPSQetMmkJL9RibYiaMzwkg3G1ib0Ead8DjMO1l7k5/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (26, '涓浗', 'o1NeOwYlX64UPmVbJo0CFNMfybhk', 0, 1, '娼嶅潑', 'oEq7rw6VA8AivZ0HylSp7gV6qfMI', '[2]', 1, 2, 'zh_CN', '', 1596699632, '灞变笢', 'ADD_SCENE_QR_CODE', '闊╃珛娉�15753648777', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaEZ0TO6d1sHm9hR95d0A6f1XJjGOBgksJBL3BT9Yo0cJsoLAqN6cLHh6YHpNtHVZzlNQBwqUvFaBh5n8HwV74AS/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (27, '涓浗', 'o1NeOwZRmxXXdzmdClpSTff18Ya4', 0, 1, '鍙岄腑灞�', 'oEq7rw4aKsoA2kCNp6CewLB0g1xQ', '[]', 1, 0, 'zh_CN', '', 1610322379, '榛戦緳姹�', 'ADD_SCENE_QR_CODE', '瀹濇竻鍘垮啹娴╃伯椋熻锤鏄撴湁闄愯矗浠诲叕鍙�', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWQPwTzBfia0kYnujeSicKoUTicka37r0OB6uNK2zeAic24d2YQasRxImQ8ry5YmgM19bu1pvrzgxVbzsbY7Cp0bSTsG/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (28, '涓浗', 'o1NeOweuHWXdzSKSfARhprJafaIY', 0, 1, '娼嶅潑', 'oEq7rwyqT2O8srMFhS31cK8E2p6U', '[]', 2, 0, 'zh_CN', '', 1607083026, '灞变笢', 'ADD_SCENE_SEARCH', '顚�', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaHkMcB8tKiaJaibNvlfCJcNRqkmgloPxrgS64jTiahBTHY2Q27CX662N5EayydOMvPLUU6Lpl72fmtIBRyhQS0kgk4/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (29, '涓浗', 'o1NeOwdu40bltvFnqeiXD_GxxU6A', 0, 1, '娼嶅潑', 'oEq7rw6qELuqwmizlpb-UJ_UxJbU', '[2]', 1, 2, 'zh_CN', '', 1597212571, '灞变笢', 'ADD_SCENE_QR_CODE', '灞变笢璇稿煄鑻楁案娉�', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaHAwV3aBU40LfylQQ0Bu0afmbzat4HIkGibN9pk7Bn2diba5O3VExsCbXHibbd91lmCYP2J6acBxRPVI4Czqeta32Q/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (30, '涓浗', 'o1NeOwdgVquUmaH5UDtARxKoP7T4', 0, 1, '娼嶅潑', 'oEq7rwzzPZ96hIRIdpx_qFgYY9N4', '[]', 1, 0, 'zh_CN', '', 1607930165, '灞变笢', 'ADD_SCENE_QR_CODE', '楂樺瘑锛屽吇娈栬壊閫夌帀绫冲寘瑁咃紝鐓ょ偔鎵瑰彂', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaHUCZZ0M1QckciaWCHaHk6Po2w9PibVp4yK9jkoeexGp40vkR7HCmUXaRRXm4hZGxzvklWw4Jiczft4e4zK4spSmN5/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (31, '涓浗', 'o1NeOwUvL38vVdzwlzlUq6JJ33YI', 0, 1, '榻愰綈鍝堝皵', 'oEq7rwy0A4YgdjSlwRUcgBgEYo08', '[]', 1, 0, 'zh_CN', '', 1608439719, '榛戦緳姹�', 'ADD_SCENE_QR_CODE', '娴瓙杈夌厡', 'http://thirdwx.qlogo.cn/mmopen/QAm7hEbaujSGV3dmhqH10JKbS4MnicEsjqiafm12sAxRbSYEaIiaJbcwv4ibETsgbRcFxHyLbice7WOnQZCC3y8kQCHYTXnFtfbHM/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (32, '婢冲ぇ鍒╀簹', 'o1NeOwRXTwyBFLBUxGcxO_m6SYp8', 0, 1, '澧ㄥ皵鏈�', 'oEq7rw2Lj_3eC3QnG8OxmgQnYT-A', '[]', 1, 0, 'zh_CN', '', 1602582975, '缁村鍒╀簹', 'ADD_SCENE_QR_CODE', '鍜�', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWQPwTzBfia0kYu8B1qkkd5anpKgic7jmBOktEhSnNnHfLUGI2EzrGSecNIRsW6rxaqvqZnFPcsx7Wf30qkC2Xo6b4/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (33, '涓浗', 'o1NeOwTLOo1MkMvQsdwDhg5E3IBQ', 0, 1, '涓存矀', 'oEq7rw202wuc8O2pnptrFhSUpujI', '[]', 2, 0, 'zh_CN', '', 1612427376, '灞变笢', 'ADD_SCENE_QR_CODE', '楂樻枃闈�', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaHkMcB8tKiaJaxVDVxbeg5ia6ZtydzYE66meKbNMce3HPafjicXnfibgcykcJd3PFQvqy7DRz2dibV3glbMOY8sQx1mic/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (34, '涓浗', 'o1NeOwfdy4M3vlVtLNU-T6inOhb4', 0, 1, '鍝堝皵婊�', 'oEq7rw1_eMPFTBBBNPEElgfp4tOs', '[]', 1, 0, 'zh_CN', '', 1613352421, '榛戦緳姹�', 'ADD_SCENE_QR_CODE', 'A榛戦緳姹熷紶浼�15561808086', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWQ636kLTBf6ibPSJxuBibx48MibaNhr1bic7svbZ7zsQD0Rqgp6tTJtTkf8EicMCrUy8zdVqAibNeMoRgTQ2GDMfLLs4C/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (35, '涓浗', 'o1NeOwWqTXJhbac80GxE5nrDVK-8', 0, 1, '', 'oEq7rw1VqtkTDiUbxIOthkf1_t50', '[]', 0, 0, 'zh_CN', '', 1607931896, '灞变笢', 'ADD_SCENE_QR_CODE', '钂嬫椽娉�', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaHkMcB8tKiaJa5uJbDib3xKibTichszfmB35JVejHF6P9L2DT9DgUApfDz3L0fAG8CMicYicZenRzyh5IqQZgHfcYVmHT/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (36, '姣斿埄鏃�', 'o1NeOwXge0gadr03Ngvfdv2cAkOU', 0, 1, '', 'oEq7rw-7vvsf0tVpUDgocsmdAnrA', '[]', 1, 0, 'zh_CN', '', 1611981480, '', 'ADD_SCENE_SEARCH', 'While.', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE31Cw2IReWqHKnvjdaLUPRaNt85cbmVOxWs1m557OUYr1cJpuzPDic9xqF3MpKmWrJ0QDC60pBM0fHkRK0AibkMZic/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (37, '', 'o1NeOwZHkQn8o_6bWgWqSm-umQsU', 0, 1, '', 'oEq7rw50rItu1m9ma_CMe35uYe0M', '[]', 0, 0, 'zh_CN', '', 1610972287, '', 'ADD_SCENE_QR_CODE', '鐜插瓙15610195828', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWTVOzR4Ahsd6cZIj1F6aFcaO1ajEicbtNNicGEnINpWsWa5dmnf2yQGSMmG5CWJ6Jz4ERWHJeJaJclw2ic9icTBH4fD/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (38, '涓浗', 'o1NeOweYTUTTZn2YEti7eLqWo9o8', 0, 1, '缁ュ寲', 'oEq7rw06FqXIowGs1j4Ma70GpXGo', '[2]', 1, 2, 'zh_CN', '', 1597011425, '榛戦緳姹�', 'ADD_SCENE_QR_CODE', '鐜嬬浉娉�13846784455', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaFibDLUPI8wzMzReH7lufHt5H2R0xA7RdPMFmBLoQDukAHTnczDGccD0xv7NicQFZKBGsKCzNXibfe7C32Y1I1kWAs/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (39, '涓浗', 'o1NeOwZ0BvotZh3n_E985Zhv42Lc', 0, 1, '鏋ｅ簞', 'oEq7rw1h_EStxJAm403SkG4xtIYQ', '[2]', 1, 2, 'zh_CN', '', 1601770645, '灞变笢', 'ADD_SCENE_QR_CODE', '鏋ｅ簞瀛欏欢骞�', 'http://thirdwx.qlogo.cn/mmopen/yeI9nrk16kS3q1gl6EHwg3gq7lO0ibRLRBQO21VqSOhcbgHaDickTIJCnKvE8k8ibBnowDMcF6UDfY2Aia3aUFARevnltPTicnJ6q/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (40, '鏂拌タ鍏�', 'o1NeOwZNUOLjnG-GTJ-X6-umXiiY', 0, 1, '', 'oEq7rw-ezm76Ueawmvof4-e2ToQk', '[]', 1, 0, 'zh_CN', '', 1597060726, '鏂版櫘鍒╄寘鏂�', 'ADD_SCENE_QR_CODE', '璞″笨鍗庡寳妯婁赴', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWQyKzHOT3kaCDyS2z7aMqEmr6Ax7ibxKbiaahib4YQWXjtEG26icvv0E61l1UjzZUuICTy5IiaM8JSlxPoR3kuFPVv4s/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (41, '涓浗', 'o1NeOwciITxw_yFbZcli2vD-r6x8', 0, 1, '闈掑矝', 'oEq7rw1-sdzRVXw6FeO_uqqkIFMw', '[2]', 2, 2, 'zh_CN', '', 1596699635, '灞变笢', 'ADD_SCENE_QR_CODE', 'LH顎�', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWQPwTzBfia0kYoCsrSJFN5S943sNznQib7hKuTjicTAFD3wkQ03Twq0a4IudnOq80LtvzhyAO0pqGaWIeOHofNtjzR/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (42, '涓浗', 'o1NeOwXu5dizhxz89NkZHUTRFews', 0, 1, '姘逛粩', 'oEq7rwyOOtfm-3gg9k6u38pH9r8E', '[]', 1, 0, 'zh_CN', '', 1617585943, '婢抽棬', 'ADD_SCENE_SEARCH', 'ZHANG', 'http://thirdwx.qlogo.cn/mmopen/QAm7hEbaujSGV3dmhqH10FY7Gz7db1GdTwZqhS1bcakRAQMO0fHcFQ4rwEZwLbLib1TenPjMC8F1n1lxlKLQbBvIJo6LRKvow/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (43, '', 'o1NeOwWgOo1CD5tRg0VLsqbjyOxY', 0, 1, '', 'oEq7rw0q-3OVF6Hu_53owkgtRIEI', '[2]', 2, 2, 'zh_CN', '', 1596708606, '', 'ADD_SCENE_QR_CODE', '瀹帤宄�', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE0JicHrhwtenAEfGQ7Ibdaz1CU2VORLhGPOY6wGUJPRzI5ncQR674cwLm83ftlr0m7nsiaGEPnCnnKgDDNRb2yxmY/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (44, '涓浗', 'o1NeOwXN4Oo5JOcSDsaZwXaiKNhs', 0, 1, '娼嶅潑', 'oEq7rwyRNNB-cUshzIgXU6qxKIjQ', '[]', 2, 0, 'zh_CN', '', 1608439219, '灞变笢', 'ADD_SCENE_QR_CODE', '闄堢憸', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE00RufHZTk2gUaOBnicPcna1FWHcVUCMH1bbib7GrGOArcX0IL6Xl3FdQYNFYxGlao5rNVSJW36HicPR67kdofV2WC/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (45, '姣斿埄鏃�', 'o1NeOwfiBp-4gV-uurYgdH_wdhF8', 0, 1, '', 'oEq7rw8nhubRu1GJXYR237q84WGg', '[100]', 2, 100, 'zh_CN', '', 1595301691, '', 'ADD_SCENE_QR_CODE', '馃悾 鎳掓噿馃悾', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE0rFtDoFqJpaWnZbvcgiaYjsBdrKudMW1qazkbsJicfDkGJcMg5szkxu9Nyzaf39icyXXox1ibWws9m6vslic8ZsU0JH/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (46, '涓浗', 'o1NeOwZ3KxxSRVzWYc3lcD-Bwby4', 0, 1, '娼嶅潑', 'oEq7rwwDwY7Dovlg_rDC-H1Ksu7c', '[2,102]', 1, 2, 'zh_CN', '', 1601887976, '灞变笢', 'ADD_SCENE_QR_CODE', '璇稿煄鐜夌背鎺ヨ揣閭辩珛蹇�15964579825', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWRbv2E9iareC7RibtyJZn2icVx9OTv9cMeF9782ONSD0iaXvKcCSUzz5BcNByCz31yeVfPoH4q631J32vxUy941tZAj/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (47, '涓浗', 'o1NeOwUSN3qUxJRSIVSEPmaNdmw4', 0, 1, '娼嶅潑', 'oEq7rw49Vyn9Mh4ES7fXQOz8OHZo', '[2]', 1, 2, 'zh_CN', '', 1607072057, '灞变笢', 'ADD_SCENE_QR_CODE', '閫勫鍥解劇鹿鲁鈦光伓鈦粹伔鈦碘伒鈦光伓鈦�', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaHkMcB8tKiaJaxFOxSCUuPVltx3QysUTUBOt6OvQSd8aYMzmDo3qGY8aqnoqxYC7PFRGOucWTy0IibWz7icg3eZic3U/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (48, '闃垮皵宸村凹浜�', 'o1NeOwTKTZRXGT7-R1RstRwq9u4o', 0, 1, '', 'oEq7rw8ou6WlR479IuLRnTf-9TSY', '[]', 1, 0, 'zh_CN', '', 1595670753, '', 'ADD_SCENE_QR_CODE', '绗竴鐜板満+浠ｇ悊瀹¤溅', 'http://thirdwx.qlogo.cn/mmopen/QAm7hEbaujSGV3dmhqH10DadI0MjZBBiaOXnF9enqvPKeQiclQib6jNIshg7ra0QibqnDsLqYbUNjftQ5Qk1P8PbvZlV03CBCuRj/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (49, '涓浗', 'o1NeOwXEb_VsR3dontbKzIA4ZM9k', 0, 1, '娴庡崡', 'oEq7rwyj3sKpcEzclwzGjk19sm8s', '[]', 1, 0, 'zh_CN', '', 1605000659, '灞变笢', 'ADD_SCENE_SEARCH', 'A15563482929', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWQPwTzBfia0kYnxlwK0ky5YDYJesNzJ0eZKkZ8wb2wvhO0RGe8g2bGuCT1f3fB861zuqP6A4iaEsicySkdkXxBJTGD/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (50, '婢冲ぇ鍒╀簹', 'o1NeOwQM4ghLpkoffJYqpBKuzGnU', 0, 1, '澧ㄥ皵鏈�', 'oEq7rw7nJTbUOZpajU8xTPAEM0VU', '[]', 1, 0, 'zh_CN', '', 1595670613, '缁村鍒╀簹', 'ADD_SCENE_QR_CODE', '閫熺編鐗笹PS骞冲彴@15621419777', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLDNxDtdyial6RcYJe6n28P0F5VSMyfQRQcvNNxicZ7u9epPWxaZSlTBIhXH6iarnQzzNgP9DbLibRomGPUE86GIBRPEN2lyFO1ibxpc/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (51, '涓浗', 'o1NeOwdTAYItg9p305Fec6R8opvk', 0, 1, '娼嶅潑', 'oEq7rwyxQ9_TmFSsJpB_PayZTDUs', '[]', 1, 0, 'zh_CN', '', 1607645165, '灞变笢', 'ADD_SCENE_QR_CODE', '璇稿煄寰愬痉鍗�13964655810', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWQPwTzBfia0kYmqzxiaVQdeGBANlZLA5tED0aib7h4AAduE9IeePMgiaEU5dNHgUlzxLvJBpWwf73zhCuLwNwXMzPks/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (52, '', 'o1NeOwS45NBPvG0LO_6E7NPQ9gFw', 0, 1, '', 'oEq7rwx2F2pYumU6xLpdghOHs8Dg', '[2]', 2, 2, 'zh_CN', '', 1596709989, '', 'ADD_SCENE_QR_CODE', '璇稿煄姊佽姵13465360745', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWRd6kCtosHJNcao0gWOx80qIrfOX39QcCLouVzCqkyO6L5f3yA0OZvSUoq5l5hhCeWylMWFMFZPthQJkSvn9NaM/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (53, '涓浗', 'o1NeOwc67H3IgaLTLtQDQ5FKCTYE', 0, 1, '涓存矀', 'oEq7rw3iZjOlcfKHk1lc6MKi2xl4', '[]', 1, 0, 'zh_CN', '', 1611622493, '灞变笢', 'ADD_SCENE_SEARCH', '楂樺崼涓滄矀姘磋瘹淇＄伯璐�13153901770', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaHkMcB8tKiaJa9eskiayjTY9H8aj5SRaASIE6BSMicDJv5ic8iav81GqEZpkqEFiaVZjDM0VX1DnfQkhhfBAqnAG5KPuB/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (54, '涓浗', 'o1NeOwWeziQAle1C6v6VbSzhol8I', 0, 1, '娼嶅潑', 'oEq7rw0iRXuPi_jDd1-f3Eq04OWo', '[2]', 1, 2, 'zh_CN', '', 1597060733, '灞变笢', 'ADD_SCENE_QR_CODE', '瀛旂ゥ瀵�13953671652', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE00RufHZTk2gcmO5HW04IAQ7ibungURDkgichDedNpoDR5vNDCIMegKBpGrwnXf964RJ0Zic5NQupPfyicumqq7R20ic/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (55, '涓浗', 'o1NeOwU9WsWhwtw0dihHKLNGHv8c', 0, 1, '閫氬寲', 'oEq7rw1Nm9pkeXm0cdD6LzznXDY8', '[2]', 2, 2, 'zh_CN', '', 1605337221, '鍚夋灄', 'ADD_SCENE_QR_CODE', '榄忚嫳15943727789', 'http://thirdwx.qlogo.cn/mmopen/yeI9nrk16kS3q1gl6EHwg6zS0dqvGe9LZ8qBbytk4Cm4XZsKWHs4kcosCicfXMUWWVRvJa5bCmsn7YiaQnC7KLVHjLh6nfrs0ic/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (56, '椹皵浠ｅか', 'o1NeOwXVd2YOh5L22qO6qU8PCIvk', 0, 1, '', 'oEq7rw3ra7iirzjYG_pahDGU12IE', '[]', 1, 0, 'zh_CN', '', 1607069759, '闃挎潨', 'ADD_SCENE_QR_CODE', '寰皹', 'http://thirdwx.qlogo.cn/mmopen/QAm7hEbaujTkEKTpgOAA5jQhrqUWIIz65Aeno8szRIwEEeJb6VXWrTpz9WDS2U5BicaIvdcLlE7wI91o5ibtC4hicO4C1AiaLrE7/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (57, '涓浗', 'o1NeOwWErgUqBzf3BnHS-cv8WKR0', 0, 1, '娼嶅潑', 'oEq7rwy4Vr3hXLlS24Mj_GgYT3qY', '[]', 1, 0, 'zh_CN', '', 1607679476, '灞变笢', 'ADD_SCENE_QR_CODE', '灞变笢鏄ラ槼绮鏈夐檺鍏徃-鐜嬭緣', 'http://thirdwx.qlogo.cn/mmopen/TYCJ1ibx59v0me3sDsXiaicPg1XzgrlDSDx9qhtsFTVXoUOibebCfCCtz5TXvBfsnGj6k3ENgdEnIp5SdiavXw2nUzU7HQZvhqxuJ/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (58, '涓浗', 'o1NeOwWjf8dqx2-5CPZJfImQ0eNQ', 0, 1, '娼嶅潑', 'oEq7rw-RZsHhvWAdoxmr21WbEvcs', '[]', 1, 0, 'zh_CN', '', 1607760154, '灞变笢', 'ADD_SCENE_QR_CODE', '楣夸鸡鍐�', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE35ZXkMibsppLWibLiax04B1KmxSwMpr2nVDyaLA9ASBAJ99VoRj3M4CDaKIamBQlpOcAiaO1C16eDnq9dmhXSgHmyq/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (59, '涓浗', 'o1NeOwVQ7x1u3HguYhj3y18wHkkc', 0, 1, '闈掑矝', 'oEq7rw_jqK7Hfb2odsNG47oF1av8', '[100]', 1, 100, 'zh_CN', '', 1595293531, '灞变笢', 'ADD_SCENE_QR_CODE', '鑹烘磥', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaHkMcB8tKiaJa3MOwCj1LTX0Eno3NQZ31dREdYdx4Kwibce0Hic1gzrMy758bXDkJ2GRXynLZ1CJIRaQghX4Ra3D4t/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (60, '涓浗', 'o1NeOwfuQvlaJKQCiQGH8IcH2s_M', 0, 1, '鍝堝皵婊�', 'oEq7rw_FdNt4ccBAeR6fa30WVF8E', '[]', 1, 0, 'zh_CN', '', 1598701027, '榛戦緳姹�', 'ADD_SCENE_QR_CODE', '澶╄摑钃�', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE00RufHZTk2gf6QJaSfhicAIuwh2YlHMeoB8Cuds6MSO9n18ia2RwHUYZ3ChVXwBlKeUOLtUh5w7wNh0Jia5nSfk81/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (61, '涓浗', 'o1NeOwUV3tLp5n9_Ea_S2vE8wd2c', 0, 1, '鏃ョ収', 'oEq7rw3Y4e63faAZxQepqzPuW4ng', '[]', 2, 0, 'zh_CN', '', 1598512411, '灞变笢', 'ADD_SCENE_QR_CODE', '琚佷笡濞�15906339255', 'http://thirdwx.qlogo.cn/mmopen/QAm7hEbaujSGV3dmhqH10BWyVZDdtzicLH0GXwmcLMibcT4ScUjfAvTjhUmVH0qytFeswLriaJDBkOwGdo8EmdXTdaqMmVCmCLia/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (62, '瀹夐亾灏�', 'o1NeOwSVz6rc4vL9C_v9U_bXZP6U', 0, 1, '', 'oEq7rwwYCxwc0mQpd0KePpaBLZgw', '[2]', 2, 2, 'zh_CN', '', 1596700457, '', 'ADD_SCENE_QR_CODE', '閲戣胺绮锤', 'http://thirdwx.qlogo.cn/mmopen/yeI9nrk16kS3q1gl6EHwg8vQ4q7yH90jbjFYJA9gcnP6SvNB6WJulayYqrVL587qybNibtJjAWwPDp4yblECY0LGiaiajaU9MEa/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (63, '涓浗', 'o1NeOwW5Q4_Ql125_ec0ngYJJxTY', 0, 1, '缁ュ寲', 'oEq7rwxIm1gojdbdA43W7bxmxL14', '[]', 1, 0, 'zh_CN', '', 1605338072, '榛戦緳姹�', 'ADD_SCENE_PROFILE_CARD', '淇濇姢浣�', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWQPwTzBfia0kYgY0l0LSjFHUypZ35ylN7awDzULWiarpO8ab4H6pBlxEsaoLq3kVyCUKxyUo2kImYbzQYRDd9xicKk/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (64, '', 'o1NeOwf6WQvoIkBPft_vLpa7e_0w', 0, 1, '', 'oEq7rw9SrhtZzEcY3gm9xa_T6VN8', '[101]', 0, 101, 'zh_CN', '', 1595213889, '', 'ADD_SCENE_QR_CODE', '瀹㈡湇2161888', 'http://thirdwx.qlogo.cn/mmopen/QAm7hEbaujS7bmtTvjwibWu6EkjfJJjibiayhoKDCGMSEdCxUdjqqHrDPvEhC0ILYfib83JEzIyCib6H9vhTxQLDGs79Oh92q5L8D/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (65, '涓浗', 'o1NeOwWAIa640nGydJ-rCCLPh8LY', 0, 1, '璁告槍', 'oEq7rwyEK16UAwWutzoxZVayRIMI', '[]', 1, 0, 'zh_CN', '', 1607140166, '娌冲崡', 'ADD_SCENE_QR_CODE', '璁告槍閼簮绮锤13213395557', 'http://thirdwx.qlogo.cn/mmopen/yeI9nrk16kS3q1gl6EHwgzJ0XEF8LwpLO3yW1IEfc1WK5O17NbkStkL4gzonh2Rw2rNqibicuNfzvn99odofRKZN9AtL6z59Lu/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (66, '涓浗', 'o1NeOwUevazeY5ygtESGmSULKFZg', 0, 1, '鑱婂煄', 'oEq7rw0o6fK-c73yoRv6rByKKcWo', '[2]', 2, 2, 'zh_CN', '', 1596700097, '灞变笢', 'ADD_SCENE_QR_CODE', '鏉庣鍚�13656367777', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWT0boXYlUqO2qFWicBnVsOvrgaac1vOTnRRLJjzHkTzYwcVUz86nXzjYiaNlqzY6Z6KERclTHmMhfCEtwlk997Ppj/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (67, '涓浗', 'o1NeOwQYN0c-6XlLOt8NSTt7QmK4', 0, 1, '榻愰綈鍝堝皵', 'oEq7rw78fmXWKb9lUR41QrIEKsgQ', '[]', 2, 0, 'zh_CN', '', 1597187345, '榛戦緳姹�', 'ADD_SCENE_QR_CODE', '鍖嗗寙閭ｅ勾15164643599', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE32MB7QO17jqpvFDxWV64RyMyqI0H9m0jVeg0FJoNskC1CtI3dpvrp1GG5V8k1fDXlqt2WgSAhzN6HS9JzULMMj/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (68, '涓浗', 'o1NeOwbrmZPXjUwWR98DO-YQQ_iQ', 0, 1, '娼嶅潑', 'oEq7rw1tgqtpVjy-VAqJOq8E0es4', '[]', 1, 0, 'zh_CN', '', 1613349588, '灞变笢', 'ADD_SCENE_QR_CODE', '鏉庢捣姹�', '', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (69, '鐩村竷缃楅檧', 'o1NeOwaq9aVTwOUnGF7mAwbRhYUg', 0, 1, '', 'oEq7rw1SgAFt4OYUug-FHQbkqsh0', '[2]', 1, 2, 'zh_CN', '', 1596011712, '', 'ADD_SCENE_QR_CODE', '璇稿煄婧愭櫉绮锤 -浠绘案-15610644678', 'http://thirdwx.qlogo.cn/mmopen/QAm7hEbaujSGV3dmhqH10KP0PgKIichxB8A1PO6aFYTfDGOww1K9JDqySr65QibXvquznoX8mUq8n8u0ZTy77xtzicygibsI55qr/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (70, '涓浗', 'o1NeOwcnzVNzlO8Ovl35Dsj7TRGY', 0, 1, '娼嶅潑', 'oEq7rw6EDLrYGZnQmyl9R28Daf1g', '[2]', 1, 2, 'zh_CN', '', 1605058676, '灞变笢', 'ADD_SCENE_QR_CODE', '灞变笢璇稿煄闅嬬偝鍒�15854441114', 'http://thirdwx.qlogo.cn/mmopen/ZRc2s2hcPE00RufHZTk2ge2wt9QnR3QJYBjm0IJoKEdiba2q8UicsIj8Ey8ML0gGrcXoWWJdTxKgAUTsiaoLHicjzN487s4ZPicTd/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (71, '涓浗', 'o1NeOwZ_pneZFzsujoQGktue8kEw', 0, 1, '鑱婂煄', 'oEq7rw6ky6uikEyV095WOOQ-Rixg', '[2]', 1, 2, 'zh_CN', '', 1600914735, '灞变笢', 'ADD_SCENE_PROFILE_CARD', '灞变笢鑱婂煄鏉庢垚闆�15726355751', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaHkMcB8tKiaJa1r9H39PVBlQqOCVXE2iccrjAGYaoHP8iavUqD7g8ESsxWA3YkeOnibx26PwyIWHGBPlSFWm4iafhBeD/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (72, '涓浗', 'o1NeOwSvXntpS4uWXkHIt-gmoCJk', 0, 1, '娼嶅潑', 'oEq7rw5h5w7KqQyD90jQW7ECQB4w', '[]', 2, 0, 'zh_CN', '', 1611514354, '灞变笢', 'ADD_SCENE_QR_CODE', '寮犳鍏颁竴甯嗛椤�', 'http://thirdwx.qlogo.cn/mmopen/LoaDIib07Y0V4I74LHMwOtOrS4naXsqPCAGaBhGCWp4JXLZKucOB3KXyUpJ5XuGpvsMRjtaZLgxSbUCNIMHXtV5S0SESX4mT2/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (73, '涓浗', 'o1NeOwa0V7ehOYEn2smkbMvqTKgo', 0, 1, '涓存矀', 'oEq7rwxIqupS07q2K6xLW-RAkq6E', '[2]', 1, 2, 'zh_CN', '', 1597217872, '灞变笢', 'ADD_SCENE_QR_CODE', '灞变笢鐜夌背鎺ヨ揣瀛斿簡鍗�13792952463', 'http://thirdwx.qlogo.cn/mmopen/s2vtpYFicncPZ7wFJseicUWse3VVaVJNd1vicHwyRVJCEIDYqP9Jo5aADTBMwXw6QvqZeaAD7kEI4PLUAqdhlIV6icoJ2VEnDlej/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (74, '涓浗', 'o1NeOwVgeSClpVU3LqrHuiu0NFrI', 0, 1, '娼嶅潑', 'oEq7rw5Y8ptUwUg-E0bvPomTLMfs', '[2]', 1, 2, 'zh_CN', '', 1607080784, '灞变笢', 'ADD_SCENE_QR_CODE', '璇稿煄瀛欓噾浜�13963687757', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWSYeZrLHvKRRjjjNlia5I2NZHFv27UyEEknTc8YiaFX7qGb1LXZquc7ZVXMhT4AX6nN9TpwcTyaia4iaV8Olx8hZFWJ/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (75, '涓浗', 'o1NeOweaeBWDeti9XSrJ9cM2HkdA', 0, 1, '缁ュ寲', 'oEq7rw4P1FawqasDtjJ1X4TZ9BAo', '[]', 1, 0, 'zh_CN', '', 1608439823, '榛戦緳姹�', 'ADD_SCENE_QR_CODE', '闈掑唸鏉庤春15145547878', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaHkMcB8tKiaJayiaUib4ppRMffhaWrAnZ4UwKryGxsxQqEuB24t7y0S9KmtCibGq6CiaV07oK8RfV3iadNq9iclTImiafLe/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (76, '涓浗', 'o1NeOwR3Pj5o7CF2i_FknmVBuAlQ', 0, 1, '娼嶅潑', 'oEq7rw89N_jOQ7sJdPL_av_Uo6mk', '[]', 1, 0, 'zh_CN', '', 1625562367, '灞变笢', 'ADD_SCENE_PROFILE_CARD', '绛卞嫋', 'http://thirdwx.qlogo.cn/mmopen/hu9Qm1nkXgibXU5ruvkK956WLLede645tY2hEeawaZyTxkpDLgu2eVbL5w2FZj5bhHp21A6VckZk7qy0UtK7ictiaGiae97xQ9I5/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (77, '', 'o1NeOwVpFfUCdDh5M2CyOAx7IjTg', 0, 1, '', 'oEq7rw0kAQNeG9JsOevTVN1MfsDc', '[2]', 2, 2, 'zh_CN', '', 1596934719, '', 'ADD_SCENE_QR_CODE', '鍒樻椽鑻�', 'http://thirdwx.qlogo.cn/mmopen/Xc11QlqXkNmALsbiabHsVbKmZ26F1F69X6JibHGkBwk7ibnzFMB1gKlqEo5veoq7SXud5h9fj9k99hLRRw9iagVib78LFNEhSdyUW/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (78, '', 'o1NeOwUJrM_LAz9esOXJB8oTYc1c', 0, 1, '', 'oEq7rw4LMWPmb4flHI4VWHq0TjKY', '[]', 0, 0, 'zh_CN', '', 1619407057, '', 'ADD_SCENE_SEARCH', '绠毊宸�', 'http://thirdwx.qlogo.cn/mmopen/ecpUZkUGwiaEic8ia4pcZJjU3TP1q9DCDY1VDAY4QXKribKzialK7qaFxAWbAhwticyqicuVEFWQlhJp6DEfqOaWHNeDw7XuwEKXowl/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (79, '鐧炬厱澶�', 'o1NeOwQtTn0ighmei58dOx4a1uUI', 0, 1, '', 'oEq7rwzYlqhnhpheoa5jtSZg1MOQ', '[]', 2, 0, 'zh_CN', '', 1601898403, '', 'ADD_SCENE_QR_CODE', '姘歌繙鐨勬案', 'http://thirdwx.qlogo.cn/mmopen/aZJYl4toHWQOVaib2Best3G6PDBcA37SP5fZaCKYYhqrBGoiaNUlNdC9u9rOckibpml2LpO6I5iabxWdNNiaOIR4pfPTWv4lXXBAR/132', '', NULL, NULL);
INSERT INTO `user_info_list` VALUES (80, '涓浗', 'o1NeOwTmJA6-yiuHLM0R5dSlSRqA', 0, 1, '鑱婂煄', 'oEq7rwzoXHVFJFGKszoisUouzjq8', '[2]', 2, 2, 'zh_CN', '', 1596700194, '灞变笢', 'ADD_SCENE_QR_CODE', '鍚夌ゥ', 'http://thirdwx.qlogo.cn/mmopen/QAm7hEbaujT1BlDYRbXVGAYNIiaYoDWY4o0gQibRQ5NxklBmwia0lDdPy3CUrnxZfeJxPLzWtTjibk83OTp82ccMdxvCja1ufPibN/132', '', NULL, NULL);

-- ----------------------------
-- Table structure for wx_open
-- ----------------------------
DROP TABLE IF EXISTS `wx_open`;
CREATE TABLE `wx_open`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_open
-- ----------------------------
INSERT INTO `wx_open` VALUES (1, 'oEq7rwwy9qYsgkI77BQsPQBIMS-o', NULL, NULL);
INSERT INTO `wx_open` VALUES (2, 'oEq7rw8uk3xB2AOaAFcYIOHXUPAc', NULL, NULL);
INSERT INTO `wx_open` VALUES (3, 'oEq7rw3RHWbsFPCaH-ucdWKOhSjI', NULL, NULL);
INSERT INTO `wx_open` VALUES (4, 'oEq7rw1KTten-4MdRX1nAPiCsSi0', NULL, NULL);
INSERT INTO `wx_open` VALUES (5, 'oEq7rw_25a16CGS3ykDxBZJxZZ74', NULL, NULL);
INSERT INTO `wx_open` VALUES (6, 'oEq7rw5xu5Ldg_t0HCDwJOw3SPrw', NULL, NULL);
INSERT INTO `wx_open` VALUES (7, 'oEq7rw10YkNw_TH7MfTW8EjsRG1A', NULL, NULL);
INSERT INTO `wx_open` VALUES (8, 'oEq7rwyYrQaK2rb9Co7e6ZAaFHsY', NULL, NULL);
INSERT INTO `wx_open` VALUES (9, 'oEq7rwyH4Gr5cTBlZRnBsinIRx6k', NULL, NULL);
INSERT INTO `wx_open` VALUES (10, 'oEq7rw8Ew7yvZlQCyAO3J-Hq4zr4', NULL, NULL);
INSERT INTO `wx_open` VALUES (11, 'oEq7rwwztyxqeLoBPHkvkRPoP8HU', NULL, NULL);
INSERT INTO `wx_open` VALUES (12, 'oEq7rw0kSeI3AT7dr_IY6xhEkyfg', NULL, NULL);
INSERT INTO `wx_open` VALUES (13, 'oEq7rwxrg6NIngn2Ovqvj31mBY0w', NULL, NULL);
INSERT INTO `wx_open` VALUES (14, 'oEq7rw2fxy3j3bfNwuhklfvHeY1s', NULL, NULL);
INSERT INTO `wx_open` VALUES (15, 'oEq7rw1roIc6_riaGCwlBN4dlZOE', NULL, NULL);
INSERT INTO `wx_open` VALUES (16, 'oEq7rw-TODUfTi83hsPUYyPyLTXM', NULL, NULL);
INSERT INTO `wx_open` VALUES (17, 'oEq7rw4MSOyYLiLSKH5J3GudGEj0', NULL, NULL);
INSERT INTO `wx_open` VALUES (18, 'oEq7rw4Pr8csy2h3-gjc_10cq-vY', NULL, NULL);
INSERT INTO `wx_open` VALUES (19, 'oEq7rwxfREKmcrl4aLAzEFxO6ZMA', NULL, NULL);
INSERT INTO `wx_open` VALUES (20, 'oEq7rw-k2MlOV79PvVtIf2fj0v-Q', NULL, NULL);
INSERT INTO `wx_open` VALUES (21, 'oEq7rw5ZqBTngYKqsV-ODVDebUZ0', NULL, NULL);
INSERT INTO `wx_open` VALUES (22, 'oEq7rwyiMM5-M7zaQPyGsWu4hkyE', NULL, NULL);
INSERT INTO `wx_open` VALUES (23, 'oEq7rw0uc8n1aGf8Vmm9t5cyjs3A', NULL, NULL);
INSERT INTO `wx_open` VALUES (24, 'oEq7rwz2XC_suj0Zx1oplj1LUX7w', NULL, NULL);
INSERT INTO `wx_open` VALUES (25, 'oEq7rw6VA8AivZ0HylSp7gV6qfMI', NULL, NULL);
INSERT INTO `wx_open` VALUES (26, 'oEq7rw4aKsoA2kCNp6CewLB0g1xQ', NULL, NULL);
INSERT INTO `wx_open` VALUES (27, 'oEq7rwyqT2O8srMFhS31cK8E2p6U', NULL, NULL);
INSERT INTO `wx_open` VALUES (28, 'oEq7rw6qELuqwmizlpb-UJ_UxJbU', NULL, NULL);
INSERT INTO `wx_open` VALUES (29, 'oEq7rwzzPZ96hIRIdpx_qFgYY9N4', NULL, NULL);
INSERT INTO `wx_open` VALUES (30, 'oEq7rwy0A4YgdjSlwRUcgBgEYo08', NULL, NULL);
INSERT INTO `wx_open` VALUES (31, 'oEq7rw2Lj_3eC3QnG8OxmgQnYT-A', NULL, NULL);
INSERT INTO `wx_open` VALUES (32, 'oEq7rw202wuc8O2pnptrFhSUpujI', NULL, NULL);
INSERT INTO `wx_open` VALUES (33, 'oEq7rw1_eMPFTBBBNPEElgfp4tOs', NULL, NULL);
INSERT INTO `wx_open` VALUES (34, 'oEq7rw1VqtkTDiUbxIOthkf1_t50', NULL, NULL);
INSERT INTO `wx_open` VALUES (35, 'oEq7rw-7vvsf0tVpUDgocsmdAnrA', NULL, NULL);
INSERT INTO `wx_open` VALUES (36, 'oEq7rw50rItu1m9ma_CMe35uYe0M', NULL, NULL);
INSERT INTO `wx_open` VALUES (37, 'oEq7rw06FqXIowGs1j4Ma70GpXGo', NULL, NULL);
INSERT INTO `wx_open` VALUES (38, 'oEq7rw1h_EStxJAm403SkG4xtIYQ', NULL, NULL);
INSERT INTO `wx_open` VALUES (39, 'oEq7rw-ezm76Ueawmvof4-e2ToQk', NULL, NULL);
INSERT INTO `wx_open` VALUES (40, 'oEq7rw1-sdzRVXw6FeO_uqqkIFMw', NULL, NULL);
INSERT INTO `wx_open` VALUES (41, 'oEq7rwyOOtfm-3gg9k6u38pH9r8E', NULL, NULL);
INSERT INTO `wx_open` VALUES (42, 'oEq7rw0q-3OVF6Hu_53owkgtRIEI', NULL, NULL);
INSERT INTO `wx_open` VALUES (43, 'oEq7rwyRNNB-cUshzIgXU6qxKIjQ', NULL, NULL);
INSERT INTO `wx_open` VALUES (44, 'oEq7rw8nhubRu1GJXYR237q84WGg', NULL, NULL);
INSERT INTO `wx_open` VALUES (45, 'oEq7rwwDwY7Dovlg_rDC-H1Ksu7c', NULL, NULL);
INSERT INTO `wx_open` VALUES (46, 'oEq7rw49Vyn9Mh4ES7fXQOz8OHZo', NULL, NULL);
INSERT INTO `wx_open` VALUES (47, 'oEq7rw8ou6WlR479IuLRnTf-9TSY', NULL, NULL);
INSERT INTO `wx_open` VALUES (48, 'oEq7rwyj3sKpcEzclwzGjk19sm8s', NULL, NULL);
INSERT INTO `wx_open` VALUES (49, 'oEq7rw7nJTbUOZpajU8xTPAEM0VU', NULL, NULL);
INSERT INTO `wx_open` VALUES (50, 'oEq7rwyxQ9_TmFSsJpB_PayZTDUs', NULL, NULL);
INSERT INTO `wx_open` VALUES (51, 'oEq7rwx2F2pYumU6xLpdghOHs8Dg', NULL, NULL);
INSERT INTO `wx_open` VALUES (52, 'oEq7rw3iZjOlcfKHk1lc6MKi2xl4', NULL, NULL);
INSERT INTO `wx_open` VALUES (53, 'oEq7rw0iRXuPi_jDd1-f3Eq04OWo', NULL, NULL);
INSERT INTO `wx_open` VALUES (54, 'oEq7rw1Nm9pkeXm0cdD6LzznXDY8', NULL, NULL);
INSERT INTO `wx_open` VALUES (55, 'oEq7rw3ra7iirzjYG_pahDGU12IE', NULL, NULL);
INSERT INTO `wx_open` VALUES (56, 'oEq7rwy4Vr3hXLlS24Mj_GgYT3qY', NULL, NULL);
INSERT INTO `wx_open` VALUES (57, 'oEq7rw-RZsHhvWAdoxmr21WbEvcs', NULL, NULL);
INSERT INTO `wx_open` VALUES (58, 'oEq7rw_jqK7Hfb2odsNG47oF1av8', NULL, NULL);
INSERT INTO `wx_open` VALUES (59, 'oEq7rw_FdNt4ccBAeR6fa30WVF8E', NULL, NULL);
INSERT INTO `wx_open` VALUES (60, 'oEq7rw3Y4e63faAZxQepqzPuW4ng', NULL, NULL);
INSERT INTO `wx_open` VALUES (61, 'oEq7rwwYCxwc0mQpd0KePpaBLZgw', NULL, NULL);
INSERT INTO `wx_open` VALUES (62, 'oEq7rwxIm1gojdbdA43W7bxmxL14', NULL, NULL);
INSERT INTO `wx_open` VALUES (63, 'oEq7rw9SrhtZzEcY3gm9xa_T6VN8', NULL, NULL);
INSERT INTO `wx_open` VALUES (64, 'oEq7rwyEK16UAwWutzoxZVayRIMI', NULL, NULL);
INSERT INTO `wx_open` VALUES (65, 'oEq7rw0o6fK-c73yoRv6rByKKcWo', NULL, NULL);
INSERT INTO `wx_open` VALUES (66, 'oEq7rw78fmXWKb9lUR41QrIEKsgQ', NULL, NULL);
INSERT INTO `wx_open` VALUES (67, 'oEq7rw1tgqtpVjy-VAqJOq8E0es4', NULL, NULL);
INSERT INTO `wx_open` VALUES (68, 'oEq7rw1SgAFt4OYUug-FHQbkqsh0', NULL, NULL);
INSERT INTO `wx_open` VALUES (69, 'oEq7rw6EDLrYGZnQmyl9R28Daf1g', NULL, NULL);
INSERT INTO `wx_open` VALUES (70, 'oEq7rw6ky6uikEyV095WOOQ-Rixg', NULL, NULL);
INSERT INTO `wx_open` VALUES (71, 'oEq7rw5h5w7KqQyD90jQW7ECQB4w', NULL, NULL);
INSERT INTO `wx_open` VALUES (72, 'oEq7rwxIqupS07q2K6xLW-RAkq6E', NULL, NULL);
INSERT INTO `wx_open` VALUES (73, 'oEq7rw5Y8ptUwUg-E0bvPomTLMfs', NULL, NULL);
INSERT INTO `wx_open` VALUES (74, 'oEq7rw4P1FawqasDtjJ1X4TZ9BAo', NULL, NULL);
INSERT INTO `wx_open` VALUES (75, 'oEq7rw89N_jOQ7sJdPL_av_Uo6mk', NULL, NULL);
INSERT INTO `wx_open` VALUES (76, 'oEq7rw0kAQNeG9JsOevTVN1MfsDc', NULL, NULL);
INSERT INTO `wx_open` VALUES (77, 'oEq7rw4LMWPmb4flHI4VWHq0TjKY', NULL, NULL);
INSERT INTO `wx_open` VALUES (78, 'oEq7rwzYlqhnhpheoa5jtSZg1MOQ', NULL, NULL);
INSERT INTO `wx_open` VALUES (79, 'oEq7rwzoXHVFJFGKszoisUouzjq8', NULL, NULL);

-- ----------------------------
-- Table structure for wx_task
-- ----------------------------
DROP TABLE IF EXISTS `wx_task`;
CREATE TABLE `wx_task`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `template_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jwid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `send_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tag_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `redirect_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mini_appid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pagepath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_count` int(11) NULL DEFAULT NULL,
  `success_count` int(11) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `task_send_time` timestamp(0) NULL DEFAULT NULL,
  `task_send_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `send_time` timestamp(0) NULL DEFAULT NULL,
  `data_json` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '发送模板消息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_task
-- ----------------------------
INSERT INTO `wx_task` VALUES ('2c916fd27a7a5b04017a8040ae5e001b', 'Ds7-uA5A6Jdn_zr1Hk85RDOXjyOFSzv9qrao9aHNS14', 'gh_dde1bab0d8f9', '1', '', 'oEq7rw8Ew7yvZlQCyAO3J-Hq4zr4,', '0', '', '', '', NULL, NULL, NULL, '2021-07-07 17:16:00', NULL, '1', NULL, '{\"first\":{\"value\":\"\",\"color\":\"#173177\"},\"keyword1\":{\"value\":\"\",\"color\":\"#173177\"},\"keyword2\":{\"value\":\"\",\"color\":\"#173177\"},\"keyword3\":{\"value\":\"\",\"color\":\"#173177\"},\"keyword4\":{\"value\":\"\",\"color\":\"#173177\"},\"remark\":{\"value\":\"\",\"color\":\"#173177\"}}', '卸货信息');

SET FOREIGN_KEY_CHECKS = 1;
